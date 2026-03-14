.class public final enum Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;
.super Ljava/lang/Enum;
.source "EscherColorRef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ddf/EscherColorRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SysIndexSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

.field public static final enum CURRENT_OR_LAST_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

.field public static final enum FILL_BACKGROUND_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

.field public static final enum FILL_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

.field public static final enum FILL_OR_LINE_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

.field public static final enum LINE_BACKGROUND_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

.field public static final enum LINE_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

.field public static final enum LINE_OR_FILL_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

.field public static final enum SHADOW_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 33
    new-instance v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    const-string v1, "FILL_COLOR"

    const/4 v2, 0x0

    const/16 v3, 0xf0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->FILL_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    .line 35
    new-instance v1, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    const-string v3, "LINE_OR_FILL_COLOR"

    const/4 v4, 0x1

    const/16 v5, 0xf1

    invoke-direct {v1, v3, v4, v5}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->LINE_OR_FILL_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    .line 37
    new-instance v3, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    const-string v5, "LINE_COLOR"

    const/4 v6, 0x2

    const/16 v7, 0xf2

    invoke-direct {v3, v5, v6, v7}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->LINE_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    .line 39
    new-instance v5, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    const-string v7, "SHADOW_COLOR"

    const/4 v8, 0x3

    const/16 v9, 0xf3

    invoke-direct {v5, v7, v8, v9}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->SHADOW_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    .line 41
    new-instance v7, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    const-string v9, "CURRENT_OR_LAST_COLOR"

    const/4 v10, 0x4

    const/16 v11, 0xf4

    invoke-direct {v7, v9, v10, v11}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->CURRENT_OR_LAST_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    .line 43
    new-instance v9, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    const-string v11, "FILL_BACKGROUND_COLOR"

    const/4 v12, 0x5

    const/16 v13, 0xf5

    invoke-direct {v9, v11, v12, v13}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->FILL_BACKGROUND_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    .line 45
    new-instance v11, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    const-string v13, "LINE_BACKGROUND_COLOR"

    const/4 v14, 0x6

    const/16 v15, 0xf6

    invoke-direct {v11, v13, v14, v15}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->LINE_BACKGROUND_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    .line 47
    new-instance v13, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    const-string v15, "FILL_OR_LINE_COLOR"

    const/4 v14, 0x7

    const/16 v12, 0xf7

    invoke-direct {v13, v15, v14, v12}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->FILL_OR_LINE_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    .line 31
    const/16 v12, 0x8

    new-array v12, v12, [Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    aput-object v13, v12, v14

    sput-object v12, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->$VALUES:[Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->value:I

    return-void
.end method

.method static synthetic access$000(Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    .line 31
    iget v0, p0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->value:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 31
    const-class v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;
    .locals 1

    .line 31
    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->$VALUES:[Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    invoke-virtual {v0}, [Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    return-object v0
.end method
