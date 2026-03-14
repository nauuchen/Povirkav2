.class public Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;
.super Ljava/lang/Object;
.source "XSSFSingleXmlCell.java"


# instance fields
.field private parent:Lorg/apache/poi/xssf/model/SingleXmlCells;

.field private singleXmlCell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCell;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCell;Lorg/apache/poi/xssf/model/SingleXmlCells;)V
    .locals 0
    .param p1, "singleXmlCell"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCell;
    .param p2, "parent"    # Lorg/apache/poi/xssf/model/SingleXmlCells;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;->singleXmlCell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCell;

    .line 47
    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;->parent:Lorg/apache/poi/xssf/model/SingleXmlCells;

    .line 48
    return-void
.end method


# virtual methods
.method public getMapId()J
    .locals 2

    .line 82
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;->singleXmlCell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCell;->getXmlCellPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlCellPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlCellPr;->getXmlPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlPr;->getMapId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getReferencedCell()Lorg/apache/poi/xssf/usermodel/XSSFCell;
    .locals 5

    .line 55
    const/4 v0, 0x0

    .line 58
    .local v0, "cell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;->singleXmlCell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCell;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCell;->getR()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    .line 60
    .local v1, "cellReference":Lorg/apache/poi/ss/util/CellReference;
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;->parent:Lorg/apache/poi/xssf/model/SingleXmlCells;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/model/SingleXmlCells;->getXSSFSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v2

    .line 61
    .local v2, "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    if-nez v2, :cond_0

    .line 62
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;->parent:Lorg/apache/poi/xssf/model/SingleXmlCells;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/model/SingleXmlCells;->getXSSFSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v2

    .line 65
    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v0

    .line 66
    if-nez v0, :cond_1

    .line 67
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->createCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v0

    .line 71
    :cond_1
    return-object v0
.end method

.method public getXmlDataType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;
    .locals 3

    .line 86
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;->singleXmlCell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCell;->getXmlCellPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlCellPr;

    move-result-object v0

    .line 87
    .local v0, "xmlCellPr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlCellPr;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlCellPr;->getXmlPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlPr;

    move-result-object v1

    .line 88
    .local v1, "xmlPr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlPr;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlPr;->getXmlDataType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;

    move-result-object v2

    return-object v2
.end method

.method public getXpath()Ljava/lang/String;
    .locals 3

    .line 75
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;->singleXmlCell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCell;->getXmlCellPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlCellPr;

    move-result-object v0

    .line 76
    .local v0, "xmlCellPr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlCellPr;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlCellPr;->getXmlPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlPr;

    move-result-object v1

    .line 77
    .local v1, "xmlPr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlPr;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlPr;->getXpath()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "xpath":Ljava/lang/String;
    return-object v2
.end method
