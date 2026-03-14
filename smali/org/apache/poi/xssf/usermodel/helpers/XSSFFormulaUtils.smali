.class public final Lorg/apache/poi/xssf/usermodel/helpers/XSSFFormulaUtils;
.super Ljava/lang/Object;
.source "XSSFFormulaUtils.java"


# instance fields
.field private final _fpwb:Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

.field private final _wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V
    .locals 1
    .param p1, "wb"    # Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFFormulaUtils;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 49
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->create(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFFormulaUtils;->_fpwb:Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    .line 50
    return-void
.end method

.method private updateFormula(Lorg/apache/poi/xssf/usermodel/XSSFCell;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "cell"    # Lorg/apache/poi/xssf/usermodel/XSSFCell;
    .param p2, "oldName"    # Ljava/lang/String;
    .param p3, "newName"    # Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCTCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getF()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    move-result-object v0

    .line 93
    .local v0, "f":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;
    if-eqz v0, :cond_1

    .line 94
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getStringValue()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "formula":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 96
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFFormulaUtils;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v2

    .line 97
    .local v2, "sheetIndex":I
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFFormulaUtils;->_fpwb:Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    sget-object v4, Lorg/apache/poi/ss/formula/FormulaType;->CELL:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRowIndex()I

    move-result v5

    invoke-static {v1, v3, v4, v2, v5}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v3

    .line 98
    .local v3, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    move-object v4, v3

    .local v4, "arr$":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    array-length v5, v4

    .local v5, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 99
    .local v7, "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-direct {p0, v7, p2, p3}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFFormulaUtils;->updatePtg(Lorg/apache/poi/ss/formula/ptg/Ptg;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .end local v7    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 101
    .end local v4    # "arr$":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_0
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFFormulaUtils;->_fpwb:Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    invoke-static {v4, v3}, Lorg/apache/poi/ss/formula/FormulaRenderer;->toFormulaString(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, "updatedFormula":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v0, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->setStringValue(Ljava/lang/String;)V

    .line 105
    .end local v1    # "formula":Ljava/lang/String;
    .end local v2    # "sheetIndex":I
    .end local v3    # "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v4    # "updatedFormula":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private updateName(Lorg/apache/poi/xssf/usermodel/XSSFName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "name"    # Lorg/apache/poi/xssf/usermodel/XSSFName;
    .param p2, "oldName"    # Ljava/lang/String;
    .param p3, "newName"    # Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getRefersToFormula()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "formula":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getSheetIndex()I

    move-result v1

    .line 116
    .local v1, "sheetIndex":I
    const/4 v2, -0x1

    .line 117
    .local v2, "rowIndex":I
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFFormulaUtils;->_fpwb:Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    sget-object v4, Lorg/apache/poi/ss/formula/FormulaType;->NAMEDRANGE:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-static {v0, v3, v4, v1, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v3

    .line 118
    .local v3, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    move-object v4, v3

    .local v4, "arr$":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    array-length v5, v4

    .local v5, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 119
    .local v7, "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-direct {p0, v7, p2, p3}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFFormulaUtils;->updatePtg(Lorg/apache/poi/ss/formula/ptg/Ptg;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .end local v7    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 121
    .end local v4    # "arr$":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_0
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFFormulaUtils;->_fpwb:Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    invoke-static {v4, v3}, Lorg/apache/poi/ss/formula/FormulaRenderer;->toFormulaString(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, "updatedFormula":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1, v4}, Lorg/apache/poi/xssf/usermodel/XSSFName;->setRefersToFormula(Ljava/lang/String;)V

    .line 124
    .end local v1    # "sheetIndex":I
    .end local v2    # "rowIndex":I
    .end local v3    # "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v4    # "updatedFormula":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private updatePtg(Lorg/apache/poi/ss/formula/ptg/Ptg;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "ptg"    # Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p2, "oldName"    # Ljava/lang/String;
    .param p3, "newName"    # Ljava/lang/String;

    .line 127
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Pxg;

    if-eqz v0, :cond_1

    .line 128
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Pxg;

    .line 129
    .local v0, "pxg":Lorg/apache/poi/ss/formula/ptg/Pxg;
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/ptg/Pxg;->getExternalWorkbookNumber()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 130
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/ptg/Pxg;->getSheetName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/ptg/Pxg;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    invoke-interface {v0, p3}, Lorg/apache/poi/ss/formula/ptg/Pxg;->setSheetName(Ljava/lang/String;)V

    .line 134
    :cond_0
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/Pxg3D;

    if-eqz v1, :cond_1

    .line 135
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/formula/ptg/Pxg3D;

    .line 136
    .local v1, "pxg3D":Lorg/apache/poi/ss/formula/ptg/Pxg3D;
    invoke-interface {v1}, Lorg/apache/poi/ss/formula/ptg/Pxg3D;->getLastSheetName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lorg/apache/poi/ss/formula/ptg/Pxg3D;->getLastSheetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    invoke-interface {v1, p3}, Lorg/apache/poi/ss/formula/ptg/Pxg3D;->setLastSheetName(Ljava/lang/String;)V

    .line 143
    .end local v0    # "pxg":Lorg/apache/poi/ss/formula/ptg/Pxg;
    .end local v1    # "pxg3D":Lorg/apache/poi/ss/formula/ptg/Pxg3D;
    :cond_1
    return-void
.end method


# virtual methods
.method public updateSheetName(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "sheetIndex"    # I
    .param p2, "oldName"    # Ljava/lang/String;
    .param p3, "newName"    # Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFFormulaUtils;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getAllNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFName;

    .line 69
    .local v1, "nm":Lorg/apache/poi/xssf/usermodel/XSSFName;
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getSheetIndex()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getSheetIndex()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 70
    :cond_0
    invoke-direct {p0, v1, p2, p3}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFFormulaUtils;->updateName(Lorg/apache/poi/xssf/usermodel/XSSFName;Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "nm":Lorg/apache/poi/xssf/usermodel/XSSFName;
    :cond_1
    goto :goto_0

    .line 75
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFFormulaUtils;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/usermodel/Sheet;

    .line 76
    .local v1, "sh":Lorg/apache/poi/ss/usermodel/Sheet;
    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Sheet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/usermodel/Row;

    .line 77
    .local v3, "row":Lorg/apache/poi/ss/usermodel/Row;
    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/Row;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ss/usermodel/Cell;

    .line 78
    .local v5, "cell":Lorg/apache/poi/ss/usermodel/Cell;
    invoke-interface {v5}, Lorg/apache/poi/ss/usermodel/Cell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v6

    sget-object v7, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v6, v7, :cond_3

    .line 79
    move-object v6, v5

    check-cast v6, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-direct {p0, v6, p2, p3}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFFormulaUtils;->updateFormula(Lorg/apache/poi/xssf/usermodel/XSSFCell;Ljava/lang/String;Ljava/lang/String;)V

    .end local v5    # "cell":Lorg/apache/poi/ss/usermodel/Cell;
    :cond_3
    goto :goto_3

    .end local v3    # "row":Lorg/apache/poi/ss/usermodel/Row;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_4
    goto :goto_2

    .end local v1    # "sh":Lorg/apache/poi/ss/usermodel/Sheet;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    goto :goto_1

    .line 84
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_6
    return-void
.end method
