.class public final Lorg/apache/poi/hssf/record/CFRule12Record;
.super Lorg/apache/poi/hssf/record/CFRuleBase;
.source "CFRule12Record.java"

# interfaces
.implements Lorg/apache/poi/hssf/record/common/FutureRecord;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final sid:S = 0x87as


# instance fields
.field private color_gradient:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

.field private data_bar:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

.field private ext_formatting_data:[B

.field private ext_formatting_length:I

.field private ext_opts:B

.field private filter_data:[B

.field private formula_scale:Lorg/apache/poi/ss/formula/Formula;

.field private futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

.field private multistate:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

.field private priority:I

.field private template_param_length:B

.field private template_params:[B

.field private template_type:I


# direct methods
.method private constructor <init>(BB)V
    .locals 0
    .param p1, "conditionType"    # B
    .param p2, "comparisonOperation"    # B

    .line 73
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/record/CFRuleBase;-><init>(BB)V

    .line 74
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->setDefaults()V

    .line 75
    return-void
.end method

.method private constructor <init>(BB[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 1
    .param p1, "conditionType"    # B
    .param p2, "comparisonOperation"    # B
    .param p3, "formula1"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p4, "formula2"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p5, "formulaScale"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/hssf/record/CFRuleBase;-><init>(BB[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 79
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->setDefaults()V

    .line 80
    invoke-static {p5}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->formula_scale:Lorg/apache/poi/ss/formula/Formula;

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 9
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 224
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;-><init>()V

    .line 225
    new-instance v0, Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/common/FtrHeader;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    .line 226
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/CFRule12Record;->setConditionType(B)V

    .line 227
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/CFRule12Record;->setComparisonOperation(B)V

    .line 228
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    .line 229
    .local v0, "field_3_formula1_len":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v1

    .line 231
    .local v1, "field_4_formula2_len":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_length:I

    .line 232
    const/4 v3, 0x0

    new-array v4, v3, [B

    iput-object v4, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_data:[B

    .line 233
    if-nez v2, :cond_0

    .line 235
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/CFRule12Record;->readFormatOptions(Lorg/apache/poi/hssf/record/RecordInputStream;)I

    move-result v2

    .line 238
    .local v2, "len":I
    iget v4, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_length:I

    if-ge v2, v4, :cond_1

    .line 239
    sub-int/2addr v4, v2

    new-array v4, v4, [B

    iput-object v4, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_data:[B

    .line 240
    invoke-virtual {p1, v4}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([B)V

    .line 244
    .end local v2    # "len":I
    :cond_1
    :goto_0
    invoke-static {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/record/CFRule12Record;->setFormula1(Lorg/apache/poi/ss/formula/Formula;)V

    .line 245
    invoke-static {v1, p1}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/record/CFRule12Record;->setFormula2(Lorg/apache/poi/ss/formula/Formula;)V

    .line 247
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v2

    .line 248
    .local v2, "formula_scale_len":I
    invoke-static {v2, p1}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->formula_scale:Lorg/apache/poi/ss/formula/Formula;

    .line 250
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v4

    iput-byte v4, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_opts:B

    .line 251
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v4

    iput v4, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->priority:I

    .line 252
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v4

    iput v4, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_type:I

    .line 253
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v4

    iput-byte v4, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_param_length:B

    .line 254
    const/4 v5, 0x5

    if-eqz v4, :cond_3

    const/16 v6, 0x10

    if-ne v4, v6, :cond_2

    goto :goto_1

    .line 258
    :cond_2
    sget-object v4, Lorg/apache/poi/hssf/record/CFRule12Record;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CF Rule v12 template params length should be 0 or 16, found "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-byte v8, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_param_length:B

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 259
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    goto :goto_2

    .line 255
    :cond_3
    :goto_1
    new-array v3, v4, [B

    iput-object v3, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_params:[B

    .line 256
    invoke-virtual {p1, v3}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([B)V

    .line 262
    :goto_2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->getConditionType()B

    move-result v3

    .line 263
    .local v3, "type":B
    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 264
    new-instance v4, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    invoke-direct {v4, p1}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    iput-object v4, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->color_gradient:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    goto :goto_3

    .line 265
    :cond_4
    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 266
    new-instance v4, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    invoke-direct {v4, p1}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    iput-object v4, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->data_bar:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    goto :goto_3

    .line 267
    :cond_5
    if-ne v3, v5, :cond_6

    .line 268
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object v4

    iput-object v4, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->filter_data:[B

    goto :goto_3

    .line 269
    :cond_6
    const/4 v4, 0x6

    if-ne v3, v4, :cond_7

    .line 270
    new-instance v4, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    invoke-direct {v4, p1}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    iput-object v4, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->multistate:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    .line 272
    :cond_7
    :goto_3
    return-void
.end method

.method public static create(Lorg/apache/poi/hssf/usermodel/HSSFSheet;BLjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/hssf/record/CFRule12Record;
    .locals 9
    .param p0, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p1, "comparisonOperation"    # B
    .param p2, "formulaText1"    # Ljava/lang/String;
    .param p3, "formulaText2"    # Ljava/lang/String;

    .line 124
    invoke-static {p2, p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->parseFormula(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v6

    .line 125
    .local v6, "formula1":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-static {p3, p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->parseFormula(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v7

    .line 126
    .local v7, "formula2":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    new-instance v8, Lorg/apache/poi/hssf/record/CFRule12Record;

    const/4 v1, 0x1

    const/4 v5, 0x0

    move-object v0, v8

    move v2, p1

    move-object v3, v6

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hssf/record/CFRule12Record;-><init>(BB[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v8
.end method

.method public static create(Lorg/apache/poi/hssf/usermodel/HSSFSheet;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/hssf/record/CFRule12Record;
    .locals 10
    .param p0, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p1, "comparisonOperation"    # B
    .param p2, "formulaText1"    # Ljava/lang/String;
    .param p3, "formulaText2"    # Ljava/lang/String;
    .param p4, "formulaTextScale"    # Ljava/lang/String;

    .line 143
    invoke-static {p2, p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->parseFormula(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v6

    .line 144
    .local v6, "formula1":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-static {p3, p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->parseFormula(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v7

    .line 145
    .local v7, "formula2":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-static {p4, p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->parseFormula(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v8

    .line 146
    .local v8, "formula3":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    new-instance v9, Lorg/apache/poi/hssf/record/CFRule12Record;

    const/4 v1, 0x1

    move-object v0, v9

    move v2, p1

    move-object v3, v6

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hssf/record/CFRule12Record;-><init>(BB[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v9
.end method

.method public static create(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Ljava/lang/String;)Lorg/apache/poi/hssf/record/CFRule12Record;
    .locals 8
    .param p0, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p1, "formulaText"    # Ljava/lang/String;

    .line 107
    invoke-static {p1, p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->parseFormula(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v6

    .line 108
    .local v6, "formula1":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    new-instance v7, Lorg/apache/poi/hssf/record/CFRule12Record;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hssf/record/CFRule12Record;-><init>(BB[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v7
.end method

.method public static create(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/common/ExtendedColor;)Lorg/apache/poi/hssf/record/CFRule12Record;
    .locals 5
    .param p0, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p1, "color"    # Lorg/apache/poi/hssf/record/common/ExtendedColor;

    .line 159
    new-instance v0, Lorg/apache/poi/hssf/record/CFRule12Record;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hssf/record/CFRule12Record;-><init>(BB)V

    .line 161
    .local v0, "r":Lorg/apache/poi/hssf/record/CFRule12Record;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFRule12Record;->createDataBarFormatting()Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    move-result-object v1

    .line 162
    .local v1, "dbf":Lorg/apache/poi/hssf/record/cf/DataBarFormatting;
    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->setColor(Lorg/apache/poi/hssf/record/common/ExtendedColor;)V

    .line 163
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->setPercentMin(B)V

    .line 164
    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->setPercentMax(B)V

    .line 166
    new-instance v2, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;-><init>()V

    .line 167
    .local v2, "min":Lorg/apache/poi/hssf/record/cf/DataBarThreshold;
    sget-object v3, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->MIN:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    iget v3, v3, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->id:I

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;->setType(I)V

    .line 168
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->setThresholdMin(Lorg/apache/poi/hssf/record/cf/DataBarThreshold;)V

    .line 170
    new-instance v3, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-direct {v3}, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;-><init>()V

    .line 171
    .local v3, "max":Lorg/apache/poi/hssf/record/cf/DataBarThreshold;
    sget-object v4, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->MAX:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    iget v4, v4, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->id:I

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;->setType(I)V

    .line 172
    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->setThresholdMax(Lorg/apache/poi/hssf/record/cf/DataBarThreshold;)V

    .line 174
    return-object v0
.end method

.method public static create(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;)Lorg/apache/poi/hssf/record/CFRule12Record;
    .locals 4
    .param p0, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p1, "iconSet"    # Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    .line 186
    iget v0, p1, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->num:I

    new-array v0, v0, [Lorg/apache/poi/hssf/record/cf/Threshold;

    .line 187
    .local v0, "ts":[Lorg/apache/poi/hssf/record/cf/Threshold;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 188
    new-instance v2, Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;-><init>()V

    aput-object v2, v0, v1

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lorg/apache/poi/hssf/record/CFRule12Record;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/hssf/record/CFRule12Record;-><init>(BB)V

    .line 193
    .local v1, "r":Lorg/apache/poi/hssf/record/CFRule12Record;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/CFRule12Record;->createMultiStateFormatting()Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    move-result-object v2

    .line 194
    .local v2, "imf":Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;
    invoke-virtual {v2, p1}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->setIconSet(Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;)V

    .line 195
    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->setThresholds([Lorg/apache/poi/hssf/record/cf/Threshold;)V

    .line 196
    return-object v1
.end method

.method public static createColorScale(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)Lorg/apache/poi/hssf/record/CFRule12Record;
    .locals 6
    .param p0, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 207
    const/4 v0, 0x3

    .line 208
    .local v0, "numPoints":I
    new-array v1, v0, [Lorg/apache/poi/hssf/record/common/ExtendedColor;

    .line 209
    .local v1, "colors":[Lorg/apache/poi/hssf/record/common/ExtendedColor;
    new-array v2, v0, [Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    .line 210
    .local v2, "ts":[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 211
    new-instance v4, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    invoke-direct {v4}, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;-><init>()V

    aput-object v4, v2, v3

    .line 212
    new-instance v4, Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-direct {v4}, Lorg/apache/poi/hssf/record/common/ExtendedColor;-><init>()V

    aput-object v4, v1, v3

    .line 210
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 215
    .end local v3    # "i":I
    :cond_0
    new-instance v3, Lorg/apache/poi/hssf/record/CFRule12Record;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/hssf/record/CFRule12Record;-><init>(BB)V

    .line 217
    .local v3, "r":Lorg/apache/poi/hssf/record/CFRule12Record;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/CFRule12Record;->createColorGradientFormatting()Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    move-result-object v4

    .line 218
    .local v4, "cgf":Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;
    invoke-virtual {v4, v0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->setNumControlPoints(I)V

    .line 219
    invoke-virtual {v4, v2}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->setThresholds([Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;)V

    .line 220
    invoke-virtual {v4, v1}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->setColors([Lorg/apache/poi/hssf/record/common/ExtendedColor;)V

    .line 221
    return-object v3
.end method

.method private setDefaults()V
    .locals 2

    .line 83
    new-instance v0, Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/common/FtrHeader;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    .line 84
    const/16 v1, 0x87a

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/common/FtrHeader;->setRecordType(S)V

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_length:I

    .line 87
    const/4 v1, 0x4

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_data:[B

    .line 89
    sget-object v1, Lorg/apache/poi/ss/formula/ptg/Ptg;->EMPTY_PTG_ARRAY:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-static {v1}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->formula_scale:Lorg/apache/poi/ss/formula/Formula;

    .line 91
    iput-byte v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_opts:B

    .line 92
    iput v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->priority:I

    .line 93
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->getConditionType()B

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_type:I

    .line 94
    const/16 v0, 0x10

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_param_length:B

    .line 95
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_params:[B

    .line 96
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

    .line 52
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->clone()Lorg/apache/poi/hssf/record/CFRule12Record;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/CFRule12Record;
    .locals 5

    .line 460
    new-instance v0, Lorg/apache/poi/hssf/record/CFRule12Record;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->getConditionType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->getComparisonOperation()B

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hssf/record/CFRule12Record;-><init>(BB)V

    .line 461
    .local v0, "rec":Lorg/apache/poi/hssf/record/CFRule12Record;
    iget-object v1, v0, Lorg/apache/poi/hssf/record/CFRule12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/common/FtrHeader;->getAssociatedRange()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddress;->copy()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/common/FtrHeader;->setAssociatedRange(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    .line 463
    invoke-super {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->copyTo(Lorg/apache/poi/hssf/record/CFRuleBase;)V

    .line 467
    iget v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_length:I

    iget-object v2, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_data:[B

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_length:I

    .line 468
    iget v2, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_length:I

    new-array v2, v2, [B

    iput-object v2, v0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_data:[B

    .line 469
    iget-object v3, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_data:[B

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 471
    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->formula_scale:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/Formula;->copy()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/hssf/record/CFRule12Record;->formula_scale:Lorg/apache/poi/ss/formula/Formula;

    .line 473
    iget-byte v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_opts:B

    iput-byte v1, v0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_opts:B

    .line 474
    iget v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->priority:I

    iput v1, v0, Lorg/apache/poi/hssf/record/CFRule12Record;->priority:I

    .line 475
    iget v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_type:I

    iput v1, v0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_type:I

    .line 476
    iget-byte v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_param_length:B

    iput-byte v1, v0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_param_length:B

    .line 477
    iget-byte v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_param_length:B

    new-array v2, v1, [B

    iput-object v2, v0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_params:[B

    .line 478
    iget-object v3, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_params:[B

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 480
    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->color_gradient:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    if-eqz v1, :cond_0

    .line 481
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/CFRule12Record;->color_gradient:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    .line 483
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->multistate:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    if-eqz v1, :cond_1

    .line 484
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/CFRule12Record;->multistate:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    .line 486
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->data_bar:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    if-eqz v1, :cond_2

    .line 487
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/CFRule12Record;->data_bar:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    .line 489
    :cond_2
    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->filter_data:[B

    if-eqz v1, :cond_3

    .line 490
    array-length v1, v1

    new-array v1, v1, [B

    iput-object v1, v0, Lorg/apache/poi/hssf/record/CFRule12Record;->filter_data:[B

    .line 491
    iget-object v2, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->filter_data:[B

    array-length v3, v2

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 494
    :cond_3
    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/hssf/record/CFRuleBase;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->clone()Lorg/apache/poi/hssf/record/CFRule12Record;

    move-result-object v0

    return-object v0
.end method

.method public containsColorGradientBlock()Z
    .locals 1

    .line 305
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->color_gradient:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsDataBarBlock()Z
    .locals 1

    .line 275
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->data_bar:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsMultiStateBlock()Z
    .locals 1

    .line 290
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->multistate:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public createColorGradientFormatting()Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;
    .locals 1

    .line 311
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->color_gradient:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    if-eqz v0, :cond_0

    return-object v0

    .line 314
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/CFRule12Record;->setConditionType(B)V

    .line 315
    new-instance v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->color_gradient:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    .line 316
    return-object v0
.end method

.method public createDataBarFormatting()Lorg/apache/poi/hssf/record/cf/DataBarFormatting;
    .locals 1

    .line 281
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->data_bar:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    if-eqz v0, :cond_0

    return-object v0

    .line 284
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/CFRule12Record;->setConditionType(B)V

    .line 285
    new-instance v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->data_bar:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    .line 286
    return-object v0
.end method

.method public createMultiStateFormatting()Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;
    .locals 1

    .line 296
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->multistate:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    if-eqz v0, :cond_0

    return-object v0

    .line 299
    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/CFRule12Record;->setConditionType(B)V

    .line 300
    new-instance v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->multistate:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    .line 301
    return-object v0
.end method

.method public getAssociatedRange()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    .line 504
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/FtrHeader;->getAssociatedRange()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    return-object v0
.end method

.method public getColorGradientFormatting()Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;
    .locals 1

    .line 308
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->color_gradient:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    return-object v0
.end method

.method public getDataBarFormatting()Lorg/apache/poi/hssf/record/cf/DataBarFormatting;
    .locals 1

    .line 278
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->data_bar:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    return-object v0
.end method

.method protected getDataSize()I
    .locals 5

    .line 397
    invoke-static {}, Lorg/apache/poi/hssf/record/common/FtrHeader;->getDataSize()I

    move-result v0

    const/4 v1, 0x6

    add-int/2addr v0, v1

    .line 398
    .local v0, "len":I
    iget v2, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_length:I

    const/4 v3, 0x4

    if-nez v2, :cond_0

    .line 399
    add-int/2addr v0, v1

    goto :goto_0

    .line 401
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->getFormattingBlockSize()I

    move-result v2

    add-int/2addr v2, v3

    iget-object v4, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_data:[B

    array-length v4, v4

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    .line 403
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->getFormula1()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/hssf/record/CFRule12Record;->getFormulaSize(Lorg/apache/poi/ss/formula/Formula;)I

    move-result v2

    add-int/2addr v0, v2

    .line 404
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->getFormula2()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/hssf/record/CFRule12Record;->getFormulaSize(Lorg/apache/poi/ss/formula/Formula;)I

    move-result v2

    add-int/2addr v0, v2

    .line 405
    iget-object v2, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->formula_scale:Lorg/apache/poi/ss/formula/Formula;

    invoke-static {v2}, Lorg/apache/poi/hssf/record/CFRule12Record;->getFormulaSize(Lorg/apache/poi/ss/formula/Formula;)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 406
    iget-object v2, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_params:[B

    array-length v2, v2

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 408
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->getConditionType()B

    move-result v2

    .line 409
    .local v2, "type":B
    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 410
    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->color_gradient:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->getDataLength()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    .line 411
    :cond_1
    if-ne v2, v3, :cond_2

    .line 412
    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->data_bar:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->getDataLength()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    .line 413
    :cond_2
    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 414
    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->filter_data:[B

    array-length v1, v1

    add-int/2addr v0, v1

    goto :goto_1

    .line 415
    :cond_3
    if-ne v2, v1, :cond_4

    .line 416
    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->multistate:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->getDataLength()I

    move-result v1

    add-int/2addr v0, v1

    .line 418
    :cond_4
    :goto_1
    return v0
.end method

.method public getFutureHeader()Lorg/apache/poi/hssf/record/common/FtrHeader;
    .locals 1

    .line 501
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    return-object v0
.end method

.method public getFutureRecordType()S
    .locals 1

    .line 498
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/FtrHeader;->getRecordType()S

    move-result v0

    return v0
.end method

.method public getMultiStateFormatting()Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;
    .locals 1

    .line 293
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->multistate:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    return-object v0
.end method

.method public getParsedExpressionScale()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    .line 328
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->formula_scale:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 335
    iget v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->priority:I

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 342
    const/16 v0, 0x87a

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 4
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 353
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/common/FtrHeader;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 355
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->getFormula1()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRule12Record;->getFormulaSize(Lorg/apache/poi/ss/formula/Formula;)I

    move-result v0

    .line 356
    .local v0, "formula1Len":I
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->getFormula2()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/hssf/record/CFRule12Record;->getFormulaSize(Lorg/apache/poi/ss/formula/Formula;)I

    move-result v1

    .line 358
    .local v1, "formula2Len":I
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->getConditionType()B

    move-result v2

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 359
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->getComparisonOperation()B

    move-result v2

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 360
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 361
    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 364
    iget v2, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_length:I

    if-nez v2, :cond_0

    .line 365
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 366
    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    goto :goto_0

    .line 368
    :cond_0
    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 369
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/CFRule12Record;->serializeFormattingBlock(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 370
    iget-object v2, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_data:[B

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    .line 373
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->getFormula1()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/poi/ss/formula/Formula;->serializeTokens(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 374
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->getFormula2()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/poi/ss/formula/Formula;->serializeTokens(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 375
    iget-object v2, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->formula_scale:Lorg/apache/poi/ss/formula/Formula;

    invoke-static {v2}, Lorg/apache/poi/hssf/record/CFRule12Record;->getFormulaSize(Lorg/apache/poi/ss/formula/Formula;)I

    move-result v2

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 376
    iget-object v2, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->formula_scale:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v2, p1}, Lorg/apache/poi/ss/formula/Formula;->serializeTokens(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 378
    iget-byte v2, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_opts:B

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 379
    iget v2, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->priority:I

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 380
    iget v2, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_type:I

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 381
    iget-byte v2, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_param_length:B

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 382
    iget-object v2, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_params:[B

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    .line 384
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->getConditionType()B

    move-result v2

    .line 385
    .local v2, "type":B
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 386
    iget-object v3, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->color_gradient:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    invoke-virtual {v3, p1}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_1

    .line 387
    :cond_1
    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 388
    iget-object v3, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->data_bar:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    invoke-virtual {v3, p1}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_1

    .line 389
    :cond_2
    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 390
    iget-object v3, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->filter_data:[B

    invoke-interface {p1, v3}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    goto :goto_1

    .line 391
    :cond_3
    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    .line 392
    iget-object v3, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->multistate:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    invoke-virtual {v3, p1}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 394
    :cond_4
    :goto_1
    return-void
.end method

.method public setParsedExpressionScale([Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 1
    .param p1, "ptgs"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 331
    invoke-static {p1}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->formula_scale:Lorg/apache/poi/ss/formula/Formula;

    .line 332
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .line 338
    iput p1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->priority:I

    .line 339
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "[CFRULE12]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    const-string v1, "    .condition_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->getConditionType()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    const-string v1, "    .dxfn12_length =0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_length:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    const-string v1, "    .option_flags  =0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->getOptions()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->containsFontFormattingBlock()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->_fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->containsBorderFormattingBlock()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 431
    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->_borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->containsPatternFormattingBlock()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 434
    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->_patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    :cond_2
    const-string v1, "    .dxfn12_ext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_data:[B

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    const-string v1, "    .formula_1 ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->getFormula1()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    const-string v1, "    .formula_2 ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->getFormula2()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    const-string v1, "    .formula_S ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->formula_scale:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    const-string v1, "    .ext_opts  ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v3, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_opts:B

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    const-string v1, "    .priority  ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->priority:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    const-string v1, "    .template_type  ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_type:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    const-string v1, "    .template_params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_params:[B

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    const-string v1, "    .filter_data    ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->filter_data:[B

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->color_gradient:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    if-eqz v1, :cond_3

    .line 446
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 448
    :cond_3
    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->multistate:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    if-eqz v1, :cond_4

    .line 449
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 451
    :cond_4
    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->data_bar:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    if-eqz v1, :cond_5

    .line 452
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 454
    :cond_5
    const-string v1, "[/CFRULE12]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
