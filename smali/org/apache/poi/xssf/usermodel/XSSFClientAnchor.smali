.class public Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;
.super Lorg/apache/poi/xssf/usermodel/XSSFAnchor;
.source "XSSFClientAnchor.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/ClientAnchor;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMPTY_MARKER:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;


# instance fields
.field private anchorType:Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

.field private cell1:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

.field private cell2:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

.field private position:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

.field private sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

.field private size:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    nop

    .line 43
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->EMPTY_MARKER:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 80
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;-><init>(IIIIIIII)V

    .line 81
    return-void
.end method

.method public constructor <init>(IIIIIIII)V
    .locals 3
    .param p1, "dx1"    # I
    .param p2, "dy1"    # I
    .param p3, "dx2"    # I
    .param p4, "dy2"    # I
    .param p5, "col1"    # I
    .param p6, "row1"    # I
    .param p7, "col2"    # I
    .param p8, "row2"    # I

    .line 97
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFAnchor;-><init>()V

    .line 98
    sget-object v0, Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;->MOVE_AND_RESIZE:Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->anchorType:Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    .line 99
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell1:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    .line 100
    invoke-interface {v0, p5}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->setCol(I)V

    .line 101
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell1:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->setColOff(J)V

    .line 102
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell1:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    invoke-interface {v0, p6}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->setRow(I)V

    .line 103
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell1:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    int-to-long v1, p2

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->setRowOff(J)V

    .line 104
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell2:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    .line 105
    invoke-interface {v0, p7}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->setCol(I)V

    .line 106
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell2:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    int-to-long v1, p3

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->setColOff(J)V

    .line 107
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell2:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    invoke-interface {v0, p8}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->setRow(I)V

    .line 108
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell2:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    int-to-long v1, p4

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->setRowOff(J)V

    .line 109
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;)V
    .locals 1
    .param p1, "sheet"    # Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .param p2, "position"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;
    .param p3, "size"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    .line 147
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFAnchor;-><init>()V

    .line 148
    sget-object v0, Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;->DONT_MOVE_AND_RESIZE:Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->anchorType:Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    .line 149
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 150
    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->position:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    .line 151
    iput-object p3, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->size:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    .line 155
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;)V
    .locals 1
    .param p1, "sheet"    # Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .param p2, "cell1"    # Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;
    .param p3, "size"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    .line 131
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFAnchor;-><init>()V

    .line 132
    sget-object v0, Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;->MOVE_DONT_RESIZE:Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->anchorType:Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    .line 133
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 134
    iput-object p3, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->size:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    .line 135
    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell1:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    .line 137
    return-void
.end method

.method protected constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;)V
    .locals 1
    .param p1, "cell1"    # Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;
    .param p2, "cell2"    # Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    .line 117
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFAnchor;-><init>()V

    .line 118
    sget-object v0, Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;->MOVE_AND_RESIZE:Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->anchorType:Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    .line 119
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell1:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    .line 120
    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell2:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    .line 121
    return-void
.end method

