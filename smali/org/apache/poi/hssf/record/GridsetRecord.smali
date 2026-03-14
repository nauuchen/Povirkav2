.class public final Lorg/apache/poi/hssf/record/GridsetRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "GridsetRecord.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final sid:S = 0x82s


# instance fields
.field public field_1_gridset_flag:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 46
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 47
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/GridsetRecord;->field_1_gridset_flag:S

    .line 48
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

    .line 37
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/GridsetRecord;->clone()Lorg/apache/poi/hssf/record/GridsetRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/GridsetRecord;
    .locals 2

    .line 105
    new-instance v0, Lorg/apache/poi/hssf/record/GridsetRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/GridsetRecord;-><init>()V

    .line 106
    .local v0, "rec":Lorg/apache/poi/hssf/record/GridsetRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/GridsetRecord;->field_1_gridset_flag:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/GridsetRecord;->field_1_gridset_flag:S

    .line 107
    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 95
    const/4 v0, 0x2

    return v0
.end method

.method public getGridset()Z
    .locals 2

    .line 76
    iget-short v0, p0, Lorg/apache/poi/hssf/record/GridsetRecord;->field_1_gridset_flag:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getSid()S
    .locals 1

    .line 100
    const/16 v0, 0x82

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 91
    iget-short v0, p0, Lorg/apache/poi/hssf/record/GridsetRecord;->field_1_gridset_flag:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 92
    return-void
.end method

.method public setGridset(Z)V
    .locals 1
    .param p1, "gridset"    # Z

    .line 58
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 60
    iput-short v0, p0, Lorg/apache/poi/hssf/record/GridsetRecord;->field_1_gridset_flag:S

    goto :goto_0

    .line 64
    :cond_0
    const/4 v0, 0x0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/GridsetRecord;->field_1_gridset_flag:S

    .line 66
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 81
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 83
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[GRIDSET]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    const-string v1, "    .gridset        = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/GridsetRecord;->getGridset()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    const-string v1, "[/GRIDSET]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
