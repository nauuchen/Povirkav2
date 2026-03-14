.class final Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$Name;
.super Ljava/lang/Object;
.source "BaseXSSFEvaluationWorkbook.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/EvaluationName;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Name"
.end annotation


# instance fields
.field private final _fpBook:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

.field private final _index:I

.field private final _nameRecord:Lorg/apache/poi/xssf/usermodel/XSSFName;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFName;ILorg/apache/poi/ss/formula/FormulaParsingWorkbook;)V
    .locals 0
    .param p1, "name"    # Lorg/apache/poi/xssf/usermodel/XSSFName;
    .param p2, "index"    # I
    .param p3, "fpBook"    # Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$Name;->_nameRecord:Lorg/apache/poi/xssf/usermodel/XSSFName;

    .line 418
    iput p2, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$Name;->_index:I

    .line 419
    iput-object p3, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$Name;->_fpBook:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    .line 420
    return-void
.end method


# virtual methods
.method public createPtg()Lorg/apache/poi/ss/formula/ptg/NamePtg;
    .locals 2

    .line 446
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/NamePtg;

    iget v1, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$Name;->_index:I

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ptg/NamePtg;-><init>(I)V

    return-object v0
.end method

.method public getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 4

    .line 424
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$Name;->_nameRecord:Lorg/apache/poi/xssf/usermodel/XSSFName;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getRefersToFormula()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$Name;->_fpBook:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    sget-object v2, Lorg/apache/poi/ss/formula/FormulaType;->NAMEDRANGE:Lorg/apache/poi/ss/formula/FormulaType;

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$Name;->_nameRecord:Lorg/apache/poi/xssf/usermodel/XSSFName;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getSheetIndex()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;I)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    return-object v0
.end method

.method public getNameText()Ljava/lang/String;
    .locals 1

    .line 428
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$Name;->_nameRecord:Lorg/apache/poi/xssf/usermodel/XSSFName;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getNameName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasFormula()Z
    .locals 3

    .line 433
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$Name;->_nameRecord:Lorg/apache/poi/xssf/usermodel/XSSFName;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getCTName()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    move-result-object v0

    .line 434
    .local v0, "ctn":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->getStringValue()Ljava/lang/String;

    move-result-object v1

    .line 435
    .local v1, "strVal":Ljava/lang/String;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->getFunction()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isFunctionName()Z
    .locals 1

    .line 439
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$Name;->_nameRecord:Lorg/apache/poi/xssf/usermodel/XSSFName;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFName;->isFunctionName()Z

    move-result v0

    return v0
.end method

.method public isRange()Z
    .locals 1

    .line 443
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$Name;->hasFormula()Z

    move-result v0

    return v0
.end method
