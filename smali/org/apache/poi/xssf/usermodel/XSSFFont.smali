.class public Lorg/apache/poi/xssf/usermodel/XSSFFont;
.super Ljava/lang/Object;
.source "XSSFFont.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Font;


# static fields
.field public static final DEFAULT_FONT_COLOR:S

.field public static final DEFAULT_FONT_NAME:Ljava/lang/String; = "Calibri"

.field public static final DEFAULT_FONT_SIZE:S = 0xbs


# instance fields
.field private _ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

.field private _index:S

.field private _indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

.field private _themes:Lorg/apache/poi/xssf/model/ThemesTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    sget-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->BLACK:Lorg/apache/poi/ss/usermodel/IndexedColors;

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/IndexedColors;->getIndex()S

    move-result v0

    sput-short v0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->DEFAULT_FONT_COLOR:S

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    .line 95
    const-string v0, "Calibri"

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->setFontName(Ljava/lang/String;)V

    .line 96
    const-wide/high16 v0, 0x4026000000000000L    # 11.0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->setFontHeight(D)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;)V
    .locals 1
    .param p1, "font"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    .line 75
    const/4 v0, 0x0

    iput-short v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_index:S

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;ILorg/apache/poi/xssf/usermodel/IndexedColorMap;)V
    .locals 1
    .param p1, "font"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;
    .param p2, "index"    # I
    .param p3, "colorMap"    # Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    .line 86
    int-to-short v0, p2

    iput-short v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_index:S

    .line 87
    iput-object p3, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    .line 88
    return-void
.end method

.method private getFontHeightRaw()D
    .locals 3

    .line 215
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfSzArray()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getSzArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontSize;

    move-result-object v0

    .line 216
    .local v0, "size":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontSize;
    :goto_0
    if-eqz v0, :cond_1

    .line 217
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontSize;->getVal()D

    move-result-wide v1

    .line 218
    .local v1, "fontHeight":D
    return-wide v1

    .line 220
    .end local v1    # "fontHeight":D
    :cond_1
    const-wide/high16 v1, 0x4026000000000000L    # 11.0

    return-wide v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 632
    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFFont;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 634
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFFont;

    .line 635
    .local v0, "cf":Lorg/apache/poi/xssf/usermodel/XSSFFont;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->getCTFont()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getBold()Z
    .locals 3

    .line 113
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfBArray()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getBArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v0

    .line 114
    .local v0, "bold":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->getVal()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getCTFont()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 104
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    return-object v0
.end method

.method public getCharSet()I
    .locals 2

    .line 124
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfCharsetArray()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getCharsetArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;

    move-result-object v0

    .line 125
    .local v0, "charset":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;
    :goto_0
    if-nez v0, :cond_1

    sget-object v1, Lorg/apache/poi/ss/usermodel/FontCharset;->ANSI:Lorg/apache/poi/ss/usermodel/FontCharset;

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;->getVal()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/ss/usermodel/FontCharset;->valueOf(I)Lorg/apache/poi/ss/usermodel/FontCharset;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FontCharset;->getValue()I

    move-result v1

    .line 126
    .local v1, "val":I
    return v1
.end method

.method public getColor()S
    .locals 6

    .line 138
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfColorArray()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getColorArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    .line 139
    .local v0, "color":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
    :goto_0
    if-nez v0, :cond_1

    sget-object v1, Lorg/apache/poi/ss/usermodel/IndexedColors;->BLACK:Lorg/apache/poi/ss/usermodel/IndexedColors;

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/IndexedColors;->getIndex()S

    move-result v1

    return v1

    .line 141
    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getIndexed()J

    move-result-wide v1

    .line 142
    .local v1, "index":J
    sget-short v3, Lorg/apache/poi/xssf/usermodel/XSSFFont;->DEFAULT_FONT_COLOR:S

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    .line 143
    sget-object v3, Lorg/apache/poi/ss/usermodel/IndexedColors;->BLACK:Lorg/apache/poi/ss/usermodel/IndexedColors;

    invoke-virtual {v3}, Lorg/apache/poi/ss/usermodel/IndexedColors;->getIndex()S

    move-result v3

    return v3

    .line 144
    :cond_2
    sget-object v3, Lorg/apache/poi/ss/usermodel/IndexedColors;->RED:Lorg/apache/poi/ss/usermodel/IndexedColors;

    invoke-virtual {v3}, Lorg/apache/poi/ss/usermodel/IndexedColors;->getIndex()S

    move-result v3

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_3

    .line 145
    sget-object v3, Lorg/apache/poi/ss/usermodel/IndexedColors;->RED:Lorg/apache/poi/ss/usermodel/IndexedColors;

    invoke-virtual {v3}, Lorg/apache/poi/ss/usermodel/IndexedColors;->getIndex()S

    move-result v3

    return v3

    .line 147
    :cond_3
    long-to-int v3, v1

    int-to-short v3, v3

    return v3
