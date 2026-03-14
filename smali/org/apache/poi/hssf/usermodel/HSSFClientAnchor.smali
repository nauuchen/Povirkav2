.class public final Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;
.super Lorg/apache/poi/hssf/usermodel/HSSFAnchor;
.source "HSSFClientAnchor.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/ClientAnchor;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final MAX_COL:I

.field public static final MAX_ROW:I


# instance fields
.field private _escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    nop

    .line 31
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result v0

    sput v0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->MAX_COL:I

    .line 32
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v0

    sput v0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->MAX_ROW:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(IIIISISI)V
    .locals 3
    .param p1, "dx1"    # I
    .param p2, "dy1"    # I
    .param p3, "dx2"    # I
    .param p4, "dy2"    # I
    .param p5, "col1"    # S
    .param p6, "row1"    # I
    .param p7, "col2"    # S
    .param p8, "row2"    # I

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;-><init>(IIII)V

    .line 66
    const/4 v0, 0x0

    const/16 v1, 0x3ff

    const-string v2, "dx1"

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    .line 67
    const-string v2, "dx2"

    invoke-direct {p0, p3, v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    .line 68
    const/16 v1, 0xff

    const-string v2, "dy1"

    invoke-direct {p0, p2, v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    .line 69
    const-string v2, "dy2"

    invoke-direct {p0, p4, v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    .line 70
    sget v1, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->MAX_COL:I

    const-string v2, "col1"

    invoke-direct {p0, p5, v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    .line 71
    const-string v2, "col2"

    invoke-direct {p0, p7, v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    .line 72
    sget v1, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->MAX_ROW:I

    const-string v2, "row1"

    invoke-direct {p0, p6, v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    .line 73
    const-string v2, "row2"

    invoke-direct {p0, p8, v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    .line 75
    invoke-static {p5, p7}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setCol1(S)V

    .line 76
    invoke-static {p5, p7}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setCol2(S)V

    .line 77
    invoke-static {p6, p8}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setRow1(I)V

    .line 78
    invoke-static {p6, p8}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setRow2(I)V

    .line 80
    const/4 v0, 0x1

    if-le p5, p7, :cond_0

    .line 81
    iput-boolean v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_isHorizontallyFlipped:Z

    .line 83
    :cond_0
    if-le p6, p8, :cond_1

    .line 84
    iput-boolean v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_isVerticallyFlipped:Z

    .line 86
    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ddf/EscherClientAnchorRecord;)V
    .locals 0
    .param p1, "escherClientAnchorRecord"    # Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    .line 36
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    .line 38
    return-void
.end method

.method private checkRange(IIILjava/lang/String;)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "minRange"    # I
    .param p3, "maxRange"    # I
    .param p4, "varName"    # Ljava/lang/String;

    .line 272
    if-lt p1, p2, :cond_0

    if-gt p1, p3, :cond_0

    .line 274
    return-void

    .line 273
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be between "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getRowHeightInPoints(Lorg/apache/poi/hssf/usermodel/HSSFSheet;I)F
    .locals 2
    .param p1, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p2, "rowNum"    # I

    .line 115
    invoke-virtual {p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v0

    .line 116
    .local v0, "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDefaultRowHeightInPoints()F

    move-result v1

    return v1

    .line 119
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getHeightInPoints()F

    move-result v1

    return v1
.end method

.method private static unsignedValue(S)I
    .locals 1
    .param p0, "s"    # S

    .line 283
    if-gez p0, :cond_0

    const/high16 v0, 0x10000

    add-int/2addr v0, p0

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method


# virtual methods
.method protected createEscherAnchor()V
    .locals 1

    .line 248
    new-instance v0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    .line 249
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 288
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 289
    return v0

    .line 290
    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    .line 291
    return v1

    .line 292
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 293
    return v0

    .line 294
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    .line 296
    .local v2, "anchor":Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getCol1()S

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getCol1()S

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getCol2()S

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getCol2()S

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDx1()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDx1()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDx2()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDx2()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDy1()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDy1()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDy2()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDy2()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow1()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow1()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow2()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow2()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getAnchorType()Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getAnchorType()Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    move-result-object v4

    if-ne v3, v4, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public getAnchorHeightInPoints(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)F
    .locals 8
    .param p1, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 95
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDy1()I

    move-result v0

    .line 96
    .local v0, "y1":I
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDy2()I

    move-result v1

    .line 97
    .local v1, "y2":I
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow1()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow2()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 98
    .local v2, "row1":I
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow1()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow2()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 100
    .local v3, "row2":I
    const/4 v4, 0x0

    .line 101
    .local v4, "points":F
    const/high16 v5, 0x43800000    # 256.0f

    if-ne v2, v3, :cond_0

    .line 102
    sub-int v6, v1, v0

    int-to-float v6, v6

    div-float/2addr v6, v5

    invoke-direct {p0, p1, v3}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRowHeightInPoints(Lorg/apache/poi/hssf/usermodel/HSSFSheet;I)F

    move-result v5

    mul-float v6, v6, v5

    .end local v4    # "points":F
    .local v6, "points":F
    goto :goto_1

    .line 104
    .end local v6    # "points":F
    .restart local v4    # "points":F
    :cond_0
    int-to-float v6, v0

    sub-float v6, v5, v6

    div-float/2addr v6, v5

    invoke-direct {p0, p1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRowHeightInPoints(Lorg/apache/poi/hssf/usermodel/HSSFSheet;I)F

    move-result v7

    mul-float v6, v6, v7

    add-float/2addr v4, v6

    .line 105
    add-int/lit8 v6, v2, 0x1

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_1

    .line 106
    invoke-direct {p0, p1, v6}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRowHeightInPoints(Lorg/apache/poi/hssf/usermodel/HSSFSheet;I)F

    move-result v7

    add-float/2addr v4, v7

    .line 105
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 108
    .end local v6    # "i":I
    :cond_1
    int-to-float v6, v1

    div-float/2addr v6, v5

    invoke-direct {p0, p1, v3}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRowHeightInPoints(Lorg/apache/poi/hssf/usermodel/HSSFSheet;I)F

    move-result v5

    mul-float v6, v6, v5

    add-float/2addr v6, v4

    .line 111
    .end local v4    # "points":F
    .local v6, "points":F
    :goto_1
    return v6
.end method

.method public getAnchorType()Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;
    .locals 1

    .line 258
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getFlag()S

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;->byId(I)Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    move-result-object v0

    return-object v0
.end method

.method public getCol1()S
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getCol1()S

    move-result v0

    return v0
.end method

.method public getCol2()S
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getCol2()S

    move-result v0

    return v0
.end method

.method public getDx1()I
    .locals 1

    .line 309
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getDx1()S

    move-result v0

    return v0
.end method

.method public getDx2()I
    .locals 1

    .line 339
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getDx2()S

    move-result v0

    return v0
.end method

.method public getDy1()I
    .locals 1

    .line 319
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getDy1()S

    move-result v0

    return v0
.end method

.method public getDy2()I
    .locals 1

    .line 329
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getDy2()S

    move-result v0

    return v0
.end method

.method protected getEscherAnchor()Lorg/apache/poi/ddf/EscherRecord;
    .locals 1

    .line 243
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    return-object v0
.end method

.method public getRow1()I
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getRow1()S

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->unsignedValue(S)I

    move-result v0

    return v0
.end method

.method public getRow2()I
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getRow2()S

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->unsignedValue(S)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 303
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "hashCode not designed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public isHorizontallyFlipped()Z
    .locals 1

    .line 234
    iget-boolean v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_isHorizontallyFlipped:Z

    return v0
.end method

.method public isVerticallyFlipped()Z
    .locals 1

    .line 238
    iget-boolean v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_isVerticallyFlipped:Z

    return v0
.end method

.method public setAnchor(SIIISIII)V
    .locals 4
    .param p1, "col1"    # S
    .param p2, "row1"    # I
    .param p3, "x1"    # I
    .param p4, "y1"    # I
    .param p5, "col2"    # S
    .param p6, "row2"    # I
    .param p7, "x2"    # I
    .param p8, "y2"    # I

    .line 214
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDx1()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3ff

    const-string v3, "dx1"

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDx2()I

    move-result v0

    const-string v3, "dx2"

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDy1()I

    move-result v0

    const/16 v2, 0xff

    const-string v3, "dy1"

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDy2()I

    move-result v0

    const-string v3, "dy2"

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getCol1()S

    move-result v0

    sget v2, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->MAX_COL:I

    const-string v3, "col1"

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getCol2()S

    move-result v0

    const-string v3, "col2"

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow1()I

    move-result v0

    sget v2, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->MAX_ROW:I

    const-string v3, "row1"

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow2()I

    move-result v0

    const-string v3, "row2"

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    .line 223
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setCol1(S)V

    .line 224
    invoke-virtual {p0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setRow1(I)V

    .line 225
    invoke-virtual {p0, p3}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setDx1(I)V

    .line 226
    invoke-virtual {p0, p4}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setDy1(I)V

    .line 227
    invoke-virtual {p0, p5}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setCol2(S)V

    .line 228
    invoke-virtual {p0, p6}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setRow2(I)V

    .line 229
    invoke-virtual {p0, p7}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setDx2(I)V

    .line 230
    invoke-virtual {p0, p8}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setDy2(I)V

    .line 231
    return-void
.end method

.method public setAnchorType(Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;)V
    .locals 2
    .param p1, "anchorType"    # Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    .line 268
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    iget-short v1, p1, Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;->value:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setFlag(S)V

    .line 269
    return-void
.end method

.method public setCol1(I)V
    .locals 1
    .param p1, "col1"    # I

    .line 141
    int-to-short v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setCol1(S)V

    .line 142
    return-void
.end method

.method public setCol1(S)V
    .locals 3
    .param p1, "col1"    # S

    .line 133
    sget v0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->MAX_COL:I

    const/4 v1, 0x0

    const-string v2, "col1"

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    .line 134
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setCol1(S)V

    .line 135
    return-void
.end method

.method public setCol2(I)V
    .locals 1
    .param p1, "col2"    # I

    .line 163
    int-to-short v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setCol2(S)V

    .line 164
    return-void
.end method

.method public setCol2(S)V
    .locals 3
    .param p1, "col2"    # S

    .line 155
    sget v0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->MAX_COL:I

    const/4 v1, 0x0

    const-string v2, "col2"

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    .line 156
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setCol2(S)V

    .line 157
    return-void
.end method

.method public setDx1(I)V
    .locals 2
    .param p1, "dx1"    # I

    .line 314
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->shortValue()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setDx1(S)V

    .line 315
    return-void
.end method

.method public setDx2(I)V
    .locals 2
    .param p1, "dx2"    # I

    .line 344
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->shortValue()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setDx2(S)V

    .line 345
    return-void
.end method

.method public setDy1(I)V
    .locals 2
    .param p1, "dy1"    # I

    .line 324
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->shortValue()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setDy1(S)V

    .line 325
    return-void
.end method

.method public setDy2(I)V
    .locals 2
    .param p1, "dy2"    # I

    .line 334
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->shortValue()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setDy2(S)V

    .line 335
    return-void
.end method

.method public setRow1(I)V
    .locals 3
    .param p1, "row1"    # I

    .line 177
    sget v0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->MAX_ROW:I

    const/4 v1, 0x0

    const-string v2, "row1"

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    .line 178
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->shortValue()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setRow1(S)V

    .line 179
    return-void
.end method

.method public setRow2(I)V
    .locals 3
    .param p1, "row2"    # I

    .line 192
    sget v0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->MAX_ROW:I

    const/4 v1, 0x0

    const-string v2, "row2"

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    .line 193
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->shortValue()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setRow2(S)V

    .line 194
    return-void
.end method
