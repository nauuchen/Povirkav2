.class public final Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "DefaultDataLabelTextPropertiesRecord.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CATEGORY_DATA_TYPE_ALL_TEXT_CHARACTERISTIC:S = 0x2s

.field public static final CATEGORY_DATA_TYPE_SHOW_LABELS_CHARACTERISTIC:S = 0x0s

.field public static final CATEGORY_DATA_TYPE_VALUE_AND_PERCENTAGE_CHARACTERISTIC:S = 0x1s

.field public static final sid:S = 0x1024s


# instance fields
.field private field_1_categoryDataType:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 42
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 43
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;->field_1_categoryDataType:S

    .line 44
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

    .line 28
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;->clone()Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;
    .locals 2

    .line 75
    new-instance v0, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;-><init>()V

    .line 77
    .local v0, "rec":Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;->field_1_categoryDataType:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;->field_1_categoryDataType:S

    .line 78
    return-object v0
.end method

.method public getCategoryDataType()S
    .locals 1

    .line 94
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;->field_1_categoryDataType:S

    return v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 65
    const/4 v0, 0x2

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 70
    const/16 v0, 0x1024

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 61
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;->field_1_categoryDataType:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 62
    return-void
.end method

.method public setCategoryDataType(S)V
    .locals 0
    .param p1, "field_1_categoryDataType"    # S

    .line 108
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;->field_1_categoryDataType:S

    .line 109
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 48
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 50
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[DEFAULTTEXT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    const-string v1, "    .categoryDataType     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;->getCategoryDataType()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;->getCategoryDataType()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    const-string v1, "[/DEFAULTTEXT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
