.class Lcom/poverka/httpFileClient/activity/StateActivity$4;
.super Ljava/lang/Object;
.source "StateActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/StateActivity;->initRequestObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/StateActivity;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/StateActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/StateActivity;

    .line 465
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/StateActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;)V
    .locals 6
    .param p1, "rMode"    # Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    .line 468
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "RequestMode changed to %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$100(Ljava/lang/String;)V

    .line 469
    sget-object v1, Lcom/poverka/httpFileClient/activity/StateActivity$10;->$SwitchMap$com$poverka$httpFileClient$util$MyModeQueue$RequestMode:[I

    invoke-virtual {p1}, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x4

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 524
    :pswitch_0
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1900(Lcom/poverka/httpFileClient/activity/StateActivity;)V

    .line 525
    goto/16 :goto_1

    .line 510
    :pswitch_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "tests.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 511
    .local v0, "tests":Ljava/io/File;
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/StateActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/activity/StateActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 512
    .local v1, "jsonTests":Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 513
    .local v2, "jsonTestsStation":Lorg/json/JSONObject;
    const-string v3, "tests"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 514
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/StateActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v3}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$2000(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/util/HttpFileClient;

    move-result-object v3

    const-string v4, "1/flash/tests.json"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/poverka/httpFileClient/util/HttpFileClient;->upload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    .end local v0    # "tests":Ljava/io/File;
    .end local v1    # "jsonTests":Lorg/json/JSONArray;
    .end local v2    # "jsonTestsStation":Lorg/json/JSONObject;
    goto/16 :goto_1

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, "e":Lorg/json/JSONException;
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const-string v4, "State UPDATE_TESTS"

    invoke-static {v1, v4, v2, v3}, Lcom/poverka/httpFileClient/util/MyFileReader;->appendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    .line 517
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 519
    .end local v0    # "e":Lorg/json/JSONException;
    goto/16 :goto_1

    .line 486
    :pswitch_2
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$2000(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/util/HttpFileClient;

    move-result-object v0

    const-string v1, "1/current"

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/util/HttpFileClient;->show(Ljava/lang/String;)V

    .line 487
    goto/16 :goto_1

    .line 483
    :pswitch_3
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$2000(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/util/HttpFileClient;

    move-result-object v0

    const-string v1, "1/flash/flash_a.json"

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/util/HttpFileClient;->download(Ljava/lang/String;)V

    .line 484
    goto/16 :goto_1

    .line 527
    :pswitch_4
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$2700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/util/MySender;

    move-result-object v0

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getTestName()I

    move-result v1

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/StateActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v2}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getMultiplier()I

    move-result v2

    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/StateActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v3}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getLastMeasNumber()I

    move-result v3

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/StateActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    .line 529
    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v4

    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/StateActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v5

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getLastMeasNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getLastReitNumber(I)I

    move-result v4

    .line 528
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/poverka/httpFileClient/util/MySender;->restoreTestSettings(IIII)V

    goto/16 :goto_1

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$2700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/util/MySender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MySender;->readAction()V

    goto/16 :goto_1

    .line 531
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$2700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/util/MySender;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/util/MySender;->changeAction(I)V

    goto/16 :goto_1

    .line 521
    :pswitch_5
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$2700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/util/MySender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MySender;->getAll()V

    .line 522
    goto/16 :goto_1

    .line 506
    :pswitch_6
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$2700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/util/MySender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MySender;->updateFirmware()V

    .line 507
    goto/16 :goto_1

    .line 503
    :pswitch_7
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$2700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/util/MySender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MySender;->sendFinish()V

    .line 504
    goto/16 :goto_1

    .line 498
    :pswitch_8
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$2502(Lcom/poverka/httpFileClient/activity/StateActivity;I)I

    .line 499
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->newMeasurement()Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v0

    .line 500
    .local v0, "mRes":Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$2700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/util/MySender;

    move-result-object v1

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getMeasurementNumber()I

    move-result v2

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getReiterationNumber()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/poverka/httpFileClient/util/MySender;->prepareMeasurement(II)V

    .line 501
    goto/16 :goto_1

    .line 492
    .end local v0    # "mRes":Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    :pswitch_9
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$2700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/util/MySender;

    move-result-object v0

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getTestName()I

    move-result v1

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/StateActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v2}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getMultiplier()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/poverka/httpFileClient/util/MySender;->writeTestName(II)V

    .line 493
    goto :goto_1

    .line 489
    :pswitch_a
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$2700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/util/MySender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MySender;->startReadingState()V

    .line 490
    goto :goto_1

    .line 495
    :pswitch_b
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$2700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/util/MySender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MySender;->readAction()V

    .line 496
    goto :goto_1

    .line 471
    :pswitch_c
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$2700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/util/MySender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MySender;->startTestPhoto()V

    .line 473
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1500(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 474
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 475
    .local v1, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/StateActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    const v3, 0x7f0f011d

    invoke-virtual {v2, v3}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "alert"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 477
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/StateActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v2}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1500(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->sendMessage(Landroid/os/Message;)Z

    .line 478
    goto :goto_1

    .line 480
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :pswitch_d
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$2700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/util/MySender;

    move-result-object v0

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$2800(Lcom/poverka/httpFileClient/activity/StateActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/StateActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v2}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$2900(Lcom/poverka/httpFileClient/activity/StateActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/poverka/httpFileClient/util/MySender;->readDateTime(II)V

    .line 481
    nop

    .line 537
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 465
    check-cast p1, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    invoke-virtual {p0, p1}, Lcom/poverka/httpFileClient/activity/StateActivity$4;->onChanged(Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;)V

    return-void
.end method
