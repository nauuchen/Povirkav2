.class public final enum Lorg/apache/poi/ss/usermodel/CellType;
.super Ljava/lang/Enum;
.source "CellType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/usermodel/CellType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/usermodel/CellType;

.field public static final enum BLANK:Lorg/apache/poi/ss/usermodel/CellType;

.field public static final enum BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

.field public static final enum ERROR:Lorg/apache/poi/ss/usermodel/CellType;

.field public static final enum FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

.field public static final enum NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

.field public static final enum STRING:Lorg/apache/poi/ss/usermodel/CellType;

.field public static final enum _NONE:Lorg/apache/poi/ss/usermodel/CellType;
    .annotation runtime Lorg/apache/poi/util/Internal;
        since = "POI 3.15 beta 3"
    .end annotation
.end field


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 32
    new-instance v0, Lorg/apache/poi/ss/usermodel/CellType;

    const-string v1, "_NONE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/ss/usermodel/CellType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/CellType;->_NONE:Lorg/apache/poi/ss/usermodel/CellType;

    .line 38
    new-instance v1, Lorg/apache/poi/ss/usermodel/CellType;

    const-string v3, "NUMERIC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lorg/apache/poi/ss/usermodel/CellType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    .line 41
    new-instance v3, Lorg/apache/poi/ss/usermodel/CellType;

    const-string v5, "STRING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lorg/apache/poi/ss/usermodel/CellType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    .line 47
    new-instance v5, Lorg/apache/poi/ss/usermodel/CellType;

    const-string v7, "FORMULA"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lorg/apache/poi/ss/usermodel/CellType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    .line 52
    new-instance v7, Lorg/apache/poi/ss/usermodel/CellType;

    const-string v9, "BLANK"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lorg/apache/poi/ss/usermodel/CellType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    .line 57
    new-instance v9, Lorg/apache/poi/ss/usermodel/CellType;

    const-string v11, "BOOLEAN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lorg/apache/poi/ss/usermodel/CellType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    .line 63
    new-instance v11, Lorg/apache/poi/ss/usermodel/CellType;

    const-string v13, "ERROR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v12}, Lorg/apache/poi/ss/usermodel/CellType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    .line 26
    const/4 v13, 0x7

    new-array v13, v13, [Lorg/apache/poi/ss/usermodel/CellType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lorg/apache/poi/ss/usermodel/CellType;->$VALUES:[Lorg/apache/poi/ss/usermodel/CellType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    iput p3, p0, Lorg/apache/poi/ss/usermodel/CellType;->code:I

    .line 77
    return-void
.end method

.method public static forInt(I)Lorg/apache/poi/ss/usermodel/CellType;
    .locals 5
    .param p0, "code"    # I

    .line 84
    invoke-static {}, Lorg/apache/poi/ss/usermodel/CellType;->values()[Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/poi/ss/usermodel/CellType;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 85
    .local v3, "type":Lorg/apache/poi/ss/usermodel/CellType;
    iget v4, v3, Lorg/apache/poi/ss/usermodel/CellType;->code:I

    if-ne v4, p0, :cond_0

    .line 86
    return-object v3

    .line 84
    .end local v3    # "type":Lorg/apache/poi/ss/usermodel/CellType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "arr$":[Lorg/apache/poi/ss/usermodel/CellType;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid CellType code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/CellType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/CellType;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/CellType;
    .locals 1

    .line 26
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->$VALUES:[Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/CellType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/CellType;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 97
    iget v0, p0, Lorg/apache/poi/ss/usermodel/CellType;->code:I

    return v0
.end method