.end method

.method public getFamily()I
    .locals 2

    .line 589
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfFamilyArray()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getFamilyArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;

    move-result-object v0

    .line 590
    .local v0, "family":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;
    :goto_0
    if-nez v0, :cond_1

    sget-object v1, Lorg/apache/poi/ss/usermodel/FontFamily;->NOT_APPLICABLE:Lorg/apache/poi/ss/usermodel/FontFamily;

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;->getVal()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/ss/usermodel/FontFamily;->valueOf(I)Lorg/apache/poi/ss/usermodel/FontFamily;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FontFamily;->getValue()I

    move-result v1

    return v1
.end method

.method public getFontHeight()S
    .locals 4

    .line 195
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->getFontHeightRaw()D

    move-result-wide v0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public getFontHeightInPoints()S
    .locals 2

    .line 207
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->getFontHeightRaw()D

    move-result-wide v0

    double-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public getFontName()Ljava/lang/String;
    .locals 2

    .line 229
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfNameArray()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getNameArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontName;

    move-result-object v0

    .line 230
    .local v0, "name":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontName;
    :goto_0
    if-nez v0, :cond_1

    const-string v1, "Calibri"

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontName;->getVal()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public getIndex()S
    .locals 1

    .line 624
    iget-short v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_index:S

    return v0
.end method

.method public getItalic()Z
    .locals 3

    .line 239
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfIArray()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getIArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v0

    .line 240
    .local v0, "italic":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->getVal()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getScheme()Lorg/apache/poi/ss/usermodel/FontScheme;
    .locals 2

    .line 566
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfSchemeArray()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getSchemeArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontScheme;

    move-result-object v0

    .line 567
    .local v0, "scheme":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontScheme;
    :goto_0
    if-nez v0, :cond_1

    sget-object v1, Lorg/apache/poi/ss/usermodel/FontScheme;->NONE:Lorg/apache/poi/ss/usermodel/FontScheme;

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontScheme;->getVal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFontScheme$Enum;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFontScheme$Enum;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/ss/usermodel/FontScheme;->valueOf(I)Lorg/apache/poi/ss/usermodel/FontScheme;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public getStrikeout()Z
    .locals 3

    .line 249
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfStrikeArray()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getStrikeArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v0

    .line 250
    .local v0, "strike":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->getVal()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getThemeColor()S
    .locals 4

    .line 179
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfColorArray()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getColorArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    .line 180
    .local v0, "color":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
    :goto_0
    if-nez v0, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getTheme()J

    move-result-wide v1

    .line 181
    .local v1, "index":J
    :goto_1
    long-to-int v3, v1

    int-to-short v3, v3

    return v3
.end method

.method public getTypeOffset()S
    .locals 5

    .line 262
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfVertAlignArray()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getVertAlignArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVerticalAlignFontProperty;

    move-result-object v0

    .line 263
    .local v0, "vAlign":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVerticalAlignFontProperty;
    :goto_0
    if-nez v0, :cond_1

    .line 264
    return v1

    .line 266
    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVerticalAlignFontProperty;->getVal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignRun$Enum;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignRun$Enum;->intValue()I

    move-result v2

    .line 267
    .local v2, "val":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v1, 0x2

    if-eq v2, v1, :cond_3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 271
    return v1

    .line 275
    :cond_2
    new-instance v1, Lorg/apache/poi/POIXMLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong offset value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 273
    :cond_3
    return v3

    .line 269
    :cond_4
    return v1
.end method

