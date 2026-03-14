.class Lcom/poverka/httpFileClient/activity/StateActivity$8;
.super Ljava/lang/Object;
.source "StateActivity.java"

# interfaces
.implements Lcom/poverka/httpFileClient/activity/ImageActivity$OnImageResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/poverka/httpFileClient/activity/StateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/StateActivity;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/StateActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/StateActivity;

    .line 1152
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/StateActivity$8;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imageResult(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 1155
    const-string v0, "number"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1156
    .local v0, "counterNumber":Ljava/lang/String;
    const-string v1, "volume"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1157
    .local v1, "volume":I
    const-string v2, "year"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1158
    .local v2, "year":I
    const-string v3, "dnType"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1159
    .local v3, "dnType":I
    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/StateActivity$8;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setCounterInfo(Ljava/lang/String;III)V

    .line 1162
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1163
    .local v4, "json":Lorg/json/JSONObject;
    sget-object v5, Lcom/poverka/httpFileClient/util/MyJSON;->counter_number:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1164
    sget-object v5, Lcom/poverka/httpFileClient/util/MyJSON;->start_volume:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1165
    sget-object v5, Lcom/poverka/httpFileClient/util/MyJSON;->production_year:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1166
    sget-object v5, Lcom/poverka/httpFileClient/util/MyJSON;->type_id:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1167
    sget-object v5, Lcom/poverka/httpFileClient/util/MyJSON;->water_temperature:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/StateActivity$8;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v6

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getWaterTemperature()F

    move-result v6

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float v6, v6, v7

    float-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1168
    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/StateActivity$8;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$2000(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/util/HttpFileClient;

    move-result-object v5

    const-string v6, "1/current/counter_info.json"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/poverka/httpFileClient/util/HttpFileClient;->upload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1172
    .end local v4    # "json":Lorg/json/JSONObject;
    goto :goto_0

    .line 1169
    :catch_0
    move-exception v4

    .line 1170
    .local v4, "e":Lorg/json/JSONException;
    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/StateActivity$8;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    const-string v8, "State imageResult"

    invoke-static {v5, v8, v6, v7}, Lcom/poverka/httpFileClient/util/MyFileReader;->appendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    .line 1171
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 1173
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method
