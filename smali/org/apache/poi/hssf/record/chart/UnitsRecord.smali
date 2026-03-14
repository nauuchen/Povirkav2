.class public final Lorg/apache/poi/hssf/record/chart/UnitsRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "UnitsRecord.java"


# static fields
.field public static final sid:S = 0x1001s


# instance fields
.field private field_1_units:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 39
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 40
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/UnitsRecord;->field_1_units:S

    .line 42
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 72
    new-instance v0, Lorg/apache/poi/hssf/record/chart/UnitsRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/UnitsRecord;-><init>()V

    .line 74
    .local v0, "rec":Lorg/apache/poi/hssf/record/chart/UnitsRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/UnitsRecord;->field_1_units:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/UnitsRecord;->field_1_units:S

    .line 75
    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 63
    const/4 v0, 0x2

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 68
    const/16 v0, 0x1001

    return v0
.end method

.method public getUnits()S
    .locals 1

    .line 86
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/UnitsRecord;->field_1_units:S

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 59
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/UnitsRecord;->field_1_units:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 60
    return-void
.end method

.method public setUnits(S)V
    .locals 0
    .param p1, "field_1_units"    # S

    .line 94
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/UnitsRecord;->field_1_units:S

    .line 95
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 46
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 48
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[UNITS]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    const-string v1, "    .units                = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/UnitsRecord;->getUnits()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/UnitsRecord;->getUnits()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    const-string v1, "[/UNITS]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