.method public getUnderline()B
    .locals 3

    .line 286
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfUArray()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getUArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUnderlineProperty;

    move-result-object v0

    .line 287
    .local v0, "underline":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUnderlineProperty;
    :goto_0
    if-eqz v0, :cond_1

    .line 288
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUnderlineProperty;->getVal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues$Enum;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues$Enum;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/ss/usermodel/FontUnderline;->valueOf(I)Lorg/apache/poi/ss/usermodel/FontUnderline;

    move-result-object v1

    .line 289
    .local v1, "val":Lorg/apache/poi/ss/usermodel/FontUnderline;
    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FontUnderline;->getByteValue()B

    move-result v2

    return v2

    .line 291
    .end local v1    # "val":Lorg/apache/poi/ss/usermodel/FontUnderline;
    :cond_1
    return v1
.end method

.method public getXSSFColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 3

    .line 159
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfColorArray()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getColorArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    .line 160
    .local v0, "ctColor":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
    :goto_0
    if-eqz v0, :cond_2

    .line 161
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    .line 162
    .local v1, "color":Lorg/apache/poi/xssf/usermodel/XSSFColor;
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_themes:Lorg/apache/poi/xssf/model/ThemesTable;

    if-eqz v2, :cond_1

    .line 163
    invoke-virtual {v2, v1}, Lorg/apache/poi/xssf/model/ThemesTable;->inheritFromThemeAsRequired(Lorg/apache/poi/xssf/usermodel/XSSFColor;)V

    .line 165
    :cond_1
    return-object v1

    .line 167
    .end local v1    # "color":Lorg/apache/poi/xssf/usermodel/XSSFColor;
    :cond_2
    return-object v1
.end method

.method public hashCode()I
    .locals 1

    .line 628
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public registerTo(Lorg/apache/poi/xssf/model/StylesTable;)J
    .locals 3
    .param p1, "styles"    # Lorg/apache/poi/xssf/model/StylesTable;

    .line 544
    invoke-virtual {p1}, Lorg/apache/poi/xssf/model/StylesTable;->getTheme()Lorg/apache/poi/xssf/model/ThemesTable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_themes:Lorg/apache/poi/xssf/model/ThemesTable;

    .line 545
    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lorg/apache/poi/xssf/model/StylesTable;->putFont(Lorg/apache/poi/xssf/usermodel/XSSFFont;Z)I

    move-result v0

    int-to-short v0, v0

    .line 546
    .local v0, "idx":S
    iput-short v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_index:S

    .line 547
    int-to-long v1, v0

    return-wide v1
.end method

.method public setBold(Z)V
    .locals 2
    .param p1, "bold"    # Z

    .line 300
    if-eqz p1, :cond_1

    .line 301
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfBArray()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewB()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getBArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v0

    .line 302
    .local v0, "ctBold":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;
    :goto_0
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->setVal(Z)V

    .line 303
    .end local v0    # "ctBold":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;
    goto :goto_1

    .line 304
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->setBArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;)V

    .line 306
    :goto_1
    return-void
.end method

.method public setCharSet(B)V
    .locals 1
    .param p1, "charset"    # B

    .line 315
    and-int/lit16 v0, p1, 0xff

    .line 316
    .local v0, "cs":I
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->setCharSet(I)V

    .line 317
    return-void
.end method

.method public setCharSet(I)V
    .locals 3
    .param p1, "charset"    # I

    .line 325
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/FontCharset;->valueOf(I)Lorg/apache/poi/ss/usermodel/FontCharset;

    move-result-object v0

    .line 326
    .local v0, "fontCharset":Lorg/apache/poi/ss/usermodel/FontCharset;
    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->setCharSet(Lorg/apache/poi/ss/usermodel/FontCharset;)V

    .line 331
    return-void

    .line 329
    :cond_0
    new-instance v1, Lorg/apache/poi/POIXMLException;

    const-string v2, "Attention: an attempt to set a type of unknow charset and charset"

    invoke-direct {v1, v2}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setCharSet(Lorg/apache/poi/ss/usermodel/FontCharset;)V
    .locals 2
    .param p1, "charSet"    # Lorg/apache/poi/ss/usermodel/FontCharset;

    .line 340
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfCharsetArray()I

    move-result v0

    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewCharset()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;

    move-result-object v0

    .local v0, "charsetProperty":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;
    goto :goto_0

    .line 343
    .end local v0    # "charsetProperty":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getCharsetArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;

    move-result-object v0

    .line 347
    .restart local v0    # "charsetProperty":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/FontCharset;->getValue()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;->setVal(I)V

    .line 348
    return-void
