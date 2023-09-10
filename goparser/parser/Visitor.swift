//
//  Visitor.swift
//  goparser
//
//  Created by spec on 2023/8/21.
//

import Foundation
import Antlr4

class Visitor: GomodelsParserBaseVisitor<VisitorType> {
    
    override func visitModels(_ ctx: GomodelsParser.ModelsContext) -> VisitorType? {
        var final = ModelResult(models: [], modelKeys: [:])
        for spec in ctx.spec() {
            if let sts = accept(spec) as? [TypeStruct] {
                for st in sts {
                    if final.modelKeys[st.name.text] != nil {
                        print("model name: \(st.name.text) is duplicate")
                        continue
                    }
                    final.models.append(st)
                    final.modelKeys[st.name.text] = true
                }
            }
        
        }
        return final
    }
    
    override func visitSpec(_ ctx: GomodelsParser.SpecContext) -> VisitorType? {
        if let tspecs = ctx.typeSpec() {
            let st = accept(tspecs)
            return st
        }
        return nil
    }
    
    override func visitTypeSpec(_ ctx: GomodelsParser.TypeSpecContext) -> VisitorType? {
        if let lit = ctx.typeLit() {
            if let st = accept(lit) as? TypeStruct {
                return [st]
            } else {
                return nil
            }
        }
        if let block = ctx.typeBlock() {
            return accept(block)
        }
        return nil
    }
    
    override func visitTypeBlock(_ ctx: GomodelsParser.TypeBlockContext) -> VisitorType? {
        var sts: [TypeStruct] = []
        for body in ctx.typeBlockBody() {
            if let st = accept(body) as? TypeStruct {
                sts.append(st)
            }
        }
        return sts
    }
    
    override func visitTypeBlockBody(_ ctx: GomodelsParser.TypeBlockBodyContext) -> VisitorType? {
        if let block = ctx.typeBlockStruct() {
            return accept(block)
        }
        if let alias = ctx.typeBlockAlias() {
            return accept(alias)
        }
        return nil
    }
    
    override func visitTypeBlockStruct(_ ctx: GomodelsParser.TypeBlockStructContext) -> VisitorType? {
        if let id = ctx.IDENTIFIER()?.getSymbol() {
            return getStructBy(id: id, fieldContexts: ctx.fieldDecl())
        }
        return nil
    }
    
    override func visitTypeBlockAlias(_ ctx: GomodelsParser.TypeBlockAliasContext) -> VisitorType? {
        return nil
    }
    
    override func visitTypeLit(_ ctx: GomodelsParser.TypeLitContext) -> VisitorType? {
        if let body = ctx.typeLitBody() {
            return accept(body)
        }
        return nil
    }
    
    override func visitTypeLitBody(_ ctx: GomodelsParser.TypeLitBodyContext) -> VisitorType? {
        if let alias = ctx.typeAlias() {
            return accept(alias)
        }
        return ctx.typeStruct()?.accept(self)
    }
    
    override func visitTypeAlias(_ ctx: GomodelsParser.TypeAliasContext) -> VisitorType? {
        return nil
    }
    
    override func visitTypeStruct(_ ctx: GomodelsParser.TypeStructContext) -> VisitorType? {
        if let id = ctx.IDENTIFIER()?.getSymbol() {
            return getStructBy(id: id, fieldContexts: ctx.fieldDecl())
        }
        return nil
    }
    
    override func visitFieldDecl(_ ctx: GomodelsParser.FieldDeclContext) -> VisitorType? {
        if let field = ctx.anonymousFiled() {
            return accept(field)
        }
        if let field = ctx.normalField() {
            return accept(field)
        }
        return nil
    }
    
    override func visitNormalField(_ ctx: GomodelsParser.NormalFieldContext) -> VisitorType? {
        let name = ctx.IDENTIFIER()?.getSymbol()?.expr
        var dataType: DataType?
        var tagExpr: Expr?
        if let dataCtx = ctx.dataType() {
            dataType = accept(dataCtx)
        }
        if let tagCtx = ctx.tag {
            let text = tagCtx.getText()
            let expr = tagCtx.expr
            if let text, !matchTag(text) {
//                throw VisitorError(prefix: "tag", line: tagExpr.line, column: tagExpr.column, msg: "tag is not match")
                return nil
            }
            tagExpr = expr
        }
        guard let name, let dataType, let tagExpr else {
            return nil
        }
        
        return TypeField(name: name, dataType: dataType, tag: tagExpr, docs: [])
    }
    
    override func visitAnonymousFiled(_ ctx: GomodelsParser.AnonymousFiledContext) -> VisitorType? {
        var dataType: DataType!
        guard let name = ctx.IDENTIFIER()?.getSymbol()?.expr else { return nil }
        if let start = ctx.start, let stop = ctx.stop {
//            let star = start.expr
            
            let startText = start.getText() ?? ""
            let idText = ctx.IDENTIFIER()?.getText() ?? ""
            let text = startText + idText
            let startLine = start.getLine()
            let startColumn = start.column
            let startStop = start.expr.stop
            let stop = stop.expr.stop
            
           let pointer = DefaultExpr(line: startLine, column: startColumn, text: text, start: startStop, stop: stop)
        
            
            dataType = Pointer(name: name, star: start.expr, pointer: pointer)
        } else {
            dataType = Literal(name: name)
        }
        
        return TypeField(name: name, dataType: dataType, tag: nil, docs: [])
    }
    
