.class public Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;
.super Ljava/lang/Object;
.source "HSSFPatternFormatting.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/PatternFormatting;


# instance fields
.field private final cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

.field private final patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

.field private final workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;


# direct methods
.method protected constructor <init>(Lorg/apache/poi/hssf/record/CFRuleBase;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 1
    .param p1, "cfRuleRecord"    # Lorg/apache/poi/hssf/record/CFRuleBase;
    .param p2, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 35
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    .line 36
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/CFRuleBase;->getPatternFormatting()Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    .line 37
    return-void
.end method


# virtual methods
.method public getFillBackgroundColor()S
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->getFillBackgroundColor()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getFillBackgroundColorColor()Lorg/apache/poi/hssf/util/HSSFColor;
    .locals 2

    .line 45
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getCustomPalette()Lorg/apache/poi/hssf/usermodel/HSSFPalette;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->getFillBackgroundColor()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->getColor(S)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFillBackgroundColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->getFillBackgroundColorColor()Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getFillForegroundColor()S
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->getFillForegroundColor()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getFillForegroundColorColor()Lorg/apache/poi/hssf/util/HSSFColor;
    .locals 2

    .line 49
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getCustomPalette()Lorg/apache/poi/hssf/usermodel/HSSFPalette;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->getFillForegroundColor()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->getColor(S)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFillForegroundColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->getFillForegroundColorColor()Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getFillPattern()S
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->getFillPattern()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method protected getPatternFormattingBlock()Lorg/apache/poi/hssf/record/cf/PatternFormatting;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    return-object v0
.end method

.method public setFillBackgroundColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 2
    .param p1, "bg"    # Lorg/apache/poi/ss/usermodel/Color;

    .line 77
    invoke-static {p1}, Lorg/apache/poi/hssf/util/HSSFColor;->toHSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    .line 78
    .local v0, "hcolor":Lorg/apache/poi/hssf/util/HSSFColor;
    if-nez v0, :cond_0

    .line 79
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->setFillBackgroundColor(S)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/HSSFColor;->getIndex()S

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->setFillBackgroundColor(S)V

    .line 83
    :goto_0
    return-void
.end method

.method public setFillBackgroundColor(S)V
    .locals 2
    .param p1, "bg"    # S

    .line 100
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->setFillBackgroundColor(I)V

    .line 101
    if-eqz p1, :cond_0

    .line 103
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setPatternBackgroundColorModified(Z)V

    .line 105
    :cond_0
    return-void
.end method

.method public setFillForegroundColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 2
    .param p1, "fg"    # Lorg/apache/poi/ss/usermodel/Color;

    .line 86
    invoke-static {p1}, Lorg/apache/poi/hssf/util/HSSFColor;->toHSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    .line 87
    .local v0, "hcolor":Lorg/apache/poi/hssf/util/HSSFColor;
    if-nez v0, :cond_0

    .line 88
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->setFillForegroundColor(S)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/HSSFColor;->getIndex()S

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->setFillForegroundColor(S)V

    .line 92
    :goto_0
    return-void
.end method

.method public setFillForegroundColor(S)V
    .locals 2
    .param p1, "fg"    # S

    .line 113
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->setFillForegroundColor(I)V

    .line 114
    if-eqz p1, :cond_0

    .line 116
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setPatternColorModified(Z)V

    .line 118
    :cond_0
    return-void
.end method

.method public setFillPattern(S)V
    .locals 2
    .param p1, "fp"    # S

    .line 126
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->setFillPattern(I)V

    .line 127
    if-eqz p1, :cond_0

    .line 129
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setPatternStyleModified(Z)V

    .line 131
    :cond_0
    return-void
.end method
