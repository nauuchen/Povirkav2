.class public Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;
.super Ljava/lang/Object;
.source "XSSFSheetConditionalFormatting.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/SheetConditionalFormatting;


# static fields
.field protected static final CF_EXT_2009_NS_X14:Ljava/lang/String; = "http://schemas.microsoft.com/office/spreadsheetml/2009/9/main"


# instance fields
.field private final _sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;


# direct methods
.method constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    .locals 0
    .param p1, "sheet"    # Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 51
    return-void
.end method

.method private checkIndex(I)V
    .locals 4
    .param p1, "index"    # I

    .line 288
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->getNumConditionalFormattings()I

    move-result v0

    .line 289
    .local v0, "cnt":I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 293
    return-void

    .line 290
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Specified CF index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is outside the allowable range (0.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addConditionalFormatting(Lorg/apache/poi/ss/usermodel/ConditionalFormatting;)I
    .locals 4
    .param p1, "cf"    # Lorg/apache/poi/ss/usermodel/ConditionalFormatting;

    .line 252
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;

    .line 253
    .local v0, "xcf":Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v1

    .line 254
    .local v1, "sh":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewConditionalFormatting()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;->getCTConditionalFormatting()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 255
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->sizeOfConditionalFormattingArray()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    return v2
.end method

.method public addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;)I
    .locals 3
    .param p1, "regions"    # [Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "rule1"    # Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;

    .line 223
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    const/4 v1, 0x0

    move-object v2, p2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    aput-object v2, v0, v1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;)I

    move-result v0

    return v0
.end method

.method public addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;)I
    .locals 3
    .param p1, "regions"    # [Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "rule1"    # Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    .param p3, "rule2"    # Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;

    .line 232
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    const/4 v1, 0x0

    move-object v2, p2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    move-object v2, p3

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    aput-object v2, v0, v1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;)I

    move-result v0

    return v0
.end method

