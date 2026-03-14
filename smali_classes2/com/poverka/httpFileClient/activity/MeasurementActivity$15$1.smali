.class Lcom/poverka/httpFileClient/activity/MeasurementActivity$15$1;
.super Ljava/lang/Object;
.source "MeasurementActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/MeasurementActivity$15;->clientResult(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/poverka/httpFileClient/activity/MeasurementActivity$15;

.field final synthetic val$clientInfo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity$15;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity$15;

    .line 1750
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$15$1;->this$1:Lcom/poverka/httpFileClient/activity/MeasurementActivity$15;

    iput-object p2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$15$1;->val$clientInfo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1753
    :try_start_0
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$15$1;->this$1:Lcom/poverka/httpFileClient/activity/MeasurementActivity$15;

    iget-object v0, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$15;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$15$1;->val$clientInfo:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$15$1;->this$1:Lcom/poverka/httpFileClient/activity/MeasurementActivity$15;

    iget-object v2, v2, Lcom/poverka/httpFileClient/activity/MeasurementActivity$15;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$2100(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$4400(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Lorg/json/JSONObject;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1756
    goto :goto_0

    .line 1754
    :catch_0
    move-exception v0

    .line 1755
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1757
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method
