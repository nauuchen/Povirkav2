.class public Lorg/apache/poi/xssf/usermodel/XSSFDxfStyleProvider;
.super Ljava/lang/Object;
.source "XSSFDxfStyleProvider.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/DifferentialStyleProvider;


# instance fields
.field private final border:Lorg/apache/poi/ss/usermodel/BorderFormatting;

.field private final colorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

.field private final fill:Lorg/apache/poi/ss/usermodel/PatternFormatting;

.field private final font:Lorg/apache/poi/ss/usermodel/FontFormatting;

.field private final number:Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;

.field private final stripeSize:I


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;ILorg/apache/poi/xssf/usermodel/IndexedColorMap;)V
    .locals 5
    .param p1, "dxf"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;
    .param p2, "stripeSize"    # I
    .param p3, "colorMap"    # Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFDxfStyleProvider;->stripeSize:I

    .line 47
    iput-object p3, p0, Lorg/apache/poi/xssf/usermodel/XSSFDxfStyleProvider;->colorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    .line 48
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 49
    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDxfStyleProvider;->border:Lorg/apache/poi/ss/usermodel/BorderFormatting;

    .line 50
    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDxfStyleProvider;->font:Lorg/apache/poi/ss/usermodel/FontFormatting;

    .line 51
    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDxfStyleProvider;->number:Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;

    .line 52
    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDxfStyleProvider;->fill:Lorg/apache/poi/ss/usermodel/PatternFormatting;

    goto :goto_3

    .line 54
    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->isSetBorder()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->getBorder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDxfStyleProvider;->border:Lorg/apache/poi/ss/usermodel/BorderFormatting;

    .line 55
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->isSetFont()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->getFont()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    iput-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDxfStyleProvider;->font:Lorg/apache/poi/ss/usermodel/FontFormatting;

    .line 56
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->isSetNumFmt()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 57
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->getNumFmt()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;

    move-result-object v1

    .line 58
    .local v1, "numFmt":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;
    new-instance v2, Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;->getNumFmtId()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;->getFormatCode()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;-><init>(ILjava/lang/String;)V

    iput-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFDxfStyleProvider;->number:Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;

    .line 59
    .end local v1    # "numFmt":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;
    goto :goto_2

    .line 60
    :cond_3
    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDxfStyleProvider;->number:Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;

    .line 62
    :goto_2
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->isSetFill()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->getFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    :cond_4
    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDxfStyleProvider;->fill:Lorg/apache/poi/ss/usermodel/PatternFormatting;

    .line 64
    :goto_3
    return-void
.end method


# virtual methods
.method public getBorderFormatting()Lorg/apache/poi/ss/usermodel/BorderFormatting;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDxfStyleProvider;->border:Lorg/apache/poi/ss/usermodel/BorderFormatting;

    return-object v0
.end method

.method public getFontFormatting()Lorg/apache/poi/ss/usermodel/FontFormatting;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDxfStyleProvider;->font:Lorg/apache/poi/ss/usermodel/FontFormatting;

    return-object v0
.end method

.method public getNumberFormat()Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDxfStyleProvider;->number:Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;

    return-object v0
.end method

.method public getPatternFormatting()Lorg/apache/poi/ss/usermodel/PatternFormatting;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDxfStyleProvider;->fill:Lorg/apache/poi/ss/usermodel/PatternFormatting;

    return-object v0
.end method

.method public getStripeSize()I
    .locals 1

    .line 83
    iget v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDxfStyleProvider;->stripeSize:I

    return v0
.end method