.method private calcCell(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;JJ)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;
    .locals 14
    .param p1, "cell"    # Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;
    .param p2, "w"    # J
    .param p4, "h"    # J

    .line 164
    move-object v0, p0

    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v1

    .line 166
    .local v1, "c2":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->getRow()I

    move-result v2

    .line 167
    .local v2, "r":I
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->getCol()I

    move-result v3

    .line 169
    .local v3, "c":I
    iget-object v4, v0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v4, v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getColumnWidth(I)I

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/Units;->columnWidthToEMU(I)I

    move-result v4

    .line 172
    .local v4, "cw":I
    int-to-long v5, v4

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->getColOff()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 174
    .local v5, "wPos":J
    :goto_0
    cmp-long v7, v5, p2

    if-gez v7, :cond_0

    .line 175
    add-int/lit8 v3, v3, 0x1

    .line 176
    iget-object v7, v0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v7, v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getColumnWidth(I)I

    move-result v7

    invoke-static {v7}, Lorg/apache/poi/util/Units;->columnWidthToEMU(I)I

    move-result v4

    .line 177
    int-to-long v7, v4

    add-long/2addr v5, v7

    goto :goto_0

    .line 180
    :cond_0
    invoke-interface {v1, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->setCol(I)V

    .line 181
    int-to-long v7, v4

    sub-long v9, v5, p2

    sub-long/2addr v7, v9

    invoke-interface {v1, v7, v8}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->setColOff(J)V

    .line 183
    iget-object v7, v0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-static {v7, v2}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRowHeight(Lorg/apache/poi/xssf/usermodel/XSSFSheet;I)F

    move-result v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v7

    .line 185
    .local v7, "rh":I
    int-to-long v8, v7

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->getRowOff()J

    move-result-wide v10

    sub-long/2addr v8, v10

    .line 187
    .local v8, "hPos":J
    :goto_1
    cmp-long v10, v8, p4

    if-gez v10, :cond_1

    .line 188
    add-int/lit8 v2, v2, 0x1

    .line 189
    iget-object v10, v0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-static {v10, v2}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRowHeight(Lorg/apache/poi/xssf/usermodel/XSSFSheet;I)F

    move-result v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v7

    .line 190
    int-to-long v10, v7

    add-long/2addr v8, v10

    goto :goto_1

    .line 193
    :cond_1
    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->setRow(I)V

    .line 194
    int-to-long v10, v7

    sub-long v12, v8, p4

    sub-long/2addr v10, v12

    invoke-interface {v1, v10, v11}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->setRowOff(J)V

    .line 196
    return-object v1
.end method

.method private getCell1()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;
    .locals 7

    .line 210
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell1:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->EMPTY_MARKER:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->position:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->getX()J

    move-result-wide v3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->position:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->getY()J

    move-result-wide v5

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->calcCell(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;JJ)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getCell2()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;
    .locals 7

    .line 214
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell2:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCell1()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->size:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->getCx()J

    move-result-wide v3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->size:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->getCy()J

    move-result-wide v5

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->calcCell(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;JJ)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static getRowHeight(Lorg/apache/poi/xssf/usermodel/XSSFSheet;I)F
    .locals 2
    .param p0, "sheet"    # Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .param p1, "row"    # I

    .line 205
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v0

    .line 206
    .local v0, "r":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultRowHeightInPoints()F

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getHeightInPoints()F

    move-result v1

    :goto_0
    return v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 315
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    if-nez v1, :cond_0

    goto :goto_0

    .line 317
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    .line 318
    .local v1, "anchor":Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDx1()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDx1()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDx2()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDx2()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDy1()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDy1()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDy2()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDy2()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCol1()S

    move-result v2

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCol1()S

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCol2()S

    move-result v2

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCol2()S

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRow1()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRow1()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRow2()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRow2()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 315
    .end local v1    # "anchor":Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;
    :cond_2
    :goto_0
    return v0
.end method

.method public getAnchorType()Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;
    .locals 1

    .line 422
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->anchorType:Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    return-object v0
.end method

.method public getCol1()S
    .locals 1

    .line 218
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCell1()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->getCol()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getCol2()S
    .locals 1

    .line 230
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCell2()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->getCol()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getDx1()I
    .locals 2

    .line 266
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCell1()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->getColOff()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public getDx2()I
    .locals 2

    .line 302
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCell2()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->getColOff()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public getDy1()I
    .locals 2

    .line 278
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCell1()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->getRowOff()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public getDy2()I
    .locals 2

    .line 290
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCell2()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->getRowOff()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public getFrom()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 347
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCell1()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;
    .locals 1

    .line 373
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->position:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    return-object v0
.end method

.method public getRow1()I
    .locals 1

    .line 242
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCell1()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->getRow()I

    move-result v0

    return v0
.end method

.method public getRow2()I
    .locals 1

    .line 254
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCell2()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->getRow()I

    move-result v0

    return v0
.end method

.method public getSize()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
    .locals 1

    .line 391
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->size:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    return-object v0
.end method

.method public getTo()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 361
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCell2()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 331
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "hashCode not designed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public isSet()Z
    .locals 3

    .line 426
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCell1()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v0

    .line 427
    .local v0, "c1":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCell2()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v1

    .line 428
    .local v1, "c2":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->getCol()I

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->getCol()I

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->getRow()I

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->getRow()I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method public setAnchorType(Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;)V
    .locals 0
    .param p1, "anchorType"    # Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    .line 411
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->anchorType:Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    .line 412
    return-void
.end method

.method public setCol1(I)V
    .locals 1
    .param p1, "col1"    # I

    .line 226
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell1:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->setCol(I)V

    .line 227
    return-void
.end method

.method public setCol2(I)V
    .locals 1
    .param p1, "col2"    # I

    .line 238
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell2:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->setCol(I)V

    .line 239
    return-void
.end method

.method public setDx1(I)V
    .locals 3
    .param p1, "dx1"    # I

    .line 274
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell1:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->setColOff(J)V

    .line 275
    return-void
.end method

.method public setDx2(I)V
    .locals 3
    .param p1, "dx2"    # I

    .line 310
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell2:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->setColOff(J)V

    .line 311
    return-void
.end method

.method public setDy1(I)V
    .locals 3
    .param p1, "dy1"    # I

    .line 286
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell1:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->setRowOff(J)V

    .line 287
    return-void
.end method

.method public setDy2(I)V
    .locals 3
    .param p1, "dy2"    # I

    .line 298
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell2:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->setRowOff(J)V

    .line 299
    return-void
.end method

.method protected setFrom(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;)V
    .locals 0
    .param p1, "from"    # Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    .line 351
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell1:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    .line 352
    return-void
.end method

.method public setPosition(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;)V
    .locals 0
    .param p1, "position"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    .line 382
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->position:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    .line 383
    return-void
.end method

.method public setRow1(I)V
    .locals 1
    .param p1, "row1"    # I

    .line 250
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell1:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->setRow(I)V

    .line 251
    return-void
.end method

.method public setRow2(I)V
    .locals 1
    .param p1, "row2"    # I

    .line 262
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell2:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->setRow(I)V

    .line 263
    return-void
.end method

.method public setSize(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;)V
    .locals 0
    .param p1, "size"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    .line 400
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->size:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    .line 401
    return-void
.end method

.method protected setTo(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;)V
    .locals 0
    .param p1, "to"    # Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    .line 365
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->cell2:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    .line 366
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "from : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCell1()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCell2()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
