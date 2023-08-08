// Generated from GoParser.g4 by ANTLR 4.13.0
import Antlr4

open class GoParser: GoParserBase {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = GoParser._ATN.getNumberOfDecisions()
          for i in 0..<length {
            decisionToDFA.append(DFA(GoParser._ATN.getDecisionState(i)!, i))
           }
           return decisionToDFA
     }()

	internal static let _sharedContextCache = PredictionContextCache()

	public
	enum Tokens: Int {
		case EOF = -1, BREAK = 1, DEFAULT = 2, FUNC = 3, INTERFACE = 4, SELECT = 5, 
                 CASE = 6, DEFER = 7, GO = 8, MAP = 9, STRUCT = 10, CHAN = 11, 
                 ELSE = 12, GOTO = 13, PACKAGE = 14, SWITCH = 15, CONST = 16, 
                 FALLTHROUGH = 17, IF = 18, RANGE = 19, TYPE = 20, CONTINUE = 21, 
                 FOR = 22, IMPORT = 23, RETURN = 24, VAR = 25, NIL_LIT = 26, 
                 IDENTIFIER = 27, L_PAREN = 28, R_PAREN = 29, L_CURLY = 30, 
                 R_CURLY = 31, L_BRACKET = 32, R_BRACKET = 33, ASSIGN = 34, 
                 COMMA = 35, SEMI = 36, COLON = 37, DOT = 38, PLUS_PLUS = 39, 
                 MINUS_MINUS = 40, DECLARE_ASSIGN = 41, ELLIPSIS = 42, LOGICAL_OR = 43, 
                 LOGICAL_AND = 44, EQUALS = 45, NOT_EQUALS = 46, LESS = 47, 
                 LESS_OR_EQUALS = 48, GREATER = 49, GREATER_OR_EQUALS = 50, 
                 OR = 51, DIV = 52, MOD = 53, LSHIFT = 54, RSHIFT = 55, 
                 BIT_CLEAR = 56, UNDERLYING = 57, EXCLAMATION = 58, PLUS = 59, 
                 MINUS = 60, CARET = 61, STAR = 62, AMPERSAND = 63, RECEIVE = 64, 
                 DECIMAL_LIT = 65, BINARY_LIT = 66, OCTAL_LIT = 67, HEX_LIT = 68, 
                 FLOAT_LIT = 69, DECIMAL_FLOAT_LIT = 70, HEX_FLOAT_LIT = 71, 
                 IMAGINARY_LIT = 72, RUNE_LIT = 73, BYTE_VALUE = 74, OCTAL_BYTE_VALUE = 75, 
                 HEX_BYTE_VALUE = 76, LITTLE_U_VALUE = 77, BIG_U_VALUE = 78, 
                 RAW_STRING_LIT = 79, INTERPRETED_STRING_LIT = 80, WS = 81, 
                 COMMENT = 82, TERMINATOR = 83, LINE_COMMENT = 84, WS_NLSEMI = 85, 
                 COMMENT_NLSEMI = 86, LINE_COMMENT_NLSEMI = 87, EOS = 88, 
                 OTHER = 89
	}

	public
	static let RULE_sourceFile = 0, RULE_packageClause = 1, RULE_importDecl = 2, 
            RULE_importSpec = 3, RULE_importPath = 4, RULE_declaration = 5, 
            RULE_constDecl = 6, RULE_constSpec = 7, RULE_identifierList = 8, 
            RULE_expressionList = 9, RULE_typeDecl = 10, RULE_typeSpec = 11, 
            RULE_aliasDecl = 12, RULE_typeDef = 13, RULE_typeParameters = 14, 
            RULE_typeParameterDecl = 15, RULE_typeElement = 16, RULE_typeTerm = 17, 
            RULE_functionDecl = 18, RULE_methodDecl = 19, RULE_receiver = 20, 
            RULE_varDecl = 21, RULE_varSpec = 22, RULE_block = 23, RULE_statementList = 24, 
            RULE_statement = 25, RULE_simpleStmt = 26, RULE_expressionStmt = 27, 
            RULE_sendStmt = 28, RULE_incDecStmt = 29, RULE_assignment = 30, 
            RULE_assign_op = 31, RULE_shortVarDecl = 32, RULE_labeledStmt = 33, 
            RULE_returnStmt = 34, RULE_breakStmt = 35, RULE_continueStmt = 36, 
            RULE_gotoStmt = 37, RULE_fallthroughStmt = 38, RULE_deferStmt = 39, 
            RULE_ifStmt = 40, RULE_switchStmt = 41, RULE_exprSwitchStmt = 42, 
            RULE_exprCaseClause = 43, RULE_exprSwitchCase = 44, RULE_typeSwitchStmt = 45, 
            RULE_typeSwitchGuard = 46, RULE_typeCaseClause = 47, RULE_typeSwitchCase = 48, 
            RULE_typeList = 49, RULE_selectStmt = 50, RULE_commClause = 51, 
            RULE_commCase = 52, RULE_recvStmt = 53, RULE_forStmt = 54, RULE_forClause = 55, 
            RULE_rangeClause = 56, RULE_goStmt = 57, RULE_type_ = 58, RULE_typeArgs = 59, 
            RULE_typeName = 60, RULE_typeLit = 61, RULE_arrayType = 62, 
            RULE_arrayLength = 63, RULE_elementType = 64, RULE_pointerType = 65, 
            RULE_interfaceType = 66, RULE_sliceType = 67, RULE_mapType = 68, 
            RULE_channelType = 69, RULE_methodSpec = 70, RULE_functionType = 71, 
            RULE_signature = 72, RULE_result = 73, RULE_parameters = 74, 
            RULE_parameterDecl = 75, RULE_expression = 76, RULE_primaryExpr = 77, 
            RULE_conversion = 78, RULE_operand = 79, RULE_literal = 80, 
            RULE_basicLit = 81, RULE_integer = 82, RULE_operandName = 83, 
            RULE_qualifiedIdent = 84, RULE_compositeLit = 85, RULE_literalType = 86, 
            RULE_literalValue = 87, RULE_elementList = 88, RULE_keyedElement = 89, 
            RULE_key = 90, RULE_element = 91, RULE_structType = 92, RULE_fieldDecl = 93, 
            RULE_string_ = 94, RULE_embeddedField = 95, RULE_functionLit = 96, 
            RULE_index = 97, RULE_slice_ = 98, RULE_typeAssertion = 99, 
            RULE_arguments = 100, RULE_methodExpr = 101, RULE_eos = 102

	public
	static let ruleNames: [String] = [
		"sourceFile", "packageClause", "importDecl", "importSpec", "importPath", 
		"declaration", "constDecl", "constSpec", "identifierList", "expressionList", 
		"typeDecl", "typeSpec", "aliasDecl", "typeDef", "typeParameters", "typeParameterDecl", 
		"typeElement", "typeTerm", "functionDecl", "methodDecl", "receiver", "varDecl", 
		"varSpec", "block", "statementList", "statement", "simpleStmt", "expressionStmt", 
		"sendStmt", "incDecStmt", "assignment", "assign_op", "shortVarDecl", "labeledStmt", 
		"returnStmt", "breakStmt", "continueStmt", "gotoStmt", "fallthroughStmt", 
		"deferStmt", "ifStmt", "switchStmt", "exprSwitchStmt", "exprCaseClause", 
		"exprSwitchCase", "typeSwitchStmt", "typeSwitchGuard", "typeCaseClause", 
		"typeSwitchCase", "typeList", "selectStmt", "commClause", "commCase", 
		"recvStmt", "forStmt", "forClause", "rangeClause", "goStmt", "type_", 
		"typeArgs", "typeName", "typeLit", "arrayType", "arrayLength", "elementType", 
		"pointerType", "interfaceType", "sliceType", "mapType", "channelType", 
		"methodSpec", "functionType", "signature", "result", "parameters", "parameterDecl", 
		"expression", "primaryExpr", "conversion", "operand", "literal", "basicLit", 
		"integer", "operandName", "qualifiedIdent", "compositeLit", "literalType", 
		"literalValue", "elementList", "keyedElement", "key", "element", "structType", 
		"fieldDecl", "string_", "embeddedField", "functionLit", "index", "slice_", 
		"typeAssertion", "arguments", "methodExpr", "eos"
	]

	private static let _LITERAL_NAMES: [String?] = [
		nil, "'break'", "'default'", "'func'", "'interface'", "'select'", "'case'", 
		"'defer'", "'go'", "'map'", "'struct'", "'chan'", "'else'", "'goto'", 
		"'package'", "'switch'", "'const'", "'fallthrough'", "'if'", "'range'", 
		"'type'", "'continue'", "'for'", "'import'", "'return'", "'var'", "'nil'", 
		nil, "'('", "')'", "'{'", "'}'", "'['", "']'", "'='", "','", "';'", "':'", 
		"'.'", "'++'", "'--'", "':='", "'...'", "'||'", "'&&'", "'=='", "'!='", 
		"'<'", "'<='", "'>'", "'>='", "'|'", "'/'", "'%'", "'<<'", "'>>'", "'&^'", 
		"'~'", "'!'", "'+'", "'-'", "'^'", "'*'", "'&'", "'<-'"
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, "BREAK", "DEFAULT", "FUNC", "INTERFACE", "SELECT", "CASE", "DEFER", 
		"GO", "MAP", "STRUCT", "CHAN", "ELSE", "GOTO", "PACKAGE", "SWITCH", "CONST", 
		"FALLTHROUGH", "IF", "RANGE", "TYPE", "CONTINUE", "FOR", "IMPORT", "RETURN", 
		"VAR", "NIL_LIT", "IDENTIFIER", "L_PAREN", "R_PAREN", "L_CURLY", "R_CURLY", 
		"L_BRACKET", "R_BRACKET", "ASSIGN", "COMMA", "SEMI", "COLON", "DOT", "PLUS_PLUS", 
		"MINUS_MINUS", "DECLARE_ASSIGN", "ELLIPSIS", "LOGICAL_OR", "LOGICAL_AND", 
		"EQUALS", "NOT_EQUALS", "LESS", "LESS_OR_EQUALS", "GREATER", "GREATER_OR_EQUALS", 
		"OR", "DIV", "MOD", "LSHIFT", "RSHIFT", "BIT_CLEAR", "UNDERLYING", "EXCLAMATION", 
		"PLUS", "MINUS", "CARET", "STAR", "AMPERSAND", "RECEIVE", "DECIMAL_LIT", 
		"BINARY_LIT", "OCTAL_LIT", "HEX_LIT", "FLOAT_LIT", "DECIMAL_FLOAT_LIT", 
		"HEX_FLOAT_LIT", "IMAGINARY_LIT", "RUNE_LIT", "BYTE_VALUE", "OCTAL_BYTE_VALUE", 
		"HEX_BYTE_VALUE", "LITTLE_U_VALUE", "BIG_U_VALUE", "RAW_STRING_LIT", "INTERPRETED_STRING_LIT", 
		"WS", "COMMENT", "TERMINATOR", "LINE_COMMENT", "WS_NLSEMI", "COMMENT_NLSEMI", 
		"LINE_COMMENT_NLSEMI", "EOS", "OTHER"
	]
	public
	static let VOCABULARY = Vocabulary(_LITERAL_NAMES, _SYMBOLIC_NAMES)

	override open
	func getGrammarFileName() -> String { return "GoParser.g4" }

	override open
	func getRuleNames() -> [String] { return GoParser.ruleNames }

	override open
	func getSerializedATN() -> [Int] { return GoParser._serializedATN }

	override open
	func getATN() -> ATN { return GoParser._ATN }


	override open
	func getVocabulary() -> Vocabulary {
	    return GoParser.VOCABULARY
	}

	override public
	init(_ input:TokenStream) throws {
	    RuntimeMetaData.checkVersion("4.13.0", RuntimeMetaData.VERSION)
		try super.init(input)
		_interp = ParserATNSimulator(self,GoParser._ATN,GoParser._decisionToDFA, GoParser._sharedContextCache)
	}


	public class SourceFileContext: ParserRuleContext {
			open
			func packageClause() -> PackageClauseContext? {
				return getRuleContext(PackageClauseContext.self, 0)
			}
			open
			func eos() -> [EosContext] {
				return getRuleContexts(EosContext.self)
			}
			open
			func eos(_ i: Int) -> EosContext? {
				return getRuleContext(EosContext.self, i)
			}
			open
			func EOF() -> TerminalNode? {
				return getToken(GoParser.Tokens.EOF.rawValue, 0)
			}
			open
			func importDecl() -> [ImportDeclContext] {
				return getRuleContexts(ImportDeclContext.self)
			}
			open
			func importDecl(_ i: Int) -> ImportDeclContext? {
				return getRuleContext(ImportDeclContext.self, i)
			}
			open
			func functionDecl() -> [FunctionDeclContext] {
				return getRuleContexts(FunctionDeclContext.self)
			}
			open
			func functionDecl(_ i: Int) -> FunctionDeclContext? {
				return getRuleContext(FunctionDeclContext.self, i)
			}
			open
			func methodDecl() -> [MethodDeclContext] {
				return getRuleContexts(MethodDeclContext.self)
			}
			open
			func methodDecl(_ i: Int) -> MethodDeclContext? {
				return getRuleContext(MethodDeclContext.self, i)
			}
			open
			func declaration() -> [DeclarationContext] {
				return getRuleContexts(DeclarationContext.self)
			}
			open
			func declaration(_ i: Int) -> DeclarationContext? {
				return getRuleContext(DeclarationContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_sourceFile
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterSourceFile(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitSourceFile(self)
			}
		}
	}
	@discardableResult
	 open func sourceFile() throws -> SourceFileContext {
		var _localctx: SourceFileContext
		_localctx = SourceFileContext(_ctx, getState())
		try enterRule(_localctx, 0, GoParser.RULE_sourceFile)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(206)
		 	try packageClause()
		 	setState(207)
		 	try eos()
		 	setState(213)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == GoParser.Tokens.IMPORT.rawValue) {
		 		setState(208)
		 		try importDecl()
		 		setState(209)
		 		try eos()


		 		setState(215)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(225)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & 34668552) != 0)) {
		 		setState(219)
		 		try _errHandler.sync(self)
		 		switch(try getInterpreter().adaptivePredict(_input,1, _ctx)) {
		 		case 1:
		 			setState(216)
		 			try functionDecl()

		 			break
		 		case 2:
		 			setState(217)
		 			try methodDecl()

		 			break
		 		case 3:
		 			setState(218)
		 			try declaration()

		 			break
		 		default: break
		 		}
		 		setState(221)
		 		try eos()


		 		setState(227)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(228)
		 	try match(GoParser.Tokens.EOF.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class PackageClauseContext: ParserRuleContext {
		open var packageName: Token!
			open
			func PACKAGE() -> TerminalNode? {
				return getToken(GoParser.Tokens.PACKAGE.rawValue, 0)
			}
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(GoParser.Tokens.IDENTIFIER.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_packageClause
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterPackageClause(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitPackageClause(self)
			}
		}
	}
	@discardableResult
	 open func packageClause() throws -> PackageClauseContext {
		var _localctx: PackageClauseContext
		_localctx = PackageClauseContext(_ctx, getState())
		try enterRule(_localctx, 2, GoParser.RULE_packageClause)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(230)
		 	try match(GoParser.Tokens.PACKAGE.rawValue)
		 	setState(231)
		 	try {
		 			let assignmentValue = try match(GoParser.Tokens.IDENTIFIER.rawValue)
		 			_localctx.castdown(PackageClauseContext.self).packageName = assignmentValue
		 	     }()


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ImportDeclContext: ParserRuleContext {
			open
			func IMPORT() -> TerminalNode? {
				return getToken(GoParser.Tokens.IMPORT.rawValue, 0)
			}
			open
			func importSpec() -> [ImportSpecContext] {
				return getRuleContexts(ImportSpecContext.self)
			}
			open
			func importSpec(_ i: Int) -> ImportSpecContext? {
				return getRuleContext(ImportSpecContext.self, i)
			}
			open
			func L_PAREN() -> TerminalNode? {
				return getToken(GoParser.Tokens.L_PAREN.rawValue, 0)
			}
			open
			func R_PAREN() -> TerminalNode? {
				return getToken(GoParser.Tokens.R_PAREN.rawValue, 0)
			}
			open
			func eos() -> [EosContext] {
				return getRuleContexts(EosContext.self)
			}
			open
			func eos(_ i: Int) -> EosContext? {
				return getRuleContext(EosContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_importDecl
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterImportDecl(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitImportDecl(self)
			}
		}
	}
	@discardableResult
	 open func importDecl() throws -> ImportDeclContext {
		var _localctx: ImportDeclContext
		_localctx = ImportDeclContext(_ctx, getState())
		try enterRule(_localctx, 4, GoParser.RULE_importDecl)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(233)
		 	try match(GoParser.Tokens.IMPORT.rawValue)
		 	setState(245)
		 	try _errHandler.sync(self)
		 	switch (GoParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .IDENTIFIER:fallthrough
		 	case .DOT:fallthrough
		 	case .RAW_STRING_LIT:fallthrough
		 	case .INTERPRETED_STRING_LIT:
		 		setState(234)
		 		try importSpec()

		 		break

		 	case .L_PAREN:
		 		setState(235)
		 		try match(GoParser.Tokens.L_PAREN.rawValue)
		 		setState(241)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (((Int64((_la - 27)) & ~0x3f) == 0 && ((Int64(1) << (_la - 27)) & 13510798882113537) != 0)) {
		 			setState(236)
		 			try importSpec()
		 			setState(237)
		 			try eos()


		 			setState(243)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}
		 		setState(244)
		 		try match(GoParser.Tokens.R_PAREN.rawValue)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ImportSpecContext: ParserRuleContext {
		open var alias: Token!
			open
			func importPath() -> ImportPathContext? {
				return getRuleContext(ImportPathContext.self, 0)
			}
			open
			func DOT() -> TerminalNode? {
				return getToken(GoParser.Tokens.DOT.rawValue, 0)
			}
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(GoParser.Tokens.IDENTIFIER.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_importSpec
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterImportSpec(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitImportSpec(self)
			}
		}
	}
	@discardableResult
	 open func importSpec() throws -> ImportSpecContext {
		var _localctx: ImportSpecContext
		_localctx = ImportSpecContext(_ctx, getState())
		try enterRule(_localctx, 6, GoParser.RULE_importSpec)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(248)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (_la == GoParser.Tokens.IDENTIFIER.rawValue || _la == GoParser.Tokens.DOT.rawValue) {
		 		setState(247)
		 		_localctx.castdown(ImportSpecContext.self).alias = try _input.LT(1)
		 		_la = try _input.LA(1)
		 		if (!(_la == GoParser.Tokens.IDENTIFIER.rawValue || _la == GoParser.Tokens.DOT.rawValue)) {
		 			_localctx.castdown(ImportSpecContext.self).alias = try _errHandler.recoverInline(self) as Token
		 		}
		 		else {
		 			_errHandler.reportMatch(self)
		 			try consume()
		 		}

		 	}

		 	setState(250)
		 	try importPath()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ImportPathContext: ParserRuleContext {
			open
			func string_() -> String_Context? {
				return getRuleContext(String_Context.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_importPath
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterImportPath(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitImportPath(self)
			}
		}
	}
	@discardableResult
	 open func importPath() throws -> ImportPathContext {
		var _localctx: ImportPathContext
		_localctx = ImportPathContext(_ctx, getState())
		try enterRule(_localctx, 8, GoParser.RULE_importPath)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(252)
		 	try string_()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class DeclarationContext: ParserRuleContext {
			open
			func constDecl() -> ConstDeclContext? {
				return getRuleContext(ConstDeclContext.self, 0)
			}
			open
			func typeDecl() -> TypeDeclContext? {
				return getRuleContext(TypeDeclContext.self, 0)
			}
			open
			func varDecl() -> VarDeclContext? {
				return getRuleContext(VarDeclContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_declaration
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterDeclaration(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitDeclaration(self)
			}
		}
	}
	@discardableResult
	 open func declaration() throws -> DeclarationContext {
		var _localctx: DeclarationContext
		_localctx = DeclarationContext(_ctx, getState())
		try enterRule(_localctx, 10, GoParser.RULE_declaration)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(257)
		 	try _errHandler.sync(self)
		 	switch (GoParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .CONST:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(254)
		 		try constDecl()

		 		break

		 	case .TYPE:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(255)
		 		try typeDecl()

		 		break

		 	case .VAR:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(256)
		 		try varDecl()

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ConstDeclContext: ParserRuleContext {
			open
			func CONST() -> TerminalNode? {
				return getToken(GoParser.Tokens.CONST.rawValue, 0)
			}
			open
			func constSpec() -> [ConstSpecContext] {
				return getRuleContexts(ConstSpecContext.self)
			}
			open
			func constSpec(_ i: Int) -> ConstSpecContext? {
				return getRuleContext(ConstSpecContext.self, i)
			}
			open
			func L_PAREN() -> TerminalNode? {
				return getToken(GoParser.Tokens.L_PAREN.rawValue, 0)
			}
			open
			func R_PAREN() -> TerminalNode? {
				return getToken(GoParser.Tokens.R_PAREN.rawValue, 0)
			}
			open
			func eos() -> [EosContext] {
				return getRuleContexts(EosContext.self)
			}
			open
			func eos(_ i: Int) -> EosContext? {
				return getRuleContext(EosContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_constDecl
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterConstDecl(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitConstDecl(self)
			}
		}
	}
	@discardableResult
	 open func constDecl() throws -> ConstDeclContext {
		var _localctx: ConstDeclContext
		_localctx = ConstDeclContext(_ctx, getState())
		try enterRule(_localctx, 12, GoParser.RULE_constDecl)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(259)
		 	try match(GoParser.Tokens.CONST.rawValue)
		 	setState(271)
		 	try _errHandler.sync(self)
		 	switch (GoParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .IDENTIFIER:
		 		setState(260)
		 		try constSpec()

		 		break

		 	case .L_PAREN:
		 		setState(261)
		 		try match(GoParser.Tokens.L_PAREN.rawValue)
		 		setState(267)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (_la == GoParser.Tokens.IDENTIFIER.rawValue) {
		 			setState(262)
		 			try constSpec()
		 			setState(263)
		 			try eos()


		 			setState(269)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}
		 		setState(270)
		 		try match(GoParser.Tokens.R_PAREN.rawValue)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ConstSpecContext: ParserRuleContext {
			open
			func identifierList() -> IdentifierListContext? {
				return getRuleContext(IdentifierListContext.self, 0)
			}
			open
			func ASSIGN() -> TerminalNode? {
				return getToken(GoParser.Tokens.ASSIGN.rawValue, 0)
			}
			open
			func expressionList() -> ExpressionListContext? {
				return getRuleContext(ExpressionListContext.self, 0)
			}
			open
			func type_() -> Type_Context? {
				return getRuleContext(Type_Context.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_constSpec
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterConstSpec(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitConstSpec(self)
			}
		}
	}
	@discardableResult
	 open func constSpec() throws -> ConstSpecContext {
		var _localctx: ConstSpecContext
		_localctx = ConstSpecContext(_ctx, getState())
		try enterRule(_localctx, 14, GoParser.RULE_constSpec)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(273)
		 	try identifierList()
		 	setState(279)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,10,_ctx)) {
		 	case 1:
		 		setState(275)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (((Int64((_la - 3)) & ~0x3f) == 0 && ((Int64(1) << (_la - 3)) & 2882303762104320451) != 0)) {
		 			setState(274)
		 			try type_()

		 		}

		 		setState(277)
		 		try match(GoParser.Tokens.ASSIGN.rawValue)
		 		setState(278)
		 		try expressionList()

		 		break
		 	default: break
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class IdentifierListContext: ParserRuleContext {
			open
			func IDENTIFIER() -> [TerminalNode] {
				return getTokens(GoParser.Tokens.IDENTIFIER.rawValue)
			}
			open
			func IDENTIFIER(_ i:Int) -> TerminalNode? {
				return getToken(GoParser.Tokens.IDENTIFIER.rawValue, i)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(GoParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(GoParser.Tokens.COMMA.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_identifierList
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterIdentifierList(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitIdentifierList(self)
			}
		}
	}
	@discardableResult
	 open func identifierList() throws -> IdentifierListContext {
		var _localctx: IdentifierListContext
		_localctx = IdentifierListContext(_ctx, getState())
		try enterRule(_localctx, 16, GoParser.RULE_identifierList)
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	try enterOuterAlt(_localctx, 1)
		 	setState(281)
		 	try match(GoParser.Tokens.IDENTIFIER.rawValue)
		 	setState(286)
		 	try _errHandler.sync(self)
		 	_alt = try getInterpreter().adaptivePredict(_input,11,_ctx)
		 	while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
		 		if ( _alt==1 ) {
		 			setState(282)
		 			try match(GoParser.Tokens.COMMA.rawValue)
		 			setState(283)
		 			try match(GoParser.Tokens.IDENTIFIER.rawValue)

		 	 
		 		}
		 		setState(288)
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,11,_ctx)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ExpressionListContext: ParserRuleContext {
			open
			func expression() -> [ExpressionContext] {
				return getRuleContexts(ExpressionContext.self)
			}
			open
			func expression(_ i: Int) -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, i)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(GoParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(GoParser.Tokens.COMMA.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_expressionList
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterExpressionList(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitExpressionList(self)
			}
		}
	}
	@discardableResult
	 open func expressionList() throws -> ExpressionListContext {
		var _localctx: ExpressionListContext
		_localctx = ExpressionListContext(_ctx, getState())
		try enterRule(_localctx, 18, GoParser.RULE_expressionList)
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	try enterOuterAlt(_localctx, 1)
		 	setState(289)
		 	try expression(0)
		 	setState(294)
		 	try _errHandler.sync(self)
		 	_alt = try getInterpreter().adaptivePredict(_input,12,_ctx)
		 	while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
		 		if ( _alt==1 ) {
		 			setState(290)
		 			try match(GoParser.Tokens.COMMA.rawValue)
		 			setState(291)
		 			try expression(0)

		 	 
		 		}
		 		setState(296)
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,12,_ctx)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TypeDeclContext: ParserRuleContext {
			open
			func TYPE() -> TerminalNode? {
				return getToken(GoParser.Tokens.TYPE.rawValue, 0)
			}
			open
			func typeSpec() -> [TypeSpecContext] {
				return getRuleContexts(TypeSpecContext.self)
			}
			open
			func typeSpec(_ i: Int) -> TypeSpecContext? {
				return getRuleContext(TypeSpecContext.self, i)
			}
			open
			func L_PAREN() -> TerminalNode? {
				return getToken(GoParser.Tokens.L_PAREN.rawValue, 0)
			}
			open
			func R_PAREN() -> TerminalNode? {
				return getToken(GoParser.Tokens.R_PAREN.rawValue, 0)
			}
			open
			func eos() -> [EosContext] {
				return getRuleContexts(EosContext.self)
			}
			open
			func eos(_ i: Int) -> EosContext? {
				return getRuleContext(EosContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_typeDecl
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterTypeDecl(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitTypeDecl(self)
			}
		}
	}
	@discardableResult
	 open func typeDecl() throws -> TypeDeclContext {
		var _localctx: TypeDeclContext
		_localctx = TypeDeclContext(_ctx, getState())
		try enterRule(_localctx, 20, GoParser.RULE_typeDecl)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(297)
		 	try match(GoParser.Tokens.TYPE.rawValue)
		 	setState(309)
		 	try _errHandler.sync(self)
		 	switch (GoParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .IDENTIFIER:
		 		setState(298)
		 		try typeSpec()

		 		break

		 	case .L_PAREN:
		 		setState(299)
		 		try match(GoParser.Tokens.L_PAREN.rawValue)
		 		setState(305)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (_la == GoParser.Tokens.IDENTIFIER.rawValue) {
		 			setState(300)
		 			try typeSpec()
		 			setState(301)
		 			try eos()


		 			setState(307)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}
		 		setState(308)
		 		try match(GoParser.Tokens.R_PAREN.rawValue)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TypeSpecContext: ParserRuleContext {
			open
			func aliasDecl() -> AliasDeclContext? {
				return getRuleContext(AliasDeclContext.self, 0)
			}
			open
			func typeDef() -> TypeDefContext? {
				return getRuleContext(TypeDefContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_typeSpec
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterTypeSpec(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitTypeSpec(self)
			}
		}
	}
	@discardableResult
	 open func typeSpec() throws -> TypeSpecContext {
		var _localctx: TypeSpecContext
		_localctx = TypeSpecContext(_ctx, getState())
		try enterRule(_localctx, 22, GoParser.RULE_typeSpec)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(313)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,15, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(311)
		 		try aliasDecl()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(312)
		 		try typeDef()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class AliasDeclContext: ParserRuleContext {
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(GoParser.Tokens.IDENTIFIER.rawValue, 0)
			}
			open
			func ASSIGN() -> TerminalNode? {
				return getToken(GoParser.Tokens.ASSIGN.rawValue, 0)
			}
			open
			func type_() -> Type_Context? {
				return getRuleContext(Type_Context.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_aliasDecl
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterAliasDecl(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitAliasDecl(self)
			}
		}
	}
	@discardableResult
	 open func aliasDecl() throws -> AliasDeclContext {
		var _localctx: AliasDeclContext
		_localctx = AliasDeclContext(_ctx, getState())
		try enterRule(_localctx, 24, GoParser.RULE_aliasDecl)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(315)
		 	try match(GoParser.Tokens.IDENTIFIER.rawValue)
		 	setState(316)
		 	try match(GoParser.Tokens.ASSIGN.rawValue)
		 	setState(317)
		 	try type_()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TypeDefContext: ParserRuleContext {
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(GoParser.Tokens.IDENTIFIER.rawValue, 0)
			}
			open
			func type_() -> Type_Context? {
				return getRuleContext(Type_Context.self, 0)
			}
			open
			func typeParameters() -> TypeParametersContext? {
				return getRuleContext(TypeParametersContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_typeDef
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterTypeDef(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitTypeDef(self)
			}
		}
	}
	@discardableResult
	 open func typeDef() throws -> TypeDefContext {
		var _localctx: TypeDefContext
		_localctx = TypeDefContext(_ctx, getState())
		try enterRule(_localctx, 26, GoParser.RULE_typeDef)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(319)
		 	try match(GoParser.Tokens.IDENTIFIER.rawValue)
		 	setState(321)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,16,_ctx)) {
		 	case 1:
		 		setState(320)
		 		try typeParameters()

		 		break
		 	default: break
		 	}
		 	setState(323)
		 	try type_()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TypeParametersContext: ParserRuleContext {
			open
			func L_BRACKET() -> TerminalNode? {
				return getToken(GoParser.Tokens.L_BRACKET.rawValue, 0)
			}
			open
			func typeParameterDecl() -> [TypeParameterDeclContext] {
				return getRuleContexts(TypeParameterDeclContext.self)
			}
			open
			func typeParameterDecl(_ i: Int) -> TypeParameterDeclContext? {
				return getRuleContext(TypeParameterDeclContext.self, i)
			}
			open
			func R_BRACKET() -> TerminalNode? {
				return getToken(GoParser.Tokens.R_BRACKET.rawValue, 0)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(GoParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(GoParser.Tokens.COMMA.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_typeParameters
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterTypeParameters(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitTypeParameters(self)
			}
		}
	}
	@discardableResult
	 open func typeParameters() throws -> TypeParametersContext {
		var _localctx: TypeParametersContext
		_localctx = TypeParametersContext(_ctx, getState())
		try enterRule(_localctx, 28, GoParser.RULE_typeParameters)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(325)
		 	try match(GoParser.Tokens.L_BRACKET.rawValue)
		 	setState(326)
		 	try typeParameterDecl()
		 	setState(331)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == GoParser.Tokens.COMMA.rawValue) {
		 		setState(327)
		 		try match(GoParser.Tokens.COMMA.rawValue)
		 		setState(328)
		 		try typeParameterDecl()


		 		setState(333)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(334)
		 	try match(GoParser.Tokens.R_BRACKET.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TypeParameterDeclContext: ParserRuleContext {
			open
			func identifierList() -> IdentifierListContext? {
				return getRuleContext(IdentifierListContext.self, 0)
			}
			open
			func typeElement() -> TypeElementContext? {
				return getRuleContext(TypeElementContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_typeParameterDecl
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterTypeParameterDecl(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitTypeParameterDecl(self)
			}
		}
	}
	@discardableResult
	 open func typeParameterDecl() throws -> TypeParameterDeclContext {
		var _localctx: TypeParameterDeclContext
		_localctx = TypeParameterDeclContext(_ctx, getState())
		try enterRule(_localctx, 30, GoParser.RULE_typeParameterDecl)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(336)
		 	try identifierList()
		 	setState(337)
		 	try typeElement()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TypeElementContext: ParserRuleContext {
			open
			func typeTerm() -> [TypeTermContext] {
				return getRuleContexts(TypeTermContext.self)
			}
			open
			func typeTerm(_ i: Int) -> TypeTermContext? {
				return getRuleContext(TypeTermContext.self, i)
			}
			open
			func OR() -> [TerminalNode] {
				return getTokens(GoParser.Tokens.OR.rawValue)
			}
			open
			func OR(_ i:Int) -> TerminalNode? {
				return getToken(GoParser.Tokens.OR.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_typeElement
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterTypeElement(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitTypeElement(self)
			}
		}
	}
	@discardableResult
	 open func typeElement() throws -> TypeElementContext {
		var _localctx: TypeElementContext
		_localctx = TypeElementContext(_ctx, getState())
		try enterRule(_localctx, 32, GoParser.RULE_typeElement)
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	try enterOuterAlt(_localctx, 1)
		 	setState(339)
		 	try typeTerm()
		 	setState(344)
		 	try _errHandler.sync(self)
		 	_alt = try getInterpreter().adaptivePredict(_input,18,_ctx)
		 	while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
		 		if ( _alt==1 ) {
		 			setState(340)
		 			try match(GoParser.Tokens.OR.rawValue)
		 			setState(341)
		 			try typeTerm()

		 	 
		 		}
		 		setState(346)
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,18,_ctx)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TypeTermContext: ParserRuleContext {
			open
			func type_() -> Type_Context? {
				return getRuleContext(Type_Context.self, 0)
			}
			open
			func UNDERLYING() -> TerminalNode? {
				return getToken(GoParser.Tokens.UNDERLYING.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_typeTerm
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterTypeTerm(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitTypeTerm(self)
			}
		}
	}
	@discardableResult
	 open func typeTerm() throws -> TypeTermContext {
		var _localctx: TypeTermContext
		_localctx = TypeTermContext(_ctx, getState())
		try enterRule(_localctx, 34, GoParser.RULE_typeTerm)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(348)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (_la == GoParser.Tokens.UNDERLYING.rawValue) {
		 		setState(347)
		 		try match(GoParser.Tokens.UNDERLYING.rawValue)

		 	}

		 	setState(350)
		 	try type_()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FunctionDeclContext: ParserRuleContext {
			open
			func FUNC() -> TerminalNode? {
				return getToken(GoParser.Tokens.FUNC.rawValue, 0)
			}
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(GoParser.Tokens.IDENTIFIER.rawValue, 0)
			}
			open
			func signature() -> SignatureContext? {
				return getRuleContext(SignatureContext.self, 0)
			}
			open
			func typeParameters() -> TypeParametersContext? {
				return getRuleContext(TypeParametersContext.self, 0)
			}
			open
			func block() -> BlockContext? {
				return getRuleContext(BlockContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_functionDecl
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterFunctionDecl(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitFunctionDecl(self)
			}
		}
	}
	@discardableResult
	 open func functionDecl() throws -> FunctionDeclContext {
		var _localctx: FunctionDeclContext
		_localctx = FunctionDeclContext(_ctx, getState())
		try enterRule(_localctx, 36, GoParser.RULE_functionDecl)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(352)
		 	try match(GoParser.Tokens.FUNC.rawValue)
		 	setState(353)
		 	try match(GoParser.Tokens.IDENTIFIER.rawValue)
		 	setState(355)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (_la == GoParser.Tokens.L_BRACKET.rawValue) {
		 		setState(354)
		 		try typeParameters()

		 	}

		 	setState(357)
		 	try signature()
		 	setState(359)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,21,_ctx)) {
		 	case 1:
		 		setState(358)
		 		try block()

		 		break
		 	default: break
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class MethodDeclContext: ParserRuleContext {
			open
			func FUNC() -> TerminalNode? {
				return getToken(GoParser.Tokens.FUNC.rawValue, 0)
			}
			open
			func receiver() -> ReceiverContext? {
				return getRuleContext(ReceiverContext.self, 0)
			}
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(GoParser.Tokens.IDENTIFIER.rawValue, 0)
			}
			open
			func signature() -> SignatureContext? {
				return getRuleContext(SignatureContext.self, 0)
			}
			open
			func block() -> BlockContext? {
				return getRuleContext(BlockContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_methodDecl
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterMethodDecl(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitMethodDecl(self)
			}
		}
	}
	@discardableResult
	 open func methodDecl() throws -> MethodDeclContext {
		var _localctx: MethodDeclContext
		_localctx = MethodDeclContext(_ctx, getState())
		try enterRule(_localctx, 38, GoParser.RULE_methodDecl)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(361)
		 	try match(GoParser.Tokens.FUNC.rawValue)
		 	setState(362)
		 	try receiver()
		 	setState(363)
		 	try match(GoParser.Tokens.IDENTIFIER.rawValue)
		 	setState(364)
		 	try signature()
		 	setState(366)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,22,_ctx)) {
		 	case 1:
		 		setState(365)
		 		try block()

		 		break
		 	default: break
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ReceiverContext: ParserRuleContext {
			open
			func parameters() -> ParametersContext? {
				return getRuleContext(ParametersContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_receiver
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterReceiver(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitReceiver(self)
			}
		}
	}
	@discardableResult
	 open func receiver() throws -> ReceiverContext {
		var _localctx: ReceiverContext
		_localctx = ReceiverContext(_ctx, getState())
		try enterRule(_localctx, 40, GoParser.RULE_receiver)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(368)
		 	try parameters()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class VarDeclContext: ParserRuleContext {
			open
			func VAR() -> TerminalNode? {
				return getToken(GoParser.Tokens.VAR.rawValue, 0)
			}
			open
			func varSpec() -> [VarSpecContext] {
				return getRuleContexts(VarSpecContext.self)
			}
			open
			func varSpec(_ i: Int) -> VarSpecContext? {
				return getRuleContext(VarSpecContext.self, i)
			}
			open
			func L_PAREN() -> TerminalNode? {
				return getToken(GoParser.Tokens.L_PAREN.rawValue, 0)
			}
			open
			func R_PAREN() -> TerminalNode? {
				return getToken(GoParser.Tokens.R_PAREN.rawValue, 0)
			}
			open
			func eos() -> [EosContext] {
				return getRuleContexts(EosContext.self)
			}
			open
			func eos(_ i: Int) -> EosContext? {
				return getRuleContext(EosContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_varDecl
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterVarDecl(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitVarDecl(self)
			}
		}
	}
	@discardableResult
	 open func varDecl() throws -> VarDeclContext {
		var _localctx: VarDeclContext
		_localctx = VarDeclContext(_ctx, getState())
		try enterRule(_localctx, 42, GoParser.RULE_varDecl)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(370)
		 	try match(GoParser.Tokens.VAR.rawValue)
		 	setState(382)
		 	try _errHandler.sync(self)
		 	switch (GoParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .IDENTIFIER:
		 		setState(371)
		 		try varSpec()

		 		break

		 	case .L_PAREN:
		 		setState(372)
		 		try match(GoParser.Tokens.L_PAREN.rawValue)
		 		setState(378)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (_la == GoParser.Tokens.IDENTIFIER.rawValue) {
		 			setState(373)
		 			try varSpec()
		 			setState(374)
		 			try eos()


		 			setState(380)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}
		 		setState(381)
		 		try match(GoParser.Tokens.R_PAREN.rawValue)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class VarSpecContext: ParserRuleContext {
			open
			func identifierList() -> IdentifierListContext? {
				return getRuleContext(IdentifierListContext.self, 0)
			}
			open
			func type_() -> Type_Context? {
				return getRuleContext(Type_Context.self, 0)
			}
			open
			func ASSIGN() -> TerminalNode? {
				return getToken(GoParser.Tokens.ASSIGN.rawValue, 0)
			}
			open
			func expressionList() -> ExpressionListContext? {
				return getRuleContext(ExpressionListContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_varSpec
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterVarSpec(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitVarSpec(self)
			}
		}
	}
	@discardableResult
	 open func varSpec() throws -> VarSpecContext {
		var _localctx: VarSpecContext
		_localctx = VarSpecContext(_ctx, getState())
		try enterRule(_localctx, 44, GoParser.RULE_varSpec)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(384)
		 	try identifierList()
		 	setState(392)
		 	try _errHandler.sync(self)
		 	switch (GoParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .FUNC:fallthrough
		 	case .INTERFACE:fallthrough
		 	case .MAP:fallthrough
		 	case .STRUCT:fallthrough
		 	case .CHAN:fallthrough
		 	case .IDENTIFIER:fallthrough
		 	case .L_PAREN:fallthrough
		 	case .L_BRACKET:fallthrough
		 	case .STAR:fallthrough
		 	case .RECEIVE:
		 		setState(385)
		 		try type_()
		 		setState(388)
		 		try _errHandler.sync(self)
		 		switch (try getInterpreter().adaptivePredict(_input,25,_ctx)) {
		 		case 1:
		 			setState(386)
		 			try match(GoParser.Tokens.ASSIGN.rawValue)
		 			setState(387)
		 			try expressionList()

		 			break
		 		default: break
		 		}

		 		break

		 	case .ASSIGN:
		 		setState(390)
		 		try match(GoParser.Tokens.ASSIGN.rawValue)
		 		setState(391)
		 		try expressionList()

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class BlockContext: ParserRuleContext {
			open
			func L_CURLY() -> TerminalNode? {
				return getToken(GoParser.Tokens.L_CURLY.rawValue, 0)
			}
			open
			func R_CURLY() -> TerminalNode? {
				return getToken(GoParser.Tokens.R_CURLY.rawValue, 0)
			}
			open
			func statementList() -> StatementListContext? {
				return getRuleContext(StatementListContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_block
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterBlock(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitBlock(self)
			}
		}
	}
	@discardableResult
	 open func block() throws -> BlockContext {
		var _localctx: BlockContext
		_localctx = BlockContext(_ctx, getState())
		try enterRule(_localctx, 46, GoParser.RULE_block)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(394)
		 	try match(GoParser.Tokens.L_CURLY.rawValue)
		 	setState(396)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,27,_ctx)) {
		 	case 1:
		 		setState(395)
		 		try statementList()

		 		break
		 	default: break
		 	}
		 	setState(398)
		 	try match(GoParser.Tokens.R_CURLY.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class StatementListContext: ParserRuleContext {
			open
			func statement() -> [StatementContext] {
				return getRuleContexts(StatementContext.self)
			}
			open
			func statement(_ i: Int) -> StatementContext? {
				return getRuleContext(StatementContext.self, i)
			}
			open
			func eos() -> [EosContext] {
				return getRuleContexts(EosContext.self)
			}
			open
			func eos(_ i: Int) -> EosContext? {
				return getRuleContext(EosContext.self, i)
			}
			open
			func SEMI() -> [TerminalNode] {
				return getTokens(GoParser.Tokens.SEMI.rawValue)
			}
			open
			func SEMI(_ i:Int) -> TerminalNode? {
				return getToken(GoParser.Tokens.SEMI.rawValue, i)
			}
			open
			func EOS() -> [TerminalNode] {
				return getTokens(GoParser.Tokens.EOS.rawValue)
			}
			open
			func EOS(_ i:Int) -> TerminalNode? {
				return getToken(GoParser.Tokens.EOS.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_statementList
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterStatementList(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitStatementList(self)
			}
		}
	}
	@discardableResult
	 open func statementList() throws -> StatementListContext {
		var _localctx: StatementListContext
		_localctx = StatementListContext(_ctx, getState())
		try enterRule(_localctx, 48, GoParser.RULE_statementList)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	try enterOuterAlt(_localctx, 1)
		 	setState(412); 
		 	try _errHandler.sync(self)
		 	_alt = 1;
		 	repeat {
		 		switch (_alt) {
		 		case 1:
		 			setState(407)
		 			try _errHandler.sync(self)
		 			switch(try getInterpreter().adaptivePredict(_input,30, _ctx)) {
		 			case 1:
		 				setState(401)
		 				try _errHandler.sync(self)
		 				_la = try _input.LA(1)
		 				if (_la == GoParser.Tokens.SEMI.rawValue) {
		 					setState(400)
		 					try match(GoParser.Tokens.SEMI.rawValue)

		 				}


		 				break
		 			case 2:
		 				setState(404)
		 				try _errHandler.sync(self)
		 				_la = try _input.LA(1)
		 				if (_la == GoParser.Tokens.EOS.rawValue) {
		 					setState(403)
		 					try match(GoParser.Tokens.EOS.rawValue)

		 				}


		 				break
		 			case 3:
		 				setState(406)
		 				if (!(closingBracket())) {
		 				    throw ANTLRException.recognition(e:FailedPredicateException(self, "closingBracket()"))
		 				}

		 				break
		 			default: break
		 			}
		 			setState(409)
		 			try statement()
		 			setState(410)
		 			try eos()


		 			break
		 		default:
		 			throw ANTLRException.recognition(e: NoViableAltException(self))
		 		}
		 		setState(414); 
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,31,_ctx)
		 	} while (_alt != 2 && _alt !=  ATN.INVALID_ALT_NUMBER)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class StatementContext: ParserRuleContext {
			open
			func declaration() -> DeclarationContext? {
				return getRuleContext(DeclarationContext.self, 0)
			}
			open
			func labeledStmt() -> LabeledStmtContext? {
				return getRuleContext(LabeledStmtContext.self, 0)
			}
			open
			func simpleStmt() -> SimpleStmtContext? {
				return getRuleContext(SimpleStmtContext.self, 0)
			}
			open
			func goStmt() -> GoStmtContext? {
				return getRuleContext(GoStmtContext.self, 0)
			}
			open
			func returnStmt() -> ReturnStmtContext? {
				return getRuleContext(ReturnStmtContext.self, 0)
			}
			open
			func breakStmt() -> BreakStmtContext? {
				return getRuleContext(BreakStmtContext.self, 0)
			}
			open
			func continueStmt() -> ContinueStmtContext? {
				return getRuleContext(ContinueStmtContext.self, 0)
			}
			open
			func gotoStmt() -> GotoStmtContext? {
				return getRuleContext(GotoStmtContext.self, 0)
			}
			open
			func fallthroughStmt() -> FallthroughStmtContext? {
				return getRuleContext(FallthroughStmtContext.self, 0)
			}
			open
			func block() -> BlockContext? {
				return getRuleContext(BlockContext.self, 0)
			}
			open
			func ifStmt() -> IfStmtContext? {
				return getRuleContext(IfStmtContext.self, 0)
			}
			open
			func switchStmt() -> SwitchStmtContext? {
				return getRuleContext(SwitchStmtContext.self, 0)
			}
			open
			func selectStmt() -> SelectStmtContext? {
				return getRuleContext(SelectStmtContext.self, 0)
			}
			open
			func forStmt() -> ForStmtContext? {
				return getRuleContext(ForStmtContext.self, 0)
			}
			open
			func deferStmt() -> DeferStmtContext? {
				return getRuleContext(DeferStmtContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_statement
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterStatement(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitStatement(self)
			}
		}
	}
	@discardableResult
	 open func statement() throws -> StatementContext {
		var _localctx: StatementContext
		_localctx = StatementContext(_ctx, getState())
		try enterRule(_localctx, 50, GoParser.RULE_statement)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(431)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,32, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(416)
		 		try declaration()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(417)
		 		try labeledStmt()

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(418)
		 		try simpleStmt()

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(419)
		 		try goStmt()

		 		break
		 	case 5:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(420)
		 		try returnStmt()

		 		break
		 	case 6:
		 		try enterOuterAlt(_localctx, 6)
		 		setState(421)
		 		try breakStmt()

		 		break
		 	case 7:
		 		try enterOuterAlt(_localctx, 7)
		 		setState(422)
		 		try continueStmt()

		 		break
		 	case 8:
		 		try enterOuterAlt(_localctx, 8)
		 		setState(423)
		 		try gotoStmt()

		 		break
		 	case 9:
		 		try enterOuterAlt(_localctx, 9)
		 		setState(424)
		 		try fallthroughStmt()

		 		break
		 	case 10:
		 		try enterOuterAlt(_localctx, 10)
		 		setState(425)
		 		try block()

		 		break
		 	case 11:
		 		try enterOuterAlt(_localctx, 11)
		 		setState(426)
		 		try ifStmt()

		 		break
		 	case 12:
		 		try enterOuterAlt(_localctx, 12)
		 		setState(427)
		 		try switchStmt()

		 		break
		 	case 13:
		 		try enterOuterAlt(_localctx, 13)
		 		setState(428)
		 		try selectStmt()

		 		break
		 	case 14:
		 		try enterOuterAlt(_localctx, 14)
		 		setState(429)
		 		try forStmt()

		 		break
		 	case 15:
		 		try enterOuterAlt(_localctx, 15)
		 		setState(430)
		 		try deferStmt()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class SimpleStmtContext: ParserRuleContext {
			open
			func sendStmt() -> SendStmtContext? {
				return getRuleContext(SendStmtContext.self, 0)
			}
			open
			func incDecStmt() -> IncDecStmtContext? {
				return getRuleContext(IncDecStmtContext.self, 0)
			}
			open
			func assignment() -> AssignmentContext? {
				return getRuleContext(AssignmentContext.self, 0)
			}
			open
			func expressionStmt() -> ExpressionStmtContext? {
				return getRuleContext(ExpressionStmtContext.self, 0)
			}
			open
			func shortVarDecl() -> ShortVarDeclContext? {
				return getRuleContext(ShortVarDeclContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_simpleStmt
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterSimpleStmt(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitSimpleStmt(self)
			}
		}
	}
	@discardableResult
	 open func simpleStmt() throws -> SimpleStmtContext {
		var _localctx: SimpleStmtContext
		_localctx = SimpleStmtContext(_ctx, getState())
		try enterRule(_localctx, 52, GoParser.RULE_simpleStmt)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(438)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,33, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(433)
		 		try sendStmt()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(434)
		 		try incDecStmt()

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(435)
		 		try assignment()

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(436)
		 		try expressionStmt()

		 		break
		 	case 5:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(437)
		 		try shortVarDecl()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ExpressionStmtContext: ParserRuleContext {
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_expressionStmt
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterExpressionStmt(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitExpressionStmt(self)
			}
		}
	}
	@discardableResult
	 open func expressionStmt() throws -> ExpressionStmtContext {
		var _localctx: ExpressionStmtContext
		_localctx = ExpressionStmtContext(_ctx, getState())
		try enterRule(_localctx, 54, GoParser.RULE_expressionStmt)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(440)
		 	try expression(0)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class SendStmtContext: ParserRuleContext {
		open var channel: ExpressionContext!
			open
			func RECEIVE() -> TerminalNode? {
				return getToken(GoParser.Tokens.RECEIVE.rawValue, 0)
			}
			open
			func expression() -> [ExpressionContext] {
				return getRuleContexts(ExpressionContext.self)
			}
			open
			func expression(_ i: Int) -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_sendStmt
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterSendStmt(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitSendStmt(self)
			}
		}
	}
	@discardableResult
	 open func sendStmt() throws -> SendStmtContext {
		var _localctx: SendStmtContext
		_localctx = SendStmtContext(_ctx, getState())
		try enterRule(_localctx, 56, GoParser.RULE_sendStmt)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(442)
		 	try {
		 			let assignmentValue = try expression(0)
		 			_localctx.castdown(SendStmtContext.self).channel = assignmentValue
		 	     }()

		 	setState(443)
		 	try match(GoParser.Tokens.RECEIVE.rawValue)
		 	setState(444)
		 	try expression(0)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class IncDecStmtContext: ParserRuleContext {
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
			open
			func PLUS_PLUS() -> TerminalNode? {
				return getToken(GoParser.Tokens.PLUS_PLUS.rawValue, 0)
			}
			open
			func MINUS_MINUS() -> TerminalNode? {
				return getToken(GoParser.Tokens.MINUS_MINUS.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_incDecStmt
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterIncDecStmt(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitIncDecStmt(self)
			}
		}
	}
	@discardableResult
	 open func incDecStmt() throws -> IncDecStmtContext {
		var _localctx: IncDecStmtContext
		_localctx = IncDecStmtContext(_ctx, getState())
		try enterRule(_localctx, 58, GoParser.RULE_incDecStmt)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(446)
		 	try expression(0)
		 	setState(447)
		 	_la = try _input.LA(1)
		 	if (!(_la == GoParser.Tokens.PLUS_PLUS.rawValue || _la == GoParser.Tokens.MINUS_MINUS.rawValue)) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class AssignmentContext: ParserRuleContext {
			open
			func expressionList() -> [ExpressionListContext] {
				return getRuleContexts(ExpressionListContext.self)
			}
			open
			func expressionList(_ i: Int) -> ExpressionListContext? {
				return getRuleContext(ExpressionListContext.self, i)
			}
			open
			func assign_op() -> Assign_opContext? {
				return getRuleContext(Assign_opContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_assignment
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterAssignment(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitAssignment(self)
			}
		}
	}
	@discardableResult
	 open func assignment() throws -> AssignmentContext {
		var _localctx: AssignmentContext
		_localctx = AssignmentContext(_ctx, getState())
		try enterRule(_localctx, 60, GoParser.RULE_assignment)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(449)
		 	try expressionList()
		 	setState(450)
		 	try assign_op()
		 	setState(451)
		 	try expressionList()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Assign_opContext: ParserRuleContext {
			open
			func ASSIGN() -> TerminalNode? {
				return getToken(GoParser.Tokens.ASSIGN.rawValue, 0)
			}
			open
			func PLUS() -> TerminalNode? {
				return getToken(GoParser.Tokens.PLUS.rawValue, 0)
			}
			open
			func MINUS() -> TerminalNode? {
				return getToken(GoParser.Tokens.MINUS.rawValue, 0)
			}
			open
			func OR() -> TerminalNode? {
				return getToken(GoParser.Tokens.OR.rawValue, 0)
			}
			open
			func CARET() -> TerminalNode? {
				return getToken(GoParser.Tokens.CARET.rawValue, 0)
			}
			open
			func STAR() -> TerminalNode? {
				return getToken(GoParser.Tokens.STAR.rawValue, 0)
			}
			open
			func DIV() -> TerminalNode? {
				return getToken(GoParser.Tokens.DIV.rawValue, 0)
			}
			open
			func MOD() -> TerminalNode? {
				return getToken(GoParser.Tokens.MOD.rawValue, 0)
			}
			open
			func LSHIFT() -> TerminalNode? {
				return getToken(GoParser.Tokens.LSHIFT.rawValue, 0)
			}
			open
			func RSHIFT() -> TerminalNode? {
				return getToken(GoParser.Tokens.RSHIFT.rawValue, 0)
			}
			open
			func AMPERSAND() -> TerminalNode? {
				return getToken(GoParser.Tokens.AMPERSAND.rawValue, 0)
			}
			open
			func BIT_CLEAR() -> TerminalNode? {
				return getToken(GoParser.Tokens.BIT_CLEAR.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_assign_op
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterAssign_op(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitAssign_op(self)
			}
		}
	}
	@discardableResult
	 open func assign_op() throws -> Assign_opContext {
		var _localctx: Assign_opContext
		_localctx = Assign_opContext(_ctx, getState())
		try enterRule(_localctx, 62, GoParser.RULE_assign_op)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(454)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & -434597364041252864) != 0)) {
		 		setState(453)
		 		_la = try _input.LA(1)
		 		if (!(((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & -434597364041252864) != 0))) {
		 		try _errHandler.recoverInline(self)
		 		}
		 		else {
		 			_errHandler.reportMatch(self)
		 			try consume()
		 		}

		 	}

		 	setState(456)
		 	try match(GoParser.Tokens.ASSIGN.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ShortVarDeclContext: ParserRuleContext {
			open
			func identifierList() -> IdentifierListContext? {
				return getRuleContext(IdentifierListContext.self, 0)
			}
			open
			func DECLARE_ASSIGN() -> TerminalNode? {
				return getToken(GoParser.Tokens.DECLARE_ASSIGN.rawValue, 0)
			}
			open
			func expressionList() -> ExpressionListContext? {
				return getRuleContext(ExpressionListContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_shortVarDecl
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterShortVarDecl(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitShortVarDecl(self)
			}
		}
	}
	@discardableResult
	 open func shortVarDecl() throws -> ShortVarDeclContext {
		var _localctx: ShortVarDeclContext
		_localctx = ShortVarDeclContext(_ctx, getState())
		try enterRule(_localctx, 64, GoParser.RULE_shortVarDecl)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(458)
		 	try identifierList()
		 	setState(459)
		 	try match(GoParser.Tokens.DECLARE_ASSIGN.rawValue)
		 	setState(460)
		 	try expressionList()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class LabeledStmtContext: ParserRuleContext {
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(GoParser.Tokens.IDENTIFIER.rawValue, 0)
			}
			open
			func COLON() -> TerminalNode? {
				return getToken(GoParser.Tokens.COLON.rawValue, 0)
			}
			open
			func statement() -> StatementContext? {
				return getRuleContext(StatementContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_labeledStmt
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterLabeledStmt(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitLabeledStmt(self)
			}
		}
	}
	@discardableResult
	 open func labeledStmt() throws -> LabeledStmtContext {
		var _localctx: LabeledStmtContext
		_localctx = LabeledStmtContext(_ctx, getState())
		try enterRule(_localctx, 66, GoParser.RULE_labeledStmt)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(462)
		 	try match(GoParser.Tokens.IDENTIFIER.rawValue)
		 	setState(463)
		 	try match(GoParser.Tokens.COLON.rawValue)
		 	setState(465)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,35,_ctx)) {
		 	case 1:
		 		setState(464)
		 		try statement()

		 		break
		 	default: break
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ReturnStmtContext: ParserRuleContext {
			open
			func RETURN() -> TerminalNode? {
				return getToken(GoParser.Tokens.RETURN.rawValue, 0)
			}
			open
			func expressionList() -> ExpressionListContext? {
				return getRuleContext(ExpressionListContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_returnStmt
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterReturnStmt(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitReturnStmt(self)
			}
		}
	}
	@discardableResult
	 open func returnStmt() throws -> ReturnStmtContext {
		var _localctx: ReturnStmtContext
		_localctx = ReturnStmtContext(_ctx, getState())
		try enterRule(_localctx, 68, GoParser.RULE_returnStmt)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(467)
		 	try match(GoParser.Tokens.RETURN.rawValue)
		 	setState(469)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,36,_ctx)) {
		 	case 1:
		 		setState(468)
		 		try expressionList()

		 		break
		 	default: break
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class BreakStmtContext: ParserRuleContext {
			open
			func BREAK() -> TerminalNode? {
				return getToken(GoParser.Tokens.BREAK.rawValue, 0)
			}
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(GoParser.Tokens.IDENTIFIER.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_breakStmt
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterBreakStmt(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitBreakStmt(self)
			}
		}
	}
	@discardableResult
	 open func breakStmt() throws -> BreakStmtContext {
		var _localctx: BreakStmtContext
		_localctx = BreakStmtContext(_ctx, getState())
		try enterRule(_localctx, 70, GoParser.RULE_breakStmt)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(471)
		 	try match(GoParser.Tokens.BREAK.rawValue)
		 	setState(473)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,37,_ctx)) {
		 	case 1:
		 		setState(472)
		 		try match(GoParser.Tokens.IDENTIFIER.rawValue)

		 		break
		 	default: break
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ContinueStmtContext: ParserRuleContext {
			open
			func CONTINUE() -> TerminalNode? {
				return getToken(GoParser.Tokens.CONTINUE.rawValue, 0)
			}
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(GoParser.Tokens.IDENTIFIER.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_continueStmt
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterContinueStmt(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitContinueStmt(self)
			}
		}
	}
	@discardableResult
	 open func continueStmt() throws -> ContinueStmtContext {
		var _localctx: ContinueStmtContext
		_localctx = ContinueStmtContext(_ctx, getState())
		try enterRule(_localctx, 72, GoParser.RULE_continueStmt)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(475)
		 	try match(GoParser.Tokens.CONTINUE.rawValue)
		 	setState(477)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,38,_ctx)) {
		 	case 1:
		 		setState(476)
		 		try match(GoParser.Tokens.IDENTIFIER.rawValue)

		 		break
		 	default: break
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class GotoStmtContext: ParserRuleContext {
			open
			func GOTO() -> TerminalNode? {
				return getToken(GoParser.Tokens.GOTO.rawValue, 0)
			}
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(GoParser.Tokens.IDENTIFIER.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_gotoStmt
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterGotoStmt(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitGotoStmt(self)
			}
		}
	}
	@discardableResult
	 open func gotoStmt() throws -> GotoStmtContext {
		var _localctx: GotoStmtContext
		_localctx = GotoStmtContext(_ctx, getState())
		try enterRule(_localctx, 74, GoParser.RULE_gotoStmt)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(479)
		 	try match(GoParser.Tokens.GOTO.rawValue)
		 	setState(480)
		 	try match(GoParser.Tokens.IDENTIFIER.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FallthroughStmtContext: ParserRuleContext {
			open
			func FALLTHROUGH() -> TerminalNode? {
				return getToken(GoParser.Tokens.FALLTHROUGH.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_fallthroughStmt
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterFallthroughStmt(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitFallthroughStmt(self)
			}
		}
	}
	@discardableResult
	 open func fallthroughStmt() throws -> FallthroughStmtContext {
		var _localctx: FallthroughStmtContext
		_localctx = FallthroughStmtContext(_ctx, getState())
		try enterRule(_localctx, 76, GoParser.RULE_fallthroughStmt)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(482)
		 	try match(GoParser.Tokens.FALLTHROUGH.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class DeferStmtContext: ParserRuleContext {
			open
			func DEFER() -> TerminalNode? {
				return getToken(GoParser.Tokens.DEFER.rawValue, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_deferStmt
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterDeferStmt(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitDeferStmt(self)
			}
		}
	}
	@discardableResult
	 open func deferStmt() throws -> DeferStmtContext {
		var _localctx: DeferStmtContext
		_localctx = DeferStmtContext(_ctx, getState())
		try enterRule(_localctx, 78, GoParser.RULE_deferStmt)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(484)
		 	try match(GoParser.Tokens.DEFER.rawValue)
		 	setState(485)
		 	try expression(0)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class IfStmtContext: ParserRuleContext {
			open
			func IF() -> TerminalNode? {
				return getToken(GoParser.Tokens.IF.rawValue, 0)
			}
			open
			func block() -> [BlockContext] {
				return getRuleContexts(BlockContext.self)
			}
			open
			func block(_ i: Int) -> BlockContext? {
				return getRuleContext(BlockContext.self, i)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
			open
			func eos() -> EosContext? {
				return getRuleContext(EosContext.self, 0)
			}
			open
			func simpleStmt() -> SimpleStmtContext? {
				return getRuleContext(SimpleStmtContext.self, 0)
			}
			open
			func ELSE() -> TerminalNode? {
				return getToken(GoParser.Tokens.ELSE.rawValue, 0)
			}
			open
			func ifStmt() -> IfStmtContext? {
				return getRuleContext(IfStmtContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_ifStmt
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterIfStmt(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitIfStmt(self)
			}
		}
	}
	@discardableResult
	 open func ifStmt() throws -> IfStmtContext {
		var _localctx: IfStmtContext
		_localctx = IfStmtContext(_ctx, getState())
		try enterRule(_localctx, 80, GoParser.RULE_ifStmt)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(487)
		 	try match(GoParser.Tokens.IF.rawValue)
		 	setState(496)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,39, _ctx)) {
		 	case 1:
		 		setState(488)
		 		try expression(0)

		 		break
		 	case 2:
		 		setState(489)
		 		try eos()
		 		setState(490)
		 		try expression(0)

		 		break
		 	case 3:
		 		setState(492)
		 		try simpleStmt()
		 		setState(493)
		 		try eos()
		 		setState(494)
		 		try expression(0)

		 		break
		 	default: break
		 	}
		 	setState(498)
		 	try block()
		 	setState(504)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,41,_ctx)) {
		 	case 1:
		 		setState(499)
		 		try match(GoParser.Tokens.ELSE.rawValue)
		 		setState(502)
		 		try _errHandler.sync(self)
		 		switch (GoParser.Tokens(rawValue: try _input.LA(1))!) {
		 		case .IF:
		 			setState(500)
		 			try ifStmt()

		 			break

		 		case .L_CURLY:
		 			setState(501)
		 			try block()

		 			break
		 		default:
		 			throw ANTLRException.recognition(e: NoViableAltException(self))
		 		}

		 		break
		 	default: break
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class SwitchStmtContext: ParserRuleContext {
			open
			func exprSwitchStmt() -> ExprSwitchStmtContext? {
				return getRuleContext(ExprSwitchStmtContext.self, 0)
			}
			open
			func typeSwitchStmt() -> TypeSwitchStmtContext? {
				return getRuleContext(TypeSwitchStmtContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_switchStmt
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterSwitchStmt(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitSwitchStmt(self)
			}
		}
	}
	@discardableResult
	 open func switchStmt() throws -> SwitchStmtContext {
		var _localctx: SwitchStmtContext
		_localctx = SwitchStmtContext(_ctx, getState())
		try enterRule(_localctx, 82, GoParser.RULE_switchStmt)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(508)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,42, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(506)
		 		try exprSwitchStmt()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(507)
		 		try typeSwitchStmt()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ExprSwitchStmtContext: ParserRuleContext {
			open
			func SWITCH() -> TerminalNode? {
				return getToken(GoParser.Tokens.SWITCH.rawValue, 0)
			}
			open
			func L_CURLY() -> TerminalNode? {
				return getToken(GoParser.Tokens.L_CURLY.rawValue, 0)
			}
			open
			func R_CURLY() -> TerminalNode? {
				return getToken(GoParser.Tokens.R_CURLY.rawValue, 0)
			}
			open
			func eos() -> EosContext? {
				return getRuleContext(EosContext.self, 0)
			}
			open
			func exprCaseClause() -> [ExprCaseClauseContext] {
				return getRuleContexts(ExprCaseClauseContext.self)
			}
			open
			func exprCaseClause(_ i: Int) -> ExprCaseClauseContext? {
				return getRuleContext(ExprCaseClauseContext.self, i)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
			open
			func simpleStmt() -> SimpleStmtContext? {
				return getRuleContext(SimpleStmtContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_exprSwitchStmt
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterExprSwitchStmt(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitExprSwitchStmt(self)
			}
		}
	}
	@discardableResult
	 open func exprSwitchStmt() throws -> ExprSwitchStmtContext {
		var _localctx: ExprSwitchStmtContext
		_localctx = ExprSwitchStmtContext(_ctx, getState())
		try enterRule(_localctx, 84, GoParser.RULE_exprSwitchStmt)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(510)
		 	try match(GoParser.Tokens.SWITCH.rawValue)
		 	setState(521)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,46, _ctx)) {
		 	case 1:
		 		setState(512)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & -288230371386978792) != 0) || ((Int64((_la - 64)) & ~0x3f) == 0 && ((Int64(1) << (_la - 64)) & 99135) != 0)) {
		 			setState(511)
		 			try expression(0)

		 		}


		 		break
		 	case 2:
		 		setState(515)
		 		try _errHandler.sync(self)
		 		switch (try getInterpreter().adaptivePredict(_input,44,_ctx)) {
		 		case 1:
		 			setState(514)
		 			try simpleStmt()

		 			break
		 		default: break
		 		}
		 		setState(517)
		 		try eos()
		 		setState(519)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & -288230371386978792) != 0) || ((Int64((_la - 64)) & ~0x3f) == 0 && ((Int64(1) << (_la - 64)) & 99135) != 0)) {
		 			setState(518)
		 			try expression(0)

		 		}


		 		break
		 	default: break
		 	}
		 	setState(523)
		 	try match(GoParser.Tokens.L_CURLY.rawValue)
		 	setState(527)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == GoParser.Tokens.DEFAULT.rawValue || _la == GoParser.Tokens.CASE.rawValue) {
		 		setState(524)
		 		try exprCaseClause()


		 		setState(529)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(530)
		 	try match(GoParser.Tokens.R_CURLY.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ExprCaseClauseContext: ParserRuleContext {
			open
			func exprSwitchCase() -> ExprSwitchCaseContext? {
				return getRuleContext(ExprSwitchCaseContext.self, 0)
			}
			open
			func COLON() -> TerminalNode? {
				return getToken(GoParser.Tokens.COLON.rawValue, 0)
			}
			open
			func statementList() -> StatementListContext? {
				return getRuleContext(StatementListContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_exprCaseClause
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterExprCaseClause(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitExprCaseClause(self)
			}
		}
	}
	@discardableResult
	 open func exprCaseClause() throws -> ExprCaseClauseContext {
		var _localctx: ExprCaseClauseContext
		_localctx = ExprCaseClauseContext(_ctx, getState())
		try enterRule(_localctx, 86, GoParser.RULE_exprCaseClause)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(532)
		 	try exprSwitchCase()
		 	setState(533)
		 	try match(GoParser.Tokens.COLON.rawValue)
		 	setState(535)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,48,_ctx)) {
		 	case 1:
		 		setState(534)
		 		try statementList()

		 		break
		 	default: break
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ExprSwitchCaseContext: ParserRuleContext {
			open
			func CASE() -> TerminalNode? {
				return getToken(GoParser.Tokens.CASE.rawValue, 0)
			}
			open
			func expressionList() -> ExpressionListContext? {
				return getRuleContext(ExpressionListContext.self, 0)
			}
			open
			func DEFAULT() -> TerminalNode? {
				return getToken(GoParser.Tokens.DEFAULT.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_exprSwitchCase
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterExprSwitchCase(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitExprSwitchCase(self)
			}
		}
	}
	@discardableResult
	 open func exprSwitchCase() throws -> ExprSwitchCaseContext {
		var _localctx: ExprSwitchCaseContext
		_localctx = ExprSwitchCaseContext(_ctx, getState())
		try enterRule(_localctx, 88, GoParser.RULE_exprSwitchCase)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(540)
		 	try _errHandler.sync(self)
		 	switch (GoParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .CASE:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(537)
		 		try match(GoParser.Tokens.CASE.rawValue)
		 		setState(538)
		 		try expressionList()

		 		break

		 	case .DEFAULT:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(539)
		 		try match(GoParser.Tokens.DEFAULT.rawValue)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TypeSwitchStmtContext: ParserRuleContext {
			open
			func SWITCH() -> TerminalNode? {
				return getToken(GoParser.Tokens.SWITCH.rawValue, 0)
			}
			open
			func L_CURLY() -> TerminalNode? {
				return getToken(GoParser.Tokens.L_CURLY.rawValue, 0)
			}
			open
			func R_CURLY() -> TerminalNode? {
				return getToken(GoParser.Tokens.R_CURLY.rawValue, 0)
			}
			open
			func typeSwitchGuard() -> TypeSwitchGuardContext? {
				return getRuleContext(TypeSwitchGuardContext.self, 0)
			}
			open
			func eos() -> EosContext? {
				return getRuleContext(EosContext.self, 0)
			}
			open
			func simpleStmt() -> SimpleStmtContext? {
				return getRuleContext(SimpleStmtContext.self, 0)
			}
			open
			func typeCaseClause() -> [TypeCaseClauseContext] {
				return getRuleContexts(TypeCaseClauseContext.self)
			}
			open
			func typeCaseClause(_ i: Int) -> TypeCaseClauseContext? {
				return getRuleContext(TypeCaseClauseContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_typeSwitchStmt
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterTypeSwitchStmt(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitTypeSwitchStmt(self)
			}
		}
	}
	@discardableResult
	 open func typeSwitchStmt() throws -> TypeSwitchStmtContext {
		var _localctx: TypeSwitchStmtContext
		_localctx = TypeSwitchStmtContext(_ctx, getState())
		try enterRule(_localctx, 90, GoParser.RULE_typeSwitchStmt)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(542)
		 	try match(GoParser.Tokens.SWITCH.rawValue)
		 	setState(551)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,50, _ctx)) {
		 	case 1:
		 		setState(543)
		 		try typeSwitchGuard()

		 		break
		 	case 2:
		 		setState(544)
		 		try eos()
		 		setState(545)
		 		try typeSwitchGuard()

		 		break
		 	case 3:
		 		setState(547)
		 		try simpleStmt()
		 		setState(548)
		 		try eos()
		 		setState(549)
		 		try typeSwitchGuard()

		 		break
		 	default: break
		 	}
		 	setState(553)
		 	try match(GoParser.Tokens.L_CURLY.rawValue)
		 	setState(557)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == GoParser.Tokens.DEFAULT.rawValue || _la == GoParser.Tokens.CASE.rawValue) {
		 		setState(554)
		 		try typeCaseClause()


		 		setState(559)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(560)
		 	try match(GoParser.Tokens.R_CURLY.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TypeSwitchGuardContext: ParserRuleContext {
			open
			func primaryExpr() -> PrimaryExprContext? {
				return getRuleContext(PrimaryExprContext.self, 0)
			}
			open
			func DOT() -> TerminalNode? {
				return getToken(GoParser.Tokens.DOT.rawValue, 0)
			}
			open
			func L_PAREN() -> TerminalNode? {
				return getToken(GoParser.Tokens.L_PAREN.rawValue, 0)
			}
			open
			func TYPE() -> TerminalNode? {
				return getToken(GoParser.Tokens.TYPE.rawValue, 0)
			}
			open
			func R_PAREN() -> TerminalNode? {
				return getToken(GoParser.Tokens.R_PAREN.rawValue, 0)
			}
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(GoParser.Tokens.IDENTIFIER.rawValue, 0)
			}
			open
			func DECLARE_ASSIGN() -> TerminalNode? {
				return getToken(GoParser.Tokens.DECLARE_ASSIGN.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_typeSwitchGuard
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterTypeSwitchGuard(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitTypeSwitchGuard(self)
			}
		}
	}
	@discardableResult
	 open func typeSwitchGuard() throws -> TypeSwitchGuardContext {
		var _localctx: TypeSwitchGuardContext
		_localctx = TypeSwitchGuardContext(_ctx, getState())
		try enterRule(_localctx, 92, GoParser.RULE_typeSwitchGuard)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(564)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,52,_ctx)) {
		 	case 1:
		 		setState(562)
		 		try match(GoParser.Tokens.IDENTIFIER.rawValue)
		 		setState(563)
		 		try match(GoParser.Tokens.DECLARE_ASSIGN.rawValue)

		 		break
		 	default: break
		 	}
		 	setState(566)
		 	try primaryExpr(0)
		 	setState(567)
		 	try match(GoParser.Tokens.DOT.rawValue)
		 	setState(568)
		 	try match(GoParser.Tokens.L_PAREN.rawValue)
		 	setState(569)
		 	try match(GoParser.Tokens.TYPE.rawValue)
		 	setState(570)
		 	try match(GoParser.Tokens.R_PAREN.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TypeCaseClauseContext: ParserRuleContext {
			open
			func typeSwitchCase() -> TypeSwitchCaseContext? {
				return getRuleContext(TypeSwitchCaseContext.self, 0)
			}
			open
			func COLON() -> TerminalNode? {
				return getToken(GoParser.Tokens.COLON.rawValue, 0)
			}
			open
			func statementList() -> StatementListContext? {
				return getRuleContext(StatementListContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_typeCaseClause
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterTypeCaseClause(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitTypeCaseClause(self)
			}
		}
	}
	@discardableResult
	 open func typeCaseClause() throws -> TypeCaseClauseContext {
		var _localctx: TypeCaseClauseContext
		_localctx = TypeCaseClauseContext(_ctx, getState())
		try enterRule(_localctx, 94, GoParser.RULE_typeCaseClause)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(572)
		 	try typeSwitchCase()
		 	setState(573)
		 	try match(GoParser.Tokens.COLON.rawValue)
		 	setState(575)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,53,_ctx)) {
		 	case 1:
		 		setState(574)
		 		try statementList()

		 		break
		 	default: break
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TypeSwitchCaseContext: ParserRuleContext {
			open
			func CASE() -> TerminalNode? {
				return getToken(GoParser.Tokens.CASE.rawValue, 0)
			}
			open
			func typeList() -> TypeListContext? {
				return getRuleContext(TypeListContext.self, 0)
			}
			open
			func DEFAULT() -> TerminalNode? {
				return getToken(GoParser.Tokens.DEFAULT.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_typeSwitchCase
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterTypeSwitchCase(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitTypeSwitchCase(self)
			}
		}
	}
	@discardableResult
	 open func typeSwitchCase() throws -> TypeSwitchCaseContext {
		var _localctx: TypeSwitchCaseContext
		_localctx = TypeSwitchCaseContext(_ctx, getState())
		try enterRule(_localctx, 96, GoParser.RULE_typeSwitchCase)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(580)
		 	try _errHandler.sync(self)
		 	switch (GoParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .CASE:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(577)
		 		try match(GoParser.Tokens.CASE.rawValue)
		 		setState(578)
		 		try typeList()

		 		break

		 	case .DEFAULT:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(579)
		 		try match(GoParser.Tokens.DEFAULT.rawValue)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TypeListContext: ParserRuleContext {
			open
			func type_() -> [Type_Context] {
				return getRuleContexts(Type_Context.self)
			}
			open
			func type_(_ i: Int) -> Type_Context? {
				return getRuleContext(Type_Context.self, i)
			}
			open
			func NIL_LIT() -> [TerminalNode] {
				return getTokens(GoParser.Tokens.NIL_LIT.rawValue)
			}
			open
			func NIL_LIT(_ i:Int) -> TerminalNode? {
				return getToken(GoParser.Tokens.NIL_LIT.rawValue, i)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(GoParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(GoParser.Tokens.COMMA.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_typeList
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterTypeList(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitTypeList(self)
			}
		}
	}
	@discardableResult
	 open func typeList() throws -> TypeListContext {
		var _localctx: TypeListContext
		_localctx = TypeListContext(_ctx, getState())
		try enterRule(_localctx, 98, GoParser.RULE_typeList)
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	try enterOuterAlt(_localctx, 1)
		 	setState(584)
		 	try _errHandler.sync(self)
		 	switch (GoParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .FUNC:fallthrough
		 	case .INTERFACE:fallthrough
		 	case .MAP:fallthrough
		 	case .STRUCT:fallthrough
		 	case .CHAN:fallthrough
		 	case .IDENTIFIER:fallthrough
		 	case .L_PAREN:fallthrough
		 	case .L_BRACKET:fallthrough
		 	case .STAR:fallthrough
		 	case .RECEIVE:
		 		setState(582)
		 		try type_()

		 		break

		 	case .NIL_LIT:
		 		setState(583)
		 		try match(GoParser.Tokens.NIL_LIT.rawValue)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		 	setState(593)
		 	try _errHandler.sync(self)
		 	_alt = try getInterpreter().adaptivePredict(_input,57,_ctx)
		 	while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
		 		if ( _alt==1 ) {
		 			setState(586)
		 			try match(GoParser.Tokens.COMMA.rawValue)
		 			setState(589)
		 			try _errHandler.sync(self)
		 			switch (GoParser.Tokens(rawValue: try _input.LA(1))!) {
		 			case .FUNC:fallthrough
		 			case .INTERFACE:fallthrough
		 			case .MAP:fallthrough
		 			case .STRUCT:fallthrough
		 			case .CHAN:fallthrough
		 			case .IDENTIFIER:fallthrough
		 			case .L_PAREN:fallthrough
		 			case .L_BRACKET:fallthrough
		 			case .STAR:fallthrough
		 			case .RECEIVE:
		 				setState(587)
		 				try type_()

		 				break

		 			case .NIL_LIT:
		 				setState(588)
		 				try match(GoParser.Tokens.NIL_LIT.rawValue)

		 				break
		 			default:
		 				throw ANTLRException.recognition(e: NoViableAltException(self))
		 			}

		 	 
		 		}
		 		setState(595)
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,57,_ctx)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class SelectStmtContext: ParserRuleContext {
			open
			func SELECT() -> TerminalNode? {
				return getToken(GoParser.Tokens.SELECT.rawValue, 0)
			}
			open
			func L_CURLY() -> TerminalNode? {
				return getToken(GoParser.Tokens.L_CURLY.rawValue, 0)
			}
			open
			func R_CURLY() -> TerminalNode? {
				return getToken(GoParser.Tokens.R_CURLY.rawValue, 0)
			}
			open
			func commClause() -> [CommClauseContext] {
				return getRuleContexts(CommClauseContext.self)
			}
			open
			func commClause(_ i: Int) -> CommClauseContext? {
				return getRuleContext(CommClauseContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_selectStmt
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterSelectStmt(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitSelectStmt(self)
			}
		}
	}
	@discardableResult
	 open func selectStmt() throws -> SelectStmtContext {
		var _localctx: SelectStmtContext
		_localctx = SelectStmtContext(_ctx, getState())
		try enterRule(_localctx, 100, GoParser.RULE_selectStmt)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(596)
		 	try match(GoParser.Tokens.SELECT.rawValue)
		 	setState(597)
		 	try match(GoParser.Tokens.L_CURLY.rawValue)
		 	setState(601)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == GoParser.Tokens.DEFAULT.rawValue || _la == GoParser.Tokens.CASE.rawValue) {
		 		setState(598)
		 		try commClause()


		 		setState(603)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(604)
		 	try match(GoParser.Tokens.R_CURLY.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class CommClauseContext: ParserRuleContext {
			open
			func commCase() -> CommCaseContext? {
				return getRuleContext(CommCaseContext.self, 0)
			}
			open
			func COLON() -> TerminalNode? {
				return getToken(GoParser.Tokens.COLON.rawValue, 0)
			}
			open
			func statementList() -> StatementListContext? {
				return getRuleContext(StatementListContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_commClause
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterCommClause(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitCommClause(self)
			}
		}
	}
	@discardableResult
	 open func commClause() throws -> CommClauseContext {
		var _localctx: CommClauseContext
		_localctx = CommClauseContext(_ctx, getState())
		try enterRule(_localctx, 102, GoParser.RULE_commClause)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(606)
		 	try commCase()
		 	setState(607)
		 	try match(GoParser.Tokens.COLON.rawValue)
		 	setState(609)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,59,_ctx)) {
		 	case 1:
		 		setState(608)
		 		try statementList()

		 		break
		 	default: break
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class CommCaseContext: ParserRuleContext {
			open
			func CASE() -> TerminalNode? {
				return getToken(GoParser.Tokens.CASE.rawValue, 0)
			}
			open
			func sendStmt() -> SendStmtContext? {
				return getRuleContext(SendStmtContext.self, 0)
			}
			open
			func recvStmt() -> RecvStmtContext? {
				return getRuleContext(RecvStmtContext.self, 0)
			}
			open
			func DEFAULT() -> TerminalNode? {
				return getToken(GoParser.Tokens.DEFAULT.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_commCase
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterCommCase(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitCommCase(self)
			}
		}
	}
	@discardableResult
	 open func commCase() throws -> CommCaseContext {
		var _localctx: CommCaseContext
		_localctx = CommCaseContext(_ctx, getState())
		try enterRule(_localctx, 104, GoParser.RULE_commCase)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(617)
		 	try _errHandler.sync(self)
		 	switch (GoParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .CASE:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(611)
		 		try match(GoParser.Tokens.CASE.rawValue)
		 		setState(614)
		 		try _errHandler.sync(self)
		 		switch(try getInterpreter().adaptivePredict(_input,60, _ctx)) {
		 		case 1:
		 			setState(612)
		 			try sendStmt()

		 			break
		 		case 2:
		 			setState(613)
		 			try recvStmt()

		 			break
		 		default: break
		 		}

		 		break

		 	case .DEFAULT:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(616)
		 		try match(GoParser.Tokens.DEFAULT.rawValue)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class RecvStmtContext: ParserRuleContext {
		open var recvExpr: ExpressionContext!
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
			open
			func expressionList() -> ExpressionListContext? {
				return getRuleContext(ExpressionListContext.self, 0)
			}
			open
			func ASSIGN() -> TerminalNode? {
				return getToken(GoParser.Tokens.ASSIGN.rawValue, 0)
			}
			open
			func identifierList() -> IdentifierListContext? {
				return getRuleContext(IdentifierListContext.self, 0)
			}
			open
			func DECLARE_ASSIGN() -> TerminalNode? {
				return getToken(GoParser.Tokens.DECLARE_ASSIGN.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_recvStmt
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterRecvStmt(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitRecvStmt(self)
			}
		}
	}
	@discardableResult
	 open func recvStmt() throws -> RecvStmtContext {
		var _localctx: RecvStmtContext
		_localctx = RecvStmtContext(_ctx, getState())
		try enterRule(_localctx, 106, GoParser.RULE_recvStmt)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(625)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,62,_ctx)) {
		 	case 1:
		 		setState(619)
		 		try expressionList()
		 		setState(620)
		 		try match(GoParser.Tokens.ASSIGN.rawValue)

		 		break
		 	case 2:
		 		setState(622)
		 		try identifierList()
		 		setState(623)
		 		try match(GoParser.Tokens.DECLARE_ASSIGN.rawValue)

		 		break
		 	default: break
		 	}
		 	setState(627)
		 	try {
		 			let assignmentValue = try expression(0)
		 			_localctx.castdown(RecvStmtContext.self).recvExpr = assignmentValue
		 	     }()


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ForStmtContext: ParserRuleContext {
			open
			func FOR() -> TerminalNode? {
				return getToken(GoParser.Tokens.FOR.rawValue, 0)
			}
			open
			func block() -> BlockContext? {
				return getRuleContext(BlockContext.self, 0)
			}
			open
			func forClause() -> ForClauseContext? {
				return getRuleContext(ForClauseContext.self, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
			open
			func rangeClause() -> RangeClauseContext? {
				return getRuleContext(RangeClauseContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_forStmt
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterForStmt(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitForStmt(self)
			}
		}
	}
	@discardableResult
	 open func forStmt() throws -> ForStmtContext {
		var _localctx: ForStmtContext
		_localctx = ForStmtContext(_ctx, getState())
		try enterRule(_localctx, 108, GoParser.RULE_forStmt)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(629)
		 	try match(GoParser.Tokens.FOR.rawValue)
		 	setState(637)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,65, _ctx)) {
		 	case 1:
		 		setState(631)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & -288230371386978792) != 0) || ((Int64((_la - 64)) & ~0x3f) == 0 && ((Int64(1) << (_la - 64)) & 99135) != 0)) {
		 			setState(630)
		 			try expression(0)

		 		}


		 		break
		 	case 2:
		 		setState(633)
		 		try forClause()

		 		break
		 	case 3:
		 		setState(635)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & -288230371386454504) != 0) || ((Int64((_la - 64)) & ~0x3f) == 0 && ((Int64(1) << (_la - 64)) & 99135) != 0)) {
		 			setState(634)
		 			try rangeClause()

		 		}


		 		break
		 	default: break
		 	}
		 	setState(639)
		 	try block()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ForClauseContext: ParserRuleContext {
		open var initStmt: SimpleStmtContext!
		open var postStmt: SimpleStmtContext!
			open
			func eos() -> [EosContext] {
				return getRuleContexts(EosContext.self)
			}
			open
			func eos(_ i: Int) -> EosContext? {
				return getRuleContext(EosContext.self, i)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
			open
			func simpleStmt() -> [SimpleStmtContext] {
				return getRuleContexts(SimpleStmtContext.self)
			}
			open
			func simpleStmt(_ i: Int) -> SimpleStmtContext? {
				return getRuleContext(SimpleStmtContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_forClause
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterForClause(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitForClause(self)
			}
		}
	}
	@discardableResult
	 open func forClause() throws -> ForClauseContext {
		var _localctx: ForClauseContext
		_localctx = ForClauseContext(_ctx, getState())
		try enterRule(_localctx, 110, GoParser.RULE_forClause)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(642)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,66,_ctx)) {
		 	case 1:
		 		setState(641)
		 		try {
		 				let assignmentValue = try simpleStmt()
		 				_localctx.castdown(ForClauseContext.self).initStmt = assignmentValue
		 		     }()


		 		break
		 	default: break
		 	}
		 	setState(644)
		 	try eos()
		 	setState(646)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,67,_ctx)) {
		 	case 1:
		 		setState(645)
		 		try expression(0)

		 		break
		 	default: break
		 	}
		 	setState(648)
		 	try eos()
		 	setState(650)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & -288230371386978792) != 0) || ((Int64((_la - 64)) & ~0x3f) == 0 && ((Int64(1) << (_la - 64)) & 99135) != 0)) {
		 		setState(649)
		 		try {
		 				let assignmentValue = try simpleStmt()
		 				_localctx.castdown(ForClauseContext.self).postStmt = assignmentValue
		 		     }()


		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class RangeClauseContext: ParserRuleContext {
			open
			func RANGE() -> TerminalNode? {
				return getToken(GoParser.Tokens.RANGE.rawValue, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
			open
			func expressionList() -> ExpressionListContext? {
				return getRuleContext(ExpressionListContext.self, 0)
			}
			open
			func ASSIGN() -> TerminalNode? {
				return getToken(GoParser.Tokens.ASSIGN.rawValue, 0)
			}
			open
			func identifierList() -> IdentifierListContext? {
				return getRuleContext(IdentifierListContext.self, 0)
			}
			open
			func DECLARE_ASSIGN() -> TerminalNode? {
				return getToken(GoParser.Tokens.DECLARE_ASSIGN.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_rangeClause
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterRangeClause(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitRangeClause(self)
			}
		}
	}
	@discardableResult
	 open func rangeClause() throws -> RangeClauseContext {
		var _localctx: RangeClauseContext
		_localctx = RangeClauseContext(_ctx, getState())
		try enterRule(_localctx, 112, GoParser.RULE_rangeClause)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(658)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,69,_ctx)) {
		 	case 1:
		 		setState(652)
		 		try expressionList()
		 		setState(653)
		 		try match(GoParser.Tokens.ASSIGN.rawValue)

		 		break
		 	case 2:
		 		setState(655)
		 		try identifierList()
		 		setState(656)
		 		try match(GoParser.Tokens.DECLARE_ASSIGN.rawValue)

		 		break
		 	default: break
		 	}
		 	setState(660)
		 	try match(GoParser.Tokens.RANGE.rawValue)
		 	setState(661)
		 	try expression(0)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class GoStmtContext: ParserRuleContext {
			open
			func GO() -> TerminalNode? {
				return getToken(GoParser.Tokens.GO.rawValue, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_goStmt
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterGoStmt(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitGoStmt(self)
			}
		}
	}
	@discardableResult
	 open func goStmt() throws -> GoStmtContext {
		var _localctx: GoStmtContext
		_localctx = GoStmtContext(_ctx, getState())
		try enterRule(_localctx, 114, GoParser.RULE_goStmt)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(663)
		 	try match(GoParser.Tokens.GO.rawValue)
		 	setState(664)
		 	try expression(0)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Type_Context: ParserRuleContext {
			open
			func typeName() -> TypeNameContext? {
				return getRuleContext(TypeNameContext.self, 0)
			}
			open
			func typeArgs() -> TypeArgsContext? {
				return getRuleContext(TypeArgsContext.self, 0)
			}
			open
			func typeLit() -> TypeLitContext? {
				return getRuleContext(TypeLitContext.self, 0)
			}
			open
			func L_PAREN() -> TerminalNode? {
				return getToken(GoParser.Tokens.L_PAREN.rawValue, 0)
			}
			open
			func type_() -> Type_Context? {
				return getRuleContext(Type_Context.self, 0)
			}
			open
			func R_PAREN() -> TerminalNode? {
				return getToken(GoParser.Tokens.R_PAREN.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_type_
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterType_(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitType_(self)
			}
		}
	}
	@discardableResult
	 open func type_() throws -> Type_Context {
		var _localctx: Type_Context
		_localctx = Type_Context(_ctx, getState())
		try enterRule(_localctx, 116, GoParser.RULE_type_)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(675)
		 	try _errHandler.sync(self)
		 	switch (GoParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .IDENTIFIER:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(666)
		 		try typeName()
		 		setState(668)
		 		try _errHandler.sync(self)
		 		switch (try getInterpreter().adaptivePredict(_input,70,_ctx)) {
		 		case 1:
		 			setState(667)
		 			try typeArgs()

		 			break
		 		default: break
		 		}

		 		break
		 	case .FUNC:fallthrough
		 	case .INTERFACE:fallthrough
		 	case .MAP:fallthrough
		 	case .STRUCT:fallthrough
		 	case .CHAN:fallthrough
		 	case .L_BRACKET:fallthrough
		 	case .STAR:fallthrough
		 	case .RECEIVE:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(670)
		 		try typeLit()

		 		break

		 	case .L_PAREN:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(671)
		 		try match(GoParser.Tokens.L_PAREN.rawValue)
		 		setState(672)
		 		try type_()
		 		setState(673)
		 		try match(GoParser.Tokens.R_PAREN.rawValue)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TypeArgsContext: ParserRuleContext {
			open
			func L_BRACKET() -> TerminalNode? {
				return getToken(GoParser.Tokens.L_BRACKET.rawValue, 0)
			}
			open
			func typeList() -> TypeListContext? {
				return getRuleContext(TypeListContext.self, 0)
			}
			open
			func R_BRACKET() -> TerminalNode? {
				return getToken(GoParser.Tokens.R_BRACKET.rawValue, 0)
			}
			open
			func COMMA() -> TerminalNode? {
				return getToken(GoParser.Tokens.COMMA.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_typeArgs
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterTypeArgs(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitTypeArgs(self)
			}
		}
	}
	@discardableResult
	 open func typeArgs() throws -> TypeArgsContext {
		var _localctx: TypeArgsContext
		_localctx = TypeArgsContext(_ctx, getState())
		try enterRule(_localctx, 118, GoParser.RULE_typeArgs)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(677)
		 	try match(GoParser.Tokens.L_BRACKET.rawValue)
		 	setState(678)
		 	try typeList()
		 	setState(680)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (_la == GoParser.Tokens.COMMA.rawValue) {
		 		setState(679)
		 		try match(GoParser.Tokens.COMMA.rawValue)

		 	}

		 	setState(682)
		 	try match(GoParser.Tokens.R_BRACKET.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TypeNameContext: ParserRuleContext {
			open
			func qualifiedIdent() -> QualifiedIdentContext? {
				return getRuleContext(QualifiedIdentContext.self, 0)
			}
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(GoParser.Tokens.IDENTIFIER.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_typeName
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterTypeName(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitTypeName(self)
			}
		}
	}
	@discardableResult
	 open func typeName() throws -> TypeNameContext {
		var _localctx: TypeNameContext
		_localctx = TypeNameContext(_ctx, getState())
		try enterRule(_localctx, 120, GoParser.RULE_typeName)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(686)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,73, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(684)
		 		try qualifiedIdent()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(685)
		 		try match(GoParser.Tokens.IDENTIFIER.rawValue)

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TypeLitContext: ParserRuleContext {
			open
			func arrayType() -> ArrayTypeContext? {
				return getRuleContext(ArrayTypeContext.self, 0)
			}
			open
			func structType() -> StructTypeContext? {
				return getRuleContext(StructTypeContext.self, 0)
			}
			open
			func pointerType() -> PointerTypeContext? {
				return getRuleContext(PointerTypeContext.self, 0)
			}
			open
			func functionType() -> FunctionTypeContext? {
				return getRuleContext(FunctionTypeContext.self, 0)
			}
			open
			func interfaceType() -> InterfaceTypeContext? {
				return getRuleContext(InterfaceTypeContext.self, 0)
			}
			open
			func sliceType() -> SliceTypeContext? {
				return getRuleContext(SliceTypeContext.self, 0)
			}
			open
			func mapType() -> MapTypeContext? {
				return getRuleContext(MapTypeContext.self, 0)
			}
			open
			func channelType() -> ChannelTypeContext? {
				return getRuleContext(ChannelTypeContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_typeLit
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterTypeLit(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitTypeLit(self)
			}
		}
	}
	@discardableResult
	 open func typeLit() throws -> TypeLitContext {
		var _localctx: TypeLitContext
		_localctx = TypeLitContext(_ctx, getState())
		try enterRule(_localctx, 122, GoParser.RULE_typeLit)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(696)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,74, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(688)
		 		try arrayType()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(689)
		 		try structType()

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(690)
		 		try pointerType()

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(691)
		 		try functionType()

		 		break
		 	case 5:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(692)
		 		try interfaceType()

		 		break
		 	case 6:
		 		try enterOuterAlt(_localctx, 6)
		 		setState(693)
		 		try sliceType()

		 		break
		 	case 7:
		 		try enterOuterAlt(_localctx, 7)
		 		setState(694)
		 		try mapType()

		 		break
		 	case 8:
		 		try enterOuterAlt(_localctx, 8)
		 		setState(695)
		 		try channelType()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ArrayTypeContext: ParserRuleContext {
			open
			func L_BRACKET() -> TerminalNode? {
				return getToken(GoParser.Tokens.L_BRACKET.rawValue, 0)
			}
			open
			func arrayLength() -> ArrayLengthContext? {
				return getRuleContext(ArrayLengthContext.self, 0)
			}
			open
			func R_BRACKET() -> TerminalNode? {
				return getToken(GoParser.Tokens.R_BRACKET.rawValue, 0)
			}
			open
			func elementType() -> ElementTypeContext? {
				return getRuleContext(ElementTypeContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_arrayType
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterArrayType(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitArrayType(self)
			}
		}
	}
	@discardableResult
	 open func arrayType() throws -> ArrayTypeContext {
		var _localctx: ArrayTypeContext
		_localctx = ArrayTypeContext(_ctx, getState())
		try enterRule(_localctx, 124, GoParser.RULE_arrayType)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(698)
		 	try match(GoParser.Tokens.L_BRACKET.rawValue)
		 	setState(699)
		 	try arrayLength()
		 	setState(700)
		 	try match(GoParser.Tokens.R_BRACKET.rawValue)
		 	setState(701)
		 	try elementType()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ArrayLengthContext: ParserRuleContext {
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_arrayLength
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterArrayLength(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitArrayLength(self)
			}
		}
	}
	@discardableResult
	 open func arrayLength() throws -> ArrayLengthContext {
		var _localctx: ArrayLengthContext
		_localctx = ArrayLengthContext(_ctx, getState())
		try enterRule(_localctx, 126, GoParser.RULE_arrayLength)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(703)
		 	try expression(0)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ElementTypeContext: ParserRuleContext {
			open
			func type_() -> Type_Context? {
				return getRuleContext(Type_Context.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_elementType
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterElementType(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitElementType(self)
			}
		}
	}
	@discardableResult
	 open func elementType() throws -> ElementTypeContext {
		var _localctx: ElementTypeContext
		_localctx = ElementTypeContext(_ctx, getState())
		try enterRule(_localctx, 128, GoParser.RULE_elementType)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(705)
		 	try type_()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class PointerTypeContext: ParserRuleContext {
			open
			func STAR() -> TerminalNode? {
				return getToken(GoParser.Tokens.STAR.rawValue, 0)
			}
			open
			func type_() -> Type_Context? {
				return getRuleContext(Type_Context.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_pointerType
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterPointerType(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitPointerType(self)
			}
		}
	}
	@discardableResult
	 open func pointerType() throws -> PointerTypeContext {
		var _localctx: PointerTypeContext
		_localctx = PointerTypeContext(_ctx, getState())
		try enterRule(_localctx, 130, GoParser.RULE_pointerType)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(707)
		 	try match(GoParser.Tokens.STAR.rawValue)
		 	setState(708)
		 	try type_()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class InterfaceTypeContext: ParserRuleContext {
			open
			func INTERFACE() -> TerminalNode? {
				return getToken(GoParser.Tokens.INTERFACE.rawValue, 0)
			}
			open
			func L_CURLY() -> TerminalNode? {
				return getToken(GoParser.Tokens.L_CURLY.rawValue, 0)
			}
			open
			func R_CURLY() -> TerminalNode? {
				return getToken(GoParser.Tokens.R_CURLY.rawValue, 0)
			}
			open
			func eos() -> [EosContext] {
				return getRuleContexts(EosContext.self)
			}
			open
			func eos(_ i: Int) -> EosContext? {
				return getRuleContext(EosContext.self, i)
			}
			open
			func methodSpec() -> [MethodSpecContext] {
				return getRuleContexts(MethodSpecContext.self)
			}
			open
			func methodSpec(_ i: Int) -> MethodSpecContext? {
				return getRuleContext(MethodSpecContext.self, i)
			}
			open
			func typeElement() -> [TypeElementContext] {
				return getRuleContexts(TypeElementContext.self)
			}
			open
			func typeElement(_ i: Int) -> TypeElementContext? {
				return getRuleContext(TypeElementContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_interfaceType
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterInterfaceType(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitInterfaceType(self)
			}
		}
	}
	@discardableResult
	 open func interfaceType() throws -> InterfaceTypeContext {
		var _localctx: InterfaceTypeContext
		_localctx = InterfaceTypeContext(_ctx, getState())
		try enterRule(_localctx, 132, GoParser.RULE_interfaceType)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(710)
		 	try match(GoParser.Tokens.INTERFACE.rawValue)
		 	setState(711)
		 	try match(GoParser.Tokens.L_CURLY.rawValue)
		 	setState(720)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (((Int64((_la - 3)) & ~0x3f) == 0 && ((Int64(1) << (_la - 3)) & 2900318160613802435) != 0)) {
		 		setState(714)
		 		try _errHandler.sync(self)
		 		switch(try getInterpreter().adaptivePredict(_input,75, _ctx)) {
		 		case 1:
		 			setState(712)
		 			try methodSpec()

		 			break
		 		case 2:
		 			setState(713)
		 			try typeElement()

		 			break
		 		default: break
		 		}
		 		setState(716)
		 		try eos()


		 		setState(722)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(723)
		 	try match(GoParser.Tokens.R_CURLY.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class SliceTypeContext: ParserRuleContext {
			open
			func L_BRACKET() -> TerminalNode? {
				return getToken(GoParser.Tokens.L_BRACKET.rawValue, 0)
			}
			open
			func R_BRACKET() -> TerminalNode? {
				return getToken(GoParser.Tokens.R_BRACKET.rawValue, 0)
			}
			open
			func elementType() -> ElementTypeContext? {
				return getRuleContext(ElementTypeContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_sliceType
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterSliceType(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitSliceType(self)
			}
		}
	}
	@discardableResult
	 open func sliceType() throws -> SliceTypeContext {
		var _localctx: SliceTypeContext
		_localctx = SliceTypeContext(_ctx, getState())
		try enterRule(_localctx, 134, GoParser.RULE_sliceType)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(725)
		 	try match(GoParser.Tokens.L_BRACKET.rawValue)
		 	setState(726)
		 	try match(GoParser.Tokens.R_BRACKET.rawValue)
		 	setState(727)
		 	try elementType()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class MapTypeContext: ParserRuleContext {
			open
			func MAP() -> TerminalNode? {
				return getToken(GoParser.Tokens.MAP.rawValue, 0)
			}
			open
			func L_BRACKET() -> TerminalNode? {
				return getToken(GoParser.Tokens.L_BRACKET.rawValue, 0)
			}
			open
			func type_() -> Type_Context? {
				return getRuleContext(Type_Context.self, 0)
			}
			open
			func R_BRACKET() -> TerminalNode? {
				return getToken(GoParser.Tokens.R_BRACKET.rawValue, 0)
			}
			open
			func elementType() -> ElementTypeContext? {
				return getRuleContext(ElementTypeContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_mapType
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterMapType(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitMapType(self)
			}
		}
	}
	@discardableResult
	 open func mapType() throws -> MapTypeContext {
		var _localctx: MapTypeContext
		_localctx = MapTypeContext(_ctx, getState())
		try enterRule(_localctx, 136, GoParser.RULE_mapType)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(729)
		 	try match(GoParser.Tokens.MAP.rawValue)
		 	setState(730)
		 	try match(GoParser.Tokens.L_BRACKET.rawValue)
		 	setState(731)
		 	try type_()
		 	setState(732)
		 	try match(GoParser.Tokens.R_BRACKET.rawValue)
		 	setState(733)
		 	try elementType()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ChannelTypeContext: ParserRuleContext {
			open
			func elementType() -> ElementTypeContext? {
				return getRuleContext(ElementTypeContext.self, 0)
			}
			open
			func CHAN() -> TerminalNode? {
				return getToken(GoParser.Tokens.CHAN.rawValue, 0)
			}
			open
			func RECEIVE() -> TerminalNode? {
				return getToken(GoParser.Tokens.RECEIVE.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_channelType
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterChannelType(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitChannelType(self)
			}
		}
	}
	@discardableResult
	 open func channelType() throws -> ChannelTypeContext {
		var _localctx: ChannelTypeContext
		_localctx = ChannelTypeContext(_ctx, getState())
		try enterRule(_localctx, 138, GoParser.RULE_channelType)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(740)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,77, _ctx)) {
		 	case 1:
		 		setState(735)
		 		try match(GoParser.Tokens.CHAN.rawValue)

		 		break
		 	case 2:
		 		setState(736)
		 		try match(GoParser.Tokens.CHAN.rawValue)
		 		setState(737)
		 		try match(GoParser.Tokens.RECEIVE.rawValue)

		 		break
		 	case 3:
		 		setState(738)
		 		try match(GoParser.Tokens.RECEIVE.rawValue)
		 		setState(739)
		 		try match(GoParser.Tokens.CHAN.rawValue)

		 		break
		 	default: break
		 	}
		 	setState(742)
		 	try elementType()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class MethodSpecContext: ParserRuleContext {
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(GoParser.Tokens.IDENTIFIER.rawValue, 0)
			}
			open
			func parameters() -> ParametersContext? {
				return getRuleContext(ParametersContext.self, 0)
			}
			open
			func result() -> ResultContext? {
				return getRuleContext(ResultContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_methodSpec
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterMethodSpec(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitMethodSpec(self)
			}
		}
	}
	@discardableResult
	 open func methodSpec() throws -> MethodSpecContext {
		var _localctx: MethodSpecContext
		_localctx = MethodSpecContext(_ctx, getState())
		try enterRule(_localctx, 140, GoParser.RULE_methodSpec)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(750)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,78, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(744)
		 		try match(GoParser.Tokens.IDENTIFIER.rawValue)
		 		setState(745)
		 		try parameters()
		 		setState(746)
		 		try result()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(748)
		 		try match(GoParser.Tokens.IDENTIFIER.rawValue)
		 		setState(749)
		 		try parameters()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FunctionTypeContext: ParserRuleContext {
			open
			func FUNC() -> TerminalNode? {
				return getToken(GoParser.Tokens.FUNC.rawValue, 0)
			}
			open
			func signature() -> SignatureContext? {
				return getRuleContext(SignatureContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_functionType
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterFunctionType(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitFunctionType(self)
			}
		}
	}
	@discardableResult
	 open func functionType() throws -> FunctionTypeContext {
		var _localctx: FunctionTypeContext
		_localctx = FunctionTypeContext(_ctx, getState())
		try enterRule(_localctx, 142, GoParser.RULE_functionType)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(752)
		 	try match(GoParser.Tokens.FUNC.rawValue)
		 	setState(753)
		 	try signature()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class SignatureContext: ParserRuleContext {
			open
			func parameters() -> ParametersContext? {
				return getRuleContext(ParametersContext.self, 0)
			}
			open
			func result() -> ResultContext? {
				return getRuleContext(ResultContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_signature
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterSignature(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitSignature(self)
			}
		}
	}
	@discardableResult
	 open func signature() throws -> SignatureContext {
		var _localctx: SignatureContext
		_localctx = SignatureContext(_ctx, getState())
		try enterRule(_localctx, 144, GoParser.RULE_signature)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(755)
		 	try parameters()
		 	setState(757)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,79,_ctx)) {
		 	case 1:
		 		setState(756)
		 		try result()

		 		break
		 	default: break
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ResultContext: ParserRuleContext {
			open
			func parameters() -> ParametersContext? {
				return getRuleContext(ParametersContext.self, 0)
			}
			open
			func type_() -> Type_Context? {
				return getRuleContext(Type_Context.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_result
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterResult(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitResult(self)
			}
		}
	}
	@discardableResult
	 open func result() throws -> ResultContext {
		var _localctx: ResultContext
		_localctx = ResultContext(_ctx, getState())
		try enterRule(_localctx, 146, GoParser.RULE_result)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(761)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,80, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(759)
		 		try parameters()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(760)
		 		try type_()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ParametersContext: ParserRuleContext {
			open
			func L_PAREN() -> TerminalNode? {
				return getToken(GoParser.Tokens.L_PAREN.rawValue, 0)
			}
			open
			func R_PAREN() -> TerminalNode? {
				return getToken(GoParser.Tokens.R_PAREN.rawValue, 0)
			}
			open
			func parameterDecl() -> [ParameterDeclContext] {
				return getRuleContexts(ParameterDeclContext.self)
			}
			open
			func parameterDecl(_ i: Int) -> ParameterDeclContext? {
				return getRuleContext(ParameterDeclContext.self, i)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(GoParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(GoParser.Tokens.COMMA.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_parameters
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterParameters(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitParameters(self)
			}
		}
	}
	@discardableResult
	 open func parameters() throws -> ParametersContext {
		var _localctx: ParametersContext
		_localctx = ParametersContext(_ctx, getState())
		try enterRule(_localctx, 148, GoParser.RULE_parameters)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	try enterOuterAlt(_localctx, 1)
		 	setState(763)
		 	try match(GoParser.Tokens.L_PAREN.rawValue)
		 	setState(775)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (((Int64((_la - 3)) & ~0x3f) == 0 && ((Int64(1) << (_la - 3)) & 2882304311860134339) != 0)) {
		 		setState(764)
		 		try parameterDecl()
		 		setState(769)
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,81,_ctx)
		 		while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
		 			if ( _alt==1 ) {
		 				setState(765)
		 				try match(GoParser.Tokens.COMMA.rawValue)
		 				setState(766)
		 				try parameterDecl()

		 		 
		 			}
		 			setState(771)
		 			try _errHandler.sync(self)
		 			_alt = try getInterpreter().adaptivePredict(_input,81,_ctx)
		 		}
		 		setState(773)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (_la == GoParser.Tokens.COMMA.rawValue) {
		 			setState(772)
		 			try match(GoParser.Tokens.COMMA.rawValue)

		 		}


		 	}

		 	setState(777)
		 	try match(GoParser.Tokens.R_PAREN.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ParameterDeclContext: ParserRuleContext {
			open
			func type_() -> Type_Context? {
				return getRuleContext(Type_Context.self, 0)
			}
			open
			func identifierList() -> IdentifierListContext? {
				return getRuleContext(IdentifierListContext.self, 0)
			}
			open
			func ELLIPSIS() -> TerminalNode? {
				return getToken(GoParser.Tokens.ELLIPSIS.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_parameterDecl
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterParameterDecl(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitParameterDecl(self)
			}
		}
	}
	@discardableResult
	 open func parameterDecl() throws -> ParameterDeclContext {
		var _localctx: ParameterDeclContext
		_localctx = ParameterDeclContext(_ctx, getState())
		try enterRule(_localctx, 150, GoParser.RULE_parameterDecl)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(780)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,84,_ctx)) {
		 	case 1:
		 		setState(779)
		 		try identifierList()

		 		break
		 	default: break
		 	}
		 	setState(783)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (_la == GoParser.Tokens.ELLIPSIS.rawValue) {
		 		setState(782)
		 		try match(GoParser.Tokens.ELLIPSIS.rawValue)

		 	}

		 	setState(785)
		 	try type_()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}


	public class ExpressionContext: ParserRuleContext {
		open var unary_op: Token!
		open var mul_op: Token!
		open var add_op: Token!
		open var rel_op: Token!
			open
			func primaryExpr() -> PrimaryExprContext? {
				return getRuleContext(PrimaryExprContext.self, 0)
			}
			open
			func expression() -> [ExpressionContext] {
				return getRuleContexts(ExpressionContext.self)
			}
			open
			func expression(_ i: Int) -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, i)
			}
			open
			func PLUS() -> TerminalNode? {
				return getToken(GoParser.Tokens.PLUS.rawValue, 0)
			}
			open
			func MINUS() -> TerminalNode? {
				return getToken(GoParser.Tokens.MINUS.rawValue, 0)
			}
			open
			func EXCLAMATION() -> TerminalNode? {
				return getToken(GoParser.Tokens.EXCLAMATION.rawValue, 0)
			}
			open
			func CARET() -> TerminalNode? {
				return getToken(GoParser.Tokens.CARET.rawValue, 0)
			}
			open
			func STAR() -> TerminalNode? {
				return getToken(GoParser.Tokens.STAR.rawValue, 0)
			}
			open
			func AMPERSAND() -> TerminalNode? {
				return getToken(GoParser.Tokens.AMPERSAND.rawValue, 0)
			}
			open
			func RECEIVE() -> TerminalNode? {
				return getToken(GoParser.Tokens.RECEIVE.rawValue, 0)
			}
			open
			func DIV() -> TerminalNode? {
				return getToken(GoParser.Tokens.DIV.rawValue, 0)
			}
			open
			func MOD() -> TerminalNode? {
				return getToken(GoParser.Tokens.MOD.rawValue, 0)
			}
			open
			func LSHIFT() -> TerminalNode? {
				return getToken(GoParser.Tokens.LSHIFT.rawValue, 0)
			}
			open
			func RSHIFT() -> TerminalNode? {
				return getToken(GoParser.Tokens.RSHIFT.rawValue, 0)
			}
			open
			func BIT_CLEAR() -> TerminalNode? {
				return getToken(GoParser.Tokens.BIT_CLEAR.rawValue, 0)
			}
			open
			func OR() -> TerminalNode? {
				return getToken(GoParser.Tokens.OR.rawValue, 0)
			}
			open
			func EQUALS() -> TerminalNode? {
				return getToken(GoParser.Tokens.EQUALS.rawValue, 0)
			}
			open
			func NOT_EQUALS() -> TerminalNode? {
				return getToken(GoParser.Tokens.NOT_EQUALS.rawValue, 0)
			}
			open
			func LESS() -> TerminalNode? {
				return getToken(GoParser.Tokens.LESS.rawValue, 0)
			}
			open
			func LESS_OR_EQUALS() -> TerminalNode? {
				return getToken(GoParser.Tokens.LESS_OR_EQUALS.rawValue, 0)
			}
			open
			func GREATER() -> TerminalNode? {
				return getToken(GoParser.Tokens.GREATER.rawValue, 0)
			}
			open
			func GREATER_OR_EQUALS() -> TerminalNode? {
				return getToken(GoParser.Tokens.GREATER_OR_EQUALS.rawValue, 0)
			}
			open
			func LOGICAL_AND() -> TerminalNode? {
				return getToken(GoParser.Tokens.LOGICAL_AND.rawValue, 0)
			}
			open
			func LOGICAL_OR() -> TerminalNode? {
				return getToken(GoParser.Tokens.LOGICAL_OR.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_expression
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterExpression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitExpression(self)
			}
		}
	}

	 public final  func expression( ) throws -> ExpressionContext   {
		return try expression(0)
	}
	@discardableResult
	private func expression(_ _p: Int) throws -> ExpressionContext   {
		let _parentctx: ParserRuleContext? = _ctx
		let _parentState: Int = getState()
		var _localctx: ExpressionContext
		_localctx = ExpressionContext(_ctx, _parentState)
		var _prevctx: ExpressionContext = _localctx
		let _startState: Int = 152
		try enterRecursionRule(_localctx, 152, GoParser.RULE_expression, _p)
		var _la: Int = 0
		defer {
	    		try! unrollRecursionContexts(_parentctx)
	    }
		do {
			var _alt: Int
			try enterOuterAlt(_localctx, 1)
			setState(791)
			try _errHandler.sync(self)
			switch(try getInterpreter().adaptivePredict(_input,86, _ctx)) {
			case 1:
				setState(788)
				try primaryExpr(0)

				break
			case 2:
				setState(789)
				_localctx.castdown(ExpressionContext.self).unary_op = try _input.LT(1)
				_la = try _input.LA(1)
				if (!(((Int64((_la - 58)) & ~0x3f) == 0 && ((Int64(1) << (_la - 58)) & 127) != 0))) {
					_localctx.castdown(ExpressionContext.self).unary_op = try _errHandler.recoverInline(self) as Token
				}
				else {
					_errHandler.reportMatch(self)
					try consume()
				}
				setState(790)
				try expression(6)

				break
			default: break
			}
			_ctx!.stop = try _input.LT(-1)
			setState(810)
			try _errHandler.sync(self)
			_alt = try getInterpreter().adaptivePredict(_input,88,_ctx)
			while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
				if ( _alt==1 ) {
					if _parseListeners != nil {
					   try triggerExitRuleEvent()
					}
					_prevctx = _localctx
					setState(808)
					try _errHandler.sync(self)
					switch(try getInterpreter().adaptivePredict(_input,87, _ctx)) {
					case 1:
						_localctx = ExpressionContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, GoParser.RULE_expression)
						setState(793)
						if (!(precpred(_ctx, 5))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 5)"))
						}
						setState(794)
						_localctx.castdown(ExpressionContext.self).mul_op = try _input.LT(1)
						_la = try _input.LA(1)
						if (!(((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & -4472074429978902528) != 0))) {
							_localctx.castdown(ExpressionContext.self).mul_op = try _errHandler.recoverInline(self) as Token
						}
						else {
							_errHandler.reportMatch(self)
							try consume()
						}
						setState(795)
						try expression(6)

						break
					case 2:
						_localctx = ExpressionContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, GoParser.RULE_expression)
						setState(796)
						if (!(precpred(_ctx, 4))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 4)"))
						}
						setState(797)
						_localctx.castdown(ExpressionContext.self).add_op = try _input.LT(1)
						_la = try _input.LA(1)
						if (!(((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & 4037477065937649664) != 0))) {
							_localctx.castdown(ExpressionContext.self).add_op = try _errHandler.recoverInline(self) as Token
						}
						else {
							_errHandler.reportMatch(self)
							try consume()
						}
						setState(798)
						try expression(5)

						break
					case 3:
						_localctx = ExpressionContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, GoParser.RULE_expression)
						setState(799)
						if (!(precpred(_ctx, 3))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 3)"))
						}
						setState(800)
						_localctx.castdown(ExpressionContext.self).rel_op = try _input.LT(1)
						_la = try _input.LA(1)
						if (!(((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & 2216615441596416) != 0))) {
							_localctx.castdown(ExpressionContext.self).rel_op = try _errHandler.recoverInline(self) as Token
						}
						else {
							_errHandler.reportMatch(self)
							try consume()
						}
						setState(801)
						try expression(4)

						break
					case 4:
						_localctx = ExpressionContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, GoParser.RULE_expression)
						setState(802)
						if (!(precpred(_ctx, 2))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 2)"))
						}
						setState(803)
						try match(GoParser.Tokens.LOGICAL_AND.rawValue)
						setState(804)
						try expression(3)

						break
					case 5:
						_localctx = ExpressionContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, GoParser.RULE_expression)
						setState(805)
						if (!(precpred(_ctx, 1))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 1)"))
						}
						setState(806)
						try match(GoParser.Tokens.LOGICAL_OR.rawValue)
						setState(807)
						try expression(2)

						break
					default: break
					}
			 
				}
				setState(812)
				try _errHandler.sync(self)
				_alt = try getInterpreter().adaptivePredict(_input,88,_ctx)
			}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx;
	}


	public class PrimaryExprContext: ParserRuleContext {
			open
			func operand() -> OperandContext? {
				return getRuleContext(OperandContext.self, 0)
			}
			open
			func conversion() -> ConversionContext? {
				return getRuleContext(ConversionContext.self, 0)
			}
			open
			func methodExpr() -> MethodExprContext? {
				return getRuleContext(MethodExprContext.self, 0)
			}
			open
			func primaryExpr() -> PrimaryExprContext? {
				return getRuleContext(PrimaryExprContext.self, 0)
			}
			open
			func DOT() -> TerminalNode? {
				return getToken(GoParser.Tokens.DOT.rawValue, 0)
			}
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(GoParser.Tokens.IDENTIFIER.rawValue, 0)
			}
			open
			func index() -> IndexContext? {
				return getRuleContext(IndexContext.self, 0)
			}
			open
			func slice_() -> Slice_Context? {
				return getRuleContext(Slice_Context.self, 0)
			}
			open
			func typeAssertion() -> TypeAssertionContext? {
				return getRuleContext(TypeAssertionContext.self, 0)
			}
			open
			func arguments() -> ArgumentsContext? {
				return getRuleContext(ArgumentsContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_primaryExpr
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterPrimaryExpr(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitPrimaryExpr(self)
			}
		}
	}

	 public final  func primaryExpr( ) throws -> PrimaryExprContext   {
		return try primaryExpr(0)
	}
	@discardableResult
	private func primaryExpr(_ _p: Int) throws -> PrimaryExprContext   {
		let _parentctx: ParserRuleContext? = _ctx
		let _parentState: Int = getState()
		var _localctx: PrimaryExprContext
		_localctx = PrimaryExprContext(_ctx, _parentState)
		var _prevctx: PrimaryExprContext = _localctx
		let _startState: Int = 154
		try enterRecursionRule(_localctx, 154, GoParser.RULE_primaryExpr, _p)
		defer {
	    		try! unrollRecursionContexts(_parentctx)
	    }
		do {
			var _alt: Int
			try enterOuterAlt(_localctx, 1)
			setState(817)
			try _errHandler.sync(self)
			switch(try getInterpreter().adaptivePredict(_input,89, _ctx)) {
			case 1:
				setState(814)
				try operand()

				break
			case 2:
				setState(815)
				try conversion()

				break
			case 3:
				setState(816)
				try methodExpr()

				break
			default: break
			}
			_ctx!.stop = try _input.LT(-1)
			setState(830)
			try _errHandler.sync(self)
			_alt = try getInterpreter().adaptivePredict(_input,91,_ctx)
			while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
				if ( _alt==1 ) {
					if _parseListeners != nil {
					   try triggerExitRuleEvent()
					}
					_prevctx = _localctx
					_localctx = PrimaryExprContext(_parentctx, _parentState);
					try pushNewRecursionContext(_localctx, _startState, GoParser.RULE_primaryExpr)
					setState(819)
					if (!(precpred(_ctx, 1))) {
					    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 1)"))
					}
					setState(826)
					try _errHandler.sync(self)
					switch(try getInterpreter().adaptivePredict(_input,90, _ctx)) {
					case 1:
						setState(820)
						try match(GoParser.Tokens.DOT.rawValue)
						setState(821)
						try match(GoParser.Tokens.IDENTIFIER.rawValue)

						break
					case 2:
						setState(822)
						try index()

						break
					case 3:
						setState(823)
						try slice_()

						break
					case 4:
						setState(824)
						try typeAssertion()

						break
					case 5:
						setState(825)
						try arguments()

						break
					default: break
					}

			 
				}
				setState(832)
				try _errHandler.sync(self)
				_alt = try getInterpreter().adaptivePredict(_input,91,_ctx)
			}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx;
	}

	public class ConversionContext: ParserRuleContext {
			open
			func type_() -> Type_Context? {
				return getRuleContext(Type_Context.self, 0)
			}
			open
			func L_PAREN() -> TerminalNode? {
				return getToken(GoParser.Tokens.L_PAREN.rawValue, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
			open
			func R_PAREN() -> TerminalNode? {
				return getToken(GoParser.Tokens.R_PAREN.rawValue, 0)
			}
			open
			func COMMA() -> TerminalNode? {
				return getToken(GoParser.Tokens.COMMA.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_conversion
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterConversion(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitConversion(self)
			}
		}
	}
	@discardableResult
	 open func conversion() throws -> ConversionContext {
		var _localctx: ConversionContext
		_localctx = ConversionContext(_ctx, getState())
		try enterRule(_localctx, 156, GoParser.RULE_conversion)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(833)
		 	try type_()
		 	setState(834)
		 	try match(GoParser.Tokens.L_PAREN.rawValue)
		 	setState(835)
		 	try expression(0)
		 	setState(837)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (_la == GoParser.Tokens.COMMA.rawValue) {
		 		setState(836)
		 		try match(GoParser.Tokens.COMMA.rawValue)

		 	}

		 	setState(839)
		 	try match(GoParser.Tokens.R_PAREN.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class OperandContext: ParserRuleContext {
			open
			func literal() -> LiteralContext? {
				return getRuleContext(LiteralContext.self, 0)
			}
			open
			func operandName() -> OperandNameContext? {
				return getRuleContext(OperandNameContext.self, 0)
			}
			open
			func typeArgs() -> TypeArgsContext? {
				return getRuleContext(TypeArgsContext.self, 0)
			}
			open
			func L_PAREN() -> TerminalNode? {
				return getToken(GoParser.Tokens.L_PAREN.rawValue, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
			open
			func R_PAREN() -> TerminalNode? {
				return getToken(GoParser.Tokens.R_PAREN.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_operand
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterOperand(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitOperand(self)
			}
		}
	}
	@discardableResult
	 open func operand() throws -> OperandContext {
		var _localctx: OperandContext
		_localctx = OperandContext(_ctx, getState())
		try enterRule(_localctx, 158, GoParser.RULE_operand)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(850)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,94, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(841)
		 		try literal()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(842)
		 		try operandName()
		 		setState(844)
		 		try _errHandler.sync(self)
		 		switch (try getInterpreter().adaptivePredict(_input,93,_ctx)) {
		 		case 1:
		 			setState(843)
		 			try typeArgs()

		 			break
		 		default: break
		 		}

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(846)
		 		try match(GoParser.Tokens.L_PAREN.rawValue)
		 		setState(847)
		 		try expression(0)
		 		setState(848)
		 		try match(GoParser.Tokens.R_PAREN.rawValue)

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class LiteralContext: ParserRuleContext {
			open
			func basicLit() -> BasicLitContext? {
				return getRuleContext(BasicLitContext.self, 0)
			}
			open
			func compositeLit() -> CompositeLitContext? {
				return getRuleContext(CompositeLitContext.self, 0)
			}
			open
			func functionLit() -> FunctionLitContext? {
				return getRuleContext(FunctionLitContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_literal
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterLiteral(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitLiteral(self)
			}
		}
	}
	@discardableResult
	 open func literal() throws -> LiteralContext {
		var _localctx: LiteralContext
		_localctx = LiteralContext(_ctx, getState())
		try enterRule(_localctx, 160, GoParser.RULE_literal)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(855)
		 	try _errHandler.sync(self)
		 	switch (GoParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .NIL_LIT:fallthrough
		 	case .DECIMAL_LIT:fallthrough
		 	case .BINARY_LIT:fallthrough
		 	case .OCTAL_LIT:fallthrough
		 	case .HEX_LIT:fallthrough
		 	case .FLOAT_LIT:fallthrough
		 	case .IMAGINARY_LIT:fallthrough
		 	case .RUNE_LIT:fallthrough
		 	case .RAW_STRING_LIT:fallthrough
		 	case .INTERPRETED_STRING_LIT:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(852)
		 		try basicLit()

		 		break
		 	case .MAP:fallthrough
		 	case .STRUCT:fallthrough
		 	case .IDENTIFIER:fallthrough
		 	case .L_BRACKET:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(853)
		 		try compositeLit()

		 		break

		 	case .FUNC:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(854)
		 		try functionLit()

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class BasicLitContext: ParserRuleContext {
			open
			func NIL_LIT() -> TerminalNode? {
				return getToken(GoParser.Tokens.NIL_LIT.rawValue, 0)
			}
			open
			func integer() -> IntegerContext? {
				return getRuleContext(IntegerContext.self, 0)
			}
			open
			func string_() -> String_Context? {
				return getRuleContext(String_Context.self, 0)
			}
			open
			func FLOAT_LIT() -> TerminalNode? {
				return getToken(GoParser.Tokens.FLOAT_LIT.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_basicLit
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterBasicLit(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitBasicLit(self)
			}
		}
	}
	@discardableResult
	 open func basicLit() throws -> BasicLitContext {
		var _localctx: BasicLitContext
		_localctx = BasicLitContext(_ctx, getState())
		try enterRule(_localctx, 162, GoParser.RULE_basicLit)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(861)
		 	try _errHandler.sync(self)
		 	switch (GoParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .NIL_LIT:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(857)
		 		try match(GoParser.Tokens.NIL_LIT.rawValue)

		 		break
		 	case .DECIMAL_LIT:fallthrough
		 	case .BINARY_LIT:fallthrough
		 	case .OCTAL_LIT:fallthrough
		 	case .HEX_LIT:fallthrough
		 	case .IMAGINARY_LIT:fallthrough
		 	case .RUNE_LIT:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(858)
		 		try integer()

		 		break
		 	case .RAW_STRING_LIT:fallthrough
		 	case .INTERPRETED_STRING_LIT:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(859)
		 		try string_()

		 		break

		 	case .FLOAT_LIT:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(860)
		 		try match(GoParser.Tokens.FLOAT_LIT.rawValue)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class IntegerContext: ParserRuleContext {
			open
			func DECIMAL_LIT() -> TerminalNode? {
				return getToken(GoParser.Tokens.DECIMAL_LIT.rawValue, 0)
			}
			open
			func BINARY_LIT() -> TerminalNode? {
				return getToken(GoParser.Tokens.BINARY_LIT.rawValue, 0)
			}
			open
			func OCTAL_LIT() -> TerminalNode? {
				return getToken(GoParser.Tokens.OCTAL_LIT.rawValue, 0)
			}
			open
			func HEX_LIT() -> TerminalNode? {
				return getToken(GoParser.Tokens.HEX_LIT.rawValue, 0)
			}
			open
			func IMAGINARY_LIT() -> TerminalNode? {
				return getToken(GoParser.Tokens.IMAGINARY_LIT.rawValue, 0)
			}
			open
			func RUNE_LIT() -> TerminalNode? {
				return getToken(GoParser.Tokens.RUNE_LIT.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_integer
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterInteger(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitInteger(self)
			}
		}
	}
	@discardableResult
	 open func integer() throws -> IntegerContext {
		var _localctx: IntegerContext
		_localctx = IntegerContext(_ctx, getState())
		try enterRule(_localctx, 164, GoParser.RULE_integer)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(863)
		 	_la = try _input.LA(1)
		 	if (!(((Int64((_la - 65)) & ~0x3f) == 0 && ((Int64(1) << (_la - 65)) & 399) != 0))) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class OperandNameContext: ParserRuleContext {
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(GoParser.Tokens.IDENTIFIER.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_operandName
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterOperandName(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitOperandName(self)
			}
		}
	}
	@discardableResult
	 open func operandName() throws -> OperandNameContext {
		var _localctx: OperandNameContext
		_localctx = OperandNameContext(_ctx, getState())
		try enterRule(_localctx, 166, GoParser.RULE_operandName)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(865)
		 	try match(GoParser.Tokens.IDENTIFIER.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class QualifiedIdentContext: ParserRuleContext {
			open
			func IDENTIFIER() -> [TerminalNode] {
				return getTokens(GoParser.Tokens.IDENTIFIER.rawValue)
			}
			open
			func IDENTIFIER(_ i:Int) -> TerminalNode? {
				return getToken(GoParser.Tokens.IDENTIFIER.rawValue, i)
			}
			open
			func DOT() -> TerminalNode? {
				return getToken(GoParser.Tokens.DOT.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_qualifiedIdent
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterQualifiedIdent(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitQualifiedIdent(self)
			}
		}
	}
	@discardableResult
	 open func qualifiedIdent() throws -> QualifiedIdentContext {
		var _localctx: QualifiedIdentContext
		_localctx = QualifiedIdentContext(_ctx, getState())
		try enterRule(_localctx, 168, GoParser.RULE_qualifiedIdent)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(867)
		 	try match(GoParser.Tokens.IDENTIFIER.rawValue)
		 	setState(868)
		 	try match(GoParser.Tokens.DOT.rawValue)
		 	setState(869)
		 	try match(GoParser.Tokens.IDENTIFIER.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class CompositeLitContext: ParserRuleContext {
			open
			func literalType() -> LiteralTypeContext? {
				return getRuleContext(LiteralTypeContext.self, 0)
			}
			open
			func literalValue() -> LiteralValueContext? {
				return getRuleContext(LiteralValueContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_compositeLit
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterCompositeLit(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitCompositeLit(self)
			}
		}
	}
	@discardableResult
	 open func compositeLit() throws -> CompositeLitContext {
		var _localctx: CompositeLitContext
		_localctx = CompositeLitContext(_ctx, getState())
		try enterRule(_localctx, 170, GoParser.RULE_compositeLit)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(871)
		 	try literalType()
		 	setState(872)
		 	try literalValue()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class LiteralTypeContext: ParserRuleContext {
			open
			func structType() -> StructTypeContext? {
				return getRuleContext(StructTypeContext.self, 0)
			}
			open
			func arrayType() -> ArrayTypeContext? {
				return getRuleContext(ArrayTypeContext.self, 0)
			}
			open
			func L_BRACKET() -> TerminalNode? {
				return getToken(GoParser.Tokens.L_BRACKET.rawValue, 0)
			}
			open
			func ELLIPSIS() -> TerminalNode? {
				return getToken(GoParser.Tokens.ELLIPSIS.rawValue, 0)
			}
			open
			func R_BRACKET() -> TerminalNode? {
				return getToken(GoParser.Tokens.R_BRACKET.rawValue, 0)
			}
			open
			func elementType() -> ElementTypeContext? {
				return getRuleContext(ElementTypeContext.self, 0)
			}
			open
			func sliceType() -> SliceTypeContext? {
				return getRuleContext(SliceTypeContext.self, 0)
			}
			open
			func mapType() -> MapTypeContext? {
				return getRuleContext(MapTypeContext.self, 0)
			}
			open
			func typeName() -> TypeNameContext? {
				return getRuleContext(TypeNameContext.self, 0)
			}
			open
			func typeArgs() -> TypeArgsContext? {
				return getRuleContext(TypeArgsContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_literalType
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterLiteralType(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitLiteralType(self)
			}
		}
	}
	@discardableResult
	 open func literalType() throws -> LiteralTypeContext {
		var _localctx: LiteralTypeContext
		_localctx = LiteralTypeContext(_ctx, getState())
		try enterRule(_localctx, 172, GoParser.RULE_literalType)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(886)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,98, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(874)
		 		try structType()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(875)
		 		try arrayType()

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(876)
		 		try match(GoParser.Tokens.L_BRACKET.rawValue)
		 		setState(877)
		 		try match(GoParser.Tokens.ELLIPSIS.rawValue)
		 		setState(878)
		 		try match(GoParser.Tokens.R_BRACKET.rawValue)
		 		setState(879)
		 		try elementType()

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(880)
		 		try sliceType()

		 		break
		 	case 5:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(881)
		 		try mapType()

		 		break
		 	case 6:
		 		try enterOuterAlt(_localctx, 6)
		 		setState(882)
		 		try typeName()
		 		setState(884)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (_la == GoParser.Tokens.L_BRACKET.rawValue) {
		 			setState(883)
		 			try typeArgs()

		 		}


		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class LiteralValueContext: ParserRuleContext {
			open
			func L_CURLY() -> TerminalNode? {
				return getToken(GoParser.Tokens.L_CURLY.rawValue, 0)
			}
			open
			func R_CURLY() -> TerminalNode? {
				return getToken(GoParser.Tokens.R_CURLY.rawValue, 0)
			}
			open
			func elementList() -> ElementListContext? {
				return getRuleContext(ElementListContext.self, 0)
			}
			open
			func COMMA() -> TerminalNode? {
				return getToken(GoParser.Tokens.COMMA.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_literalValue
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterLiteralValue(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitLiteralValue(self)
			}
		}
	}
	@discardableResult
	 open func literalValue() throws -> LiteralValueContext {
		var _localctx: LiteralValueContext
		_localctx = LiteralValueContext(_ctx, getState())
		try enterRule(_localctx, 174, GoParser.RULE_literalValue)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(888)
		 	try match(GoParser.Tokens.L_CURLY.rawValue)
		 	setState(893)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & -288230370313236968) != 0) || ((Int64((_la - 64)) & ~0x3f) == 0 && ((Int64(1) << (_la - 64)) & 99135) != 0)) {
		 		setState(889)
		 		try elementList()
		 		setState(891)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (_la == GoParser.Tokens.COMMA.rawValue) {
		 			setState(890)
		 			try match(GoParser.Tokens.COMMA.rawValue)

		 		}


		 	}

		 	setState(895)
		 	try match(GoParser.Tokens.R_CURLY.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ElementListContext: ParserRuleContext {
			open
			func keyedElement() -> [KeyedElementContext] {
				return getRuleContexts(KeyedElementContext.self)
			}
			open
			func keyedElement(_ i: Int) -> KeyedElementContext? {
				return getRuleContext(KeyedElementContext.self, i)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(GoParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(GoParser.Tokens.COMMA.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_elementList
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterElementList(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitElementList(self)
			}
		}
	}
	@discardableResult
	 open func elementList() throws -> ElementListContext {
		var _localctx: ElementListContext
		_localctx = ElementListContext(_ctx, getState())
		try enterRule(_localctx, 176, GoParser.RULE_elementList)
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	try enterOuterAlt(_localctx, 1)
		 	setState(897)
		 	try keyedElement()
		 	setState(902)
		 	try _errHandler.sync(self)
		 	_alt = try getInterpreter().adaptivePredict(_input,101,_ctx)
		 	while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
		 		if ( _alt==1 ) {
		 			setState(898)
		 			try match(GoParser.Tokens.COMMA.rawValue)
		 			setState(899)
		 			try keyedElement()

		 	 
		 		}
		 		setState(904)
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,101,_ctx)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class KeyedElementContext: ParserRuleContext {
			open
			func element() -> ElementContext? {
				return getRuleContext(ElementContext.self, 0)
			}
			open
			func key() -> KeyContext? {
				return getRuleContext(KeyContext.self, 0)
			}
			open
			func COLON() -> TerminalNode? {
				return getToken(GoParser.Tokens.COLON.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_keyedElement
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterKeyedElement(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitKeyedElement(self)
			}
		}
	}
	@discardableResult
	 open func keyedElement() throws -> KeyedElementContext {
		var _localctx: KeyedElementContext
		_localctx = KeyedElementContext(_ctx, getState())
		try enterRule(_localctx, 178, GoParser.RULE_keyedElement)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(908)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,102,_ctx)) {
		 	case 1:
		 		setState(905)
		 		try key()
		 		setState(906)
		 		try match(GoParser.Tokens.COLON.rawValue)

		 		break
		 	default: break
		 	}
		 	setState(910)
		 	try element()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class KeyContext: ParserRuleContext {
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
			open
			func literalValue() -> LiteralValueContext? {
				return getRuleContext(LiteralValueContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_key
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterKey(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitKey(self)
			}
		}
	}
	@discardableResult
	 open func key() throws -> KeyContext {
		var _localctx: KeyContext
		_localctx = KeyContext(_ctx, getState())
		try enterRule(_localctx, 180, GoParser.RULE_key)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(914)
		 	try _errHandler.sync(self)
		 	switch (GoParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .FUNC:fallthrough
		 	case .INTERFACE:fallthrough
		 	case .MAP:fallthrough
		 	case .STRUCT:fallthrough
		 	case .CHAN:fallthrough
		 	case .NIL_LIT:fallthrough
		 	case .IDENTIFIER:fallthrough
		 	case .L_PAREN:fallthrough
		 	case .L_BRACKET:fallthrough
		 	case .EXCLAMATION:fallthrough
		 	case .PLUS:fallthrough
		 	case .MINUS:fallthrough
		 	case .CARET:fallthrough
		 	case .STAR:fallthrough
		 	case .AMPERSAND:fallthrough
		 	case .RECEIVE:fallthrough
		 	case .DECIMAL_LIT:fallthrough
		 	case .BINARY_LIT:fallthrough
		 	case .OCTAL_LIT:fallthrough
		 	case .HEX_LIT:fallthrough
		 	case .FLOAT_LIT:fallthrough
		 	case .IMAGINARY_LIT:fallthrough
		 	case .RUNE_LIT:fallthrough
		 	case .RAW_STRING_LIT:fallthrough
		 	case .INTERPRETED_STRING_LIT:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(912)
		 		try expression(0)

		 		break

		 	case .L_CURLY:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(913)
		 		try literalValue()

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ElementContext: ParserRuleContext {
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
			open
			func literalValue() -> LiteralValueContext? {
				return getRuleContext(LiteralValueContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_element
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterElement(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitElement(self)
			}
		}
	}
	@discardableResult
	 open func element() throws -> ElementContext {
		var _localctx: ElementContext
		_localctx = ElementContext(_ctx, getState())
		try enterRule(_localctx, 182, GoParser.RULE_element)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(918)
		 	try _errHandler.sync(self)
		 	switch (GoParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .FUNC:fallthrough
		 	case .INTERFACE:fallthrough
		 	case .MAP:fallthrough
		 	case .STRUCT:fallthrough
		 	case .CHAN:fallthrough
		 	case .NIL_LIT:fallthrough
		 	case .IDENTIFIER:fallthrough
		 	case .L_PAREN:fallthrough
		 	case .L_BRACKET:fallthrough
		 	case .EXCLAMATION:fallthrough
		 	case .PLUS:fallthrough
		 	case .MINUS:fallthrough
		 	case .CARET:fallthrough
		 	case .STAR:fallthrough
		 	case .AMPERSAND:fallthrough
		 	case .RECEIVE:fallthrough
		 	case .DECIMAL_LIT:fallthrough
		 	case .BINARY_LIT:fallthrough
		 	case .OCTAL_LIT:fallthrough
		 	case .HEX_LIT:fallthrough
		 	case .FLOAT_LIT:fallthrough
		 	case .IMAGINARY_LIT:fallthrough
		 	case .RUNE_LIT:fallthrough
		 	case .RAW_STRING_LIT:fallthrough
		 	case .INTERPRETED_STRING_LIT:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(916)
		 		try expression(0)

		 		break

		 	case .L_CURLY:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(917)
		 		try literalValue()

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class StructTypeContext: ParserRuleContext {
			open
			func STRUCT() -> TerminalNode? {
				return getToken(GoParser.Tokens.STRUCT.rawValue, 0)
			}
			open
			func L_CURLY() -> TerminalNode? {
				return getToken(GoParser.Tokens.L_CURLY.rawValue, 0)
			}
			open
			func R_CURLY() -> TerminalNode? {
				return getToken(GoParser.Tokens.R_CURLY.rawValue, 0)
			}
			open
			func fieldDecl() -> [FieldDeclContext] {
				return getRuleContexts(FieldDeclContext.self)
			}
			open
			func fieldDecl(_ i: Int) -> FieldDeclContext? {
				return getRuleContext(FieldDeclContext.self, i)
			}
			open
			func eos() -> [EosContext] {
				return getRuleContexts(EosContext.self)
			}
			open
			func eos(_ i: Int) -> EosContext? {
				return getRuleContext(EosContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_structType
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterStructType(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitStructType(self)
			}
		}
	}
	@discardableResult
	 open func structType() throws -> StructTypeContext {
		var _localctx: StructTypeContext
		_localctx = StructTypeContext(_ctx, getState())
		try enterRule(_localctx, 184, GoParser.RULE_structType)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(920)
		 	try match(GoParser.Tokens.STRUCT.rawValue)
		 	setState(921)
		 	try match(GoParser.Tokens.L_CURLY.rawValue)
		 	setState(927)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == GoParser.Tokens.IDENTIFIER.rawValue || _la == GoParser.Tokens.STAR.rawValue) {
		 		setState(922)
		 		try fieldDecl()
		 		setState(923)
		 		try eos()


		 		setState(929)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(930)
		 	try match(GoParser.Tokens.R_CURLY.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FieldDeclContext: ParserRuleContext {
		open var tag: String_Context!
			open
			func identifierList() -> IdentifierListContext? {
				return getRuleContext(IdentifierListContext.self, 0)
			}
			open
			func type_() -> Type_Context? {
				return getRuleContext(Type_Context.self, 0)
			}
			open
			func embeddedField() -> EmbeddedFieldContext? {
				return getRuleContext(EmbeddedFieldContext.self, 0)
			}
			open
			func string_() -> String_Context? {
				return getRuleContext(String_Context.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_fieldDecl
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterFieldDecl(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitFieldDecl(self)
			}
		}
	}
	@discardableResult
	 open func fieldDecl() throws -> FieldDeclContext {
		var _localctx: FieldDeclContext
		_localctx = FieldDeclContext(_ctx, getState())
		try enterRule(_localctx, 186, GoParser.RULE_fieldDecl)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(936)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,106, _ctx)) {
		 	case 1:
		 		setState(932)
		 		try identifierList()
		 		setState(933)
		 		try type_()

		 		break
		 	case 2:
		 		setState(935)
		 		try embeddedField()

		 		break
		 	default: break
		 	}
		 	setState(939)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,107,_ctx)) {
		 	case 1:
		 		setState(938)
		 		try {
		 				let assignmentValue = try string_()
		 				_localctx.castdown(FieldDeclContext.self).tag = assignmentValue
		 		     }()


		 		break
		 	default: break
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class String_Context: ParserRuleContext {
			open
			func RAW_STRING_LIT() -> TerminalNode? {
				return getToken(GoParser.Tokens.RAW_STRING_LIT.rawValue, 0)
			}
			open
			func INTERPRETED_STRING_LIT() -> TerminalNode? {
				return getToken(GoParser.Tokens.INTERPRETED_STRING_LIT.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_string_
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterString_(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitString_(self)
			}
		}
	}
	@discardableResult
	 open func string_() throws -> String_Context {
		var _localctx: String_Context
		_localctx = String_Context(_ctx, getState())
		try enterRule(_localctx, 188, GoParser.RULE_string_)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(941)
		 	_la = try _input.LA(1)
		 	if (!(_la == GoParser.Tokens.RAW_STRING_LIT.rawValue || _la == GoParser.Tokens.INTERPRETED_STRING_LIT.rawValue)) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class EmbeddedFieldContext: ParserRuleContext {
			open
			func typeName() -> TypeNameContext? {
				return getRuleContext(TypeNameContext.self, 0)
			}
			open
			func STAR() -> TerminalNode? {
				return getToken(GoParser.Tokens.STAR.rawValue, 0)
			}
			open
			func typeArgs() -> TypeArgsContext? {
				return getRuleContext(TypeArgsContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_embeddedField
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterEmbeddedField(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitEmbeddedField(self)
			}
		}
	}
	@discardableResult
	 open func embeddedField() throws -> EmbeddedFieldContext {
		var _localctx: EmbeddedFieldContext
		_localctx = EmbeddedFieldContext(_ctx, getState())
		try enterRule(_localctx, 190, GoParser.RULE_embeddedField)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(944)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (_la == GoParser.Tokens.STAR.rawValue) {
		 		setState(943)
		 		try match(GoParser.Tokens.STAR.rawValue)

		 	}

		 	setState(946)
		 	try typeName()
		 	setState(948)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,109,_ctx)) {
		 	case 1:
		 		setState(947)
		 		try typeArgs()

		 		break
		 	default: break
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FunctionLitContext: ParserRuleContext {
			open
			func FUNC() -> TerminalNode? {
				return getToken(GoParser.Tokens.FUNC.rawValue, 0)
			}
			open
			func signature() -> SignatureContext? {
				return getRuleContext(SignatureContext.self, 0)
			}
			open
			func block() -> BlockContext? {
				return getRuleContext(BlockContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_functionLit
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterFunctionLit(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitFunctionLit(self)
			}
		}
	}
	@discardableResult
	 open func functionLit() throws -> FunctionLitContext {
		var _localctx: FunctionLitContext
		_localctx = FunctionLitContext(_ctx, getState())
		try enterRule(_localctx, 192, GoParser.RULE_functionLit)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(950)
		 	try match(GoParser.Tokens.FUNC.rawValue)
		 	setState(951)
		 	try signature()
		 	setState(952)
		 	try block()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class IndexContext: ParserRuleContext {
			open
			func L_BRACKET() -> TerminalNode? {
				return getToken(GoParser.Tokens.L_BRACKET.rawValue, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
			open
			func R_BRACKET() -> TerminalNode? {
				return getToken(GoParser.Tokens.R_BRACKET.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_index
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterIndex(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitIndex(self)
			}
		}
	}
	@discardableResult
	 open func index() throws -> IndexContext {
		var _localctx: IndexContext
		_localctx = IndexContext(_ctx, getState())
		try enterRule(_localctx, 194, GoParser.RULE_index)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(954)
		 	try match(GoParser.Tokens.L_BRACKET.rawValue)
		 	setState(955)
		 	try expression(0)
		 	setState(956)
		 	try match(GoParser.Tokens.R_BRACKET.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Slice_Context: ParserRuleContext {
			open
			func L_BRACKET() -> TerminalNode? {
				return getToken(GoParser.Tokens.L_BRACKET.rawValue, 0)
			}
			open
			func R_BRACKET() -> TerminalNode? {
				return getToken(GoParser.Tokens.R_BRACKET.rawValue, 0)
			}
			open
			func COLON() -> [TerminalNode] {
				return getTokens(GoParser.Tokens.COLON.rawValue)
			}
			open
			func COLON(_ i:Int) -> TerminalNode? {
				return getToken(GoParser.Tokens.COLON.rawValue, i)
			}
			open
			func expression() -> [ExpressionContext] {
				return getRuleContexts(ExpressionContext.self)
			}
			open
			func expression(_ i: Int) -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_slice_
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterSlice_(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitSlice_(self)
			}
		}
	}
	@discardableResult
	 open func slice_() throws -> Slice_Context {
		var _localctx: Slice_Context
		_localctx = Slice_Context(_ctx, getState())
		try enterRule(_localctx, 196, GoParser.RULE_slice_)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(958)
		 	try match(GoParser.Tokens.L_BRACKET.rawValue)
		 	setState(974)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,113, _ctx)) {
		 	case 1:
		 		setState(960)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & -288230371386978792) != 0) || ((Int64((_la - 64)) & ~0x3f) == 0 && ((Int64(1) << (_la - 64)) & 99135) != 0)) {
		 			setState(959)
		 			try expression(0)

		 		}

		 		setState(962)
		 		try match(GoParser.Tokens.COLON.rawValue)
		 		setState(964)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & -288230371386978792) != 0) || ((Int64((_la - 64)) & ~0x3f) == 0 && ((Int64(1) << (_la - 64)) & 99135) != 0)) {
		 			setState(963)
		 			try expression(0)

		 		}


		 		break
		 	case 2:
		 		setState(967)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & -288230371386978792) != 0) || ((Int64((_la - 64)) & ~0x3f) == 0 && ((Int64(1) << (_la - 64)) & 99135) != 0)) {
		 			setState(966)
		 			try expression(0)

		 		}

		 		setState(969)
		 		try match(GoParser.Tokens.COLON.rawValue)
		 		setState(970)
		 		try expression(0)
		 		setState(971)
		 		try match(GoParser.Tokens.COLON.rawValue)
		 		setState(972)
		 		try expression(0)

		 		break
		 	default: break
		 	}
		 	setState(976)
		 	try match(GoParser.Tokens.R_BRACKET.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TypeAssertionContext: ParserRuleContext {
			open
			func DOT() -> TerminalNode? {
				return getToken(GoParser.Tokens.DOT.rawValue, 0)
			}
			open
			func L_PAREN() -> TerminalNode? {
				return getToken(GoParser.Tokens.L_PAREN.rawValue, 0)
			}
			open
			func type_() -> Type_Context? {
				return getRuleContext(Type_Context.self, 0)
			}
			open
			func R_PAREN() -> TerminalNode? {
				return getToken(GoParser.Tokens.R_PAREN.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_typeAssertion
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterTypeAssertion(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitTypeAssertion(self)
			}
		}
	}
	@discardableResult
	 open func typeAssertion() throws -> TypeAssertionContext {
		var _localctx: TypeAssertionContext
		_localctx = TypeAssertionContext(_ctx, getState())
		try enterRule(_localctx, 198, GoParser.RULE_typeAssertion)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(978)
		 	try match(GoParser.Tokens.DOT.rawValue)
		 	setState(979)
		 	try match(GoParser.Tokens.L_PAREN.rawValue)
		 	setState(980)
		 	try type_()
		 	setState(981)
		 	try match(GoParser.Tokens.R_PAREN.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ArgumentsContext: ParserRuleContext {
			open
			func L_PAREN() -> TerminalNode? {
				return getToken(GoParser.Tokens.L_PAREN.rawValue, 0)
			}
			open
			func R_PAREN() -> TerminalNode? {
				return getToken(GoParser.Tokens.R_PAREN.rawValue, 0)
			}
			open
			func expressionList() -> ExpressionListContext? {
				return getRuleContext(ExpressionListContext.self, 0)
			}
			open
			func type_() -> Type_Context? {
				return getRuleContext(Type_Context.self, 0)
			}
			open
			func ELLIPSIS() -> TerminalNode? {
				return getToken(GoParser.Tokens.ELLIPSIS.rawValue, 0)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(GoParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(GoParser.Tokens.COMMA.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_arguments
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterArguments(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitArguments(self)
			}
		}
	}
	@discardableResult
	 open func arguments() throws -> ArgumentsContext {
		var _localctx: ArgumentsContext
		_localctx = ArgumentsContext(_ctx, getState())
		try enterRule(_localctx, 200, GoParser.RULE_arguments)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(983)
		 	try match(GoParser.Tokens.L_PAREN.rawValue)
		 	setState(998)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & -288230371386978792) != 0) || ((Int64((_la - 64)) & ~0x3f) == 0 && ((Int64(1) << (_la - 64)) & 99135) != 0)) {
		 		setState(990)
		 		try _errHandler.sync(self)
		 		switch(try getInterpreter().adaptivePredict(_input,115, _ctx)) {
		 		case 1:
		 			setState(984)
		 			try expressionList()

		 			break
		 		case 2:
		 			setState(985)
		 			try type_()
		 			setState(988)
		 			try _errHandler.sync(self)
		 			switch (try getInterpreter().adaptivePredict(_input,114,_ctx)) {
		 			case 1:
		 				setState(986)
		 				try match(GoParser.Tokens.COMMA.rawValue)
		 				setState(987)
		 				try expressionList()

		 				break
		 			default: break
		 			}

		 			break
		 		default: break
		 		}
		 		setState(993)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (_la == GoParser.Tokens.ELLIPSIS.rawValue) {
		 			setState(992)
		 			try match(GoParser.Tokens.ELLIPSIS.rawValue)

		 		}

		 		setState(996)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (_la == GoParser.Tokens.COMMA.rawValue) {
		 			setState(995)
		 			try match(GoParser.Tokens.COMMA.rawValue)

		 		}


		 	}

		 	setState(1000)
		 	try match(GoParser.Tokens.R_PAREN.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class MethodExprContext: ParserRuleContext {
			open
			func type_() -> Type_Context? {
				return getRuleContext(Type_Context.self, 0)
			}
			open
			func DOT() -> TerminalNode? {
				return getToken(GoParser.Tokens.DOT.rawValue, 0)
			}
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(GoParser.Tokens.IDENTIFIER.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_methodExpr
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterMethodExpr(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitMethodExpr(self)
			}
		}
	}
	@discardableResult
	 open func methodExpr() throws -> MethodExprContext {
		var _localctx: MethodExprContext
		_localctx = MethodExprContext(_ctx, getState())
		try enterRule(_localctx, 202, GoParser.RULE_methodExpr)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(1002)
		 	try type_()
		 	setState(1003)
		 	try match(GoParser.Tokens.DOT.rawValue)
		 	setState(1004)
		 	try match(GoParser.Tokens.IDENTIFIER.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class EosContext: ParserRuleContext {
			open
			func SEMI() -> TerminalNode? {
				return getToken(GoParser.Tokens.SEMI.rawValue, 0)
			}
			open
			func EOF() -> TerminalNode? {
				return getToken(GoParser.Tokens.EOF.rawValue, 0)
			}
			open
			func EOS() -> TerminalNode? {
				return getToken(GoParser.Tokens.EOS.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GoParser.RULE_eos
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.enterEos(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GoParserListener {
				listener.exitEos(self)
			}
		}
	}
	@discardableResult
	 open func eos() throws -> EosContext {
		var _localctx: EosContext
		_localctx = EosContext(_ctx, getState())
		try enterRule(_localctx, 204, GoParser.RULE_eos)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(1010)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,119, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(1006)
		 		try match(GoParser.Tokens.SEMI.rawValue)

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(1007)
		 		try match(GoParser.Tokens.EOF.rawValue)

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(1008)
		 		try match(GoParser.Tokens.EOS.rawValue)

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(1009)
		 		if (!(closingBracket())) {
		 		    throw ANTLRException.recognition(e:FailedPredicateException(self, "closingBracket()"))
		 		}

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	override open
	func sempred(_ _localctx: RuleContext?, _ ruleIndex: Int,  _ predIndex: Int)throws -> Bool {
		switch (ruleIndex) {
		case  24:
			return try statementList_sempred(_localctx?.castdown(StatementListContext.self), predIndex)
		case  76:
			return try expression_sempred(_localctx?.castdown(ExpressionContext.self), predIndex)
		case  77:
			return try primaryExpr_sempred(_localctx?.castdown(PrimaryExprContext.self), predIndex)
		case  102:
			return try eos_sempred(_localctx?.castdown(EosContext.self), predIndex)
	    default: return true
		}
	}
	private func statementList_sempred(_ _localctx: StatementListContext!,  _ predIndex: Int) throws -> Bool {
		switch (predIndex) {
		    case 0:return closingBracket()
		    default: return true
		}
	}
	private func expression_sempred(_ _localctx: ExpressionContext!,  _ predIndex: Int) throws -> Bool {
		switch (predIndex) {
		    case 1:return precpred(_ctx, 5)
		    case 2:return precpred(_ctx, 4)
		    case 3:return precpred(_ctx, 3)
		    case 4:return precpred(_ctx, 2)
		    case 5:return precpred(_ctx, 1)
		    default: return true
		}
	}
	private func primaryExpr_sempred(_ _localctx: PrimaryExprContext!,  _ predIndex: Int) throws -> Bool {
		switch (predIndex) {
		    case 6:return precpred(_ctx, 1)
		    default: return true
		}
	}
	private func eos_sempred(_ _localctx: EosContext!,  _ predIndex: Int) throws -> Bool {
		switch (predIndex) {
		    case 7:return closingBracket()
		    default: return true
		}
	}

	static let _serializedATN:[Int] = [
		4,1,89,1013,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,2,
		7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,14,7,14,
		2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,20,2,21,7,21,
		2,22,7,22,2,23,7,23,2,24,7,24,2,25,7,25,2,26,7,26,2,27,7,27,2,28,7,28,
		2,29,7,29,2,30,7,30,2,31,7,31,2,32,7,32,2,33,7,33,2,34,7,34,2,35,7,35,
		2,36,7,36,2,37,7,37,2,38,7,38,2,39,7,39,2,40,7,40,2,41,7,41,2,42,7,42,
		2,43,7,43,2,44,7,44,2,45,7,45,2,46,7,46,2,47,7,47,2,48,7,48,2,49,7,49,
		2,50,7,50,2,51,7,51,2,52,7,52,2,53,7,53,2,54,7,54,2,55,7,55,2,56,7,56,
		2,57,7,57,2,58,7,58,2,59,7,59,2,60,7,60,2,61,7,61,2,62,7,62,2,63,7,63,
		2,64,7,64,2,65,7,65,2,66,7,66,2,67,7,67,2,68,7,68,2,69,7,69,2,70,7,70,
		2,71,7,71,2,72,7,72,2,73,7,73,2,74,7,74,2,75,7,75,2,76,7,76,2,77,7,77,
		2,78,7,78,2,79,7,79,2,80,7,80,2,81,7,81,2,82,7,82,2,83,7,83,2,84,7,84,
		2,85,7,85,2,86,7,86,2,87,7,87,2,88,7,88,2,89,7,89,2,90,7,90,2,91,7,91,
		2,92,7,92,2,93,7,93,2,94,7,94,2,95,7,95,2,96,7,96,2,97,7,97,2,98,7,98,
		2,99,7,99,2,100,7,100,2,101,7,101,2,102,7,102,1,0,1,0,1,0,1,0,1,0,5,0,
		212,8,0,10,0,12,0,215,9,0,1,0,1,0,1,0,3,0,220,8,0,1,0,1,0,5,0,224,8,0,
		10,0,12,0,227,9,0,1,0,1,0,1,1,1,1,1,1,1,2,1,2,1,2,1,2,1,2,1,2,5,2,240,
		8,2,10,2,12,2,243,9,2,1,2,3,2,246,8,2,1,3,3,3,249,8,3,1,3,1,3,1,4,1,4,
		1,5,1,5,1,5,3,5,258,8,5,1,6,1,6,1,6,1,6,1,6,1,6,5,6,266,8,6,10,6,12,6,
		269,9,6,1,6,3,6,272,8,6,1,7,1,7,3,7,276,8,7,1,7,1,7,3,7,280,8,7,1,8,1,
		8,1,8,5,8,285,8,8,10,8,12,8,288,9,8,1,9,1,9,1,9,5,9,293,8,9,10,9,12,9,
		296,9,9,1,10,1,10,1,10,1,10,1,10,1,10,5,10,304,8,10,10,10,12,10,307,9,
		10,1,10,3,10,310,8,10,1,11,1,11,3,11,314,8,11,1,12,1,12,1,12,1,12,1,13,
		1,13,3,13,322,8,13,1,13,1,13,1,14,1,14,1,14,1,14,5,14,330,8,14,10,14,12,
		14,333,9,14,1,14,1,14,1,15,1,15,1,15,1,16,1,16,1,16,5,16,343,8,16,10,16,
		12,16,346,9,16,1,17,3,17,349,8,17,1,17,1,17,1,18,1,18,1,18,3,18,356,8,
		18,1,18,1,18,3,18,360,8,18,1,19,1,19,1,19,1,19,1,19,3,19,367,8,19,1,20,
		1,20,1,21,1,21,1,21,1,21,1,21,1,21,5,21,377,8,21,10,21,12,21,380,9,21,
		1,21,3,21,383,8,21,1,22,1,22,1,22,1,22,3,22,389,8,22,1,22,1,22,3,22,393,
		8,22,1,23,1,23,3,23,397,8,23,1,23,1,23,1,24,3,24,402,8,24,1,24,3,24,405,
		8,24,1,24,3,24,408,8,24,1,24,1,24,1,24,4,24,413,8,24,11,24,12,24,414,1,
		25,1,25,1,25,1,25,1,25,1,25,1,25,1,25,1,25,1,25,1,25,1,25,1,25,1,25,1,
		25,3,25,432,8,25,1,26,1,26,1,26,1,26,1,26,3,26,439,8,26,1,27,1,27,1,28,
		1,28,1,28,1,28,1,29,1,29,1,29,1,30,1,30,1,30,1,30,1,31,3,31,455,8,31,1,
		31,1,31,1,32,1,32,1,32,1,32,1,33,1,33,1,33,3,33,466,8,33,1,34,1,34,3,34,
		470,8,34,1,35,1,35,3,35,474,8,35,1,36,1,36,3,36,478,8,36,1,37,1,37,1,37,
		1,38,1,38,1,39,1,39,1,39,1,40,1,40,1,40,1,40,1,40,1,40,1,40,1,40,1,40,
		3,40,497,8,40,1,40,1,40,1,40,1,40,3,40,503,8,40,3,40,505,8,40,1,41,1,41,
		3,41,509,8,41,1,42,1,42,3,42,513,8,42,1,42,3,42,516,8,42,1,42,1,42,3,42,
		520,8,42,3,42,522,8,42,1,42,1,42,5,42,526,8,42,10,42,12,42,529,9,42,1,
		42,1,42,1,43,1,43,1,43,3,43,536,8,43,1,44,1,44,1,44,3,44,541,8,44,1,45,
		1,45,1,45,1,45,1,45,1,45,1,45,1,45,1,45,3,45,552,8,45,1,45,1,45,5,45,556,
		8,45,10,45,12,45,559,9,45,1,45,1,45,1,46,1,46,3,46,565,8,46,1,46,1,46,
		1,46,1,46,1,46,1,46,1,47,1,47,1,47,3,47,576,8,47,1,48,1,48,1,48,3,48,581,
		8,48,1,49,1,49,3,49,585,8,49,1,49,1,49,1,49,3,49,590,8,49,5,49,592,8,49,
		10,49,12,49,595,9,49,1,50,1,50,1,50,5,50,600,8,50,10,50,12,50,603,9,50,
		1,50,1,50,1,51,1,51,1,51,3,51,610,8,51,1,52,1,52,1,52,3,52,615,8,52,1,
		52,3,52,618,8,52,1,53,1,53,1,53,1,53,1,53,1,53,3,53,626,8,53,1,53,1,53,
		1,54,1,54,3,54,632,8,54,1,54,1,54,3,54,636,8,54,3,54,638,8,54,1,54,1,54,
		1,55,3,55,643,8,55,1,55,1,55,3,55,647,8,55,1,55,1,55,3,55,651,8,55,1,56,
		1,56,1,56,1,56,1,56,1,56,3,56,659,8,56,1,56,1,56,1,56,1,57,1,57,1,57,1,
		58,1,58,3,58,669,8,58,1,58,1,58,1,58,1,58,1,58,3,58,676,8,58,1,59,1,59,
		1,59,3,59,681,8,59,1,59,1,59,1,60,1,60,3,60,687,8,60,1,61,1,61,1,61,1,
		61,1,61,1,61,1,61,1,61,3,61,697,8,61,1,62,1,62,1,62,1,62,1,62,1,63,1,63,
		1,64,1,64,1,65,1,65,1,65,1,66,1,66,1,66,1,66,3,66,715,8,66,1,66,1,66,5,
		66,719,8,66,10,66,12,66,722,9,66,1,66,1,66,1,67,1,67,1,67,1,67,1,68,1,
		68,1,68,1,68,1,68,1,68,1,69,1,69,1,69,1,69,1,69,3,69,741,8,69,1,69,1,69,
		1,70,1,70,1,70,1,70,1,70,1,70,3,70,751,8,70,1,71,1,71,1,71,1,72,1,72,3,
		72,758,8,72,1,73,1,73,3,73,762,8,73,1,74,1,74,1,74,1,74,5,74,768,8,74,
		10,74,12,74,771,9,74,1,74,3,74,774,8,74,3,74,776,8,74,1,74,1,74,1,75,3,
		75,781,8,75,1,75,3,75,784,8,75,1,75,1,75,1,76,1,76,1,76,1,76,3,76,792,
		8,76,1,76,1,76,1,76,1,76,1,76,1,76,1,76,1,76,1,76,1,76,1,76,1,76,1,76,
		1,76,1,76,5,76,809,8,76,10,76,12,76,812,9,76,1,77,1,77,1,77,1,77,3,77,
		818,8,77,1,77,1,77,1,77,1,77,1,77,1,77,1,77,3,77,827,8,77,5,77,829,8,77,
		10,77,12,77,832,9,77,1,78,1,78,1,78,1,78,3,78,838,8,78,1,78,1,78,1,79,
		1,79,1,79,3,79,845,8,79,1,79,1,79,1,79,1,79,3,79,851,8,79,1,80,1,80,1,
		80,3,80,856,8,80,1,81,1,81,1,81,1,81,3,81,862,8,81,1,82,1,82,1,83,1,83,
		1,84,1,84,1,84,1,84,1,85,1,85,1,85,1,86,1,86,1,86,1,86,1,86,1,86,1,86,
		1,86,1,86,1,86,3,86,885,8,86,3,86,887,8,86,1,87,1,87,1,87,3,87,892,8,87,
		3,87,894,8,87,1,87,1,87,1,88,1,88,1,88,5,88,901,8,88,10,88,12,88,904,9,
		88,1,89,1,89,1,89,3,89,909,8,89,1,89,1,89,1,90,1,90,3,90,915,8,90,1,91,
		1,91,3,91,919,8,91,1,92,1,92,1,92,1,92,1,92,5,92,926,8,92,10,92,12,92,
		929,9,92,1,92,1,92,1,93,1,93,1,93,1,93,3,93,937,8,93,1,93,3,93,940,8,93,
		1,94,1,94,1,95,3,95,945,8,95,1,95,1,95,3,95,949,8,95,1,96,1,96,1,96,1,
		96,1,97,1,97,1,97,1,97,1,98,1,98,3,98,961,8,98,1,98,1,98,3,98,965,8,98,
		1,98,3,98,968,8,98,1,98,1,98,1,98,1,98,1,98,3,98,975,8,98,1,98,1,98,1,
		99,1,99,1,99,1,99,1,99,1,100,1,100,1,100,1,100,1,100,3,100,989,8,100,3,
		100,991,8,100,1,100,3,100,994,8,100,1,100,3,100,997,8,100,3,100,999,8,
		100,1,100,1,100,1,101,1,101,1,101,1,101,1,102,1,102,1,102,1,102,3,102,
		1011,8,102,1,102,0,2,152,154,103,0,2,4,6,8,10,12,14,16,18,20,22,24,26,
		28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60,62,64,66,68,70,72,74,
		76,78,80,82,84,86,88,90,92,94,96,98,100,102,104,106,108,110,112,114,116,
		118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,
		154,156,158,160,162,164,166,168,170,172,174,176,178,180,182,184,186,188,
		190,192,194,196,198,200,202,204,0,9,2,0,27,27,38,38,1,0,39,40,2,0,51,56,
		59,63,1,0,58,64,2,0,52,56,62,63,2,0,51,51,59,61,1,0,45,50,2,0,65,68,72,
		73,1,0,79,80,1078,0,206,1,0,0,0,2,230,1,0,0,0,4,233,1,0,0,0,6,248,1,0,
		0,0,8,252,1,0,0,0,10,257,1,0,0,0,12,259,1,0,0,0,14,273,1,0,0,0,16,281,
		1,0,0,0,18,289,1,0,0,0,20,297,1,0,0,0,22,313,1,0,0,0,24,315,1,0,0,0,26,
		319,1,0,0,0,28,325,1,0,0,0,30,336,1,0,0,0,32,339,1,0,0,0,34,348,1,0,0,
		0,36,352,1,0,0,0,38,361,1,0,0,0,40,368,1,0,0,0,42,370,1,0,0,0,44,384,1,
		0,0,0,46,394,1,0,0,0,48,412,1,0,0,0,50,431,1,0,0,0,52,438,1,0,0,0,54,440,
		1,0,0,0,56,442,1,0,0,0,58,446,1,0,0,0,60,449,1,0,0,0,62,454,1,0,0,0,64,
		458,1,0,0,0,66,462,1,0,0,0,68,467,1,0,0,0,70,471,1,0,0,0,72,475,1,0,0,
		0,74,479,1,0,0,0,76,482,1,0,0,0,78,484,1,0,0,0,80,487,1,0,0,0,82,508,1,
		0,0,0,84,510,1,0,0,0,86,532,1,0,0,0,88,540,1,0,0,0,90,542,1,0,0,0,92,564,
		1,0,0,0,94,572,1,0,0,0,96,580,1,0,0,0,98,584,1,0,0,0,100,596,1,0,0,0,102,
		606,1,0,0,0,104,617,1,0,0,0,106,625,1,0,0,0,108,629,1,0,0,0,110,642,1,
		0,0,0,112,658,1,0,0,0,114,663,1,0,0,0,116,675,1,0,0,0,118,677,1,0,0,0,
		120,686,1,0,0,0,122,696,1,0,0,0,124,698,1,0,0,0,126,703,1,0,0,0,128,705,
		1,0,0,0,130,707,1,0,0,0,132,710,1,0,0,0,134,725,1,0,0,0,136,729,1,0,0,
		0,138,740,1,0,0,0,140,750,1,0,0,0,142,752,1,0,0,0,144,755,1,0,0,0,146,
		761,1,0,0,0,148,763,1,0,0,0,150,780,1,0,0,0,152,791,1,0,0,0,154,817,1,
		0,0,0,156,833,1,0,0,0,158,850,1,0,0,0,160,855,1,0,0,0,162,861,1,0,0,0,
		164,863,1,0,0,0,166,865,1,0,0,0,168,867,1,0,0,0,170,871,1,0,0,0,172,886,
		1,0,0,0,174,888,1,0,0,0,176,897,1,0,0,0,178,908,1,0,0,0,180,914,1,0,0,
		0,182,918,1,0,0,0,184,920,1,0,0,0,186,936,1,0,0,0,188,941,1,0,0,0,190,
		944,1,0,0,0,192,950,1,0,0,0,194,954,1,0,0,0,196,958,1,0,0,0,198,978,1,
		0,0,0,200,983,1,0,0,0,202,1002,1,0,0,0,204,1010,1,0,0,0,206,207,3,2,1,
		0,207,213,3,204,102,0,208,209,3,4,2,0,209,210,3,204,102,0,210,212,1,0,
		0,0,211,208,1,0,0,0,212,215,1,0,0,0,213,211,1,0,0,0,213,214,1,0,0,0,214,
		225,1,0,0,0,215,213,1,0,0,0,216,220,3,36,18,0,217,220,3,38,19,0,218,220,
		3,10,5,0,219,216,1,0,0,0,219,217,1,0,0,0,219,218,1,0,0,0,220,221,1,0,0,
		0,221,222,3,204,102,0,222,224,1,0,0,0,223,219,1,0,0,0,224,227,1,0,0,0,
		225,223,1,0,0,0,225,226,1,0,0,0,226,228,1,0,0,0,227,225,1,0,0,0,228,229,
		5,0,0,1,229,1,1,0,0,0,230,231,5,14,0,0,231,232,5,27,0,0,232,3,1,0,0,0,
		233,245,5,23,0,0,234,246,3,6,3,0,235,241,5,28,0,0,236,237,3,6,3,0,237,
		238,3,204,102,0,238,240,1,0,0,0,239,236,1,0,0,0,240,243,1,0,0,0,241,239,
		1,0,0,0,241,242,1,0,0,0,242,244,1,0,0,0,243,241,1,0,0,0,244,246,5,29,0,
		0,245,234,1,0,0,0,245,235,1,0,0,0,246,5,1,0,0,0,247,249,7,0,0,0,248,247,
		1,0,0,0,248,249,1,0,0,0,249,250,1,0,0,0,250,251,3,8,4,0,251,7,1,0,0,0,
		252,253,3,188,94,0,253,9,1,0,0,0,254,258,3,12,6,0,255,258,3,20,10,0,256,
		258,3,42,21,0,257,254,1,0,0,0,257,255,1,0,0,0,257,256,1,0,0,0,258,11,1,
		0,0,0,259,271,5,16,0,0,260,272,3,14,7,0,261,267,5,28,0,0,262,263,3,14,
		7,0,263,264,3,204,102,0,264,266,1,0,0,0,265,262,1,0,0,0,266,269,1,0,0,
		0,267,265,1,0,0,0,267,268,1,0,0,0,268,270,1,0,0,0,269,267,1,0,0,0,270,
		272,5,29,0,0,271,260,1,0,0,0,271,261,1,0,0,0,272,13,1,0,0,0,273,279,3,
		16,8,0,274,276,3,116,58,0,275,274,1,0,0,0,275,276,1,0,0,0,276,277,1,0,
		0,0,277,278,5,34,0,0,278,280,3,18,9,0,279,275,1,0,0,0,279,280,1,0,0,0,
		280,15,1,0,0,0,281,286,5,27,0,0,282,283,5,35,0,0,283,285,5,27,0,0,284,
		282,1,0,0,0,285,288,1,0,0,0,286,284,1,0,0,0,286,287,1,0,0,0,287,17,1,0,
		0,0,288,286,1,0,0,0,289,294,3,152,76,0,290,291,5,35,0,0,291,293,3,152,
		76,0,292,290,1,0,0,0,293,296,1,0,0,0,294,292,1,0,0,0,294,295,1,0,0,0,295,
		19,1,0,0,0,296,294,1,0,0,0,297,309,5,20,0,0,298,310,3,22,11,0,299,305,
		5,28,0,0,300,301,3,22,11,0,301,302,3,204,102,0,302,304,1,0,0,0,303,300,
		1,0,0,0,304,307,1,0,0,0,305,303,1,0,0,0,305,306,1,0,0,0,306,308,1,0,0,
		0,307,305,1,0,0,0,308,310,5,29,0,0,309,298,1,0,0,0,309,299,1,0,0,0,310,
		21,1,0,0,0,311,314,3,24,12,0,312,314,3,26,13,0,313,311,1,0,0,0,313,312,
		1,0,0,0,314,23,1,0,0,0,315,316,5,27,0,0,316,317,5,34,0,0,317,318,3,116,
		58,0,318,25,1,0,0,0,319,321,5,27,0,0,320,322,3,28,14,0,321,320,1,0,0,0,
		321,322,1,0,0,0,322,323,1,0,0,0,323,324,3,116,58,0,324,27,1,0,0,0,325,
		326,5,32,0,0,326,331,3,30,15,0,327,328,5,35,0,0,328,330,3,30,15,0,329,
		327,1,0,0,0,330,333,1,0,0,0,331,329,1,0,0,0,331,332,1,0,0,0,332,334,1,
		0,0,0,333,331,1,0,0,0,334,335,5,33,0,0,335,29,1,0,0,0,336,337,3,16,8,0,
		337,338,3,32,16,0,338,31,1,0,0,0,339,344,3,34,17,0,340,341,5,51,0,0,341,
		343,3,34,17,0,342,340,1,0,0,0,343,346,1,0,0,0,344,342,1,0,0,0,344,345,
		1,0,0,0,345,33,1,0,0,0,346,344,1,0,0,0,347,349,5,57,0,0,348,347,1,0,0,
		0,348,349,1,0,0,0,349,350,1,0,0,0,350,351,3,116,58,0,351,35,1,0,0,0,352,
		353,5,3,0,0,353,355,5,27,0,0,354,356,3,28,14,0,355,354,1,0,0,0,355,356,
		1,0,0,0,356,357,1,0,0,0,357,359,3,144,72,0,358,360,3,46,23,0,359,358,1,
		0,0,0,359,360,1,0,0,0,360,37,1,0,0,0,361,362,5,3,0,0,362,363,3,40,20,0,
		363,364,5,27,0,0,364,366,3,144,72,0,365,367,3,46,23,0,366,365,1,0,0,0,
		366,367,1,0,0,0,367,39,1,0,0,0,368,369,3,148,74,0,369,41,1,0,0,0,370,382,
		5,25,0,0,371,383,3,44,22,0,372,378,5,28,0,0,373,374,3,44,22,0,374,375,
		3,204,102,0,375,377,1,0,0,0,376,373,1,0,0,0,377,380,1,0,0,0,378,376,1,
		0,0,0,378,379,1,0,0,0,379,381,1,0,0,0,380,378,1,0,0,0,381,383,5,29,0,0,
		382,371,1,0,0,0,382,372,1,0,0,0,383,43,1,0,0,0,384,392,3,16,8,0,385,388,
		3,116,58,0,386,387,5,34,0,0,387,389,3,18,9,0,388,386,1,0,0,0,388,389,1,
		0,0,0,389,393,1,0,0,0,390,391,5,34,0,0,391,393,3,18,9,0,392,385,1,0,0,
		0,392,390,1,0,0,0,393,45,1,0,0,0,394,396,5,30,0,0,395,397,3,48,24,0,396,
		395,1,0,0,0,396,397,1,0,0,0,397,398,1,0,0,0,398,399,5,31,0,0,399,47,1,
		0,0,0,400,402,5,36,0,0,401,400,1,0,0,0,401,402,1,0,0,0,402,408,1,0,0,0,
		403,405,5,88,0,0,404,403,1,0,0,0,404,405,1,0,0,0,405,408,1,0,0,0,406,408,
		4,24,0,0,407,401,1,0,0,0,407,404,1,0,0,0,407,406,1,0,0,0,408,409,1,0,0,
		0,409,410,3,50,25,0,410,411,3,204,102,0,411,413,1,0,0,0,412,407,1,0,0,
		0,413,414,1,0,0,0,414,412,1,0,0,0,414,415,1,0,0,0,415,49,1,0,0,0,416,432,
		3,10,5,0,417,432,3,66,33,0,418,432,3,52,26,0,419,432,3,114,57,0,420,432,
		3,68,34,0,421,432,3,70,35,0,422,432,3,72,36,0,423,432,3,74,37,0,424,432,
		3,76,38,0,425,432,3,46,23,0,426,432,3,80,40,0,427,432,3,82,41,0,428,432,
		3,100,50,0,429,432,3,108,54,0,430,432,3,78,39,0,431,416,1,0,0,0,431,417,
		1,0,0,0,431,418,1,0,0,0,431,419,1,0,0,0,431,420,1,0,0,0,431,421,1,0,0,
		0,431,422,1,0,0,0,431,423,1,0,0,0,431,424,1,0,0,0,431,425,1,0,0,0,431,
		426,1,0,0,0,431,427,1,0,0,0,431,428,1,0,0,0,431,429,1,0,0,0,431,430,1,
		0,0,0,432,51,1,0,0,0,433,439,3,56,28,0,434,439,3,58,29,0,435,439,3,60,
		30,0,436,439,3,54,27,0,437,439,3,64,32,0,438,433,1,0,0,0,438,434,1,0,0,
		0,438,435,1,0,0,0,438,436,1,0,0,0,438,437,1,0,0,0,439,53,1,0,0,0,440,441,
		3,152,76,0,441,55,1,0,0,0,442,443,3,152,76,0,443,444,5,64,0,0,444,445,
		3,152,76,0,445,57,1,0,0,0,446,447,3,152,76,0,447,448,7,1,0,0,448,59,1,
		0,0,0,449,450,3,18,9,0,450,451,3,62,31,0,451,452,3,18,9,0,452,61,1,0,0,
		0,453,455,7,2,0,0,454,453,1,0,0,0,454,455,1,0,0,0,455,456,1,0,0,0,456,
		457,5,34,0,0,457,63,1,0,0,0,458,459,3,16,8,0,459,460,5,41,0,0,460,461,
		3,18,9,0,461,65,1,0,0,0,462,463,5,27,0,0,463,465,5,37,0,0,464,466,3,50,
		25,0,465,464,1,0,0,0,465,466,1,0,0,0,466,67,1,0,0,0,467,469,5,24,0,0,468,
		470,3,18,9,0,469,468,1,0,0,0,469,470,1,0,0,0,470,69,1,0,0,0,471,473,5,
		1,0,0,472,474,5,27,0,0,473,472,1,0,0,0,473,474,1,0,0,0,474,71,1,0,0,0,
		475,477,5,21,0,0,476,478,5,27,0,0,477,476,1,0,0,0,477,478,1,0,0,0,478,
		73,1,0,0,0,479,480,5,13,0,0,480,481,5,27,0,0,481,75,1,0,0,0,482,483,5,
		17,0,0,483,77,1,0,0,0,484,485,5,7,0,0,485,486,3,152,76,0,486,79,1,0,0,
		0,487,496,5,18,0,0,488,497,3,152,76,0,489,490,3,204,102,0,490,491,3,152,
		76,0,491,497,1,0,0,0,492,493,3,52,26,0,493,494,3,204,102,0,494,495,3,152,
		76,0,495,497,1,0,0,0,496,488,1,0,0,0,496,489,1,0,0,0,496,492,1,0,0,0,497,
		498,1,0,0,0,498,504,3,46,23,0,499,502,5,12,0,0,500,503,3,80,40,0,501,503,
		3,46,23,0,502,500,1,0,0,0,502,501,1,0,0,0,503,505,1,0,0,0,504,499,1,0,
		0,0,504,505,1,0,0,0,505,81,1,0,0,0,506,509,3,84,42,0,507,509,3,90,45,0,
		508,506,1,0,0,0,508,507,1,0,0,0,509,83,1,0,0,0,510,521,5,15,0,0,511,513,
		3,152,76,0,512,511,1,0,0,0,512,513,1,0,0,0,513,522,1,0,0,0,514,516,3,52,
		26,0,515,514,1,0,0,0,515,516,1,0,0,0,516,517,1,0,0,0,517,519,3,204,102,
		0,518,520,3,152,76,0,519,518,1,0,0,0,519,520,1,0,0,0,520,522,1,0,0,0,521,
		512,1,0,0,0,521,515,1,0,0,0,522,523,1,0,0,0,523,527,5,30,0,0,524,526,3,
		86,43,0,525,524,1,0,0,0,526,529,1,0,0,0,527,525,1,0,0,0,527,528,1,0,0,
		0,528,530,1,0,0,0,529,527,1,0,0,0,530,531,5,31,0,0,531,85,1,0,0,0,532,
		533,3,88,44,0,533,535,5,37,0,0,534,536,3,48,24,0,535,534,1,0,0,0,535,536,
		1,0,0,0,536,87,1,0,0,0,537,538,5,6,0,0,538,541,3,18,9,0,539,541,5,2,0,
		0,540,537,1,0,0,0,540,539,1,0,0,0,541,89,1,0,0,0,542,551,5,15,0,0,543,
		552,3,92,46,0,544,545,3,204,102,0,545,546,3,92,46,0,546,552,1,0,0,0,547,
		548,3,52,26,0,548,549,3,204,102,0,549,550,3,92,46,0,550,552,1,0,0,0,551,
		543,1,0,0,0,551,544,1,0,0,0,551,547,1,0,0,0,552,553,1,0,0,0,553,557,5,
		30,0,0,554,556,3,94,47,0,555,554,1,0,0,0,556,559,1,0,0,0,557,555,1,0,0,
		0,557,558,1,0,0,0,558,560,1,0,0,0,559,557,1,0,0,0,560,561,5,31,0,0,561,
		91,1,0,0,0,562,563,5,27,0,0,563,565,5,41,0,0,564,562,1,0,0,0,564,565,1,
		0,0,0,565,566,1,0,0,0,566,567,3,154,77,0,567,568,5,38,0,0,568,569,5,28,
		0,0,569,570,5,20,0,0,570,571,5,29,0,0,571,93,1,0,0,0,572,573,3,96,48,0,
		573,575,5,37,0,0,574,576,3,48,24,0,575,574,1,0,0,0,575,576,1,0,0,0,576,
		95,1,0,0,0,577,578,5,6,0,0,578,581,3,98,49,0,579,581,5,2,0,0,580,577,1,
		0,0,0,580,579,1,0,0,0,581,97,1,0,0,0,582,585,3,116,58,0,583,585,5,26,0,
		0,584,582,1,0,0,0,584,583,1,0,0,0,585,593,1,0,0,0,586,589,5,35,0,0,587,
		590,3,116,58,0,588,590,5,26,0,0,589,587,1,0,0,0,589,588,1,0,0,0,590,592,
		1,0,0,0,591,586,1,0,0,0,592,595,1,0,0,0,593,591,1,0,0,0,593,594,1,0,0,
		0,594,99,1,0,0,0,595,593,1,0,0,0,596,597,5,5,0,0,597,601,5,30,0,0,598,
		600,3,102,51,0,599,598,1,0,0,0,600,603,1,0,0,0,601,599,1,0,0,0,601,602,
		1,0,0,0,602,604,1,0,0,0,603,601,1,0,0,0,604,605,5,31,0,0,605,101,1,0,0,
		0,606,607,3,104,52,0,607,609,5,37,0,0,608,610,3,48,24,0,609,608,1,0,0,
		0,609,610,1,0,0,0,610,103,1,0,0,0,611,614,5,6,0,0,612,615,3,56,28,0,613,
		615,3,106,53,0,614,612,1,0,0,0,614,613,1,0,0,0,615,618,1,0,0,0,616,618,
		5,2,0,0,617,611,1,0,0,0,617,616,1,0,0,0,618,105,1,0,0,0,619,620,3,18,9,
		0,620,621,5,34,0,0,621,626,1,0,0,0,622,623,3,16,8,0,623,624,5,41,0,0,624,
		626,1,0,0,0,625,619,1,0,0,0,625,622,1,0,0,0,625,626,1,0,0,0,626,627,1,
		0,0,0,627,628,3,152,76,0,628,107,1,0,0,0,629,637,5,22,0,0,630,632,3,152,
		76,0,631,630,1,0,0,0,631,632,1,0,0,0,632,638,1,0,0,0,633,638,3,110,55,
		0,634,636,3,112,56,0,635,634,1,0,0,0,635,636,1,0,0,0,636,638,1,0,0,0,637,
		631,1,0,0,0,637,633,1,0,0,0,637,635,1,0,0,0,638,639,1,0,0,0,639,640,3,
		46,23,0,640,109,1,0,0,0,641,643,3,52,26,0,642,641,1,0,0,0,642,643,1,0,
		0,0,643,644,1,0,0,0,644,646,3,204,102,0,645,647,3,152,76,0,646,645,1,0,
		0,0,646,647,1,0,0,0,647,648,1,0,0,0,648,650,3,204,102,0,649,651,3,52,26,
		0,650,649,1,0,0,0,650,651,1,0,0,0,651,111,1,0,0,0,652,653,3,18,9,0,653,
		654,5,34,0,0,654,659,1,0,0,0,655,656,3,16,8,0,656,657,5,41,0,0,657,659,
		1,0,0,0,658,652,1,0,0,0,658,655,1,0,0,0,658,659,1,0,0,0,659,660,1,0,0,
		0,660,661,5,19,0,0,661,662,3,152,76,0,662,113,1,0,0,0,663,664,5,8,0,0,
		664,665,3,152,76,0,665,115,1,0,0,0,666,668,3,120,60,0,667,669,3,118,59,
		0,668,667,1,0,0,0,668,669,1,0,0,0,669,676,1,0,0,0,670,676,3,122,61,0,671,
		672,5,28,0,0,672,673,3,116,58,0,673,674,5,29,0,0,674,676,1,0,0,0,675,666,
		1,0,0,0,675,670,1,0,0,0,675,671,1,0,0,0,676,117,1,0,0,0,677,678,5,32,0,
		0,678,680,3,98,49,0,679,681,5,35,0,0,680,679,1,0,0,0,680,681,1,0,0,0,681,
		682,1,0,0,0,682,683,5,33,0,0,683,119,1,0,0,0,684,687,3,168,84,0,685,687,
		5,27,0,0,686,684,1,0,0,0,686,685,1,0,0,0,687,121,1,0,0,0,688,697,3,124,
		62,0,689,697,3,184,92,0,690,697,3,130,65,0,691,697,3,142,71,0,692,697,
		3,132,66,0,693,697,3,134,67,0,694,697,3,136,68,0,695,697,3,138,69,0,696,
		688,1,0,0,0,696,689,1,0,0,0,696,690,1,0,0,0,696,691,1,0,0,0,696,692,1,
		0,0,0,696,693,1,0,0,0,696,694,1,0,0,0,696,695,1,0,0,0,697,123,1,0,0,0,
		698,699,5,32,0,0,699,700,3,126,63,0,700,701,5,33,0,0,701,702,3,128,64,
		0,702,125,1,0,0,0,703,704,3,152,76,0,704,127,1,0,0,0,705,706,3,116,58,
		0,706,129,1,0,0,0,707,708,5,62,0,0,708,709,3,116,58,0,709,131,1,0,0,0,
		710,711,5,4,0,0,711,720,5,30,0,0,712,715,3,140,70,0,713,715,3,32,16,0,
		714,712,1,0,0,0,714,713,1,0,0,0,715,716,1,0,0,0,716,717,3,204,102,0,717,
		719,1,0,0,0,718,714,1,0,0,0,719,722,1,0,0,0,720,718,1,0,0,0,720,721,1,
		0,0,0,721,723,1,0,0,0,722,720,1,0,0,0,723,724,5,31,0,0,724,133,1,0,0,0,
		725,726,5,32,0,0,726,727,5,33,0,0,727,728,3,128,64,0,728,135,1,0,0,0,729,
		730,5,9,0,0,730,731,5,32,0,0,731,732,3,116,58,0,732,733,5,33,0,0,733,734,
		3,128,64,0,734,137,1,0,0,0,735,741,5,11,0,0,736,737,5,11,0,0,737,741,5,
		64,0,0,738,739,5,64,0,0,739,741,5,11,0,0,740,735,1,0,0,0,740,736,1,0,0,
		0,740,738,1,0,0,0,741,742,1,0,0,0,742,743,3,128,64,0,743,139,1,0,0,0,744,
		745,5,27,0,0,745,746,3,148,74,0,746,747,3,146,73,0,747,751,1,0,0,0,748,
		749,5,27,0,0,749,751,3,148,74,0,750,744,1,0,0,0,750,748,1,0,0,0,751,141,
		1,0,0,0,752,753,5,3,0,0,753,754,3,144,72,0,754,143,1,0,0,0,755,757,3,148,
		74,0,756,758,3,146,73,0,757,756,1,0,0,0,757,758,1,0,0,0,758,145,1,0,0,
		0,759,762,3,148,74,0,760,762,3,116,58,0,761,759,1,0,0,0,761,760,1,0,0,
		0,762,147,1,0,0,0,763,775,5,28,0,0,764,769,3,150,75,0,765,766,5,35,0,0,
		766,768,3,150,75,0,767,765,1,0,0,0,768,771,1,0,0,0,769,767,1,0,0,0,769,
		770,1,0,0,0,770,773,1,0,0,0,771,769,1,0,0,0,772,774,5,35,0,0,773,772,1,
		0,0,0,773,774,1,0,0,0,774,776,1,0,0,0,775,764,1,0,0,0,775,776,1,0,0,0,
		776,777,1,0,0,0,777,778,5,29,0,0,778,149,1,0,0,0,779,781,3,16,8,0,780,
		779,1,0,0,0,780,781,1,0,0,0,781,783,1,0,0,0,782,784,5,42,0,0,783,782,1,
		0,0,0,783,784,1,0,0,0,784,785,1,0,0,0,785,786,3,116,58,0,786,151,1,0,0,
		0,787,788,6,76,-1,0,788,792,3,154,77,0,789,790,7,3,0,0,790,792,3,152,76,
		6,791,787,1,0,0,0,791,789,1,0,0,0,792,810,1,0,0,0,793,794,10,5,0,0,794,
		795,7,4,0,0,795,809,3,152,76,6,796,797,10,4,0,0,797,798,7,5,0,0,798,809,
		3,152,76,5,799,800,10,3,0,0,800,801,7,6,0,0,801,809,3,152,76,4,802,803,
		10,2,0,0,803,804,5,44,0,0,804,809,3,152,76,3,805,806,10,1,0,0,806,807,
		5,43,0,0,807,809,3,152,76,2,808,793,1,0,0,0,808,796,1,0,0,0,808,799,1,
		0,0,0,808,802,1,0,0,0,808,805,1,0,0,0,809,812,1,0,0,0,810,808,1,0,0,0,
		810,811,1,0,0,0,811,153,1,0,0,0,812,810,1,0,0,0,813,814,6,77,-1,0,814,
		818,3,158,79,0,815,818,3,156,78,0,816,818,3,202,101,0,817,813,1,0,0,0,
		817,815,1,0,0,0,817,816,1,0,0,0,818,830,1,0,0,0,819,826,10,1,0,0,820,821,
		5,38,0,0,821,827,5,27,0,0,822,827,3,194,97,0,823,827,3,196,98,0,824,827,
		3,198,99,0,825,827,3,200,100,0,826,820,1,0,0,0,826,822,1,0,0,0,826,823,
		1,0,0,0,826,824,1,0,0,0,826,825,1,0,0,0,827,829,1,0,0,0,828,819,1,0,0,
		0,829,832,1,0,0,0,830,828,1,0,0,0,830,831,1,0,0,0,831,155,1,0,0,0,832,
		830,1,0,0,0,833,834,3,116,58,0,834,835,5,28,0,0,835,837,3,152,76,0,836,
		838,5,35,0,0,837,836,1,0,0,0,837,838,1,0,0,0,838,839,1,0,0,0,839,840,5,
		29,0,0,840,157,1,0,0,0,841,851,3,160,80,0,842,844,3,166,83,0,843,845,3,
		118,59,0,844,843,1,0,0,0,844,845,1,0,0,0,845,851,1,0,0,0,846,847,5,28,
		0,0,847,848,3,152,76,0,848,849,5,29,0,0,849,851,1,0,0,0,850,841,1,0,0,
		0,850,842,1,0,0,0,850,846,1,0,0,0,851,159,1,0,0,0,852,856,3,162,81,0,853,
		856,3,170,85,0,854,856,3,192,96,0,855,852,1,0,0,0,855,853,1,0,0,0,855,
		854,1,0,0,0,856,161,1,0,0,0,857,862,5,26,0,0,858,862,3,164,82,0,859,862,
		3,188,94,0,860,862,5,69,0,0,861,857,1,0,0,0,861,858,1,0,0,0,861,859,1,
		0,0,0,861,860,1,0,0,0,862,163,1,0,0,0,863,864,7,7,0,0,864,165,1,0,0,0,
		865,866,5,27,0,0,866,167,1,0,0,0,867,868,5,27,0,0,868,869,5,38,0,0,869,
		870,5,27,0,0,870,169,1,0,0,0,871,872,3,172,86,0,872,873,3,174,87,0,873,
		171,1,0,0,0,874,887,3,184,92,0,875,887,3,124,62,0,876,877,5,32,0,0,877,
		878,5,42,0,0,878,879,5,33,0,0,879,887,3,128,64,0,880,887,3,134,67,0,881,
		887,3,136,68,0,882,884,3,120,60,0,883,885,3,118,59,0,884,883,1,0,0,0,884,
		885,1,0,0,0,885,887,1,0,0,0,886,874,1,0,0,0,886,875,1,0,0,0,886,876,1,
		0,0,0,886,880,1,0,0,0,886,881,1,0,0,0,886,882,1,0,0,0,887,173,1,0,0,0,
		888,893,5,30,0,0,889,891,3,176,88,0,890,892,5,35,0,0,891,890,1,0,0,0,891,
		892,1,0,0,0,892,894,1,0,0,0,893,889,1,0,0,0,893,894,1,0,0,0,894,895,1,
		0,0,0,895,896,5,31,0,0,896,175,1,0,0,0,897,902,3,178,89,0,898,899,5,35,
		0,0,899,901,3,178,89,0,900,898,1,0,0,0,901,904,1,0,0,0,902,900,1,0,0,0,
		902,903,1,0,0,0,903,177,1,0,0,0,904,902,1,0,0,0,905,906,3,180,90,0,906,
		907,5,37,0,0,907,909,1,0,0,0,908,905,1,0,0,0,908,909,1,0,0,0,909,910,1,
		0,0,0,910,911,3,182,91,0,911,179,1,0,0,0,912,915,3,152,76,0,913,915,3,
		174,87,0,914,912,1,0,0,0,914,913,1,0,0,0,915,181,1,0,0,0,916,919,3,152,
		76,0,917,919,3,174,87,0,918,916,1,0,0,0,918,917,1,0,0,0,919,183,1,0,0,
		0,920,921,5,10,0,0,921,927,5,30,0,0,922,923,3,186,93,0,923,924,3,204,102,
		0,924,926,1,0,0,0,925,922,1,0,0,0,926,929,1,0,0,0,927,925,1,0,0,0,927,
		928,1,0,0,0,928,930,1,0,0,0,929,927,1,0,0,0,930,931,5,31,0,0,931,185,1,
		0,0,0,932,933,3,16,8,0,933,934,3,116,58,0,934,937,1,0,0,0,935,937,3,190,
		95,0,936,932,1,0,0,0,936,935,1,0,0,0,937,939,1,0,0,0,938,940,3,188,94,
		0,939,938,1,0,0,0,939,940,1,0,0,0,940,187,1,0,0,0,941,942,7,8,0,0,942,
		189,1,0,0,0,943,945,5,62,0,0,944,943,1,0,0,0,944,945,1,0,0,0,945,946,1,
		0,0,0,946,948,3,120,60,0,947,949,3,118,59,0,948,947,1,0,0,0,948,949,1,
		0,0,0,949,191,1,0,0,0,950,951,5,3,0,0,951,952,3,144,72,0,952,953,3,46,
		23,0,953,193,1,0,0,0,954,955,5,32,0,0,955,956,3,152,76,0,956,957,5,33,
		0,0,957,195,1,0,0,0,958,974,5,32,0,0,959,961,3,152,76,0,960,959,1,0,0,
		0,960,961,1,0,0,0,961,962,1,0,0,0,962,964,5,37,0,0,963,965,3,152,76,0,
		964,963,1,0,0,0,964,965,1,0,0,0,965,975,1,0,0,0,966,968,3,152,76,0,967,
		966,1,0,0,0,967,968,1,0,0,0,968,969,1,0,0,0,969,970,5,37,0,0,970,971,3,
		152,76,0,971,972,5,37,0,0,972,973,3,152,76,0,973,975,1,0,0,0,974,960,1,
		0,0,0,974,967,1,0,0,0,975,976,1,0,0,0,976,977,5,33,0,0,977,197,1,0,0,0,
		978,979,5,38,0,0,979,980,5,28,0,0,980,981,3,116,58,0,981,982,5,29,0,0,
		982,199,1,0,0,0,983,998,5,28,0,0,984,991,3,18,9,0,985,988,3,116,58,0,986,
		987,5,35,0,0,987,989,3,18,9,0,988,986,1,0,0,0,988,989,1,0,0,0,989,991,
		1,0,0,0,990,984,1,0,0,0,990,985,1,0,0,0,991,993,1,0,0,0,992,994,5,42,0,
		0,993,992,1,0,0,0,993,994,1,0,0,0,994,996,1,0,0,0,995,997,5,35,0,0,996,
		995,1,0,0,0,996,997,1,0,0,0,997,999,1,0,0,0,998,990,1,0,0,0,998,999,1,
		0,0,0,999,1000,1,0,0,0,1000,1001,5,29,0,0,1001,201,1,0,0,0,1002,1003,3,
		116,58,0,1003,1004,5,38,0,0,1004,1005,5,27,0,0,1005,203,1,0,0,0,1006,1011,
		5,36,0,0,1007,1011,5,0,0,1,1008,1011,5,88,0,0,1009,1011,4,102,7,0,1010,
		1006,1,0,0,0,1010,1007,1,0,0,0,1010,1008,1,0,0,0,1010,1009,1,0,0,0,1011,
		205,1,0,0,0,120,213,219,225,241,245,248,257,267,271,275,279,286,294,305,
		309,313,321,331,344,348,355,359,366,378,382,388,392,396,401,404,407,414,
		431,438,454,465,469,473,477,496,502,504,508,512,515,519,521,527,535,540,
		551,557,564,575,580,584,589,593,601,609,614,617,625,631,635,637,642,646,
		650,658,668,675,680,686,696,714,720,740,750,757,761,769,773,775,780,783,
		791,808,810,817,826,830,837,844,850,855,861,884,886,891,893,902,908,914,
		918,927,936,939,944,948,960,964,967,974,988,990,993,996,998,1010
	]

	public
	static let _ATN = try! ATNDeserializer().deserialize(_serializedATN)
}
