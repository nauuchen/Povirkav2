.class public Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
.super Ljava/lang/Object;
.source "XSSFRichTextString.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/RichTextString;


# static fields
.field private static final utfPtrn:Ljava/util/regex/Pattern;


# instance fields
.field private st:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

.field private styles:Lorg/apache/poi/xssf/model/StylesTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    const-string v0, "_x([0-9A-Fa-f]{4})_"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->utfPtrn:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->st:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->st:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    .line 88
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->setT(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->st:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->xgetT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->preserveSpaces(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)V
    .locals 0
    .param p1, "st"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->st:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    .line 104
    return-void
.end method

.method private getThemesTable()Lorg/apache/poi/xssf/model/ThemesTable;
    .locals 1

    .line 598
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->styles:Lorg/apache/poi/xssf/model/StylesTable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 599
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/StylesTable;->getTheme()Lorg/apache/poi/xssf/model/ThemesTable;

    move-result-object v0

    return-object v0
.end method

.method protected static preserveSpaces(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;)V
    .locals 7
    .param p0, "xs"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;

    .line 473
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;->getStringValue()Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 475
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 476
    .local v1, "firstChar":C
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 477
    .local v2, "lastChar":C
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 478
    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v3

    .line 479
    .local v3, "c":Lorg/apache/xmlbeans/XmlCursor;
    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->toNextToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    .line 480
    new-instance v4, Ljavax/xml/namespace/QName;

    const-string v5, "http://www.w3.org/XML/1998/namespace"

    const-string v6, "space"

    invoke-direct {v4, v5, v6}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "preserve"

    invoke-interface {v3, v4, v5}, Lorg/apache/xmlbeans/XmlCursor;->insertAttributeWithValue(Ljavax/xml/namespace/QName;Ljava/lang/String;)V

    .line 481
    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 484
    .end local v1    # "firstChar":C
    .end local v2    # "lastChar":C
    .end local v3    # "c":Lorg/apache/xmlbeans/XmlCursor;
    :cond_1
    return-void
.end method

.method private setRunAttributes(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;)V
    .locals 5
    .param p1, "ctFont"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;
    .param p2, "pr"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;

    .line 223
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfBArray()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->addNewB()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v0

    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getBArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->getVal()Z

    move-result v2

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->setVal(Z)V

    .line 224
    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfUArray()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->addNewU()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUnderlineProperty;

    move-result-object v0

    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getUArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUnderlineProperty;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUnderlineProperty;->getVal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues$Enum;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUnderlineProperty;->setVal(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues$Enum;)V

    .line 225
    :cond_1
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfIArray()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->addNewI()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v0

    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getIArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->getVal()Z

    move-result v2

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->setVal(Z)V

    .line 226
    :cond_2
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfColorArray()I

    move-result v0

    if-lez v0, :cond_7

    .line 227
    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getColorArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    .line 228
    .local v0, "c1":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->addNewColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v2

    .line 229
    .local v2, "c2":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->isSetAuto()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getAuto()Z

    move-result v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setAuto(Z)V

    .line 230
    :cond_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->isSetIndexed()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getIndexed()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    .line 231
    :cond_4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->isSetRgb()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getRgb()[B

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setRgb([B)V

    .line 232
    :cond_5
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->isSetTheme()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getTheme()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setTheme(J)V

    .line 233
    :cond_6
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->isSetTint()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getTint()D

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setTint(D)V

    .line 235
    .end local v0    # "c1":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
    .end local v2    # "c2":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
    :cond_7
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfSzArray()I

    move-result v0

    if-lez v0, :cond_8

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->addNewSz()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontSize;

    move-result-object v0

    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getSzArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontSize;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontSize;->getVal()D

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontSize;->setVal(D)V

    .line 236
    :cond_8
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfNameArray()I

    move-result v0

    if-lez v0, :cond_9

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->addNewRFont()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontName;

    move-result-object v0

    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getNameArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontName;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontName;->getVal()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontName;->setVal(Ljava/lang/String;)V

    .line 237
    :cond_9
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfFamilyArray()I

    move-result v0

    if-lez v0, :cond_a

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->addNewFamily()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;

    move-result-object v0

    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getFamilyArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;->getVal()I

    move-result v2

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;->setVal(I)V

    .line 238
    :cond_a
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfSchemeArray()I

    move-result v0

    if-lez v0, :cond_b

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->addNewScheme()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontScheme;

    move-result-object v0

    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getSchemeArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontScheme;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontScheme;->getVal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFontScheme$Enum;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontScheme;->setVal(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFontScheme$Enum;)V

    .line 239
    :cond_b
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfCharsetArray()I

    move-result v0

    if-lez v0, :cond_c

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->addNewCharset()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;

    move-result-object v0

    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getCharsetArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;->getVal()I

    move-result v2

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;->setVal(I)V

    .line 240
    :cond_c
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfCondenseArray()I

    move-result v0

    if-lez v0, :cond_d

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->addNewCondense()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v0

    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getCondenseArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->getVal()Z

    move-result v2

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->setVal(Z)V

    .line 241
    :cond_d
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfExtendArray()I

    move-result v0

    if-lez v0, :cond_e

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->addNewExtend()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v0

    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getExtendArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->getVal()Z

    move-result v2

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->setVal(Z)V

    .line 242
    :cond_e
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfVertAlignArray()I

    move-result v0

    if-lez v0, :cond_f

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->addNewVertAlign()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVerticalAlignFontProperty;

    move-result-object v0

    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getVertAlignArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVerticalAlignFontProperty;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVerticalAlignFontProperty;->getVal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignRun$Enum;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVerticalAlignFontProperty;->setVal(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignRun$Enum;)V

    .line 243
    :cond_f
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfOutlineArray()I

    move-result v0

    if-lez v0, :cond_10

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->addNewOutline()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v0

    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getOutlineArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->getVal()Z

    move-result v2

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->setVal(Z)V

    .line 244
    :cond_10
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfShadowArray()I

    move-result v0

    if-lez v0, :cond_11

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->addNewShadow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v0

    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getShadowArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->getVal()Z

    move-result v2

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->setVal(Z)V

    .line 245
    :cond_11
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfStrikeArray()I

    move-result v0

    if-lez v0, :cond_12

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->addNewStrike()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v0

    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getStrikeArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->getVal()Z

    move-result v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->setVal(Z)V

    .line 246
    :cond_12
    return-void
.end method

.method protected static toCTFont(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;
    .locals 6
    .param p0, "pr"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;

    .line 433
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    move-result-object v0

    .line 436
    .local v0, "ctFont":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;
    if-nez p0, :cond_0

    .line 437
    return-object v0

    .line 440
    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->sizeOfBArray()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewB()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v1

    invoke-interface {p0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->getBArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->getVal()Z

    move-result v3

    invoke-interface {v1, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->setVal(Z)V

    .line 441
    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->sizeOfUArray()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewU()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUnderlineProperty;

    move-result-object v1

    invoke-interface {p0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->getUArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUnderlineProperty;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUnderlineProperty;->getVal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues$Enum;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUnderlineProperty;->setVal(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues$Enum;)V

    .line 442
    :cond_2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->sizeOfIArray()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewI()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v1

    invoke-interface {p0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->getIArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->getVal()Z

    move-result v3

    invoke-interface {v1, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->setVal(Z)V

    .line 443
    :cond_3
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->sizeOfColorArray()I

    move-result v1

    if-lez v1, :cond_8

    .line 444
    invoke-interface {p0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->getColorArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v1

    .line 445
    .local v1, "c1":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v3

    .line 446
    .local v3, "c2":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->isSetAuto()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getAuto()Z

    move-result v4

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setAuto(Z)V

    .line 447
    :cond_4
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->isSetIndexed()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getIndexed()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    .line 448
    :cond_5
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->isSetRgb()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getRgb()[B

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setRgb([B)V

    .line 449
    :cond_6
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->isSetTheme()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getTheme()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setTheme(J)V

    .line 450
    :cond_7
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->isSetTint()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getTint()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setTint(D)V

    .line 452
    .end local v1    # "c1":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
    .end local v3    # "c2":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
    :cond_8
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->sizeOfSzArray()I

    move-result v1

    if-lez v1, :cond_9

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewSz()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontSize;

    move-result-object v1

    invoke-interface {p0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->getSzArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontSize;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontSize;->getVal()D

    move-result-wide v3

    invoke-interface {v1, v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontSize;->setVal(D)V

    .line 453
    :cond_9
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->sizeOfRFontArray()I

    move-result v1

    if-lez v1, :cond_a

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewName()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontName;

    move-result-object v1

    invoke-interface {p0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->getRFontArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontName;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontName;->getVal()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontName;->setVal(Ljava/lang/String;)V

    .line 454
    :cond_a
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->sizeOfFamilyArray()I

    move-result v1

    if-lez v1, :cond_b

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewFamily()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;

    move-result-object v1

    invoke-interface {p0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->getFamilyArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;->getVal()I

    move-result v3

    invoke-interface {v1, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;->setVal(I)V

    .line 455
    :cond_b
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->sizeOfSchemeArray()I

    move-result v1

    if-lez v1, :cond_c

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewScheme()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontScheme;

    move-result-object v1

    invoke-interface {p0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->getSchemeArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontScheme;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontScheme;->getVal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFontScheme$Enum;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontScheme;->setVal(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFontScheme$Enum;)V

    .line 456
    :cond_c
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->sizeOfCharsetArray()I

    move-result v1

    if-lez v1, :cond_d

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewCharset()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;

    move-result-object v1

    invoke-interface {p0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->getCharsetArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;->getVal()I

    move-result v3

    invoke-interface {v1, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;->setVal(I)V

    .line 457
    :cond_d
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->sizeOfCondenseArray()I

    move-result v1

    if-lez v1, :cond_e

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewCondense()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v1

    invoke-interface {p0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->getCondenseArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->getVal()Z

    move-result v3

    invoke-interface {v1, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->setVal(Z)V

    .line 458
    :cond_e
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->sizeOfExtendArray()I

    move-result v1

    if-lez v1, :cond_f

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewExtend()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v1

    invoke-interface {p0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->getExtendArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->getVal()Z

    move-result v3

    invoke-interface {v1, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->setVal(Z)V

    .line 459
    :cond_f
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->sizeOfVertAlignArray()I

    move-result v1

    if-lez v1, :cond_10

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewVertAlign()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVerticalAlignFontProperty;

    move-result-object v1

    invoke-interface {p0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->getVertAlignArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVerticalAlignFontProperty;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVerticalAlignFontProperty;->getVal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignRun$Enum;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVerticalAlignFontProperty;->setVal(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignRun$Enum;)V

    .line 460
    :cond_10
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->sizeOfOutlineArray()I

    move-result v1

    if-lez v1, :cond_11

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewOutline()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v1

    invoke-interface {p0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->getOutlineArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->getVal()Z

    move-result v3

    invoke-interface {v1, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->setVal(Z)V

    .line 461
    :cond_11
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->sizeOfShadowArray()I

    move-result v1

    if-lez v1, :cond_12

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewShadow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v1

    invoke-interface {p0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->getShadowArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->getVal()Z

    move-result v3

    invoke-interface {v1, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->setVal(Z)V

    .line 462
    :cond_12
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->sizeOfStrikeArray()I

    move-result v1

    if-lez v1, :cond_13

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewStrike()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v1

    invoke-interface {p0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->getStrikeArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->getVal()Z

    move-result v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->setVal(Z)V

    .line 464
    :cond_13
    return-object v0
.end method

.method static utfDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "value"    # Ljava/lang/String;

    .line 500
    if-eqz p0, :cond_4

    const-string v0, "_x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 504
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 505
    .local v0, "buf":Ljava/lang/StringBuilder;
    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->utfPtrn:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 506
    .local v1, "m":Ljava/util/regex/Matcher;
    const/4 v2, 0x0

    .line 507
    .local v2, "idx":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 508
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 509
    .local v3, "pos":I
    if-le v3, v2, :cond_1

    .line 510
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 514
    .local v4, "code":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 515
    .local v5, "icode":I
    int-to-char v6, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 518
    .end local v3    # "pos":I
    .end local v4    # "code":Ljava/lang/String;
    .end local v5    # "icode":I
    goto :goto_0

    .line 522
    :cond_2
    if-nez v2, :cond_3

    .line 523
    return-object p0

    .line 526
    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 501
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v2    # "idx":I
    :cond_4
    :goto_1
    return-object p0
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 216
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->append(Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/XSSFFont;)V

    .line 217
    return-void
.end method

.method public append(Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/XSSFFont;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "font"    # Lorg/apache/poi/xssf/usermodel/XSSFFont;

    .line 193
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->st:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->sizeOfRArray()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->st:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->isSetT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->st:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->addNewR()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;

    move-result-object v0

    .line 196
    .local v0, "lt":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->st:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->getT()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;->setT(Ljava/lang/String;)V

    .line 197
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;->xgetT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->preserveSpaces(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;)V

    .line 198
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->st:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->unsetT()V

    .line 200
    .end local v0    # "lt":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->st:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->addNewR()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;

    move-result-object v0

    .line 201
    .restart local v0    # "lt":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;->setT(Ljava/lang/String;)V

    .line 202
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;->xgetT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->preserveSpaces(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;)V

    .line 204
    if-eqz p2, :cond_1

    .line 205
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;->addNewRPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;

    move-result-object v1

    .line 206
    .local v1, "pr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;
    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->getCTFont()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->setRunAttributes(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;)V

    .line 208
    .end local v1    # "pr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;
    :cond_1
    return-void
.end method

.method public applyFont(IILorg/apache/poi/ss/usermodel/Font;)V
    .locals 6
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "font"    # Lorg/apache/poi/ss/usermodel/Font;

    .line 134
    const-string v0, " and "

    if-gt p1, p2, :cond_3

    .line 136
    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->length()I

    move-result v1

    if-gt p2, v1, :cond_2

    .line 139
    if-ne p1, p2, :cond_0

    .line 140
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->st:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->sizeOfRArray()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->st:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->isSetT()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->st:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->addNewR()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->st:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->getT()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;->setT(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->st:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->unsetT()V

    .line 148
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "text":Ljava/lang/String;
    move-object v1, p3

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFFont;

    .line 151
    .local v1, "xssfFont":Lorg/apache/poi/xssf/usermodel/XSSFFont;
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->st:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    invoke-virtual {p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getFormatMap(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)Ljava/util/TreeMap;

    move-result-object v2

    .line 152
    .local v2, "formats":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;>;"
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;

    move-result-object v3

    .line 153
    .local v3, "fmt":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->getCTFont()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->setRunAttributes(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;)V

    .line 154
    invoke-virtual {p0, v2, p1, p2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->applyFont(Ljava/util/TreeMap;IILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;)V

    .line 156
    invoke-virtual {p0, v0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->buildCTRst(Ljava/lang/String;Ljava/util/TreeMap;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object v4

    .line 157
    .local v4, "newSt":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;
    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->st:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    invoke-interface {v5, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 158
    return-void

    .line 137
    .end local v0    # "text":Ljava/lang/String;
    .end local v1    # "xssfFont":Lorg/apache/poi/xssf/usermodel/XSSFFont;
    .end local v2    # "formats":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;>;"
    .end local v3    # "fmt":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;
    .end local v4    # "newSt":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start and end index not in range, but had "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start index must be less than end index, but had "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public applyFont(IIS)V
    .locals 3
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "fontIndex"    # S

    .line 115
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->styles:Lorg/apache/poi/xssf/model/StylesTable;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFFont;

    invoke-direct {v0}, Lorg/apache/poi/xssf/usermodel/XSSFFont;-><init>()V

    .line 119
    .local v0, "font":Lorg/apache/poi/xssf/usermodel/XSSFFont;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->setFontName(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    .end local v0    # "font":Lorg/apache/poi/xssf/usermodel/XSSFFont;
    :cond_0
    invoke-virtual {v0, p3}, Lorg/apache/poi/xssf/model/StylesTable;->getFontAt(I)Lorg/apache/poi/xssf/usermodel/XSSFFont;

    move-result-object v0

    .line 123
    .restart local v0    # "font":Lorg/apache/poi/xssf/usermodel/XSSFFont;
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->applyFont(IILorg/apache/poi/ss/usermodel/Font;)V

    .line 124
    return-void
.end method

.method applyFont(Ljava/util/TreeMap;IILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;)V
    .locals 5
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "fmt"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;",
            ">;II",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;",
            ")V"
        }
    .end annotation

    .line 533
    .local p1, "formats":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;>;"
    const/4 v0, 0x0

    .line 534
    .local v0, "runStartIdx":I
    invoke-virtual {p1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 535
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 536
    .local v2, "runEndIdx":I
    if-lt v0, p2, :cond_0

    if-ge v2, p3, :cond_0

    .line 537
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 539
    :cond_0
    move v0, v2

    .line 540
    .end local v2    # "runEndIdx":I
    goto :goto_0

    .line 542
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_1
    if-lez p2, :cond_3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 544
    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 545
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, p2, :cond_2

    .line 546
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    goto :goto_2

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;>;"
    :cond_2
    goto :goto_1

    .line 551
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, p4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/TreeMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    .line 557
    .local v1, "sub":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;>;"
    :goto_3
    invoke-interface {v1}, Ljava/util/SortedMap;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    invoke-interface {v1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 558
    :cond_4
    return-void
.end method

.method public applyFont(Lorg/apache/poi/ss/usermodel/Font;)V
    .locals 3
    .param p1, "font"    # Lorg/apache/poi/ss/usermodel/Font;

    .line 165
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->applyFont(IILorg/apache/poi/ss/usermodel/Font;)V

    .line 167
    return-void
.end method

.method public applyFont(S)V
    .locals 4
    .param p1, "fontIndex"    # S

    .line 176
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->styles:Lorg/apache/poi/xssf/model/StylesTable;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFFont;

    invoke-direct {v0}, Lorg/apache/poi/xssf/usermodel/XSSFFont;-><init>()V

    .line 178
    .local v0, "font":Lorg/apache/poi/xssf/usermodel/XSSFFont;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->setFontName(Ljava/lang/String;)V

    goto :goto_0

    .line 180
    .end local v0    # "font":Lorg/apache/poi/xssf/usermodel/XSSFFont;
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/model/StylesTable;->getFontAt(I)Lorg/apache/poi/xssf/usermodel/XSSFFont;

    move-result-object v0

    .line 182
    .restart local v0    # "font":Lorg/apache/poi/xssf/usermodel/XSSFFont;
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "text":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->applyFont(IILorg/apache/poi/ss/usermodel/Font;)V

    .line 184
    return-void
.end method

.method buildCTRst(Ljava/lang/String;Ljava/util/TreeMap;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;",
            ">;)",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;"
        }
    .end annotation

    .line 575
    .local p2, "formats":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 579
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object v0

    .line 580
    .local v0, "stf":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;
    const/4 v1, 0x0

    .line 581
    .local v1, "runStartIdx":I
    invoke-virtual {p2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 582
    .local v3, "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 583
    .local v4, "runEndIdx":I
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->addNewR()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;

    move-result-object v5

    .line 584
    .local v5, "run":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 585
    .local v6, "fragment":Ljava/lang/String;
    invoke-interface {v5, v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;->setT(Ljava/lang/String;)V

    .line 586
    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;->xgetT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->preserveSpaces(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;)V

    .line 588
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;

    .line 589
    .local v7, "fmt":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;
    if-eqz v7, :cond_0

    .line 590
    invoke-interface {v5, v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;->setRPr(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;)V

    .line 592
    :cond_0
    move v1, v4

    .line 593
    .end local v3    # "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;>;"
    .end local v4    # "runEndIdx":I
    .end local v5    # "run":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;
    .end local v6    # "fragment":Ljava/lang/String;
    .end local v7    # "fmt":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;
    goto :goto_0

    .line 594
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v0

    .line 576
    .end local v0    # "stf":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;
    .end local v1    # "runStartIdx":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Text length was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but the last format index was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearFormatting()V
    .locals 3

    .line 268
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->st:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->setRArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;)V

    .line 270
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->st:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->setT(Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public getCTRst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 406
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->st:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    return-object v0
.end method

.method public getFontAtIndex(I)Lorg/apache/poi/xssf/usermodel/XSSFFont;
    .locals 9
    .param p1, "index"    # I

    .line 384
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getThemesTable()Lorg/apache/poi/xssf/model/ThemesTable;

    move-result-object v0

    .line 385
    .local v0, "themes":Lorg/apache/poi/xssf/model/ThemesTable;
    const/4 v1, 0x0

    .line 387
    .local v1, "pos":I
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->st:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->getRArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;

    move-result-object v2

    .local v2, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 388
    .local v5, "r":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;
    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;->getT()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 389
    .local v6, "length":I
    if-lt p1, v1, :cond_0

    add-int v7, v1, v6

    if-ge p1, v7, :cond_0

    .line 390
    new-instance v7, Lorg/apache/poi/xssf/usermodel/XSSFFont;

    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;->getRPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->toCTFont(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/poi/xssf/usermodel/XSSFFont;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;)V

    .line 391
    .local v7, "fnt":Lorg/apache/poi/xssf/usermodel/XSSFFont;
    invoke-virtual {v7, v0}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->setThemesTable(Lorg/apache/poi/xssf/model/ThemesTable;)V

    .line 392
    return-object v7

    .line 395
    .end local v7    # "fnt":Lorg/apache/poi/xssf/usermodel/XSSFFont;
    :cond_0
    add-int/2addr v1, v6

    .line 387
    .end local v5    # "r":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;
    .end local v6    # "length":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 397
    .end local v2    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getFontOfFormattingRun(I)Lorg/apache/poi/xssf/usermodel/XSSFFont;
    .locals 3
    .param p1, "index"    # I

    .line 361
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->st:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->sizeOfRArray()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->st:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->sizeOfRArray()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 365
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->st:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->getRArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;

    move-result-object v0

    .line 366
    .local v0, "r":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;->getRPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 367
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;->getRPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->toCTFont(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFFont;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;)V

    .line 368
    .local v1, "fnt":Lorg/apache/poi/xssf/usermodel/XSSFFont;
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getThemesTable()Lorg/apache/poi/xssf/model/ThemesTable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->setThemesTable(Lorg/apache/poi/xssf/model/ThemesTable;)V

    .line 369
    return-object v1

    .line 372
    .end local v1    # "fnt":Lorg/apache/poi/xssf/usermodel/XSSFFont;
    :cond_1
    return-object v1

    .line 362
    .end local v0    # "r":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;
    :cond_2
    :goto_0
    return-object v1
.end method

.method getFormatMap(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)Ljava/util/TreeMap;
    .locals 9
    .param p1, "entry"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;",
            ")",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;",
            ">;"
        }
    .end annotation

    .line 561
    const/4 v0, 0x0

    .line 562
    .local v0, "length":I
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 564
    .local v1, "formats":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;>;"
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->getRArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;

    move-result-object v2

    .local v2, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 565
    .local v5, "r":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;
    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;->getT()Ljava/lang/String;

    move-result-object v6

    .line 566
    .local v6, "txt":Ljava/lang/String;
    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;->getRPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;

    move-result-object v7

    .line 568
    .local v7, "fmt":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v0, v8

    .line 569
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    .end local v5    # "r":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;
    .end local v6    # "txt":Ljava/lang/String;
    .end local v7    # "fmt":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 571
    .end local v2    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_0
    return-object v1
.end method

.method public getIndexOfFormattingRun(I)I
    .locals 4
    .param p1, "index"    # I

    .line 280
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->st:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->sizeOfRArray()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 282
    :cond_0
    const/4 v0, 0x0

    .line 283
    .local v0, "pos":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->st:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->sizeOfRArray()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 284
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->st:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    invoke-interface {v2, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->getRArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;

    move-result-object v2

    .line 285
    .local v2, "r":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;
    if-ne v1, p1, :cond_1

    return v0

    .line 287
    :cond_1
    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;->getT()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    .line 283
    .end local v2    # "r":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    .end local v1    # "i":I
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method public getLengthOfFormattingRun(I)I
    .locals 2
    .param p1, "index"    # I

    .line 299
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->st:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->sizeOfRArray()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->st:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->sizeOfRArray()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->st:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->getRArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;

    move-result-object v0

    .line 304
    .local v0, "r":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;->getT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    return v1

    .line 300
    .end local v0    # "r":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 6

    .line 311
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->st:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->sizeOfRArray()I

    move-result v0

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->st:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->getT()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->utfDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 314
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->st:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->getRArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;

    move-result-object v1

    .local v1, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 317
    .local v4, "r":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;
    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;->getT()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .end local v4    # "r":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 319
    .end local v1    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->utfDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public hasFormatting()Z
    .locals 7

    .line 254
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->st:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->getRArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;

    move-result-object v0

    .line 255
    .local v0, "rs":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_1

    .line 258
    :cond_0
    move-object v2, v0

    .local v2, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 259
    .local v5, "r":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;
    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;->isSetRPr()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v1, 0x1

    return v1

    .line 258
    .end local v5    # "r":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 261
    .end local v2    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_2
    return v1

    .line 256
    :cond_3
    :goto_1
    return v1
.end method

.method public length()I
    .locals 1

    .line 344
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public numFormattingRuns()I
    .locals 1

    .line 351
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->st:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->sizeOfRArray()I

    move-result v0

    return v0
.end method

.method public setString(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 328
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->clearFormatting()V

    .line 329
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->st:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->setT(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->st:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->xgetT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->preserveSpaces(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;)V

    .line 331
    return-void
.end method

.method protected setStylesTableReference(Lorg/apache/poi/xssf/model/StylesTable;)V
    .locals 9
    .param p1, "tbl"    # Lorg/apache/poi/xssf/model/StylesTable;

    .line 410
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->styles:Lorg/apache/poi/xssf/model/StylesTable;

    .line 411
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->st:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->sizeOfRArray()I

    move-result v0

    if-lez v0, :cond_1

    .line 413
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->st:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->getRArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;

    move-result-object v0

    .local v0, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 414
    .local v3, "r":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;
    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;->getRPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;

    move-result-object v4

    .line 415
    .local v4, "pr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;
    if-eqz v4, :cond_0

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->sizeOfRFontArray()I

    move-result v5

    if-lez v5, :cond_0

    .line 416
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->getRFontArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontName;

    move-result-object v6

    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontName;->getVal()Ljava/lang/String;

    move-result-object v6

    .line 417
    .local v6, "fontName":Ljava/lang/String;
    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 418
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 419
    .local v7, "idx":I
    iget-object v8, p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->styles:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v8, v7}, Lorg/apache/poi/xssf/model/StylesTable;->getFontAt(I)Lorg/apache/poi/xssf/usermodel/XSSFFont;

    move-result-object v8

    .line 420
    .local v8, "font":Lorg/apache/poi/xssf/usermodel/XSSFFont;
    invoke-interface {v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->removeRFont(I)V

    .line 421
    invoke-virtual {v8}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->getCTFont()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->setRunAttributes(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;)V

    .line 413
    .end local v3    # "r":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;
    .end local v4    # "pr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;
    .end local v6    # "fontName":Ljava/lang/String;
    .end local v7    # "idx":I
    .end local v8    # "font":Lorg/apache/poi/xssf/usermodel/XSSFFont;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 426
    .end local v0    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 337
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
