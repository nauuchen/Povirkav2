.class public final enum Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
.super Ljava/lang/Enum;
.source "LineDecoration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sl/usermodel/LineDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DecorationSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

.field public static final enum LARGE:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

.field public static final enum MEDIUM:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

.field public static final enum SMALL:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;


# instance fields
.field public final nativeId:I

.field public final ooxmlId:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 56
    new-instance v0, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    const-string v1, "SMALL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->SMALL:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    .line 57
    new-instance v1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    const-string v4, "MEDIUM"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v3, v5}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->MEDIUM:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    .line 58
    new-instance v4, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    const-string v6, "LARGE"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v5, v7}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->LARGE:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    .line 55
    new-array v6, v7, [Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->$VALUES:[Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "nativeId"    # I
    .param p4, "ooxmlId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput p3, p0, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->nativeId:I

    .line 65
    iput p4, p0, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->ooxmlId:I

    .line 66
    return-void
.end method

.method public static fromNativeId(I)Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    .locals 5
    .param p0, "nativeId"    # I

    .line 69
    invoke-static {}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->values()[Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 70
    .local v3, "ld":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    iget v4, v3, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->nativeId:I

    if-ne v4, p0, :cond_0

    return-object v3

    .line 69
    .end local v3    # "ld":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    .end local v0    # "arr$":[Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static fromOoxmlId(I)Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    .locals 5
    .param p0, "ooxmlId"    # I

    .line 76
    invoke-static {}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->values()[Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 77
    .local v3, "ds":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    iget v4, v3, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->ooxmlId:I

    if-ne v4, p0, :cond_0

    return-object v3

    .line 76
    .end local v3    # "ds":Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    .end local v0    # "arr$":[Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 55
    const-class v0, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    .locals 1

    .line 55
    sget-object v0, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->$VALUES:[Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    invoke-virtual {v0}, [Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    return-object v0
.end method
