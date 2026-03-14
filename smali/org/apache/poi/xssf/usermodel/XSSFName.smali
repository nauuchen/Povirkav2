.class public final Lorg/apache/poi/xssf/usermodel/XSSFName;
.super Ljava/lang/Object;
.source "XSSFName.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Name;


# static fields
.field public static final BUILTIN_CONSOLIDATE_AREA:Ljava/lang/String; = "_xlnm.Consolidate_Area"

.field public static final BUILTIN_CRITERIA:Ljava/lang/String; = "_xlnm.Criteria:"

.field public static final BUILTIN_DATABASE:Ljava/lang/String; = "_xlnm.Database"

.field public static final BUILTIN_EXTRACT:Ljava/lang/String; = "_xlnm.Extract:"

.field public static final BUILTIN_FILTER_DB:Ljava/lang/String; = "_xlnm._FilterDatabase"

.field public static final BUILTIN_PRINT_AREA:Ljava/lang/String; = "_xlnm.Print_Area"

.field public static final BUILTIN_PRINT_TITLE:Ljava/lang/String; = "_xlnm.Print_Titles"

.field public static final BUILTIN_SHEET_TITLE:Ljava/lang/String; = "_xlnm.Sheet_Title"


# instance fields
.field private _ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

.field private _workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;


# direct methods
.method protected constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V
    .locals 0
    .param p1, "name"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;
    .param p2, "workbook"    # Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 120
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    .line 121
    return-void
.end method

