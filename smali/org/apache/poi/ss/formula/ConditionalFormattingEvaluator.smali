.class public Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;
.super Ljava/lang/Object;
.source "ConditionalFormattingEvaluator.java"


# instance fields
.field private final formats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;",
            ">;>;"
        }
    .end annotation
.end field

.field private final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/util/CellReference;",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;",
            ">;>;"
        }
    .end annotation
.end field

.field private final workbook:Lorg/apache/poi/ss/usermodel/Workbook;

.field private final workbookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/usermodel/Workbook;Lorg/apache/poi/ss/formula/WorkbookEvaluatorProvider;)V
    .locals 1
    .param p1, "wb"    # Lorg/apache/poi/ss/usermodel/Workbook;
    .param p2, "provider"    # Lorg/apache/poi/ss/formula/WorkbookEvaluatorProvider;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->formats:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->values:Ljava/util/Map;

    .line 76
    iput-object p1, p0, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    .line 77
    invoke-interface {p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluatorProvider;->_getWorkbookEvaluator()Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->workbookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    .line 78
    return-void
.end method

.method public static getRef(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/util/CellReference;
    .locals 7
    .param p0, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 210
    new-instance v6, Lorg/apache/poi/ss/util/CellReference;

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getRowIndex()I

    move-result v2

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    return-object v6
.end method


# virtual methods
.method public clearAllCachedFormats()V
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->formats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 90
    return-void
.end method

.method public clearAllCachedValues()V
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 101
    return-void
.end method

.method public getConditionalFormattingForCell(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/util/List;
    .locals 1
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;",
            ">;"
        }
    .end annotation

    .line 206
    invoke-static {p1}, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->getRef(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->getConditionalFormattingForCell(Lorg/apache/poi/ss/util/CellReference;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConditionalFormattingForCell(Lorg/apache/poi/ss/util/CellReference;)Ljava/util/List;
    .locals 6
    .param p1, "cellRef"    # Lorg/apache/poi/ss/util/CellReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/util/CellReference;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 155
    .local v0, "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;>;"
    if-nez v0, :cond_4

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 159
    const/4 v1, 0x0

    .line 160
    .local v1, "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getSheetName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getSheetName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v1

    goto :goto_0

    .line 161
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Workbook;->getActiveSheetIndex()I

    move-result v3

    invoke-interface {v2, v3}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheetAt(I)Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v1

    .line 169
    :goto_0
    const/4 v2, 0x0

    .line 170
    .local v2, "stopIfTrue":Z
    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->getRules(Lorg/apache/poi/ss/usermodel/Sheet;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;

    .line 172
    .local v4, "rule":Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;
    if-eqz v2, :cond_1

    .line 173
    goto :goto_1

    .line 176
    :cond_1
    invoke-virtual {v4, p1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->matches(Lorg/apache/poi/ss/util/CellReference;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 177
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getRule()Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;->getStopIfTrue()Z

    move-result v2

    .end local v4    # "rule":Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;
    :cond_2
    goto :goto_1

    .line 181
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 182
    iget-object v3, p0, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->values:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .end local v1    # "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    .end local v2    # "stopIfTrue":Z
    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getFormatRulesForSheet(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "sheetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;",
            ">;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->getFormatRulesForSheet(Lorg/apache/poi/ss/usermodel/Sheet;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFormatRulesForSheet(Lorg/apache/poi/ss/usermodel/Sheet;)Ljava/util/List;
    .locals 1
    .param p1, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/Sheet;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;",
            ">;"
        }
    .end annotation

    .line 226
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->getRules(Lorg/apache/poi/ss/usermodel/Sheet;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMatchingCells(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;)Ljava/util/List;
    .locals 12
    .param p1, "rule"    # Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ">;"
        }
    .end annotation

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v0, "cells":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/usermodel/Cell;>;"
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v1

    .line 258
    .local v1, "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getRegions()[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v2

    .local v2, "arr$":[Lorg/apache/poi/ss/util/CellRangeAddress;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 259
    .local v5, "region":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v6

    .local v6, "r":I
    :goto_1
    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v7

    if-gt v6, v7, :cond_4

    .line 260
    invoke-interface {v1, v6}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v7

    .line 261
    .local v7, "row":Lorg/apache/poi/ss/usermodel/Row;
    if-nez v7, :cond_0

    .line 262
    goto :goto_4

    .line 264
    :cond_0
    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v8

    .local v8, "c":I
    :goto_2
    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v9

    if-gt v8, v9, :cond_3

    .line 265
    invoke-interface {v7, v8}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v9

    .line 266
    .local v9, "cell":Lorg/apache/poi/ss/usermodel/Cell;
    if-nez v9, :cond_1

    .line 267
    goto :goto_3

    .line 270
    :cond_1
    invoke-virtual {p0, v9}, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->getConditionalFormattingForCell(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/util/List;

    move-result-object v10

    .line 271
    .local v10, "cellRules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;>;"
    invoke-interface {v10, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 272
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    .end local v9    # "cell":Lorg/apache/poi/ss/usermodel/Cell;
    .end local v10    # "cellRules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;>;"
    :cond_2
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 259
    .end local v7    # "row":Lorg/apache/poi/ss/usermodel/Row;
    .end local v8    # "c":I
    :cond_3
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 258
    .end local v5    # "region":Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v6    # "r":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 277
    .end local v2    # "arr$":[Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getMatchingCells(Lorg/apache/poi/ss/usermodel/Sheet;II)Ljava/util/List;
    .locals 3
    .param p1, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;
    .param p2, "conditionalFormattingIndex"    # I
    .param p3, "ruleIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/Sheet;",
            "II)",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ">;"
        }
    .end annotation

    .line 241
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->getRules(Lorg/apache/poi/ss/usermodel/Sheet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;

    .line 242
    .local v1, "rule":Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getFormattingIndex()I

    move-result v2

    if-ne v2, p2, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getRuleIndex()I

    move-result v2

    if-ne v2, p3, :cond_0

    .line 243
    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->getMatchingCells(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .end local v1    # "rule":Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;
    :cond_0
    goto :goto_0

    .line 246
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getRules(Lorg/apache/poi/ss/usermodel/Sheet;)Ljava/util/List;
    .locals 18
    .param p1, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/Sheet;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;",
            ">;"
        }
    .end annotation

    .line 110
    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "sheetName":Ljava/lang/String;
    iget-object v2, v0, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->formats:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 112
    .local v2, "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;>;"
    if-nez v2, :cond_3

    .line 113
    iget-object v3, v0, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->formats:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 116
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetConditionalFormatting()Lorg/apache/poi/ss/usermodel/SheetConditionalFormatting;

    move-result-object v3

    .line 117
    .local v3, "scf":Lorg/apache/poi/ss/usermodel/SheetConditionalFormatting;
    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/SheetConditionalFormatting;->getNumConditionalFormattings()I

    move-result v4

    .line 118
    .local v4, "count":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v5

    .line 119
    iget-object v5, v0, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->formats:Ljava/util/Map;

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_2

    .line 121
    invoke-interface {v3, v5}, Lorg/apache/poi/ss/usermodel/SheetConditionalFormatting;->getConditionalFormattingAt(I)Lorg/apache/poi/ss/usermodel/ConditionalFormatting;

    move-result-object v14

    .line 123
    .local v14, "f":Lorg/apache/poi/ss/usermodel/ConditionalFormatting;
    invoke-interface {v14}, Lorg/apache/poi/ss/usermodel/ConditionalFormatting;->getFormattingRanges()[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v15

    .line 124
    .local v15, "regions":[Lorg/apache/poi/ss/util/CellRangeAddress;
    const/4 v6, 0x0

    move v13, v6

    .local v13, "r":I
    :goto_1
    invoke-interface {v14}, Lorg/apache/poi/ss/usermodel/ConditionalFormatting;->getNumberOfRules()I

    move-result v6

    if-ge v13, v6, :cond_1

    .line 125
    invoke-interface {v14, v13}, Lorg/apache/poi/ss/usermodel/ConditionalFormatting;->getRule(I)Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;

    move-result-object v16

    .line 126
    .local v16, "rule":Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    new-instance v12, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;

    iget-object v7, v0, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->workbookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    move-object v6, v12

    move-object/from16 v8, p1

    move-object v9, v14

    move v10, v5

    move-object/from16 v11, v16

    move-object v0, v12

    move v12, v13

    move/from16 v17, v13

    .end local v13    # "r":I
    .local v17, "r":I
    move-object v13, v15

    invoke-direct/range {v6 .. v13}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/usermodel/ConditionalFormatting;ILorg/apache/poi/ss/usermodel/ConditionalFormattingRule;I[Lorg/apache/poi/ss/util/CellRangeAddress;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .end local v16    # "rule":Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    add-int/lit8 v13, v17, 0x1

    move-object/from16 v0, p0

    .end local v17    # "r":I
    .restart local v13    # "r":I
    goto :goto_1

    :cond_1
    move/from16 v17, v13

    .line 120
    .end local v13    # "r":I
    .end local v14    # "f":Lorg/apache/poi/ss/usermodel/ConditionalFormatting;
    .end local v15    # "regions":[Lorg/apache/poi/ss/util/CellRangeAddress;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    .line 130
    .end local v5    # "i":I
    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 132
    .end local v3    # "scf":Lorg/apache/poi/ss/usermodel/SheetConditionalFormatting;
    .end local v4    # "count":I
    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getWorkbookEvaluator()Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->workbookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    return-object v0
.end method
