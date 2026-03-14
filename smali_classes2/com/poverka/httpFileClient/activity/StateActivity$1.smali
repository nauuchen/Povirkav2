.class Lcom/poverka/httpFileClient/activity/StateActivity$1;
.super Ljava/lang/Object;
.source "StateActivity.java"

# interfaces
.implements Lcom/poverka/httpFileClient/util/TcpClient$OnMessageReceived;


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

    .line 150
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/StateActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageReceived(Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    .line 153
    invoke-static {p1}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$100(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$200(Lcom/poverka/httpFileClient/activity/StateActivity;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->NONE:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    const-string v2, "StateActivity"

    if-ne v0, v1, :cond_0

    .line 156
    const-string v0, "\u041f\u0440\u0438\u0448\u043b\u0430 \u0441\u0442\u0440\u043e\u043a\u0430, \u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u043c\u0430 \u043d\u0435 \u0432 \u0440\u0435\u0436\u0438\u043c\u0435.. "

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
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

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$302(Lcom/poverka/httpFileClient/activity/StateActivity;I)I

    .line 161
    :try_start_0
    sget-object v0, Lcom/poverka/httpFileClient/activity/StateActivity$10;->$SwitchMap$com$poverka$httpFileClient$util$MyModeQueue$RequestMode:[I

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$200(Lcom/poverka/httpFileClient/activity/StateActivity;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 190
    :pswitch_0
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1300(Lcom/poverka/httpFileClient/activity/StateActivity;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 187
    :pswitch_1
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1200(Lcom/poverka/httpFileClient/activity/StateActivity;Lorg/json/JSONObject;)V

    .line 188
    goto :goto_0

    .line 184
    :pswitch_2
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1100(Lcom/poverka/httpFileClient/activity/StateActivity;Lorg/json/JSONObject;)V

    .line 185
    goto :goto_0

    .line 181
    :pswitch_3
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1000(Lcom/poverka/httpFileClient/activity/StateActivity;Lorg/json/JSONObject;)V

    .line 182
    goto :goto_0

    .line 178
    :pswitch_4
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$900(Lcom/poverka/httpFileClient/activity/StateActivity;Lorg/json/JSONObject;)V

    .line 179
    goto :goto_0

    .line 175
    :pswitch_5
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$800(Lcom/poverka/httpFileClient/activity/StateActivity;Lorg/json/JSONObject;)V

    .line 176
    goto :goto_0

    .line 172
    :pswitch_6
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$700(Lcom/poverka/httpFileClient/activity/StateActivity;Lorg/json/JSONObject;)V

    .line 173
    goto :goto_0

    .line 169
    :pswitch_7
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$600(Lcom/poverka/httpFileClient/activity/StateActivity;Lorg/json/JSONObject;)V

    .line 170
    goto :goto_0

    .line 166
    :pswitch_8
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$500(Lcom/poverka/httpFileClient/activity/StateActivity;Lorg/json/JSONObject;)V

    .line 167
    goto :goto_0

    .line 163
    :pswitch_9
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$400(Lcom/poverka/httpFileClient/activity/StateActivity;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    nop

    .line 198
    :goto_0
    goto :goto_1

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Lorg/json/JSONException;
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const-string v5, "State TCP"

    invoke-static {v1, v5, v3, v4}, Lcom/poverka/httpFileClient/util/MyFileReader;->appendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    .line 196
    const-string v1, "JSON error in TCP receiver"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1400(Lcom/poverka/httpFileClient/activity/StateActivity;)V

    .line 200
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
