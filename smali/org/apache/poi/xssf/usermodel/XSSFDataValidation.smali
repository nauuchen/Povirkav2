.class public Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;
.super Ljava/lang/Object;
.source "XSSFDataValidation.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/DataValidation;


# static fields
.field private static final MAX_TEXT_LENGTH:I = 0xff

.field static errorStyleMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle$Enum;",
            ">;"
        }
    .end annotation
.end field

.field static operatorTypeMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator$Enum;",
            ">;"
        }
    .end annotation
.end field

.field static operatorTypeReverseMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator$Enum;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static validationTypeMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;",
            ">;"
        }
    .end annotation
.end field

.field static validationTypeReverseMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

.field private regions:Lorg/apache/poi/ss/util/CellRangeAddressList;

.field private validationConstraint:Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->operatorTypeMappings:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->operatorTypeReverseMappings:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->validationTypeMappings:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->validationTypeReverseMappings:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->errorStyleMappings:Ljava/util/Map;

    .line 51
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle;->INFORMATION:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle$Enum;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->errorStyleMappings:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle;->STOP:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle$Enum;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->errorStyleMappings:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle;->WARNING:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle$Enum;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->operatorTypeMappings:Ljava/util/Map;

    sget-object v4, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator;->BETWEEN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator$Enum;

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->operatorTypeMappings:Ljava/util/Map;

    sget-object v4, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator;->NOT_BETWEEN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator$Enum;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->operatorTypeMappings:Ljava/util/Map;

    sget-object v4, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator;->EQUAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator$Enum;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->operatorTypeMappings:Ljava/util/Map;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator;->NOT_EQUAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator$Enum;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->operatorTypeMappings:Ljava/util/Map;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator;->GREATER_THAN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator$Enum;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->operatorTypeMappings:Ljava/util/Map;

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator;->GREATER_THAN_OR_EQUAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator$Enum;

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->operatorTypeMappings:Ljava/util/Map;

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator;->LESS_THAN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator$Enum;

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->operatorTypeMappings:Ljava/util/Map;

    const/4 v8, 0x7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v9, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator;->LESS_THAN_OR_EQUAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator$Enum;

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->operatorTypeMappings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 65
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator$Enum;>;"
    sget-object v10, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->operatorTypeReverseMappings:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 68
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator$Enum;>;"
    :cond_0
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->validationTypeMappings:Ljava/util/Map;

    sget-object v9, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->CUSTOM:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->validationTypeMappings:Ljava/util/Map;

    sget-object v8, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->DATE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->validationTypeMappings:Ljava/util/Map;

    sget-object v5, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->DECIMAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->validationTypeMappings:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->LIST:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->validationTypeMappings:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->NONE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->validationTypeMappings:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->TEXT_LENGTH:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->validationTypeMappings:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->TIME:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->validationTypeMappings:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->WHOLE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->validationTypeMappings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 78
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;>;"
    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->validationTypeReverseMappings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 80
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;>;"
    :cond_1
    return-void
.end method

.method constructor <init>(Lorg/apache/poi/ss/util/CellRangeAddressList;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;)V
    .locals 1
    .param p1, "regions"    # Lorg/apache/poi/ss/util/CellRangeAddressList;
    .param p2, "ctDataValidation"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    .line 83
    invoke-static {p2}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->getConstraint(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;)Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;Lorg/apache/poi/ss/util/CellRangeAddressList;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;Lorg/apache/poi/ss/util/CellRangeAddressList;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;)V
    .locals 0
    .param p1, "constraint"    # Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;
    .param p2, "regions"    # Lorg/apache/poi/ss/util/CellRangeAddressList;
    .param p3, "ctDataValidation"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->validationConstraint:Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;

    .line 89
    iput-object p3, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    .line 90
    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->regions:Lorg/apache/poi/ss/util/CellRangeAddressList;

    .line 91
    return-void
.end method

