.class public Lorg/apache/poi/xssf/usermodel/helpers/XSSFIgnoredErrorHelper;
.super Ljava/lang/Object;
.source "XSSFIgnoredErrorHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static varargs addIgnoredErrors(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;Ljava/lang/String;[Lorg/apache/poi/ss/usermodel/IgnoredErrorType;)V
    .locals 4
    .param p0, "err"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;
    .param p1, "ref"    # Ljava/lang/String;
    .param p2, "ignoredErrorTypes"    # [Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

    .line 91
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->setSqref(Ljava/util/List;)V

    .line 92
    move-object v0, p2

    .local v0, "arr$":[Lorg/apache/poi/ss/usermodel/IgnoredErrorType;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 93
    .local v3, "errType":Lorg/apache/poi/ss/usermodel/IgnoredErrorType;
    invoke-static {v3, p0}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFIgnoredErrorHelper;->set(Lorg/apache/poi/ss/usermodel/IgnoredErrorType;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;)V

    .line 92
    .end local v3    # "errType":Lorg/apache/poi/ss/usermodel/IgnoredErrorType;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    .end local v0    # "arr$":[Lorg/apache/poi/ss/usermodel/IgnoredErrorType;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method

.method public static getErrorTypes(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;)Ljava/util/Set;
    .locals 6
    .param p0, "err"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;",
            ")",
            "Ljava/util/Set<",
            "Lorg/apache/poi/ss/usermodel/IgnoredErrorType;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 99
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/ss/usermodel/IgnoredErrorType;>;"
    invoke-static {}, Lorg/apache/poi/ss/usermodel/IgnoredErrorType;->values()[Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

    move-result-object v1

    .local v1, "arr$":[Lorg/apache/poi/ss/usermodel/IgnoredErrorType;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 100
    .local v4, "errType":Lorg/apache/poi/ss/usermodel/IgnoredErrorType;
    invoke-static {v4, p0}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFIgnoredErrorHelper;->isSet(Lorg/apache/poi/ss/usermodel/IgnoredErrorType;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 101
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    .end local v4    # "errType":Lorg/apache/poi/ss/usermodel/IgnoredErrorType;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    .end local v1    # "arr$":[Lorg/apache/poi/ss/usermodel/IgnoredErrorType;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    return-object v0
.end method

.method public static isSet(Lorg/apache/poi/ss/usermodel/IgnoredErrorType;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;)Z
    .locals 2
    .param p0, "errorType"    # Lorg/apache/poi/ss/usermodel/IgnoredErrorType;
    .param p1, "error"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;

    .line 32
    sget-object v0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFIgnoredErrorHelper$1;->$SwitchMap$org$apache$poi$ss$usermodel$IgnoredErrorType:[I

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/IgnoredErrorType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 52
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 50
    :pswitch_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->isSetUnlockedFormula()Z

    move-result v0

    return v0

    .line 48
    :pswitch_1
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->isSetTwoDigitTextYear()Z

    move-result v0

    return v0

    .line 46
    :pswitch_2
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->isSetNumberStoredAsText()Z

    move-result v0

    return v0

    .line 44
    :pswitch_3
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->isSetListDataValidation()Z

    move-result v0

    return v0

    .line 42
    :pswitch_4
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->isSetFormulaRange()Z

    move-result v0

    return v0

    .line 40
    :pswitch_5
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->isSetFormula()Z

    move-result v0

    return v0

    .line 38
    :pswitch_6
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->isSetEvalError()Z

    move-result v0

    return v0

    .line 36
    :pswitch_7
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->isSetEmptyCellReference()Z

    move-result v0

    return v0

    .line 34
    :pswitch_8
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->isSetCalculatedColumn()Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
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

.method public static set(Lorg/apache/poi/ss/usermodel/IgnoredErrorType;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;)V
    .locals 2
    .param p0, "errorType"    # Lorg/apache/poi/ss/usermodel/IgnoredErrorType;
    .param p1, "error"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;

    .line 57
    sget-object v0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFIgnoredErrorHelper$1;->$SwitchMap$org$apache$poi$ss$usermodel$IgnoredErrorType:[I

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/IgnoredErrorType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 86
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 83
    :pswitch_0
    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->setUnlockedFormula(Z)V

    .line 84
    goto :goto_0

    .line 80
    :pswitch_1
    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->setTwoDigitTextYear(Z)V

    .line 81
    goto :goto_0

    .line 77
    :pswitch_2
    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->setNumberStoredAsText(Z)V

    .line 78
    goto :goto_0

    .line 74
    :pswitch_3
    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->setListDataValidation(Z)V

    .line 75
    goto :goto_0

    .line 71
    :pswitch_4
    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->setFormulaRange(Z)V

    .line 72
    goto :goto_0

    .line 68
    :pswitch_5
    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->setFormula(Z)V

    .line 69
    goto :goto_0

    .line 65
    :pswitch_6
    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->setEvalError(Z)V

    .line 66
    goto :goto_0

    .line 62
    :pswitch_7
    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->setEmptyCellReference(Z)V

    .line 63
    goto :goto_0

    .line 59
    :pswitch_8
    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->setCalculatedColumn(Z)V

    .line 60
    nop

    .line 88
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
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
