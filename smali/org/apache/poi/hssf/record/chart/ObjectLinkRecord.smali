.class public final Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "ObjectLinkRecord.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ANCHOR_ID_CHART_TITLE:S = 0x1s

.field public static final ANCHOR_ID_SERIES_OR_POINT:S = 0x4s

.field public static final ANCHOR_ID_X_AXIS:S = 0x3s

.field public static final ANCHOR_ID_Y_AXIS:S = 0x2s

.field public static final ANCHOR_ID_Z_AXIS:S = 0x7s

.field public static final sid:S = 0x1027s


# instance fields
.field private field_1_anchorId:S

.field private field_2_link1:S

.field private field_3_link2:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
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

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->field_1_anchorId:S

    .line 48
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->field_2_link1:S

    .line 49
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->field_3_link2:S

    .line 51
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
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->clone()Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;
    .locals 2

    .line 92
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;-><init>()V

    .line 94
    .local v0, "rec":Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->field_1_anchorId:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->field_1_anchorId:S

    .line 95
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->field_2_link1:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->field_2_link1:S

    .line 96
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->field_3_link2:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->field_3_link2:S

    .line 97
    return-object v0
.end method

.method public getAnchorId()S
    .locals 1

    .line 115
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->field_1_anchorId:S

    return v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 82
    const/4 v0, 0x6

    return v0
.end method

.method public getLink1()S
    .locals 1

    .line 139
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->field_2_link1:S

    return v0
.end method

.method public getLink2()S
    .locals 1

    .line 155
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->field_3_link2:S

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 87
    const/16 v0, 0x1027

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 76
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->field_1_anchorId:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 77
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->field_2_link1:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 78
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->field_3_link2:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 79
    return-void
.end method

.method public setAnchorId(S)V
    .locals 0
    .param p1, "field_1_anchorId"    # S

    .line 131
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->field_1_anchorId:S

    .line 132
    return-void
.end method

.method public setLink1(S)V
    .locals 0
    .param p1, "field_2_link1"    # S

    .line 147
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->field_2_link1:S

    .line 148
    return-void
.end method

.method public setLink2(S)V
    .locals 0
    .param p1, "field_3_link2"    # S

    .line 163
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->field_3_link2:S

    .line 164
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 55
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 57
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[OBJECTLINK]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    const-string v1, "    .anchorId             = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->getAnchorId()S

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->getAnchorId()S

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, " )"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    const-string v5, "    .link1                = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->getLink1()S

    move-result v6

    invoke-static {v6}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->getLink1()S

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    const-string v5, "    .link2                = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->getLink2()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->getLink2()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    const-string v1, "[/OBJECTLINK]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
