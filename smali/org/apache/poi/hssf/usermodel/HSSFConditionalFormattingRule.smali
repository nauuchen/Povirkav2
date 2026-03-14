.class public final Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;
.super Ljava/lang/Object;
.source "HSSFConditionalFormattingRule.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;


# static fields
.field private static final CELL_COMPARISON:B = 0x1t


# instance fields
.field private final cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

.field private final sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

.field private final workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;


# direct methods
.method constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/CFRuleBase;)V
    .locals 2
    .param p1, "pSheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p2, "pRuleRecord"    # Lorg/apache/poi/hssf/record/CFRuleBase;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-eqz p1, :cond_1

    .line 55
    if-eqz p2, :cond_0

    .line 58
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 59
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 60
    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    .line 61
    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pRuleRecord must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pSheet must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getBorderFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;
    .locals 4
    .param p1, "create"    # Z

    .line 130
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getBorderFormatting()Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    move-result-object v0

    .line 131
    .local v0, "borderFormatting":Lorg/apache/poi/hssf/record/cf/BorderFormatting;
    if-nez v0, :cond_1

    .line 132
    if-nez p1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 133
    :cond_0
    new-instance v1, Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;-><init>()V

    move-object v0, v1

    .line 134
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setBorderFormatting(Lorg/apache/poi/hssf/record/cf/BorderFormatting;)V

    .line 136
    :cond_1
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;-><init>(Lorg/apache/poi/hssf/record/CFRuleBase;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    return-object v1
.end method

.method private getCFRule12Record(Z)Lorg/apache/poi/hssf/record/CFRule12Record;
    .locals 2
    .param p1, "create"    # Z

    .line 87
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    instance-of v1, v0, Lorg/apache/poi/hssf/record/CFRule12Record;

    if-eqz v1, :cond_0

    .line 93
    check-cast v0, Lorg/apache/poi/hssf/record/CFRule12Record;

    return-object v0

    .line 90
    :cond_0
    if-nez p1, :cond_1

    .line 91
    const/4 v0, 0x0

    return-object v0

    .line 90
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t convert a CF into a CF12 record"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getColorScaleFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFColorScaleFormatting;
    .locals 4
    .param p1, "create"    # Z

    .line 235
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getCFRule12Record(Z)Lorg/apache/poi/hssf/record/CFRule12Record;

    move-result-object v0

    .line 236
    .local v0, "cfRule12Record":Lorg/apache/poi/hssf/record/CFRule12Record;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 238
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFRule12Record;->getColorGradientFormatting()Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    move-result-object v2

    .line 239
    .local v2, "colorFormatting":Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;
    if-nez v2, :cond_2

    .line 240
    if-nez p1, :cond_1

    return-object v1

    .line 241
    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFRule12Record;->createColorGradientFormatting()Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    .line 244
    :cond_2
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFColorScaleFormatting;

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-direct {v1, v0, v3}, Lorg/apache/poi/hssf/usermodel/HSSFColorScaleFormatting;-><init>(Lorg/apache/poi/hssf/record/CFRule12Record;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V

    return-object v1
.end method

.method private getDataBarFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFDataBarFormatting;
    .locals 4
    .param p1, "create"    # Z

    .line 182
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getCFRule12Record(Z)Lorg/apache/poi/hssf/record/CFRule12Record;

    move-result-object v0

    .line 183
    .local v0, "cfRule12Record":Lorg/apache/poi/hssf/record/CFRule12Record;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 185
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFRule12Record;->getDataBarFormatting()Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    move-result-object v2

    .line 186
    .local v2, "databarFormatting":Lorg/apache/poi/hssf/record/cf/DataBarFormatting;
    if-nez v2, :cond_2

    .line 187
    if-nez p1, :cond_1

    return-object v1

    .line 188
    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFRule12Record;->createDataBarFormatting()Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    .line 191
    :cond_2
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFDataBarFormatting;

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-direct {v1, v0, v3}, Lorg/apache/poi/hssf/usermodel/HSSFDataBarFormatting;-><init>(Lorg/apache/poi/hssf/record/CFRule12Record;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V

    return-object v1
.end method

.method private getFontFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;
    .locals 4
    .param p1, "create"    # Z

    .line 105
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getFontFormatting()Lorg/apache/poi/hssf/record/cf/FontFormatting;

    move-result-object v0

    .line 106
    .local v0, "fontFormatting":Lorg/apache/poi/hssf/record/cf/FontFormatting;
    if-nez v0, :cond_1

    .line 107
    if-nez p1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 108
    :cond_0
    new-instance v1, Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;-><init>()V

    move-object v0, v1

    .line 109
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setFontFormatting(Lorg/apache/poi/hssf/record/cf/FontFormatting;)V

    .line 111
    :cond_1
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;-><init>(Lorg/apache/poi/hssf/record/CFRuleBase;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    return-object v1
.end method

.method private getMultiStateFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;
    .locals 4
    .param p1, "create"    # Z

    .line 209
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getCFRule12Record(Z)Lorg/apache/poi/hssf/record/CFRule12Record;

    move-result-object v0

    .line 210
    .local v0, "cfRule12Record":Lorg/apache/poi/hssf/record/CFRule12Record;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 212
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFRule12Record;->getMultiStateFormatting()Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    move-result-object v2

    .line 213
    .local v2, "iconFormatting":Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;
    if-nez v2, :cond_2

    .line 214
    if-nez p1, :cond_1

    return-object v1

    .line 215
    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFRule12Record;->createMultiStateFormatting()Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    .line 217
    :cond_2
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-direct {v1, v0, v3}, Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;-><init>(Lorg/apache/poi/hssf/record/CFRule12Record;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V

    return-object v1
.end method

.method private getPatternFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;
    .locals 4
    .param p1, "create"    # Z

    .line 155
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getPatternFormatting()Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    move-result-object v0

    .line 156
    .local v0, "patternFormatting":Lorg/apache/poi/hssf/record/cf/PatternFormatting;
    if-nez v0, :cond_1

    .line 157
    if-nez p1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 158
    :cond_0
    new-instance v1, Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/cf/PatternFormatting;-><init>()V

    move-object v0, v1

    .line 159
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setPatternFormatting(Lorg/apache/poi/hssf/record/cf/PatternFormatting;)V

    .line 161
    :cond_1
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;-><init>(Lorg/apache/poi/hssf/record/CFRuleBase;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    return-object v1
.end method

.method protected static toFormulaString([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Ljava/lang/String;
    .locals 1
    .param p0, "parsedExpression"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p1, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 312
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 315
    :cond_0
    invoke-static {p1, p0}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->toFormulaString(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 313
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public createBorderFormatting()Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;
    .locals 1

    .line 151
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getBorderFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createBorderFormatting()Lorg/apache/poi/ss/usermodel/BorderFormatting;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->createBorderFormatting()Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;

    move-result-object v0

    return-object v0
.end method

.method public createColorScaleFormatting()Lorg/apache/poi/hssf/usermodel/HSSFColorScaleFormatting;
    .locals 1

    .line 258
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getColorScaleFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFColorScaleFormatting;

    move-result-object v0

    return-object v0
.end method

.method public createDataBarFormatting()Lorg/apache/poi/hssf/usermodel/HSSFDataBarFormatting;
    .locals 1

    .line 205
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getDataBarFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFDataBarFormatting;

    move-result-object v0

    return-object v0
.end method

.method public createFontFormatting()Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;
    .locals 1

    .line 126
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getFontFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFontFormatting()Lorg/apache/poi/ss/usermodel/FontFormatting;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->createFontFormatting()Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;

    move-result-object v0

    return-object v0
.end method

.method public createMultiStateFormatting()Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;
    .locals 1

    .line 231
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getMultiStateFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;

    move-result-object v0

    return-object v0
.end method

.method public createPatternFormatting()Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;
    .locals 1

    .line 178
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getPatternFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createPatternFormatting()Lorg/apache/poi/ss/usermodel/PatternFormatting;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->createPatternFormatting()Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;

    move-result-object v0

    return-object v0
.end method

.method public getBorderFormatting()Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;
    .locals 1

    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getBorderFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBorderFormatting()Lorg/apache/poi/ss/usermodel/BorderFormatting;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getBorderFormatting()Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;

    move-result-object v0

    return-object v0
.end method

.method getCfRuleRecord()Lorg/apache/poi/hssf/record/CFRuleBase;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    return-object v0
.end method

.method public getColorScaleFormatting()Lorg/apache/poi/hssf/usermodel/HSSFColorScaleFormatting;
    .locals 1

    .line 251
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getColorScaleFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFColorScaleFormatting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getColorScaleFormatting()Lorg/apache/poi/ss/usermodel/ColorScaleFormatting;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getColorScaleFormatting()Lorg/apache/poi/hssf/usermodel/HSSFColorScaleFormatting;

    move-result-object v0

    return-object v0
.end method

.method public getComparisonOperation()B
    .locals 1

    .line 287
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getComparisonOperation()B

    move-result v0

    return v0
.end method

.method public getConditionFilterType()Lorg/apache/poi/ss/usermodel/ConditionFilterType;
    .locals 2

    .line 275
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getConditionType()Lorg/apache/poi/ss/usermodel/ConditionType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/ConditionType;->FILTER:Lorg/apache/poi/ss/usermodel/ConditionType;

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->FILTER:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getConditionType()Lorg/apache/poi/ss/usermodel/ConditionType;
    .locals 2

    .line 266
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getConditionType()B

    move-result v0

    .line 267
    .local v0, "code":B
    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/ConditionType;->forId(B)Lorg/apache/poi/ss/usermodel/ConditionType;

    move-result-object v1

    return-object v1
.end method

.method public getDataBarFormatting()Lorg/apache/poi/hssf/usermodel/HSSFDataBarFormatting;
    .locals 1

    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getDataBarFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFDataBarFormatting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataBarFormatting()Lorg/apache/poi/ss/usermodel/DataBarFormatting;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getDataBarFormatting()Lorg/apache/poi/hssf/usermodel/HSSFDataBarFormatting;

    move-result-object v0

    return-object v0
.end method

.method public getFilterConfiguration()Lorg/apache/poi/ss/usermodel/ConditionFilterData;
    .locals 1

    .line 279
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFontFormatting()Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;
    .locals 1

    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getFontFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFontFormatting()Lorg/apache/poi/ss/usermodel/FontFormatting;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getFontFormatting()Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;

    move-result-object v0

    return-object v0
.end method

.method public getFormula1()Ljava/lang/String;
    .locals 1

    .line 292
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getParsedExpression1()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->toFormulaString([Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormula2()Ljava/lang/String;
    .locals 3

    .line 296
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getConditionType()B

    move-result v0

    .line 297
    .local v0, "conditionType":B
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 298
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/CFRuleBase;->getComparisonOperation()B

    move-result v2

    .line 299
    .local v2, "comparisonOperation":B
    if-eq v2, v1, :cond_0

    const/4 v1, 0x2

    if-eq v2, v1, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->getParsedExpression2()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->toFormulaString([Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 305
    .end local v2    # "comparisonOperation":B
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMultiStateFormatting()Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;
    .locals 1

    .line 224
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getMultiStateFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMultiStateFormatting()Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getMultiStateFormatting()Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;

    move-result-object v0

    return-object v0
.end method

.method public getNumberFormat()Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;
    .locals 1

    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPatternFormatting()Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;
    .locals 1

    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getPatternFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPatternFormatting()Lorg/apache/poi/ss/usermodel/PatternFormatting;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getPatternFormatting()Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 2

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getCFRule12Record(Z)Lorg/apache/poi/hssf/record/CFRule12Record;

    move-result-object v1

    .line 71
    .local v1, "rule12":Lorg/apache/poi/hssf/record/CFRule12Record;
    if-nez v1, :cond_0

    return v0

    .line 72
    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/CFRule12Record;->getPriority()I

    move-result v0

    return v0
.end method

.method public getStopIfTrue()Z
    .locals 1

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public getStripeSize()I
    .locals 1

    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method protected toFormulaString([Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;
    .locals 1
    .param p1, "parsedExpression"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 309
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-static {p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->toFormulaString([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
