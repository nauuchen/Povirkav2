.class Lcom/poverka/httpFileClient/activity/MeasurementActivity$2;
.super Ljava/lang/Object;
.source "MeasurementActivity.java"

# interfaces
.implements Lcom/poverka/httpFileClient/util/TcpClient$OnMessageReceived;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/poverka/httpFileClient/activity/MeasurementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    .line 238
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageReceived(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 243
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$700(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->NONE:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    const-string v2, "MeasurementActivity"

    if-ne v0, v1, :cond_0

    .line 244
    const-string v0, "\u041f\u0440\u0438\u0448\u043b\u0430 \u0441\u0442\u0440\u043e\u043a\u0430, \u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u043c\u0430 \u043d\u0435 \u0432 \u0440\u0435\u0436\u0438\u043c\u0435.. "

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$802(Lcom/poverka/httpFileClient/activity/MeasurementActivity;I)I

    .line 248
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$402(Lcom/poverka/httpFileClient/activity/MeasurementActivity;I)I

    .line 250
    :try_start_0
    sget-object v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$16;->$SwitchMap$com$poverka$httpFileClient$util$MyModeQueue$RequestMode:[I

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$700(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1300(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 261
    :cond_2
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1200(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Lorg/json/JSONObject;)V

    .line 262
    goto :goto_0

    .line 258
    :cond_3
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1100(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Lorg/json/JSONObject;)V

    .line 259
    goto :goto_0

    .line 255
    :cond_4
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1000(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Lorg/json/JSONObject;)V

    .line 256
    goto :goto_0

    .line 252
    :cond_5
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$900(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    nop

    .line 271
    :goto_0
    goto :goto_1

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "JSON error in receiver"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$600(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)V

    .line 273
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method
