.class public Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;
.super Ljava/lang/Object;
.source "XSSFCellStyle.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/CellStyle;


# instance fields
.field private _cellAlignment:Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;

.field private final _cellStyleXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

.field private _cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

.field private _cellXfId:I

.field private _font:Lorg/apache/poi/xssf/usermodel/XSSFFont;

.field private final _stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

.field private _theme:Lorg/apache/poi/xssf/model/ThemesTable;


# direct methods
.method public constructor <init>(IILorg/apache/poi/xssf/model/StylesTable;Lorg/apache/poi/xssf/model/ThemesTable;)V
    .locals 1
    .param p1, "cellXfId"    # I
    .param p2, "cellStyleXfId"    # I
    .param p3, "stylesSource"    # Lorg/apache/poi/xssf/model/StylesTable;
    .param p4, "theme"    # Lorg/apache/poi/xssf/model/ThemesTable;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXfId:I

    .line 75
    iput-object p3, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    .line 76
    invoke-virtual {p3, p1}, Lorg/apache/poi/xssf/model/StylesTable;->getCellXfAt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    .line 77
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p2}, Lorg/apache/poi/xssf/model/StylesTable;->getCellStyleXfAt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellStyleXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    .line 78
    iput-object p4, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_theme:Lorg/apache/poi/xssf/model/ThemesTable;

    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/model/StylesTable;)V
    .locals 1
    .param p1, "stylesSource"    # Lorg/apache/poi/xssf/model/StylesTable;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    .line 104
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellStyleXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    .line 106
    return-void
.end method

.method private addBorder(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;)V
    .locals 4
    .param p1, "border"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    .line 213
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_theme:Lorg/apache/poi/xssf/model/ThemesTable;

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/model/StylesTable;->getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;Lorg/apache/poi/xssf/model/ThemesTable;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/model/StylesTable;->putBorder(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;)I

    move-result v0

    .line 215
    .local v0, "idx":I
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setBorderId(J)V

    .line 216
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setApplyBorder(Z)V

    .line 217
    return-void
.end method

.method private addFill(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;)V
    .locals 4
    .param p1, "fill"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    .line 206
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/model/StylesTable;->getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/model/StylesTable;->putFill(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;)I

    move-result v0

    .line 208
    .local v0, "idx":I
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setFillId(J)V

    .line 209
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setApplyFill(Z)V

    .line 210
    return-void
.end method

.method private getCTBorder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;
    .locals 3

    .line 1018
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getApplyBorder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getBorderId()J

    move-result-wide v0

    long-to-int v1, v0

    .line 1020
    .local v1, "idx":I
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/model/StylesTable;->getBorderAt(I)Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;

    move-result-object v0

    .line 1022
    .local v0, "cf":Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->getCTBorder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    .line 1023
    .end local v1    # "idx":I
    .local v0, "ct":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;
    goto :goto_0

    .line 1024
    .end local v0    # "ct":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;
    :cond_0
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    move-result-object v0

    .line 1026
    .restart local v0    # "ct":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;
    :goto_0
    return-object v0
.end method

.method private getCTCellAlignment()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;
    .locals 2

    .line 1332
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getAlignment()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1333
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setAlignment(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;)V

    .line 1335
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getAlignment()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;

    move-result-object v0

    return-object v0
.end method

.method private getCTFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;
    .locals 3

    .line 1002
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->isSetApplyFill()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getApplyFill()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1008
    :cond_0
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    move-result-object v0

    .local v0, "ct":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;
    goto :goto_1

    .line 1003
    .end local v0    # "ct":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getFillId()J

    move-result-wide v0

    long-to-int v1, v0

    .line 1004
    .local v1, "fillIndex":I
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/model/StylesTable;->getFillAt(I)Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;

    move-result-object v0

    .line 1006
    .local v0, "cf":Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->getCTFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    .line 1007
    .end local v1    # "fillIndex":I
    .local v0, "ct":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;
    nop

    .line 1010
    :goto_1
    return-object v0
.end method

.method private getFontId()I
    .locals 2

    .line 1309
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->isSetFontId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1310
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getFontId()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    .line 1312
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellStyleXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getFontId()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 8

    .line 1370
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    .line 1372
    .local v0, "xf":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/model/StylesTable;->_getStyleXfsSize()I

    move-result v1

    .line 1373
    .local v1, "xfSize":I
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v2, v0}, Lorg/apache/poi/xssf/model/StylesTable;->putCellXf(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;)I

    move-result v2

    .line 1374
    .local v2, "indexXf":I
    new-instance v3, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    add-int/lit8 v4, v2, -0x1

    add-int/lit8 v5, v1, -0x1

    iget-object v6, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    iget-object v7, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_theme:Lorg/apache/poi/xssf/model/ThemesTable;

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;-><init>(IILorg/apache/poi/xssf/model/StylesTable;Lorg/apache/poi/xssf/model/ThemesTable;)V

    return-object v3
.end method

