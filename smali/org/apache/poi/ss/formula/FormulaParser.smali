.class public final Lorg/apache/poi/ss/formula/FormulaParser;
.super Ljava/lang/Object;
.source "FormulaParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final CELL_REF_PATTERN:Ljava/util/regex/Pattern;

.field private static final CR:C = '\r'

.field private static final LF:C = '\n'

.field private static final TAB:C = '\t'

.field private static final log:Lorg/apache/poi/util/POILogger;

.field private static final specAll:Ljava/lang/String; = "All"

.field private static final specData:Ljava/lang/String; = "Data"

.field private static final specHeaders:Ljava/lang/String; = "Headers"

.field private static final specThisRow:Ljava/lang/String; = "This Row"

.field private static final specTotals:Ljava/lang/String; = "Totals"


# instance fields
.field private final _book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

.field private final _formulaLength:I

.field private final _formulaString:Ljava/lang/String;

.field private _inIntersection:Z

.field private _pointer:I

.field private _rootNode:Lorg/apache/poi/ss/formula/ParseNode;

.field private final _rowIndex:I

.field private final _sheetIndex:I

.field private final _ssVersion:Lorg/apache/poi/ss/SpreadsheetVersion;

.field private look:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    const-class v0, Lorg/apache/poi/ss/formula/FormulaParser;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/FormulaParser;->log:Lorg/apache/poi/util/POILogger;

    .line 1008
    const-string v0, "(\\$?[A-Za-z]+)?(\\$?[0-9]+)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/FormulaParser;->CELL_REF_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;II)V
    .locals 1
    .param p1, "formula"    # Ljava/lang/String;
    .param p2, "book"    # Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;
    .param p3, "sheetIndex"    # I
    .param p4, "rowIndex"    # I

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 142
    iput-object p2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    .line 143
    if-nez p2, :cond_0

    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_ssVersion:Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 144
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaLength:I

    .line 145
    iput p3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_sheetIndex:I

    .line 146
    iput p4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_rowIndex:I

    .line 147
    return-void
.end method

