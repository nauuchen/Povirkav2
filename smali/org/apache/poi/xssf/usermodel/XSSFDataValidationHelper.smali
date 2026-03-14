.class public Lorg/apache/poi/xssf/usermodel/XSSFDataValidationHelper;
.super Ljava/lang/Object;
.source "XSSFDataValidationHelper.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/DataValidationHelper;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    .locals 0
    .param p1, "xssfSheet"    # Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method public createCustomConstraint(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .locals 2
    .param p1, "formula"    # Ljava/lang/String;

    .line 111
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public createDateConstraint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .locals 2
    .param p1, "operatorType"    # I
    .param p2, "formula1"    # Ljava/lang/String;
    .param p3, "formula2"    # Ljava/lang/String;
    .param p4, "dateFormat"    # Ljava/lang/String;

    .line 52
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createDecimalConstraint(ILjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .locals 2
    .param p1, "operatorType"    # I
    .param p2, "formula1"    # Ljava/lang/String;
    .param p3, "formula2"    # Ljava/lang/String;

    .line 59
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createExplicitListConstraint([Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .locals 1
    .param p1, "listOfValues"    # [Ljava/lang/String;

    .line 66
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;

    invoke-direct {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public createFormulaListConstraint(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .locals 2
    .param p1, "listFormula"    # Ljava/lang/String;

    .line 73
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public createIntegerConstraint(ILjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .locals 2
    .param p1, "operatorType"    # I
    .param p2, "formula1"    # Ljava/lang/String;
    .param p3, "formula2"    # Ljava/lang/String;

    .line 93
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createNumericConstraint(IILjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .locals 1
    .param p1, "validationType"    # I
    .param p2, "operatorType"    # I
    .param p3, "formula1"    # Ljava/lang/String;
    .param p4, "formula2"    # Ljava/lang/String;

    .line 79
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 80
    invoke-virtual {p0, p2, p3, p4}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationHelper;->createIntegerConstraint(ILjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;

    move-result-object v0

    return-object v0

    .line 81
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 82
    invoke-virtual {p0, p2, p3, p4}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationHelper;->createDecimalConstraint(ILjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;

    move-result-object v0

    return-object v0

    .line 83
    :cond_1
    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    .line 84
    invoke-virtual {p0, p2, p3, p4}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationHelper;->createTextLengthConstraint(ILjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;

    move-result-object v0

    return-object v0

    .line 86
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public createTextLengthConstraint(ILjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .locals 2
    .param p1, "operatorType"    # I
    .param p2, "formula1"    # Ljava/lang/String;
    .param p3, "formula2"    # Ljava/lang/String;

    .line 100
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createTimeConstraint(ILjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .locals 2
    .param p1, "operatorType"    # I
    .param p2, "formula1"    # Ljava/lang/String;
    .param p3, "formula2"    # Ljava/lang/String;

    .line 107
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createValidation(Lorg/apache/poi/ss/usermodel/DataValidationConstraint;Lorg/apache/poi/ss/util/CellRangeAddressList;)Lorg/apache/poi/ss/usermodel/DataValidation;
    .locals 8
    .param p1, "constraint"    # Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .param p2, "cellRangeAddressList"    # Lorg/apache/poi/ss/util/CellRangeAddressList;

    .line 118
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;

    .line 119
    .local v0, "dataValidationConstraint":Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    move-result-object v1

    .line 121
    .local v1, "newDataValidation":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint;->getValidationType()I

    move-result v2

    .line 122
    .local v2, "validationType":I
    packed-switch v2, :pswitch_data_0

    .line 149
    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->NONE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    invoke-interface {v1, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;)V

    goto :goto_0

    .line 146
    :pswitch_0
    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->CUSTOM:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    invoke-interface {v1, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;)V

    .line 147
    goto :goto_0

    .line 131
    :pswitch_1
    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->TEXT_LENGTH:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    invoke-interface {v1, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;)V

    .line 132
    goto :goto_0

    .line 143
    :pswitch_2
    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->TIME:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    invoke-interface {v1, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;)V

    .line 144
    goto :goto_0

    .line 134
    :pswitch_3
    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->DATE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    invoke-interface {v1, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;)V

    .line 135
    goto :goto_0

    .line 124
    :pswitch_4
    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->LIST:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    invoke-interface {v1, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;)V

    .line 125
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint;->getFormula1()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setFormula1(Ljava/lang/String;)V

    .line 126
    goto :goto_0

    .line 140
    :pswitch_5
    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->DECIMAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    invoke-interface {v1, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;)V

    .line 141
    goto :goto_0

    .line 137
    :pswitch_6
    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->WHOLE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    invoke-interface {v1, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;)V

    .line 138
    goto :goto_0

    .line 128
    :pswitch_7
    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->NONE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    invoke-interface {v1, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;)V

    .line 129
    nop

    .line 152
    :goto_0
    if-eqz v2, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 153
    sget-object v3, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->operatorTypeMappings:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint;->getOperator()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator$Enum;

    .line 154
    .local v3, "op":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator$Enum;
    if-eqz v3, :cond_0

    .line 155
    invoke-interface {v1, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setOperator(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator$Enum;)V

    .line 157
    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint;->getFormula1()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 158
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint;->getFormula1()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setFormula1(Ljava/lang/String;)V

    .line 160
    :cond_1
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint;->getFormula2()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 161
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint;->getFormula2()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setFormula2(Ljava/lang/String;)V

    .line 165
    .end local v3    # "op":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator$Enum;
    :cond_2
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellRangeAddressList;->getCellRangeAddresses()[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v3

    .line 166
    .local v3, "cellRangeAddresses":[Lorg/apache/poi/ss/util/CellRangeAddress;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v4, "sqref":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_3

    .line 168
    aget-object v6, v3, v5

    .line 169
    .local v6, "cellRangeAddress":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {v6}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    .end local v6    # "cellRangeAddress":Lorg/apache/poi/ss/util/CellRangeAddress;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 171
    .end local v5    # "i":I
    :cond_3
    invoke-interface {v1, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setSqref(Ljava/util/List;)V

    .line 172
    const/4 v5, 0x1

    invoke-interface {v1, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setAllowBlank(Z)V

    .line 173
    sget-object v5, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle;->STOP:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle$Enum;

    invoke-interface {v1, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setErrorStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle$Enum;)V

    .line 175
    new-instance v5, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;

    invoke-direct {v5, v0, p2, v1}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;Lorg/apache/poi/ss/util/CellRangeAddressList;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;)V

    return-object v5

    :pswitch_data_0
    .packed-switch 0x0
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
