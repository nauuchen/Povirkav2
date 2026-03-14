.class public final Lorg/apache/poi/hssf/record/cf/DataBarThreshold;
.super Lorg/apache/poi/hssf/record/cf/Threshold;
.source "DataBarThreshold.java"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cf/Threshold;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 0
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 33
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/cf/Threshold;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    .line 34
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;->clone()Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/cf/DataBarThreshold;
    .locals 1

    .line 38
    new-instance v0, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;-><init>()V

    .line 39
    .local v0, "rec":Lorg/apache/poi/hssf/record/cf/DataBarThreshold;
    invoke-super {p0, v0}, Lorg/apache/poi/hssf/record/cf/Threshold;->copyTo(Lorg/apache/poi/hssf/record/cf/Threshold;)V

    .line 40
    return-object v0
.end method
