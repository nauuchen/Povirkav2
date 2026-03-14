.class public Lorg/apache/poi/xslf/usermodel/XSLFTable;
.super Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;
.source "XSLFTable.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lorg/apache/poi/sl/usermodel/TableShape;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/poi/xslf/usermodel/XSLFTableRow;",
        ">;",
        "Lorg/apache/poi/sl/usermodel/TableShape<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final DRAWINGML_URI:Ljava/lang/String; = "http://schemas.openxmlformats.org/drawingml/2006/main"

.field static final TABLE_URI:Ljava/lang/String; = "http://schemas.openxmlformats.org/drawingml/2006/table"


# instance fields
.field private _rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFTableRow;",
            ">;"
        }
    .end annotation
.end field

.field private _table:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 49
    return-void
.end method

.method constructor <init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V
    .locals 9
    .param p1, "shape"    # Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;
    .param p2, "sheet"    # Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    .line 58
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    .line 60
    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;->getGraphic()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;->getGraphicData()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;

    move-result-object v0

    .line 61
    .local v0, "god":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v1

    .line 62
    .local v1, "xc":Lorg/apache/xmlbeans/XmlCursor;
    const-string v2, "http://schemas.openxmlformats.org/drawingml/2006/main"

    const-string/jumbo v3, "tbl"

    invoke-interface {v1, v2, v3}, Lorg/apache/xmlbeans/XmlCursor;->toChild(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 66
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    .line 69
    .local v2, "xo":Lorg/apache/xmlbeans/XmlObject;
    instance-of v3, v2, Lorg/apache/xmlbeans/impl/values/XmlAnyTypeImpl;

    if-nez v3, :cond_1

    .line 78
    move-object v3, v2

    check-cast v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    iput-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFTable;->_table:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    .line 79
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 81
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/apache/poi/xslf/usermodel/XSLFTable;->_table:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->sizeOfTrArray()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFTable;->_rows:Ljava/util/List;

    .line 82
    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFTable;->_table:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->getTrArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;

    move-result-object v3

    .local v3, "arr$":[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 83
    .local v6, "row":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;
    iget-object v7, p0, Lorg/apache/poi/xslf/usermodel/XSLFTable;->_rows:Ljava/util/List;

    new-instance v8, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;

    invoke-direct {v8, v6, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;Lorg/apache/poi/xslf/usermodel/XSLFTable;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .end local v6    # "row":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 85
    .end local v3    # "arr$":[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->updateRowColIndexes()V

    .line 86
    return-void

    .line 70
    :cond_1
    const-string v3, "Schemas (*.xsb) for CTTable can\'t be loaded - usually this happens when OSGI loading is used and the thread context classloader has no reference to the xmlbeans classes - use POIXMLTypeLoader.setClassLoader() to set the loader, e.g. with CTTable.class.getClassLoader()"

    .line 76
    .local v3, "errStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 63
    .end local v2    # "xo":Lorg/apache/xmlbeans/XmlObject;
    .end local v3    # "errStr":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "a:tbl element was not found in\n "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static prototype(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;
    .locals 8
    .param p0, "shapeId"    # I

    .line 162
    invoke-static {}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame$Factory;->newInstance()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;

    move-result-object v0

    .line 163
    .local v0, "frame":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;->addNewNvGraphicFramePr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrameNonVisual;

    move-result-object v1

    .line 165
    .local v1, "nvGr":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrameNonVisual;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrameNonVisual;->addNewCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v2

    .line 166
    .local v2, "cnv":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Table "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setName(Ljava/lang/String;)V

    .line 167
    add-int/lit8 v3, p0, 0x1

    int-to-long v3, v3

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    .line 168
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrameNonVisual;->addNewCNvGraphicFramePr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualGraphicFrameProperties;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualGraphicFrameProperties;->addNewGraphicFrameLocks()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectFrameLocking;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectFrameLocking;->setNoGrp(Z)V

    .line 169
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrameNonVisual;->addNewNvPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;

    .line 171
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;->addNewXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    .line 172
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;->addNewGraphic()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;->addNewGraphicData()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;

    move-result-object v3

    .line 173
    .local v3, "gr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v4

    .line 174
    .local v4, "grCur":Lorg/apache/xmlbeans/XmlCursor;
    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlCursor;->toNextToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    .line 175
    new-instance v5, Ljavax/xml/namespace/QName;

    const-string v6, "http://schemas.openxmlformats.org/drawingml/2006/main"

    const-string/jumbo v7, "tbl"

    invoke-direct {v5, v6, v7}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lorg/apache/xmlbeans/XmlCursor;->beginElement(Ljavax/xml/namespace/QName;)V

    .line 177
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    move-result-object v5

    .line 178
    .local v5, "tbl":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;
    invoke-interface {v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->addNewTblPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;

    .line 179
    invoke-interface {v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->addNewTblGrid()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableGrid;

    .line 180
    invoke-interface {v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v6

    .line 182
    .local v6, "tblCur":Lorg/apache/xmlbeans/XmlCursor;
    invoke-interface {v6, v4}, Lorg/apache/xmlbeans/XmlCursor;->moveXmlContents(Lorg/apache/xmlbeans/XmlCursor;)Z

    .line 183
    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 184
    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 185
    const-string v7, "http://schemas.openxmlformats.org/drawingml/2006/table"

    invoke-interface {v3, v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;->setUri(Ljava/lang/String;)V

    .line 186
    return-object v0
.end method


# virtual methods
.method public addRow()Lorg/apache/poi/xslf/usermodel/XSLFTableRow;
    .locals 4

    .line 152
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTable;->_table:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->addNewTr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;

    move-result-object v0

    .line 153
    .local v0, "tr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;Lorg/apache/poi/xslf/usermodel/XSLFTable;)V

    .line 155
    .local v1, "row":Lorg/apache/poi/xslf/usermodel/XSLFTableRow;
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->setHeight(D)V

    .line 156
    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTable;->_rows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->updateRowColIndexes()V

    .line 158
    return-object v1
.end method

.method public getCTTable()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 109
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTable;->_table:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    return-object v0
.end method

.method public bridge synthetic getCell(II)Lorg/apache/poi/sl/usermodel/TableCell;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .line 49
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getCell(II)Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    move-result-object v0

    return-object v0
.end method

.method public getCell(II)Lorg/apache/poi/xslf/usermodel/XSLFTableCell;
    .locals 5
    .param p1, "row"    # I
    .param p2, "col"    # I

    .line 90
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getRows()Ljava/util/List;

    move-result-object v0

    .line 91
    .local v0, "rows":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xslf/usermodel/XSLFTableRow;>;"
    const/4 v1, 0x0

    if-ltz p1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, p1, :cond_0

    goto :goto_1

    .line 94
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;

    .line 95
    .local v2, "r":Lorg/apache/poi/xslf/usermodel/XSLFTableRow;
    if-nez v2, :cond_1

    .line 97
    return-object v1

    .line 99
    :cond_1
    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->getCells()Ljava/util/List;

    move-result-object v3

    .line 100
    .local v3, "cells":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xslf/usermodel/XSLFTableCell;>;"
    if-ltz p2, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, p2, :cond_2

    goto :goto_0

    .line 104
    :cond_2
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    return-object v1

    .line 101
    :cond_3
    :goto_0
    return-object v1

    .line 92
    .end local v2    # "r":Lorg/apache/poi/xslf/usermodel/XSLFTableRow;
    .end local v3    # "cells":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xslf/usermodel/XSLFTableCell;>;"
    :cond_4
    :goto_1
    return-object v1
.end method

.method public getColumnWidth(I)D
    .locals 2
    .param p1, "idx"    # I

    .line 124
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTable;->_table:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->getTblGrid()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableGrid;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableGrid;->getGridColArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCol;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCol;->getW()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNumberOfColumns()I
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTable;->_table:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->getTblGrid()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableGrid;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableGrid;->sizeOfGridColArray()I

    move-result v0

    return v0
.end method

.method public getNumberOfRows()I
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTable;->_table:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->sizeOfTrArray()I

    move-result v0

    return v0
.end method

.method public getRowHeight(I)D
    .locals 2
    .param p1, "row"    # I

    .line 135
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTable;->_table:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->getTrArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;->getH()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getRows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFTableRow;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTable;->_rows:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getTableStyle()Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;
    .locals 7

    .line 248
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getCTTable()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    move-result-object v0

    .line 250
    .local v0, "tab":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->isSetTblPr()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->getTblPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;->isSetTableStyleId()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 254
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->getTblPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;->getTableStyleId()Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "styleId":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSlideShow()Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getTableStyles()Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;

    move-result-object v3

    .line 256
    .local v3, "styles":Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;
    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;->getStyles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;

    .line 257
    .local v5, "style":Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;
    invoke-virtual {v5}, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;->getStyleId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 258
    return-object v5

    .end local v5    # "style":Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;
    :cond_1
    goto :goto_0

    .line 261
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    return-object v2

    .line 251
    .end local v1    # "styleId":Ljava/lang/String;
    .end local v3    # "styles":Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;
    :cond_3
    :goto_1
    return-object v2
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xslf/usermodel/XSLFTableRow;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTable;->_rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public mergeCells(IIII)V
    .locals 9
    .param p1, "firstRow"    # I
    .param p2, "lastRow"    # I
    .param p3, "firstCol"    # I
    .param p4, "lastCol"    # I

    .line 194
    const-string v0, " > "

    if-gt p1, p2, :cond_9

    .line 201
    if-gt p3, p4, :cond_8

    .line 208
    sub-int v0, p2, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 209
    .local v0, "rowSpan":I
    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 211
    .local v3, "mergeRowRequired":Z
    :goto_0
    sub-int v4, p4, p3

    add-int/2addr v4, v1

    .line 212
    .local v4, "colSpan":I
    if-le v4, v1, :cond_1

    const/4 v2, 0x1

    .line 214
    .local v2, "mergeColumnRequired":Z
    :cond_1
    move v5, p1

    .local v5, "i":I
    :goto_1
    if-gt v5, p2, :cond_7

    .line 216
    iget-object v6, p0, Lorg/apache/poi/xslf/usermodel/XSLFTable;->_rows:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;

    .line 218
    .local v6, "row":Lorg/apache/poi/xslf/usermodel/XSLFTableRow;
    move v7, p3

    .local v7, "colPos":I
    :goto_2
    if-gt v7, p4, :cond_6

    .line 220
    invoke-virtual {v6}, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->getCells()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    .line 222
    .local v8, "cell":Lorg/apache/poi/xslf/usermodel/XSLFTableCell;
    if-eqz v3, :cond_3

    .line 223
    if-ne v5, p1, :cond_2

    .line 224
    invoke-virtual {v8, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->setRowSpan(I)V

    goto :goto_3

    .line 226
    :cond_2
    invoke-virtual {v8, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->setVMerge(Z)V

    .line 229
    :cond_3
    :goto_3
    if-eqz v2, :cond_5

    .line 230
    if-ne v7, p3, :cond_4

    .line 231
    invoke-virtual {v8, v4}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->setGridSpan(I)V

    goto :goto_4

    .line 233
    :cond_4
    invoke-virtual {v8, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->setHMerge(Z)V

    .line 218
    .end local v8    # "cell":Lorg/apache/poi/xslf/usermodel/XSLFTableCell;
    :cond_5
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 214
    .end local v6    # "row":Lorg/apache/poi/xslf/usermodel/XSLFTableRow;
    .end local v7    # "colPos":I
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 238
    .end local v5    # "i":I
    :cond_7
    return-void

    .line 202
    .end local v0    # "rowSpan":I
    .end local v2    # "mergeColumnRequired":Z
    .end local v3    # "mergeRowRequired":Z
    .end local v4    # "colSpan":I
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot merge, first column > last column : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot merge, first row > last row : "

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

.method public setColumnWidth(ID)V
    .locals 3
    .param p1, "idx"    # I
    .param p2, "width"    # D

    .line 130
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTable;->_table:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->getTblGrid()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableGrid;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableGrid;->getGridColArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCol;

    move-result-object v0

    invoke-static {p2, p3}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCol;->setW(J)V

    .line 131
    return-void
.end method

.method public setRowHeight(ID)V
    .locals 3
    .param p1, "row"    # I
    .param p2, "height"    # D

    .line 140
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTable;->_table:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->getTrArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;

    move-result-object v0

    invoke-static {p2, p3}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;->setH(J)V

    .line 141
    return-void
.end method

.method updateCellAnchor()V
    .locals 26

    .line 277
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getNumberOfRows()I

    move-result v1

    .line 278
    .local v1, "rows":I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getNumberOfColumns()I

    move-result v2

    .line 280
    .local v2, "cols":I
    new-array v3, v2, [D

    .line 281
    .local v3, "colWidths":[D
    new-array v4, v1, [D

    .line 283
    .local v4, "rowHeights":[D
    const/4 v5, 0x0

    .local v5, "row":I
    :goto_0
    if-ge v5, v1, :cond_0

    .line 284
    invoke-virtual {v0, v5}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getRowHeight(I)D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 283
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 286
    .end local v5    # "row":I
    :cond_0
    const/4 v5, 0x0

    .local v5, "col":I
    :goto_1
    if-ge v5, v2, :cond_1

    .line 287
    invoke-virtual {v0, v5}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getColumnWidth(I)D

    move-result-wide v6

    aput-wide v6, v3, v5

    .line 286
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 290
    .end local v5    # "col":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v5

    .line 291
    .local v5, "tblAnc":Ljava/awt/geom/Rectangle2D;
    const/4 v6, 0x0

    invoke-static {v6}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v6

    .line 293
    .local v6, "df":Lorg/apache/poi/sl/draw/DrawFactory;
    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v7

    .line 296
    .local v7, "newY":D
    const/4 v9, 0x0

    .local v9, "row":I
    :goto_2
    const/4 v10, 0x1

    if-ge v9, v1, :cond_5

    .line 297
    const-wide/16 v11, 0x0

    .line 298
    .local v11, "maxHeight":D
    const/4 v13, 0x0

    .local v13, "col":I
    :goto_3
    if-ge v13, v2, :cond_4

    .line 299
    invoke-virtual {v0, v9, v13}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getCell(II)Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    move-result-object v14

    .line 300
    .local v14, "tc":Lorg/apache/poi/xslf/usermodel/XSLFTableCell;
    if-eqz v14, :cond_3

    invoke-virtual {v14}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getGridSpan()I

    move-result v15

    if-ne v15, v10, :cond_3

    invoke-virtual {v14}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getRowSpan()I

    move-result v15

    if-eq v15, v10, :cond_2

    .line 301
    move-object/from16 v16, v6

    move-wide/from16 v17, v7

    goto :goto_4

    .line 304
    :cond_2
    new-instance v15, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    aget-wide v21, v3, v13

    const-wide/16 v23, 0x0

    move-object/from16 v16, v15

    invoke-direct/range {v16 .. v24}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    invoke-virtual {v14, v15}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    .line 305
    invoke-virtual {v6, v14}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/TextShape;)Lorg/apache/poi/sl/draw/DrawTextShape;

    move-result-object v15

    .line 306
    .local v15, "dts":Lorg/apache/poi/sl/draw/DrawTextShape;
    move-object/from16 v16, v6

    move-wide/from16 v17, v7

    .end local v6    # "df":Lorg/apache/poi/sl/draw/DrawFactory;
    .end local v7    # "newY":D
    .local v16, "df":Lorg/apache/poi/sl/draw/DrawFactory;
    .local v17, "newY":D
    invoke-virtual {v15}, Lorg/apache/poi/sl/draw/DrawTextShape;->getTextHeight()D

    move-result-wide v6

    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    move-wide v11, v6

    .end local v11    # "maxHeight":D
    .local v6, "maxHeight":D
    goto :goto_4

    .line 300
    .end local v15    # "dts":Lorg/apache/poi/sl/draw/DrawTextShape;
    .end local v16    # "df":Lorg/apache/poi/sl/draw/DrawFactory;
    .end local v17    # "newY":D
    .local v6, "df":Lorg/apache/poi/sl/draw/DrawFactory;
    .restart local v7    # "newY":D
    .restart local v11    # "maxHeight":D
    :cond_3
    move-object/from16 v16, v6

    move-wide/from16 v17, v7

    .line 298
    .end local v6    # "df":Lorg/apache/poi/sl/draw/DrawFactory;
    .end local v7    # "newY":D
    .end local v14    # "tc":Lorg/apache/poi/xslf/usermodel/XSLFTableCell;
    .restart local v16    # "df":Lorg/apache/poi/sl/draw/DrawFactory;
    .restart local v17    # "newY":D
    :goto_4
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v6, v16

    move-wide/from16 v7, v17

    goto :goto_3

    .end local v16    # "df":Lorg/apache/poi/sl/draw/DrawFactory;
    .end local v17    # "newY":D
    .restart local v6    # "df":Lorg/apache/poi/sl/draw/DrawFactory;
    .restart local v7    # "newY":D
    :cond_4
    move-object/from16 v16, v6

    move-wide/from16 v17, v7

    .line 308
    .end local v6    # "df":Lorg/apache/poi/sl/draw/DrawFactory;
    .end local v7    # "newY":D
    .end local v13    # "col":I
    .restart local v16    # "df":Lorg/apache/poi/sl/draw/DrawFactory;
    .restart local v17    # "newY":D
    aget-wide v6, v4, v9

    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    aput-wide v6, v4, v9

    .line 296
    .end local v11    # "maxHeight":D
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v6, v16

    move-wide/from16 v7, v17

    goto :goto_2

    .end local v16    # "df":Lorg/apache/poi/sl/draw/DrawFactory;
    .end local v17    # "newY":D
    .restart local v6    # "df":Lorg/apache/poi/sl/draw/DrawFactory;
    .restart local v7    # "newY":D
    :cond_5
    move-object/from16 v16, v6

    move-wide/from16 v17, v7

    .line 312
    .end local v6    # "df":Lorg/apache/poi/sl/draw/DrawFactory;
    .end local v7    # "newY":D
    .end local v9    # "row":I
    .restart local v16    # "df":Lorg/apache/poi/sl/draw/DrawFactory;
    .restart local v17    # "newY":D
    const/4 v6, 0x0

    .end local v17    # "newY":D
    .local v6, "row":I
    .restart local v7    # "newY":D
    :goto_5
    if-ge v6, v1, :cond_8

    .line 313
    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v11

    .line 314
    .local v11, "newX":D
    const/4 v9, 0x0

    .local v9, "col":I
    :goto_6
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    if-ge v9, v2, :cond_7

    .line 315
    new-instance v15, Ljava/awt/geom/Rectangle2D$Double;

    aget-wide v22, v3, v9

    aget-wide v24, v4, v6

    move-object/from16 v17, v15

    move-wide/from16 v18, v11

    move-wide/from16 v20, v7

    invoke-direct/range {v17 .. v25}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    .line 316
    .local v15, "bounds":Ljava/awt/geom/Rectangle2D;
    invoke-virtual {v0, v6, v9}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getCell(II)Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    move-result-object v10

    .line 317
    .local v10, "tc":Lorg/apache/poi/xslf/usermodel/XSLFTableCell;
    if-eqz v10, :cond_6

    .line 318
    invoke-virtual {v10, v15}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    .line 319
    aget-wide v18, v3, v9

    add-double v18, v18, v13

    add-double v11, v11, v18

    .line 314
    .end local v10    # "tc":Lorg/apache/poi/xslf/usermodel/XSLFTableCell;
    .end local v15    # "bounds":Ljava/awt/geom/Rectangle2D;
    :cond_6
    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x1

    goto :goto_6

    .line 322
    .end local v9    # "col":I
    :cond_7
    aget-wide v9, v4, v6

    add-double/2addr v9, v13

    add-double/2addr v7, v9

    .line 312
    .end local v11    # "newX":D
    add-int/lit8 v6, v6, 0x1

    const/4 v10, 0x1

    goto :goto_5

    .line 326
    .end local v6    # "row":I
    :cond_8
    const/4 v6, 0x0

    .restart local v6    # "row":I
    :goto_7
    if-ge v6, v1, :cond_11

    .line 327
    const/4 v9, 0x0

    .restart local v9    # "col":I
    :goto_8
    if-ge v9, v2, :cond_10

    .line 328
    invoke-virtual {v0, v6, v9}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getCell(II)Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    move-result-object v10

    .line 329
    .restart local v10    # "tc":Lorg/apache/poi/xslf/usermodel/XSLFTableCell;
    if-nez v10, :cond_9

    .line 330
    const/4 v15, 0x1

    goto :goto_b

    .line 332
    :cond_9
    invoke-virtual {v10}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v11

    .line 333
    .local v11, "mergedBounds":Ljava/awt/geom/Rectangle2D;
    add-int/lit8 v12, v9, 0x1

    .local v12, "col2":I
    :goto_9
    invoke-virtual {v10}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getGridSpan()I

    move-result v13

    add-int/2addr v13, v9

    if-ge v12, v13, :cond_c

    .line 334
    if-ge v12, v2, :cond_b

    .line 335
    invoke-virtual {v0, v6, v12}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getCell(II)Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    move-result-object v13

    .line 336
    .local v13, "tc2":Lorg/apache/poi/xslf/usermodel/XSLFTableCell;
    invoke-virtual {v13}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getGridSpan()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_a

    invoke-virtual {v13}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getRowSpan()I

    move-result v14

    if-ne v14, v15, :cond_a

    .line 337
    invoke-virtual {v13}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/awt/geom/Rectangle2D;->add(Ljava/awt/geom/Rectangle2D;)V

    .line 333
    .end local v13    # "tc2":Lorg/apache/poi/xslf/usermodel/XSLFTableCell;
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 336
    .restart local v13    # "tc2":Lorg/apache/poi/xslf/usermodel/XSLFTableCell;
    :cond_a
    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 334
    .end local v13    # "tc2":Lorg/apache/poi/xslf/usermodel/XSLFTableCell;
    :cond_b
    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 339
    .end local v12    # "col2":I
    :cond_c
    add-int/lit8 v12, v6, 0x1

    .local v12, "row2":I
    :goto_a
    invoke-virtual {v10}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getRowSpan()I

    move-result v13

    add-int/2addr v13, v6

    if-ge v12, v13, :cond_f

    .line 340
    if-ge v12, v1, :cond_e

    .line 341
    invoke-virtual {v0, v12, v9}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getCell(II)Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    move-result-object v13

    .line 342
    .restart local v13    # "tc2":Lorg/apache/poi/xslf/usermodel/XSLFTableCell;
    invoke-virtual {v13}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getGridSpan()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_d

    invoke-virtual {v13}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getRowSpan()I

    move-result v14

    if-ne v14, v15, :cond_d

    .line 343
    invoke-virtual {v13}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/awt/geom/Rectangle2D;->add(Ljava/awt/geom/Rectangle2D;)V

    .line 339
    .end local v13    # "tc2":Lorg/apache/poi/xslf/usermodel/XSLFTableCell;
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 342
    .restart local v13    # "tc2":Lorg/apache/poi/xslf/usermodel/XSLFTableCell;
    :cond_d
    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 340
    .end local v13    # "tc2":Lorg/apache/poi/xslf/usermodel/XSLFTableCell;
    :cond_e
    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 339
    :cond_f
    const/4 v15, 0x1

    .line 345
    .end local v12    # "row2":I
    invoke-virtual {v10, v11}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    .line 327
    .end local v10    # "tc":Lorg/apache/poi/xslf/usermodel/XSLFTableCell;
    .end local v11    # "mergedBounds":Ljava/awt/geom/Rectangle2D;
    :goto_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_10
    const/4 v15, 0x1

    .line 326
    .end local v9    # "col":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 349
    .end local v6    # "row":I
    :cond_11
    return-void
.end method

.method updateRowColIndexes()V
    .locals 6

    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, "rowIdx":I
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;

    .line 267
    .local v2, "xr":Lorg/apache/poi/xslf/usermodel/XSLFTableRow;
    const/4 v3, 0x0

    .line 268
    .local v3, "colIdx":I
    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    .line 269
    .local v5, "tc":Lorg/apache/poi/xslf/usermodel/XSLFTableCell;
    invoke-virtual {v5, v0, v3}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->setRowColIndex(II)V

    .line 270
    nop

    .end local v5    # "tc":Lorg/apache/poi/xslf/usermodel/XSLFTableCell;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 272
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_0
    nop

    .end local v2    # "xr":Lorg/apache/poi/xslf/usermodel/XSLFTableRow;
    .end local v3    # "colIdx":I
    add-int/lit8 v0, v0, 0x1

    .line 273
    goto :goto_0

    .line 274
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method
