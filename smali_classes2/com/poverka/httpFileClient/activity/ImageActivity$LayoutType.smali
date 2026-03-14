.class public final enum Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;
.super Ljava/lang/Enum;
.source "ImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/poverka/httpFileClient/activity/ImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayoutType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;

.field public static final enum MEASUREMENT:Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;

.field public static final enum START:Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 70
    new-instance v0, Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;->START:Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;

    .line 71
    new-instance v1, Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;

    const-string v3, "MEASUREMENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;->MEASUREMENT:Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;

    .line 69
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;->$VALUES:[Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 69
    const-class v0, Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;

    return-object v0
.end method

.method public static values()[Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;
    .locals 1

    .line 69
    sget-object v0, Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;->$VALUES:[Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;

    invoke-virtual {v0}, [Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;

    return-object v0
.end method
