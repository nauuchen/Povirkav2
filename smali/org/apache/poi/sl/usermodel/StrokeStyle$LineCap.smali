.class public final enum Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;
.super Ljava/lang/Enum;
.source "StrokeStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sl/usermodel/StrokeStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LineCap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

.field public static final enum FLAT:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

.field public static final enum ROUND:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

.field public static final enum SQUARE:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;


# instance fields
.field public final nativeId:I

.field public final ooxmlId:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 26
    new-instance v0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    const-string v1, "ROUND"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;->ROUND:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    .line 28
    new-instance v1, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    const-string v4, "SQUARE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v3, v5}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;->SQUARE:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    .line 30
    new-instance v4, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    const-string v6, "FLAT"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v5, v7}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;->FLAT:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    .line 24
    new-array v6, v7, [Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;->$VALUES:[Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

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

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput p3, p0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;->nativeId:I

    .line 37
    iput p4, p0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;->ooxmlId:I

    .line 38
    return-void
.end method

.method public static fromNativeId(I)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;
    .locals 5
    .param p0, "nativeId"    # I

    .line 41
    invoke-static {}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;->values()[Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 42
    .local v3, "ld":Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;
    iget v4, v3, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;->nativeId:I

    if-ne v4, p0, :cond_0

    return-object v3

    .line 41
    .end local v3    # "ld":Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    .end local v0    # "arr$":[Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static fromOoxmlId(I)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;
    .locals 5
    .param p0, "ooxmlId"    # I

    .line 48
    invoke-static {}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;->values()[Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 49
    .local v3, "lc":Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;
    iget v4, v3, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;->ooxmlId:I

    if-ne v4, p0, :cond_0

    return-object v3

    .line 48
    .end local v3    # "lc":Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    .end local v0    # "arr$":[Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 24
    const-class v0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;
    .locals 1

    .line 24
    sget-object v0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;->$VALUES:[Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    invoke-virtual {v0}, [Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    return-object v0
.end method
