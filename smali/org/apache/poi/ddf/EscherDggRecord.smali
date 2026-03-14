.class public final Lorg/apache/poi/ddf/EscherDggRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "EscherDggRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;
    }
.end annotation


# static fields
.field public static final RECORD_DESCRIPTION:Ljava/lang/String; = "MsofbtDgg"

.field public static final RECORD_ID:S = -0xffas


# instance fields
.field private field_1_shapeIdMax:I

.field private field_3_numShapesSaved:I

.field private field_4_drawingsSaved:I

.field private final field_5_fileIdClusters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;",
            ">;"
        }
    .end annotation
.end field

.field private maxDgId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    .line 45
    return-void
.end method

.method private sortCluster()V
    .locals 2

    .line 263
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    new-instance v1, Lorg/apache/poi/ddf/EscherDggRecord$1;

    invoke-direct {v1, p0}, Lorg/apache/poi/ddf/EscherDggRecord$1;-><init>(Lorg/apache/poi/ddf/EscherDggRecord;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 271
    return-void
.end method


# virtual methods
.method public addCluster(II)Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;
    .locals 1
    .param p1, "dgId"    # I
    .param p2, "numShapedUsed"    # I

    .line 237
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/ddf/EscherDggRecord;->addCluster(IIZ)Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    move-result-object v0

    return-object v0
.end method

.method public addCluster(IIZ)Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;
    .locals 2
    .param p1, "dgId"    # I
    .param p2, "numShapedUsed"    # I
    .param p3, "sort"    # Z

    .line 251
    new-instance v0, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;-><init>(II)V

    .line 252
    .local v0, "ficNew":Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;
    iget-object v1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    iget v1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->maxDgId:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->maxDgId:I

    .line 255
    if-eqz p3, :cond_0

    .line 256
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->sortCluster()V

    .line 259
    :cond_0
    return-object v0
.end method

.method public allocateShapeId(Lorg/apache/poi/ddf/EscherDgRecord;Z)I
    .locals 7
    .param p1, "dg"    # Lorg/apache/poi/ddf/EscherDgRecord;
    .param p2, "sort"    # Z

    .line 297
    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherDgRecord;->getDrawingGroupId()S

    move-result v0

    .line 298
    .local v0, "drawingGroupId":S
    iget v1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_3_numShapesSaved:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_3_numShapesSaved:I

    .line 303
    const/4 v1, 0x0

    .line 304
    .local v1, "ficAdd":Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;
    const/4 v2, 0x1

    .line 305
    .local v2, "index":I
    iget-object v3, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    .line 306
    .local v4, "fic":Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;
    invoke-virtual {v4}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getDrawingGroupId()I

    move-result v5

    if-ne v5, v0, :cond_0

    invoke-virtual {v4}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getNumShapeIdsUsed()I

    move-result v5

    const/16 v6, 0x400

    if-ge v5, v6, :cond_0

    .line 308
    move-object v1, v4

    .line 309
    goto :goto_1

    .line 311
    :cond_0
    nop

    .end local v4    # "fic":Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 314
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 315
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, p2}, Lorg/apache/poi/ddf/EscherDggRecord;->addCluster(IIZ)Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    move-result-object v1

    .line 316
    iget v3, p0, Lorg/apache/poi/ddf/EscherDggRecord;->maxDgId:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lorg/apache/poi/ddf/EscherDggRecord;->maxDgId:I

    .line 319
    :cond_2
    mul-int/lit16 v3, v2, 0x400

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getNumShapeIdsUsed()I

    move-result v4

    add-int/2addr v3, v4

    .line 320
    .local v3, "shapeId":I
    invoke-static {v1}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->access$000(Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;)V

    .line 322
    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherDgRecord;->getNumShapes()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Lorg/apache/poi/ddf/EscherDgRecord;->setNumShapes(I)V

    .line 323
    invoke-virtual {p1, v3}, Lorg/apache/poi/ddf/EscherDgRecord;->setLastMSOSPID(I)V

    .line 324
    iget v4, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_1_shapeIdMax:I

    add-int/lit8 v5, v3, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_1_shapeIdMax:I

    .line 326
    return v3
.end method