.method public addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;)I
    .locals 11
    .param p1, "regions"    # [Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "cfRules"    # [Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;

    .line 186
    if-eqz p1, :cond_7

    .line 189
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/poi/ss/util/CellRangeAddress;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .local v3, "range":Lorg/apache/poi/ss/util/CellRangeAddress;
    sget-object v4, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v3, v4}, Lorg/apache/poi/ss/util/CellRangeAddress;->validate(Lorg/apache/poi/ss/SpreadsheetVersion;)V

    .end local v3    # "range":Lorg/apache/poi/ss/util/CellRangeAddress;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    .end local v0    # "arr$":[Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    if-eqz p2, :cond_6

    .line 194
    array-length v0, p2

    if-eqz v0, :cond_5

    .line 197
    array-length v0, p2

    const/4 v1, 0x3

    if-gt v0, v1, :cond_4

    .line 201
    invoke-static {p1}, Lorg/apache/poi/ss/util/CellRangeUtil;->mergeCellRanges([Lorg/apache/poi/ss/util/CellRangeAddress;)[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    .line 202
    .local v0, "mergeCellRanges":[Lorg/apache/poi/ss/util/CellRangeAddress;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewConditionalFormatting()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;

    move-result-object v1

    .line 203
    .local v1, "cf":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v2, "refs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v3, v0

    .local v3, "arr$":[Lorg/apache/poi/ss/util/CellRangeAddress;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .local v6, "a":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {v6}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v6    # "a":Lorg/apache/poi/ss/util/CellRangeAddress;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 205
    .end local v3    # "arr$":[Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_1
    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;->setSqref(Ljava/util/List;)V

    .line 207
    const/4 v3, 0x1

    .line 208
    .local v3, "priority":I
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getConditionalFormattingArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;

    move-result-object v4

    .local v4, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;
    array-length v5, v4

    .local v5, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_2
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 209
    .local v7, "c":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;
    invoke-interface {v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;->sizeOfCfRuleArray()I

    move-result v8

    add-int/2addr v3, v8

    .line 208
    .end local v7    # "c":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 212
    .end local v4    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_2
    move-object v4, p2

    .local v4, "arr$":[Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    array-length v5, v4

    .restart local v5    # "len$":I
    const/4 v6, 0x0

    .restart local v6    # "i$":I
    :goto_3
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    .line 213
    .local v7, "rule":Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    move-object v8, v7

    check-cast v8, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    .line 214
    .local v8, "xRule":Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;
    invoke-virtual {v8}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getCTCfRule()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    move-result-object v9

    add-int/lit8 v10, v3, 0x1

    .end local v3    # "priority":I
    .local v10, "priority":I
    invoke-interface {v9, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->setPriority(I)V

    .line 215
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;->addNewCfRule()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    move-result-object v3

    invoke-virtual {v8}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getCTCfRule()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    move-result-object v9

    invoke-interface {v3, v9}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 212
    .end local v7    # "rule":Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    .end local v8    # "xRule":Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;
    add-int/lit8 v6, v6, 0x1

    move v3, v10

    goto :goto_3

    .line 217
    .end local v4    # "arr$":[Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    .end local v10    # "priority":I
    .restart local v3    # "priority":I
    :cond_3
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->sizeOfConditionalFormattingArray()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    return v4

    .line 198
    .end local v0    # "mergeCellRanges":[Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v1    # "cf":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;
    .end local v2    # "refs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "priority":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of rules must not exceed 3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cfRules must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cfRules must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "regions must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic createConditionalFormattingColorScaleRule()Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->createConditionalFormattingColorScaleRule()Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    move-result-object v0

    return-object v0
.end method

.method public createConditionalFormattingColorScaleRule()Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;
    .locals 2

    .line 176
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    .line 179
    .local v0, "rule":Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->createColorScaleFormatting()Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;

    .line 182
    return-object v0
.end method

.method public bridge synthetic createConditionalFormattingRule(BLjava/lang/String;)Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    .locals 1
    .param p1, "x0"    # B
    .param p2, "x1"    # Ljava/lang/String;

    .line 43
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->createConditionalFormattingRule(BLjava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createConditionalFormattingRule(BLjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    .locals 1
    .param p1, "x0"    # B
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;

    .line 43
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->createConditionalFormattingRule(BLjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createConditionalFormattingRule(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .line 43
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->createConditionalFormattingRule(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createConditionalFormattingRule(Lorg/apache/poi/ss/usermodel/ExtendedColor;)Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    .locals 1
    .param p1, "x0"    # Lorg/apache/poi/ss/usermodel/ExtendedColor;

    .line 43
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->createConditionalFormattingRule(Lorg/apache/poi/ss/usermodel/ExtendedColor;)Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createConditionalFormattingRule(Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;)Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    .locals 1
    .param p1, "x0"    # Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    .line 43
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->createConditionalFormattingRule(Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;)Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    move-result-object v0

    return-object v0
.end method

.method public createConditionalFormattingRule(BLjava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;
    .locals 1
    .param p1, "comparisonOperation"    # B
    .param p2, "formula"    # Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->createConditionalFormattingRule(BLjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    move-result-object v0

    return-object v0
.end method

.method public createConditionalFormattingRule(BLjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;
    .locals 6
    .param p1, "comparisonOperation"    # B
    .param p2, "formula1"    # Ljava/lang/String;
    .param p3, "formula2"    # Ljava/lang/String;

    .line 81
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    .line 82
    .local v0, "rule":Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getCTCfRule()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    move-result-object v1

    .line 83
    .local v1, "cfRule":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;
    invoke-interface {v1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->addFormula(Ljava/lang/String;)V

    .line 84
    if-eqz p3, :cond_0

    invoke-interface {v1, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->addFormula(Ljava/lang/String;)V

    .line 85
    :cond_0
    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->CELL_IS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;)V

    .line 87
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 96
    .local v2, "operator":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown comparison operator: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 91
    :pswitch_0
    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator;->LESS_THAN_OR_EQUAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    goto :goto_0

    .line 93
    :pswitch_1
    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator;->GREATER_THAN_OR_EQUAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    goto :goto_0

    .line 90
    :pswitch_2
    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator;->LESS_THAN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    goto :goto_0

    .line 92
    :pswitch_3
    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator;->GREATER_THAN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    goto :goto_0

    .line 95
    :pswitch_4
    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator;->NOT_EQUAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    goto :goto_0

    .line 94
    :pswitch_5
    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator;->EQUAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    goto :goto_0

    .line 89
    :pswitch_6
    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator;->NOT_BETWEEN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    goto :goto_0

    .line 88
    .end local v2    # "operator":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;
    :pswitch_7
    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator;->BETWEEN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    .line 98
    .restart local v2    # "operator":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;
    :goto_0
    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->setOperator(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;)V

    .line 100
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createConditionalFormattingRule(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;
    .locals 3
    .param p1, "formula"    # Ljava/lang/String;

    .line 116
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    .line 117
    .local v0, "rule":Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getCTCfRule()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    move-result-object v1

    .line 118
    .local v1, "cfRule":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->addFormula(Ljava/lang/String;)V

    .line 119
    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->EXPRESSION:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;)V

    .line 120
    return-object v0
.end method

.method public createConditionalFormattingRule(Lorg/apache/poi/ss/usermodel/ExtendedColor;)Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;
    .locals 1
    .param p1, "color"    # Lorg/apache/poi/ss/usermodel/ExtendedColor;

    .line 143
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->createConditionalFormattingRule(Lorg/apache/poi/xssf/usermodel/XSSFColor;)Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    move-result-object v0

    return-object v0
.end method

.method public createConditionalFormattingRule(Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;)Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;
    .locals 2
    .param p1, "iconSet"    # Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    .line 156
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    .line 159
    .local v0, "rule":Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;
    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->createMultiStateFormatting(Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;)Lorg/apache/poi/xssf/usermodel/XSSFIconMultiStateFormatting;

    .line 162
    return-object v0
.end method

.method public createConditionalFormattingRule(Lorg/apache/poi/xssf/usermodel/XSSFColor;)Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;
    .locals 2
    .param p1, "color"    # Lorg/apache/poi/xssf/usermodel/XSSFColor;

    .line 134
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    .line 137
    .local v0, "rule":Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;
    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->createDataBarFormatting(Lorg/apache/poi/xssf/usermodel/XSSFColor;)Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;

    .line 140
    return-object v0
.end method

.method public bridge synthetic getConditionalFormattingAt(I)Lorg/apache/poi/ss/usermodel/ConditionalFormatting;
    .locals 1
    .param p1, "x0"    # I

    .line 43
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->getConditionalFormattingAt(I)Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;

    move-result-object v0

    return-object v0
.end method

.method public getConditionalFormattingAt(I)Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;
    .locals 3
    .param p1, "index"    # I

    .line 266
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->checkIndex(I)V

    .line 267
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getConditionalFormattingArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;

    move-result-object v0

    .line 268
    .local v0, "cf":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;)V

    return-object v1
.end method

.method public getNumConditionalFormattings()I
    .locals 1

    .line 275
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->sizeOfConditionalFormattingArray()I

    move-result v0

    return v0
.end method

.method public removeConditionalFormatting(I)V
    .locals 1
    .param p1, "index"    # I

    .line 283
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->checkIndex(I)V

    .line 284
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->removeConditionalFormatting(I)V

    .line 285
    return-void
.end method
