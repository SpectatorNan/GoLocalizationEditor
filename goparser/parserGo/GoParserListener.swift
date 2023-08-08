// Generated from GoParser.g4 by ANTLR 4.13.0
import Antlr4

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link GoParser}.
 */
public protocol GoParserListener: ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link GoParser#sourceFile}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSourceFile(_ ctx: GoParser.SourceFileContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#sourceFile}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSourceFile(_ ctx: GoParser.SourceFileContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#packageClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPackageClause(_ ctx: GoParser.PackageClauseContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#packageClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPackageClause(_ ctx: GoParser.PackageClauseContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#importDecl}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterImportDecl(_ ctx: GoParser.ImportDeclContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#importDecl}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitImportDecl(_ ctx: GoParser.ImportDeclContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#importSpec}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterImportSpec(_ ctx: GoParser.ImportSpecContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#importSpec}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitImportSpec(_ ctx: GoParser.ImportSpecContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#importPath}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterImportPath(_ ctx: GoParser.ImportPathContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#importPath}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitImportPath(_ ctx: GoParser.ImportPathContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#declaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDeclaration(_ ctx: GoParser.DeclarationContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#declaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDeclaration(_ ctx: GoParser.DeclarationContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#constDecl}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterConstDecl(_ ctx: GoParser.ConstDeclContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#constDecl}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitConstDecl(_ ctx: GoParser.ConstDeclContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#constSpec}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterConstSpec(_ ctx: GoParser.ConstSpecContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#constSpec}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitConstSpec(_ ctx: GoParser.ConstSpecContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#identifierList}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIdentifierList(_ ctx: GoParser.IdentifierListContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#identifierList}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIdentifierList(_ ctx: GoParser.IdentifierListContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#expressionList}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterExpressionList(_ ctx: GoParser.ExpressionListContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#expressionList}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitExpressionList(_ ctx: GoParser.ExpressionListContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#typeDecl}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTypeDecl(_ ctx: GoParser.TypeDeclContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#typeDecl}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTypeDecl(_ ctx: GoParser.TypeDeclContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#typeSpec}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTypeSpec(_ ctx: GoParser.TypeSpecContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#typeSpec}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTypeSpec(_ ctx: GoParser.TypeSpecContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#aliasDecl}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAliasDecl(_ ctx: GoParser.AliasDeclContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#aliasDecl}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAliasDecl(_ ctx: GoParser.AliasDeclContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#typeDef}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTypeDef(_ ctx: GoParser.TypeDefContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#typeDef}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTypeDef(_ ctx: GoParser.TypeDefContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#typeParameters}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTypeParameters(_ ctx: GoParser.TypeParametersContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#typeParameters}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTypeParameters(_ ctx: GoParser.TypeParametersContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#typeParameterDecl}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTypeParameterDecl(_ ctx: GoParser.TypeParameterDeclContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#typeParameterDecl}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTypeParameterDecl(_ ctx: GoParser.TypeParameterDeclContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#typeElement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTypeElement(_ ctx: GoParser.TypeElementContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#typeElement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTypeElement(_ ctx: GoParser.TypeElementContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#typeTerm}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTypeTerm(_ ctx: GoParser.TypeTermContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#typeTerm}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTypeTerm(_ ctx: GoParser.TypeTermContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#functionDecl}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFunctionDecl(_ ctx: GoParser.FunctionDeclContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#functionDecl}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFunctionDecl(_ ctx: GoParser.FunctionDeclContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#methodDecl}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMethodDecl(_ ctx: GoParser.MethodDeclContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#methodDecl}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMethodDecl(_ ctx: GoParser.MethodDeclContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#receiver}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterReceiver(_ ctx: GoParser.ReceiverContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#receiver}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitReceiver(_ ctx: GoParser.ReceiverContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#varDecl}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterVarDecl(_ ctx: GoParser.VarDeclContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#varDecl}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitVarDecl(_ ctx: GoParser.VarDeclContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#varSpec}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterVarSpec(_ ctx: GoParser.VarSpecContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#varSpec}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitVarSpec(_ ctx: GoParser.VarSpecContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#block}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBlock(_ ctx: GoParser.BlockContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#block}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBlock(_ ctx: GoParser.BlockContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#statementList}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterStatementList(_ ctx: GoParser.StatementListContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#statementList}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitStatementList(_ ctx: GoParser.StatementListContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterStatement(_ ctx: GoParser.StatementContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitStatement(_ ctx: GoParser.StatementContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#simpleStmt}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSimpleStmt(_ ctx: GoParser.SimpleStmtContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#simpleStmt}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSimpleStmt(_ ctx: GoParser.SimpleStmtContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#expressionStmt}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterExpressionStmt(_ ctx: GoParser.ExpressionStmtContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#expressionStmt}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitExpressionStmt(_ ctx: GoParser.ExpressionStmtContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#sendStmt}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSendStmt(_ ctx: GoParser.SendStmtContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#sendStmt}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSendStmt(_ ctx: GoParser.SendStmtContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#incDecStmt}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIncDecStmt(_ ctx: GoParser.IncDecStmtContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#incDecStmt}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIncDecStmt(_ ctx: GoParser.IncDecStmtContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#assignment}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAssignment(_ ctx: GoParser.AssignmentContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#assignment}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAssignment(_ ctx: GoParser.AssignmentContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#assign_op}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAssign_op(_ ctx: GoParser.Assign_opContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#assign_op}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAssign_op(_ ctx: GoParser.Assign_opContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#shortVarDecl}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterShortVarDecl(_ ctx: GoParser.ShortVarDeclContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#shortVarDecl}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitShortVarDecl(_ ctx: GoParser.ShortVarDeclContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#labeledStmt}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLabeledStmt(_ ctx: GoParser.LabeledStmtContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#labeledStmt}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLabeledStmt(_ ctx: GoParser.LabeledStmtContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#returnStmt}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterReturnStmt(_ ctx: GoParser.ReturnStmtContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#returnStmt}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitReturnStmt(_ ctx: GoParser.ReturnStmtContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#breakStmt}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBreakStmt(_ ctx: GoParser.BreakStmtContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#breakStmt}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBreakStmt(_ ctx: GoParser.BreakStmtContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#continueStmt}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterContinueStmt(_ ctx: GoParser.ContinueStmtContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#continueStmt}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitContinueStmt(_ ctx: GoParser.ContinueStmtContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#gotoStmt}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterGotoStmt(_ ctx: GoParser.GotoStmtContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#gotoStmt}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitGotoStmt(_ ctx: GoParser.GotoStmtContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#fallthroughStmt}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFallthroughStmt(_ ctx: GoParser.FallthroughStmtContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#fallthroughStmt}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFallthroughStmt(_ ctx: GoParser.FallthroughStmtContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#deferStmt}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDeferStmt(_ ctx: GoParser.DeferStmtContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#deferStmt}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDeferStmt(_ ctx: GoParser.DeferStmtContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#ifStmt}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIfStmt(_ ctx: GoParser.IfStmtContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#ifStmt}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIfStmt(_ ctx: GoParser.IfStmtContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#switchStmt}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSwitchStmt(_ ctx: GoParser.SwitchStmtContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#switchStmt}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSwitchStmt(_ ctx: GoParser.SwitchStmtContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#exprSwitchStmt}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterExprSwitchStmt(_ ctx: GoParser.ExprSwitchStmtContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#exprSwitchStmt}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitExprSwitchStmt(_ ctx: GoParser.ExprSwitchStmtContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#exprCaseClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterExprCaseClause(_ ctx: GoParser.ExprCaseClauseContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#exprCaseClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitExprCaseClause(_ ctx: GoParser.ExprCaseClauseContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#exprSwitchCase}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterExprSwitchCase(_ ctx: GoParser.ExprSwitchCaseContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#exprSwitchCase}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitExprSwitchCase(_ ctx: GoParser.ExprSwitchCaseContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#typeSwitchStmt}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTypeSwitchStmt(_ ctx: GoParser.TypeSwitchStmtContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#typeSwitchStmt}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTypeSwitchStmt(_ ctx: GoParser.TypeSwitchStmtContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#typeSwitchGuard}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTypeSwitchGuard(_ ctx: GoParser.TypeSwitchGuardContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#typeSwitchGuard}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTypeSwitchGuard(_ ctx: GoParser.TypeSwitchGuardContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#typeCaseClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTypeCaseClause(_ ctx: GoParser.TypeCaseClauseContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#typeCaseClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTypeCaseClause(_ ctx: GoParser.TypeCaseClauseContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#typeSwitchCase}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTypeSwitchCase(_ ctx: GoParser.TypeSwitchCaseContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#typeSwitchCase}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTypeSwitchCase(_ ctx: GoParser.TypeSwitchCaseContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#typeList}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTypeList(_ ctx: GoParser.TypeListContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#typeList}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTypeList(_ ctx: GoParser.TypeListContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#selectStmt}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSelectStmt(_ ctx: GoParser.SelectStmtContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#selectStmt}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSelectStmt(_ ctx: GoParser.SelectStmtContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#commClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCommClause(_ ctx: GoParser.CommClauseContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#commClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCommClause(_ ctx: GoParser.CommClauseContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#commCase}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCommCase(_ ctx: GoParser.CommCaseContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#commCase}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCommCase(_ ctx: GoParser.CommCaseContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#recvStmt}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterRecvStmt(_ ctx: GoParser.RecvStmtContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#recvStmt}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitRecvStmt(_ ctx: GoParser.RecvStmtContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#forStmt}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterForStmt(_ ctx: GoParser.ForStmtContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#forStmt}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitForStmt(_ ctx: GoParser.ForStmtContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#forClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterForClause(_ ctx: GoParser.ForClauseContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#forClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitForClause(_ ctx: GoParser.ForClauseContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#rangeClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterRangeClause(_ ctx: GoParser.RangeClauseContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#rangeClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitRangeClause(_ ctx: GoParser.RangeClauseContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#goStmt}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterGoStmt(_ ctx: GoParser.GoStmtContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#goStmt}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitGoStmt(_ ctx: GoParser.GoStmtContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#type_}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterType_(_ ctx: GoParser.Type_Context)
	/**
	 * Exit a parse tree produced by {@link GoParser#type_}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitType_(_ ctx: GoParser.Type_Context)
	/**
	 * Enter a parse tree produced by {@link GoParser#typeArgs}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTypeArgs(_ ctx: GoParser.TypeArgsContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#typeArgs}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTypeArgs(_ ctx: GoParser.TypeArgsContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#typeName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTypeName(_ ctx: GoParser.TypeNameContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#typeName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTypeName(_ ctx: GoParser.TypeNameContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#typeLit}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTypeLit(_ ctx: GoParser.TypeLitContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#typeLit}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTypeLit(_ ctx: GoParser.TypeLitContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#arrayType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterArrayType(_ ctx: GoParser.ArrayTypeContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#arrayType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitArrayType(_ ctx: GoParser.ArrayTypeContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#arrayLength}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterArrayLength(_ ctx: GoParser.ArrayLengthContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#arrayLength}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitArrayLength(_ ctx: GoParser.ArrayLengthContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#elementType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterElementType(_ ctx: GoParser.ElementTypeContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#elementType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitElementType(_ ctx: GoParser.ElementTypeContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#pointerType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPointerType(_ ctx: GoParser.PointerTypeContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#pointerType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPointerType(_ ctx: GoParser.PointerTypeContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#interfaceType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterInterfaceType(_ ctx: GoParser.InterfaceTypeContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#interfaceType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitInterfaceType(_ ctx: GoParser.InterfaceTypeContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#sliceType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSliceType(_ ctx: GoParser.SliceTypeContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#sliceType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSliceType(_ ctx: GoParser.SliceTypeContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#mapType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMapType(_ ctx: GoParser.MapTypeContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#mapType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMapType(_ ctx: GoParser.MapTypeContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#channelType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterChannelType(_ ctx: GoParser.ChannelTypeContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#channelType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitChannelType(_ ctx: GoParser.ChannelTypeContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#methodSpec}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMethodSpec(_ ctx: GoParser.MethodSpecContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#methodSpec}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMethodSpec(_ ctx: GoParser.MethodSpecContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#functionType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFunctionType(_ ctx: GoParser.FunctionTypeContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#functionType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFunctionType(_ ctx: GoParser.FunctionTypeContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#signature}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSignature(_ ctx: GoParser.SignatureContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#signature}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSignature(_ ctx: GoParser.SignatureContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#result}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterResult(_ ctx: GoParser.ResultContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#result}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitResult(_ ctx: GoParser.ResultContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#parameters}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterParameters(_ ctx: GoParser.ParametersContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#parameters}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitParameters(_ ctx: GoParser.ParametersContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#parameterDecl}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterParameterDecl(_ ctx: GoParser.ParameterDeclContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#parameterDecl}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitParameterDecl(_ ctx: GoParser.ParameterDeclContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterExpression(_ ctx: GoParser.ExpressionContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitExpression(_ ctx: GoParser.ExpressionContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#primaryExpr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPrimaryExpr(_ ctx: GoParser.PrimaryExprContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#primaryExpr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPrimaryExpr(_ ctx: GoParser.PrimaryExprContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#conversion}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterConversion(_ ctx: GoParser.ConversionContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#conversion}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitConversion(_ ctx: GoParser.ConversionContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#operand}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterOperand(_ ctx: GoParser.OperandContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#operand}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitOperand(_ ctx: GoParser.OperandContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#literal}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLiteral(_ ctx: GoParser.LiteralContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#literal}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLiteral(_ ctx: GoParser.LiteralContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#basicLit}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBasicLit(_ ctx: GoParser.BasicLitContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#basicLit}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBasicLit(_ ctx: GoParser.BasicLitContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#integer}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterInteger(_ ctx: GoParser.IntegerContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#integer}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitInteger(_ ctx: GoParser.IntegerContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#operandName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterOperandName(_ ctx: GoParser.OperandNameContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#operandName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitOperandName(_ ctx: GoParser.OperandNameContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#qualifiedIdent}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterQualifiedIdent(_ ctx: GoParser.QualifiedIdentContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#qualifiedIdent}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitQualifiedIdent(_ ctx: GoParser.QualifiedIdentContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#compositeLit}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCompositeLit(_ ctx: GoParser.CompositeLitContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#compositeLit}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCompositeLit(_ ctx: GoParser.CompositeLitContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#literalType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLiteralType(_ ctx: GoParser.LiteralTypeContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#literalType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLiteralType(_ ctx: GoParser.LiteralTypeContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#literalValue}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLiteralValue(_ ctx: GoParser.LiteralValueContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#literalValue}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLiteralValue(_ ctx: GoParser.LiteralValueContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#elementList}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterElementList(_ ctx: GoParser.ElementListContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#elementList}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitElementList(_ ctx: GoParser.ElementListContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#keyedElement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterKeyedElement(_ ctx: GoParser.KeyedElementContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#keyedElement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitKeyedElement(_ ctx: GoParser.KeyedElementContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#key}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterKey(_ ctx: GoParser.KeyContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#key}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitKey(_ ctx: GoParser.KeyContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#element}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterElement(_ ctx: GoParser.ElementContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#element}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitElement(_ ctx: GoParser.ElementContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#structType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterStructType(_ ctx: GoParser.StructTypeContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#structType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitStructType(_ ctx: GoParser.StructTypeContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#fieldDecl}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFieldDecl(_ ctx: GoParser.FieldDeclContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#fieldDecl}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFieldDecl(_ ctx: GoParser.FieldDeclContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#string_}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterString_(_ ctx: GoParser.String_Context)
	/**
	 * Exit a parse tree produced by {@link GoParser#string_}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitString_(_ ctx: GoParser.String_Context)
	/**
	 * Enter a parse tree produced by {@link GoParser#embeddedField}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterEmbeddedField(_ ctx: GoParser.EmbeddedFieldContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#embeddedField}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitEmbeddedField(_ ctx: GoParser.EmbeddedFieldContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#functionLit}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFunctionLit(_ ctx: GoParser.FunctionLitContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#functionLit}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFunctionLit(_ ctx: GoParser.FunctionLitContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#index}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIndex(_ ctx: GoParser.IndexContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#index}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIndex(_ ctx: GoParser.IndexContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#slice_}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSlice_(_ ctx: GoParser.Slice_Context)
	/**
	 * Exit a parse tree produced by {@link GoParser#slice_}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSlice_(_ ctx: GoParser.Slice_Context)
	/**
	 * Enter a parse tree produced by {@link GoParser#typeAssertion}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTypeAssertion(_ ctx: GoParser.TypeAssertionContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#typeAssertion}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTypeAssertion(_ ctx: GoParser.TypeAssertionContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#arguments}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterArguments(_ ctx: GoParser.ArgumentsContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#arguments}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitArguments(_ ctx: GoParser.ArgumentsContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#methodExpr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMethodExpr(_ ctx: GoParser.MethodExprContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#methodExpr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMethodExpr(_ ctx: GoParser.MethodExprContext)
	/**
	 * Enter a parse tree produced by {@link GoParser#eos}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterEos(_ ctx: GoParser.EosContext)
	/**
	 * Exit a parse tree produced by {@link GoParser#eos}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitEos(_ ctx: GoParser.EosContext)
}