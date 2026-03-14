.class public Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;
.super Ljava/lang/Object;
.source "XSSFXmlColumnPr.java"


# instance fields
.field private ctTableColumn:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

.field private ctXmlColumnPr:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;

.field private table:Lorg/apache/poi/xssf/usermodel/XSSFTable;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFTable;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;)V
    .locals 0
    .param p1, "table"    # Lorg/apache/poi/xssf/usermodel/XSSFTable;
    .param p2, "ctTableColum"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;
    .param p3, "ctXmlColumnPr"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;->table:Lorg/apache/poi/xssf/usermodel/XSSFTable;

    .line 42
    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;->ctTableColumn:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    .line 43
    iput-object p3, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;->ctXmlColumnPr:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;

    .line 44
    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .line 58
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;->ctTableColumn:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalXPath()Ljava/lang/String;
    .locals 7

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v0, "localXPath":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;->table:Lorg/apache/poi/xssf/usermodel/XSSFTable;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getCommonXpath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 71
    .local v1, "numberOfCommonXPathAxis":I
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;->ctXmlColumnPr:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;->getXpath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "xPathTokens":[Ljava/lang/String;
    move v4, v1

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 75
    .end local v4    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getMapId()J
    .locals 2

    .line 47
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;->ctXmlColumnPr:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;->getMapId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getXPath()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;->ctXmlColumnPr:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;->getXpath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXmlDataType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;->ctXmlColumnPr:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;->getXmlDataType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;

    move-result-object v0

    return-object v0
.end method
