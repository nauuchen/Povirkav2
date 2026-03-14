.class public Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;
.super Ljava/lang/Object;
.source "XSSFConditionalFormatting.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/ConditionalFormatting;


# instance fields
.field private final _cf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;

.field private final _sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;


# direct methods
.method constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    .locals 1
    .param p1, "sh"    # Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;->_cf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;

    .line 39
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 40
    return-void
.end method

.method constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;)V
    .locals 0
    .param p1, "sh"    # Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .param p2, "cf"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;->_cf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;

    .line 45
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 46
    return-void
.end method


# virtual methods
.method public addRule(Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;)V
    .locals 3
    .param p1, "cfRule"    # Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;

    .line 107
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    .line 108
    .local v0, "xRule":Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;->_cf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;->addNewCfRule()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getCTCfRule()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 109
    return-void
.end method

.method getCTConditionalFormatting()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;->_cf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;

    return-object v0
.end method

.method public getFormattingRanges()[Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 9

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v0, "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/poi/ss/util/CellRangeAddress;>;"
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;->_cf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;->getSqref()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 59
    .local v2, "stRef":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "regions":[Ljava/lang/String;
    move-object v4, v3

    .local v4, "arr$":[Ljava/lang/String;
    array-length v5, v4

    .local v5, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 61
    .local v7, "region":Ljava/lang/String;
    invoke-static {v7}, Lorg/apache/poi/ss/util/CellRangeAddress;->valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .end local v7    # "region":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 63
    .end local v2    # "stRef":Ljava/lang/Object;
    .end local v3    # "regions":[Ljava/lang/String;
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_0
    goto :goto_0

    .line 64
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/poi/ss/util/CellRangeAddress;

    return-object v1
.end method

.method public getNumberOfRules()I
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;->_cf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;->sizeOfCfRuleArray()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getRule(I)Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    .locals 1
    .param p1, "x0"    # I

    .line 33
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;->getRule(I)Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    move-result-object v0

    return-object v0
.end method

.method public getRule(I)Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;
    .locals 3
    .param p1, "idx"    # I

    .line 116
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;->_cf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;

    invoke-interface {v2, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;->getCfRuleArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;)V

    return-object v0
.end method

.method public setFormattingRanges([Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 7
    .param p1, "ranges"    # [Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 69
    if-eqz p1, :cond_2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 74
    .local v1, "first":Z
    move-object v2, p1

    .local v2, "arr$":[Lorg/apache/poi/ss/util/CellRangeAddress;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 75
    .local v5, "range":Lorg/apache/poi/ss/util/CellRangeAddress;
    if-nez v1, :cond_0

    .line 76
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 78
    :cond_0
    const/4 v1, 0x0

    .line 80
    :goto_1
    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .end local v5    # "range":Lorg/apache/poi/ss/util/CellRangeAddress;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 82
    .end local v2    # "arr$":[Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_1
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;->_cf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;->setSqref(Ljava/util/List;)V

    .line 83
    return-void

    .line 70
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "first":Z
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cellRanges must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRule(ILorg/apache/poi/ss/usermodel/ConditionalFormattingRule;)V
    .locals 3
    .param p1, "idx"    # I
    .param p2, "cfRule"    # Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;

    .line 95
    move-object v0, p2

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    .line 96
    .local v0, "xRule":Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;->_cf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;->getCfRuleArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getCTCfRule()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 97
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;->_cf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
