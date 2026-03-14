.class public final enum Lcom/poverka/httpFileClient/util/HttpFileClient$Type;
.super Ljava/lang/Enum;
.source "HttpFileClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/poverka/httpFileClient/util/HttpFileClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/poverka/httpFileClient/util/HttpFileClient$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

.field public static final enum DELETE:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

.field public static final enum DOWNLOAD:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

.field public static final enum SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

.field public static final enum SHOW:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

.field public static final enum UPLOAD:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 49
    new-instance v0, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    const-string v1, "DELETE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->DELETE:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    .line 50
    new-instance v1, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    const-string v3, "UPLOAD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->UPLOAD:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    .line 51
    new-instance v3, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    const-string v5, "DOWNLOAD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->DOWNLOAD:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    .line 52
    new-instance v5, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    const-string v7, "SHOW"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SHOW:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    .line 53
    new-instance v7, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    const-string v9, "SERVER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    .line 48
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->$VALUES:[Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/poverka/httpFileClient/util/HttpFileClient$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 48
    const-class v0, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    return-object v0
.end method

.method public static values()[Lcom/poverka/httpFileClient/util/HttpFileClient$Type;
    .locals 1

    .line 48
    sget-object v0, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->$VALUES:[Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    invoke-virtual {v0}, [Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    return-object v0
.end method