.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 9
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "recordFactory"    # Lorg/apache/poi/ddf/EscherRecordFactory;

    .line 69
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherDggRecord;->readHeader([BI)I

    move-result v0

    .line 70
    .local v0, "bytesRemaining":I
    add-int/lit8 v1, p2, 0x8

    .line 71
    .local v1, "pos":I
    const/4 v2, 0x0

    .line 72
    .local v2, "size":I
    add-int v3, v1, v2

    invoke-static {p1, v3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v3

    iput v3, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_1_shapeIdMax:I

    add-int/lit8 v2, v2, 0x4

    .line 74
    add-int/lit8 v2, v2, 0x4

    .line 75
    add-int v3, v1, v2

    invoke-static {p1, v3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v3

    iput v3, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_3_numShapesSaved:I

    add-int/lit8 v2, v2, 0x4

    .line 76
    add-int v3, v1, v2

    invoke-static {p1, v3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v3

    iput v3, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_4_drawingsSaved:I

    add-int/lit8 v2, v2, 0x4

    .line 78
    iget-object v3, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 80
    sub-int v3, v0, v2

    div-int/lit8 v3, v3, 0x8

    .line 82
    .local v3, "numIdClusters":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 83
    add-int v5, v1, v2

    invoke-static {p1, v5}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v5

    .line 84
    .local v5, "drawingGroupId":I
    add-int v6, v1, v2

    add-int/lit8 v6, v6, 0x4

    invoke-static {p1, v6}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v6

    .line 85
    .local v6, "numShapeIdsUsed":I
    new-instance v7, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    invoke-direct {v7, v5, v6}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;-><init>(II)V

    .line 86
    .local v7, "fic":Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;
    iget-object v8, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget v8, p0, Lorg/apache/poi/ddf/EscherDggRecord;->maxDgId:I

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Lorg/apache/poi/ddf/EscherDggRecord;->maxDgId:I

    .line 88
    nop

    .end local v5    # "drawingGroupId":I
    .end local v6    # "numShapeIdsUsed":I
    .end local v7    # "fic":Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;
    add-int/lit8 v2, v2, 0x8

    .line 82
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 90
    .end local v4    # "i":I
    :cond_0
    sub-int/2addr v0, v2

    .line 91
    if-nez v0, :cond_1

    .line 94
    add-int/lit8 v4, v2, 0x8

    return v4

    .line 92
    :cond_1
    new-instance v4, Lorg/apache/poi/util/RecordFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expecting no remaining data but got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " byte(s)."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public findNewDrawingGroupId()S
    .locals 5

    .line 279
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 280
    .local v0, "bs":Ljava/util/BitSet;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 281
    iget-object v2, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    .line 282
    .local v3, "fic":Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;
    invoke-virtual {v3}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getDrawingGroupId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .end local v3    # "fic":Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;
    goto :goto_0

    .line 284
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v1

    int-to-short v1, v1

    return v1
.end method

.method protected getAttributeMap()[[Ljava/lang/Object;
    .locals 7

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v0, "fldIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const-string v1, "FileId Clusters"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    .line 336
    .local v2, "fic":Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Group"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->access$100(Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    invoke-static {v2}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->access$200(Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 340
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "fic":Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;
    :cond_0
    const/4 v1, 0x5

    new-array v1, v1, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "ShapeIdMax"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_1_shapeIdMax:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    aput-object v3, v1, v5

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "NumIdClusters"

    aput-object v4, v3, v5

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getNumIdClusters()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object v3, v1, v6

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "NumShapesSaved"

    aput-object v4, v3, v5

    iget v4, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_3_numShapesSaved:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/4 v3, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "DrawingsSaved"

    aput-object v4, v2, v5

    iget v4, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_4_drawingsSaved:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    aput-object v2, v1, v3

    const/4 v2, 0x4

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    return-object v1
.end method

.method public getDrawingsSaved()I
    .locals 1

    .line 187
    iget v0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_4_drawingsSaved:I

    return v0
.end method

.method public getFileIdClusters()[Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;
    .locals 2

    .line 212
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    return-object v0
.end method

.method public getMaxDrawingGroupId()I
    .locals 1

    .line 205
    iget v0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->maxDgId:I

    return v0
.end method

.method public getNumIdClusters()I
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0
.end method

.method public getNumShapesSaved()I
    .locals 1

    .line 169
    iget v0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_3_numShapesSaved:I

    return v0
.end method

.method public getRecordId()S
    .locals 1

    .line 128
    const/16 v0, -0xffa

    return v0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 1

    .line 133
    const-string v0, "Dgg"

    return-object v0
.end method

.method public getRecordSize()I
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public getShapeIdMax()I
    .locals 1

    .line 142
    iget v0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_1_shapeIdMax:I

    return v0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 5
    .param p1, "offset"    # I
    .param p2, "data"    # [B
    .param p3, "listener"    # Lorg/apache/poi/ddf/EscherSerializationListener;

    .line 99
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    .line 101
    move v0, p1

    .line 102
    .local v0, "pos":I
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getOptions()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, v0, 0x2

    .line 103
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getRecordId()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, v0, 0x2

    .line 104
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getRecordSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    .line 105
    .local v1, "remainingBytes":I
    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 107
    iget v2, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_1_shapeIdMax:I

    invoke-static {p2, v0, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 108
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getNumIdClusters()I

    move-result v2

    invoke-static {p2, v0, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 109
    iget v2, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_3_numShapesSaved:I

    invoke-static {p2, v0, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 110
    iget v2, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_4_drawingsSaved:I

    invoke-static {p2, v0, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 112
    iget-object v2, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    .line 113
    .local v3, "fic":Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;
    invoke-virtual {v3}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getDrawingGroupId()I

    move-result v4

    invoke-static {p2, v0, v4}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 114
    invoke-virtual {v3}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getNumShapeIdsUsed()I

    move-result v4

    invoke-static {p2, v0, v4}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .end local v3    # "fic":Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 117
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getRecordId()S

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getRecordSize()I

    move-result v3

    invoke-interface {p3, v0, v2, v3, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    .line 118
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getRecordSize()I

    move-result v2

    return v2
.end method

.method public setDrawingsSaved(I)V
    .locals 0
    .param p1, "drawingsSaved"    # I

    .line 196
    iput p1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_4_drawingsSaved:I

    .line 197
    return-void
.end method

.method public setFileIdClusters([Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;)V
    .locals 2
    .param p1, "fileIdClusters"    # [Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    .line 221
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 222
    if-eqz p1, :cond_0

    .line 223
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 225
    :cond_0
    return-void
.end method

.method public setNumShapesSaved(I)V
    .locals 0
    .param p1, "numShapesSaved"    # I

    .line 178
    iput p1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_3_numShapesSaved:I

    .line 179
    return-void
.end method

.method public setShapeIdMax(I)V
    .locals 0
    .param p1, "shapeIdMax"    # I

    .line 151
    iput p1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_1_shapeIdMax:I

    .line 152
    return-void
.end method