.method private encodeUtf(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "text"    # Ljava/lang/String;

    .line 143
    if-nez p1, :cond_0

    .line 144
    const/4 v0, 0x0

    return-object v0

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .local v1, "arr$":[C
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_3

    aget-char v4, v1, v3

    .line 150
    .local v4, "c":C
    const/16 v5, 0x20

    if-ge v4, v5, :cond_2

    .line 151
    const-string v5, "_x"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x10

    if-ge v4, v6, :cond_1

    const-string v6, "000"

    goto :goto_1

    :cond_1
    const-string v6, "00"

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 153
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    .end local v4    # "c":C
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 157
    .end local v1    # "arr$":[C
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getConstraint(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;)Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;
    .locals 9
    .param p0, "ctDataValidation"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    .line 282
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->getFormula1()Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "formula1":Ljava/lang/String;
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->getFormula2()Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "formula2":Ljava/lang/String;
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->getOperator()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator$Enum;

    move-result-object v2

    .line 285
    .local v2, "operator":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator$Enum;
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->getType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    move-result-object v3

    .line 286
    .local v3, "type":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;
    sget-object v4, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->validationTypeReverseMappings:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 287
    .local v4, "validationType":Ljava/lang/Integer;
    sget-object v5, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->operatorTypeReverseMappings:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 288
    .local v5, "operatorType":Ljava/lang/Integer;
    new-instance v6, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v6, v7, v8, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public createErrorBox(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .line 104
    const/16 v0, 0xff

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error-title cannot be longer than 32 characters, but had: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v0, :cond_2

    goto :goto_1

    .line 108
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error-text cannot be longer than 255 characters, but had: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->encodeUtf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setErrorTitle(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->encodeUtf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setError(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public createPromptBox(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .line 119
    const/16 v0, 0xff

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error-title cannot be longer than 32 characters, but had: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v0, :cond_2

    goto :goto_1

    .line 123
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error-text cannot be longer than 255 characters, but had: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->encodeUtf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setPromptTitle(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->encodeUtf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setPrompt(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method getCtDdataValidation()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    return-object v0
.end method

.method public getEmptyCellAllowed()Z
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->getAllowBlank()Z

    move-result v0

    return v0
.end method

.method public getErrorBoxText()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->getError()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorBoxTitle()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->getErrorTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorStyle()I
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->getErrorStyle()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle$Enum;->intValue()I

    move-result v0

    return v0
.end method

.method public getPromptBoxText()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->getPrompt()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPromptBoxTitle()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->getPromptTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRegions()Lorg/apache/poi/ss/util/CellRangeAddressList;
    .locals 1

    .line 268
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->regions:Lorg/apache/poi/ss/util/CellRangeAddressList;

    return-object v0
.end method

.method public getShowErrorBox()Z
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->getShowErrorMessage()Z

    move-result v0

    return v0
.end method

.method public getShowPromptBox()Z
    .locals 1

    .line 213
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->getShowInputMessage()Z

    move-result v0

    return v0
.end method

.method public getSuppressDropDownArrow()Z
    .locals 1

    .line 220
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->getShowDropDown()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getValidationConstraint()Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .locals 1

    .line 227
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->validationConstraint:Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;

    return-object v0
.end method

.method public prettyPrint()Ljava/lang/String;
    .locals 6

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->regions:Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddressList;->getCellRangeAddresses()[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v1

    .local v1, "arr$":[Lorg/apache/poi/ss/util/CellRangeAddress;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 274
    .local v4, "address":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .end local v4    # "address":Lorg/apache/poi/ss/util/CellRangeAddress;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 276
    .end local v1    # "arr$":[Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->validationConstraint:Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->prettyPrint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setEmptyCellAllowed(Z)V
    .locals 1
    .param p1, "allowed"    # Z

    .line 234
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setAllowBlank(Z)V

    .line 235
    return-void
.end method

.method public setErrorStyle(I)V
    .locals 3
    .param p1, "errorStyle"    # I

    .line 241
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->errorStyleMappings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setErrorStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle$Enum;)V

    .line 242
    return-void
.end method

.method public setShowErrorBox(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 248
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setShowErrorMessage(Z)V

    .line 249
    return-void
.end method

.method public setShowPromptBox(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 255
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setShowInputMessage(Z)V

    .line 256
    return-void
.end method

.method public setSuppressDropDownArrow(Z)V
    .locals 2
    .param p1, "suppress"    # Z

    .line 262
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->validationConstraint:Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->getValidationType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 263
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    xor-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setShowDropDown(Z)V

    .line 265
    :cond_0
    return-void
.end method
