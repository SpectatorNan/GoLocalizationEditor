//
//  visitor.swift
//  goparser
//
//  Created by spec on 2023/8/17.
//

import Foundation

class VisitorError: Error {
    var prefix: String
    var line: String
    var column: String
    var msg: String
    
    init(prefix: String, line: String, column: String, msg: String) {
        self.prefix = prefix
        self.line = line
        self.column = column
        self.msg = msg
    }
    
    var errMsg: String {
        return "line: \(line), column: \(column), msg: \(msg)"
    }
}
 
/*
class SpecVisitor: GomodelsParserBaseVisitor<[TypeStruct]> {
    
    override func visitSpec(_ ctx: GomodelsParser.SpecContext) -> [TypeStruct]? {
        if let tspecs = ctx.typeSpec() {
            let v = TypeSpecVisitor()
            let st = tspecs.accept(v)
            return st
        }
        return nil
    }
}

class TypeSpecVisitor: GomodelsParserBaseVisitor<SpecModel> {
    
    override func visitTypeSpec(_ ctx: GomodelsParser.TypeSpecContext) -> SpecModel? {
        if let lit = ctx.typeLit() {
            let v = TypeStructVisitor()
            if let st = lit.accept(v) {
                return [st]
            } else {
                return nil
            }
        }
        if let block = ctx.typeBlock() {
            return block.accept(self)
        }
        return nil
    }
    
    override func visitTypeBlock(_ ctx: GomodelsParser.TypeBlockContext) -> SpecModel? {
        var sts: [TypeStruct] = []
        let v = TypeStructVisitor()
        for body in ctx.typeBlockBody() {
            if let st = body.accept(v) {
                sts.append(st)
            }
        }
        return sts
    }
    
}

class MapVisitor: GomodelsParserBaseVisitor<MapDataType> {
    
}
class ArrayVisitor: GomodelsParserBaseVisitor<ArrayDataType> {
    
}
 

class DataTypeVisitor: GomodelsParserBaseVisitor<DataType> {
    override func visitDataType(_ ctx: GomodelsParser.DataTypeContext) -> DataType? {
        if let id = ctx.IDENTIFIER()?.getSymbol() {
            return Literal(name: id.expr)
        }
        if let map = ctx.mapType() {
            let v = MapVisitor()
            return map.accept(v)
        }
        if let arr = ctx.arrayType() {
            let v = ArrayVisitor()
            return arr.accept(v)
        }
        if let tp = ctx.interfaceType(), let name = tp.INTERFACE()?.getSymbol()?.expr {
            
            return InterfaceDataType(name: name)
        }
        if let tp = ctx.timeType(), let name = tp.TIME_LIT()?.getSymbol()?.expr {
            return TimeDataType(name: name)
        }
        if let tp = ctx.pointerType() {
            return tp.accept(self)
        }
        let v = TypeStructVisitor()
        return ctx.typeStruct()?.accept(v)
    }
}


class TypeFieldVisitor: GomodelsParserBaseVisitor<TypeField> {
    
    override func visitFieldDecl(_ ctx: GomodelsParser.FieldDeclContext) -> TypeField? {
        if let field = ctx.anonymousFiled() {
            return field.accept(self)
        }
        if let field = ctx.normalField() {
            return field.accept(self)
        }
        return nil
    }
    
    override func visitNormalField(_ ctx: GomodelsParser.NormalFieldContext) -> TypeField? {
        var name = ctx.IDENTIFIER()?.getSymbol()?.expr
        var dataType: DataType?
        var tagExpr: Expr?
        if let dataCtx = ctx.dataType() {
            let v = DataTypeVisitor()
            dataType = dataCtx.accept(v)
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
    
    override func visitAnonymousFiled(_ ctx: GomodelsParser.AnonymousFiledContext) -> TypeField? {
         
        var dataType: DataType!
        guard var name = ctx.IDENTIFIER()?.getSymbol()?.expr else { return nil }
        if let start = ctx.start, let stop = ctx.stop {
            var star = start.expr
            
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
}




extension ParserRuleContext {
//    func getComment() -> Expr {
//    
//    }
    
    func getHiddenTokensToRight(channel: Int) {
//        let ct = getParent()
//        let tokens = getHiddenTokensToRight(channel: channel)
        
    }
}


class TypeStructVisitor: GomodelsParserBaseVisitor<TypeStruct> {
    
    override func visitTypeBlockBody(_ ctx: GomodelsParser.TypeBlockBodyContext) -> TypeStruct? {
        if let block = ctx.typeBlockStruct() {
            return block.accept(self)
        }
        if let alias = ctx.typeBlockAlias() {
            return alias.accept(self)
        }
        return nil
    }
    
    override func visitTypeBlockStruct(_ ctx: GomodelsParser.TypeBlockStructContext) -> TypeStruct? {
        if let id = ctx.IDENTIFIER()?.getSymbol() {
            return getStructBy(id: id, fieldContexts: ctx.fieldDecl())
        }
        return nil
    }
    
    override func visitTypeBlockAlias(_ ctx: GomodelsParser.TypeBlockAliasContext) -> TypeStruct? {
        return nil
    }
    
    override func visitTypeLit(_ ctx: GomodelsParser.TypeLitContext) -> TypeStruct? {
        return ctx.typeLitBody()?.accept(self)
    }
    
    override func visitTypeLitBody(_ ctx: GomodelsParser.TypeLitBodyContext) -> TypeStruct? {
        if let alias = ctx.typeAlias() {
            return alias.accept(self)
        }
        return ctx.typeStruct()?.accept(self)
    }
    
    override func visitTypeAlias(_ ctx: GomodelsParser.TypeAliasContext) -> TypeStruct? {
        return nil
    }
    
    override func visitTypeStruct(_ ctx: GomodelsParser.TypeStructContext) -> TypeStruct? {
        if let id = ctx.IDENTIFIER()?.getSymbol() {
            return getStructBy(id: id, fieldContexts: ctx.fieldDecl())
        }
        return nil
    }
    
    private func getStructBy(id: Token, fieldContexts: [GomodelsParser.FieldDeclContext]) -> TypeStruct {
        let v = TypeFieldVisitor()
        var fields: [TypeField] = []
        for f in fieldContexts {
            if let field = f.accept(v) {
                fields.append(field)
            }
        }
        var root = TypeStruct(name: id.expr, docs: [], fields: fields)
        return root
    }
    
}

*/
 



 

 
