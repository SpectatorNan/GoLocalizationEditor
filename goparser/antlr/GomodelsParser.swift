// Generated from ./gomodels/GomodelsParser.g4 by ANTLR 4.13.0
import Antlr4

open class GomodelsParser: Parser {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = GomodelsParser._ATN.getNumberOfDecisions()
          for i in 0..<length {
            decisionToDFA.append(DFA(GomodelsParser._ATN.getDecisionState(i)!, i))
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
                 TIME_LIT = 27, IDENTIFIER = 28, L_PAREN = 29, R_PAREN = 30, 
                 L_CURLY = 31, R_CURLY = 32, L_BRACKET = 33, R_BRACKET = 34, 
                 ASSIGN = 35, COMMA = 36, SEMI = 37, COLON = 38, DOT = 39, 
                 PLUS_PLUS = 40, MINUS_MINUS = 41, DECLARE_ASSIGN = 42, 
                 ELLIPSIS = 43, LOGICAL_OR = 44, LOGICAL_AND = 45, EQUALS = 46, 
                 NOT_EQUALS = 47, LESS = 48, LESS_OR_EQUALS = 49, GREATER = 50, 
                 GREATER_OR_EQUALS = 51, OR = 52, DIV = 53, MOD = 54, LSHIFT = 55, 
                 RSHIFT = 56, BIT_CLEAR = 57, UNDERLYING = 58, EXCLAMATION = 59, 
                 PLUS = 60, MINUS = 61, CARET = 62, STAR = 63, AMPERSAND = 64, 
                 RECEIVE = 65, DECIMAL_LIT = 66, BINARY_LIT = 67, OCTAL_LIT = 68, 
                 HEX_LIT = 69, FLOAT_LIT = 70, DECIMAL_FLOAT_LIT = 71, HEX_FLOAT_LIT = 72, 
                 IMAGINARY_LIT = 73, RUNE_LIT = 74, BYTE_VALUE = 75, OCTAL_BYTE_VALUE = 76, 
                 HEX_BYTE_VALUE = 77, LITTLE_U_VALUE = 78, BIG_U_VALUE = 79, 
                 RAW_STRING_LIT = 80, INTERPRETED_STRING_LIT = 81, NL = 82, 
                 WS = 83, COMMENT = 84, TERMINATOR = 85, LINE_COMMENT = 86, 
                 WS_NLSEMI = 87, COMMENT_NLSEMI = 88, LINE_COMMENT_NLSEMI = 89, 
                 EOS = 90, OTHER = 91
	}

	public
	static let RULE_models = 0, RULE_spec = 1, RULE_typeSpec = 2, RULE_typeBlock = 3, 
            RULE_typeBlockBody = 4, RULE_typeBlockStruct = 5, RULE_typeBlockAlias = 6, 
            RULE_typeLit = 7, RULE_typeLitBody = 8, RULE_typeAlias = 9, 
            RULE_typeStruct = 10, RULE_fieldDecl = 11, RULE_normalField = 12, 
            RULE_anonymousFiled = 13, RULE_dataType = 14, RULE_pointerType = 15, 
            RULE_mapType = 16, RULE_arrayType = 17, RULE_interfaceType = 18, 
            RULE_timeType = 19, RULE_packageClause = 20, RULE_eos = 21

	public
	static let ruleNames: [String] = [
		"models", "spec", "typeSpec", "typeBlock", "typeBlockBody", "typeBlockStruct", 
		"typeBlockAlias", "typeLit", "typeLitBody", "typeAlias", "typeStruct", 
		"fieldDecl", "normalField", "anonymousFiled", "dataType", "pointerType", 
		"mapType", "arrayType", "interfaceType", "timeType", "packageClause", 
		"eos"
	]

