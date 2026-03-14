.class public final enum Lorg/apache/poi/wp/usermodel/HeaderFooterType;
.super Ljava/lang/Enum;
.source "HeaderFooterType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/wp/usermodel/HeaderFooterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/wp/usermodel/HeaderFooterType;

.field public static final enum DEFAULT:Lorg/apache/poi/wp/usermodel/HeaderFooterType;

.field public static final enum EVEN:Lorg/apache/poi/wp/usermodel/HeaderFooterType;

.field public static final enum FIRST:Lorg/apache/poi/wp/usermodel/HeaderFooterType;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 30
    new-instance v0, Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/wp/usermodel/HeaderFooterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/wp/usermodel/HeaderFooterType;->DEFAULT:Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    .line 36
    new-instance v1, Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    const-string v4, "EVEN"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v5}, Lorg/apache/poi/wp/usermodel/HeaderFooterType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/wp/usermodel/HeaderFooterType;->EVEN:Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    .line 42
    new-instance v4, Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    const-string v6, "FIRST"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v3, v7}, Lorg/apache/poi/wp/usermodel/HeaderFooterType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/wp/usermodel/HeaderFooterType;->FIRST:Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    .line 23
    new-array v6, v7, [Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    aput-object v0, v6, v2

    aput-object v1, v6, v5

    aput-object v4, v6, v3

    sput-object v6, Lorg/apache/poi/wp/usermodel/HeaderFooterType;->$VALUES:[Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, Lorg/apache/poi/wp/usermodel/HeaderFooterType;->code:I

    .line 48
    return-void
.end method

.method public static forInt(I)Lorg/apache/poi/wp/usermodel/HeaderFooterType;
    .locals 5
    .param p0, "i"    # I

    .line 55
    invoke-static {}, Lorg/apache/poi/wp/usermodel/HeaderFooterType;->values()[Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/poi/wp/usermodel/HeaderFooterType;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 56
    .local v3, "type":Lorg/apache/poi/wp/usermodel/HeaderFooterType;
    iget v4, v3, Lorg/apache/poi/wp/usermodel/HeaderFooterType;->code:I

    if-ne v4, p0, :cond_0

    .line 57
    return-object v3

    .line 55
    .end local v3    # "type":Lorg/apache/poi/wp/usermodel/HeaderFooterType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    .end local v0    # "arr$":[Lorg/apache/poi/wp/usermodel/HeaderFooterType;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid HeaderFooterType code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/wp/usermodel/HeaderFooterType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 23
    const-class v0, Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/wp/usermodel/HeaderFooterType;
    .locals 1

    .line 23
    sget-object v0, Lorg/apache/poi/wp/usermodel/HeaderFooterType;->$VALUES:[Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    invoke-virtual {v0}, [Lorg/apache/poi/wp/usermodel/HeaderFooterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .line 51
    iget v0, p0, Lorg/apache/poi/wp/usermodel/HeaderFooterType;->code:I

    return v0
.end method
