.class Lcom/poverka/httpFileClient/activity/StateActivity$3;
.super Ljava/lang/Object;
.source "StateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 433
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/StateActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 437
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 438
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 439
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$2500(Lcom/poverka/httpFileClient/activity/StateActivity;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 440
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$2600(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/util/TcpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/TcpClient;->isServerRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$200(Lcom/poverka/httpFileClient/activity/StateActivity;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->NONE:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$200(Lcom/poverka/httpFileClient/activity/StateActivity;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->RESTORE_FILES:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    if-eq v0, v1, :cond_0

    .line 442
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$2700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/util/MySender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MySender;->send()V

    goto :goto_0

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "State"

    const-string v2, "LOST connection"

    invoke-static {v0, v1, v2}, Lcom/poverka/httpFileClient/util/MyFileReader;->appendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 448
    const-string v0, "StateActivity"

    const-string v1, "\u041f\u043e\u0434\u043a\u043b\u044e\u0447\u0435\u043d\u0438\u0435 \u043f\u043e\u0442\u0435\u0440\u044f\u043d\u043e"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1500(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 450
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 451
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "error"

    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/StateActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    const v4, 0x7f0f00a1

    invoke-virtual {v3, v4}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 453
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/StateActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v2}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1500(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->sendMessage(Landroid/os/Message;)Z

    .line 454
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/StateActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v2}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1500(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->sendEmptyMessage(I)Z

    .line 455
    nop

    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "bundle":Landroid/os/Bundle;
    goto/16 :goto_0

    .line 459
    :cond_2
    goto :goto_1

    .line 437
    :cond_3
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, "consumed":Ljava/lang/InterruptedException;
    const-string v1, "Interrupted exception"

    const-string v2, "senderRunnable is interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    .end local v0    # "consumed":Ljava/lang/InterruptedException;
    :goto_1
    return-void
.end method
