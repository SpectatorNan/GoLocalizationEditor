// Generated from ./gomodels/GomodelsParser.g4 by ANTLR 4.13.0
import Antlr4

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link GomodelsParser}.
 */
public protocol GomodelsParserListener: ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link GomodelsParser#models}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterModels(_ ctx: GomodelsParser.ModelsContext)
	/**
	 * Exit a parse tree produced by {@link GomodelsParser#models}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitModels(_ ctx: GomodelsParser.ModelsContext)
	/**
	 * Enter a parse tree produced by {@link GomodelsParser#spec}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSpec(_ ctx: GomodelsParser.SpecContext)
	/**
	 * Exit a parse tree produced by {@link GomodelsParser#spec}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSpec(_ ctx: GomodelsParser.SpecContext)
	/**
	 * Enter a parse tree produced by {@link GomodelsParser#typeSpec}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTypeSpec(_ ctx: GomodelsParser.TypeSpecContext)
	/**
	 * Exit a parse tree produced by {@link GomodelsParser#typeSpec}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTypeSpec(_ ctx: GomodelsParser.TypeSpecContext)
	/**
	 * Enter a parse tree produced by {@link GomodelsParser#typeBlock}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTypeBlock(_ ctx: GomodelsParser.TypeBlockContext)
	/**
	 * Exit a parse tree produced by {@link GomodelsParser#typeBlock}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTypeBlock(_ ctx: GomodelsParser.TypeBlockContext)
	/**
	 * Enter a parse tree produced by {@link GomodelsParser#typeBlockBody}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTypeBlockBody(_ ctx: GomodelsParser.TypeBlockBodyContext)
	/**
	 * Exit a parse tree produced by {@link GomodelsParser#typeBlockBody}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTypeBlockBody(_ ctx: GomodelsParser.TypeBlockBodyContext)
	/**
	 * Enter a parse tree produced by {@link GomodelsParser#typeBlockStruct}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTypeBlockStruct(_ ctx: GomodelsParser.TypeBlockStructContext)
	/**
	 * Exit a parse tree produced by {@link GomodelsParser#typeBlockStruct}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTypeBlockStruct(_ ctx: GomodelsParser.TypeBlockStructContext)
	/**
	 * Enter a parse tree produced by {@link GomodelsParser#typeBlockAlias}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTypeBlockAlias(_ ctx: GomodelsParser.TypeBlockAliasContext)
	/**
	 * Exit a parse tree produced by {@link GomodelsParser#typeBlockAlias}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTypeBlockAlias(_ ctx: GomodelsParser.TypeBlockAliasContext)
	/**
	 * Enter a parse tree produced by {@link GomodelsParser#typeLit}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTypeLit(_ ctx: GomodelsParser.TypeLitContext)
	/**
	 * Exit a parse tree produced by {@link GomodelsParser#typeLit}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTypeLit(_ ctx: GomodelsParser.TypeLitContext)
	/**
	 * Enter a parse tree produced by {@link GomodelsParser#typeLitBody}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTypeLitBody(_ ctx: GomodelsParser.TypeLitBodyContext)
	/**
	 * Exit a parse tree produced by {@link GomodelsParser#typeLitBody}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTypeLitBody(_ ctx: GomodelsParser.TypeLitBodyContext)
	/**
	 * Enter a parse tree produced by {@link GomodelsParser#typeAlias}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTypeAlias(_ ctx: GomodelsParser.TypeAliasContext)
	/**
	 * Exit a parse tree produced by {@link GomodelsParser#typeAlias}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTypeAlias(_ ctx: GomodelsParser.TypeAliasContext)
	/**
	 * Enter a parse tree produced by {@link GomodelsParser#typeStruct}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTypeStruct(_ ctx: GomodelsParser.TypeStructContext)
	/**
	 * Exit a parse tree produced by {@link GomodelsParser#typeStruct}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTypeStruct(_ ctx: GomodelsParser.TypeStructContext)
	/**
	 * Enter a parse tree produced by {@link GomodelsParser#fieldDecl}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFieldDecl(_ ctx: GomodelsParser.FieldDeclContext)
	/**
	 * Exit a parse tree produced by {@link GomodelsParser#fieldDecl}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFieldDecl(_ ctx: GomodelsParser.FieldDeclContext)
	/**
	 * Enter a parse tree produced by {@link GomodelsParser#normalField}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterNormalField(_ ctx: GomodelsParser.NormalFieldContext)
	/**
	 * Exit a parse tree produced by {@link GomodelsParser#normalField}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitNormalField(_ ctx: GomodelsParser.NormalFieldContext)
	/**
	 * Enter a parse tree produced by {@link GomodelsParser#anonymousFiled}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAnonymousFiled(_ ctx: GomodelsParser.AnonymousFiledContext)
	/**
	 * Exit a parse tree produced by {@link GomodelsParser#anonymousFiled}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAnonymousFiled(_ ctx: GomodelsParser.AnonymousFiledContext)
	/**
	 * Enter a parse tree produced by {@link GomodelsParser#dataType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDataType(_ ctx: GomodelsParser.DataTypeContext)
	/**
	 * Exit a parse tree produced by {@link GomodelsParser#dataType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDataType(_ ctx: GomodelsParser.DataTypeContext)
	/**
	 * Enter a parse tree produced by {@link GomodelsParser#pointerType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPointerType(_ ctx: GomodelsParser.PointerTypeContext)
	/**
	 * Exit a parse tree produced by {@link GomodelsParser#pointerType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPointerType(_ ctx: GomodelsParser.PointerTypeContext)
	/**
	 * Enter a parse tree produced by {@link GomodelsParser#mapType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMapType(_ ctx: GomodelsParser.MapTypeContext)
	/**
	 * Exit a parse tree produced by {@link GomodelsParser#mapType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMapType(_ ctx: GomodelsParser.MapTypeContext)
	/**
	 * Enter a parse tree produced by {@link GomodelsParser#arrayType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterArrayType(_ ctx: GomodelsParser.ArrayTypeContext)
	/**
	 * Exit a parse tree produced by {@link GomodelsParser#arrayType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitArrayType(_ ctx: GomodelsParser.ArrayTypeContext)
	/**
	 * Enter a parse tree produced by {@link GomodelsParser#interfaceType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterInterfaceType(_ ctx: GomodelsParser.InterfaceTypeContext)
	/**
	 * Exit a parse tree produced by {@link GomodelsParser#interfaceType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitInterfaceType(_ ctx: GomodelsParser.InterfaceTypeContext)
	/**
	 * Enter a parse tree produced by {@link GomodelsParser#timeType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTimeType(_ ctx: GomodelsParser.TimeTypeContext)
	/**
	 * Exit a parse tree produced by {@link GomodelsParser#timeType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTimeType(_ ctx: GomodelsParser.TimeTypeContext)
	/**
	 * Enter a parse tree produced by {@link GomodelsParser#packageClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPackageClause(_ ctx: GomodelsParser.PackageClauseContext)
	/**
	 * Exit a parse tree produced by {@link GomodelsParser#packageClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPackageClause(_ ctx: GomodelsParser.PackageClauseContext)
	/**
	 * Enter a parse tree produced by {@link GomodelsParser#eos}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterEos(_ ctx: GomodelsParser.EosContext)
	/**
	 * Exit a parse tree produced by {@link GomodelsParser#eos}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitEos(_ ctx: GomodelsParser.EosContext)
}
