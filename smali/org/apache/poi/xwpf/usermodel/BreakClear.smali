.class public final enum Lorg/apache/poi/xwpf/usermodel/BreakClear;
.super Ljava/lang/Enum;
.source "BreakClear.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/xwpf/usermodel/BreakClear;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/xwpf/usermodel/BreakClear;

.field public static final enum ALL:Lorg/apache/poi/xwpf/usermodel/BreakClear;

.field public static final enum LEFT:Lorg/apache/poi/xwpf/usermodel/BreakClear;

.field public static final enum NONE:Lorg/apache/poi/xwpf/usermodel/BreakClear;

.field public static final enum RIGHT:Lorg/apache/poi/xwpf/usermodel/BreakClear;

.field private static imap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/xwpf/usermodel/BreakClear;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 40
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/BreakClear;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/xwpf/usermodel/BreakClear;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/BreakClear;->NONE:Lorg/apache/poi/xwpf/usermodel/BreakClear;

    .line 59
    new-instance v1, Lorg/apache/poi/xwpf/usermodel/BreakClear;

    const-string v4, "LEFT"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lorg/apache/poi/xwpf/usermodel/BreakClear;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/BreakClear;->LEFT:Lorg/apache/poi/xwpf/usermodel/BreakClear;

    .line 77
    new-instance v4, Lorg/apache/poi/xwpf/usermodel/BreakClear;

    const-string v6, "RIGHT"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lorg/apache/poi/xwpf/usermodel/BreakClear;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/xwpf/usermodel/BreakClear;->RIGHT:Lorg/apache/poi/xwpf/usermodel/BreakClear;

    .line 84
    new-instance v6, Lorg/apache/poi/xwpf/usermodel/BreakClear;

    const-string v8, "ALL"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lorg/apache/poi/xwpf/usermodel/BreakClear;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/apache/poi/xwpf/usermodel/BreakClear;->ALL:Lorg/apache/poi/xwpf/usermodel/BreakClear;

    .line 29
    new-array v8, v9, [Lorg/apache/poi/xwpf/usermodel/BreakClear;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lorg/apache/poi/xwpf/usermodel/BreakClear;->$VALUES:[Lorg/apache/poi/xwpf/usermodel/BreakClear;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/BreakClear;->imap:Ljava/util/Map;

    .line 89
    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/BreakClear;->values()[Lorg/apache/poi/xwpf/usermodel/BreakClear;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/poi/xwpf/usermodel/BreakClear;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 90
    .local v3, "p":Lorg/apache/poi/xwpf/usermodel/BreakClear;
    sget-object v4, Lorg/apache/poi/xwpf/usermodel/BreakClear;->imap:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/BreakClear;->getValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .end local v3    # "p":Lorg/apache/poi/xwpf/usermodel/BreakClear;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    .end local v0    # "arr$":[Lorg/apache/poi/xwpf/usermodel/BreakClear;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 97
    iput p3, p0, Lorg/apache/poi/xwpf/usermodel/BreakClear;->value:I

    .line 98
    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/xwpf/usermodel/BreakClear;
    .locals 4
    .param p0, "type"    # I

    .line 101
    sget-object v0, Lorg/apache/poi/xwpf/usermodel/BreakClear;->imap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/BreakClear;

    .line 102
    .local v0, "bType":Lorg/apache/poi/xwpf/usermodel/BreakClear;
    if-eqz v0, :cond_0

    .line 105
    return-object v0

    .line 103
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown break clear type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/BreakClear;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 29
    const-class v0, Lorg/apache/poi/xwpf/usermodel/BreakClear;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/BreakClear;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/xwpf/usermodel/BreakClear;
    .locals 1

    .line 29
    sget-object v0, Lorg/apache/poi/xwpf/usermodel/BreakClear;->$VALUES:[Lorg/apache/poi/xwpf/usermodel/BreakClear;

    invoke-virtual {v0}, [Lorg/apache/poi/xwpf/usermodel/BreakClear;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xwpf/usermodel/BreakClear;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 109
    iget v0, p0, Lorg/apache/poi/xwpf/usermodel/BreakClear;->value:I

    return v0
.end method