.method public cloneStyleFrom(Lorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 6
    .param p1, "source"    # Lorg/apache/poi/ss/usermodel/CellStyle;

    .line 137
    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    if-eqz v0, :cond_3

    .line 138
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    .line 141
    .local v0, "src":Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;
    iget-object v1, v0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    if-ne v1, v2, :cond_0

    .line 143
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getCoreXf()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 144
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellStyleXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getStyleXf()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    goto/16 :goto_0

    .line 150
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->isSetAlignment()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->unsetAlignment()V

    .line 152
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->isSetExtLst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->unsetExtLst()V

    .line 156
    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getCoreXf()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf$Factory;->parse(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    .line 161
    invoke-direct {v0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getCTFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill$Factory;->parse(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    move-result-object v1

    .line 164
    .local v1, "fill":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;
    invoke-direct {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->addFill(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;)V

    .line 167
    invoke-direct {v0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getCTBorder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder$Factory;->parse(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    move-result-object v2

    .line 170
    .local v2, "border":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;
    invoke-direct {p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->addBorder(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;)V

    .line 173
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    iget v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXfId:I

    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-virtual {v3, v4, v5}, Lorg/apache/poi/xssf/model/StylesTable;->replaceCellXfAt(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;)V
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_1

    .line 176
    .end local v1    # "fill":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;
    .end local v2    # "border":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;
    nop

    .line 179
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getDataFormatString()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "fmt":Ljava/lang/String;
    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-direct {v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;-><init>(Lorg/apache/poi/xssf/model/StylesTable;)V

    invoke-virtual {v2, v1}, Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;->getFormat(Ljava/lang/String;)S

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->setDataFormat(S)V

    .line 186
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getFont()Lorg/apache/poi/xssf/usermodel/XSSFFont;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->getCTFont()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont$Factory;->parse(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    move-result-object v2

    .line 189
    .local v2, "ctFont":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;
    new-instance v3, Lorg/apache/poi/xssf/usermodel/XSSFFont;

    invoke-direct {v3, v2}, Lorg/apache/poi/xssf/usermodel/XSSFFont;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;)V

    .line 190
    .local v3, "font":Lorg/apache/poi/xssf/usermodel/XSSFFont;
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v3, v4}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->registerTo(Lorg/apache/poi/xssf/model/StylesTable;)J

    .line 191
    invoke-virtual {p0, v3}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->setFont(Lorg/apache/poi/ss/usermodel/Font;)V
    :try_end_1
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_1 .. :try_end_1} :catch_0

    .line 194
    .end local v2    # "ctFont":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;
    .end local v3    # "font":Lorg/apache/poi/xssf/usermodel/XSSFFont;
    nop

    .line 198
    .end local v1    # "fmt":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_font:Lorg/apache/poi/xssf/usermodel/XSSFFont;

    .line 199
    iput-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellAlignment:Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;

    .line 200
    .end local v0    # "src":Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;
    nop

    .line 203
    return-void

    .line 192
    .restart local v0    # "src":Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;
    .restart local v1    # "fmt":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 193
    .local v2, "e":Lorg/apache/xmlbeans/XmlException;
    new-instance v3, Lorg/apache/poi/POIXMLException;

    invoke-direct {v3, v2}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 174
    .end local v1    # "fmt":Ljava/lang/String;
    .end local v2    # "e":Lorg/apache/xmlbeans/XmlException;
    :catch_1
    move-exception v1

    .line 175
    .local v1, "e":Lorg/apache/xmlbeans/XmlException;
    new-instance v2, Lorg/apache/poi/POIXMLException;

    invoke-direct {v2, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 201
    .end local v0    # "src":Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;
    .end local v1    # "e":Lorg/apache/xmlbeans/XmlException;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only clone from one XSSFCellStyle to another, not between HSSFCellStyle and XSSFCellStyle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1356
    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1358
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    .line 1359
    .local v0, "cf":Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getCoreXf()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1356
    .end local v0    # "cf":Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAlignment()S
    .locals 1

    .line 227
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getAlignmentEnum()Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->getCode()S

    move-result v0

    return v0
.end method

.method public getAlignmentEnum()Lorg/apache/poi/ss/usermodel/HorizontalAlignment;
    .locals 2

    .line 237
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getAlignment()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;

    move-result-object v0

    .line 238
    .local v0, "align":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;->isSetHorizontal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;->getHorizontal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STHorizontalAlignment$Enum;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STHorizontalAlignment$Enum;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->forInt(I)Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    move-result-object v1

    return-object v1

    .line 241
    :cond_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->GENERAL:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    return-object v1
.end method

.method public getBorderBottom()S
    .locals 1

    .line 271
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getBorderBottomEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result v0

    return v0
.end method

.method public getBorderBottomEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 4

    .line 253
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getApplyBorder()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    return-object v0

    .line 255
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getBorderId()J

    move-result-wide v0

    long-to-int v1, v0

    .line 256
    .local v1, "idx":I
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/model/StylesTable;->getBorderAt(I)Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->getCTBorder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    move-result-object v0

    .line 257
    .local v0, "ct":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetBottom()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getBottom()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->getStyle()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 258
    .local v2, "ptrn":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;
    :goto_0
    if-nez v2, :cond_2

    .line 259
    sget-object v3, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    return-object v3

    .line 261
    :cond_2
    invoke-virtual {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-short v3, v3

    invoke-static {v3}, Lorg/apache/poi/ss/usermodel/BorderStyle;->valueOf(S)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v3

    return-object v3
.end method

.method public getBorderColor(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;)Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 3
    .param p1, "side"    # Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;

    .line 1266
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle$1;->$SwitchMap$org$apache$poi$xssf$usermodel$extensions$XSSFCellBorder$BorderSide:[I

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1274
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getLeftBorderXSSFColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0

    .line 1276
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown border: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1272
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getTopBorderXSSFColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0

    .line 1270
    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getRightBorderXSSFColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0

    .line 1268
    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getBottomBorderXSSFColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getBorderLeft()S
    .locals 1

    .line 302
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getBorderLeftEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result v0

    return v0
.end method

.method public getBorderLeftEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 4

    .line 283
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getApplyBorder()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    return-object v0

    .line 285
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getBorderId()J

    move-result-wide v0

    long-to-int v1, v0

    .line 286
    .local v1, "idx":I
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/model/StylesTable;->getBorderAt(I)Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->getCTBorder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    move-result-object v0

    .line 287
    .local v0, "ct":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetLeft()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getLeft()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->getStyle()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 288
    .local v2, "ptrn":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;
    :goto_0
    if-nez v2, :cond_2

    .line 289
    sget-object v3, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    return-object v3

    .line 291
    :cond_2
    invoke-virtual {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-short v3, v3

    invoke-static {v3}, Lorg/apache/poi/ss/usermodel/BorderStyle;->valueOf(S)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v3

    return-object v3
.end method

.method public getBorderRight()S
    .locals 1

    .line 332
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getBorderRightEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result v0

    return v0
.end method

.method public getBorderRightEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 4

    .line 314
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getApplyBorder()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    return-object v0

    .line 316
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getBorderId()J

    move-result-wide v0

    long-to-int v1, v0

    .line 317
    .local v1, "idx":I
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/model/StylesTable;->getBorderAt(I)Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->getCTBorder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    move-result-object v0

    .line 318
    .local v0, "ct":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetRight()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getRight()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->getStyle()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 319
    .local v2, "ptrn":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;
    :goto_0
    if-nez v2, :cond_2

    .line 320
    sget-object v3, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    return-object v3

    .line 322
    :cond_2
    invoke-virtual {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-short v3, v3

    invoke-static {v3}, Lorg/apache/poi/ss/usermodel/BorderStyle;->valueOf(S)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v3

    return-object v3
.end method

.method public getBorderTop()S
    .locals 1

    .line 362
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getBorderTopEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result v0

    return v0
.end method

.method public getBorderTopEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 4

    .line 344
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getApplyBorder()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    return-object v0

    .line 346
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getBorderId()J

    move-result-wide v0

    long-to-int v1, v0

    .line 347
    .local v1, "idx":I
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/model/StylesTable;->getBorderAt(I)Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->getCTBorder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    move-result-object v0

    .line 348
    .local v0, "ct":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetTop()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getTop()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->getStyle()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 349
    .local v2, "ptrn":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;
    :goto_0
    if-nez v2, :cond_2

    .line 350
    sget-object v3, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    return-object v3

    .line 352
    :cond_2
    invoke-virtual {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-short v3, v3

    invoke-static {v3}, Lorg/apache/poi/ss/usermodel/BorderStyle;->valueOf(S)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v3

    return-object v3
.end method

.method public getBottomBorderColor()S
    .locals 2

    .line 374
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getBottomBorderXSSFColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    .line 375
    .local v0, "clr":Lorg/apache/poi/xssf/usermodel/XSSFColor;
    if-nez v0, :cond_0

    sget-object v1, Lorg/apache/poi/ss/usermodel/IndexedColors;->BLACK:Lorg/apache/poi/ss/usermodel/IndexedColors;

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/IndexedColors;->getIndex()S

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getIndexed()S

    move-result v1

    :goto_0
    return v1
.end method

.method public getBottomBorderXSSFColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 3

    .line 384
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getApplyBorder()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 386
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getBorderId()J

    move-result-wide v0

    long-to-int v1, v0

    .line 387
    .local v1, "idx":I
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/model/StylesTable;->getBorderAt(I)Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;

    move-result-object v0

    .line 389
    .local v0, "border":Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;
    sget-object v2, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;->BOTTOM:Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;

    invoke-virtual {v0, v2}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->getBorderColor(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v2

    return-object v2
.end method

.method protected getCellAlignment()Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;
    .locals 2

    .line 1320
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellAlignment:Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;

    if-nez v0, :cond_0

    .line 1321
    new-instance v0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getCTCellAlignment()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellAlignment:Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;

    .line 1323
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellAlignment:Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;

    return-object v0
.end method

.method public getCoreXf()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 86
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    return-object v0
.end method

.method public getDataFormat()S
    .locals 2

    .line 399
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getNumFmtId()J

    move-result-wide v0

    long-to-int v1, v0

    int-to-short v0, v1

    return v0
.end method

.method public getDataFormatString()Ljava/lang/String;
    .locals 3

    .line 410
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getDataFormat()S

    move-result v0

    .line 411
    .local v0, "idx":I
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-direct {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;-><init>(Lorg/apache/poi/xssf/model/StylesTable;)V

    int-to-short v2, v0

    invoke-virtual {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;->getFormat(S)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFillBackgroundColor()S
    .locals 2

    .line 425
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getFillBackgroundXSSFColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    .line 426
    .local v0, "clr":Lorg/apache/poi/xssf/usermodel/XSSFColor;
    if-nez v0, :cond_0

    sget-object v1, Lorg/apache/poi/ss/usermodel/IndexedColors;->AUTOMATIC:Lorg/apache/poi/ss/usermodel/IndexedColors;

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/IndexedColors;->getIndex()S

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getIndexed()S

    move-result v1

    :goto_0
    return v1
.end method

.method public bridge synthetic getFillBackgroundColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getFillBackgroundColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getFillBackgroundColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 1

    .line 431
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getFillBackgroundXSSFColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getFillBackgroundXSSFColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 4

    .line 445
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->isSetApplyFill()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getApplyFill()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 447
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getFillId()J

    move-result-wide v0

    long-to-int v1, v0

    .line 448
    .local v1, "fillIndex":I
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/model/StylesTable;->getFillAt(I)Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;

    move-result-object v0

    .line 450
    .local v0, "fg":Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->getFillBackgroundColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v2

    .line 451
    .local v2, "fillBackgroundColor":Lorg/apache/poi/xssf/usermodel/XSSFColor;
    if-eqz v2, :cond_1

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_theme:Lorg/apache/poi/xssf/model/ThemesTable;

    if-eqz v3, :cond_1

    .line 452
    invoke-virtual {v3, v2}, Lorg/apache/poi/xssf/model/ThemesTable;->inheritFromThemeAsRequired(Lorg/apache/poi/xssf/usermodel/XSSFColor;)V

    .line 454
    :cond_1
    return-object v2
.end method

.method public getFillForegroundColor()S
    .locals 2

    .line 468
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getFillForegroundXSSFColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    .line 469
    .local v0, "clr":Lorg/apache/poi/xssf/usermodel/XSSFColor;
    if-nez v0, :cond_0

    sget-object v1, Lorg/apache/poi/ss/usermodel/IndexedColors;->AUTOMATIC:Lorg/apache/poi/ss/usermodel/IndexedColors;

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/IndexedColors;->getIndex()S

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getIndexed()S

    move-result v1

    :goto_0
    return v1
.end method

.method public bridge synthetic getFillForegroundColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getFillForegroundColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getFillForegroundColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 1

    .line 474
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getFillForegroundXSSFColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getFillForegroundXSSFColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 4

    .line 484
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->isSetApplyFill()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getApplyFill()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 486
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getFillId()J

    move-result-wide v0

    long-to-int v1, v0

    .line 487
    .local v1, "fillIndex":I
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/model/StylesTable;->getFillAt(I)Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;

    move-result-object v0

    .line 489
    .local v0, "fg":Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->getFillForegroundColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v2

    .line 490
    .local v2, "fillForegroundColor":Lorg/apache/poi/xssf/usermodel/XSSFColor;
    if-eqz v2, :cond_1

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_theme:Lorg/apache/poi/xssf/model/ThemesTable;

    if-eqz v3, :cond_1

    .line 491
    invoke-virtual {v3, v2}, Lorg/apache/poi/xssf/model/ThemesTable;->inheritFromThemeAsRequired(Lorg/apache/poi/xssf/usermodel/XSSFColor;)V

    .line 493
    :cond_1
    return-object v2
.end method

.method public getFillPattern()S
    .locals 1

    .line 503
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getFillPatternEnum()Lorg/apache/poi/ss/usermodel/FillPatternType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/FillPatternType;->getCode()S

    move-result v0

    return v0
.end method

.method public getFillPatternEnum()Lorg/apache/poi/ss/usermodel/FillPatternType;
    .locals 4

    .line 514
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->isSetApplyFill()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getApplyFill()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/ss/usermodel/FillPatternType;->NO_FILL:Lorg/apache/poi/ss/usermodel/FillPatternType;

    return-object v0

    .line 516
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getFillId()J

    move-result-wide v0

    long-to-int v1, v0

    .line 517
    .local v1, "fillIndex":I
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/model/StylesTable;->getFillAt(I)Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;

    move-result-object v0

    .line 519
    .local v0, "fill":Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->getPatternType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    move-result-object v2

    .line 520
    .local v2, "ptrn":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;
    if-nez v2, :cond_1

    sget-object v3, Lorg/apache/poi/ss/usermodel/FillPatternType;->NO_FILL:Lorg/apache/poi/ss/usermodel/FillPatternType;

    return-object v3

    .line 521
    :cond_1
    invoke-virtual {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Lorg/apache/poi/ss/usermodel/FillPatternType;->forInt(I)Lorg/apache/poi/ss/usermodel/FillPatternType;

    move-result-object v3

    return-object v3
.end method

.method public getFont()Lorg/apache/poi/xssf/usermodel/XSSFFont;
    .locals 2

    .line 529
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_font:Lorg/apache/poi/xssf/usermodel/XSSFFont;

    if-nez v0, :cond_0

    .line 530
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getFontId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/model/StylesTable;->getFontAt(I)Lorg/apache/poi/xssf/usermodel/XSSFFont;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_font:Lorg/apache/poi/xssf/usermodel/XSSFFont;

    .line 532
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_font:Lorg/apache/poi/xssf/usermodel/XSSFFont;

    return-object v0
.end method

.method public getFontIndex()S
    .locals 1

    .line 543
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getFontId()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getHidden()Z
    .locals 1

    .line 553
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->isSetProtection()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellProtection;->isSetHidden()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 556
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellProtection;->getHidden()Z

    move-result v0

    return v0

    .line 554
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIndention()S
    .locals 3

    .line 566
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getAlignment()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;

    move-result-object v0

    .line 567
    .local v0, "align":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;->getIndent()J

    move-result-wide v1

    :goto_0
    long-to-int v2, v1

    int-to-short v1, v2

    return v1
.end method

.method public getIndex()S
    .locals 1

    .line 577
    iget v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXfId:I

    int-to-short v0, v0

    return v0
.end method

.method public getLeftBorderColor()S
    .locals 2

    .line 599
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getLeftBorderXSSFColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    .line 600
    .local v0, "clr":Lorg/apache/poi/xssf/usermodel/XSSFColor;
    if-nez v0, :cond_0

    sget-object v1, Lorg/apache/poi/ss/usermodel/IndexedColors;->BLACK:Lorg/apache/poi/ss/usermodel/IndexedColors;

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/IndexedColors;->getIndex()S

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getIndexed()S

    move-result v1

    :goto_0
    return v1
.end method

.method public getLeftBorderXSSFColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 3

    .line 610
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getApplyBorder()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 612
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getBorderId()J

    move-result-wide v0

    long-to-int v1, v0

    .line 613
    .local v1, "idx":I
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/model/StylesTable;->getBorderAt(I)Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;

    move-result-object v0

    .line 615
    .local v0, "border":Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;
    sget-object v2, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;->LEFT:Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;

    invoke-virtual {v0, v2}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->getBorderColor(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v2

    return-object v2
.end method

.method public getLocked()Z
    .locals 1

    .line 625
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->isSetProtection()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellProtection;->isSetLocked()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 628
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellProtection;->getLocked()Z

    move-result v0

    return v0

    .line 626
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public getQuotePrefixed()Z
    .locals 1

    .line 636
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getQuotePrefix()Z

    move-result v0

    return v0
.end method

.method public getRightBorderColor()S
    .locals 2

    .line 647
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getRightBorderXSSFColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    .line 648
    .local v0, "clr":Lorg/apache/poi/xssf/usermodel/XSSFColor;
    if-nez v0, :cond_0

    sget-object v1, Lorg/apache/poi/ss/usermodel/IndexedColors;->BLACK:Lorg/apache/poi/ss/usermodel/IndexedColors;

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/IndexedColors;->getIndex()S

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getIndexed()S

    move-result v1

    :goto_0
    return v1
.end method

.method public getRightBorderXSSFColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 3

    .line 656
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getApplyBorder()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 658
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getBorderId()J

    move-result-wide v0

    long-to-int v1, v0

    .line 659
    .local v1, "idx":I
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/model/StylesTable;->getBorderAt(I)Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;

    move-result-object v0

    .line 661
    .local v0, "border":Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;
    sget-object v2, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;->RIGHT:Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;

    invoke-virtual {v0, v2}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->getBorderColor(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v2

    return-object v2
.end method

.method public getRotation()S
    .locals 3

    .line 680
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getAlignment()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;

    move-result-object v0

    .line 681
    .local v0, "align":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;->getTextRotation()J

    move-result-wide v1

    :goto_0
    long-to-int v2, v1

    int-to-short v1, v2

    return v1
.end method

.method public getShrinkToFit()Z
    .locals 2

    .line 686
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getAlignment()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;

    move-result-object v0

    .line 687
    .local v0, "align":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;->getShrinkToFit()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getStyleXf()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 94
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellStyleXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    return-object v0
.end method

.method public getTopBorderColor()S
    .locals 2

    .line 698
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getTopBorderXSSFColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    .line 699
    .local v0, "clr":Lorg/apache/poi/xssf/usermodel/XSSFColor;
    if-nez v0, :cond_0

    sget-object v1, Lorg/apache/poi/ss/usermodel/IndexedColors;->BLACK:Lorg/apache/poi/ss/usermodel/IndexedColors;

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/IndexedColors;->getIndex()S

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getIndexed()S

    move-result v1

    :goto_0
    return v1
.end method

.method public getTopBorderXSSFColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 3

    .line 708
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getApplyBorder()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 710
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getBorderId()J

    move-result-wide v0

    long-to-int v1, v0

    .line 711
    .local v1, "idx":I
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/model/StylesTable;->getBorderAt(I)Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;

    move-result-object v0

    .line 713
    .local v0, "border":Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;
    sget-object v2, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;->TOP:Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;

    invoke-virtual {v0, v2}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->getBorderColor(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v2

    return-object v2
.end method

.method protected getUIndex()I
    .locals 1

    .line 588
    iget v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXfId:I

    return v0
.end method

.method public getVerticalAlignment()S
    .locals 1

    .line 724
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getVerticalAlignmentEnum()Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->getCode()S

    move-result v0

    return v0
.end method

.method public getVerticalAlignmentEnum()Lorg/apache/poi/ss/usermodel/VerticalAlignment;
    .locals 2

    .line 734
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getAlignment()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;

    move-result-object v0

    .line 735
    .local v0, "align":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;->isSetVertical()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 736
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;->getVertical()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignment$Enum;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignment$Enum;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->forInt(I)Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    move-result-object v1

    return-object v1

    .line 738
    :cond_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->BOTTOM:Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    return-object v1
.end method

.method public getWrapText()Z
    .locals 2

    .line 748
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getAlignment()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;

    move-result-object v0

    .line 749
    .local v0, "align":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;->getWrapText()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 1345
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setAlignment(Lorg/apache/poi/ss/usermodel/HorizontalAlignment;)V
    .locals 1
    .param p1, "align"    # Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    .line 759
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getCellAlignment()Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;->setHorizontal(Lorg/apache/poi/ss/usermodel/HorizontalAlignment;)V

    .line 760
    return-void
.end method

.method public setBorderBottom(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 7
    .param p1, "border"    # Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 771
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getCTBorder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    move-result-object v0

    .line 772
    .local v0, "ct":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetBottom()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getBottom()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewBottom()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v1

    .line 773
    .local v1, "pr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;
    :goto_0
    sget-object v2, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    const/4 v3, 0x1

    if-ne p1, v2, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->unsetBottom()V

    goto :goto_1

    .line 774
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;)V

    .line 776
    :goto_1
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    new-instance v4, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;

    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_theme:Lorg/apache/poi/xssf/model/ThemesTable;

    iget-object v6, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v6}, Lorg/apache/poi/xssf/model/StylesTable;->getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    move-result-object v6

    invoke-direct {v4, v0, v5, v6}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;Lorg/apache/poi/xssf/model/ThemesTable;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    invoke-virtual {v2, v4}, Lorg/apache/poi/xssf/model/StylesTable;->putBorder(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;)I

    move-result v2

    .line 778
    .local v2, "idx":I
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    int-to-long v5, v2

    invoke-interface {v4, v5, v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setBorderId(J)V

    .line 779
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v4, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setApplyBorder(Z)V

    .line 780
    return-void
.end method

.method public setBorderColor(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;Lorg/apache/poi/xssf/usermodel/XSSFColor;)V
    .locals 2
    .param p1, "side"    # Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;
    .param p2, "color"    # Lorg/apache/poi/xssf/usermodel/XSSFColor;

    .line 1287
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle$1;->$SwitchMap$org$apache$poi$xssf$usermodel$extensions$XSSFCellBorder$BorderSide:[I

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1298
    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->setLeftBorderColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)V

    goto :goto_0

    .line 1295
    :cond_1
    invoke-virtual {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->setTopBorderColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)V

    .line 1296
    goto :goto_0

    .line 1292
    :cond_2
    invoke-virtual {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->setRightBorderColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)V

    .line 1293
    goto :goto_0

    .line 1289
    :cond_3
    invoke-virtual {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->setBottomBorderColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)V

    .line 1290
    nop

    .line 1301
    :goto_0
    return-void
.end method

.method public setBorderLeft(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 7
    .param p1, "border"    # Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 790
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getCTBorder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    move-result-object v0

    .line 791
    .local v0, "ct":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetLeft()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getLeft()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewLeft()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v1

    .line 792
    .local v1, "pr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;
    :goto_0
    sget-object v2, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    const/4 v3, 0x1

    if-ne p1, v2, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->unsetLeft()V

    goto :goto_1

    .line 793
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;)V

    .line 795
    :goto_1
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    new-instance v4, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;

    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_theme:Lorg/apache/poi/xssf/model/ThemesTable;

    iget-object v6, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v6}, Lorg/apache/poi/xssf/model/StylesTable;->getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    move-result-object v6

    invoke-direct {v4, v0, v5, v6}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;Lorg/apache/poi/xssf/model/ThemesTable;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    invoke-virtual {v2, v4}, Lorg/apache/poi/xssf/model/StylesTable;->putBorder(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;)I

    move-result v2

    .line 797
    .local v2, "idx":I
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    int-to-long v5, v2

    invoke-interface {v4, v5, v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setBorderId(J)V

    .line 798
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v4, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setApplyBorder(Z)V

    .line 799
    return-void
.end method

.method public setBorderRight(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 7
    .param p1, "border"    # Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 809
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getCTBorder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    move-result-object v0

    .line 810
    .local v0, "ct":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetRight()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getRight()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewRight()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v1

    .line 811
    .local v1, "pr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;
    :goto_0
    sget-object v2, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    const/4 v3, 0x1

    if-ne p1, v2, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->unsetRight()V

    goto :goto_1

    .line 812
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;)V

    .line 814
    :goto_1
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    new-instance v4, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;

    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_theme:Lorg/apache/poi/xssf/model/ThemesTable;

    iget-object v6, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v6}, Lorg/apache/poi/xssf/model/StylesTable;->getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    move-result-object v6

    invoke-direct {v4, v0, v5, v6}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;Lorg/apache/poi/xssf/model/ThemesTable;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    invoke-virtual {v2, v4}, Lorg/apache/poi/xssf/model/StylesTable;->putBorder(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;)I

    move-result v2

    .line 816
    .local v2, "idx":I
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    int-to-long v5, v2

    invoke-interface {v4, v5, v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setBorderId(J)V

    .line 817
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v4, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setApplyBorder(Z)V

    .line 818
    return-void
.end method

.method public setBorderTop(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 7
    .param p1, "border"    # Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 828
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getCTBorder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    move-result-object v0

    .line 829
    .local v0, "ct":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetTop()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getTop()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewTop()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v1

    .line 830
    .local v1, "pr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;
    :goto_0
    sget-object v2, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    const/4 v3, 0x1

    if-ne p1, v2, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->unsetTop()V

    goto :goto_1

    .line 831
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;)V

    .line 833
    :goto_1
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    new-instance v4, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;

    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_theme:Lorg/apache/poi/xssf/model/ThemesTable;

    iget-object v6, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v6}, Lorg/apache/poi/xssf/model/StylesTable;->getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    move-result-object v6

    invoke-direct {v4, v0, v5, v6}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;Lorg/apache/poi/xssf/model/ThemesTable;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    invoke-virtual {v2, v4}, Lorg/apache/poi/xssf/model/StylesTable;->putBorder(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;)I

    move-result v2

    .line 835
    .local v2, "idx":I
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    int-to-long v5, v2

    invoke-interface {v4, v5, v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setBorderId(J)V

    .line 836
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v4, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setApplyBorder(Z)V

    .line 837
    return-void
.end method

.method public setBottomBorderColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)V
    .locals 6
    .param p1, "color"    # Lorg/apache/poi/xssf/usermodel/XSSFColor;

    .line 857
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getCTBorder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    move-result-object v0

    .line 858
    .local v0, "ct":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;
    if-nez p1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetBottom()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 860
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetBottom()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getBottom()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewBottom()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v1

    .line 861
    .local v1, "pr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    goto :goto_1

    .line 862
    :cond_2
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->unsetColor()V

    .line 864
    :goto_1
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    new-instance v3, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;

    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_theme:Lorg/apache/poi/xssf/model/ThemesTable;

    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v5}, Lorg/apache/poi/xssf/model/StylesTable;->getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    move-result-object v5

    invoke-direct {v3, v0, v4, v5}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;Lorg/apache/poi/xssf/model/ThemesTable;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    invoke-virtual {v2, v3}, Lorg/apache/poi/xssf/model/StylesTable;->putBorder(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;)I

    move-result v2

    .line 866
    .local v2, "idx":I
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    int-to-long v4, v2

    invoke-interface {v3, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setBorderId(J)V

    .line 867
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setApplyBorder(Z)V

    .line 868
    return-void
.end method

.method public setBottomBorderColor(S)V
    .locals 1
    .param p1, "color"    # S

    .line 846
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    invoke-direct {v0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>()V

    .line 847
    .local v0, "clr":Lorg/apache/poi/xssf/usermodel/XSSFColor;
    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->setIndexed(I)V

    .line 848
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->setBottomBorderColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)V

    .line 849
    return-void
.end method

.method public setDataFormat(I)V
    .locals 3
    .param p1, "fmt"    # I

    .line 886
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setApplyNumberFormat(Z)V

    .line 887
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setNumFmtId(J)V

    .line 888
    return-void
.end method

.method public setDataFormat(S)V
    .locals 1
    .param p1, "fmt"    # S

    .line 878
    const v0, 0xffff

    and-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->setDataFormat(I)V

    .line 879
    return-void
.end method

.method public setFillBackgroundColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)V
    .locals 3
    .param p1, "color"    # Lorg/apache/poi/xssf/usermodel/XSSFColor;

    .line 916
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getCTFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    move-result-object v0

    .line 917
    .local v0, "ct":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->getPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v1

    .line 918
    .local v1, "ptrn":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;
    if-nez p1, :cond_0

    .line 919
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->isSetBgColor()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->unsetBgColor()V

    goto :goto_0

    .line 921
    :cond_0
    if-nez v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->addNewPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v1

    .line 922
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->setBgColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    .line 925
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->addFill(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;)V

    .line 926
    return-void
.end method

.method public setFillBackgroundColor(S)V
    .locals 1
    .param p1, "bg"    # S

    .line 956
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    invoke-direct {v0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>()V

    .line 957
    .local v0, "clr":Lorg/apache/poi/xssf/usermodel/XSSFColor;
    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->setIndexed(I)V

    .line 958
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->setFillBackgroundColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)V

    .line 959
    return-void
.end method

.method public setFillForegroundColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)V
    .locals 3
    .param p1, "color"    # Lorg/apache/poi/xssf/usermodel/XSSFColor;

    .line 969
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getCTFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    move-result-object v0

    .line 971
    .local v0, "ct":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->getPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v1

    .line 972
    .local v1, "ptrn":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;
    if-nez p1, :cond_0

    .line 973
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->isSetFgColor()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->unsetFgColor()V

    goto :goto_0

    .line 975
    :cond_0
    if-nez v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->addNewPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v1

    .line 976
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->setFgColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    .line 979
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->addFill(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;)V

    .line 980
    return-void
.end method

.method public setFillForegroundColor(S)V
    .locals 1
    .param p1, "fg"    # S

    .line 991
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    invoke-direct {v0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>()V

    .line 992
    .local v0, "clr":Lorg/apache/poi/xssf/usermodel/XSSFColor;
    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->setIndexed(I)V

    .line 993
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->setFillForegroundColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)V

    .line 994
    return-void
.end method

.method public setFillPattern(Lorg/apache/poi/ss/usermodel/FillPatternType;)V
    .locals 3
    .param p1, "pattern"    # Lorg/apache/poi/ss/usermodel/FillPatternType;

    .line 1040
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getCTFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    move-result-object v0

    .line 1041
    .local v0, "ct":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->isSetPatternFill()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->getPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->addNewPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v1

    .line 1042
    .local v1, "ctptrn":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;
    :goto_0
    sget-object v2, Lorg/apache/poi/ss/usermodel/FillPatternType;->NO_FILL:Lorg/apache/poi/ss/usermodel/FillPatternType;

    if-ne p1, v2, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->isSetPatternType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1043
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->unsetPatternType()V

    goto :goto_1

    .line 1045
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/FillPatternType;->getCode()S

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->setPatternType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;)V

    .line 1048
    :goto_1
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->addFill(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;)V

    .line 1049
    return-void
.end method

.method public setFont(Lorg/apache/poi/ss/usermodel/Font;)V
    .locals 4
    .param p1, "font"    # Lorg/apache/poi/ss/usermodel/Font;

    .line 1060
    if-eqz p1, :cond_0

    .line 1061
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Font;->getIndex()S

    move-result v0

    int-to-long v0, v0

    .line 1062
    .local v0, "index":J
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v2, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setFontId(J)V

    .line 1063
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setApplyFont(Z)V

    .line 1064
    .end local v0    # "index":J
    goto :goto_0

    .line 1065
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setApplyFont(Z)V

    .line 1067
    :goto_0
    return-void
.end method

.method public setHidden(Z)V
    .locals 1
    .param p1, "hidden"    # Z

    .line 1076
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->isSetProtection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1077
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->addNewProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellProtection;

    .line 1079
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellProtection;->setHidden(Z)V

    .line 1080
    return-void
.end method

.method public setIndention(S)V
    .locals 3
    .param p1, "indent"    # S

    .line 1089
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getCellAlignment()Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;->setIndent(J)V

    .line 1090
    return-void
.end method

.method public setLeftBorderColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)V
    .locals 6
    .param p1, "color"    # Lorg/apache/poi/xssf/usermodel/XSSFColor;

    .line 1111
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getCTBorder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    move-result-object v0

    .line 1112
    .local v0, "ct":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;
    if-nez p1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetLeft()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1114
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetLeft()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getLeft()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewLeft()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v1

    .line 1115
    .local v1, "pr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    goto :goto_1

    .line 1116
    :cond_2
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->unsetColor()V

    .line 1118
    :goto_1
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    new-instance v3, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;

    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_theme:Lorg/apache/poi/xssf/model/ThemesTable;

    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v5}, Lorg/apache/poi/xssf/model/StylesTable;->getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    move-result-object v5

    invoke-direct {v3, v0, v4, v5}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;Lorg/apache/poi/xssf/model/ThemesTable;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    invoke-virtual {v2, v3}, Lorg/apache/poi/xssf/model/StylesTable;->putBorder(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;)I

    move-result v2

    .line 1120
    .local v2, "idx":I
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    int-to-long v4, v2

    invoke-interface {v3, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setBorderId(J)V

    .line 1121
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setApplyBorder(Z)V

    .line 1122
    return-void
.end method

.method public setLeftBorderColor(S)V
    .locals 1
    .param p1, "color"    # S

    .line 1100
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    invoke-direct {v0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>()V

    .line 1101
    .local v0, "clr":Lorg/apache/poi/xssf/usermodel/XSSFColor;
    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->setIndexed(I)V

    .line 1102
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->setLeftBorderColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)V

    .line 1103
    return-void
.end method

.method public setLocked(Z)V
    .locals 1
    .param p1, "locked"    # Z

    .line 1131
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->isSetProtection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1132
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->addNewProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellProtection;

    .line 1134
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellProtection;->setLocked(Z)V

    .line 1135
    return-void
.end method

.method public setQuotePrefixed(Z)V
    .locals 1
    .param p1, "quotePrefix"    # Z

    .line 1144
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setQuotePrefix(Z)V

    .line 1145
    return-void
.end method

.method public setRightBorderColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)V
    .locals 6
    .param p1, "color"    # Lorg/apache/poi/xssf/usermodel/XSSFColor;

    .line 1166
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getCTBorder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    move-result-object v0

    .line 1167
    .local v0, "ct":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;
    if-nez p1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetRight()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1169
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetRight()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getRight()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewRight()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v1

    .line 1170
    .local v1, "pr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    goto :goto_1

    .line 1171
    :cond_2
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->unsetColor()V

    .line 1173
    :goto_1
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    new-instance v3, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;

    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_theme:Lorg/apache/poi/xssf/model/ThemesTable;

    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v5}, Lorg/apache/poi/xssf/model/StylesTable;->getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    move-result-object v5

    invoke-direct {v3, v0, v4, v5}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;Lorg/apache/poi/xssf/model/ThemesTable;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    invoke-virtual {v2, v3}, Lorg/apache/poi/xssf/model/StylesTable;->putBorder(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;)I

    move-result v2

    .line 1175
    .local v2, "idx":I
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    int-to-long v4, v2

    invoke-interface {v3, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setBorderId(J)V

    .line 1176
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setApplyBorder(Z)V

    .line 1177
    return-void
.end method

.method public setRightBorderColor(S)V
    .locals 1
    .param p1, "color"    # S

    .line 1155
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    invoke-direct {v0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>()V

    .line 1156
    .local v0, "clr":Lorg/apache/poi/xssf/usermodel/XSSFColor;
    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->setIndexed(I)V

    .line 1157
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->setRightBorderColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)V

    .line 1158
    return-void
.end method

.method public setRotation(S)V
    .locals 3
    .param p1, "rotation"    # S

    .line 1200
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getCellAlignment()Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;->setTextRotation(J)V

    .line 1201
    return-void
.end method

.method public setShrinkToFit(Z)V
    .locals 1
    .param p1, "shrinkToFit"    # Z

    .line 1305
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getCellAlignment()Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;->setShrinkToFit(Z)V

    .line 1306
    return-void
.end method

.method public setTopBorderColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)V
    .locals 6
    .param p1, "color"    # Lorg/apache/poi/xssf/usermodel/XSSFColor;

    .line 1223
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getCTBorder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    move-result-object v0

    .line 1224
    .local v0, "ct":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;
    if-nez p1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetTop()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1226
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetTop()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getTop()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewTop()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v1

    .line 1227
    .local v1, "pr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    goto :goto_1

    .line 1228
    :cond_2
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->unsetColor()V

    .line 1230
    :goto_1
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    new-instance v3, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;

    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_theme:Lorg/apache/poi/xssf/model/ThemesTable;

    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v5}, Lorg/apache/poi/xssf/model/StylesTable;->getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    move-result-object v5

    invoke-direct {v3, v0, v4, v5}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;Lorg/apache/poi/xssf/model/ThemesTable;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    invoke-virtual {v2, v3}, Lorg/apache/poi/xssf/model/StylesTable;->putBorder(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;)I

    move-result v2

    .line 1232
    .local v2, "idx":I
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    int-to-long v4, v2

    invoke-interface {v3, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setBorderId(J)V

    .line 1233
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_cellXf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setApplyBorder(Z)V

    .line 1234
    return-void
.end method

.method public setTopBorderColor(S)V
    .locals 1
    .param p1, "color"    # S

    .line 1212
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    invoke-direct {v0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>()V

    .line 1213
    .local v0, "clr":Lorg/apache/poi/xssf/usermodel/XSSFColor;
    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->setIndexed(I)V

    .line 1214
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->setTopBorderColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)V

    .line 1215
    return-void
.end method

.method public setVerticalAlignment(Lorg/apache/poi/ss/usermodel/VerticalAlignment;)V
    .locals 1
    .param p1, "align"    # Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    .line 1242
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getCellAlignment()Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;->setVertical(Lorg/apache/poi/ss/usermodel/VerticalAlignment;)V

    .line 1243
    return-void
.end method

.method public setWrapText(Z)V
    .locals 1
    .param p1, "wrapped"    # Z

    .line 1256
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getCellAlignment()Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;->setWrapText(Z)V

    .line 1257
    return-void
.end method

.method public verifyBelongsToStylesSource(Lorg/apache/poi/xssf/model/StylesTable;)V
    .locals 2
    .param p1, "src"    # Lorg/apache/poi/xssf/model/StylesTable;

    .line 118
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    if-ne v0, p1, :cond_0

    .line 121
    return-void

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This Style does not belong to the supplied Workbook Stlyes Source. Are you trying to assign a style from one workbook to the cell of a differnt workbook?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
