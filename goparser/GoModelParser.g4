grammar GoModelParser;

api:            spec*;
spec:           syntaxLit
                |typeSpec
                ;

// syntax
syntaxLit:      {match(p,"syntax")}syntaxToken=ID assign='=' {checkVersion(p)}version=STRING;

// import
importSpec:     importLit|importBlock;
importLit:      {match(p,"import")}importToken=ID importValue ;
importBlock:    {match(p,"import")}importToken=ID '(' importBlockValue+ ')';
importBlockValue:   importValue;
importValue:    {checkImportValue(p)}STRING;
 

// type
typeSpec:       typeLit
                |typeBlock;

// eg: type Foo int
typeLit:        {match(p,"type")}typeToken=ID  typeLitBody;
// eg: type (...)
typeBlock:      {match(p,"type")}typeToken=ID lp='(' typeBlockBody* rp=')';
typeLitBody:    typeStruct|typeAlias;
typeBlockBody:  typeBlockStruct|typeBlockAlias;
typeStruct:     {checkKeyword(p)}structName=ID structToken=ID? lbrace='{'  field* rbrace='}';
typeAlias:      {checkKeyword(p)}alias=ID assign='='? dataType;
typeBlockStruct: {checkKeyword(p)}structName=ID structToken=ID? lbrace='{'  field* rbrace='}';
typeBlockAlias: {checkKeyword(p)}alias=ID assign='='? dataType;
field:          {isNormal(p)}? normalField|anonymousFiled ;
normalField:    {checkKeyword(p)}fieldName=ID dataType tag=RAW_STRING?;
anonymousFiled: star='*'? ID;
dataType:       {isInterface(p)}ID
                |mapType
                |arrayType
                |inter='interface{}'
                |time='time.Time'
                |pointerType
                |typeStruct
                ;
pointerType:    star='*' {checkKeyword(p)}ID;
mapType:        {match(p,"map")}mapToken=ID lbrack='[' {checkKey(p)}key=ID rbrack=']' value=dataType;
arrayType:      lbrack='[' rbrack=']' dataType;
// eg: type Foo struct { ... }
