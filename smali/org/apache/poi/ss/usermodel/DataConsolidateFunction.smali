.class public final enum Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;
.super Ljava/lang/Enum;
.source "DataConsolidateFunction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum AVERAGE:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum COUNT:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum COUNT_NUMS:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum MAX:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum MIN:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum PRODUCT:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum STD_DEV:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum STD_DEVP:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum SUM:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum VAR:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum VARP:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 29
    new-instance v0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v1, "AVERAGE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "Average"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->AVERAGE:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    .line 30
    new-instance v1, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v4, "COUNT"

    const/4 v5, 0x2

    const-string v6, "Count"

    invoke-direct {v1, v4, v3, v5, v6}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->COUNT:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    .line 31
    new-instance v4, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v7, "COUNT_NUMS"

    const/4 v8, 0x3

    invoke-direct {v4, v7, v5, v8, v6}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->COUNT_NUMS:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    .line 32
    new-instance v6, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v7, "MAX"

    const/4 v9, 0x4

    const-string v10, "Max"

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->MAX:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    .line 33
    new-instance v7, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v10, "MIN"

    const/4 v11, 0x5

    const-string v12, "Min"

    invoke-direct {v7, v10, v9, v11, v12}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->MIN:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    .line 34
    new-instance v10, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v12, "PRODUCT"

    const/4 v13, 0x6

    const-string v14, "Product"

    invoke-direct {v10, v12, v11, v13, v14}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->PRODUCT:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    .line 35
    new-instance v12, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v14, "STD_DEV"

    const/4 v15, 0x7

    const-string v11, "StdDev"

    invoke-direct {v12, v14, v13, v15, v11}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->STD_DEV:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    .line 36
    new-instance v11, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v14, "STD_DEVP"

    const/16 v13, 0x8

    const-string v9, "StdDevp"

    invoke-direct {v11, v14, v15, v13, v9}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->STD_DEVP:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    .line 37
    new-instance v9, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v14, "SUM"

    const/16 v15, 0x9

    const-string v8, "Sum"

    invoke-direct {v9, v14, v13, v15, v8}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->SUM:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    .line 38
    new-instance v8, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v14, "VAR"

    const/16 v13, 0xa

    const-string v5, "Var"

    invoke-direct {v8, v14, v15, v13, v5}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->VAR:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    .line 39
    new-instance v5, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v14, "VARP"

    const/16 v15, 0xb

    const-string v3, "Varp"

    invoke-direct {v5, v14, v13, v15, v3}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->VARP:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    .line 27
    new-array v3, v15, [Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    aput-object v0, v3, v2

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v4, v3, v0

    const/4 v0, 0x3

    aput-object v6, v3, v0

    const/4 v0, 0x4

    aput-object v7, v3, v0

    const/4 v0, 0x5

    aput-object v10, v3, v0

    const/4 v0, 0x6

    aput-object v12, v3, v0

    const/4 v0, 0x7

    aput-object v11, v3, v0

    const/16 v0, 0x8

    aput-object v9, v3, v0

    const/16 v0, 0x9

    aput-object v8, v3, v0

    aput-object v5, v3, v13

    sput-object v3, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->$VALUES:[Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # I
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->value:I

    .line 46
    iput-object p4, p0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->name:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;
    .locals 1

    .line 27
    sget-object v0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->$VALUES:[Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 54
    iget v0, p0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->value:I

    return v0
.end method