    override func visitDataType(_ ctx: GomodelsParser.DataTypeContext) -> VisitorType? {
        if let id = ctx.IDENTIFIER()?.getSymbol() {
            return Literal(name: id.expr)
        }
        if let map = ctx.mapType() {
            return accept(map)
        }
        if let arr = ctx.arrayType() {
            return accept(arr)
        }
        if let tp = ctx.interfaceType(), let name = tp.INTERFACE()?.getSymbol()?.expr {
            
            return InterfaceDataType(name: name)
        }
        if let tp = ctx.timeType(), let name = tp.TIME_LIT()?.getSymbol()?.expr {
            return TimeDataType(name: name)
        }
        if let tp = ctx.pointerType() {
            return accept(tp)
        }
        if let tp = ctx.typeStruct() {
            return accept(tp)
        }
        return nil
    }
    
    override func visitPointerType(_ ctx: GomodelsParser.PointerTypeContext) -> VisitorType? {
        guard let name = ctx.IDENTIFIER()?.getSymbol()?.expr else { return nil }
        if let start = ctx.start, let stop = ctx.stop {
//            let star = start.expr
            
            let startText = start.getText() ?? ""
            let idText = ctx.IDENTIFIER()?.getText() ?? ""
            let text = startText + idText
            let startLine = start.getLine()
            let startColumn = start.column
            let startStop = start.expr.stop
            let stop = stop.expr.stop
          
           let pointer = getExpr(with: text, line: startLine, column: startColumn, start: startStop, stop: stop)
            
            return Pointer(name: name, star: start.expr, pointer: pointer)
        }
        return nil
    }
    
    override func visitMapType(_ ctx: GomodelsParser.MapTypeContext) -> VisitorType? {
        guard
            let mapToken  = ctx.MAP()?.getSymbol(),
            let key = ctx.IDENTIFIER()?.getSymbol()?.expr,
            let lbrack = ctx.L_BRACKET()?.getSymbol()?.expr,
            let rbrack = ctx.R_BRACKET()?.getSymbol()?.expr,
            let dataType = ctx.dataType(), let value = accept(dataType)
        else { return nil }
        let mapText = ctx.getText()
        let mapLine = mapToken.getLine()
        let mapColumn = mapToken.column
        let mapStart = mapToken.expr.start
        let mapStop = dataType.stop?.expr.stop ?? 0
        
        let mapExpr = getExpr(with: mapText, line: mapLine, column: mapColumn, start: mapStart, stop: mapStop)
        let map = mapToken.expr
        
        
        return MapDataType(mapExpr: mapExpr,
                           map: map,
                           lBrack: lbrack,
                           rBrack: rbrack,
                           key: key,
                           value: value)
    }
    
    override func visitArrayType(_ ctx: GomodelsParser.ArrayTypeContext) -> VisitorType? {
        guard
            let lbrack = ctx.L_BRACKET()?.getSymbol(),
            let rbrack = ctx.R_BRACKET()?.getSymbol(),
            let dataType = ctx.dataType(), let stop = dataType.stop, let value = accept(dataType) else {
            return nil
        }
        let arrExpr = getExpr(with: ctx.getText(),
                              line: lbrack.getLine(),
                              column: lbrack.column,
                              start: lbrack.expr.start,
                              stop:  stop.expr.stop)
        return ArrayDataType(arrayExpr: arrExpr, lBrack: lbrack.expr, rBrack: rbrack.expr, value: value)
    }
    
    override func visitPackageClause(_ ctx: GomodelsParser.PackageClauseContext) -> VisitorType? {
        guard
            let start = ctx.start,
            let stop = ctx.IDENTIFIER()?.getSymbol()?.expr.stop
        else { return nil }
       let name = getExpr(with: ctx.getText(), line: start.getLine(), column: start.column, start: start.getStartIndex(), stop: stop)
        return Package(name: name)
    }
    
    override func visitEos(_ ctx: GomodelsParser.EosContext) -> VisitorType? {
        guard
            let start = ctx.start,
            let stop = ctx.stop?.expr.stop
        else { return nil }
       let name = getExpr(with: ctx.getText(), line: start.getLine(), column: start.column, start: start.getStartIndex(), stop: stop)
        return Literal(name: name)
    }
}


extension Visitor {
    func accept(_ ctx: RuleContext) -> VisitorType? {
        return ctx.accept(self)
    }
}

extension Visitor {
    private func getExpr(with text: String, line: Int, column: Int, start: Int, stop: Int) -> Expr {
        return DefaultExpr(line: line,
                           column: column,
                           text: text,
                           start: start,
                           stop: stop)
    }
    
    private func getStructBy(id: Token, fieldContexts: [GomodelsParser.FieldDeclContext]) -> TypeStruct {
        var fields: [TypeField] = []
        for f in fieldContexts {
            if let field = accept(f) as? TypeField {
                fields.append(field)
            }
        }
        return TypeStruct(name: id.expr, docs: [], fields: fields)
    }
}
