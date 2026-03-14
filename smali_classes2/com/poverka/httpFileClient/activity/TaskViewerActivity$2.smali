.class Lcom/poverka/httpFileClient/activity/TaskViewerActivity$2;
.super Ljava/lang/Object;
.source "TaskViewerActivity.java"

# interfaces
.implements Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/poverka/httpFileClient/activity/TaskViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    .line 336
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageReceived(Lcom/poverka/httpFileClient/util/HttpFileClient$Type;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 11
    .param p1, "type"    # Lcom/poverka/httpFileClient/util/HttpFileClient$Type;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "stream"    # Ljava/io/InputStream;

    .line 339
    const-string v0, "TaskViewerActivity"

    const-string v1, "cancelpribor"

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-static {v2}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->access$700(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;)Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyHandler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 340
    .local v2, "msg":Landroid/os/Message;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 343
    .local v4, "bundle":Landroid/os/Bundle;
    :try_start_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "alert"

    if-eqz v5, :cond_3

    :try_start_1
    sget-object v5, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne p1, v5, :cond_3

    if-eqz p3, :cond_3

    .line 344
    invoke-static {p3}, Lcom/poverka/httpFileClient/util/HttpFileClient;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, "dismissString":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 348
    .local v5, "dismissInfo":Lorg/json/JSONObject;
    const-string v7, "status"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 349
    .local v7, "status":Ljava/lang/String;
    const-string v8, "OK"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 350
    const-string v3, "result"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 351
    .local v3, "result":Ljava/lang/String;
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    const v8, 0x7f0f0177

    invoke-virtual {v0, v8}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-virtual {v2, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 354
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->access$700(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;)Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 355
    nop

    .end local v3    # "result":Ljava/lang/String;
    goto :goto_1

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->access$700(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;)Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyHandler;

    move-result-object v0

    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    move-object v2, v0

    .line 357
    const-string v0, "cancelpribor?protocolId=(.*?)"

    const/16 v8, 0x20

    invoke-static {v0, v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 358
    .local v0, "photo":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 359
    .local v8, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v10, "id"

    if-eqz v9, :cond_1

    .line 360
    :try_start_2
    invoke-virtual {v8, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 361
    .local v3, "id":I
    invoke-virtual {v4, v10, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 362
    .end local v3    # "id":I
    goto :goto_0

    .line 363
    :cond_1
    const/4 v3, -0x2

    invoke-virtual {v4, v10, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 366
    :goto_0
    const-string v3, "error"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 367
    .local v3, "error":Ljava/lang/String;
    invoke-virtual {v4, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {v2, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 369
    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->access$700(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;)Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyHandler;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 371
    .end local v0    # "photo":Ljava/util/regex/Pattern;
    .end local v1    # "dismissString":Ljava/lang/String;
    .end local v3    # "error":Ljava/lang/String;
    .end local v5    # "dismissInfo":Lorg/json/JSONObject;
    .end local v7    # "status":Ljava/lang/String;
    .end local v8    # "m":Ljava/util/regex/Matcher;
    :cond_2
    :goto_1
    goto :goto_2

    :cond_3
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne p1, v0, :cond_2

    if-nez p3, :cond_2

    .line 372
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    const v1, 0x7f0f006d

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-virtual {v2, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 374
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->access$700(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;)Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 378
    :goto_2
    goto :goto_4

    .line 376
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 379
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method
