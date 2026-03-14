.class public final Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;
.super Ljava/lang/Object;
.source "HSSFConditionalFormatting.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/ConditionalFormatting;


# instance fields
.field private final cfAggregate:Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

.field private final sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;


# direct methods
.method constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;)V
    .locals 2
    .param p1, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p2, "cfAggregate"    # Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    if-eqz p1, :cond_1

    .line 84
    if-eqz p2, :cond_0

    .line 87
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 88
    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->cfAggregate:Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    .line 89
    return-void

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cfAggregate must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sheet must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addRule(Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;)V
    .locals 2
    .param p1, "cfRule"    # Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    .line 132
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->cfAggregate:Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getCfRuleRecord()Lorg/apache/poi/hssf/record/CFRuleBase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->addRule(Lorg/apache/poi/hssf/record/CFRuleBase;)V

    .line 133
    return-void
.end method

.method public addRule(Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;)V
    .locals 1
    .param p1, "cfRule"    # Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;

    .line 137
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->addRule(Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;)V

    .line 138
    return-void
.end method

.method getCFRecordsAggregate()Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->cfAggregate:Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    return-object v0
.end method

.method public getFormattingRanges()[Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->cfAggregate:Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->getHeader()Lorg/apache/poi/hssf/record/CFHeaderBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->getCellRanges()[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfRules()I
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->cfAggregate:Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->getNumberOfRules()I

    move-result v0

    return v0
.end method

.method public getRule(I)Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;
    .locals 3
    .param p1, "idx"    # I

    .line 145
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->cfAggregate:Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->getRule(I)Lorg/apache/poi/hssf/record/CFRuleBase;

    move-result-object v0

    .line 146
    .local v0, "ruleRecord":Lorg/apache/poi/hssf/record/CFRuleBase;
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/CFRuleBase;)V

    return-object v1
.end method

.method public bridge synthetic getRule(I)Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    .locals 1
    .param p1, "x0"    # I

    .line 76
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->getRule(I)Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    move-result-object v0

    return-object v0
.end method

.method public setFormattingRanges([Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 1
    .param p1, "ranges"    # [Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 105
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->cfAggregate:Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->getHeader()Lorg/apache/poi/hssf/record/CFHeaderBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/CFHeaderBase;->setCellRanges([Lorg/apache/poi/ss/util/CellRangeAddress;)V

    .line 106
    return-void
.end method

.method public setRule(ILorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;)V
    .locals 2
    .param p1, "idx"    # I
    .param p2, "cfRule"    # Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    .line 118
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->cfAggregate:Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    invoke-virtual {p2}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getCfRuleRecord()Lorg/apache/poi/hssf/record/CFRuleBase;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->setRule(ILorg/apache/poi/hssf/record/CFRuleBase;)V

    .line 119
    return-void
.end method

.method public setRule(ILorg/apache/poi/ss/usermodel/ConditionalFormattingRule;)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "cfRule"    # Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;

    .line 123
    move-object v0, p2

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->setRule(ILorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;)V

    .line 124
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->cfAggregate:Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