.method private Arguments()[Lorg/apache/poi/ss/formula/ParseNode;
    .locals 5

    .line 1451
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1452
    .local v0, "temp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/ParseNode;>;"
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1453
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x29

    if-ne v1, v2, :cond_0

    .line 1454
    sget-object v1, Lorg/apache/poi/ss/formula/ParseNode;->EMPTY_ARRAY:[Lorg/apache/poi/ss/formula/ParseNode;

    return-object v1

    .line 1457
    :cond_0
    const/4 v1, 0x1

    .line 1459
    .local v1, "missedPrevArg":Z
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1460
    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v3}, Lorg/apache/poi/ss/formula/FormulaParser;->isArgumentDelimiter(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1461
    if-eqz v1, :cond_1

    .line 1462
    new-instance v3, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v4, Lorg/apache/poi/ss/formula/ptg/MissingArgPtg;->instance:Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-direct {v3, v4}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1464
    :cond_1
    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    if-ne v3, v2, :cond_2

    .line 1465
    nop

    .line 1478
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/apache/poi/ss/formula/ParseNode;

    .line 1479
    .local v2, "result":[Lorg/apache/poi/ss/formula/ParseNode;
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1480
    return-object v2

    .line 1467
    .end local v2    # "result":[Lorg/apache/poi/ss/formula/ParseNode;
    :cond_2
    const/16 v3, 0x2c

    invoke-direct {p0, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 1468
    const/4 v1, 0x1

    .line 1469
    goto :goto_0

    .line 1471
    :cond_3
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->comparisonExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1472
    const/4 v1, 0x0

    .line 1473
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1474
    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v3}, Lorg/apache/poi/ss/formula/FormulaParser;->isArgumentDelimiter(I)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 1475
    :cond_4
    const-string v2, "\',\' or \')\'"

    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private GetChar()V
    .locals 3

    .line 215
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v0}, Lorg/apache/poi/ss/formula/FormulaParser;->IsWhite(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 216
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x20

    if-ne v0, v2, :cond_1

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_inIntersection:Z

    goto :goto_0

    .line 221
    :cond_0
    iput-boolean v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_inIntersection:Z

    .line 225
    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaLength:I

    if-gt v0, v2, :cond_3

    .line 228
    if-ge v0, v2, :cond_2

    .line 229
    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    goto :goto_1

    .line 233
    :cond_2
    iput v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    .line 234
    iput-boolean v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_inIntersection:Z

    .line 236
    :goto_1
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 238
    return-void

    .line 226
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "too far"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private GetNum()Ljava/lang/String;
    .locals 2

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .local v0, "value":Ljava/lang/StringBuilder;
    :goto_0
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v1}, Lorg/apache/poi/ss/formula/FormulaParser;->IsDigit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 316
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method private static IsAlpha(I)Z
    .locals 1
    .param p0, "c"    # I

    .line 274
    invoke-static {p0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x24

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5f

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static IsDigit(I)Z
    .locals 1
    .param p0, "c"    # I

    .line 279
    invoke-static {p0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    return v0
.end method

.method private static IsWhite(I)Z
    .locals 1
    .param p0, "c"    # I

    .line 284
    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private Match(I)V
    .locals 2
    .param p1, "x"    # I

    .line 300
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    if-ne v0, p1, :cond_0

    .line 307
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 308
    return-void

    .line 301
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private SkipWhite()V
    .locals 1

    .line 289
    :goto_0
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v0}, Lorg/apache/poi/ss/formula/FormulaParser;->IsWhite(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    goto :goto_0

    .line 292
    :cond_0
    return-void
.end method

.method private Term()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 4

    .line 1858
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->powerFactor()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    .local v0, "result":Lorg/apache/poi/ss/formula/ParseNode;
    const/4 v1, 0x0

    .line 1860
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1862
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2f

    .local v1, "operator":Lorg/apache/poi/ss/formula/ptg/Ptg;
    if-eq v2, v3, :cond_0

    .line 1872
    return-object v0

    .line 1868
    :cond_0
    invoke-direct {p0, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 1869
    sget-object v1, Lorg/apache/poi/ss/formula/ptg/DividePtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 1870
    goto :goto_1

    .line 1864
    .end local v1    # "operator":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_1
    invoke-direct {p0, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 1865
    sget-object v1, Lorg/apache/poi/ss/formula/ptg/MultiplyPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 1866
    .restart local v1    # "operator":Lorg/apache/poi/ss/formula/ptg/Ptg;
    nop

    .line 1874
    :goto_1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->powerFactor()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v2

    .line 1875
    .local v2, "other":Lorg/apache/poi/ss/formula/ParseNode;
    new-instance v3, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v3, v1, v0, v2}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;Lorg/apache/poi/ss/formula/ParseNode;)V

    move-object v0, v3

    .line 1876
    .end local v1    # "operator":Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v2    # "other":Lorg/apache/poi/ss/formula/ParseNode;
    goto :goto_0
.end method

.method private addName(Ljava/lang/String;)V
    .locals 2
    .param p1, "functionName"    # Ljava/lang/String;

    .line 1354
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->createName()Lorg/apache/poi/ss/usermodel/Name;

    move-result-object v0

    .line 1355
    .local v0, "name":Lorg/apache/poi/ss/usermodel/Name;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/usermodel/Name;->setFunction(Z)V

    .line 1356
    invoke-interface {v0, p1}, Lorg/apache/poi/ss/usermodel/Name;->setNameName(Ljava/lang/String;)V

    .line 1357
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_sheetIndex:I

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/usermodel/Name;->setSheetIndex(I)V

    .line 1358
    return-void
.end method

.method private additiveExpression()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 4

    .line 1986
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->Term()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    .local v0, "result":Lorg/apache/poi/ss/formula/ParseNode;
    const/4 v1, 0x0

    .line 1988
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1990
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2d

    .local v1, "operator":Lorg/apache/poi/ss/formula/ptg/Ptg;
    if-eq v2, v3, :cond_0

    .line 2000
    return-object v0

    .line 1996
    :cond_0
    invoke-direct {p0, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 1997
    sget-object v1, Lorg/apache/poi/ss/formula/ptg/SubtractPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 1998
    goto :goto_1

    .line 1992
    .end local v1    # "operator":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_1
    invoke-direct {p0, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 1993
    sget-object v1, Lorg/apache/poi/ss/formula/ptg/AddPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 1994
    .restart local v1    # "operator":Lorg/apache/poi/ss/formula/ptg/Ptg;
    nop

    .line 2002
    :goto_1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->Term()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v2

    .line 2003
    .local v2, "other":Lorg/apache/poi/ss/formula/ParseNode;
    new-instance v3, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v3, v1, v0, v2}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;Lorg/apache/poi/ss/formula/ParseNode;)V

    move-object v0, v3

    .line 2004
    .end local v1    # "operator":Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v2    # "other":Lorg/apache/poi/ss/formula/ParseNode;
    goto :goto_0
.end method

.method private static augmentWithMemPtg(Lorg/apache/poi/ss/formula/ParseNode;)Lorg/apache/poi/ss/formula/ParseNode;
    .locals 2
    .param p0, "root"    # Lorg/apache/poi/ss/formula/ParseNode;

    .line 348
    invoke-static {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->needsMemFunc(Lorg/apache/poi/ss/formula/ParseNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getEncodedSize()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;-><init>(I)V

    .local v0, "memPtg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    goto :goto_0

    .line 351
    .end local v0    # "memPtg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_0
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getEncodedSize()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;-><init>(I)V

    .line 353
    .restart local v0    # "memPtg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :goto_0
    new-instance v1, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;)V

    return-object v1
.end method

.method private checkRowLengths([[Ljava/lang/Object;I)V
    .locals 5
    .param p1, "values2d"    # [[Ljava/lang/Object;
    .param p2, "nColumns"    # I

    .line 1600
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1601
    aget-object v1, p1, v0

    array-length v1, v1

    .line 1602
    .local v1, "rowLen":I
    if-ne v1, p2, :cond_0

    .line 1600
    .end local v1    # "rowLen":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1603
    .restart local v1    # "rowLen":I
    :cond_0
    new-instance v2, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Array row "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but row 0 has length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1607
    .end local v0    # "i":I
    .end local v1    # "rowLen":I
    :cond_1
    return-void
.end method

.method private static checkValidRangeOperand(Ljava/lang/String;ILorg/apache/poi/ss/formula/ParseNode;)V
    .locals 3
    .param p0, "sideName"    # Ljava/lang/String;
    .param p1, "currentParsePosition"    # I
    .param p2, "pn"    # Lorg/apache/poi/ss/formula/ParseNode;

    .line 396
    invoke-static {p2}, Lorg/apache/poi/ss/formula/FormulaParser;->isValidRangeOperand(Lorg/apache/poi/ss/formula/ParseNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    return-void

    .line 397
    :cond_0
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of the range operator \':\' at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a proper reference."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private comparisonExpression()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 4

    .line 1927
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->concatExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    .line 1929
    .local v0, "result":Lorg/apache/poi/ss/formula/ParseNode;
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1930
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    packed-switch v1, :pswitch_data_0

    .line 1939
    return-object v0

    .line 1934
    :pswitch_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->getComparisonToken()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    .line 1935
    .local v1, "comparisonToken":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->concatExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v2

    .line 1936
    .local v2, "other":Lorg/apache/poi/ss/formula/ParseNode;
    new-instance v3, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v3, v1, v0, v2}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;Lorg/apache/poi/ss/formula/ParseNode;)V

    move-object v0, v3

    .line 1937
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private concatExpression()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 4

    .line 1970
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->additiveExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    .line 1972
    .local v0, "result":Lorg/apache/poi/ss/formula/ParseNode;
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1973
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x26

    if-eq v1, v2, :cond_0

    .line 1974
    nop

    .line 1980
    return-object v0

    .line 1976
    :cond_0
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 1977
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->additiveExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v1

    .line 1978
    .local v1, "other":Lorg/apache/poi/ss/formula/ParseNode;
    new-instance v2, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v3, Lorg/apache/poi/ss/formula/ptg/ConcatPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    invoke-direct {v2, v3, v0, v1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;Lorg/apache/poi/ss/formula/ParseNode;)V

    move-object v0, v2

    .line 1979
    .end local v1    # "other":Lorg/apache/poi/ss/formula/ParseNode;
    goto :goto_0
.end method

.method private static convertArrayNumber(Lorg/apache/poi/ss/formula/ptg/Ptg;Z)Ljava/lang/Double;
    .locals 3
    .param p0, "ptg"    # Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p1, "isPositive"    # Z

    .line 1663
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/IntPtg;

    if-eqz v0, :cond_0

    .line 1664
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/IntPtg;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/IntPtg;->getValue()I

    move-result v0

    int-to-double v0, v0

    .local v0, "value":D
    goto :goto_0

    .line 1665
    .end local v0    # "value":D
    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    if-eqz v0, :cond_2

    .line 1666
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;->getValue()D

    move-result-wide v0

    .line 1670
    .restart local v0    # "value":D
    :goto_0
    if-nez p1, :cond_1

    .line 1671
    neg-double v0, v0

    .line 1673
    :cond_1
    new-instance v2, Ljava/lang/Double;

    invoke-direct {v2, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object v2

    .line 1668
    .end local v0    # "value":D
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected ptg ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createAreaRef(Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Lorg/apache/poi/ss/util/AreaReference;
    .locals 4
    .param p1, "part1"    # Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;
    .param p2, "part2"    # Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;

    .line 990
    invoke-virtual {p1, p2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isCompatibleForArea(Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 994
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isRow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_ssVersion:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getRep()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getRep()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/util/AreaReference;->getWholeRow(Lorg/apache/poi/ss/SpreadsheetVersion;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/AreaReference;

    move-result-object v0

    return-object v0

    .line 997
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isColumn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 998
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_ssVersion:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getRep()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getRep()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/util/AreaReference;->getWholeColumn(Lorg/apache/poi/ss/SpreadsheetVersion;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/AreaReference;

    move-result-object v0

    return-object v0

    .line 1000
    :cond_1
    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_ssVersion:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    return-object v0

    .line 991
    :cond_2
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has incompatible parts: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getRep()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getRep()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createAreaRefParseNode(Lorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Lorg/apache/poi/ss/formula/ParseNode;
    .locals 2
    .param p1, "sheetIden"    # Lorg/apache/poi/ss/formula/SheetIdentifier;
    .param p2, "part1"    # Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;
    .param p3, "part2"    # Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/FormulaParseException;
        }
    .end annotation

    .line 970
    if-nez p3, :cond_1

    .line 971
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    .line 972
    .local v0, "cr":Lorg/apache/poi/ss/util/CellReference;
    if-nez p1, :cond_0

    .line 973
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    invoke-direct {v1, v0}, Lorg/apache/poi/ss/formula/ptg/RefPtg;-><init>(Lorg/apache/poi/ss/util/CellReference;)V

    .local v1, "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    goto :goto_0

    .line 975
    .end local v1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    invoke-interface {v1, v0, p1}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->get3DReferencePtg(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    .line 977
    .end local v0    # "cr":Lorg/apache/poi/ss/util/CellReference;
    .restart local v1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :goto_0
    goto :goto_1

    .line 978
    .end local v1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_1
    invoke-direct {p0, p2, p3}, Lorg/apache/poi/ss/formula/FormulaParser;->createAreaRef(Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Lorg/apache/poi/ss/util/AreaReference;

    move-result-object v0

    .line 980
    .local v0, "areaRef":Lorg/apache/poi/ss/util/AreaReference;
    if-nez p1, :cond_2

    .line 981
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    invoke-direct {v1, v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;-><init>(Lorg/apache/poi/ss/util/AreaReference;)V

    .restart local v1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    goto :goto_1

    .line 983
    .end local v1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_2
    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    invoke-interface {v1, v0, p1}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->get3DReferencePtg(Lorg/apache/poi/ss/util/AreaReference;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    .line 986
    .end local v0    # "areaRef":Lorg/apache/poi/ss/util/AreaReference;
    .restart local v1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :goto_1
    new-instance v0, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v0
.end method

.method private expected(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .line 254
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/4 v1, 0x1

    const/16 v2, 0x3d

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The specified formula \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' starts with an equals sign which is not allowed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "msg":Ljava/lang/String;
    goto :goto_0

    .line 258
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Parse error near char "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in specified formula \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'. Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    .restart local v0    # "msg":Ljava/lang/String;
    :goto_0
    new-instance v1, Lorg/apache/poi/ss/formula/FormulaParseException;

    invoke-direct {v1, v0}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private function(Ljava/lang/String;)Lorg/apache/poi/ss/formula/ParseNode;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .line 1294
    const/4 v0, 0x0

    .line 1295
    .local v0, "nameToken":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-static {p1}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->isBuiltInFunctionName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1299
    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    if-eqz v1, :cond_5

    .line 1304
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_sheetIndex:I

    invoke-interface {v1, p1, v2}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object v1

    .line 1305
    .local v1, "hName":Lorg/apache/poi/ss/formula/EvaluationName;
    if-eqz v1, :cond_1

    .line 1306
    invoke-interface {v1}, Lorg/apache/poi/ss/formula/EvaluationName;->isFunctionName()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1313
    invoke-interface {v1}, Lorg/apache/poi/ss/formula/EvaluationName;->createPtg()Lorg/apache/poi/ss/formula/ptg/NamePtg;

    move-result-object v0

    goto/16 :goto_0

    .line 1307
    :cond_0
    new-instance v2, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to use name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' as a function, but defined name in workbook does not refer to a function"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1316
    :cond_1
    iget-object v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getNameXPtg(Ljava/lang/String;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    .line 1317
    if-nez v0, :cond_6

    .line 1319
    sget-object v2, Lorg/apache/poi/ss/formula/FormulaParser;->log:Lorg/apache/poi/util/POILogger;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 1320
    new-array v4, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FormulaParser.function: Name \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' is completely unknown in the current workbook."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 1324
    :cond_2
    sget-object v2, Lorg/apache/poi/ss/formula/FormulaParser$1;->$SwitchMap$org$apache$poi$ss$SpreadsheetVersion:[I

    iget-object v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    invoke-interface {v3}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/ss/SpreadsheetVersion;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v5, :cond_4

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1333
    new-instance v2, Lorg/apache/poi/ss/formula/ptg/NameXPxg;

    invoke-direct {v2, p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 1334
    goto :goto_0

    .line 1336
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected spreadsheet version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    invoke-interface {v4}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/ss/SpreadsheetVersion;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1327
    :cond_4
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaParser;->addName(Ljava/lang/String;)V

    .line 1328
    iget-object v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_sheetIndex:I

    invoke-interface {v2, p1, v3}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object v1

    .line 1329
    invoke-interface {v1}, Lorg/apache/poi/ss/formula/EvaluationName;->createPtg()Lorg/apache/poi/ss/formula/ptg/NamePtg;

    move-result-object v0

    .line 1330
    goto :goto_0

    .line 1301
    .end local v1    # "hName":Lorg/apache/poi/ss/formula/EvaluationName;
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Need book to evaluate name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1342
    :cond_6
    :goto_0
    const/16 v1, 0x28

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 1343
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->Arguments()[Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v1

    .line 1344
    .local v1, "args":[Lorg/apache/poi/ss/formula/ParseNode;
    const/16 v2, 0x29

    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 1346
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->getFunction(Ljava/lang/String;Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ParseNode;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v2

    return-object v2
.end method

.method private getBookName()Ljava/lang/String;
    .locals 3

    .line 1138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1139
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 1140
    :goto_0
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_0

    .line 1141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1142
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    goto :goto_0

    .line 1144
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 1145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getComparisonToken()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 4

    .line 1944
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_0

    .line 1945
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 1946
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/EqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    return-object v0

    .line 1948
    :cond_0
    const/16 v2, 0x3e

    if-ne v0, v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 1949
    .local v3, "isGreater":Z
    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 1950
    if-eqz v3, :cond_3

    .line 1951
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    if-ne v0, v1, :cond_2

    .line 1952
    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 1953
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/GreaterEqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    return-object v0

    .line 1955
    :cond_2
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/GreaterThanPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    return-object v0

    .line 1957
    :cond_3
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    if-eq v0, v1, :cond_5

    if-eq v0, v2, :cond_4

    .line 1965
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/LessThanPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    return-object v0

    .line 1962
    :cond_4
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 1963
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/NotEqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    return-object v0

    .line 1959
    :cond_5
    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 1960
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/LessEqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    return-object v0
.end method

.method private getFunction(Ljava/lang/String;Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ParseNode;)Lorg/apache/poi/ss/formula/ParseNode;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namePtg"    # Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p3, "args"    # [Lorg/apache/poi/ss/formula/ParseNode;

    .line 1369
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;->getFunctionByName(Ljava/lang/String;)Lorg/apache/poi/ss/formula/function/FunctionMetadata;

    move-result-object v0

    .line 1370
    .local v0, "fm":Lorg/apache/poi/ss/formula/function/FunctionMetadata;
    array-length v1, p3

    .line 1371
    .local v1, "numArgs":I
    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 1372
    if-eqz p2, :cond_0

    .line 1376
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Lorg/apache/poi/ss/formula/ParseNode;

    .line 1377
    .local v3, "allArgs":[Lorg/apache/poi/ss/formula/ParseNode;
    new-instance v4, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v4, p2}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 1378
    invoke-static {p3, v5, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1379
    new-instance v2, Lorg/apache/poi/ss/formula/ParseNode;

    add-int/lit8 v4, v1, 0x1

    invoke-static {p1, v4}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->create(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ParseNode;)V

    return-object v2

    .line 1373
    .end local v3    # "allArgs":[Lorg/apache/poi/ss/formula/ParseNode;
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "NamePtg must be supplied for external functions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1382
    :cond_1
    if-nez p2, :cond_4

    .line 1385
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->hasFixedArgsLength()Z

    move-result v3

    xor-int/2addr v3, v2

    .line 1386
    .local v3, "isVarArgs":Z
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getIndex()I

    move-result v4

    .line 1387
    .local v4, "funcIx":I
    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    array-length v5, p3

    if-ne v5, v2, :cond_2

    .line 1390
    new-instance v2, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-static {}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getSumSingle()Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    move-result-object v5

    invoke-direct {v2, v5, p3}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ParseNode;)V

    return-object v2

    .line 1393
    :cond_2
    array-length v2, p3

    invoke-direct {p0, v2, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->validateNumArgs(ILorg/apache/poi/ss/formula/function/FunctionMetadata;)V

    .line 1396
    if-eqz v3, :cond_3

    .line 1397
    invoke-static {p1, v1}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->create(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    move-result-object v2

    .local v2, "retval":Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;
    goto :goto_0

    .line 1399
    .end local v2    # "retval":Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;
    :cond_3
    invoke-static {v4}, Lorg/apache/poi/ss/formula/ptg/FuncPtg;->create(I)Lorg/apache/poi/ss/formula/ptg/FuncPtg;

    move-result-object v2

    .line 1401
    .restart local v2    # "retval":Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;
    :goto_0
    new-instance v5, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v5, v2, p3}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ParseNode;)V

    return-object v5

    .line 1383
    .end local v2    # "retval":Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;
    .end local v3    # "isVarArgs":Z
    .end local v4    # "funcIx":I
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "NamePtg no applicable to internal functions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getNumberPtgFromString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 5
    .param p0, "number1"    # Ljava/lang/String;
    .param p1, "number2"    # Ljava/lang/String;
    .param p2, "exponent"    # Ljava/lang/String;

    .line 1800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1802
    .local v0, "number":Ljava/lang/StringBuilder;
    const/16 v1, 0x45

    if-nez p1, :cond_2

    .line 1803
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1805
    if-eqz p2, :cond_0

    .line 1806
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1807
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1810
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1813
    .local v1, "numberStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1816
    .local v2, "intVal":I
    nop

    .line 1817
    invoke-static {v2}, Lorg/apache/poi/ss/formula/ptg/IntPtg;->isInRange(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1818
    new-instance v3, Lorg/apache/poi/ss/formula/ptg/IntPtg;

    invoke-direct {v3, v2}, Lorg/apache/poi/ss/formula/ptg/IntPtg;-><init>(I)V

    return-object v3

    .line 1820
    :cond_1
    new-instance v3, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    invoke-direct {v3, v1}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 1814
    .end local v2    # "intVal":I
    :catch_0
    move-exception v2

    const/4 v3, 0x0

    .line 1815
    .local v2, "e":Ljava/lang/NumberFormatException;
    .local v3, "intVal":I
    new-instance v4, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    invoke-direct {v4, v1}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;-><init>(Ljava/lang/String;)V

    return-object v4

    .line 1823
    .end local v1    # "numberStr":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "intVal":I
    :cond_2
    if-eqz p0, :cond_3

    .line 1824
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1827
    :cond_3
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1828
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1830
    if-eqz p2, :cond_4

    .line 1831
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1832
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1835
    :cond_4
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private getRPNPtg(Lorg/apache/poi/ss/formula/FormulaType;)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 2
    .param p1, "formulaType"    # Lorg/apache/poi/ss/formula/FormulaType;

    .line 2038
    new-instance v0, Lorg/apache/poi/ss/formula/OperandClassTransformer;

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/formula/OperandClassTransformer;-><init>(Lorg/apache/poi/ss/formula/FormulaType;)V

    .line 2040
    .local v0, "oct":Lorg/apache/poi/ss/formula/OperandClassTransformer;
    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_rootNode:Lorg/apache/poi/ss/formula/ParseNode;

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/OperandClassTransformer;->transformFormula(Lorg/apache/poi/ss/formula/ParseNode;)V

    .line 2041
    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_rootNode:Lorg/apache/poi/ss/formula/ParseNode;

    invoke-static {v1}, Lorg/apache/poi/ss/formula/ParseNode;->toTokenArray(Lorg/apache/poi/ss/formula/ParseNode;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    return-object v1
.end method

.method private intersectionExpression()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 6

    .line 1900
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->comparisonExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    .line 1901
    .local v0, "result":Lorg/apache/poi/ss/formula/ParseNode;
    const/4 v1, 0x0

    .line 1903
    .local v1, "hasIntersections":Z
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1904
    iget-boolean v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_inIntersection:Z

    if-eqz v2, :cond_0

    .line 1905
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 1909
    .local v2, "savePointer":I
    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->comparisonExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v3

    .line 1910
    .local v3, "other":Lorg/apache/poi/ss/formula/ParseNode;
    new-instance v4, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v5, Lorg/apache/poi/ss/formula/ptg/IntersectionPtg;->instance:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    invoke-direct {v4, v5, v0, v3}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;Lorg/apache/poi/ss/formula/ParseNode;)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/FormulaParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 1911
    const/4 v1, 0x1

    .line 1912
    goto :goto_0

    .line 1913
    .end local v3    # "other":Lorg/apache/poi/ss/formula/ParseNode;
    :catch_0
    move-exception v3

    .line 1916
    .local v3, "e":Lorg/apache/poi/ss/formula/FormulaParseException;
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    .line 1919
    .end local v2    # "savePointer":I
    .end local v3    # "e":Lorg/apache/poi/ss/formula/FormulaParseException;
    :cond_0
    if-eqz v1, :cond_1

    .line 1920
    invoke-static {v0}, Lorg/apache/poi/ss/formula/FormulaParser;->augmentWithMemPtg(Lorg/apache/poi/ss/formula/ParseNode;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v2

    return-object v2

    .line 1922
    :cond_1
    return-object v0
.end method

.method private static isArgumentDelimiter(I)Z
    .locals 1
    .param p0, "ch"    # I

    .line 1445
    const/16 v0, 0x2c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x29

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isUnquotedSheetNameChar(I)Z
    .locals 2
    .param p0, "ch"    # I

    .line 1238
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1239
    return v1

    .line 1243
    :cond_0
    const/16 v0, 0x80

    if-le p0, v0, :cond_1

    .line 1244
    return v1

    .line 1246
    :cond_1
    const/16 v0, 0x2e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_2

    .line 1251
    const/4 v0, 0x0

    return v0

    .line 1249
    :cond_2
    return v1
.end method

.method private isValidCellReference(Ljava/lang/String;)Z
    .locals 7
    .param p1, "str"    # Ljava/lang/String;

    .line 1259
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_ssVersion:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-static {p1, v0}, Lorg/apache/poi/ss/util/CellReference;->classifyCellReference(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/util/CellReference$NameType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/util/CellReference$NameType;->CELL:Lorg/apache/poi/ss/util/CellReference$NameType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1261
    .local v0, "result":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 1269
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;->getFunctionByName(Ljava/lang/String;)Lorg/apache/poi/ss/formula/function/FunctionMetadata;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 1270
    .local v1, "isFunc":Z
    :goto_1
    if-eqz v1, :cond_3

    .line 1271
    iget v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 1272
    .local v4, "savePointer":I
    iget v5, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {p0, v5}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    .line 1273
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1276
    iget v5, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v6, 0x28

    if-eq v5, v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    move v0, v2

    .line 1277
    invoke-direct {p0, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    .line 1280
    .end local v1    # "isFunc":Z
    .end local v4    # "savePointer":I
    :cond_3
    return v0
.end method

.method private static isValidDefinedNameChar(I)Z
    .locals 2
    .param p0, "ch"    # I

    .line 942
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 943
    return v1

    .line 947
    :cond_0
    const/16 v0, 0x80

    if-le p0, v0, :cond_1

    .line 948
    return v1

    .line 950
    :cond_1
    const/16 v0, 0x2e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3f

    if-eq p0, v0, :cond_2

    const/16 v0, 0x5c

    if-eq p0, v0, :cond_2

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_2

    .line 958
    const/4 v0, 0x0

    return v0

    .line 955
    :cond_2
    return v1
.end method

.method private static isValidRangeOperand(Lorg/apache/poi/ss/formula/ParseNode;)Z
    .locals 5
    .param p0, "a"    # Lorg/apache/poi/ss/formula/ParseNode;

    .line 408
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getToken()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    .line 410
    .local v0, "tkn":Lorg/apache/poi/ss/formula/ptg/Ptg;
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 412
    return v2

    .line 416
    :cond_0
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 417
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;

    .line 418
    .local v1, "afp":Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getDefaultOperandClass()B

    move-result v4

    .line 419
    .local v4, "returnClass":B
    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 421
    .end local v1    # "afp":Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;
    .end local v4    # "returnClass":B
    :cond_2
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    if-eqz v1, :cond_3

    .line 422
    return v3

    .line 424
    :cond_3
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    if-eqz v1, :cond_4

    .line 425
    return v2

    .line 429
    :cond_4
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;

    if-eqz v1, :cond_5

    .line 431
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getChildren()[Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-static {v1}, Lorg/apache/poi/ss/formula/FormulaParser;->isValidRangeOperand(Lorg/apache/poi/ss/formula/ParseNode;)Z

    move-result v1

    return v1

    .line 435
    :cond_5
    sget-object v1, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->REF_INVALID:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    if-ne v0, v1, :cond_6

    .line 436
    return v2

    .line 440
    :cond_6
    return v3
.end method

.method private static needsMemFunc(Lorg/apache/poi/ss/formula/ParseNode;)Z
    .locals 8
    .param p0, "root"    # Lorg/apache/poi/ss/formula/ParseNode;

    .line 362
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getToken()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    .line 363
    .local v0, "token":Lorg/apache/poi/ss/formula/ptg/Ptg;
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 364
    return v2

    .line 366
    :cond_0
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ExternSheetReferenceToken;

    if-eqz v1, :cond_1

    .line 367
    return v2

    .line 369
    :cond_1
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/NamePtg;

    if-nez v1, :cond_9

    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    if-eqz v1, :cond_2

    goto :goto_2

    .line 373
    :cond_2
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    const/4 v3, 0x0

    if-nez v1, :cond_6

    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;

    if-eqz v1, :cond_3

    goto :goto_0

    .line 382
    :cond_3
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    if-eqz v1, :cond_4

    .line 383
    return v3

    .line 385
    :cond_4
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    if-eqz v1, :cond_5

    .line 386
    return v2

    .line 389
    :cond_5
    return v3

    .line 375
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getChildren()[Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v1

    .local v1, "arr$":[Lorg/apache/poi/ss/formula/ParseNode;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v4, :cond_8

    aget-object v6, v1, v5

    .line 376
    .local v6, "child":Lorg/apache/poi/ss/formula/ParseNode;
    invoke-static {v6}, Lorg/apache/poi/ss/formula/FormulaParser;->needsMemFunc(Lorg/apache/poi/ss/formula/ParseNode;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 377
    return v2

    .line 375
    .end local v6    # "child":Lorg/apache/poi/ss/formula/ParseNode;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 380
    .end local v1    # "arr$":[Lorg/apache/poi/ss/formula/ParseNode;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_8
    return v3

    .line 370
    :cond_9
    :goto_2
    return v2
.end method

.method private parse()V
    .locals 3

    .line 2026
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 2027
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 2028
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->unionExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_rootNode:Lorg/apache/poi/ss/formula/ParseNode;

    .line 2030
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaLength:I

    if-le v0, v1, :cond_0

    .line 2035
    return-void

    .line 2031
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unused input ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] after attempting to parse the formula ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2033
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lorg/apache/poi/ss/formula/FormulaParseException;

    invoke-direct {v1, v0}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;I)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1
    .param p0, "formula"    # Ljava/lang/String;
    .param p1, "workbook"    # Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;
    .param p2, "formulaType"    # Lorg/apache/poi/ss/formula/FormulaType;
    .param p3, "sheetIndex"    # I

    .line 190
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 2
    .param p0, "formula"    # Ljava/lang/String;
    .param p1, "workbook"    # Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;
    .param p2, "formulaType"    # Lorg/apache/poi/ss/formula/FormulaType;
    .param p3, "sheetIndex"    # I
    .param p4, "rowIndex"    # I

    .line 169
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaParser;

    invoke-direct {v0, p0, p1, p3, p4}, Lorg/apache/poi/ss/formula/FormulaParser;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;II)V

    .line 170
    .local v0, "fp":Lorg/apache/poi/ss/formula/FormulaParser;
    invoke-direct {v0}, Lorg/apache/poi/ss/formula/FormulaParser;->parse()V

    .line 171
    invoke-direct {v0, p2}, Lorg/apache/poi/ss/formula/FormulaParser;->getRPNPtg(Lorg/apache/poi/ss/formula/FormulaType;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    return-object v1
.end method

.method private parseArray()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 6

    .line 1579
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1581
    .local v0, "rowsData":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Object;>;"
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseArrayRow()[Ljava/lang/Object;

    move-result-object v1

    .line 1582
    .local v1, "singleRowData":[Ljava/lang/Object;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1583
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_0

    .line 1584
    nop

    .line 1591
    .end local v1    # "singleRowData":[Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1592
    .local v1, "nRows":I
    new-array v2, v1, [[Ljava/lang/Object;

    .line 1593
    .local v2, "values2d":[[Ljava/lang/Object;
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1594
    const/4 v3, 0x0

    aget-object v3, v2, v3

    array-length v3, v3

    .line 1595
    .local v3, "nColumns":I
    invoke-direct {p0, v2, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->checkRowLengths([[Ljava/lang/Object;I)V

    .line 1597
    new-instance v4, Lorg/apache/poi/ss/formula/ParseNode;

    new-instance v5, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;

    invoke-direct {v5, v2}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;-><init>([[Ljava/lang/Object;)V

    invoke-direct {v4, v5}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v4

    .line 1586
    .end local v2    # "values2d":[[Ljava/lang/Object;
    .end local v3    # "nColumns":I
    .local v1, "singleRowData":[Ljava/lang/Object;
    :cond_0
    const/16 v3, 0x3b

    if-ne v2, v3, :cond_1

    .line 1589
    invoke-direct {p0, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 1590
    .end local v1    # "singleRowData":[Ljava/lang/Object;
    goto :goto_0

    .line 1587
    .restart local v1    # "singleRowData":[Ljava/lang/Object;
    :cond_1
    const-string v2, "\'}\' or \';\'"

    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private parseArrayItem()Ljava/lang/Object;
    .locals 2

    .line 1634
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1635
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v1, 0x22

    if-eq v0, v1, :cond_3

    const/16 v1, 0x23

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x46

    if-eq v0, v1, :cond_0

    const/16 v1, 0x54

    if-eq v0, v1, :cond_0

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    const/16 v1, 0x74

    if-eq v0, v1, :cond_0

    .line 1647
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseNumber()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->convertArrayNumber(Lorg/apache/poi/ss/formula/ptg/Ptg;Z)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 1640
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseBooleanLiteral()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1642
    :cond_1
    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 1643
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1644
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseNumber()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->convertArrayNumber(Lorg/apache/poi/ss/formula/ptg/Ptg;Z)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 1637
    :cond_2
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseErrorLiteral()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->valueOf(I)Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    move-result-object v0

    return-object v0

    .line 1636
    :cond_3
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseStringLiteral()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseArrayRow()[Ljava/lang/Object;
    .locals 3

    .line 1610
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1612
    .local v0, "temp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseArrayItem()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1613
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1614
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 1622
    :cond_0
    const-string v1, "\'}\' or \',\'"

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1617
    :cond_1
    :goto_1
    nop

    .line 1628
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    .line 1629
    .local v1, "result":[Ljava/lang/Object;
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1630
    return-object v1

    .line 1619
    .end local v1    # "result":[Ljava/lang/Object;
    :cond_2
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 1620
    goto :goto_0
.end method

.method private parseAsColumnQuantifier()Ljava/lang/String;
    .locals 3

    .line 829
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/4 v1, 0x0

    const/16 v2, 0x5b

    if-eq v0, v2, :cond_0

    .line 830
    return-object v1

    .line 832
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 833
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x23

    if-ne v0, v2, :cond_1

    .line 834
    return-object v1

    .line 836
    :cond_1
    const/16 v1, 0x40

    if-ne v0, v1, :cond_2

    .line 837
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 839
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 840
    .local v0, "name":Ljava/lang/StringBuilder;
    :goto_0
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_3

    .line 841
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 842
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    goto :goto_0

    .line 844
    :cond_3
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 845
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private parseAsName()Ljava/lang/String;
    .locals 3

    .line 922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 925
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_1

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 926
    :cond_0
    const-string v1, "number, string, defined name, or data table"

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 928
    :cond_1
    :goto_0
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v1}, Lorg/apache/poi/ss/formula/FormulaParser;->isValidDefinedNameChar(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 929
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 930
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    goto :goto_0

    .line 932
    :cond_2
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 934
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private parseAsSpecialQuantifier()Ljava/lang/String;
    .locals 3

    .line 852
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/4 v1, 0x0

    const/16 v2, 0x5b

    if-eq v0, v2, :cond_0

    .line 853
    return-object v1

    .line 855
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 856
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x23

    if-eq v0, v2, :cond_1

    .line 857
    return-object v1

    .line 859
    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 860
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseAsName()Ljava/lang/String;

    move-result-object v0

    .line 861
    .local v0, "name":Ljava/lang/String;
    const-string v1, "This"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 862
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseAsName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 864
    :cond_2
    const/16 v1, 0x5d

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 865
    return-object v0
.end method

.method private parseBooleanLiteral()Ljava/lang/Boolean;
    .locals 2

    .line 1651
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseUnquotedIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 1652
    .local v0, "iden":Ljava/lang/String;
    const-string v1, "TRUE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1653
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v1

    .line 1655
    :cond_0
    const-string v1, "FALSE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1656
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v1

    .line 1658
    :cond_1
    const-string v1, "\'TRUE\' or \'FALSE\'"

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private parseErrorLiteral()I
    .locals 5

    .line 1713
    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 1714
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseUnquotedIdentifier()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1715
    .local v0, "part1":Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 1719
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x44

    const/16 v3, 0x2f

    const/16 v4, 0x21

    if-eq v1, v2, :cond_b

    const/16 v2, 0x4e

    if-eq v1, v2, :cond_4

    const/16 v2, 0x52

    if-eq v1, v2, :cond_2

    const/16 v2, 0x56

    if-ne v1, v2, :cond_1

    .line 1721
    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->VALUE:Lorg/apache/poi/ss/usermodel/FormulaError;

    .line 1722
    .local v1, "fe":Lorg/apache/poi/ss/usermodel/FormulaError;
    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1723
    invoke-direct {p0, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 1724
    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v2

    return v2

    .line 1726
    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1776
    .end local v1    # "fe":Lorg/apache/poi/ss/usermodel/FormulaError;
    :cond_1
    const-string v1, "#VALUE!, #REF!, #DIV/0!, #NAME?, #NUM!, #NULL! or #N/A"

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1729
    :cond_2
    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->REF:Lorg/apache/poi/ss/usermodel/FormulaError;

    .line 1730
    .restart local v1    # "fe":Lorg/apache/poi/ss/usermodel/FormulaError;
    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1731
    invoke-direct {p0, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 1732
    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v2

    return v2

    .line 1734
    :cond_3
    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1747
    .end local v1    # "fe":Lorg/apache/poi/ss/usermodel/FormulaError;
    :cond_4
    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->NAME:Lorg/apache/poi/ss/usermodel/FormulaError;

    .line 1748
    .restart local v1    # "fe":Lorg/apache/poi/ss/usermodel/FormulaError;
    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1750
    const/16 v2, 0x3f

    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 1751
    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v2

    return v2

    .line 1753
    :cond_5
    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->NUM:Lorg/apache/poi/ss/usermodel/FormulaError;

    .line 1754
    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1755
    invoke-direct {p0, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 1756
    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v2

    return v2

    .line 1758
    :cond_6
    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->NULL:Lorg/apache/poi/ss/usermodel/FormulaError;

    .line 1759
    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1760
    invoke-direct {p0, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 1761
    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v2

    return v2

    .line 1763
    :cond_7
    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->NA:Lorg/apache/poi/ss/usermodel/FormulaError;

    .line 1764
    const-string v2, "N"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1765
    invoke-direct {p0, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 1766
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v3, 0x41

    if-eq v2, v3, :cond_9

    const/16 v3, 0x61

    if-ne v2, v3, :cond_8

    goto :goto_0

    .line 1767
    :cond_8
    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1769
    :cond_9
    :goto_0
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 1771
    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v2

    return v2

    .line 1773
    :cond_a
    const-string v2, "#NAME?, #NUM!, #NULL! or #N/A"

    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1737
    .end local v1    # "fe":Lorg/apache/poi/ss/usermodel/FormulaError;
    :cond_b
    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->DIV0:Lorg/apache/poi/ss/usermodel/FormulaError;

    .line 1738
    .restart local v1    # "fe":Lorg/apache/poi/ss/usermodel/FormulaError;
    const-string v2, "DIV"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1739
    invoke-direct {p0, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 1740
    const/16 v2, 0x30

    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 1741
    invoke-direct {p0, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 1742
    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v2

    return v2

    .line 1744
    :cond_c
    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1716
    .end local v1    # "fe":Lorg/apache/poi/ss/usermodel/FormulaError;
    :cond_d
    const-string v1, "remainder of error constant literal"

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private parseNonRange(I)Lorg/apache/poi/ss/formula/ParseNode;
    .locals 5
    .param p1, "savePointer"    # I

    .line 882
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    .line 884
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 885
    new-instance v0, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseNumber()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v0

    .line 887
    :cond_0
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    .line 888
    new-instance v0, Lorg/apache/poi/ss/formula/ParseNode;

    new-instance v1, Lorg/apache/poi/ss/formula/ptg/StringPtg;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseStringLiteral()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/ptg/StringPtg;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v0

    .line 893
    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseAsName()Ljava/lang/String;

    move-result-object v0

    .line 895
    .local v0, "name":Ljava/lang/String;
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x28

    if-ne v1, v2, :cond_2

    .line 896
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->function(Ljava/lang/String;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v1

    return-object v1

    .line 898
    :cond_2
    const/16 v2, 0x5b

    if-ne v1, v2, :cond_3

    .line 899
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseStructuredReference(Ljava/lang/String;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v1

    return-object v1

    .line 901
    :cond_3
    const-string v1, "TRUE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "FALSE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 904
    :cond_4
    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    if-eqz v1, :cond_7

    .line 908
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_sheetIndex:I

    invoke-interface {v1, v0, v2}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object v1

    .line 909
    .local v1, "evalName":Lorg/apache/poi/ss/formula/EvaluationName;
    if-eqz v1, :cond_6

    .line 913
    invoke-interface {v1}, Lorg/apache/poi/ss/formula/EvaluationName;->isRange()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 914
    new-instance v2, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-interface {v1}, Lorg/apache/poi/ss/formula/EvaluationName;->createPtg()Lorg/apache/poi/ss/formula/ptg/NamePtg;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v2

    .line 917
    :cond_5
    new-instance v2, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Specified name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is not a range as expected."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 910
    :cond_6
    new-instance v2, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Specified named range \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' does not exist in the current workbook."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 906
    .end local v1    # "evalName":Lorg/apache/poi/ss/formula/EvaluationName;
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Need book to evaluate name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 902
    :cond_8
    :goto_0
    new-instance v2, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/ss/formula/ptg/BoolPtg;->valueOf(Z)Lorg/apache/poi/ss/formula/ptg/BoolPtg;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v2
.end method

.method private parseNumber()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 7

    .line 1677
    const/4 v0, 0x0

    .line 1678
    .local v0, "number2":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1679
    .local v1, "exponent":Ljava/lang/String;
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetNum()Ljava/lang/String;

    move-result-object v2

    .line 1681
    .local v2, "number1":Ljava/lang/String;
    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_0

    .line 1682
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 1683
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetNum()Ljava/lang/String;

    move-result-object v0

    .line 1686
    :cond_0
    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v4, 0x45

    const-string v5, "Integer"

    if-ne v3, v4, :cond_4

    .line 1687
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 1689
    const-string v3, ""

    .line 1690
    .local v3, "sign":Ljava/lang/String;
    iget v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v6, 0x2b

    if-ne v4, v6, :cond_1

    .line 1691
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    goto :goto_0

    .line 1692
    :cond_1
    const/16 v6, 0x2d

    if-ne v4, v6, :cond_2

    .line 1693
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 1694
    const-string v3, "-"

    .line 1697
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetNum()Ljava/lang/String;

    move-result-object v4

    .line 1698
    .local v4, "number":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 1701
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1699
    :cond_3
    invoke-direct {p0, v5}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 1704
    .end local v3    # "sign":Ljava/lang/String;
    .end local v4    # "number":Ljava/lang/String;
    :cond_4
    :goto_1
    if-nez v2, :cond_6

    if-eqz v0, :cond_5

    goto :goto_2

    .line 1705
    :cond_5
    invoke-direct {p0, v5}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 1708
    :cond_6
    :goto_2
    invoke-static {v2, v0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->getNumberPtgFromString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v3

    return-object v3
.end method

.method private parseRangeExpression()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 7

    .line 322
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseRangeable()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    .line 323
    .local v0, "result":Lorg/apache/poi/ss/formula/ParseNode;
    const/4 v1, 0x0

    .line 324
    .local v1, "hasRange":Z
    :goto_0
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_0

    .line 325
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 326
    .local v2, "pos":I
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 327
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseRangeable()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v3

    .line 333
    .local v3, "nextPart":Lorg/apache/poi/ss/formula/ParseNode;
    const-string v4, "LHS"

    invoke-static {v4, v2, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->checkValidRangeOperand(Ljava/lang/String;ILorg/apache/poi/ss/formula/ParseNode;)V

    .line 334
    const-string v4, "RHS"

    invoke-static {v4, v2, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->checkValidRangeOperand(Ljava/lang/String;ILorg/apache/poi/ss/formula/ParseNode;)V

    .line 336
    const/4 v4, 0x2

    new-array v4, v4, [Lorg/apache/poi/ss/formula/ParseNode;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    .line 337
    .local v4, "children":[Lorg/apache/poi/ss/formula/ParseNode;
    new-instance v5, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v6, Lorg/apache/poi/ss/formula/ptg/RangePtg;->instance:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    invoke-direct {v5, v6, v4}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ParseNode;)V

    move-object v0, v5

    .line 338
    const/4 v1, 0x1

    .line 339
    .end local v2    # "pos":I
    .end local v3    # "nextPart":Lorg/apache/poi/ss/formula/ParseNode;
    .end local v4    # "children":[Lorg/apache/poi/ss/formula/ParseNode;
    goto :goto_0

    .line 340
    :cond_0
    if-eqz v1, :cond_1

    .line 341
    invoke-static {v0}, Lorg/apache/poi/ss/formula/FormulaParser;->augmentWithMemPtg(Lorg/apache/poi/ss/formula/ParseNode;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v2

    return-object v2

    .line 343
    :cond_1
    return-object v0
.end method

.method private parseRangeable()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 12

    .line 470
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 471
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 472
    .local v0, "savePointer":I
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseSheetName()Lorg/apache/poi/ss/formula/SheetIdentifier;

    move-result-object v1

    .line 474
    .local v1, "sheetIden":Lorg/apache/poi/ss/formula/SheetIdentifier;
    if-nez v1, :cond_0

    .line 475
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    goto :goto_0

    .line 477
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 478
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 481
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseSimpleRangePart()Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;

    move-result-object v2

    .line 482
    .local v2, "part1":Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;
    const-string v3, "."

    if-nez v2, :cond_5

    .line 483
    if-eqz v1, :cond_4

    .line 484
    iget v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v5, 0x23

    if-ne v4, v5, :cond_1

    .line 485
    new-instance v3, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseErrorLiteral()I

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->valueOf(I)Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v3

    .line 488
    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseAsName()Ljava/lang/String;

    move-result-object v4

    .line 489
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    .line 493
    iget-object v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    invoke-interface {v3, v4, v1}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getNameXPtg(Ljava/lang/String;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v3

    .line 494
    .local v3, "nameXPtg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    if-eqz v3, :cond_2

    .line 498
    new-instance v5, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v5, v3}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v5

    .line 495
    :cond_2
    new-instance v5, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Specified name \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' for sheet "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/SheetIdentifier;->asFormulaString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 490
    .end local v3    # "nameXPtg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_3
    new-instance v5, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cell reference or Named Range expected after sheet name at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 501
    .end local v4    # "name":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseNonRange(I)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v3

    return-object v3

    .line 503
    :cond_5
    iget v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v4}, Lorg/apache/poi/ss/formula/FormulaParser;->IsWhite(I)Z

    move-result v4

    .line 504
    .local v4, "whiteAfterPart1":Z
    if-eqz v4, :cond_6

    .line 505
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 508
    :cond_6
    iget v5, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v6, 0x3a

    if-ne v5, v6, :cond_a

    .line 509
    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 510
    .local v3, "colonPos":I
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 511
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 512
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseSimpleRangePart()Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;

    move-result-object v5

    .line 513
    .local v5, "part2":Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;
    if-eqz v5, :cond_7

    invoke-virtual {v2, v5}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isCompatibleForArea(Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 517
    const/4 v5, 0x0

    .line 519
    :cond_7
    if-nez v5, :cond_9

    .line 522
    invoke-direct {p0, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    .line 523
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isCell()Z

    move-result v6

    if-nez v6, :cond_9

    .line 524
    const-string v6, ""

    .line 525
    .local v6, "prefix":Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 526
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/SheetIdentifier;->getSheetIdentifier()Lorg/apache/poi/ss/formula/NameIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/poi/ss/formula/NameIdentifier;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x21

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 528
    :cond_8
    new-instance v7, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getRep()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' is not a proper reference."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 531
    .end local v6    # "prefix":Ljava/lang/String;
    :cond_9
    invoke-direct {p0, v1, v2, v5}, Lorg/apache/poi/ss/formula/FormulaParser;->createAreaRefParseNode(Lorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v6

    return-object v6

    .line 534
    .end local v3    # "colonPos":I
    .end local v5    # "part2":Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;
    :cond_a
    const/16 v6, 0x2e

    if-ne v5, v6, :cond_15

    .line 535
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 536
    const/4 v5, 0x1

    .line 537
    .local v5, "dotCount":I
    :goto_1
    iget v7, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    if-ne v7, v6, :cond_b

    .line 538
    add-int/lit8 v5, v5, 0x1

    .line 539
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    goto :goto_1

    .line 541
    :cond_b
    invoke-static {v7}, Lorg/apache/poi/ss/formula/FormulaParser;->IsWhite(I)Z

    move-result v6

    .line 543
    .local v6, "whiteBeforePart2":Z
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 544
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseSimpleRangePart()Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;

    move-result-object v7

    .line 545
    .local v7, "part2":Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;
    iget-object v8, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    add-int/lit8 v9, v0, -0x1

    iget v10, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 546
    .local v8, "part1And2":Ljava/lang/String;
    if-nez v7, :cond_d

    .line 547
    if-nez v1, :cond_c

    .line 551
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseNonRange(I)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v3

    return-object v3

    .line 548
    :cond_c
    new-instance v9, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Complete area reference expected after sheet name at index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 555
    :cond_d
    const-string v3, "Dotted range (full row or column) expression \'"

    if-nez v4, :cond_13

    if-eqz v6, :cond_e

    goto :goto_2

    .line 565
    :cond_e
    if-ne v5, v11, :cond_f

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isRow()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isRow()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 567
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseNonRange(I)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v3

    return-object v3

    .line 570
    :cond_f
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isRowOrColumn()Z

    move-result v9

    if-nez v9, :cond_10

    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isRowOrColumn()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 571
    :cond_10
    const/4 v9, 0x2

    if-ne v5, v9, :cond_12

    .line 576
    :cond_11
    invoke-direct {p0, v1, v2, v7}, Lorg/apache/poi/ss/formula/FormulaParser;->createAreaRefParseNode(Lorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v3

    return-object v3

    .line 572
    :cond_12
    new-instance v9, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "\' must have exactly 2 dots."

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 556
    :cond_13
    :goto_2
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isRowOrColumn()Z

    move-result v9

    if-nez v9, :cond_14

    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isRowOrColumn()Z

    move-result v9

    if-nez v9, :cond_14

    .line 562
    invoke-direct {p0, v1, v2, v7}, Lorg/apache/poi/ss/formula/FormulaParser;->createAreaRefParseNode(Lorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v3

    return-object v3

    .line 559
    :cond_14
    new-instance v9, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "\' must not contain whitespace."

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 578
    .end local v5    # "dotCount":I
    .end local v6    # "whiteBeforePart2":Z
    .end local v7    # "part2":Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;
    .end local v8    # "part1And2":Ljava/lang/String;
    :cond_15
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isCell()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getRep()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/poi/ss/formula/FormulaParser;->isValidCellReference(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 579
    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->createAreaRefParseNode(Lorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v3

    return-object v3

    .line 581
    :cond_16
    if-nez v1, :cond_17

    .line 586
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseNonRange(I)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v3

    return-object v3

    .line 582
    :cond_17
    new-instance v5, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Second part of cell reference expected after sheet name at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private parseSheetName()Lorg/apache/poi/ss/formula/SheetIdentifier;
    .locals 10

    .line 1154
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    .line 1155
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->getBookName()Ljava/lang/String;

    move-result-object v0

    .local v0, "bookName":Ljava/lang/String;
    goto :goto_0

    .line 1157
    .end local v0    # "bookName":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 1160
    .restart local v0    # "bookName":Ljava/lang/String;
    :goto_0
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v3, 0x3a

    const/4 v4, 0x0

    const/16 v5, 0x21

    const/4 v6, 0x0

    const/16 v7, 0x27

    if-ne v2, v7, :cond_8

    .line 1161
    invoke-direct {p0, v7}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 1163
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    if-ne v2, v1, :cond_1

    .line 1164
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->getBookName()Ljava/lang/String;

    move-result-object v0

    .line 1166
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1167
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/4 v8, 0x1

    if-ne v2, v7, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 1168
    .local v2, "done":Z
    :cond_3
    :goto_1
    if-nez v2, :cond_5

    .line 1169
    iget v9, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1170
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 1171
    iget v9, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    if-ne v9, v7, :cond_3

    .line 1173
    invoke-direct {p0, v7}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 1174
    iget v9, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    if-eq v9, v7, :cond_4

    const/4 v9, 0x1

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    :goto_2
    move v2, v9

    goto :goto_1

    .line 1178
    :cond_5
    new-instance v4, Lorg/apache/poi/ss/formula/NameIdentifier;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v8}, Lorg/apache/poi/ss/formula/NameIdentifier;-><init>(Ljava/lang/String;Z)V

    .line 1180
    .local v4, "iden":Lorg/apache/poi/ss/formula/NameIdentifier;
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1181
    iget v7, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    if-ne v7, v5, :cond_6

    .line 1182
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 1183
    new-instance v3, Lorg/apache/poi/ss/formula/SheetIdentifier;

    invoke-direct {v3, v0, v4}, Lorg/apache/poi/ss/formula/SheetIdentifier;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;)V

    return-object v3

    .line 1186
    :cond_6
    if-ne v7, v3, :cond_7

    .line 1187
    invoke-direct {p0, v0, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->parseSheetRange(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;)Lorg/apache/poi/ss/formula/SheetIdentifier;

    move-result-object v3

    return-object v3

    .line 1189
    :cond_7
    return-object v6

    .line 1193
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "done":Z
    .end local v4    # "iden":Lorg/apache/poi/ss/formula/NameIdentifier;
    :cond_8
    const/16 v1, 0x5f

    if-eq v2, v1, :cond_b

    invoke-static {v2}, Ljava/lang/Character;->isLetter(I)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_3

    .line 1212
    :cond_9
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    if-ne v1, v5, :cond_a

    if-eqz v0, :cond_a

    .line 1214
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 1215
    new-instance v1, Lorg/apache/poi/ss/formula/SheetIdentifier;

    invoke-direct {v1, v0, v6}, Lorg/apache/poi/ss/formula/SheetIdentifier;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;)V

    return-object v1

    .line 1217
    :cond_a
    return-object v6

    .line 1194
    :cond_b
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1196
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    :goto_4
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v2}, Lorg/apache/poi/ss/formula/FormulaParser;->isUnquotedSheetNameChar(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1197
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1198
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    goto :goto_4

    .line 1200
    :cond_c
    new-instance v2, Lorg/apache/poi/ss/formula/NameIdentifier;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7, v4}, Lorg/apache/poi/ss/formula/NameIdentifier;-><init>(Ljava/lang/String;Z)V

    .line 1201
    .local v2, "iden":Lorg/apache/poi/ss/formula/NameIdentifier;
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1202
    iget v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    if-ne v4, v5, :cond_d

    .line 1203
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 1204
    new-instance v3, Lorg/apache/poi/ss/formula/SheetIdentifier;

    invoke-direct {v3, v0, v2}, Lorg/apache/poi/ss/formula/SheetIdentifier;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;)V

    return-object v3

    .line 1207
    :cond_d
    if-ne v4, v3, :cond_e

    .line 1208
    invoke-direct {p0, v0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->parseSheetRange(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;)Lorg/apache/poi/ss/formula/SheetIdentifier;

    move-result-object v3

    return-object v3

    .line 1210
    :cond_e
    return-object v6
.end method

.method private parseSheetRange(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;)Lorg/apache/poi/ss/formula/SheetIdentifier;
    .locals 3
    .param p1, "bookname"    # Ljava/lang/String;
    .param p2, "sheet1Name"    # Lorg/apache/poi/ss/formula/NameIdentifier;

    .line 1225
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 1226
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseSheetName()Lorg/apache/poi/ss/formula/SheetIdentifier;

    move-result-object v0

    .line 1227
    .local v0, "sheet2":Lorg/apache/poi/ss/formula/SheetIdentifier;
    if-eqz v0, :cond_0

    .line 1228
    new-instance v1, Lorg/apache/poi/ss/formula/SheetRangeIdentifier;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/SheetIdentifier;->getSheetIdentifier()Lorg/apache/poi/ss/formula/NameIdentifier;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lorg/apache/poi/ss/formula/SheetRangeIdentifier;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;Lorg/apache/poi/ss/formula/NameIdentifier;)V

    return-object v1

    .line 1230
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private parseSimpleFactor()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 4

    .line 1514
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1515
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    const/16 v1, 0x23

    if-eq v0, v1, :cond_7

    const/16 v1, 0x28

    if-eq v0, v1, :cond_6

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_4

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_3

    .line 1539
    invoke-static {v0}, Lorg/apache/poi/ss/formula/FormulaParser;->IsAlpha(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v1, 0x27

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1542
    :cond_0
    const/16 v1, 0x2e

    if-ne v0, v1, :cond_1

    .line 1543
    new-instance v0, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseNumber()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v0

    .line 1545
    :cond_1
    const-string v0, "cell ref or constant literal"

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1540
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseRangeExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    return-object v0

    .line 1515
    :cond_3
    move-object v0, v2

    .line 1532
    .local v0, "inside":Lorg/apache/poi/ss/formula/ParseNode;
    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 1533
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseArray()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v1

    .line 1534
    .local v1, "arrayNode":Lorg/apache/poi/ss/formula/ParseNode;
    const/16 v2, 0x7d

    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 1535
    return-object v1

    .line 1519
    .end local v0    # "inside":Lorg/apache/poi/ss/formula/ParseNode;
    .end local v1    # "arrayNode":Lorg/apache/poi/ss/formula/ParseNode;
    :cond_4
    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 1520
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseUnary(Z)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    return-object v0

    .line 1522
    :cond_5
    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 1523
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseUnary(Z)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    return-object v0

    .line 1525
    :cond_6
    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 1526
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->unionExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    .line 1527
    .restart local v0    # "inside":Lorg/apache/poi/ss/formula/ParseNode;
    const/16 v1, 0x29

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 1528
    new-instance v1, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v2, Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ControlPtg;

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;)V

    return-object v1

    .line 1517
    .end local v0    # "inside":Lorg/apache/poi/ss/formula/ParseNode;
    :cond_7
    new-instance v0, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseErrorLiteral()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->valueOf(I)Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v0

    .line 1515
    :cond_8
    move-object v0, v2

    .line 1530
    .restart local v0    # "inside":Lorg/apache/poi/ss/formula/ParseNode;
    new-instance v1, Lorg/apache/poi/ss/formula/ParseNode;

    new-instance v2, Lorg/apache/poi/ss/formula/ptg/StringPtg;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseStringLiteral()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/ptg/StringPtg;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v1
.end method

.method private parseSimpleRangePart()Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;
    .locals 9

    .line 1016
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 1017
    .local v0, "ptr":I
    const/4 v2, 0x0

    .line 1018
    .local v2, "hasDigits":Z
    const/4 v3, 0x0

    .line 1019
    .local v3, "hasLetters":Z
    :goto_0
    iget v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaLength:I

    if-ge v0, v4, :cond_3

    .line 1020
    iget-object v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1021
    .local v4, "ch":C
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1022
    const/4 v2, 0x1

    goto :goto_1

    .line 1023
    :cond_0
    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1024
    const/4 v3, 0x1

    goto :goto_1

    .line 1025
    :cond_1
    const/16 v5, 0x24

    if-eq v4, v5, :cond_2

    const/16 v5, 0x5f

    if-ne v4, v5, :cond_3

    .line 1030
    :cond_2
    :goto_1
    nop

    .end local v4    # "ch":C
    add-int/lit8 v0, v0, 0x1

    .line 1031
    goto :goto_0

    .line 1032
    :cond_3
    iget v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    add-int/lit8 v5, v4, -0x1

    const/4 v6, 0x0

    if-gt v0, v5, :cond_4

    .line 1033
    return-object v6

    .line 1035
    :cond_4
    iget-object v5, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    sub-int/2addr v4, v1

    invoke-virtual {v5, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1036
    .local v4, "rep":Ljava/lang/String;
    sget-object v5, Lorg/apache/poi/ss/formula/FormulaParser;->CELL_REF_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1037
    return-object v6

    .line 1040
    :cond_5
    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    .line 1041
    invoke-direct {p0, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->isValidCellReference(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1042
    return-object v6

    .line 1044
    :cond_6
    const-string v5, ""

    const-string v7, "$"

    if-eqz v3, :cond_7

    .line 1045
    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_ssVersion:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-static {v1, v5}, Lorg/apache/poi/ss/util/CellReference;->isColumnWithinRange(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1046
    return-object v6

    .line 1048
    :cond_7
    if-eqz v2, :cond_b

    .line 1051
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1054
    .local v5, "i":I
    nop

    .line 1055
    if-lt v5, v1, :cond_a

    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_ssVersion:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxRows()I

    move-result v1

    if-le v5, v1, :cond_8

    goto :goto_2

    .line 1058
    .end local v5    # "i":I
    :cond_8
    nop

    .line 1064
    :cond_9
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    .line 1065
    new-instance v1, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;

    invoke-direct {v1, v4, v3, v2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;-><init>(Ljava/lang/String;ZZ)V

    return-object v1

    .line 1056
    .restart local v5    # "i":I
    :cond_a
    :goto_2
    return-object v6

    .line 1052
    .end local v5    # "i":I
    :catch_0
    move-exception v1

    move v5, v8

    .line 1053
    .local v1, "e":Ljava/lang/NumberFormatException;
    .restart local v5    # "i":I
    return-object v6

    .line 1060
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "i":I
    :cond_b
    return-object v6
.end method

.method private parseStringLiteral()Ljava/lang/String;
    .locals 3

    .line 1840
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 1842
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1844
    .local v1, "token":Ljava/lang/StringBuilder;
    :goto_0
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    if-ne v2, v0, :cond_0

    .line 1845
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 1846
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    if-eq v2, v0, :cond_0

    .line 1847
    nop

    .line 1853
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1850
    :cond_0
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1851
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    goto :goto_0
.end method

.method private parseStructuredReference(Ljava/lang/String;)Lorg/apache/poi/ss/formula/ParseNode;
    .locals 31
    .param p1, "tableName"    # Ljava/lang/String;

    .line 625
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_ssVersion:Lorg/apache/poi/ss/SpreadsheetVersion;

    sget-object v3, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v2, v3}, Lorg/apache/poi/ss/SpreadsheetVersion;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 628
    iget-object v2, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    invoke-interface {v2, v1}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getTable(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Table;

    move-result-object v2

    .line 629
    .local v2, "tbl":Lorg/apache/poi/ss/usermodel/Table;
    if-eqz v2, :cond_2d

    .line 632
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Table;->getSheetName()Ljava/lang/String;

    move-result-object v3

    .line 634
    .local v3, "sheetName":Ljava/lang/String;
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Table;->getStartColIndex()I

    move-result v4

    .line 635
    .local v4, "startCol":I
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Table;->getEndColIndex()I

    move-result v5

    .line 636
    .local v5, "endCol":I
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Table;->getStartRowIndex()I

    move-result v6

    .line 637
    .local v6, "startRow":I
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Table;->getEndRowIndex()I

    move-result v7

    .line 641
    .local v7, "endRow":I
    iget v8, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 642
    .local v8, "savePtr0":I
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 644
    const/4 v9, 0x0

    .line 645
    .local v9, "isTotalsSpec":Z
    const/4 v10, 0x0

    .line 646
    .local v10, "isThisRowSpec":Z
    const/4 v11, 0x0

    .line 647
    .local v11, "isDataSpec":Z
    const/4 v12, 0x0

    .line 648
    .local v12, "isHeadersSpec":Z
    const/4 v13, 0x0

    .line 649
    .local v13, "isAllSpec":Z
    const/4 v14, 0x0

    .line 651
    .local v14, "nSpecQuantifiers":I
    :goto_0
    iget v15, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 652
    .local v15, "savePtr1":I
    move/from16 v16, v9

    .end local v9    # "isTotalsSpec":Z
    .local v16, "isTotalsSpec":Z
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseAsSpecialQuantifier()Ljava/lang/String;

    move-result-object v9

    .line 653
    .local v9, "specName":Ljava/lang/String;
    move/from16 v17, v10

    .end local v10    # "isThisRowSpec":Z
    .local v17, "isThisRowSpec":Z
    const-string v10, "Unknown special quantifier "

    move/from16 v18, v11

    .end local v11    # "isDataSpec":Z
    .local v18, "isDataSpec":Z
    const-string v11, "Totals"

    move/from16 v19, v12

    .end local v12    # "isHeadersSpec":Z
    .local v19, "isHeadersSpec":Z
    const-string v12, "This Row"

    move/from16 v20, v13

    .end local v13    # "isAllSpec":Z
    .local v20, "isAllSpec":Z
    const-string v13, "Headers"

    const-string v1, "Data"

    move-object/from16 v22, v3

    .end local v3    # "sheetName":Ljava/lang/String;
    .local v22, "sheetName":Ljava/lang/String;
    const-string v3, "All"

    if-nez v9, :cond_0

    .line 654
    invoke-direct {v0, v15}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    .line 655
    move/from16 v9, v16

    goto :goto_2

    .line 657
    :cond_0
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 658
    const/16 v20, 0x1

    goto :goto_1

    .line 659
    :cond_1
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 660
    const/16 v18, 0x1

    goto :goto_1

    .line 661
    :cond_2
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 662
    const/16 v19, 0x1

    goto :goto_1

    .line 663
    :cond_3
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 664
    const/16 v17, 0x1

    goto :goto_1

    .line 665
    :cond_4
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2c

    .line 666
    const/16 v16, 0x1

    .line 670
    :goto_1
    add-int/lit8 v14, v14, 0x1

    .line 671
    move/from16 v23, v14

    .end local v14    # "nSpecQuantifiers":I
    .local v23, "nSpecQuantifiers":I
    iget v14, v0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    move/from16 v24, v15

    const/16 v15, 0x2c

    .end local v15    # "savePtr1":I
    .local v24, "savePtr1":I
    if-ne v14, v15, :cond_5

    .line 672
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 676
    .end local v9    # "specName":Ljava/lang/String;
    .end local v24    # "savePtr1":I
    move-object/from16 v1, p1

    move/from16 v9, v16

    move/from16 v10, v17

    move/from16 v11, v18

    move/from16 v12, v19

    move/from16 v13, v20

    move-object/from16 v3, v22

    move/from16 v14, v23

    goto :goto_0

    .line 671
    .restart local v9    # "specName":Ljava/lang/String;
    .restart local v24    # "savePtr1":I
    :cond_5
    move/from16 v9, v16

    move/from16 v14, v23

    .line 677
    .end local v16    # "isTotalsSpec":Z
    .end local v23    # "nSpecQuantifiers":I
    .end local v24    # "savePtr1":I
    .local v9, "isTotalsSpec":Z
    .restart local v14    # "nSpecQuantifiers":I
    :goto_2
    const/4 v15, 0x0

    .line 678
    .local v15, "isThisRow":Z
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 679
    move/from16 v16, v9

    .end local v9    # "isTotalsSpec":Z
    .restart local v16    # "isTotalsSpec":Z
    iget v9, v0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    move/from16 v23, v15

    .end local v15    # "isThisRow":Z
    .local v23, "isThisRow":Z
    const/16 v15, 0x40

    if-ne v9, v15, :cond_6

    .line 680
    const/4 v15, 0x1

    .line 681
    .end local v23    # "isThisRow":Z
    .restart local v15    # "isThisRow":Z
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    goto :goto_3

    .line 679
    .end local v15    # "isThisRow":Z
    .restart local v23    # "isThisRow":Z
    :cond_6
    move/from16 v15, v23

    .line 685
    .end local v23    # "isThisRow":Z
    .restart local v15    # "isThisRow":Z
    :goto_3
    const/4 v9, 0x0

    .line 686
    .local v9, "endColumnName":Ljava/lang/String;
    const/16 v23, 0x0

    .line 687
    .local v23, "nColQuantifiers":I
    move-object/from16 v24, v9

    .end local v9    # "endColumnName":Ljava/lang/String;
    .local v24, "endColumnName":Ljava/lang/String;
    iget v9, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 688
    .local v9, "savePtr1":I
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseAsColumnQuantifier()Ljava/lang/String;

    move-result-object v25

    .line 689
    .local v25, "startColumnName":Ljava/lang/String;
    move/from16 v26, v5

    .end local v5    # "endCol":I
    .local v26, "endCol":I
    const-string v5, "The formula "

    if-nez v25, :cond_7

    .line 690
    invoke-direct {v0, v9}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    move/from16 v28, v4

    move/from16 v27, v9

    move-object/from16 v9, v24

    goto :goto_4

    .line 692
    :cond_7
    add-int/lit8 v23, v23, 0x1

    .line 693
    move/from16 v27, v9

    .end local v9    # "savePtr1":I
    .local v27, "savePtr1":I
    iget v9, v0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    move/from16 v28, v4

    const/16 v4, 0x2c

    .end local v4    # "startCol":I
    .local v28, "startCol":I
    if-eq v9, v4, :cond_2b

    .line 695
    const/16 v4, 0x3a

    if-ne v9, v4, :cond_9

    .line 696
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 697
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseAsColumnQuantifier()Ljava/lang/String;

    move-result-object v9

    .line 698
    .end local v24    # "endColumnName":Ljava/lang/String;
    .local v9, "endColumnName":Ljava/lang/String;
    add-int/lit8 v23, v23, 0x1

    .line 699
    if-eqz v9, :cond_8

    goto :goto_4

    .line 700
    :cond_8
    new-instance v1, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is illegal: the string after \':\' must be column quantifier"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 695
    .end local v9    # "endColumnName":Ljava/lang/String;
    .restart local v24    # "endColumnName":Ljava/lang/String;
    :cond_9
    move-object/from16 v9, v24

    .line 705
    .end local v24    # "endColumnName":Ljava/lang/String;
    .restart local v9    # "endColumnName":Ljava/lang/String;
    :goto_4
    const-string v4, " is illegal"

    if-nez v23, :cond_11

    if-nez v14, :cond_11

    .line 706
    invoke-direct {v0, v8}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    .line 707
    iget v8, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 708
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseAsColumnQuantifier()Ljava/lang/String;

    move-result-object v25

    .line 709
    if-eqz v25, :cond_a

    .line 710
    add-int/lit8 v23, v23, 0x1

    move/from16 v1, v23

    move-object/from16 v3, v25

    goto/16 :goto_6

    .line 712
    :cond_a
    invoke-direct {v0, v8}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    .line 713
    move/from16 v21, v8

    .end local v8    # "savePtr0":I
    .local v21, "savePtr0":I
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseAsSpecialQuantifier()Ljava/lang/String;

    move-result-object v8

    .line 714
    .local v8, "name":Ljava/lang/String;
    if-eqz v8, :cond_10

    .line 715
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 716
    const/4 v1, 0x1

    move/from16 v20, v1

    .end local v20    # "isAllSpec":Z
    .local v1, "isAllSpec":Z
    goto :goto_5

    .line 717
    .end local v1    # "isAllSpec":Z
    .restart local v20    # "isAllSpec":Z
    :cond_b
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 718
    const/4 v1, 0x1

    move/from16 v18, v1

    .end local v18    # "isDataSpec":Z
    .local v1, "isDataSpec":Z
    goto :goto_5

    .line 719
    .end local v1    # "isDataSpec":Z
    .restart local v18    # "isDataSpec":Z
    :cond_c
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 720
    const/4 v1, 0x1

    move/from16 v19, v1

    .end local v19    # "isHeadersSpec":Z
    .local v1, "isHeadersSpec":Z
    goto :goto_5

    .line 721
    .end local v1    # "isHeadersSpec":Z
    .restart local v19    # "isHeadersSpec":Z
    :cond_d
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 722
    const/4 v1, 0x1

    move/from16 v17, v1

    .end local v17    # "isThisRowSpec":Z
    .local v1, "isThisRowSpec":Z
    goto :goto_5

    .line 723
    .end local v1    # "isThisRowSpec":Z
    .restart local v17    # "isThisRowSpec":Z
    :cond_e
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 724
    const/4 v1, 0x1

    move/from16 v16, v1

    .line 728
    :goto_5
    add-int/lit8 v14, v14, 0x1

    .line 732
    .end local v8    # "name":Ljava/lang/String;
    move/from16 v8, v21

    move/from16 v1, v23

    move-object/from16 v3, v25

    goto :goto_6

    .line 726
    .restart local v8    # "name":Ljava/lang/String;
    :cond_f
    new-instance v1, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 730
    :cond_10
    new-instance v1, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 734
    .end local v21    # "savePtr0":I
    .local v8, "savePtr0":I
    :cond_11
    const/16 v1, 0x5d

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    move/from16 v1, v23

    move-object/from16 v3, v25

    .line 739
    .end local v23    # "nColQuantifiers":I
    .end local v25    # "startColumnName":Ljava/lang/String;
    .local v1, "nColQuantifiers":I
    .local v3, "startColumnName":Ljava/lang/String;
    :goto_6
    if-eqz v16, :cond_12

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Table;->getTotalsRowCount()I

    move-result v10

    if-nez v10, :cond_12

    .line 740
    new-instance v4, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v5, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->REF_INVALID:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    invoke-direct {v4, v5}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v4

    .line 742
    :cond_12
    if-nez v15, :cond_13

    if-eqz v17, :cond_14

    :cond_13
    iget v10, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_rowIndex:I

    if-lt v10, v6, :cond_29

    if-ge v7, v10, :cond_14

    move/from16 v24, v1

    move-object/from16 v30, v2

    move/from16 v29, v6

    move/from16 v21, v8

    move-object/from16 v2, v22

    move-object/from16 v22, v3

    goto/16 :goto_a

    .line 753
    :cond_14
    move v10, v6

    .line 754
    .local v10, "actualStartRow":I
    move v11, v7

    .line 755
    .local v11, "actualEndRow":I
    move/from16 v12, v28

    .line 756
    .local v12, "actualStartCol":I
    move/from16 v13, v26

    .line 757
    .local v13, "actualEndCol":I
    move/from16 v21, v8

    .end local v8    # "savePtr0":I
    .restart local v21    # "savePtr0":I
    const/4 v8, 0x1

    if-lez v14, :cond_20

    .line 759
    if-ne v14, v8, :cond_15

    if-eqz v20, :cond_15

    goto :goto_7

    .line 761
    :cond_15
    if-eqz v18, :cond_17

    if-eqz v19, :cond_17

    .line 762
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Table;->getTotalsRowCount()I

    move-result v4

    if-lez v4, :cond_16

    .line 763
    add-int/lit8 v11, v7, -0x1

    move/from16 v29, v6

    goto/16 :goto_8

    .line 794
    :cond_16
    :goto_7
    move/from16 v29, v6

    goto/16 :goto_8

    .line 765
    :cond_17
    if-eqz v18, :cond_18

    if-eqz v16, :cond_18

    .line 766
    add-int/lit8 v10, v6, 0x1

    move/from16 v29, v6

    goto/16 :goto_8

    .line 767
    :cond_18
    if-ne v14, v8, :cond_1a

    if-eqz v18, :cond_1a

    .line 768
    add-int/lit8 v10, v6, 0x1

    .line 769
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Table;->getTotalsRowCount()I

    move-result v4

    if-lez v4, :cond_19

    .line 770
    add-int/lit8 v11, v7, -0x1

    move/from16 v29, v6

    goto :goto_8

    .line 769
    :cond_19
    move/from16 v29, v6

    goto :goto_8

    .line 772
    :cond_1a
    if-ne v14, v8, :cond_1b

    if-eqz v19, :cond_1b

    .line 773
    move v11, v10

    move/from16 v29, v6

    goto :goto_8

    .line 774
    :cond_1b
    if-ne v14, v8, :cond_1c

    if-eqz v16, :cond_1c

    .line 775
    move v10, v11

    move/from16 v29, v6

    goto :goto_8

    .line 776
    :cond_1c
    if-ne v14, v8, :cond_1d

    if-nez v17, :cond_1e

    :cond_1d
    if-eqz v15, :cond_1f

    .line 777
    :cond_1e
    iget v10, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_rowIndex:I

    .line 778
    iget v11, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_rowIndex:I

    move/from16 v29, v6

    goto :goto_8

    .line 780
    :cond_1f
    new-instance v8, Lorg/apache/poi/ss/formula/FormulaParseException;

    move/from16 v29, v6

    .end local v6    # "startRow":I
    .local v29, "startRow":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 783
    .end local v29    # "startRow":I
    .restart local v6    # "startRow":I
    :cond_20
    move/from16 v29, v6

    .end local v6    # "startRow":I
    .restart local v29    # "startRow":I
    if-eqz v15, :cond_21

    .line 784
    iget v10, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_rowIndex:I

    .line 785
    iget v11, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_rowIndex:I

    goto :goto_8

    .line 787
    :cond_21
    add-int/lit8 v10, v10, 0x1

    .line 788
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Table;->getTotalsRowCount()I

    move-result v4

    if-lez v4, :cond_22

    add-int/lit8 v11, v11, -0x1

    .line 794
    :cond_22
    :goto_8
    const/4 v4, 0x2

    const-string v5, " doesn\'t exist in table "

    const-string v6, "Fatal error"

    const/4 v8, -0x1

    if-ne v1, v4, :cond_25

    .line 795
    if-eqz v3, :cond_24

    if-eqz v9, :cond_24

    .line 798
    invoke-interface {v2, v3}, Lorg/apache/poi/ss/usermodel/Table;->findColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 799
    .local v4, "startIdx":I
    invoke-interface {v2, v9}, Lorg/apache/poi/ss/usermodel/Table;->findColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 800
    .local v6, "endIdx":I
    if-eq v4, v8, :cond_23

    if-eq v6, v8, :cond_23

    .line 803
    add-int v12, v28, v4

    .line 804
    add-int v13, v28, v6

    .line 806
    .end local v4    # "startIdx":I
    .end local v6    # "endIdx":I
    move/from16 v24, v1

    goto/16 :goto_9

    .line 801
    .restart local v4    # "startIdx":I
    .restart local v6    # "endIdx":I
    :cond_23
    new-instance v8, Lorg/apache/poi/ss/formula/FormulaParseException;

    move/from16 v24, v4

    .end local v4    # "startIdx":I
    .local v24, "startIdx":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v6

    .end local v6    # "endIdx":I
    .local v25, "endIdx":I
    const-string v6, "One of the columns "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Table;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 796
    .end local v24    # "startIdx":I
    .end local v25    # "endIdx":I
    :cond_24
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 806
    :cond_25
    const/4 v4, 0x1

    if-ne v1, v4, :cond_28

    if-nez v15, :cond_28

    .line 807
    if-eqz v3, :cond_27

    .line 810
    invoke-interface {v2, v3}, Lorg/apache/poi/ss/usermodel/Table;->findColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 811
    .local v4, "idx":I
    if-eq v4, v8, :cond_26

    .line 814
    add-int v12, v28, v4

    .line 815
    move v13, v12

    move/from16 v24, v1

    goto :goto_9

    .line 812
    :cond_26
    new-instance v6, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v1

    .end local v1    # "nColQuantifiers":I
    .local v24, "nColQuantifiers":I
    const-string v1, "The column "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Table;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 808
    .end local v4    # "idx":I
    .end local v24    # "nColQuantifiers":I
    .restart local v1    # "nColQuantifiers":I
    :cond_27
    move/from16 v24, v1

    .end local v1    # "nColQuantifiers":I
    .restart local v24    # "nColQuantifiers":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 806
    .end local v24    # "nColQuantifiers":I
    .restart local v1    # "nColQuantifiers":I
    :cond_28
    move/from16 v24, v1

    .line 817
    .end local v1    # "nColQuantifiers":I
    .restart local v24    # "nColQuantifiers":I
    :goto_9
    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v1, v10, v12}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    .line 818
    .local v1, "topLeft":Lorg/apache/poi/ss/util/CellReference;
    new-instance v4, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v4, v11, v13}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    .line 819
    .local v4, "bottomRight":Lorg/apache/poi/ss/util/CellReference;
    new-instance v5, Lorg/apache/poi/ss/formula/SheetIdentifier;

    const/4 v6, 0x0

    new-instance v8, Lorg/apache/poi/ss/formula/NameIdentifier;

    move-object/from16 v30, v2

    move-object/from16 v2, v22

    move-object/from16 v22, v3

    const/4 v3, 0x1

    .end local v3    # "startColumnName":Ljava/lang/String;
    .local v2, "sheetName":Ljava/lang/String;
    .local v22, "startColumnName":Ljava/lang/String;
    .local v30, "tbl":Lorg/apache/poi/ss/usermodel/Table;
    invoke-direct {v8, v2, v3}, Lorg/apache/poi/ss/formula/NameIdentifier;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v5, v6, v8}, Lorg/apache/poi/ss/formula/SheetIdentifier;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;)V

    move-object v3, v5

    .line 820
    .local v3, "sheetIden":Lorg/apache/poi/ss/formula/SheetIdentifier;
    iget-object v5, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    new-instance v6, Lorg/apache/poi/ss/util/AreaReference;

    iget-object v8, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_ssVersion:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {v6, v1, v4, v8}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    invoke-interface {v5, v6, v3}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->get3DReferencePtg(Lorg/apache/poi/ss/util/AreaReference;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v5

    .line 821
    .local v5, "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    new-instance v6, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v6, v5}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v6

    .line 742
    .end local v4    # "bottomRight":Lorg/apache/poi/ss/util/CellReference;
    .end local v5    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v10    # "actualStartRow":I
    .end local v11    # "actualEndRow":I
    .end local v12    # "actualStartCol":I
    .end local v13    # "actualEndCol":I
    .end local v21    # "savePtr0":I
    .end local v24    # "nColQuantifiers":I
    .end local v29    # "startRow":I
    .end local v30    # "tbl":Lorg/apache/poi/ss/usermodel/Table;
    .local v1, "nColQuantifiers":I
    .local v2, "tbl":Lorg/apache/poi/ss/usermodel/Table;
    .local v3, "startColumnName":Ljava/lang/String;
    .local v6, "startRow":I
    .restart local v8    # "savePtr0":I
    .local v22, "sheetName":Ljava/lang/String;
    :cond_29
    move/from16 v24, v1

    move-object/from16 v30, v2

    move/from16 v29, v6

    move/from16 v21, v8

    move-object/from16 v2, v22

    move-object/from16 v22, v3

    .line 744
    .end local v1    # "nColQuantifiers":I
    .end local v3    # "startColumnName":Ljava/lang/String;
    .end local v6    # "startRow":I
    .end local v8    # "savePtr0":I
    .local v2, "sheetName":Ljava/lang/String;
    .restart local v21    # "savePtr0":I
    .local v22, "startColumnName":Ljava/lang/String;
    .restart local v24    # "nColQuantifiers":I
    .restart local v29    # "startRow":I
    .restart local v30    # "tbl":Lorg/apache/poi/ss/usermodel/Table;
    :goto_a
    if-ltz v10, :cond_2a

    .line 745
    new-instance v1, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v3, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->VALUE_INVALID:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    invoke-direct {v1, v3}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v1

    .line 747
    :cond_2a
    new-instance v1, Lorg/apache/poi/ss/formula/FormulaParseException;

    const-string v3, "Formula contained [#This Row] or [@] structured reference but this row < 0. Row index must be specified for row-referencing structured references."

    invoke-direct {v1, v3}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 694
    .end local v9    # "endColumnName":Ljava/lang/String;
    .end local v21    # "savePtr0":I
    .end local v29    # "startRow":I
    .end local v30    # "tbl":Lorg/apache/poi/ss/usermodel/Table;
    .local v2, "tbl":Lorg/apache/poi/ss/usermodel/Table;
    .restart local v6    # "startRow":I
    .restart local v8    # "savePtr0":I
    .local v22, "sheetName":Ljava/lang/String;
    .restart local v23    # "nColQuantifiers":I
    .local v24, "endColumnName":Ljava/lang/String;
    .local v25, "startColumnName":Ljava/lang/String;
    :cond_2b
    new-instance v1, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is illegal: you should not use \',\' with column quantifiers"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 668
    .end local v23    # "nColQuantifiers":I
    .end local v24    # "endColumnName":Ljava/lang/String;
    .end local v25    # "startColumnName":Ljava/lang/String;
    .end local v26    # "endCol":I
    .end local v27    # "savePtr1":I
    .end local v28    # "startCol":I
    .local v4, "startCol":I
    .local v5, "endCol":I
    .local v9, "specName":Ljava/lang/String;
    .local v15, "savePtr1":I
    :cond_2c
    new-instance v1, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 630
    .end local v4    # "startCol":I
    .end local v5    # "endCol":I
    .end local v6    # "startRow":I
    .end local v7    # "endRow":I
    .end local v8    # "savePtr0":I
    .end local v9    # "specName":Ljava/lang/String;
    .end local v14    # "nSpecQuantifiers":I
    .end local v15    # "savePtr1":I
    .end local v16    # "isTotalsSpec":Z
    .end local v17    # "isThisRowSpec":Z
    .end local v18    # "isDataSpec":Z
    .end local v19    # "isHeadersSpec":Z
    .end local v20    # "isAllSpec":Z
    .end local v22    # "sheetName":Ljava/lang/String;
    :cond_2d
    move-object/from16 v30, v2

    .end local v2    # "tbl":Lorg/apache/poi/ss/usermodel/Table;
    .restart local v30    # "tbl":Lorg/apache/poi/ss/usermodel/Table;
    new-instance v1, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal table name: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 626
    .end local v30    # "tbl":Lorg/apache/poi/ss/usermodel/Table;
    :cond_2e
    move-object v3, v1

    new-instance v1, Lorg/apache/poi/ss/formula/FormulaParseException;

    const-string v2, "Structured references work only on XSSF (Excel 2007+)!"

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static parseStructuredReference(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;I)Lorg/apache/poi/ss/formula/ptg/Area3DPxg;
    .locals 4
    .param p0, "tableText"    # Ljava/lang/String;
    .param p1, "workbook"    # Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;
    .param p2, "rowIndex"    # I

    .line 203
    const/4 v0, -0x1

    .line 204
    .local v0, "sheetIndex":I
    sget-object v1, Lorg/apache/poi/ss/formula/FormulaType;->CELL:Lorg/apache/poi/ss/formula/FormulaType;

    const/4 v2, -0x1

    invoke-static {p0, p1, v1, v2, p2}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    .line 205
    .local v1, "arr":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v3, v1, v2

    instance-of v3, v3, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    if-eqz v3, :cond_0

    .line 208
    aget-object v2, v1, v2

    check-cast v2, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    return-object v2

    .line 206
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Illegal structured reference"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private parseUnary(Z)Lorg/apache/poi/ss/formula/ParseNode;
    .locals 7
    .param p1, "isPlus"    # Z

    .line 1551
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v0}, Lorg/apache/poi/ss/formula/FormulaParser;->IsDigit(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1552
    .local v0, "numberFollows":Z
    :goto_1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->powerFactor()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v1

    .line 1554
    .local v1, "factor":Lorg/apache/poi/ss/formula/ParseNode;
    if-eqz v0, :cond_5

    .line 1557
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ParseNode;->getToken()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    .line 1558
    .local v2, "token":Lorg/apache/poi/ss/formula/ptg/Ptg;
    instance-of v3, v2, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    if-eqz v3, :cond_3

    .line 1559
    if-eqz p1, :cond_2

    .line 1560
    return-object v1

    .line 1562
    :cond_2
    new-instance v3, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    move-object v4, v2

    check-cast v4, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;->getValue()D

    move-result-wide v4

    neg-double v4, v4

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;-><init>(D)V

    move-object v2, v3

    .line 1563
    new-instance v3, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v3, v2}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v3

    .line 1565
    :cond_3
    instance-of v3, v2, Lorg/apache/poi/ss/formula/ptg/IntPtg;

    if-eqz v3, :cond_5

    .line 1566
    if-eqz p1, :cond_4

    .line 1567
    return-object v1

    .line 1569
    :cond_4
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/ss/formula/ptg/IntPtg;

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/IntPtg;->getValue()I

    move-result v3

    .line 1571
    .local v3, "intVal":I
    new-instance v4, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    neg-int v5, v3

    int-to-double v5, v5

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;-><init>(D)V

    move-object v2, v4

    .line 1572
    new-instance v4, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v4, v2}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v4

    .line 1575
    .end local v2    # "token":Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v3    # "intVal":I
    :cond_5
    new-instance v2, Lorg/apache/poi/ss/formula/ParseNode;

    if-eqz p1, :cond_6

    sget-object v3, Lorg/apache/poi/ss/formula/ptg/UnaryPlusPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    goto :goto_2

    :cond_6
    sget-object v3, Lorg/apache/poi/ss/formula/ptg/UnaryMinusPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    :goto_2
    invoke-direct {v2, v3, v1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;)V

    return-object v2
.end method

.method private parseUnquotedIdentifier()Ljava/lang/String;
    .locals 3

    .line 1780
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v1, 0x27

    if-eq v0, v1, :cond_3

    .line 1783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1784
    .local v0, "sb":Ljava/lang/StringBuilder;
    :goto_0
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 1788
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 1789
    const/4 v1, 0x0

    return-object v1

    .line 1792
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1785
    :cond_2
    :goto_1
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1786
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    goto :goto_0

    .line 1781
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    const-string/jumbo v0, "unquoted identifier"

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private percentFactor()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 3

    .line 1498
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseSimpleFactor()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    .line 1500
    .local v0, "result":Lorg/apache/poi/ss/formula/ParseNode;
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1501
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x25

    if-eq v1, v2, :cond_0

    .line 1502
    return-object v0

    .line 1504
    :cond_0
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 1505
    new-instance v1, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v2, Lorg/apache/poi/ss/formula/ptg/PercentPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private powerFactor()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 4

    .line 1485
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->percentFactor()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    .line 1487
    .local v0, "result":Lorg/apache/poi/ss/formula/ParseNode;
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1488
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x5e

    if-eq v1, v2, :cond_0

    .line 1489
    return-object v0

    .line 1491
    :cond_0
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 1492
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->percentFactor()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v1

    .line 1493
    .local v1, "other":Lorg/apache/poi/ss/formula/ParseNode;
    new-instance v2, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v3, Lorg/apache/poi/ss/formula/ptg/PowerPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    invoke-direct {v2, v3, v0, v1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;Lorg/apache/poi/ss/formula/ParseNode;)V

    move-object v0, v2

    .line 1494
    .end local v1    # "other":Lorg/apache/poi/ss/formula/ParseNode;
    goto :goto_0
.end method

.method private resetPointer(I)V
    .locals 2
    .param p1, "ptr"    # I

    .line 240
    iput p1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 241
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaLength:I

    if-gt p1, v0, :cond_0

    .line 242
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    goto :goto_0

    .line 246
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    .line 248
    :goto_0
    return-void
.end method

.method private unionExpression()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 5

    .line 1880
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->intersectionExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    .line 1881
    .local v0, "result":Lorg/apache/poi/ss/formula/ParseNode;
    const/4 v1, 0x0

    .line 1883
    .local v1, "hasUnions":Z
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1884
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1

    .line 1892
    if-eqz v1, :cond_0

    .line 1893
    invoke-static {v0}, Lorg/apache/poi/ss/formula/FormulaParser;->augmentWithMemPtg(Lorg/apache/poi/ss/formula/ParseNode;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v2

    return-object v2

    .line 1895
    :cond_0
    return-object v0

    .line 1886
    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 1887
    const/4 v1, 0x1

    .line 1888
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->intersectionExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v2

    .line 1889
    .local v2, "other":Lorg/apache/poi/ss/formula/ParseNode;
    new-instance v3, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v4, Lorg/apache/poi/ss/formula/ptg/UnionPtg;->instance:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    invoke-direct {v3, v4, v0, v2}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;Lorg/apache/poi/ss/formula/ParseNode;)V

    move-object v0, v3

    .line 1890
    goto :goto_0
.end method

.method private validateNumArgs(ILorg/apache/poi/ss/formula/function/FunctionMetadata;)V
    .locals 8
    .param p1, "numArgs"    # I
    .param p2, "fm"    # Lorg/apache/poi/ss/formula/function/FunctionMetadata;

    .line 1405
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getMinParams()I

    move-result v0

    const-string v1, "."

    const-string v2, " but got "

    const-string v3, "Expected "

    const-string v4, " were expected"

    const-string v5, "\'. "

    if-ge p1, v0, :cond_1

    .line 1406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Too few arguments to function \'"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1407
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->hasFixedArgsLength()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1408
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getMinParams()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1410
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "At least "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getMinParams()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1412
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1413
    new-instance v1, Lorg/apache/poi/ss/formula/FormulaParseException;

    invoke-direct {v1, v0}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1417
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->hasUnlimitedVarags()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1418
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    if-eqz v0, :cond_2

    .line 1419
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxFunctionArgs()I

    move-result v0

    .local v0, "maxArgs":I
    goto :goto_1

    .line 1422
    .end local v0    # "maxArgs":I
    :cond_2
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getMaxParams()I

    move-result v0

    .restart local v0    # "maxArgs":I
    goto :goto_1

    .line 1425
    .end local v0    # "maxArgs":I
    :cond_3
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getMaxParams()I

    move-result v0

    .line 1428
    .restart local v0    # "maxArgs":I
    :goto_1
    if-le p1, v0, :cond_5

    .line 1429
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Too many arguments to function \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1430
    .local v5, "msg":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->hasFixedArgsLength()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1431
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v5    # "msg":Ljava/lang/String;
    .local v3, "msg":Ljava/lang/String;
    goto :goto_2

    .line 1433
    .end local v3    # "msg":Ljava/lang/String;
    .restart local v5    # "msg":Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "At most "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1435
    .end local v5    # "msg":Ljava/lang/String;
    .restart local v3    # "msg":Ljava/lang/String;
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1436
    .end local v3    # "msg":Ljava/lang/String;
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Lorg/apache/poi/ss/formula/FormulaParseException;

    invoke-direct {v2, v1}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1438
    .end local v1    # "msg":Ljava/lang/String;
    :cond_5
    return-void
.end method