	private static let _LITERAL_NAMES: [String?] = [
		nil, "'break'", "'default'", "'func'", "'interface'", "'select'", "'case'", 
		"'defer'", "'go'", "'map'", "'struct'", "'chan'", "'else'", "'goto'", 
		"'package'", "'switch'", "'const'", "'fallthrough'", "'if'", "'range'", 
		"'type'", "'continue'", "'for'", "'import'", "'return'", "'var'", "'nil'", 
		"'time.Time'", nil, "'('", "')'", "'{'", "'}'", "'['", "']'", "'='", "','", 
		"';'", "':'", "'.'", "'++'", "'--'", "':='", "'...'", "'||'", "'&&'", 
		"'=='", "'!='", "'<'", "'<='", "'>'", "'>='", "'|'", "'/'", "'%'", "'<<'", 
		"'>>'", "'&^'", "'~'", "'!'", "'+'", "'-'", "'^'", "'*'", "'&'", "'<-'", 
		nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 
		nil, nil, "'\\n'"
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, "BREAK", "DEFAULT", "FUNC", "INTERFACE", "SELECT", "CASE", "DEFER", 
		"GO", "MAP", "STRUCT", "CHAN", "ELSE", "GOTO", "PACKAGE", "SWITCH", "CONST", 
		"FALLTHROUGH", "IF", "RANGE", "TYPE", "CONTINUE", "FOR", "IMPORT", "RETURN", 
		"VAR", "NIL_LIT", "TIME_LIT", "IDENTIFIER", "L_PAREN", "R_PAREN", "L_CURLY", 
		"R_CURLY", "L_BRACKET", "R_BRACKET", "ASSIGN", "COMMA", "SEMI", "COLON", 
		"DOT", "PLUS_PLUS", "MINUS_MINUS", "DECLARE_ASSIGN", "ELLIPSIS", "LOGICAL_OR", 
		"LOGICAL_AND", "EQUALS", "NOT_EQUALS", "LESS", "LESS_OR_EQUALS", "GREATER", 
		"GREATER_OR_EQUALS", "OR", "DIV", "MOD", "LSHIFT", "RSHIFT", "BIT_CLEAR", 
		"UNDERLYING", "EXCLAMATION", "PLUS", "MINUS", "CARET", "STAR", "AMPERSAND", 
		"RECEIVE", "DECIMAL_LIT", "BINARY_LIT", "OCTAL_LIT", "HEX_LIT", "FLOAT_LIT", 
		"DECIMAL_FLOAT_LIT", "HEX_FLOAT_LIT", "IMAGINARY_LIT", "RUNE_LIT", "BYTE_VALUE", 
		"OCTAL_BYTE_VALUE", "HEX_BYTE_VALUE", "LITTLE_U_VALUE", "BIG_U_VALUE", 
		"RAW_STRING_LIT", "INTERPRETED_STRING_LIT", "NL", "WS", "COMMENT", "TERMINATOR", 
		"LINE_COMMENT", "WS_NLSEMI", "COMMENT_NLSEMI", "LINE_COMMENT_NLSEMI", 
		"EOS", "OTHER"
	]
	public
	static let VOCABULARY = Vocabulary(_LITERAL_NAMES, _SYMBOLIC_NAMES)

	override open
	func getGrammarFileName() -> String { return "GomodelsParser.g4" }

	override open
	func getRuleNames() -> [String] { return GomodelsParser.ruleNames }

	override open
	func getSerializedATN() -> [Int] { return GomodelsParser._serializedATN }

	override open
	func getATN() -> ATN { return GomodelsParser._ATN }


	override open
	func getVocabulary() -> Vocabulary {
	    return GomodelsParser.VOCABULARY
	}

	override public
	init(_ input:TokenStream) throws {
	    RuntimeMetaData.checkVersion("4.13.0", RuntimeMetaData.VERSION)
		try super.init(input)
		_interp = ParserATNSimulator(self,GomodelsParser._ATN,GomodelsParser._decisionToDFA, GomodelsParser._sharedContextCache)
	}


