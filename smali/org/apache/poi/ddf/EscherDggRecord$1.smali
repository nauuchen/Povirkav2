.class Lorg/apache/poi/ddf/EscherDggRecord$1;
.super Ljava/lang/Object;
.source "EscherDggRecord.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/ddf/EscherDggRecord;->sortCluster()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/ddf/EscherDggRecord;


# direct methods
.method constructor <init>(Lorg/apache/poi/ddf/EscherDggRecord;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lorg/apache/poi/ddf/EscherDggRecord$1;->this$0:Lorg/apache/poi/ddf/EscherDggRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 263
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    move-object v1, p2

    check-cast v1, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/ddf/EscherDggRecord$1;->compare(Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;)I
    .locals 3
    .param p1, "f1"    # Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;
    .param p2, "f2"    # Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    .line 266
    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getDrawingGroupId()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getDrawingGroupId()I

    move-result v1

    sub-int/2addr v0, v1

    .line 267
    .local v0, "dgDif":I
    invoke-virtual {p2}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getNumShapeIdsUsed()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getNumShapeIdsUsed()I

    move-result v2

    sub-int/2addr v1, v2

    .line 268
    .local v1, "cntDif":I
    if-eqz v0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    return v2
.end method
