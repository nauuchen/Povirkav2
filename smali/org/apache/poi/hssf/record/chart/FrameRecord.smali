.class public final Lorg/apache/poi/hssf/record/chart/FrameRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "FrameRecord.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final BORDER_TYPE_REGULAR:S = 0x0s

.field public static final BORDER_TYPE_SHADOW:S = 0x1s

.field private static final autoPosition:Lorg/apache/poi/util/BitField;

.field private static final autoSize:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x1032s


# instance fields
.field private field_1_borderType:S

.field private field_2_options:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->autoSize:Lorg/apache/poi/util/BitField;

    .line 34
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->autoPosition:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 48
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 49
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->field_1_borderType:S

    .line 50
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->field_2_options:S

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

    .line 30
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FrameRecord;->clone()Lorg/apache/poi/hssf/record/chart/FrameRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/chart/FrameRecord;
    .locals 2

    .line 89
    new-instance v0, Lorg/apache/poi/hssf/record/chart/FrameRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/FrameRecord;-><init>()V

    .line 91
    .local v0, "rec":Lorg/apache/poi/hssf/record/chart/FrameRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->field_1_borderType:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->field_1_borderType:S

    .line 92
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->field_2_options:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->field_2_options:S

    .line 93
    return-object v0
.end method

.method public getBorderType()S
    .locals 1

    .line 108
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->field_1_borderType:S

    return v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 79
    const/4 v0, 0x4

    return v0
.end method

.method public getOptions()S
    .locals 1

    .line 129
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->field_2_options:S

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 84
    const/16 v0, 0x1032

    return v0
.end method

.method public isAutoPosition()Z
    .locals 2

    .line 173
    sget-object v0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->autoPosition:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->field_2_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isAutoSize()Z
    .locals 2

    .line 155
    sget-object v0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->autoSize:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->field_2_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 74
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->field_1_borderType:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 75
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->field_2_options:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 76
    return-void
.end method

.method public setAutoPosition(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 164
    sget-object v0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->autoPosition:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->field_2_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->field_2_options:S

    .line 165
    return-void
.end method

.method public setAutoSize(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 146
    sget-object v0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->autoSize:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->field_2_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->field_2_options:S

    .line 147
    return-void
.end method

.method public setBorderType(S)V
    .locals 0
    .param p1, "field_1_borderType"    # S

    .line 121
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->field_1_borderType:S

    .line 122
    return-void
.end method

.method public setOptions(S)V
    .locals 0
    .param p1, "field_2_options"    # S

    .line 137
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->field_2_options:S

    .line 138
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 55
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 57
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[FRAME]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    const-string v1, "    .borderType           = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FrameRecord;->getBorderType()S

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FrameRecord;->getBorderType()S

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
    const-string v5, "    .options              = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FrameRecord;->getOptions()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FrameRecord;->getOptions()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    const-string v1, "         .autoSize                 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FrameRecord;->isAutoSize()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 67
    const-string v1, "         .autoPosition             = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FrameRecord;->isAutoPosition()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 69
    const-string v1, "[/FRAME]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
