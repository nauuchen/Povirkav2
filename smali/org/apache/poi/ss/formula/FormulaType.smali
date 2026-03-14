.class public final enum Lorg/apache/poi/ss/formula/FormulaType;
.super Ljava/lang/Enum;
.source "FormulaType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/formula/FormulaType;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/formula/FormulaType;

.field public static final enum ARRAY:Lorg/apache/poi/ss/formula/FormulaType;

.field public static final enum CELL:Lorg/apache/poi/ss/formula/FormulaType;

.field public static final enum CONDFORMAT:Lorg/apache/poi/ss/formula/FormulaType;

.field public static final enum DATAVALIDATION_LIST:Lorg/apache/poi/ss/formula/FormulaType;

.field public static final enum NAMEDRANGE:Lorg/apache/poi/ss/formula/FormulaType;

.field public static final enum SHARED:Lorg/apache/poi/ss/formula/FormulaType;


# instance fields
.field private final isSingleValue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 30
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaType;

    const-string v1, "CELL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/ss/formula/FormulaType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/apache/poi/ss/formula/FormulaType;->CELL:Lorg/apache/poi/ss/formula/FormulaType;

    .line 38
    new-instance v1, Lorg/apache/poi/ss/formula/FormulaType;

    const-string v4, "SHARED"

    invoke-direct {v1, v4, v3, v3}, Lorg/apache/poi/ss/formula/FormulaType;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lorg/apache/poi/ss/formula/FormulaType;->SHARED:Lorg/apache/poi/ss/formula/FormulaType;

    .line 44
    new-instance v4, Lorg/apache/poi/ss/formula/FormulaType;

    const-string v5, "ARRAY"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v2}, Lorg/apache/poi/ss/formula/FormulaType;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lorg/apache/poi/ss/formula/FormulaType;->ARRAY:Lorg/apache/poi/ss/formula/FormulaType;

    .line 47
    new-instance v5, Lorg/apache/poi/ss/formula/FormulaType;

    const-string v7, "CONDFORMAT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v3}, Lorg/apache/poi/ss/formula/FormulaType;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lorg/apache/poi/ss/formula/FormulaType;->CONDFORMAT:Lorg/apache/poi/ss/formula/FormulaType;

    .line 50
    new-instance v7, Lorg/apache/poi/ss/formula/FormulaType;

    const-string v9, "NAMEDRANGE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v2}, Lorg/apache/poi/ss/formula/FormulaType;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Lorg/apache/poi/ss/formula/FormulaType;->NAMEDRANGE:Lorg/apache/poi/ss/formula/FormulaType;

    .line 56
    new-instance v9, Lorg/apache/poi/ss/formula/FormulaType;

    const-string v11, "DATAVALIDATION_LIST"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v2}, Lorg/apache/poi/ss/formula/FormulaType;-><init>(Ljava/lang/String;IZ)V

    sput-object v9, Lorg/apache/poi/ss/formula/FormulaType;->DATAVALIDATION_LIST:Lorg/apache/poi/ss/formula/FormulaType;

    .line 27
    const/4 v11, 0x6

    new-array v11, v11, [Lorg/apache/poi/ss/formula/FormulaType;

    aput-object v0, v11, v2

    aput-object v1, v11, v3

    aput-object v4, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lorg/apache/poi/ss/formula/FormulaType;->$VALUES:[Lorg/apache/poi/ss/formula/FormulaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p3, "singleValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput-boolean p3, p0, Lorg/apache/poi/ss/formula/FormulaType;->isSingleValue:Z

    .line 65
    return-void
.end method

.method public static forInt(I)Lorg/apache/poi/ss/formula/FormulaType;
    .locals 3
    .param p0, "code"    # I

    .line 82
    if-ltz p0, :cond_0

    invoke-static {}, Lorg/apache/poi/ss/formula/FormulaType;->values()[Lorg/apache/poi/ss/formula/FormulaType;

    move-result-object v0

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 83
    invoke-static {}, Lorg/apache/poi/ss/formula/FormulaType;->values()[Lorg/apache/poi/ss/formula/FormulaType;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid FormulaType code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/formula/FormulaType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lorg/apache/poi/ss/formula/FormulaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/FormulaType;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/ss/formula/FormulaType;
    .locals 1

    .line 27
    sget-object v0, Lorg/apache/poi/ss/formula/FormulaType;->$VALUES:[Lorg/apache/poi/ss/formula/FormulaType;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/formula/FormulaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/formula/FormulaType;

    return-object v0
.end method


# virtual methods
.method public isSingleValue()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lorg/apache/poi/ss/formula/FormulaType;->isSingleValue:Z

    return v0
.end method
