.class public final Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;
.super Lorg/apache/poi/hssf/record/cf/Threshold;
.source "ColorGradientThreshold.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private position:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cf/Threshold;-><init>()V

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;->position:D

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 2
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 37
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/cf/Threshold;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    .line 38
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;->position:D

    .line 39
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

    .line 27
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;->clone()Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;
    .locals 3

    .line 54
    new-instance v0, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;-><init>()V

    .line 55
    .local v0, "rec":Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;
    invoke-super {p0, v0}, Lorg/apache/poi/hssf/record/cf/Threshold;->copyTo(Lorg/apache/poi/hssf/record/cf/Threshold;)V

    .line 56
    iget-wide v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;->position:D

    iput-wide v1, v0, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;->position:D

    .line 57
    return-object v0
.end method

.method public getDataLength()I
    .locals 1

    .line 49
    invoke-super {p0}, Lorg/apache/poi/hssf/record/cf/Threshold;->getDataLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getPosition()D
    .locals 2

    .line 42
    iget-wide v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;->position:D

    return-wide v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 61
    invoke-super {p0, p1}, Lorg/apache/poi/hssf/record/cf/Threshold;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 62
    iget-wide v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;->position:D

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    .line 63
    return-void
.end method

.method public setPosition(D)V
    .locals 0
    .param p1, "position"    # D

    .line 45
    iput-wide p1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;->position:D

    .line 46
    return-void
.end method
