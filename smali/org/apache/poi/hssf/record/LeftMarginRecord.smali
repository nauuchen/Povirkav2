.class public final Lorg/apache/poi/hssf/record/LeftMarginRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "LeftMarginRecord.java"

# interfaces
.implements Lorg/apache/poi/hssf/record/Margin;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final sid:S = 0x26s


# instance fields
.field private field_1_margin:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 32
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 33
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/LeftMarginRecord;->field_1_margin:D

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

    .line 25
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/LeftMarginRecord;->clone()Lorg/apache/poi/hssf/record/LeftMarginRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/LeftMarginRecord;
    .locals 3

    .line 74
    new-instance v0, Lorg/apache/poi/hssf/record/LeftMarginRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/LeftMarginRecord;-><init>()V

    .line 75
    .local v0, "rec":Lorg/apache/poi/hssf/record/LeftMarginRecord;
    iget-wide v1, p0, Lorg/apache/poi/hssf/record/LeftMarginRecord;->field_1_margin:D

    iput-wide v1, v0, Lorg/apache/poi/hssf/record/LeftMarginRecord;->field_1_margin:D

    .line 76
    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 50
    const/16 v0, 0x8

    return v0
.end method

.method public getMargin()D
    .locals 2

    .line 61
    iget-wide v0, p0, Lorg/apache/poi/hssf/record/LeftMarginRecord;->field_1_margin:D

    return-wide v0
.end method

.method public getSid()S
    .locals 1

    .line 54
    const/16 v0, 0x26

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 46
    iget-wide v0, p0, Lorg/apache/poi/hssf/record/LeftMarginRecord;->field_1_margin:D

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    .line 47
    return-void
.end method

.method public setMargin(D)V
    .locals 0
    .param p1, "field_1_margin"    # D

    .line 69
    iput-wide p1, p0, Lorg/apache/poi/hssf/record/LeftMarginRecord;->field_1_margin:D

    .line 70
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 38
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 39
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[LeftMargin]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    const-string v1, "    .margin               = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/LeftMarginRecord;->getMargin()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " )\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    const-string v1, "[/LeftMargin]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