.end method

.method public setColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)V
    .locals 2
    .param p1, "color"    # Lorg/apache/poi/xssf/usermodel/XSSFColor;

    .line 379
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->setColorArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    goto :goto_1

    .line 381
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfColorArray()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getColorArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    .line 382
    .local v0, "ctColor":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->isSetIndexed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 383
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->unsetIndexed()V

    .line 385
    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getRGB()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setRgb([B)V

    .line 387
    .end local v0    # "ctColor":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
    :goto_1
    return-void
.end method

.method public setColor(S)V
    .locals 3
    .param p1, "color"    # S

    .line 358
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfColorArray()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getColorArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    .line 359
    .local v0, "ctColor":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
    :goto_0
    const/16 v1, 0xa

    if-eq p1, v1, :cond_2

    const/16 v1, 0x7fff

    if-eq p1, v1, :cond_1

    .line 369
    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    goto :goto_1

    .line 361
    :cond_1
    sget-short v1, Lorg/apache/poi/xssf/usermodel/XSSFFont;->DEFAULT_FONT_COLOR:S

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    .line 362
    goto :goto_1

    .line 365
    :cond_2
    sget-object v1, Lorg/apache/poi/ss/usermodel/IndexedColors;->RED:Lorg/apache/poi/ss/usermodel/IndexedColors;

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/IndexedColors;->getIndex()S

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    .line 366
    nop

    .line 371
    :goto_1
    return-void
.end method

.method public setFamily(I)V
    .locals 2
    .param p1, "value"    # I

    .line 602
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfFamilyArray()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewFamily()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getFamilyArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;

    move-result-object v0

    .line 603
    .local v0, "family":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;
    :goto_0
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIntProperty;->setVal(I)V

    .line 604
    return-void
.end method

.method public setFamily(Lorg/apache/poi/ss/usermodel/FontFamily;)V
    .locals 1
    .param p1, "family"    # Lorg/apache/poi/ss/usermodel/FontFamily;

    .line 614
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/FontFamily;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->setFamily(I)V

    .line 615
    return-void
.end method

.method public setFontHeight(D)V
    .locals 2
    .param p1, "height"    # D

    .line 404
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfSzArray()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewSz()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontSize;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getSzArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontSize;

    move-result-object v0

    .line 405
    .local v0, "fontSize":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontSize;
    :goto_0
    invoke-interface {v0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontSize;->setVal(D)V

    .line 406
    return-void
.end method

.method public setFontHeight(S)V
    .locals 4
    .param p1, "height"    # S

    .line 395
    int-to-double v0, p1

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    div-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->setFontHeight(D)V

    .line 396
    return-void
.end method

.method public setFontHeightInPoints(S)V
    .locals 2
    .param p1, "height"    # S

    .line 414
    int-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->setFontHeight(D)V

    .line 415
    return-void
.end method

.method public setFontName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 439
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfNameArray()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewName()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontName;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getNameArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontName;

    move-result-object v0

    .line 440
    .local v0, "fontName":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontName;
    :goto_0
    if-nez p1, :cond_1

    const-string v1, "Calibri"

    goto :goto_1

    :cond_1
    move-object v1, p1

    :goto_1
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontName;->setVal(Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method public setItalic(Z)V
    .locals 2
    .param p1, "italic"    # Z

    .line 451
    if-eqz p1, :cond_1

    .line 452
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfIArray()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewI()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getIArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v0

    .line 453
    .local v0, "bool":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;
    :goto_0
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->setVal(Z)V

    .line 454
    .end local v0    # "bool":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;
    goto :goto_1

    .line 455
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->setIArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;)V

    .line 457
    :goto_1
    return-void
.end method

.method public setScheme(Lorg/apache/poi/ss/usermodel/FontScheme;)V
    .locals 2
    .param p1, "scheme"    # Lorg/apache/poi/ss/usermodel/FontScheme;

    .line 577
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfSchemeArray()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewScheme()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontScheme;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getSchemeArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontScheme;

    move-result-object v0

    .line 578
    .local v0, "ctFontScheme":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontScheme;
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/FontScheme;->getValue()I

    move-result v1

    invoke-static {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFontScheme$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFontScheme$Enum;

    move-result-object v1

    .line 579
    .local v1, "val":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFontScheme$Enum;
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontScheme;->setVal(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFontScheme$Enum;)V

    .line 580
    return-void
.end method

.method public setStrikeout(Z)V
    .locals 2
    .param p1, "strikeout"    # Z

    .line 467
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->setStrikeArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;)V

    goto :goto_1

    .line 469
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfStrikeArray()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewStrike()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getStrikeArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v0

    .line 470
    .local v0, "strike":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;
    :goto_0
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->setVal(Z)V

    .line 472
    .end local v0    # "strike":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;
    :goto_1
    return-void
.end method

.method public setThemeColor(S)V
    .locals 3
    .param p1, "theme"    # S

    .line 423
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfColorArray()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getColorArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    .line 424
    .local v0, "ctColor":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
    :goto_0
    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setTheme(J)V

    .line 425
    return-void
.end method

.method public setThemesTable(Lorg/apache/poi/xssf/model/ThemesTable;)V
    .locals 0
    .param p1, "themes"    # Lorg/apache/poi/xssf/model/ThemesTable;

    .line 555
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_themes:Lorg/apache/poi/xssf/model/ThemesTable;

    .line 556
    return-void
.end method

.method public setTypeOffset(S)V
    .locals 4
    .param p1, "offset"    # S

    .line 485
    if-nez p1, :cond_0

    .line 486
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->setVertAlignArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVerticalAlignFontProperty;)V

    goto :goto_1

    .line 488
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfVertAlignArray()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewVertAlign()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVerticalAlignFontProperty;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getVertAlignArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVerticalAlignFontProperty;

    move-result-object v0

    .line 489
    .local v0, "offsetProperty":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVerticalAlignFontProperty;
    :goto_0
    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 494
    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignRun;->SUBSCRIPT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignRun$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVerticalAlignFontProperty;->setVal(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignRun$Enum;)V

    .line 495
    goto :goto_1

    .line 500
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid type offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 497
    :cond_3
    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignRun;->SUPERSCRIPT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignRun$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVerticalAlignFontProperty;->setVal(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignRun$Enum;)V

    .line 498
    goto :goto_1

    .line 491
    :cond_4
    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignRun;->BASELINE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignRun$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVerticalAlignFontProperty;->setVal(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignRun$Enum;)V

    .line 492
    nop

    .line 503
    .end local v0    # "offsetProperty":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVerticalAlignFontProperty;
    :goto_1
    return-void
.end method

.method public setUnderline(B)V
    .locals 1
    .param p1, "underline"    # B

    .line 513
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/FontUnderline;->valueOf(B)Lorg/apache/poi/ss/usermodel/FontUnderline;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->setUnderline(Lorg/apache/poi/ss/usermodel/FontUnderline;)V

    .line 514
    return-void
.end method

.method public setUnderline(Lorg/apache/poi/ss/usermodel/FontUnderline;)V
    .locals 2
    .param p1, "underline"    # Lorg/apache/poi/ss/usermodel/FontUnderline;

    .line 524
    sget-object v0, Lorg/apache/poi/ss/usermodel/FontUnderline;->NONE:Lorg/apache/poi/ss/usermodel/FontUnderline;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfUArray()I

    move-result v0

    if-lez v0, :cond_0

    .line 525
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->setUArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUnderlineProperty;)V

    goto :goto_1

    .line 527
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->sizeOfUArray()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->addNewU()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUnderlineProperty;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;->getUArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUnderlineProperty;

    move-result-object v0

    .line 528
    .local v0, "ctUnderline":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUnderlineProperty;
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/FontUnderline;->getValue()I

    move-result v1

    invoke-static {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues$Enum;

    move-result-object v1

    .line 529
    .local v1, "val":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues$Enum;
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUnderlineProperty;->setVal(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues$Enum;)V

    .line 531
    .end local v0    # "ctUnderline":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUnderlineProperty;
    .end local v1    # "val":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues$Enum;
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 535
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->_ctFont:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
