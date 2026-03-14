.class public final Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;
.super Ljava/lang/Object;
.source "FeatFormulaErr2.java"

# interfaces
.implements Lorg/apache/poi/hssf/record/common/SharedFeature;


# static fields
.field private static final CHECK_CALCULATION_ERRORS:Lorg/apache/poi/util/BitField;

.field private static final CHECK_DATETIME_FORMATS:Lorg/apache/poi/util/BitField;

.field private static final CHECK_EMPTY_CELL_REF:Lorg/apache/poi/util/BitField;

.field private static final CHECK_INCONSISTENT_FORMULAS:Lorg/apache/poi/util/BitField;

.field private static final CHECK_INCONSISTENT_RANGES:Lorg/apache/poi/util/BitField;

.field private static final CHECK_NUMBERS_AS_TEXT:Lorg/apache/poi/util/BitField;

.field private static final CHECK_UNPROTECTED_FORMULAS:Lorg/apache/poi/util/BitField;

.field private static final PERFORM_DATA_VALIDATION:Lorg/apache/poi/util/BitField;


# instance fields
.field private errorCheck:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_CALCULATION_ERRORS:Lorg/apache/poi/util/BitField;

    .line 40
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_EMPTY_CELL_REF:Lorg/apache/poi/util/BitField;

    .line 41
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_NUMBERS_AS_TEXT:Lorg/apache/poi/util/BitField;

    .line 42
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_INCONSISTENT_RANGES:Lorg/apache/poi/util/BitField;

    .line 43
    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_INCONSISTENT_FORMULAS:Lorg/apache/poi/util/BitField;

    .line 44
    const/16 v0, 0x20

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_DATETIME_FORMATS:Lorg/apache/poi/util/BitField;

    .line 45
    const/16 v0, 0x40

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_UNPROTECTED_FORMULAS:Lorg/apache/poi/util/BitField;

    .line 46
    const/16 v0, 0x80

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->PERFORM_DATA_VALIDATION:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    .line 58
    return-void
.end method


# virtual methods
.method public _getRawErrorCheckValue()I
    .locals 1

    .line 84
    iget v0, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    return v0
.end method

.method public getCheckCalculationErrors()Z
    .locals 2

    .line 88
    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_CALCULATION_ERRORS:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getCheckDateTimeFormats()Z
    .locals 2

    .line 123
    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_DATETIME_FORMATS:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getCheckEmptyCellRef()Z
    .locals 2

    .line 95
    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_EMPTY_CELL_REF:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getCheckInconsistentFormulas()Z
    .locals 2

    .line 116
    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_INCONSISTENT_FORMULAS:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getCheckInconsistentRanges()Z
    .locals 2

    .line 109
    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_INCONSISTENT_RANGES:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getCheckNumbersAsText()Z
    .locals 2

    .line 102
    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_NUMBERS_AS_TEXT:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getCheckUnprotectedFormulas()Z
    .locals 2

    .line 130
    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_UNPROTECTED_FORMULAS:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getDataSize()I
    .locals 1

    .line 80
    const/4 v0, 0x4

    return v0
.end method

.method public getPerformDataValidation()Z
    .locals 2

    .line 137
    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->PERFORM_DATA_VALIDATION:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 76
    iget v0, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 77
    return-void
.end method

.method public setCheckCalculationErrors(Z)V
    .locals 2
    .param p1, "checkCalculationErrors"    # Z

    .line 91
    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_CALCULATION_ERRORS:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    .line 92
    return-void
.end method

.method public setCheckDateTimeFormats(Z)V
    .locals 2
    .param p1, "checkDateTimeFormats"    # Z

    .line 126
    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_DATETIME_FORMATS:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    .line 127
    return-void
.end method

.method public setCheckEmptyCellRef(Z)V
    .locals 2
    .param p1, "checkEmptyCellRef"    # Z

    .line 98
    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_EMPTY_CELL_REF:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    .line 99
    return-void
.end method

.method public setCheckInconsistentFormulas(Z)V
    .locals 2
    .param p1, "checkInconsistentFormulas"    # Z

    .line 119
    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_INCONSISTENT_FORMULAS:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    .line 120
    return-void
.end method

.method public setCheckInconsistentRanges(Z)V
    .locals 2
    .param p1, "checkInconsistentRanges"    # Z

    .line 112
    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_INCONSISTENT_RANGES:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    .line 113
    return-void
.end method

.method public setCheckNumbersAsText(Z)V
    .locals 2
    .param p1, "checkNumbersAsText"    # Z

    .line 105
    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_NUMBERS_AS_TEXT:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    .line 106
    return-void
.end method

.method public setCheckUnprotectedFormulas(Z)V
    .locals 2
    .param p1, "checkUnprotectedFormulas"    # Z

    .line 133
    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_UNPROTECTED_FORMULAS:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    .line 134
    return-void
.end method

.method public setPerformDataValidation(Z)V
    .locals 2
    .param p1, "performDataValidation"    # Z

    .line 140
    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->PERFORM_DATA_VALIDATION:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    .line 141
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 62
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, " [FEATURE FORMULA ERRORS]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    const-string v1, "  checkCalculationErrors    = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    const-string v1, "  checkEmptyCellRef         = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    const-string v1, "  checkNumbersAsText        = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    const-string v1, "  checkInconsistentRanges   = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    const-string v1, "  checkInconsistentFormulas = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    const-string v1, "  checkDateTimeFormats      = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    const-string v1, "  checkUnprotectedFormulas  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v1, "  performDataValidation     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    const-string v1, " [/FEATURE FORMULA ERRORS]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
