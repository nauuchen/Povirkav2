.class public final Lorg/apache/poi/hssf/record/cf/DataBarFormatting;
.super Ljava/lang/Object;
.source "DataBarFormatting.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static iconOnly:Lorg/apache/poi/util/BitField;

.field private static log:Lorg/apache/poi/util/POILogger;

.field private static reversed:Lorg/apache/poi/util/BitField;


# instance fields
.field private color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

.field private options:B

.field private percentMax:B

.field private percentMin:B

.field private thresholdMax:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

.field private thresholdMin:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->log:Lorg/apache/poi/util/POILogger;

    .line 41
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->iconOnly:Lorg/apache/poi/util/BitField;

    .line 42
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->reversed:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->options:B

    .line 35
    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMin:B

    .line 36
    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMax:B

    .line 45
    const/4 v0, 0x2

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->options:B

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 9
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->options:B

    .line 35
    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMin:B

    .line 36
    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMax:B

    .line 48
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    .line 49
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    .line 50
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v1

    iput-byte v1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->options:B

    .line 52
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v1

    iput-byte v1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMin:B

    .line 53
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v1

    iput-byte v1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMax:B

    .line 54
    iget-byte v1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMin:B

    const/16 v2, 0x64

    const-string v3, "Inconsistent Minimum Percentage found "

    const/4 v4, 0x1

    const/4 v5, 0x5

    if-ltz v1, :cond_0

    if-le v1, v2, :cond_1

    .line 55
    :cond_0
    sget-object v1, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->log:Lorg/apache/poi/util/POILogger;

    new-array v6, v4, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-byte v8, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMin:B

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-virtual {v1, v5, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 56
    :cond_1
    iget-byte v1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMax:B

    if-ltz v1, :cond_2

    if-le v1, v2, :cond_3

    .line 57
    :cond_2
    sget-object v1, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->log:Lorg/apache/poi/util/POILogger;

    new-array v2, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMin:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1, v5, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 59
    :cond_3
    new-instance v0, Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/common/ExtendedColor;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    .line 60
    new-instance v0, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMin:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    .line 61
    new-instance v0, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMax:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    .line 62
    return-void
.end method

.method private getOptionFlag(Lorg/apache/poi/util/BitField;)Z
    .locals 2
    .param p1, "field"    # Lorg/apache/poi/util/BitField;

    .line 79
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->options:B

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    .line 80
    .local v0, "value":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method private setOptionFlag(ZLorg/apache/poi/util/BitField;)V
    .locals 1
    .param p1, "option"    # Z
    .param p2, "field"    # Lorg/apache/poi/util/BitField;

    .line 83
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->options:B

    invoke-virtual {p2, v0, p1}, Lorg/apache/poi/util/BitField;->setByteBoolean(BZ)B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->options:B

    .line 84
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 134
    new-instance v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;-><init>()V

    .line 135
    .local v0, "rec":Lorg/apache/poi/hssf/record/cf/DataBarFormatting;
    iget-byte v1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->options:B

    iput-byte v1, v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->options:B

    .line 136
    iget-byte v1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMin:B

    iput-byte v1, v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMin:B

    .line 137
    iget-byte v1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMax:B

    iput-byte v1, v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMax:B

    .line 138
    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->clone()Lorg/apache/poi/hssf/record/common/ExtendedColor;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    .line 139
    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMin:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;->clone()Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMin:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    .line 140
    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMax:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;->clone()Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMax:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    .line 141
    return-object v0
.end method

.method public getColor()Lorg/apache/poi/hssf/record/common/ExtendedColor;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    return-object v0
.end method

.method public getDataLength()I
    .locals 2

    .line 145
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->getDataLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMin:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;->getDataLength()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMax:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;->getDataLength()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getPercentMax()B
    .locals 1

    .line 94
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMax:B

    return v0
.end method

.method public getPercentMin()B
    .locals 1

    .line 87
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMin:B

    return v0
.end method

.method public getThresholdMax()Lorg/apache/poi/hssf/record/cf/DataBarThreshold;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMax:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    return-object v0
.end method

.method public getThresholdMin()Lorg/apache/poi/hssf/record/cf/DataBarThreshold;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMin:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    return-object v0
.end method

.method public isIconOnly()Z
    .locals 1

    .line 65
    sget-object v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->iconOnly:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->getOptionFlag(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public isReversed()Z
    .locals 1

    .line 72
    sget-object v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->reversed:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->getOptionFlag(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 151
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 152
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 153
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->options:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 154
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMin:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 155
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMax:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 156
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 157
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMin:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 158
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMax:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 159
    return-void
.end method

.method public setColor(Lorg/apache/poi/hssf/record/common/ExtendedColor;)V
    .locals 0
    .param p1, "color"    # Lorg/apache/poi/hssf/record/common/ExtendedColor;

    .line 104
    iput-object p1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    .line 105
    return-void
.end method

.method public setIconOnly(Z)V
    .locals 1
    .param p1, "only"    # Z

    .line 68
    sget-object v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->iconOnly:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->setOptionFlag(ZLorg/apache/poi/util/BitField;)V

    .line 69
    return-void
.end method

.method public setPercentMax(B)V
    .locals 0
    .param p1, "percentMax"    # B

    .line 97
    iput-byte p1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMax:B

    .line 98
    return-void
.end method

.method public setPercentMin(B)V
    .locals 0
    .param p1, "percentMin"    # B

    .line 90
    iput-byte p1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMin:B

    .line 91
    return-void
.end method

.method public setReversed(Z)V
    .locals 1
    .param p1, "rev"    # Z

    .line 75
    sget-object v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->reversed:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->setOptionFlag(ZLorg/apache/poi/util/BitField;)V

    .line 76
    return-void
.end method

.method public setThresholdMax(Lorg/apache/poi/hssf/record/cf/DataBarThreshold;)V
    .locals 0
    .param p1, "thresholdMax"    # Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    .line 118
    iput-object p1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMax:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    .line 119
    return-void
.end method

.method public setThresholdMin(Lorg/apache/poi/hssf/record/cf/DataBarThreshold;)V
    .locals 0
    .param p1, "thresholdMin"    # Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    .line 111
    iput-object p1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMin:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    .line 112
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 122
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 123
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "    [Data Bar Formatting]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    const-string v1, "          .icon_only= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->isIconOnly()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    const-string v1, "          .reversed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->isReversed()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 127
    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMin:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 128
    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMax:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 129
    const-string v1, "    [/Data Bar Formatting]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
