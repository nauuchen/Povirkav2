.class public final Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;
.super Lorg/apache/poi/ss/usermodel/helpers/RowShifter;
.source "XSSFRowShifter.java"


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-class v0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    .locals 0
    .param p1, "sh"    # Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 64
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;-><init>(Lorg/apache/poi/ss/usermodel/Sheet;)V

    .line 65
    return-void
.end method

.method private static shiftFormula(Lorg/apache/poi/ss/usermodel/Row;Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaShifter;)Ljava/lang/String;
    .locals 11
    .param p0, "row"    # Lorg/apache/poi/ss/usermodel/Row;
    .param p1, "formula"    # Ljava/lang/String;
    .param p2, "shifter"    # Lorg/apache/poi/ss/formula/FormulaShifter;

    .line 176
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    .line 177
    .local v0, "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v1

    .line 178
    .local v1, "wb":Lorg/apache/poi/ss/usermodel/Workbook;
    invoke-interface {v1, v0}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v2

    .line 179
    .local v2, "sheetIndex":I
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result v3

    .line 180
    .local v3, "rowIndex":I
    move-object v4, v1

    check-cast v4, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-static {v4}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->create(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    move-result-object v4

    .line 183
    .local v4, "fpb":Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;
    :try_start_0
    sget-object v5, Lorg/apache/poi/ss/formula/FormulaType;->CELL:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-static {p1, v4, v5, v2, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v5

    .line 184
    .local v5, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    const/4 v6, 0x0

    .line 185
    .local v6, "shiftedFmla":Ljava/lang/String;
    invoke-virtual {p2, v5, v2}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 186
    invoke-static {v4, v5}, Lorg/apache/poi/ss/formula/FormulaRenderer;->toFormulaString(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/FormulaParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v7

    .line 188
    :cond_0
    return-object v6

    .line 189
    .end local v5    # "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v6    # "shiftedFmla":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 191
    .local v5, "fpe":Lorg/apache/poi/ss/formula/FormulaParseException;
    sget-object v6, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v7, 0x5

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "Error shifting formula on row "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object v5, v8, v9

    invoke-virtual {v6, v7, v8}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 192
    return-object p1
.end method

.method private static shiftRange(Lorg/apache/poi/ss/formula/FormulaShifter;Lorg/apache/poi/ss/util/CellRangeAddress;I)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 10
    .param p0, "shifter"    # Lorg/apache/poi/ss/formula/FormulaShifter;
    .param p1, "cra"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "currentExternSheetIx"    # I

    .line 283
    new-instance v9, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;-><init>(IIIIZZZZ)V

    .line 284
    .local v0, "aptg":Lorg/apache/poi/ss/formula/ptg/AreaPtg;
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/poi/ss/formula/ptg/Ptg;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 286
    .local v1, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {p0, v1, p2}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 287
    return-object p1

    .line 289
    :cond_0
    aget-object v2, v1, v2

    .line 290
    .local v2, "ptg0":Lorg/apache/poi/ss/formula/ptg/Ptg;
    instance-of v3, v2, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    if-eqz v3, :cond_1

    .line 291
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    .line 292
    .local v3, "bptg":Lorg/apache/poi/ss/formula/ptg/AreaPtg;
    new-instance v4, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;->getFirstRow()I

    move-result v5

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;->getLastRow()I

    move-result v6

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;->getFirstColumn()I

    move-result v7

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;->getLastColumn()I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    return-object v4

    .line 294
    .end local v3    # "bptg":Lorg/apache/poi/ss/formula/ptg/AreaPtg;
    :cond_1
    instance-of v3, v2, Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;

    if-eqz v3, :cond_2

    .line 295
    const/4 v3, 0x0

    return-object v3

    .line 297
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected shifted ptg class ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private updateRefInCTCellFormula(Lorg/apache/poi/ss/usermodel/Row;Lorg/apache/poi/ss/formula/FormulaShifter;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;)V
    .locals 2
    .param p1, "row"    # Lorg/apache/poi/ss/usermodel/Row;
    .param p2, "shifter"    # Lorg/apache/poi/ss/formula/FormulaShifter;
    .param p3, "f"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    .line 159
    invoke-interface {p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->isSetRef()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-interface {p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getRef()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "ref":Ljava/lang/String;
    invoke-static {p1, v0, p2}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->shiftFormula(Lorg/apache/poi/ss/usermodel/Row;Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaShifter;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "shiftedRef":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-interface {p3, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->setRef(Ljava/lang/String;)V

    .line 164
    .end local v0    # "ref":Ljava/lang/String;
    .end local v1    # "shiftedRef":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateSheetFormulas(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 3
    .param p1, "sh"    # Lorg/apache/poi/ss/usermodel/Sheet;
    .param p2, "shifter"    # Lorg/apache/poi/ss/formula/FormulaShifter;

    .line 115
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Sheet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/usermodel/Row;

    .line 116
    .local v1, "r":Lorg/apache/poi/ss/usermodel/Row;
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    .line 117
    .local v2, "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    invoke-virtual {p0, v2, p2}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->updateRowFormulas(Lorg/apache/poi/ss/usermodel/Row;Lorg/apache/poi/ss/formula/FormulaShifter;)V

    .line 118
    .end local v1    # "r":Lorg/apache/poi/ss/usermodel/Row;
    .end local v2    # "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    goto :goto_0

    .line 119
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method


# virtual methods
.method public shiftMerged(III)Ljava/util/List;
    .locals 1
    .param p1, "startRow"    # I
    .param p2, "endRow"    # I
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;"
        }
    .end annotation

    .line 77
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->shiftMergedRegions(III)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public updateConditionalFormatting(Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 22
    .param p1, "shifter"    # Lorg/apache/poi/ss/formula/FormulaShifter;

    .line 197
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 198
    .local v2, "xsheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v3

    .line 199
    .local v3, "wb":Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    iget-object v4, v0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-virtual {v3, v4}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v4

    .line 200
    .local v4, "sheetIndex":I
    const/4 v5, -0x1

    .line 202
    .local v5, "rowIndex":I
    invoke-static {v3}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->create(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    move-result-object v6

    .line 203
    .local v6, "fpb":Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v7

    .line 204
    .local v7, "ctWorksheet":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;
    invoke-interface {v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getConditionalFormattingArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;

    move-result-object v8

    .line 206
    .local v8, "conditionalFormattingArray":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;
    array-length v9, v8

    add-int/lit8 v9, v9, -0x1

    .local v9, "j":I
    :goto_0
    if-ltz v9, :cond_b

    .line 207
    aget-object v10, v8, v9

    .line 209
    .local v10, "cf":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v11, "cellRanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/poi/ss/util/CellRangeAddress;>;"
    invoke-interface {v10}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;->getSqref()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 211
    .local v13, "stRef":Ljava/lang/Object;
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 212
    .local v14, "regions":[Ljava/lang/String;
    move-object v15, v14

    .local v15, "arr$":[Ljava/lang/String;
    array-length v0, v15

    .local v0, "len$":I
    const/16 v16, 0x0

    move-object/from16 v17, v2

    move/from16 v2, v16

    .local v2, "i$":I
    .local v17, "xsheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    :goto_2
    if-ge v2, v0, :cond_0

    aget-object v16, v15, v2

    .line 213
    .local v16, "region":Ljava/lang/String;
    move/from16 v18, v0

    .end local v0    # "len$":I
    .local v18, "len$":I
    invoke-static/range {v16 .. v16}, Lorg/apache/poi/ss/util/CellRangeAddress;->valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    .end local v16    # "region":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v18

    goto :goto_2

    .end local v18    # "len$":I
    .restart local v0    # "len$":I
    :cond_0
    move/from16 v18, v0

    .line 215
    .end local v0    # "len$":I
    .end local v2    # "i$":I
    .end local v13    # "stRef":Ljava/lang/Object;
    .end local v14    # "regions":[Ljava/lang/String;
    .end local v15    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v2, v17

    goto :goto_1

    .line 210
    .end local v17    # "xsheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .local v2, "xsheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    :cond_1
    move-object/from16 v17, v2

    .line 217
    .end local v2    # "xsheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .end local v12    # "i$":Ljava/util/Iterator;
    .restart local v17    # "xsheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    const/4 v0, 0x0

    .line 218
    .local v0, "changed":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v2, "temp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/util/CellRangeAddress;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 220
    .local v13, "craOld":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-static {v1, v13, v4}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->shiftRange(Lorg/apache/poi/ss/formula/FormulaShifter;Lorg/apache/poi/ss/util/CellRangeAddress;I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v14

    .line 221
    .local v14, "craNew":Lorg/apache/poi/ss/util/CellRangeAddress;
    if-nez v14, :cond_2

    .line 222
    const/4 v0, 0x1

    .line 223
    goto :goto_3

    .line 225
    :cond_2
    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    if-eq v14, v13, :cond_3

    .line 227
    const/4 v0, 0x1

    .line 229
    .end local v13    # "craOld":Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v14    # "craNew":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_3
    goto :goto_3

    .line 231
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_4
    if-eqz v0, :cond_7

    .line 232
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    .line 233
    .local v12, "nRanges":I
    if-nez v12, :cond_5

    .line 234
    invoke-interface {v7, v9}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->removeConditionalFormatting(I)V

    .line 235
    move-object/from16 v20, v3

    move/from16 v21, v5

    goto/16 :goto_8

    .line 237
    :cond_5
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v13, "refs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/poi/ss/util/CellRangeAddress;

    move/from16 v16, v0

    .end local v0    # "changed":Z
    .local v15, "a":Lorg/apache/poi/ss/util/CellRangeAddress;
    .local v16, "changed":Z
    invoke-virtual {v15}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v0, v16

    goto :goto_4

    .end local v15    # "a":Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v16    # "changed":Z
    .restart local v0    # "changed":Z
    :cond_6
    move/from16 v16, v0

    .line 239
    .end local v0    # "changed":Z
    .end local v14    # "i$":Ljava/util/Iterator;
    .restart local v16    # "changed":Z
    invoke-interface {v10, v13}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;->setSqref(Ljava/util/List;)V

    goto :goto_5

    .line 231
    .end local v12    # "nRanges":I
    .end local v13    # "refs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "changed":Z
    .restart local v0    # "changed":Z
    :cond_7
    move/from16 v16, v0

    .line 242
    .end local v0    # "changed":Z
    .restart local v16    # "changed":Z
    :goto_5
    invoke-interface {v10}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;->getCfRuleArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    move-result-object v0

    .local v0, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;
    array-length v12, v0

    .local v12, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_6
    if-ge v13, v12, :cond_a

    aget-object v14, v0, v13

    .line 243
    .local v14, "cfRule":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;
    invoke-interface {v14}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getFormulaArray()[Ljava/lang/String;

    move-result-object v15

    .line 244
    .local v15, "formulaArray":[Ljava/lang/String;
    const/16 v18, 0x0

    move-object/from16 v19, v0

    move/from16 v0, v18

    .local v0, "i":I
    .local v19, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;
    :goto_7
    move-object/from16 v18, v2

    .end local v2    # "temp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/util/CellRangeAddress;>;"
    .local v18, "temp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/util/CellRangeAddress;>;"
    array-length v2, v15

    if-ge v0, v2, :cond_9

    .line 245
    aget-object v2, v15, v0

    .line 246
    .local v2, "formula":Ljava/lang/String;
    move-object/from16 v20, v3

    .end local v3    # "wb":Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .local v20, "wb":Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    sget-object v3, Lorg/apache/poi/ss/formula/FormulaType;->CELL:Lorg/apache/poi/ss/formula/FormulaType;

    move/from16 v21, v5

    .end local v5    # "rowIndex":I
    .local v21, "rowIndex":I
    const/4 v5, -0x1

    invoke-static {v2, v6, v3, v4, v5}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v3

    .line 247
    .local v3, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {v1, v3, v4}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 248
    invoke-static {v6, v3}, Lorg/apache/poi/ss/formula/FormulaRenderer;->toFormulaString(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object v5

    .line 249
    .local v5, "shiftedFmla":Ljava/lang/String;
    invoke-interface {v14, v0, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->setFormulaArray(ILjava/lang/String;)V

    .line 244
    .end local v2    # "formula":Ljava/lang/String;
    .end local v3    # "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v5    # "shiftedFmla":Ljava/lang/String;
    :cond_8
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    move/from16 v5, v21

    goto :goto_7

    .end local v20    # "wb":Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .end local v21    # "rowIndex":I
    .local v3, "wb":Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .local v5, "rowIndex":I
    :cond_9
    move-object/from16 v20, v3

    move/from16 v21, v5

    .line 242
    .end local v0    # "i":I
    .end local v3    # "wb":Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .end local v5    # "rowIndex":I
    .end local v14    # "cfRule":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;
    .end local v15    # "formulaArray":[Ljava/lang/String;
    .restart local v20    # "wb":Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .restart local v21    # "rowIndex":I
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v18

    move-object/from16 v0, v19

    goto :goto_6

    .end local v18    # "temp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/util/CellRangeAddress;>;"
    .end local v19    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;
    .end local v20    # "wb":Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .end local v21    # "rowIndex":I
    .local v0, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;
    .local v2, "temp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/util/CellRangeAddress;>;"
    .restart local v3    # "wb":Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .restart local v5    # "rowIndex":I
    :cond_a
    move-object/from16 v19, v0

    move-object/from16 v18, v2

    move-object/from16 v20, v3

    move/from16 v21, v5

    .line 206
    .end local v0    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;
    .end local v2    # "temp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/util/CellRangeAddress;>;"
    .end local v3    # "wb":Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .end local v5    # "rowIndex":I
    .end local v10    # "cf":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;
    .end local v11    # "cellRanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/poi/ss/util/CellRangeAddress;>;"
    .end local v12    # "len$":I
    .end local v13    # "i$":I
    .end local v16    # "changed":Z
    .restart local v20    # "wb":Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .restart local v21    # "rowIndex":I
    :goto_8
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v17

    move-object/from16 v3, v20

    move/from16 v5, v21

    goto/16 :goto_0

    .line 254
    .end local v9    # "j":I
    .end local v17    # "xsheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .end local v20    # "wb":Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .end local v21    # "rowIndex":I
    .local v2, "xsheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .restart local v3    # "wb":Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .restart local v5    # "rowIndex":I
    :cond_b
    return-void
.end method

.method public updateFormulas(Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 4
    .param p1, "shifter"    # Lorg/apache/poi/ss/formula/FormulaShifter;

    .line 104
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->updateSheetFormulas(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/formula/FormulaShifter;)V

    .line 107
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    .line 108
    .local v0, "wb":Lorg/apache/poi/ss/usermodel/Workbook;
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Workbook;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/usermodel/Sheet;

    .line 109
    .local v2, "sh":Lorg/apache/poi/ss/usermodel/Sheet;
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    if-ne v3, v2, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    invoke-direct {p0, v2, p1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->updateSheetFormulas(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/formula/FormulaShifter;)V

    .end local v2    # "sh":Lorg/apache/poi/ss/usermodel/Sheet;
    goto :goto_0

    .line 112
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public updateHyperlinks(Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 9
    .param p1, "shifter"    # Lorg/apache/poi/ss/formula/FormulaShifter;

    .line 264
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v0

    .line 265
    .local v0, "sheetIndex":I
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Sheet;->getHyperlinkList()Ljava/util/List;

    move-result-object v1

    .line 267
    .local v1, "hyperlinkList":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/poi/ss/usermodel/Hyperlink;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/usermodel/Hyperlink;

    .line 268
    .local v3, "hyperlink":Lorg/apache/poi/ss/usermodel/Hyperlink;
    move-object v4, v3

    check-cast v4, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    .line 269
    .local v4, "xhyperlink":Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;
    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getCellRef()Ljava/lang/String;

    move-result-object v5

    .line 270
    .local v5, "cellRef":Ljava/lang/String;
    invoke-static {v5}, Lorg/apache/poi/ss/util/CellRangeAddress;->valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v6

    .line 271
    .local v6, "cra":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-static {p1, v6, v0}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->shiftRange(Lorg/apache/poi/ss/formula/FormulaShifter;Lorg/apache/poi/ss/util/CellRangeAddress;I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v7

    .line 272
    .local v7, "shiftedRange":Lorg/apache/poi/ss/util/CellRangeAddress;
    if-eqz v7, :cond_0

    if-eq v7, v6, :cond_0

    .line 276
    invoke-virtual {v7}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setCellReference(Ljava/lang/String;)V

    .line 278
    .end local v3    # "hyperlink":Lorg/apache/poi/ss/usermodel/Hyperlink;
    .end local v4    # "xhyperlink":Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;
    .end local v5    # "cellRef":Ljava/lang/String;
    .end local v6    # "cra":Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v7    # "shiftedRange":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_0
    goto :goto_0

    .line 279
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public updateNamedRanges(Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 9
    .param p1, "shifter"    # Lorg/apache/poi/ss/formula/FormulaShifter;

    .line 84
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    .line 85
    .local v0, "wb":Lorg/apache/poi/ss/usermodel/Workbook;
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-static {v1}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->create(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    move-result-object v1

    .line 86
    .local v1, "fpb":Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Workbook;->getAllNames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/usermodel/Name;

    .line 87
    .local v3, "name":Lorg/apache/poi/ss/usermodel/Name;
    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/Name;->getRefersToFormula()Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "formula":Ljava/lang/String;
    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/Name;->getSheetIndex()I

    move-result v5

    .line 89
    .local v5, "sheetIndex":I
    const/4 v6, -0x1

    .line 91
    .local v6, "rowIndex":I
    sget-object v7, Lorg/apache/poi/ss/formula/FormulaType;->NAMEDRANGE:Lorg/apache/poi/ss/formula/FormulaType;

    const/4 v8, -0x1

    invoke-static {v4, v1, v7, v5, v8}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v7

    .line 92
    .local v7, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {p1, v7, v5}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 93
    invoke-static {v1, v7}, Lorg/apache/poi/ss/formula/FormulaRenderer;->toFormulaString(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object v8

    .line 94
    .local v8, "shiftedFmla":Ljava/lang/String;
    invoke-interface {v3, v8}, Lorg/apache/poi/ss/usermodel/Name;->setRefersToFormula(Ljava/lang/String;)V

    .line 96
    .end local v3    # "name":Lorg/apache/poi/ss/usermodel/Name;
    .end local v4    # "formula":Ljava/lang/String;
    .end local v5    # "sheetIndex":I
    .end local v6    # "rowIndex":I
    .end local v7    # "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v8    # "shiftedFmla":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 97
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public updateRowFormulas(Lorg/apache/poi/ss/usermodel/Row;Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 10
    .param p1, "row"    # Lorg/apache/poi/ss/usermodel/Row;
    .param p2, "shifter"    # Lorg/apache/poi/ss/formula/FormulaShifter;
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 129
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 130
    .local v0, "sheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/usermodel/Cell;

    .line 131
    .local v2, "c":Lorg/apache/poi/ss/usermodel/Cell;
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    .line 133
    .local v3, "cell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCTCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object v4

    .line 134
    .local v4, "ctCell":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;
    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetF()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 135
    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getF()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    move-result-object v5

    .line 136
    .local v5, "f":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;
    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getStringValue()Ljava/lang/String;

    move-result-object v6

    .line 137
    .local v6, "formula":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 138
    invoke-static {p1, v6, p2}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->shiftFormula(Lorg/apache/poi/ss/usermodel/Row;Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaShifter;)Ljava/lang/String;

    move-result-object v7

    .line 139
    .local v7, "shiftedFormula":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 140
    invoke-interface {v5, v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->setStringValue(Ljava/lang/String;)V

    .line 141
    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;

    move-result-object v8

    sget-object v9, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType;->SHARED:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;

    if-ne v8, v9, :cond_0

    .line 142
    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getSi()J

    move-result-wide v8

    long-to-int v9, v8

    .line 143
    .local v9, "si":I
    invoke-virtual {v0, v9}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSharedFormula(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    move-result-object v8

    .line 144
    .local v8, "sf":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;
    invoke-interface {v8, v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->setStringValue(Ljava/lang/String;)V

    .line 145
    invoke-direct {p0, p1, p2, v8}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->updateRefInCTCellFormula(Lorg/apache/poi/ss/usermodel/Row;Lorg/apache/poi/ss/formula/FormulaShifter;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;)V

    .line 152
    .end local v7    # "shiftedFormula":Ljava/lang/String;
    .end local v8    # "sf":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;
    .end local v9    # "si":I
    :cond_0
    invoke-direct {p0, p1, p2, v5}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->updateRefInCTCellFormula(Lorg/apache/poi/ss/usermodel/Row;Lorg/apache/poi/ss/formula/FormulaShifter;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;)V

    .line 155
    .end local v2    # "c":Lorg/apache/poi/ss/usermodel/Cell;
    .end local v3    # "cell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    .end local v4    # "ctCell":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;
    .end local v5    # "f":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;
    .end local v6    # "formula":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 156
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method
