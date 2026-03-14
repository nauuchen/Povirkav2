.class public final Lorg/apache/poi/hssf/record/CalcCountRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "CalcCountRecord.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final sid:S = 0xcs


# instance fields
.field private field_1_iterations:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 45
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 46
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/CalcCountRecord;->field_1_iterations:S

    .line 47
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
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CalcCountRecord;->clone()Lorg/apache/poi/hssf/record/CalcCountRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/CalcCountRecord;
    .locals 2

    .line 95
    new-instance v0, Lorg/apache/poi/hssf/record/CalcCountRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/CalcCountRecord;-><init>()V

    .line 96
    .local v0, "rec":Lorg/apache/poi/hssf/record/CalcCountRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/CalcCountRecord;->field_1_iterations:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/CalcCountRecord;->field_1_iterations:S

    .line 97
    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 85
    const/4 v0, 0x2

    return v0
.end method

.method public getIterations()S
    .locals 1

    .line 66
    iget-short v0, p0, Lorg/apache/poi/hssf/record/CalcCountRecord;->field_1_iterations:S

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 90
    const/16 v0, 0xc

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 81
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CalcCountRecord;->getIterations()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 82
    return-void
.end method

.method public setIterations(S)V
    .locals 0
    .param p1, "iterations"    # S

    .line 56
    iput-short p1, p0, Lorg/apache/poi/hssf/record/CalcCountRecord;->field_1_iterations:S

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 71
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 73
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[CALCCOUNT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v1, "    .iterations     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CalcCountRecord;->getIterations()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string v1, "[/CALCCOUNT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
