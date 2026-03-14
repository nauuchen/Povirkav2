.class public abstract Lorg/apache/poi/hssf/record/cf/Threshold;
.super Ljava/lang/Object;
.source "Threshold.java"


# instance fields
.field private formula:Lorg/apache/poi/ss/formula/Formula;

.field private type:B

.field private value:Ljava/lang/Double;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->NUMBER:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    iget v0, v0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->id:I

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->type:B

    .line 38
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->formula:Lorg/apache/poi/ss/formula/Formula;

    .line 39
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->value:Ljava/lang/Double;

    .line 40
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 3
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->type:B

    .line 45
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    .line 46
    .local v0, "formulaLen":S
    if-lez v0, :cond_0

    .line 47
    invoke-static {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->formula:Lorg/apache/poi/ss/formula/Formula;

    goto :goto_0

    .line 49
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->formula:Lorg/apache/poi/ss/formula/Formula;

    .line 52
    :goto_0
    if-nez v0, :cond_1

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->type:B

    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->MIN:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    iget v2, v2, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->id:I

    if-eq v1, v2, :cond_1

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->type:B

    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->MAX:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    iget v2, v2, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->id:I

    if-eq v1, v2, :cond_1

    .line 54
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->value:Ljava/lang/Double;

    .line 56
    :cond_1
    return-void
.end method


# virtual methods
.method public copyTo(Lorg/apache/poi/hssf/record/cf/Threshold;)V
    .locals 1
    .param p1, "rec"    # Lorg/apache/poi/hssf/record/cf/Threshold;

    .line 115
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->type:B

    iput-byte v0, p1, Lorg/apache/poi/hssf/record/cf/Threshold;->type:B

    .line 116
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->formula:Lorg/apache/poi/ss/formula/Formula;

    iput-object v0, p1, Lorg/apache/poi/hssf/record/cf/Threshold;->formula:Lorg/apache/poi/ss/formula/Formula;

    .line 117
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->value:Ljava/lang/Double;

    iput-object v0, p1, Lorg/apache/poi/hssf/record/cf/Threshold;->value:Ljava/lang/Double;

    .line 118
    return-void
.end method

.method public getDataLength()I
    .locals 2

    .line 97
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->formula:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->getEncodedSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 98
    .local v0, "len":I
    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->value:Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 99
    add-int/lit8 v0, v0, 0x8

    .line 101
    :cond_0
    return v0
.end method

.method protected getFormula()Lorg/apache/poi/ss/formula/Formula;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->formula:Lorg/apache/poi/ss/formula/Formula;

    return-object v0
.end method

.method public getParsedExpression()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->formula:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    return-object v0
.end method

.method public getType()B
    .locals 1

    .line 59
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->type:B

    return v0
.end method

.method public getValue()Ljava/lang/Double;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->value:Ljava/lang/Double;

    return-object v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 121
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->type:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 122
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->formula:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->formula:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 127
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->value:Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    .line 130
    :cond_1
    return-void
.end method

.method public setParsedExpression([Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 1
    .param p1, "ptgs"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 83
    invoke-static {p1}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->formula:Lorg/apache/poi/ss/formula/Formula;

    .line 84
    array-length v0, p1

    if-lez v0, :cond_0

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->value:Ljava/lang/Double;

    .line 87
    :cond_0
    return-void
.end method

.method public setType(B)V
    .locals 2
    .param p1, "type"    # B

    .line 62
    iput-byte p1, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->type:B

    .line 65
    sget-object v0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->MIN:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    iget v0, v0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->id:I

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->MAX:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    iget v0, v0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->id:I

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->FORMULA:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    iget v0, v0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->id:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->value:Ljava/lang/Double;

    if-nez v0, :cond_2

    .line 69
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->value:Ljava/lang/Double;

    goto :goto_1

    .line 67
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->value:Ljava/lang/Double;

    .line 71
    :cond_2
    :goto_1
    return-void
.end method

.method public setType(I)V
    .locals 1
    .param p1, "type"    # I

    .line 73
    int-to-byte v0, p1

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->type:B

    .line 74
    return-void
.end method

.method public setValue(Ljava/lang/Double;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Double;

    .line 93
    iput-object p1, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->value:Ljava/lang/Double;

    .line 94
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 105
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 106
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "    [CF Threshold]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    const-string v1, "          .type    = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-byte v2, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->type:B

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    const-string v1, "          .formula = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->formula:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    const-string v1, "          .value   = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->value:Ljava/lang/Double;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    const-string v1, "    [/CF Threshold]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
