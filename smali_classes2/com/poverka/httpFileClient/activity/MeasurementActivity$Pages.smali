.class public final enum Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;
.super Ljava/lang/Enum;
.source "MeasurementActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/poverka/httpFileClient/activity/MeasurementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Pages"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;

.field public static final enum FINISH:Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;

.field public static final enum FIRST:Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;

.field public static final enum START:Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 84
    new-instance v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;

    const-string v1, "FIRST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;->FIRST:Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;

    .line 85
    new-instance v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;

    const-string v3, "START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;->START:Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;

    .line 86
    new-instance v3, Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;

    const-string v5, "FINISH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;->FINISH:Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;

    .line 83
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;->$VALUES:[Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 83
    const-class v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;

    return-object v0
.end method

.method public static values()[Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;
    .locals 1

    .line 83
    sget-object v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;->$VALUES:[Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;

    invoke-virtual {v0}, [Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;

    return-object v0
.end method