	public class ModelsContext: ParserRuleContext {
			open
			func EOF() -> TerminalNode? {
				return getToken(GomodelsParser.Tokens.EOF.rawValue, 0)
			}
			open
			func spec() -> [SpecContext] {
				return getRuleContexts(SpecContext.self)
			}
			open
			func spec(_ i: Int) -> SpecContext? {
				return getRuleContext(SpecContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return GomodelsParser.RULE_models
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.enterModels(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.exitModels(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? GomodelsParserVisitor {
			    return visitor.visitModels(self)
			}
			else if let visitor = visitor as? GomodelsParserBaseVisitor {
			    return visitor.visitModels(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func models() throws -> ModelsContext {
		var _localctx: ModelsContext
		_localctx = ModelsContext(_ctx, getState())
		try enterRule(_localctx, 0, GomodelsParser.RULE_models)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(47)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == GomodelsParser.Tokens.PACKAGE.rawValue || _la == GomodelsParser.Tokens.TYPE.rawValue) {
		 		setState(44)
		 		try spec()


		 		setState(49)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(50)
		 	try match(GomodelsParser.Tokens.EOF.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class SpecContext: ParserRuleContext {
			open
			func packageClause() -> PackageClauseContext? {
				return getRuleContext(PackageClauseContext.self, 0)
			}
			open
			func typeSpec() -> TypeSpecContext? {
				return getRuleContext(TypeSpecContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GomodelsParser.RULE_spec
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.enterSpec(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.exitSpec(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? GomodelsParserVisitor {
			    return visitor.visitSpec(self)
			}
			else if let visitor = visitor as? GomodelsParserBaseVisitor {
			    return visitor.visitSpec(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func spec() throws -> SpecContext {
		var _localctx: SpecContext
		_localctx = SpecContext(_ctx, getState())
		try enterRule(_localctx, 2, GomodelsParser.RULE_spec)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(54)
		 	try _errHandler.sync(self)
		 	switch (GomodelsParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .PACKAGE:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(52)
		 		try packageClause()

		 		break

		 	case .TYPE:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(53)
		 		try typeSpec()

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
			func TYPE() -> TerminalNode? {
				return getToken(GomodelsParser.Tokens.TYPE.rawValue, 0)
			}
			open
			func typeLit() -> TypeLitContext? {
				return getRuleContext(TypeLitContext.self, 0)
			}
			open
			func typeBlock() -> TypeBlockContext? {
				return getRuleContext(TypeBlockContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GomodelsParser.RULE_typeSpec
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.enterTypeSpec(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.exitTypeSpec(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? GomodelsParserVisitor {
			    return visitor.visitTypeSpec(self)
			}
			else if let visitor = visitor as? GomodelsParserBaseVisitor {
			    return visitor.visitTypeSpec(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func typeSpec() throws -> TypeSpecContext {
		var _localctx: TypeSpecContext
		_localctx = TypeSpecContext(_ctx, getState())
		try enterRule(_localctx, 4, GomodelsParser.RULE_typeSpec)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(56)
		 	try match(GomodelsParser.Tokens.TYPE.rawValue)
		 	setState(59)
		 	try _errHandler.sync(self)
		 	switch (GomodelsParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .IDENTIFIER:
		 		setState(57)
		 		try typeLit()

		 		break

		 	case .L_PAREN:
		 		setState(58)
		 		try typeBlock()

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

	public class TypeBlockContext: ParserRuleContext {
			open
			func L_PAREN() -> TerminalNode? {
				return getToken(GomodelsParser.Tokens.L_PAREN.rawValue, 0)
			}
			open
			func R_PAREN() -> TerminalNode? {
				return getToken(GomodelsParser.Tokens.R_PAREN.rawValue, 0)
			}
			open
			func typeBlockBody() -> [TypeBlockBodyContext] {
				return getRuleContexts(TypeBlockBodyContext.self)
			}
			open
			func typeBlockBody(_ i: Int) -> TypeBlockBodyContext? {
				return getRuleContext(TypeBlockBodyContext.self, i)
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
			return GomodelsParser.RULE_typeBlock
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.enterTypeBlock(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.exitTypeBlock(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? GomodelsParserVisitor {
			    return visitor.visitTypeBlock(self)
			}
			else if let visitor = visitor as? GomodelsParserBaseVisitor {
			    return visitor.visitTypeBlock(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func typeBlock() throws -> TypeBlockContext {
		var _localctx: TypeBlockContext
		_localctx = TypeBlockContext(_ctx, getState())
		try enterRule(_localctx, 6, GomodelsParser.RULE_typeBlock)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(61)
		 	try match(GomodelsParser.Tokens.L_PAREN.rawValue)
		 	setState(67)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == GomodelsParser.Tokens.IDENTIFIER.rawValue) {
		 		setState(62)
		 		try typeBlockBody()
		 		setState(63)
		 		try eos()


		 		setState(69)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(70)
		 	try match(GomodelsParser.Tokens.R_PAREN.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TypeBlockBodyContext: ParserRuleContext {
			open
			func typeBlockStruct() -> TypeBlockStructContext? {
				return getRuleContext(TypeBlockStructContext.self, 0)
			}
			open
			func typeBlockAlias() -> TypeBlockAliasContext? {
				return getRuleContext(TypeBlockAliasContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GomodelsParser.RULE_typeBlockBody
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.enterTypeBlockBody(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.exitTypeBlockBody(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? GomodelsParserVisitor {
			    return visitor.visitTypeBlockBody(self)
			}
			else if let visitor = visitor as? GomodelsParserBaseVisitor {
			    return visitor.visitTypeBlockBody(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func typeBlockBody() throws -> TypeBlockBodyContext {
		var _localctx: TypeBlockBodyContext
		_localctx = TypeBlockBodyContext(_ctx, getState())
		try enterRule(_localctx, 8, GomodelsParser.RULE_typeBlockBody)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(74)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,4, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(72)
		 		try typeBlockStruct()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(73)
		 		try typeBlockAlias()

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

	public class TypeBlockStructContext: ParserRuleContext {
			open
            func IDENTIFIER() -> TerminalNode? {
				return getToken(GomodelsParser.Tokens.IDENTIFIER.rawValue, 0)
			}
			open
			func STRUCT() -> TerminalNode? {
				return getToken(GomodelsParser.Tokens.STRUCT.rawValue, 0)
			}
			open
			func L_CURLY() -> TerminalNode? {
				return getToken(GomodelsParser.Tokens.L_CURLY.rawValue, 0)
			}
			open
			func R_CURLY() -> TerminalNode? {
				return getToken(GomodelsParser.Tokens.R_CURLY.rawValue, 0)
			}
			open
            func fieldDecl() -> [FieldDeclContext] {
				return getRuleContexts(FieldDeclContext.self)
			}
			open
			func fieldDecl(_ i: Int) -> FieldDeclContext? {
				return getRuleContext(FieldDeclContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return GomodelsParser.RULE_typeBlockStruct
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.enterTypeBlockStruct(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.exitTypeBlockStruct(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? GomodelsParserVisitor {
			    return visitor.visitTypeBlockStruct(self)
			}
			else if let visitor = visitor as? GomodelsParserBaseVisitor {
			    return visitor.visitTypeBlockStruct(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func typeBlockStruct() throws -> TypeBlockStructContext {
		var _localctx: TypeBlockStructContext
		_localctx = TypeBlockStructContext(_ctx, getState())
		try enterRule(_localctx, 10, GomodelsParser.RULE_typeBlockStruct)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(76)
		 	try match(GomodelsParser.Tokens.IDENTIFIER.rawValue)
		 	setState(77)
		 	try match(GomodelsParser.Tokens.STRUCT.rawValue)
		 	setState(78)
		 	try match(GomodelsParser.Tokens.L_CURLY.rawValue)
		 	setState(82)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == GomodelsParser.Tokens.IDENTIFIER.rawValue || _la == GomodelsParser.Tokens.STAR.rawValue) {
		 		setState(79)
		 		try fieldDecl()


		 		setState(84)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(85)
		 	try match(GomodelsParser.Tokens.R_CURLY.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TypeBlockAliasContext: ParserRuleContext {
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(GomodelsParser.Tokens.IDENTIFIER.rawValue, 0)
			}
			open
			func dataType() -> DataTypeContext? {
				return getRuleContext(DataTypeContext.self, 0)
			}
			open
			func ASSIGN() -> TerminalNode? {
				return getToken(GomodelsParser.Tokens.ASSIGN.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GomodelsParser.RULE_typeBlockAlias
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.enterTypeBlockAlias(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.exitTypeBlockAlias(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? GomodelsParserVisitor {
			    return visitor.visitTypeBlockAlias(self)
			}
			else if let visitor = visitor as? GomodelsParserBaseVisitor {
			    return visitor.visitTypeBlockAlias(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func typeBlockAlias() throws -> TypeBlockAliasContext {
		var _localctx: TypeBlockAliasContext
		_localctx = TypeBlockAliasContext(_ctx, getState())
		try enterRule(_localctx, 12, GomodelsParser.RULE_typeBlockAlias)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(87)
		 	try match(GomodelsParser.Tokens.IDENTIFIER.rawValue)
		 	setState(89)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (_la == GomodelsParser.Tokens.ASSIGN.rawValue) {
		 		setState(88)
		 		try match(GomodelsParser.Tokens.ASSIGN.rawValue)

		 	}

		 	setState(91)
		 	try dataType()

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
			func typeLitBody() -> TypeLitBodyContext? {
				return getRuleContext(TypeLitBodyContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GomodelsParser.RULE_typeLit
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.enterTypeLit(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.exitTypeLit(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? GomodelsParserVisitor {
			    return visitor.visitTypeLit(self)
			}
			else if let visitor = visitor as? GomodelsParserBaseVisitor {
			    return visitor.visitTypeLit(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func typeLit() throws -> TypeLitContext {
		var _localctx: TypeLitContext
		_localctx = TypeLitContext(_ctx, getState())
		try enterRule(_localctx, 14, GomodelsParser.RULE_typeLit)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(93)
		 	try typeLitBody()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TypeLitBodyContext: ParserRuleContext {
			open
			func typeStruct() -> TypeStructContext? {
				return getRuleContext(TypeStructContext.self, 0)
			}
			open
			func typeAlias() -> TypeAliasContext? {
				return getRuleContext(TypeAliasContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GomodelsParser.RULE_typeLitBody
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.enterTypeLitBody(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.exitTypeLitBody(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? GomodelsParserVisitor {
			    return visitor.visitTypeLitBody(self)
			}
			else if let visitor = visitor as? GomodelsParserBaseVisitor {
			    return visitor.visitTypeLitBody(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func typeLitBody() throws -> TypeLitBodyContext {
		var _localctx: TypeLitBodyContext
		_localctx = TypeLitBodyContext(_ctx, getState())
		try enterRule(_localctx, 16, GomodelsParser.RULE_typeLitBody)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(97)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,7, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(95)
		 		try typeStruct()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(96)
		 		try typeAlias()

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

	public class TypeAliasContext: ParserRuleContext {
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(GomodelsParser.Tokens.IDENTIFIER.rawValue, 0)
			}
			open
			func dataType() -> DataTypeContext? {
				return getRuleContext(DataTypeContext.self, 0)
			}
			open
			func ASSIGN() -> TerminalNode? {
				return getToken(GomodelsParser.Tokens.ASSIGN.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GomodelsParser.RULE_typeAlias
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.enterTypeAlias(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.exitTypeAlias(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? GomodelsParserVisitor {
			    return visitor.visitTypeAlias(self)
			}
			else if let visitor = visitor as? GomodelsParserBaseVisitor {
			    return visitor.visitTypeAlias(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func typeAlias() throws -> TypeAliasContext {
		var _localctx: TypeAliasContext
		_localctx = TypeAliasContext(_ctx, getState())
		try enterRule(_localctx, 18, GomodelsParser.RULE_typeAlias)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(99)
		 	try match(GomodelsParser.Tokens.IDENTIFIER.rawValue)
		 	setState(101)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (_la == GomodelsParser.Tokens.ASSIGN.rawValue) {
		 		setState(100)
		 		try match(GomodelsParser.Tokens.ASSIGN.rawValue)

		 	}

		 	setState(103)
		 	try dataType()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

    public class TypeStructContext: ParserRuleContext {
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(GomodelsParser.Tokens.IDENTIFIER.rawValue, 0)
			}
			open
			func STRUCT() -> TerminalNode? {
				return getToken(GomodelsParser.Tokens.STRUCT.rawValue, 0)
			}
			open
			func L_CURLY() -> TerminalNode? {
				return getToken(GomodelsParser.Tokens.L_CURLY.rawValue, 0)
			}
			open
			func R_CURLY() -> TerminalNode? {
				return getToken(GomodelsParser.Tokens.R_CURLY.rawValue, 0)
			}
			open
			func fieldDecl() -> [FieldDeclContext] {
				return getRuleContexts(FieldDeclContext.self)
			}
			open
			func fieldDecl(_ i: Int) -> FieldDeclContext? {
				return getRuleContext(FieldDeclContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return GomodelsParser.RULE_typeStruct
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.enterTypeStruct(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.exitTypeStruct(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? GomodelsParserVisitor {
			    return visitor.visitTypeStruct(self)
			}
			else if let visitor = visitor as? GomodelsParserBaseVisitor {
			    return visitor.visitTypeStruct(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func typeStruct() throws -> TypeStructContext {
		var _localctx: TypeStructContext
		_localctx = TypeStructContext(_ctx, getState())
		try enterRule(_localctx, 20, GomodelsParser.RULE_typeStruct)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(105)
		 	try match(GomodelsParser.Tokens.IDENTIFIER.rawValue)
		 	setState(106)
		 	try match(GomodelsParser.Tokens.STRUCT.rawValue)
		 	setState(107)
		 	try match(GomodelsParser.Tokens.L_CURLY.rawValue)
		 	setState(111)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == GomodelsParser.Tokens.IDENTIFIER.rawValue || _la == GomodelsParser.Tokens.STAR.rawValue) {
		 		setState(108)
		 		try fieldDecl()


		 		setState(113)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(114)
		 	try match(GomodelsParser.Tokens.R_CURLY.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FieldDeclContext: ParserRuleContext {
			open
			func normalField() -> NormalFieldContext? {
				return getRuleContext(NormalFieldContext.self, 0)
			}
			open
			func anonymousFiled() -> AnonymousFiledContext? {
				return getRuleContext(AnonymousFiledContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GomodelsParser.RULE_fieldDecl
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.enterFieldDecl(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.exitFieldDecl(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? GomodelsParserVisitor {
			    return visitor.visitFieldDecl(self)
			}
			else if let visitor = visitor as? GomodelsParserBaseVisitor {
			    return visitor.visitFieldDecl(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func fieldDecl() throws -> FieldDeclContext {
		var _localctx: FieldDeclContext
		_localctx = FieldDeclContext(_ctx, getState())
		try enterRule(_localctx, 22, GomodelsParser.RULE_fieldDecl)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(118)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,10, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(116)
		 		try normalField()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(117)
		 		try anonymousFiled()

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

	public class NormalFieldContext: ParserRuleContext {
            open var tag: Token!
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(GomodelsParser.Tokens.IDENTIFIER.rawValue, 0)
			}
			open
			func dataType() -> DataTypeContext? {
				return getRuleContext(DataTypeContext.self, 0)
			}
			open
			func RAW_STRING_LIT() -> TerminalNode? {
				return getToken(GomodelsParser.Tokens.RAW_STRING_LIT.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GomodelsParser.RULE_normalField
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.enterNormalField(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.exitNormalField(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? GomodelsParserVisitor {
			    return visitor.visitNormalField(self)
			}
			else if let visitor = visitor as? GomodelsParserBaseVisitor {
			    return visitor.visitNormalField(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func normalField() throws -> NormalFieldContext {
		var _localctx: NormalFieldContext
		_localctx = NormalFieldContext(_ctx, getState())
		try enterRule(_localctx, 24, GomodelsParser.RULE_normalField)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(120)
		 	try match(GomodelsParser.Tokens.IDENTIFIER.rawValue)
		 	setState(121)
		 	try dataType()
		 	setState(123)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (_la == GomodelsParser.Tokens.RAW_STRING_LIT.rawValue) {
		 		setState(122)
		 		try {
		 				let assignmentValue = try match(GomodelsParser.Tokens.RAW_STRING_LIT.rawValue)
		 				_localctx.castdown(NormalFieldContext.self).tag = assignmentValue
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

	public class AnonymousFiledContext: ParserRuleContext {
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(GomodelsParser.Tokens.IDENTIFIER.rawValue, 0)
			}
			open
			func STAR() -> TerminalNode? {
				return getToken(GomodelsParser.Tokens.STAR.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GomodelsParser.RULE_anonymousFiled
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.enterAnonymousFiled(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.exitAnonymousFiled(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? GomodelsParserVisitor {
			    return visitor.visitAnonymousFiled(self)
			}
			else if let visitor = visitor as? GomodelsParserBaseVisitor {
			    return visitor.visitAnonymousFiled(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func anonymousFiled() throws -> AnonymousFiledContext {
		var _localctx: AnonymousFiledContext
		_localctx = AnonymousFiledContext(_ctx, getState())
		try enterRule(_localctx, 26, GomodelsParser.RULE_anonymousFiled)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(126)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (_la == GomodelsParser.Tokens.STAR.rawValue) {
		 		setState(125)
		 		try match(GomodelsParser.Tokens.STAR.rawValue)

		 	}

		 	setState(128)
		 	try match(GomodelsParser.Tokens.IDENTIFIER.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class DataTypeContext: ParserRuleContext {
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(GomodelsParser.Tokens.IDENTIFIER.rawValue, 0)
			}
			open
			func mapType() -> MapTypeContext? {
				return getRuleContext(MapTypeContext.self, 0)
			}
			open
			func arrayType() -> ArrayTypeContext? {
				return getRuleContext(ArrayTypeContext.self, 0)
			}
			open
			func interfaceType() -> InterfaceTypeContext? {
				return getRuleContext(InterfaceTypeContext.self, 0)
			}
			open
			func timeType() -> TimeTypeContext? {
				return getRuleContext(TimeTypeContext.self, 0)
			}
			open
			func pointerType() -> PointerTypeContext? {
				return getRuleContext(PointerTypeContext.self, 0)
			}
			open
			func typeStruct() -> TypeStructContext? {
				return getRuleContext(TypeStructContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GomodelsParser.RULE_dataType
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.enterDataType(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.exitDataType(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? GomodelsParserVisitor {
			    return visitor.visitDataType(self)
			}
			else if let visitor = visitor as? GomodelsParserBaseVisitor {
			    return visitor.visitDataType(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func dataType() throws -> DataTypeContext {
		var _localctx: DataTypeContext
		_localctx = DataTypeContext(_ctx, getState())
		try enterRule(_localctx, 28, GomodelsParser.RULE_dataType)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(137)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,13, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(130)
		 		try match(GomodelsParser.Tokens.IDENTIFIER.rawValue)

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(131)
		 		try mapType()

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(132)
		 		try arrayType()

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(133)
		 		try interfaceType()

		 		break
		 	case 5:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(134)
		 		try timeType()

		 		break
		 	case 6:
		 		try enterOuterAlt(_localctx, 6)
		 		setState(135)
		 		try pointerType()

		 		break
		 	case 7:
		 		try enterOuterAlt(_localctx, 7)
		 		setState(136)
		 		try typeStruct()

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

	public class PointerTypeContext: ParserRuleContext {
			open
			func STAR() -> TerminalNode? {
				return getToken(GomodelsParser.Tokens.STAR.rawValue, 0)
			}
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(GomodelsParser.Tokens.IDENTIFIER.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GomodelsParser.RULE_pointerType
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.enterPointerType(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.exitPointerType(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? GomodelsParserVisitor {
			    return visitor.visitPointerType(self)
			}
			else if let visitor = visitor as? GomodelsParserBaseVisitor {
			    return visitor.visitPointerType(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func pointerType() throws -> PointerTypeContext {
		var _localctx: PointerTypeContext
		_localctx = PointerTypeContext(_ctx, getState())
		try enterRule(_localctx, 30, GomodelsParser.RULE_pointerType)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(139)
		 	try match(GomodelsParser.Tokens.STAR.rawValue)
		 	setState(140)
		 	try match(GomodelsParser.Tokens.IDENTIFIER.rawValue)

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
			func IDENTIFIER() -> [TerminalNode] {
				return getTokens(GomodelsParser.Tokens.IDENTIFIER.rawValue)
			}
			open
			func IDENTIFIER(_ i:Int) -> TerminalNode? {
				return getToken(GomodelsParser.Tokens.IDENTIFIER.rawValue, i)
			}
			open
			func L_BRACKET() -> TerminalNode? {
				return getToken(GomodelsParser.Tokens.L_BRACKET.rawValue, 0)
			}
			open
			func R_BRACKET() -> TerminalNode? {
				return getToken(GomodelsParser.Tokens.R_BRACKET.rawValue, 0)
			}
			open
			func dataType() -> DataTypeContext? {
				return getRuleContext(DataTypeContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GomodelsParser.RULE_mapType
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.enterMapType(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.exitMapType(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? GomodelsParserVisitor {
			    return visitor.visitMapType(self)
			}
			else if let visitor = visitor as? GomodelsParserBaseVisitor {
			    return visitor.visitMapType(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func mapType() throws -> MapTypeContext {
		var _localctx: MapTypeContext
		_localctx = MapTypeContext(_ctx, getState())
		try enterRule(_localctx, 32, GomodelsParser.RULE_mapType)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(142)
		 	try match(GomodelsParser.Tokens.IDENTIFIER.rawValue)
		 	setState(143)
		 	try match(GomodelsParser.Tokens.L_BRACKET.rawValue)
		 	setState(144)
		 	try match(GomodelsParser.Tokens.IDENTIFIER.rawValue)
		 	setState(145)
		 	try match(GomodelsParser.Tokens.R_BRACKET.rawValue)
		 	setState(146)
		 	try dataType()

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
				return getToken(GomodelsParser.Tokens.L_BRACKET.rawValue, 0)
			}
			open
			func R_BRACKET() -> TerminalNode? {
				return getToken(GomodelsParser.Tokens.R_BRACKET.rawValue, 0)
			}
			open
			func dataType() -> DataTypeContext? {
				return getRuleContext(DataTypeContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GomodelsParser.RULE_arrayType
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.enterArrayType(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.exitArrayType(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? GomodelsParserVisitor {
			    return visitor.visitArrayType(self)
			}
			else if let visitor = visitor as? GomodelsParserBaseVisitor {
			    return visitor.visitArrayType(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func arrayType() throws -> ArrayTypeContext {
		var _localctx: ArrayTypeContext
		_localctx = ArrayTypeContext(_ctx, getState())
		try enterRule(_localctx, 34, GomodelsParser.RULE_arrayType)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(148)
		 	try match(GomodelsParser.Tokens.L_BRACKET.rawValue)
		 	setState(149)
		 	try match(GomodelsParser.Tokens.R_BRACKET.rawValue)
		 	setState(150)
		 	try dataType()

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
				return getToken(GomodelsParser.Tokens.INTERFACE.rawValue, 0)
			}
			open
			func L_CURLY() -> TerminalNode? {
				return getToken(GomodelsParser.Tokens.L_CURLY.rawValue, 0)
			}
			open
			func R_CURLY() -> TerminalNode? {
				return getToken(GomodelsParser.Tokens.R_CURLY.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GomodelsParser.RULE_interfaceType
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.enterInterfaceType(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.exitInterfaceType(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? GomodelsParserVisitor {
			    return visitor.visitInterfaceType(self)
			}
			else if let visitor = visitor as? GomodelsParserBaseVisitor {
			    return visitor.visitInterfaceType(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func interfaceType() throws -> InterfaceTypeContext {
		var _localctx: InterfaceTypeContext
		_localctx = InterfaceTypeContext(_ctx, getState())
		try enterRule(_localctx, 36, GomodelsParser.RULE_interfaceType)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(152)
		 	try match(GomodelsParser.Tokens.INTERFACE.rawValue)
		 	setState(153)
		 	try match(GomodelsParser.Tokens.L_CURLY.rawValue)
		 	setState(154)
		 	try match(GomodelsParser.Tokens.R_CURLY.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TimeTypeContext: ParserRuleContext {
			open
			func TIME_LIT() -> TerminalNode? {
				return getToken(GomodelsParser.Tokens.TIME_LIT.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GomodelsParser.RULE_timeType
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.enterTimeType(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.exitTimeType(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? GomodelsParserVisitor {
			    return visitor.visitTimeType(self)
			}
			else if let visitor = visitor as? GomodelsParserBaseVisitor {
			    return visitor.visitTimeType(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func timeType() throws -> TimeTypeContext {
		var _localctx: TimeTypeContext
		_localctx = TimeTypeContext(_ctx, getState())
		try enterRule(_localctx, 38, GomodelsParser.RULE_timeType)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(156)
		 	try match(GomodelsParser.Tokens.TIME_LIT.rawValue)

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
				return getToken(GomodelsParser.Tokens.PACKAGE.rawValue, 0)
			}
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(GomodelsParser.Tokens.IDENTIFIER.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GomodelsParser.RULE_packageClause
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.enterPackageClause(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.exitPackageClause(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? GomodelsParserVisitor {
			    return visitor.visitPackageClause(self)
			}
			else if let visitor = visitor as? GomodelsParserBaseVisitor {
			    return visitor.visitPackageClause(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func packageClause() throws -> PackageClauseContext {
		var _localctx: PackageClauseContext
		_localctx = PackageClauseContext(_ctx, getState())
		try enterRule(_localctx, 40, GomodelsParser.RULE_packageClause)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(158)
		 	try match(GomodelsParser.Tokens.PACKAGE.rawValue)
		 	setState(159)
		 	try {
		 			let assignmentValue = try match(GomodelsParser.Tokens.IDENTIFIER.rawValue)
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

	public class EosContext: ParserRuleContext {
			open
			func SEMI() -> TerminalNode? {
				return getToken(GomodelsParser.Tokens.SEMI.rawValue, 0)
			}
			open
			func EOF() -> TerminalNode? {
				return getToken(GomodelsParser.Tokens.EOF.rawValue, 0)
			}
			open
			func EOS() -> TerminalNode? {
				return getToken(GomodelsParser.Tokens.EOS.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GomodelsParser.RULE_eos
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.enterEos(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GomodelsParserListener {
				listener.exitEos(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? GomodelsParserVisitor {
			    return visitor.visitEos(self)
			}
			else if let visitor = visitor as? GomodelsParserBaseVisitor {
			    return visitor.visitEos(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func eos() throws -> EosContext {
		var _localctx: EosContext
		_localctx = EosContext(_ctx, getState())
		try enterRule(_localctx, 42, GomodelsParser.RULE_eos)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(161)
		 	_la = try _input.LA(1)
		 	if (!(_la == GomodelsParser.Tokens.EOF.rawValue || _la == GomodelsParser.Tokens.SEMI.rawValue || _la == GomodelsParser.Tokens.EOS.rawValue)) {
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

	static let _serializedATN:[Int] = [
		4,1,91,164,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,2,7,
		7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,14,7,14,
		2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,20,2,21,7,21,
		1,0,5,0,46,8,0,10,0,12,0,49,9,0,1,0,1,0,1,1,1,1,3,1,55,8,1,1,2,1,2,1,2,
		3,2,60,8,2,1,3,1,3,1,3,1,3,5,3,66,8,3,10,3,12,3,69,9,3,1,3,1,3,1,4,1,4,
		3,4,75,8,4,1,5,1,5,1,5,1,5,5,5,81,8,5,10,5,12,5,84,9,5,1,5,1,5,1,6,1,6,
		3,6,90,8,6,1,6,1,6,1,7,1,7,1,8,1,8,3,8,98,8,8,1,9,1,9,3,9,102,8,9,1,9,
		1,9,1,10,1,10,1,10,1,10,5,10,110,8,10,10,10,12,10,113,9,10,1,10,1,10,1,
		11,1,11,3,11,119,8,11,1,12,1,12,1,12,3,12,124,8,12,1,13,3,13,127,8,13,
		1,13,1,13,1,14,1,14,1,14,1,14,1,14,1,14,1,14,3,14,138,8,14,1,15,1,15,1,
		15,1,16,1,16,1,16,1,16,1,16,1,16,1,17,1,17,1,17,1,17,1,18,1,18,1,18,1,
		18,1,19,1,19,1,20,1,20,1,20,1,21,1,21,1,21,0,0,22,0,2,4,6,8,10,12,14,16,
		18,20,22,24,26,28,30,32,34,36,38,40,42,0,1,2,1,37,37,90,90,160,0,47,1,
		0,0,0,2,54,1,0,0,0,4,56,1,0,0,0,6,61,1,0,0,0,8,74,1,0,0,0,10,76,1,0,0,
		0,12,87,1,0,0,0,14,93,1,0,0,0,16,97,1,0,0,0,18,99,1,0,0,0,20,105,1,0,0,
		0,22,118,1,0,0,0,24,120,1,0,0,0,26,126,1,0,0,0,28,137,1,0,0,0,30,139,1,
		0,0,0,32,142,1,0,0,0,34,148,1,0,0,0,36,152,1,0,0,0,38,156,1,0,0,0,40,158,
		1,0,0,0,42,161,1,0,0,0,44,46,3,2,1,0,45,44,1,0,0,0,46,49,1,0,0,0,47,45,
		1,0,0,0,47,48,1,0,0,0,48,50,1,0,0,0,49,47,1,0,0,0,50,51,5,0,0,1,51,1,1,
		0,0,0,52,55,3,40,20,0,53,55,3,4,2,0,54,52,1,0,0,0,54,53,1,0,0,0,55,3,1,
		0,0,0,56,59,5,20,0,0,57,60,3,14,7,0,58,60,3,6,3,0,59,57,1,0,0,0,59,58,
		1,0,0,0,60,5,1,0,0,0,61,67,5,29,0,0,62,63,3,8,4,0,63,64,3,42,21,0,64,66,
		1,0,0,0,65,62,1,0,0,0,66,69,1,0,0,0,67,65,1,0,0,0,67,68,1,0,0,0,68,70,
		1,0,0,0,69,67,1,0,0,0,70,71,5,30,0,0,71,7,1,0,0,0,72,75,3,10,5,0,73,75,
		3,12,6,0,74,72,1,0,0,0,74,73,1,0,0,0,75,9,1,0,0,0,76,77,5,28,0,0,77,78,
		5,10,0,0,78,82,5,31,0,0,79,81,3,22,11,0,80,79,1,0,0,0,81,84,1,0,0,0,82,
		80,1,0,0,0,82,83,1,0,0,0,83,85,1,0,0,0,84,82,1,0,0,0,85,86,5,32,0,0,86,
		11,1,0,0,0,87,89,5,28,0,0,88,90,5,35,0,0,89,88,1,0,0,0,89,90,1,0,0,0,90,
		91,1,0,0,0,91,92,3,28,14,0,92,13,1,0,0,0,93,94,3,16,8,0,94,15,1,0,0,0,
		95,98,3,20,10,0,96,98,3,18,9,0,97,95,1,0,0,0,97,96,1,0,0,0,98,17,1,0,0,
		0,99,101,5,28,0,0,100,102,5,35,0,0,101,100,1,0,0,0,101,102,1,0,0,0,102,
		103,1,0,0,0,103,104,3,28,14,0,104,19,1,0,0,0,105,106,5,28,0,0,106,107,
		5,10,0,0,107,111,5,31,0,0,108,110,3,22,11,0,109,108,1,0,0,0,110,113,1,
		0,0,0,111,109,1,0,0,0,111,112,1,0,0,0,112,114,1,0,0,0,113,111,1,0,0,0,
		114,115,5,32,0,0,115,21,1,0,0,0,116,119,3,24,12,0,117,119,3,26,13,0,118,
		116,1,0,0,0,118,117,1,0,0,0,119,23,1,0,0,0,120,121,5,28,0,0,121,123,3,
		28,14,0,122,124,5,80,0,0,123,122,1,0,0,0,123,124,1,0,0,0,124,25,1,0,0,
		0,125,127,5,63,0,0,126,125,1,0,0,0,126,127,1,0,0,0,127,128,1,0,0,0,128,
		129,5,28,0,0,129,27,1,0,0,0,130,138,5,28,0,0,131,138,3,32,16,0,132,138,
		3,34,17,0,133,138,3,36,18,0,134,138,3,38,19,0,135,138,3,30,15,0,136,138,
		3,20,10,0,137,130,1,0,0,0,137,131,1,0,0,0,137,132,1,0,0,0,137,133,1,0,
		0,0,137,134,1,0,0,0,137,135,1,0,0,0,137,136,1,0,0,0,138,29,1,0,0,0,139,
		140,5,63,0,0,140,141,5,28,0,0,141,31,1,0,0,0,142,143,5,28,0,0,143,144,
		5,33,0,0,144,145,5,28,0,0,145,146,5,34,0,0,146,147,3,28,14,0,147,33,1,
		0,0,0,148,149,5,33,0,0,149,150,5,34,0,0,150,151,3,28,14,0,151,35,1,0,0,
		0,152,153,5,4,0,0,153,154,5,31,0,0,154,155,5,32,0,0,155,37,1,0,0,0,156,
		157,5,27,0,0,157,39,1,0,0,0,158,159,5,14,0,0,159,160,5,28,0,0,160,41,1,
		0,0,0,161,162,7,0,0,0,162,43,1,0,0,0,14,47,54,59,67,74,82,89,97,101,111,
		118,123,126,137
	]

	public
	static let _ATN = try! ATNDeserializer().deserialize(_serializedATN)
}