.method private static validateName(Ljava/lang/String;)V
    .locals 12
    .param p0, "name"    # Ljava/lang/String;

    .line 373
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_c

    .line 376
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    const-string v2, "Invalid name: \'"

    if-gt v0, v1, :cond_b

    .line 379
    const-string v0, "R"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "C"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 384
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 385
    .local v1, "c":C
    const-string v3, "_\\"

    .line 386
    .local v3, "allowedSymbols":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-nez v4, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 387
    .local v4, "characterIsValid":Z
    :goto_1
    if-eqz v4, :cond_9

    .line 392
    const-string v3, "_.\\"

    .line 393
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .local v7, "arr$":[C
    array-length v8, v7

    .local v8, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_2
    if-ge v9, v8, :cond_5

    aget-char v10, v7, v9

    .line 394
    .local v10, "ch":C
    invoke-static {v10}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v3, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-eq v11, v5, :cond_2

    goto :goto_3

    :cond_2
    const/4 v11, 0x0

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v11, 0x1

    :goto_4
    move v4, v11

    .line 395
    if-eqz v4, :cond_4

    .line 393
    .end local v10    # "ch":C
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 396
    .restart local v10    # "ch":C
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\': name must be letter, digit, period, or underscore"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    .end local v7    # "arr$":[C
    .end local v8    # "len$":I
    .end local v9    # "i$":I
    .end local v10    # "ch":C
    :cond_5
    const-string v0, "[A-Za-z]+\\d+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 403
    const-string v0, "\\d"

    const-string v5, ""

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, "col":Ljava/lang/String;
    const-string v6, "[A-Za-z]"

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 407
    .local v5, "row":Ljava/lang/String;
    :try_start_0
    sget-object v6, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-static {v0, v5, v6}, Lorg/apache/poi/ss/util/CellReference;->cellReferenceIsWithinRange(Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 413
    goto :goto_5

    .line 408
    :cond_6
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\': cannot be $A$1-style cell reference"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "col":Ljava/lang/String;
    .end local v1    # "c":C
    .end local v3    # "allowedSymbols":Ljava/lang/String;
    .end local v4    # "characterIsValid":Z
    .end local v5    # "row":Ljava/lang/String;
    .end local p0    # "name":Ljava/lang/String;
    throw v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    .restart local v0    # "col":Ljava/lang/String;
    .restart local v1    # "c":C
    .restart local v3    # "allowedSymbols":Ljava/lang/String;
    .restart local v4    # "characterIsValid":Z
    .restart local v5    # "row":Ljava/lang/String;
    .restart local p0    # "name":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 417
    .end local v0    # "col":Ljava/lang/String;
    .end local v5    # "row":Ljava/lang/String;
    :cond_7
    :goto_5
    const-string v0, "[Rr]\\d+[Cc]\\d+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 420
    return-void

    .line 418
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\': cannot be R1C1-style cell reference"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\': first character must be underscore or a letter"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    .end local v1    # "c":C
    .end local v3    # "allowedSymbols":Ljava/lang/String;
    .end local v4    # "characterIsValid":Z
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': cannot be special shorthand R or C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': cannot exceed 255 characters in length"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name cannot be blank"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 342
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 344
    :cond_0
    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFName;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 346
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFName;

    .line 347
    .local v0, "cf":Lorg/apache/poi/xssf/usermodel/XSSFName;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getCTName()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected getCTName()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->getComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFunction()Z
    .locals 1

    .line 257
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->getFunction()Z

    move-result v0

    return v0
.end method

.method public getFunctionGroupId()I
    .locals 2

    .line 279
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->getFunctionGroupId()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public getNameName()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRefersToFormula()Ljava/lang/String;
    .locals 3

    .line 187
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->getStringValue()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    return-object v0

    .line 189
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSheetIndex()I
    .locals 2

    .line 237
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->isSetLocalSheetId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->getLocalSheetId()J

    move-result-wide v0

    long-to-int v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public getSheetName()Ljava/lang/String;
    .locals 3

    .line 289
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->isSetLocalSheetId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->getLocalSheetId()J

    move-result-wide v0

    long-to-int v1, v0

    .line 292
    .local v1, "sheetId":I
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 294
    .end local v1    # "sheetId":I
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getRefersToFormula()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "ref":Ljava/lang/String;
    new-instance v1, Lorg/apache/poi/ss/util/AreaReference;

    sget-object v2, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    .line 296
    .local v1, "areaRef":Lorg/apache/poi/ss/util/AreaReference;
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->getSheetName()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public hashCode()I
    .locals 1

    .line 328
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDeleted()Z
    .locals 5

    .line 203
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getRefersToFormula()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "formulaText":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 205
    const/4 v1, 0x0

    return v1

    .line 207
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-static {v1}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->create(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    move-result-object v1

    .line 208
    .local v1, "fpb":Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;
    sget-object v2, Lorg/apache/poi/ss/formula/FormulaType;->NAMEDRANGE:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getSheetIndex()I

    move-result v3

    const/4 v4, -0x1

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    .line 209
    .local v2, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-static {v2}, Lorg/apache/poi/ss/formula/ptg/Ptg;->doesFormulaReferToDeletedCell([Lorg/apache/poi/ss/formula/ptg/Ptg;)Z

    move-result v3

    return v3
.end method

.method public isFunctionName()Z
    .locals 1

    .line 305
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getFunction()Z

    move-result v0

    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 1
    .param p1, "comment"    # Ljava/lang/String;

    .line 323
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->setComment(Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public setFunction(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 247
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->setFunction(Z)V

    .line 248
    return-void
.end method

.method public setFunctionGroupId(I)V
    .locals 3
    .param p1, "functionGroupId"    # I

    .line 268
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->setFunctionGroupId(J)V

    .line 269
    return-void
.end method

.method public setNameName(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .line 170
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFName;->validateName(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getNameName()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "oldName":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getSheetIndex()I

    move-result v1

    .line 175
    .local v1, "sheetIndex":I
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v2, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFName;

    .line 176
    .local v3, "foundName":Lorg/apache/poi/xssf/usermodel/XSSFName;
    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getSheetIndex()I

    move-result v4

    if-ne v4, v1, :cond_1

    if-eq v3, p0, :cond_1

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    const-string/jumbo v5, "workbook"

    goto :goto_1

    :cond_0
    const-string v5, "sheet"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " already contains this name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, "msg":Ljava/lang/String;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v3    # "foundName":Lorg/apache/poi/xssf/usermodel/XSSFName;
    .end local v4    # "msg":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 181
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {v2, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->setName(Ljava/lang/String;)V

    .line 183
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v2, p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->updateName(Lorg/apache/poi/xssf/usermodel/XSSFName;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public setRefersToFormula(Ljava/lang/String;)V
    .locals 4
    .param p1, "formulaText"    # Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-static {v0}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->create(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    move-result-object v0

    .line 197
    .local v0, "fpb":Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;
    sget-object v1, Lorg/apache/poi/ss/formula/FormulaType;->NAMEDRANGE:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getSheetIndex()I

    move-result v2

    const/4 v3, -0x1

    invoke-static {p1, v0, v1, v2, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 199
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->setStringValue(Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public setSheetIndex(I)V
    .locals 5
    .param p1, "index"    # I

    .line 218
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNumberOfSheets()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 219
    .local v0, "lastSheetIx":I
    const/4 v1, -0x1

    if-lt p1, v1, :cond_3

    if-le p1, v0, :cond_0

    goto :goto_1

    .line 224
    :cond_0
    if-ne p1, v1, :cond_1

    .line 225
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->isSetLocalSheetId()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->unsetLocalSheetId()V

    goto :goto_0

    .line 227
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    int-to-long v2, p1

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->setLocalSheetId(J)V

    .line 229
    :cond_2
    :goto_0
    return-void

    .line 220
    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sheet index ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is out of range"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ne v0, v1, :cond_4

    const-string v1, ""

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " (0.."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
