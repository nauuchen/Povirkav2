.class public final Lorg/apache/poi/hssf/record/CalcModeRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "CalcModeRecord.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final AUTOMATIC:S = 0x1s

.field public static final AUTOMATIC_EXCEPT_TABLES:S = -0x1s

.field public static final MANUAL:S = 0x0s

.field public static final sid:S = 0xds


# instance fields
.field private field_1_calcmode:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 63
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 64
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/CalcModeRecord;->field_1_calcmode:S

    .line 65
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

    .line 36
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CalcModeRecord;->clone()Lorg/apache/poi/hssf/record/CalcModeRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/CalcModeRecord;
    .locals 2

    .line 123
    new-instance v0, Lorg/apache/poi/hssf/record/CalcModeRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/CalcModeRecord;-><init>()V

    .line 124
    .local v0, "rec":Lorg/apache/poi/hssf/record/CalcModeRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/CalcModeRecord;->field_1_calcmode:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/CalcModeRecord;->field_1_calcmode:S

    .line 125
    return-object v0
.end method

.method public getCalcMode()S
    .locals 1

    .line 94
    iget-short v0, p0, Lorg/apache/poi/hssf/record/CalcModeRecord;->field_1_calcmode:S

    return v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 113
    const/4 v0, 0x2

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 118
    const/16 v0, 0xd

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 109
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CalcModeRecord;->getCalcMode()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 110
    return-void
.end method

.method public setCalcMode(S)V
    .locals 0
    .param p1, "calcmode"    # S

    .line 79
    iput-short p1, p0, Lorg/apache/poi/hssf/record/CalcModeRecord;->field_1_calcmode:S

    .line 80
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 99
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 101
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[CALCMODE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    const-string v1, "    .calcmode       = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CalcModeRecord;->getCalcMode()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    const-string v1, "[/CALCMODE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
