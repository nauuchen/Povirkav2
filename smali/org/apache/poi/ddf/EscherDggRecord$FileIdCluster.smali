.class public Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;
.super Ljava/lang/Object;
.source "EscherDggRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ddf/EscherDggRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileIdCluster"
.end annotation


# instance fields
.field private field_1_drawingGroupId:I

.field private field_2_numShapeIdsUsed:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "drawingGroupId"    # I
    .param p2, "numShapeIdsUsed"    # I

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->field_1_drawingGroupId:I

    .line 51
    iput p2, p0, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->field_2_numShapeIdsUsed:I

    .line 52
    return-void
.end method

.method static synthetic access$000(Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    .line 45
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->incrementUsedShapeId()V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    .line 45
    iget v0, p0, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->field_1_drawingGroupId:I

    return v0
.end method

.method static synthetic access$200(Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    .line 45
    iget v0, p0, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->field_2_numShapeIdsUsed:I

    return v0
.end method

.method private incrementUsedShapeId()V
    .locals 1

    .line 63
    iget v0, p0, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->field_2_numShapeIdsUsed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->field_2_numShapeIdsUsed:I

    .line 64
    return-void
.end method


# virtual methods
.method public getDrawingGroupId()I
    .locals 1

    .line 55
    iget v0, p0, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->field_1_drawingGroupId:I

    return v0
.end method

.method public getNumShapeIdsUsed()I
    .locals 1

    .line 59
    iget v0, p0, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->field_2_numShapeIdsUsed:I

    return v0
.end method
