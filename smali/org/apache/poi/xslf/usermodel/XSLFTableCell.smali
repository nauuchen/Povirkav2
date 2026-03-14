.class public Lorg/apache/poi/xslf/usermodel/XSLFTableCell;
.super Lorg/apache/poi/xslf/usermodel/XSLFTextShape;
.source "XSLFTableCell.java"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/TableCell;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextRun;,
        Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextParagraph;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/usermodel/XSLFTextShape;",
        "Lorg/apache/poi/sl/usermodel/TableCell<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private _tcPr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

.field private anchor:Ljava/awt/geom/Rectangle2D;

.field private col:I

.field private row:I

.field private final table:Lorg/apache/poi/xslf/usermodel/XSLFTable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 71
    return-void
.end method

.method constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;Lorg/apache/poi/xslf/usermodel/XSLFTable;)V
    .locals 2
    .param p1, "cell"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;
    .param p2, "table"    # Lorg/apache/poi/xslf/usermodel/XSLFTable;

    .line 82
    invoke-virtual {p2}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->_tcPr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    .line 74
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->row:I

    iput v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->col:I

    .line 79
    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->anchor:Ljava/awt/geom/Rectangle2D;

    .line 83
    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->table:Lorg/apache/poi/xslf/usermodel/XSLFTable;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lorg/apache/poi/xslf/usermodel/XSLFTableCell;Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/xslf/usermodel/XSLFTableCell;
    .param p1, "x1"    # Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;

    .line 71
    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getTablePartStyle(Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    move-result-object v0

    return-object v0
.end method

.method private getCTLine(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    .locals 4
    .param p1, "edge"    # Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;
    .param p2, "create"    # Z

    .line 143
    if-eqz p1, :cond_d

    .line 147
    invoke-virtual {p0, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCellProperties(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    move-result-object v0

    .line 148
    .local v0, "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 149
    return-object v1

    .line 152
    :cond_0
    sget-object v2, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$2;->$SwitchMap$org$apache$poi$sl$usermodel$TableCell$BorderEdge:[I

    invoke-virtual {p1}, Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_a

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 162
    return-object v1

    .line 160
    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->isSetLnR()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->getLnR()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->addNewLnR()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v1

    :cond_3
    :goto_0
    return-object v1

    .line 158
    :cond_4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->isSetLnT()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->getLnT()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v1

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->addNewLnT()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v1

    :cond_6
    :goto_1
    return-object v1

    .line 156
    :cond_7
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->isSetLnL()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->getLnL()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v1

    goto :goto_2

    :cond_8
    if-eqz p2, :cond_9

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->addNewLnL()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v1

    :cond_9
    :goto_2
    return-object v1

    .line 154
    :cond_a
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->isSetLnB()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->getLnB()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v1

    goto :goto_3

    :cond_b
    if-eqz p2, :cond_c

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->addNewLnB()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v1

    :cond_c
    :goto_3
    return-object v1

    .line 144
    .end local v0    # "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BorderEdge needs to be specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;
    .locals 1

    .line 632
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;

    return-object v0
.end method

.method private getTablePartStyle(Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
    .locals 14
    .param p1, "tablePartStyle"    # Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;

    .line 472
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->table:Lorg/apache/poi/xslf/usermodel/XSLFTable;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getCTTable()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    move-result-object v0

    .line 473
    .local v0, "ct":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->isSetTblPr()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 474
    return-object v2

    .line 477
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->getTblPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;

    move-result-object v1

    .line 478
    .local v1, "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;->isSetBandRow()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;->getBandRow()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 479
    .local v3, "bandRow":Z
    :goto_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;->isSetFirstRow()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;->getFirstRow()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 480
    .local v6, "firstRow":Z
    :goto_1
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;->isSetLastRow()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;->getLastRow()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    .line 481
    .local v7, "lastRow":Z
    :goto_2
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;->isSetBandCol()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;->getBandCol()Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    .line 482
    .local v8, "bandCol":Z
    :goto_3
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;->isSetFirstCol()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;->getFirstCol()Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x1

    goto :goto_4

    :cond_5
    const/4 v9, 0x0

    .line 483
    .local v9, "firstCol":Z
    :goto_4
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;->isSetLastCol()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;->getLastCol()Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v10, 0x1

    goto :goto_5

    :cond_6
    const/4 v10, 0x0

    .line 486
    .local v10, "lastCol":Z
    :goto_5
    if-eqz p1, :cond_7

    .line 487
    move-object v4, p1

    .local v4, "tps":Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;
    goto :goto_7

    .line 488
    .end local v4    # "tps":Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;
    :cond_7
    iget v11, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->row:I

    if-nez v11, :cond_8

    if-eqz v6, :cond_8

    .line 489
    sget-object v4, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;->firstRow:Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;

    .restart local v4    # "tps":Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;
    goto :goto_7

    .line 490
    .end local v4    # "tps":Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;
    :cond_8
    iget-object v12, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->table:Lorg/apache/poi/xslf/usermodel/XSLFTable;

    invoke-virtual {v12}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getNumberOfRows()I

    move-result v12

    sub-int/2addr v12, v5

    if-ne v11, v12, :cond_9

    if-eqz v7, :cond_9

    .line 491
    sget-object v4, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;->lastRow:Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;

    .restart local v4    # "tps":Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;
    goto :goto_7

    .line 492
    .end local v4    # "tps":Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;
    :cond_9
    iget v11, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->col:I

    if-nez v11, :cond_a

    if-eqz v9, :cond_a

    .line 493
    sget-object v4, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;->firstCol:Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;

    .restart local v4    # "tps":Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;
    goto :goto_7

    .line 494
    .end local v4    # "tps":Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;
    :cond_a
    iget-object v12, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->table:Lorg/apache/poi/xslf/usermodel/XSLFTable;

    invoke-virtual {v12}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getNumberOfColumns()I

    move-result v12

    sub-int/2addr v12, v5

    if-ne v11, v12, :cond_b

    if-eqz v10, :cond_b

    .line 495
    sget-object v4, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;->lastCol:Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;

    .restart local v4    # "tps":Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;
    goto :goto_7

    .line 497
    .end local v4    # "tps":Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;
    :cond_b
    sget-object v11, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;->wholeTbl:Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;

    .line 499
    .local v11, "tps":Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;
    iget v12, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->row:I

    if-eqz v6, :cond_c

    const/4 v13, 0x1

    goto :goto_6

    :cond_c
    const/4 v13, 0x0

    :goto_6
    add-int/2addr v12, v13

    .line 500
    .local v12, "br":I
    iget v13, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->col:I

    if-eqz v9, :cond_d

    const/4 v4, 0x1

    :cond_d
    add-int/2addr v13, v4

    .line 501
    .local v13, "bc":I
    if-eqz v3, :cond_e

    and-int/lit8 v4, v12, 0x1

    if-nez v4, :cond_e

    .line 502
    sget-object v4, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;->band1H:Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;

    .end local v11    # "tps":Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;
    .restart local v4    # "tps":Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;
    goto :goto_7

    .line 503
    .end local v4    # "tps":Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;
    .restart local v11    # "tps":Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;
    :cond_e
    if-eqz v8, :cond_f

    and-int/lit8 v4, v13, 0x1

    if-nez v4, :cond_f

    .line 504
    sget-object v4, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;->band1V:Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;

    .end local v11    # "tps":Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;
    .restart local v4    # "tps":Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;
    goto :goto_7

    .line 508
    .end local v4    # "tps":Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;
    .end local v12    # "br":I
    .end local v13    # "bc":I
    .restart local v11    # "tps":Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;
    :cond_f
    move-object v4, v11

    .end local v11    # "tps":Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;
    .restart local v4    # "tps":Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;
    :goto_7
    iget-object v5, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->table:Lorg/apache/poi/xslf/usermodel/XSLFTable;

    invoke-virtual {v5}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getTableStyle()Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;

    move-result-object v5

    .line 509
    .local v5, "tabStyle":Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;
    if-nez v5, :cond_10

    .line 510
    return-object v2

    .line 513
    :cond_10
    invoke-virtual {v5, v4}, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;->getTablePartStyle(Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    move-result-object v2

    .line 514
    .local v2, "part":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
    if-nez v2, :cond_11

    sget-object v11, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;->wholeTbl:Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;

    invoke-virtual {v5, v11}, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;->getTablePartStyle(Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    move-result-object v11

    goto :goto_8

    :cond_11
    move-object v11, v2

    :goto_8
    return-object v11
.end method

.method static prototype()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;
    .locals 3

    .line 98
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;

    move-result-object v0

    .line 99
    .local v0, "cell":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;->addNewTcPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    move-result-object v1

    .line 100
    .local v1, "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->addNewLnL()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    .line 101
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->addNewLnR()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    .line 102
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->addNewLnT()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    .line 103
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->addNewLnB()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    .line 104
    return-object v0
.end method

.method private setBorderDefaults(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    .locals 3
    .param p1, "edge"    # Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    .line 266
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCTLine(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    .line 267
    .local v0, "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetNoFill()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetNoFill()V

    .line 271
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetPrstDash()Z

    move-result v1

    if-nez v1, :cond_1

    .line 272
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewPrstDash()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;->SOLID:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;)V

    .line 274
    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetCmpd()Z

    move-result v1

    if-nez v1, :cond_2

    .line 275
    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine;->SNG:Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setCmpd(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;)V

    .line 277
    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetAlgn()Z

    move-result v1

    if-nez v1, :cond_3

    .line 278
    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPenAlignment;->CTR:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPenAlignment$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setAlgn(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPenAlignment$Enum;)V

    .line 280
    :cond_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetCap()Z

    move-result v1

    if-nez v1, :cond_4

    .line 281
    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineCap;->FLAT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineCap$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setCap(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineCap$Enum;)V

    .line 283
    :cond_4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetRound()Z

    move-result v1

    if-nez v1, :cond_5

    .line 284
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewRound()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinRound;

    .line 287
    :cond_5
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetHeadEnd()Z

    move-result v1

    if-nez v1, :cond_6

    .line 288
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v1

    .line 289
    .local v1, "hd":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;
    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType;->NONE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType$Enum;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->setType(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType$Enum;)V

    .line 290
    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth;->MED:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->setW(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;)V

    .line 291
    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength;->MED:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->setLen(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;)V

    .line 294
    .end local v1    # "hd":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;
    :cond_6
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetTailEnd()Z

    move-result v1

    if-nez v1, :cond_7

    .line 295
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v1

    .line 296
    .local v1, "tl":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;
    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType;->NONE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType$Enum;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->setType(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType$Enum;)V

    .line 297
    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth;->MED:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->setW(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;)V

    .line 298
    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength;->MED:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->setLen(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;)V

    .line 301
    .end local v1    # "tl":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;
    :cond_7
    return-object v0
.end method


# virtual methods
.method public getAnchor()Ljava/awt/geom/Rectangle2D;
    .locals 1

    .line 675
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->anchor:Ljava/awt/geom/Rectangle2D;

    if-nez v0, :cond_0

    .line 676
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->table:Lorg/apache/poi/xslf/usermodel/XSLFTable;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->updateCellAnchor()V

    .line 679
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->anchor:Ljava/awt/geom/Rectangle2D;

    if-eqz v0, :cond_1

    .line 680
    return-object v0

    .line 679
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getBorderCap(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;
    .locals 2
    .param p1, "edge"    # Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    .line 366
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCTLine(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    .line 367
    .local v0, "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetNoFill()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetSolidFill()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetCap()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 371
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getCap()Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineCap$Enum;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineCap$Enum;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;->fromOoxmlId(I)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    move-result-object v1

    return-object v1

    .line 368
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getBorderColor(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Ljava/awt/Color;
    .locals 5
    .param p1, "edge"    # Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    .line 317
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCTLine(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    .line 318
    .local v0, "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetNoFill()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetSolidFill()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 322
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v1

    .line 323
    .local v1, "fill":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    new-instance v2, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v3

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lorg/apache/poi/xslf/usermodel/XSLFColor;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;)V

    .line 324
    .local v2, "c":Lorg/apache/poi/xslf/usermodel/XSLFColor;
    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getColor()Ljava/awt/Color;

    move-result-object v3

    return-object v3

    .line 319
    .end local v1    # "fill":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    .end local v2    # "c":Lorg/apache/poi/xslf/usermodel/XSLFColor;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getBorderCompound(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;
    .locals 2
    .param p1, "edge"    # Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    .line 328
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCTLine(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    .line 329
    .local v0, "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetNoFill()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetSolidFill()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetCmpd()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 333
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getCmpd()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;->fromOoxmlId(I)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    move-result-object v1

    return-object v1

    .line 330
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getBorderDash(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;
    .locals 2
    .param p1, "edge"    # Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    .line 347
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCTLine(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    .line 348
    .local v0, "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetNoFill()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetSolidFill()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetPrstDash()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getPrstDash()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->fromOoxmlId(I)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    move-result-object v1

    return-object v1

    .line 349
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getBorderStyle(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/apache/poi/sl/usermodel/StrokeStyle;
    .locals 2
    .param p1, "edge"    # Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    .line 200
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getBorderWidth(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Ljava/lang/Double;

    move-result-object v0

    .line 201
    .local v0, "width":Ljava/lang/Double;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$1;

    invoke-direct {v1, p0, p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$1;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTableCell;Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Ljava/lang/Double;)V

    :goto_0
    return-object v1
.end method

.method public getBorderWidth(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Ljava/lang/Double;
    .locals 3
    .param p1, "edge"    # Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    .line 255
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCTLine(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    .line 256
    .local v0, "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetW()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getW()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method protected getCellProperties(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;
    .locals 2
    .param p1, "create"    # Z

    .line 108
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->_tcPr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    if-nez v0, :cond_0

    .line 109
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;

    move-result-object v0

    .line 110
    .local v0, "cell":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;->getTcPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->_tcPr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    .line 111
    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 112
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;->addNewTcPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->_tcPr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    .line 115
    .end local v0    # "cell":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->_tcPr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    return-object v0
.end method

.method public getFillColor()Ljava/awt/Color;
    .locals 3

    .line 411
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getFillPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v0

    .line 412
    .local v0, "ps":Lorg/apache/poi/sl/usermodel/PaintStyle;
    instance-of v1, v0, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    if-eqz v1, :cond_0

    .line 413
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;->getSolidColor()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object v1

    .line 414
    .local v1, "cs":Lorg/apache/poi/sl/usermodel/ColorStyle;
    invoke-static {v1}, Lorg/apache/poi/sl/draw/DrawPaint;->applyColorTransform(Lorg/apache/poi/sl/usermodel/ColorStyle;)Ljava/awt/Color;

    move-result-object v2

    return-object v2

    .line 417
    .end local v1    # "cs":Lorg/apache/poi/sl/usermodel/ColorStyle;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getFillPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 10

    .line 423
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v0

    .line 424
    .local v0, "sheet":Lorg/apache/poi/xslf/usermodel/XSLFSheet;
    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v1

    .line 425
    .local v1, "theme":Lorg/apache/poi/xslf/usermodel/XSLFTheme;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 426
    .local v2, "hasPlaceholder":Z
    :goto_0
    invoke-virtual {p0, v3}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCellProperties(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    move-result-object v3

    .line 427
    .local v3, "props":Lorg/apache/xmlbeans/XmlObject;
    invoke-static {v3}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getFillDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;

    move-result-object v4

    .line 428
    .local v4, "fp":Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;
    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 429
    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v6

    invoke-static {v4, v5, v6, v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->selectPaint(Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Z)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v6

    .line 430
    .local v6, "paint":Lorg/apache/poi/sl/usermodel/PaintStyle;
    if-eqz v6, :cond_1

    .line 431
    return-object v6

    .line 435
    .end local v6    # "paint":Lorg/apache/poi/sl/usermodel/PaintStyle;
    :cond_1
    invoke-direct {p0, v5}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getTablePartStyle(Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    move-result-object v6

    .line 436
    .local v6, "tps":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;->isSetTcStyle()Z

    move-result v7

    if-nez v7, :cond_3

    .line 437
    :cond_2
    sget-object v7, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;->wholeTbl:Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;

    invoke-direct {p0, v7}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getTablePartStyle(Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    move-result-object v6

    .line 438
    if-eqz v6, :cond_7

    invoke-interface {v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;->isSetTcStyle()Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    .line 443
    :cond_3
    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSlideShow()Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    move-result-object v7

    .line 444
    .local v7, "slideShow":Lorg/apache/poi/xslf/usermodel/XMLSlideShow;
    invoke-interface {v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;->getTcStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleCellStyle;

    move-result-object v8

    .line 445
    .local v8, "tcStyle":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleCellStyle;
    invoke-interface {v8}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleCellStyle;->isSetFill()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 446
    invoke-interface {v8}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleCellStyle;->getFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    move-result-object v3

    goto :goto_1

    .line 447
    :cond_4
    invoke-interface {v8}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleCellStyle;->isSetFillRef()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 448
    invoke-interface {v8}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleCellStyle;->getFillRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    move-result-object v3

    .line 453
    :goto_1
    invoke-static {v3}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getFillDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;

    move-result-object v4

    .line 454
    if-eqz v4, :cond_5

    .line 455
    invoke-virtual {v7}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v9

    invoke-static {v4, v5, v9, v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectPaint(Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Z)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v9

    .line 456
    .local v9, "paint":Lorg/apache/poi/sl/usermodel/PaintStyle;
    if-eqz v9, :cond_5

    .line 457
    return-object v9

    .line 461
    .end local v9    # "paint":Lorg/apache/poi/sl/usermodel/PaintStyle;
    :cond_5
    return-object v5

    .line 450
    :cond_6
    return-object v5

    .line 439
    .end local v7    # "slideShow":Lorg/apache/poi/xslf/usermodel/XMLSlideShow;
    .end local v8    # "tcStyle":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleCellStyle;
    :cond_7
    :goto_2
    return-object v5
.end method

.method public getGridSpan()I
    .locals 2

    .line 523
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;

    move-result-object v0

    .line 524
    .local v0, "c":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;->isSetGridSpan()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;->getGridSpan()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public getRowSpan()I
    .locals 2

    .line 533
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;

    move-result-object v0

    .line 534
    .local v0, "c":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;->isSetRowSpan()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;->getRowSpan()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method protected getShapeProperties()Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    .line 702
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCellProperties(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    move-result-object v0

    return-object v0
.end method

.method protected getTextBody(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
    .locals 2
    .param p1, "create"    # Z

    .line 88
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;

    move-result-object v0

    .line 89
    .local v0, "cell":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v1

    .line 90
    .local v1, "txBody":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 91
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;->addNewTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v1

    .line 92
    invoke-static {v1}, Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;->initTextBody(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;)V

    .line 94
    :cond_0
    return-object v1
.end method

.method public getTextDirection()Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;
    .locals 3

    .line 606
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCellProperties(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    move-result-object v0

    .line 609
    .local v0, "cellProps":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->isSetVert()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 610
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->getVert()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    move-result-object v1

    .local v1, "orientation":Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;
    goto :goto_0

    .line 612
    .end local v1    # "orientation":Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;
    :cond_0
    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType;->HORZ:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    .line 615
    .restart local v1    # "orientation":Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;
    :goto_0
    invoke-virtual {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 618
    sget-object v2, Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;->HORIZONTAL:Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;

    return-object v2

    .line 627
    :pswitch_0
    sget-object v2, Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;->STACKED:Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;

    return-object v2

    .line 624
    :pswitch_1
    sget-object v2, Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;->VERTICAL_270:Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;

    return-object v2

    .line 622
    :pswitch_2
    sget-object v2, Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;->VERTICAL:Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getVerticalAlignment()Lorg/apache/poi/sl/usermodel/VerticalAlignment;
    .locals 5

    .line 559
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCellProperties(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    move-result-object v0

    .line 561
    .local v0, "cellProps":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;
    sget-object v1, Lorg/apache/poi/sl/usermodel/VerticalAlignment;->TOP:Lorg/apache/poi/sl/usermodel/VerticalAlignment;

    .line 562
    .local v1, "align":Lorg/apache/poi/sl/usermodel/VerticalAlignment;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->isSetAnchor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 563
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->getAnchor()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;->intValue()I

    move-result v2

    .line 564
    .local v2, "ival":I
    invoke-static {}, Lorg/apache/poi/sl/usermodel/VerticalAlignment;->values()[Lorg/apache/poi/sl/usermodel/VerticalAlignment;

    move-result-object v3

    add-int/lit8 v4, v2, -0x1

    aget-object v1, v3, v4

    .line 566
    .end local v2    # "ival":I
    :cond_0
    return-object v1
.end method

.method protected getXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
    .locals 6

    .line 644
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    .line 645
    .local v0, "anc":Ljava/awt/geom/Rectangle2D;
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v1

    .line 646
    .local v1, "xfrm":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v2

    .line 647
    .local v2, "off":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;
    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v3

    int-to-long v3, v3

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setX(J)V

    .line 648
    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v3

    int-to-long v3, v3

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setY(J)V

    .line 649
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v3

    .line 650
    .local v3, "size":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v4

    int-to-long v4, v4

    invoke-interface {v3, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    .line 651
    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v4

    int-to-long v4, v4

    invoke-interface {v3, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    .line 652
    return-object v1
.end method

.method public isMerged()Z
    .locals 2

    .line 688
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;

    move-result-object v0

    .line 689
    .local v0, "c":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;->isSetHMerge()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;->getHMerge()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;->isSetVMerge()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;->getVMerge()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected newTextParagraph(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;)Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextParagraph;
    .locals 1
    .param p1, "p"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    .line 697
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextParagraph;

    invoke-direct {v0, p0, p1, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextParagraph;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTableCell;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;Lorg/apache/poi/xslf/usermodel/XSLFTextShape;)V

    return-object v0
.end method

.method protected bridge synthetic newTextParagraph(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;)Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;
    .locals 1
    .param p1, "x0"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    .line 71
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->newTextParagraph(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;)Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextParagraph;

    move-result-object v0

    return-object v0
.end method

.method public removeBorder(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)V
    .locals 3
    .param p1, "edge"    # Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    .line 168
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCellProperties(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    move-result-object v0

    .line 169
    .local v0, "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;
    if-nez v0, :cond_0

    .line 170
    return-void

    .line 172
    :cond_0
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$2;->$SwitchMap$org$apache$poi$sl$usermodel$TableCell$BorderEdge:[I

    invoke-virtual {p1}, Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 189
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->isSetLnR()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 190
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->unsetLnB()V

    goto :goto_0

    .line 194
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 184
    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->isSetLnT()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 185
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->unsetLnT()V

    goto :goto_0

    .line 179
    :cond_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->isSetLnL()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 180
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->unsetLnL()V

    goto :goto_0

    .line 174
    :cond_4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->isSetLnB()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 175
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->unsetLnB()V

    .line 196
    :cond_5
    :goto_0
    return-void
.end method

.method public setAnchor(Ljava/awt/geom/Rectangle2D;)V
    .locals 1
    .param p1, "anchor"    # Ljava/awt/geom/Rectangle2D;

    .line 663
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->anchor:Ljava/awt/geom/Rectangle2D;

    if-nez v0, :cond_0

    .line 664
    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/geom/Rectangle2D;

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->anchor:Ljava/awt/geom/Rectangle2D;

    goto :goto_0

    .line 666
    :cond_0
    invoke-virtual {v0, p1}, Ljava/awt/geom/Rectangle2D;->setRect(Ljava/awt/geom/Rectangle2D;)V

    .line 668
    :goto_0
    return-void
.end method

.method public setBorderCap(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;)V
    .locals 2
    .param p1, "edge"    # Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;
    .param p2, "cap"    # Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    .line 375
    if-eqz p2, :cond_0

    .line 379
    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->setBorderDefaults(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    .line 380
    .local v0, "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    iget v1, p2, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;->ooxmlId:I

    invoke-static {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineCap$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineCap$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setCap(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineCap$Enum;)V

    .line 381
    return-void

    .line 376
    .end local v0    # "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LineCap need to be specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBorderColor(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Ljava/awt/Color;)V
    .locals 5
    .param p1, "edge"    # Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;
    .param p2, "color"    # Ljava/awt/Color;

    .line 306
    if-eqz p2, :cond_0

    .line 310
    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->setBorderDefaults(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    .line 311
    .local v0, "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v1

    .line 312
    .local v1, "fill":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    new-instance v2, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v3

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lorg/apache/poi/xslf/usermodel/XSLFColor;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;)V

    .line 313
    .local v2, "c":Lorg/apache/poi/xslf/usermodel/XSLFColor;
    invoke-virtual {v2, p2}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->setColor(Ljava/awt/Color;)V

    .line 314
    return-void

    .line 307
    .end local v0    # "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    .end local v1    # "fill":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    .end local v2    # "c":Lorg/apache/poi/xslf/usermodel/XSLFColor;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Colors need to be specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBorderCompound(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;)V
    .locals 2
    .param p1, "edge"    # Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;
    .param p2, "compound"    # Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    .line 338
    if-eqz p2, :cond_0

    .line 342
    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->setBorderDefaults(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    .line 343
    .local v0, "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    iget v1, p2, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;->ooxmlId:I

    invoke-static {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setCmpd(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;)V

    .line 344
    return-void

    .line 339
    .end local v0    # "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LineCompound need to be specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBorderDash(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;)V
    .locals 3
    .param p1, "edge"    # Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;
    .param p2, "dash"    # Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    .line 357
    if-eqz p2, :cond_0

    .line 361
    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->setBorderDefaults(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    .line 362
    .local v0, "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getPrstDash()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;

    move-result-object v1

    iget v2, p2, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->ooxmlId:I

    invoke-static {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;)V

    .line 363
    return-void

    .line 358
    .end local v0    # "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LineDash need to be specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBorderStyle(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Lorg/apache/poi/sl/usermodel/StrokeStyle;)V
    .locals 5
    .param p1, "edge"    # Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;
    .param p2, "style"    # Lorg/apache/poi/sl/usermodel/StrokeStyle;

    .line 231
    if-eqz p2, :cond_3

    .line 235
    invoke-interface {p2}, Lorg/apache/poi/sl/usermodel/StrokeStyle;->getLineCap()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    move-result-object v0

    .line 236
    .local v0, "cap":Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;
    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->setBorderCap(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;)V

    .line 240
    :cond_0
    invoke-interface {p2}, Lorg/apache/poi/sl/usermodel/StrokeStyle;->getLineCompound()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    move-result-object v1

    .line 241
    .local v1, "compound":Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;
    if-eqz v1, :cond_1

    .line 242
    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->setBorderCompound(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;)V

    .line 245
    :cond_1
    invoke-interface {p2}, Lorg/apache/poi/sl/usermodel/StrokeStyle;->getLineDash()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    move-result-object v2

    .line 246
    .local v2, "dash":Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;
    if-eqz v2, :cond_2

    .line 247
    invoke-virtual {p0, p1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->setBorderDash(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;)V

    .line 250
    :cond_2
    invoke-interface {p2}, Lorg/apache/poi/sl/usermodel/StrokeStyle;->getLineWidth()D

    move-result-wide v3

    .line 251
    .local v3, "width":D
    invoke-virtual {p0, p1, v3, v4}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->setBorderWidth(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;D)V

    .line 252
    return-void

    .line 232
    .end local v0    # "cap":Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;
    .end local v1    # "compound":Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;
    .end local v2    # "dash":Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;
    .end local v3    # "width":D
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "StrokeStyle needs to be specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBorderWidth(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;D)V
    .locals 2
    .param p1, "edge"    # Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;
    .param p2, "width"    # D

    .line 261
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCTLine(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    .line 262
    .local v0, "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    invoke-static {p2, p3}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setW(I)V

    .line 263
    return-void
.end method

.method public setBottomInset(D)V
    .locals 2
    .param p1, "margin"    # D

    .line 138
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCellProperties(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    move-result-object v0

    .line 139
    .local v0, "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;
    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->setMarB(I)V

    .line 140
    return-void
.end method

.method public setFillColor(Ljava/awt/Color;)V
    .locals 5
    .param p1, "color"    # Ljava/awt/Color;

    .line 393
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCellProperties(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    move-result-object v0

    .line 394
    .local v0, "spPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;
    if-nez p1, :cond_0

    .line 395
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->isSetSolidFill()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 396
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->unsetSolidFill()V

    goto :goto_1

    .line 399
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->isSetSolidFill()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v1

    .line 400
    .local v1, "fill":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    :goto_0
    new-instance v2, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v3

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lorg/apache/poi/xslf/usermodel/XSLFColor;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;)V

    .line 401
    .local v2, "c":Lorg/apache/poi/xslf/usermodel/XSLFColor;
    invoke-virtual {v2, p1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->setColor(Ljava/awt/Color;)V

    .line 403
    .end local v1    # "fill":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    .end local v2    # "c":Lorg/apache/poi/xslf/usermodel/XSLFColor;
    :cond_2
    :goto_1
    return-void
.end method

.method setGridSpan(I)V
    .locals 1
    .param p1, "gridSpan_"    # I

    .line 518
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;->setGridSpan(I)V

    .line 519
    return-void
.end method

.method setHMerge(Z)V
    .locals 1
    .param p1, "merge_"    # Z

    .line 538
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;->setHMerge(Z)V

    .line 539
    return-void
.end method

.method public setLeftInset(D)V
    .locals 2
    .param p1, "margin"    # D

    .line 120
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCellProperties(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    move-result-object v0

    .line 121
    .local v0, "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;
    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->setMarL(I)V

    .line 122
    return-void
.end method

.method public setRightInset(D)V
    .locals 2
    .param p1, "margin"    # D

    .line 126
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCellProperties(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    move-result-object v0

    .line 127
    .local v0, "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;
    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->setMarR(I)V

    .line 128
    return-void
.end method

.method setRowColIndex(II)V
    .locals 0
    .param p1, "row"    # I
    .param p2, "col"    # I

    .line 636
    iput p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->row:I

    .line 637
    iput p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->col:I

    .line 638
    return-void
.end method

.method setRowSpan(I)V
    .locals 1
    .param p1, "rowSpan_"    # I

    .line 528
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;->setRowSpan(I)V

    .line 529
    return-void
.end method

.method public setTextDirection(Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;)V
    .locals 4
    .param p1, "orientation"    # Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;

    .line 574
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCellProperties(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    move-result-object v0

    .line 575
    .local v0, "cellProps":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;
    if-nez p1, :cond_0

    .line 576
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->isSetVert()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 577
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->unsetVert()V

    goto :goto_1

    .line 581
    :cond_0
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$2;->$SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextDirection:[I

    invoke-virtual {p1}, Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 584
    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType;->HORZ:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    .line 585
    .local v1, "vt":Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;
    goto :goto_0

    .line 581
    .end local v1    # "vt":Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;
    :cond_1
    move-object v1, v3

    .line 593
    .restart local v1    # "vt":Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;
    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType;->WORD_ART_VERT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    goto :goto_0

    .line 581
    .end local v1    # "vt":Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;
    :cond_2
    move-object v1, v3

    .line 590
    .restart local v1    # "vt":Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;
    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType;->VERT_270:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    .line 591
    goto :goto_0

    .line 581
    .end local v1    # "vt":Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;
    :cond_3
    move-object v1, v3

    .line 587
    .restart local v1    # "vt":Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;
    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType;->VERT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    .line 588
    nop

    .line 597
    :goto_0
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->setVert(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;)V

    .line 599
    .end local v1    # "vt":Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;
    :cond_4
    :goto_1
    return-void
.end method

.method public setTopInset(D)V
    .locals 2
    .param p1, "margin"    # D

    .line 132
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCellProperties(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    move-result-object v0

    .line 133
    .local v0, "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;
    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->setMarT(I)V

    .line 134
    return-void
.end method

.method setVMerge(Z)V
    .locals 1
    .param p1, "merge_"    # Z

    .line 542
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;->setVMerge(Z)V

    .line 543
    return-void
.end method

.method public setVerticalAlignment(Lorg/apache/poi/sl/usermodel/VerticalAlignment;)V
    .locals 3
    .param p1, "anchor"    # Lorg/apache/poi/sl/usermodel/VerticalAlignment;

    .line 547
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCellProperties(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    move-result-object v1

    .line 548
    .local v1, "cellProps":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;
    if-nez p1, :cond_0

    .line 549
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->isSetAnchor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 550
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->unsetAnchor()V

    goto :goto_0

    .line 553
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/sl/usermodel/VerticalAlignment;->ordinal()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->setAnchor(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;)V

    .line 555
    :cond_1
    :goto_0
    return-void
.end method
