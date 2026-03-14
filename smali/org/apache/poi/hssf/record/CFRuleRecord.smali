.class public final Lorg/apache/poi/hssf/record/CFRuleRecord;
.super Lorg/apache/poi/hssf/record/CFRuleBase;
.source "CFRuleRecord.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final sid:S = 0x1b1s


# direct methods
.method private constructor <init>(BB)V
    .locals 0
    .param p1, "conditionType"    # B
    .param p2, "comparisonOperation"    # B

    .line 39
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/record/CFRuleBase;-><init>(BB)V

    .line 40
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setDefaults()V

    .line 41
    return-void
.end method

.method private constructor <init>(BB[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 0
    .param p1, "conditionType"    # B
    .param p2, "comparisonOperation"    # B
    .param p3, "formula1"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p4, "formula2"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/hssf/record/CFRuleBase;-><init>(BB[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 45
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setDefaults()V

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 90
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;-><init>()V

    .line 91
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setConditionType(B)V

    .line 92
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setComparisonOperation(B)V

    .line 93
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    .line 94
    .local v0, "field_3_formula1_len":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v1

    .line 95
    .local v1, "field_4_formula2_len":I
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/CFRuleRecord;->readFormatOptions(Lorg/apache/poi/hssf/record/RecordInputStream;)I

    .line 98
    invoke-static {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setFormula1(Lorg/apache/poi/ss/formula/Formula;)V

    .line 99
    invoke-static {v1, p1}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setFormula2(Lorg/apache/poi/ss/formula/Formula;)V

    .line 100
    return-void
.end method

.method public static create(Lorg/apache/poi/hssf/usermodel/HSSFSheet;BLjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/hssf/record/CFRuleRecord;
    .locals 4
    .param p0, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p1, "comparisonOperation"    # B
    .param p2, "formulaText1"    # Ljava/lang/String;
    .param p3, "formulaText2"    # Ljava/lang/String;

    .line 85
    invoke-static {p2, p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->parseFormula(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    .line 86
    .local v0, "formula1":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-static {p3, p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->parseFormula(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    .line 87
    .local v1, "formula2":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    new-instance v2, Lorg/apache/poi/hssf/record/CFRuleRecord;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p1, v0, v1}, Lorg/apache/poi/hssf/record/CFRuleRecord;-><init>(BB[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v2
.end method

.method public static create(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Ljava/lang/String;)Lorg/apache/poi/hssf/record/CFRuleRecord;
    .locals 5
    .param p0, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p1, "formulaText"    # Ljava/lang/String;

    .line 69
    invoke-static {p1, p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->parseFormula(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    .line 70
    .local v0, "formula1":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    new-instance v1, Lorg/apache/poi/hssf/record/CFRuleRecord;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lorg/apache/poi/hssf/record/CFRuleRecord;-><init>(BB[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v1
.end method

.method private setDefaults()V
    .locals 3

    .line 49
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->modificationBits:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->formatting_options:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->formatting_options:I

    .line 51
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->fmtBlockBits:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->formatting_options:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->formatting_options:I

    .line 52
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->undocumented:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->formatting_options:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->clear(I)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->formatting_options:I

    .line 54
    const/16 v0, -0x7ffe

    iput-short v0, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->formatting_not_used:S

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->_fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    .line 56
    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->_borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    .line 57
    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->_patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    .line 58
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

    .line 34
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->clone()Lorg/apache/poi/hssf/record/CFRuleRecord;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/hssf/record/CFRuleBase;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->clone()Lorg/apache/poi/hssf/record/CFRuleRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/CFRuleRecord;
    .locals 3

    .line 160
    new-instance v0, Lorg/apache/poi/hssf/record/CFRuleRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getConditionType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getComparisonOperation()B

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hssf/record/CFRuleRecord;-><init>(BB)V

    .line 161
    .local v0, "rec":Lorg/apache/poi/hssf/record/CFRuleRecord;
    invoke-super {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->copyTo(Lorg/apache/poi/hssf/record/CFRuleBase;)V

    .line 162
    return-object v0
.end method

.method protected getDataSize()I
    .locals 2

    .line 132
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getFormattingBlockSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getFormula1()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getFormulaSize(Lorg/apache/poi/ss/formula/Formula;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getFormula2()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getFormulaSize(Lorg/apache/poi/ss/formula/Formula;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 104
    const/16 v0, 0x1b1

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 116
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getFormula1()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getFormulaSize(Lorg/apache/poi/ss/formula/Formula;)I

    move-result v0

    .line 117
    .local v0, "formula1Len":I
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getFormula2()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getFormulaSize(Lorg/apache/poi/ss/formula/Formula;)I

    move-result v1

    .line 119
    .local v1, "formula2Len":I
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getConditionType()B

    move-result v2

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 120
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getComparisonOperation()B

    move-result v2

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 121
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 122
    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 124
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/CFRuleRecord;->serializeFormattingBlock(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 126
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getFormula1()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/poi/ss/formula/Formula;->serializeTokens(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 127
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getFormula2()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/poi/ss/formula/Formula;->serializeTokens(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 128
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 139
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 140
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[CFRULE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    const-string v1, "    .condition_type   ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getConditionType()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    const-string v1, "    OPTION FLAGS=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getOptions()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->containsFontFormattingBlock()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->_fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->containsBorderFormattingBlock()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->_borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->containsPatternFormattingBlock()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->_patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    :cond_2
    const-string v1, "    Formula 1 ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getFormula1()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    const-string v1, "    Formula 2 ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getFormula2()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    const-string v1, "[/CFRULE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
