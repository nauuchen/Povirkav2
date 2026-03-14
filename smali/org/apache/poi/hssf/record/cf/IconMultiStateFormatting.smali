.class public final Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;
.super Ljava/lang/Object;
.source "IconMultiStateFormatting.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static iconOnly:Lorg/apache/poi/util/BitField;

.field private static log:Lorg/apache/poi/util/POILogger;

.field private static reversed:Lorg/apache/poi/util/BitField;


# instance fields
.field private iconSet:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

.field private options:B

.field private thresholds:[Lorg/apache/poi/hssf/record/cf/Threshold;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->log:Lorg/apache/poi/util/POILogger;

    .line 38
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->iconOnly:Lorg/apache/poi/util/BitField;

    .line 39
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->reversed:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->GYR_3_TRAFFIC_LIGHTS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->iconSet:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    .line 43
    const/4 v1, 0x0

    iput-byte v1, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->options:B

    .line 44
    iget v0, v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->num:I

    new-array v0, v0, [Lorg/apache/poi/hssf/record/cf/Threshold;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/Threshold;

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 8
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    .line 48
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    .line 49
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v0

    .line 50
    .local v0, "num":I
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v1

    .line 51
    .local v1, "set":I
    invoke-static {v1}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->byId(I)Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->iconSet:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    .line 52
    iget v2, v2, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->num:I

    if-eq v2, v0, :cond_0

    .line 53
    sget-object v2, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->log:Lorg/apache/poi/util/POILogger;

    const/4 v3, 0x5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Inconsistent Icon Set defintion, found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->iconSet:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but defined as "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " entries"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 55
    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v2

    iput-byte v2, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->options:B

    .line 57
    iget-object v2, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->iconSet:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    iget v2, v2, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->num:I

    new-array v2, v2, [Lorg/apache/poi/hssf/record/cf/Threshold;

    iput-object v2, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/Threshold;

    .line 58
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/Threshold;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 59
    new-instance v4, Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;

    invoke-direct {v4, p1}, Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    aput-object v4, v3, v2

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private getOptionFlag(Lorg/apache/poi/util/BitField;)Z
    .locals 2
    .param p1, "field"    # Lorg/apache/poi/util/BitField;

    .line 92
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->options:B

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    .line 93
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

    .line 96
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->options:B

    invoke-virtual {p2, v0, p1}, Lorg/apache/poi/util/BitField;->setByteBoolean(BZ)B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->options:B

    .line 97
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5

    .line 113
    new-instance v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;-><init>()V

    .line 114
    .local v0, "rec":Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;
    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->iconSet:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->iconSet:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    .line 115
    iget-byte v1, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->options:B

    iput-byte v1, v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->options:B

    .line 116
    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/Threshold;

    array-length v1, v1

    new-array v1, v1, [Lorg/apache/poi/hssf/record/cf/Threshold;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/Threshold;

    .line 117
    iget-object v2, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/Threshold;

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    return-object v0
.end method

.method public getDataLength()I
    .locals 6

    .line 122
    const/4 v0, 0x6

    .line 123
    .local v0, "len":I
    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/Threshold;

    .local v1, "arr$":[Lorg/apache/poi/hssf/record/cf/Threshold;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 124
    .local v4, "t":Lorg/apache/poi/hssf/record/cf/Threshold;
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/cf/Threshold;->getDataLength()I

    move-result v5

    add-int/2addr v0, v5

    .line 123
    .end local v4    # "t":Lorg/apache/poi/hssf/record/cf/Threshold;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    .end local v1    # "arr$":[Lorg/apache/poi/hssf/record/cf/Threshold;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    return v0
.end method

.method public getIconSet()Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->iconSet:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    return-object v0
.end method

.method public getThresholds()[Lorg/apache/poi/hssf/record/cf/Threshold;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/Threshold;

    return-object v0
.end method

.method public isIconOnly()Z
    .locals 1

    .line 78
    sget-object v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->iconOnly:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->getOptionFlag(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public isReversed()Z
    .locals 1

    .line 85
    sget-object v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->reversed:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->getOptionFlag(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 4
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 130
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 131
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 132
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->iconSet:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    iget v0, v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->num:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 133
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->iconSet:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    iget v0, v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->id:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 134
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->options:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 135
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/Threshold;

    .local v0, "arr$":[Lorg/apache/poi/hssf/record/cf/Threshold;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 136
    .local v3, "t":Lorg/apache/poi/hssf/record/cf/Threshold;
    invoke-virtual {v3, p1}, Lorg/apache/poi/hssf/record/cf/Threshold;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 135
    .end local v3    # "t":Lorg/apache/poi/hssf/record/cf/Threshold;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    .end local v0    # "arr$":[Lorg/apache/poi/hssf/record/cf/Threshold;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method

.method public setIconOnly(Z)V
    .locals 1
    .param p1, "only"    # Z

    .line 81
    sget-object v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->iconOnly:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->setOptionFlag(ZLorg/apache/poi/util/BitField;)V

    .line 82
    return-void
.end method

.method public setIconSet(Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;)V
    .locals 0
    .param p1, "set"    # Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    .line 67
    iput-object p1, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->iconSet:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    .line 68
    return-void
.end method

.method public setReversed(Z)V
    .locals 1
    .param p1, "rev"    # Z

    .line 88
    sget-object v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->reversed:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->setOptionFlag(ZLorg/apache/poi/util/BitField;)V

    .line 89
    return-void
.end method

.method public setThresholds([Lorg/apache/poi/hssf/record/cf/Threshold;)V
    .locals 1
    .param p1, "thresholds"    # [Lorg/apache/poi/hssf/record/cf/Threshold;

    .line 74
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [Lorg/apache/poi/hssf/record/cf/Threshold;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hssf/record/cf/Threshold;

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/Threshold;

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 100
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 101
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "    [Icon Formatting]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    const-string v1, "          .icon_set = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->iconSet:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    const-string v1, "          .icon_only= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->isIconOnly()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    const-string v1, "          .reversed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->isReversed()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/Threshold;

    .local v1, "arr$":[Lorg/apache/poi/hssf/record/cf/Threshold;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 106
    .local v4, "t":Lorg/apache/poi/hssf/record/cf/Threshold;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 105
    .end local v4    # "t":Lorg/apache/poi/hssf/record/cf/Threshold;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 108
    .end local v1    # "arr$":[Lorg/apache/poi/hssf/record/cf/Threshold;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    const-string v1, "    [/Icon Formatting]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
