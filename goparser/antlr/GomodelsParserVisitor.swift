// Generated from ./gomodels/GomodelsParser.g4 by ANTLR 4.13.0
import Antlr4

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link GomodelsParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
open class GomodelsParserVisitor<T>: ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link GomodelsParser#models}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitModels(_ ctx: GomodelsParser.ModelsContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link GomodelsParser#spec}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitSpec(_ ctx: GomodelsParser.SpecContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link GomodelsParser#typeSpec}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitTypeSpec(_ ctx: GomodelsParser.TypeSpecContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link GomodelsParser#typeBlock}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitTypeBlock(_ ctx: GomodelsParser.TypeBlockContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link GomodelsParser#typeBlockBody}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitTypeBlockBody(_ ctx: GomodelsParser.TypeBlockBodyContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link GomodelsParser#typeBlockStruct}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitTypeBlockStruct(_ ctx: GomodelsParser.TypeBlockStructContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link GomodelsParser#typeBlockAlias}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitTypeBlockAlias(_ ctx: GomodelsParser.TypeBlockAliasContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link GomodelsParser#typeLit}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitTypeLit(_ ctx: GomodelsParser.TypeLitContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link GomodelsParser#typeLitBody}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitTypeLitBody(_ ctx: GomodelsParser.TypeLitBodyContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link GomodelsParser#typeAlias}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitTypeAlias(_ ctx: GomodelsParser.TypeAliasContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link GomodelsParser#typeStruct}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitTypeStruct(_ ctx: GomodelsParser.TypeStructContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link GomodelsParser#fieldDecl}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitFieldDecl(_ ctx: GomodelsParser.FieldDeclContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link GomodelsParser#normalField}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitNormalField(_ ctx: GomodelsParser.NormalFieldContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link GomodelsParser#anonymousFiled}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitAnonymousFiled(_ ctx: GomodelsParser.AnonymousFiledContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link GomodelsParser#dataType}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitDataType(_ ctx: GomodelsParser.DataTypeContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link GomodelsParser#pointerType}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitPointerType(_ ctx: GomodelsParser.PointerTypeContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link GomodelsParser#mapType}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitMapType(_ ctx: GomodelsParser.MapTypeContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link GomodelsParser#arrayType}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitArrayType(_ ctx: GomodelsParser.ArrayTypeContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link GomodelsParser#interfaceType}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitInterfaceType(_ ctx: GomodelsParser.InterfaceTypeContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link GomodelsParser#timeType}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitTimeType(_ ctx: GomodelsParser.TimeTypeContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link GomodelsParser#packageClause}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitPackageClause(_ ctx: GomodelsParser.PackageClauseContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link GomodelsParser#eos}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitEos(_ ctx: GomodelsParser.EosContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

}
