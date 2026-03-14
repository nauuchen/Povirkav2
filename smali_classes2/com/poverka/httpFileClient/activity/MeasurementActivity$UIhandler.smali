.class Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;
.super Landroid/os/Handler;
.source "MeasurementActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/poverka/httpFileClient/activity/MeasurementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIhandler"
.end annotation


# static fields
.field private static final ALERT:I = 0x0

.field private static final ALERT_DIALOG:I = 0x6

.field private static final MEASUREMENT:I = 0x2

.field private static final MEASUREMENT_DONE:I = 0x3

.field private static final MEASUREMENT_READY:I = 0x1

.field private static final PHOTO:I = 0x4

.field private static final UPDATE_PHOTO_FOR_TEMPERATURE:I = 0x7

.field private static final UPDATE_RESULTS:I = 0x8

.field private static final VERIFICATION_DONE:I = 0x5


# instance fields
.field private activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;


# direct methods
.method private constructor <init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    .line 1354
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1355
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    .line 1356
    return-void
.end method

.method synthetic constructor <init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Lcom/poverka/httpFileClient/activity/MeasurementActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;
    .param p2, "x1"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity$1;

    .line 1341
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;-><init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .line 1360
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const v2, 0x7f0900ee

    invoke-virtual {v1, v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1361
    .local v1, "layoutButton":Landroid/widget/LinearLayout;
    iget-object v2, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const v3, 0x7f09006a

    invoke-virtual {v2, v3}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1362
    .local v2, "buttonStart":Landroid/widget/Button;
    iget-object v3, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const v4, 0x7f090130

    invoke-virtual {v3, v4}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 1363
    .local v3, "progress":Landroid/widget/ProgressBar;
    iget-object v4, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const v5, 0x7f0901ba

    invoke-virtual {v4, v5}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1367
    .local v4, "textTimeLeft":Landroid/widget/TextView;
    move-object/from16 v5, p1

    iget v6, v5, Landroid/os/Message;->what:I

    const-string v7, "%s \u0441."

    const-string v8, "delta temperature fail"

    const-string v9, "temperature analysis is OK"

    const-string v10, "global temperature fail"

    const v14, -0xffff01

    const-string v12, "OK"

    const-string v11, "message"

    const-string v13, "tittle"

    const/4 v15, 0x0

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_a

    .line 1553
    :pswitch_0
    iget-object v6, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const v7, 0x7f0901d6

    invoke-virtual {v6, v7}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1554
    .local v6, "underline":Landroid/view/View;
    iget-object v7, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v7}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v7

    invoke-virtual {v7}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getTestName()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v11, 0x31

    if-ne v7, v11, :cond_0

    .line 1555
    invoke-virtual {v6, v14}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1557
    :cond_0
    const/high16 v7, -0x10000

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1560
    :goto_0
    iget-object v7, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    sget-object v11, Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;->FIRST:Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;

    invoke-static {v7, v11, v15, v15}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$3700(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;IZ)V

    .line 1562
    const/4 v7, 0x1

    .local v7, "meas":I
    :goto_1
    const/4 v11, 0x2

    if-gt v7, v11, :cond_4

    .line 1563
    iget-object v11, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    sget-object v12, Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;->FINISH:Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;

    invoke-static {v11, v12, v7, v15}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$3700(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;IZ)V

    .line 1565
    iget-object v11, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v11}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v11

    invoke-virtual {v11, v7}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getResultInt(I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 1566
    iget-object v11, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-virtual {v11, v7}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iget-object v13, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v13}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v13

    invoke-virtual {v13, v7}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getAvrgConRange(I)I

    move-result v13

    if-nez v13, :cond_1

    const/4 v13, 0x1

    goto :goto_2

    :cond_1
    const/4 v13, 0x0

    :goto_2
    invoke-static {v11, v12, v13}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$3500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Landroid/widget/TextView;Z)V

    goto :goto_3

    .line 1567
    :cond_2
    iget-object v11, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v11}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v11

    invoke-virtual {v11, v7}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getResultInt(I)I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    .line 1568
    iget-object v11, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-virtual {v11, v7}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-static {v11, v12}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$3600(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Landroid/widget/TextView;)V

    .line 1562
    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1572
    .end local v7    # "meas":I
    :cond_4
    iget-object v7, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v7}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v7

    invoke-virtual {v7}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->isGlobalTemperatureOK()Z

    move-result v7

    if-nez v7, :cond_5

    .line 1574
    invoke-static {v10}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$300(Ljava/lang/String;)V

    .line 1575
    iget-object v7, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v7, v15}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$3900(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Z)V

    const/4 v8, 0x1

    goto :goto_4

    .line 1576
    :cond_5
    iget-object v7, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v7}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v7

    invoke-virtual {v7}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->isDeltaTemperatureOK()Z

    move-result v7

    if-nez v7, :cond_6

    .line 1578
    invoke-static {v8}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$300(Ljava/lang/String;)V

    .line 1579
    iget-object v7, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v7, v15}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$3900(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Z)V

    const/4 v8, 0x1

    goto :goto_4

    .line 1582
    :cond_6
    invoke-static {v9}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$300(Ljava/lang/String;)V

    .line 1583
    iget-object v7, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$3900(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Z)V

    .line 1586
    :goto_4
    iget-object v7, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v7, v8}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$2200(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Z)V

    goto/16 :goto_a

    .line 1525
    .end local v6    # "underline":Landroid/view/View;
    :pswitch_1
    iget-object v6, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    sget-object v7, Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;->FINISH:Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    const-string v14, "meas_number"

    invoke-virtual {v12, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v6, v7, v12, v15}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$3700(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;IZ)V

    .line 1527
    iget-object v6, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v6

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->isGlobalTemperatureOK()Z

    move-result v6

    const/4 v7, 0x6

    if-nez v6, :cond_7

    .line 1529
    invoke-static {v10}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$300(Ljava/lang/String;)V

    .line 1530
    iget-object v6, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v6, v15}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$3900(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Z)V

    .line 1531
    iget-object v6, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1600(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 1532
    .local v6, "m":Landroid/os/Message;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1533
    .local v7, "bundleAlert":Landroid/os/Bundle;
    iget-object v8, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const v9, 0x7f0f001e

    invoke-virtual {v8, v9}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v13, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    iget-object v8, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const v9, 0x7f0f0085

    invoke-virtual {v8, v9}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v11, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    invoke-virtual {v6, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1536
    iget-object v8, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v8}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1600(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->sendMessage(Landroid/os/Message;)Z

    .line 1537
    .end local v6    # "m":Landroid/os/Message;
    .end local v7    # "bundleAlert":Landroid/os/Bundle;
    goto/16 :goto_a

    :cond_7
    iget-object v6, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v6

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->isDeltaTemperatureOK()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1539
    invoke-static {v8}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$300(Ljava/lang/String;)V

    .line 1540
    iget-object v6, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v6, v15}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$3900(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Z)V

    .line 1541
    iget-object v6, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1600(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 1542
    .restart local v6    # "m":Landroid/os/Message;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1543
    .restart local v7    # "bundleAlert":Landroid/os/Bundle;
    iget-object v8, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const v9, 0x7f0f001e

    invoke-virtual {v8, v9}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v13, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    iget-object v8, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const v9, 0x7f0f0058

    invoke-virtual {v8, v9}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v11, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    invoke-virtual {v6, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1546
    iget-object v8, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v8}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1600(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->sendMessage(Landroid/os/Message;)Z

    .line 1547
    .end local v6    # "m":Landroid/os/Message;
    .end local v7    # "bundleAlert":Landroid/os/Bundle;
    goto/16 :goto_a

    .line 1548
    :cond_8
    invoke-static {v9}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$300(Ljava/lang/String;)V

    .line 1549
    iget-object v6, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$3900(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Z)V

    .line 1551
    goto/16 :goto_a

    .line 1512
    :pswitch_2
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1513
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1514
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1515
    new-instance v7, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler$3;

    invoke-direct {v7, v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler$3;-><init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;)V

    invoke-virtual {v6, v12, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1521
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 1522
    .local v7, "stateDialog":Landroid/app/AlertDialog;
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 1523
    goto/16 :goto_a

    .line 1503
    .end local v6    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v7    # "stateDialog":Landroid/app/AlertDialog;
    :pswitch_3
    iget-object v6, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$600(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)V

    .line 1505
    new-instance v6, Landroid/content/Intent;

    iget-object v7, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-virtual {v7}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/poverka/httpFileClient/activity/MainActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1506
    .local v6, "intent":Landroid/content/Intent;
    const-string v7, "android.intent.category.HOME"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1507
    const/high16 v7, 0x4000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1508
    const-string v7, "EXIT"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1509
    iget-object v7, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-virtual {v7, v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->startActivity(Landroid/content/Intent;)V

    .line 1510
    goto/16 :goto_a

    .line 1488
    .end local v6    # "intent":Landroid/content/Intent;
    :pswitch_4
    iget-object v6, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v6

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getAction()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_a

    .line 1489
    iget-object v6, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$3300(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1490
    iget-object v6, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    sget-object v7, Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;->START:Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;

    iget-object v8, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v8}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1800(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v8

    invoke-virtual {v8}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getMeasurementNumber()I

    move-result v8

    invoke-static {v6, v7, v8, v15}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$3700(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;IZ)V

    goto/16 :goto_a

    .line 1492
    :cond_9
    iget-object v6, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    sget-object v7, Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;->START:Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;

    iget-object v8, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v8}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1800(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v8

    invoke-virtual {v8}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getMeasurementNumber()I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$3800(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;I)V

    goto/16 :goto_a

    .line 1494
    :cond_a
    iget-object v6, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v6

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getAction()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_1e

    .line 1495
    iget-object v6, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$3300(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1496
    iget-object v6, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    sget-object v7, Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;->FINISH:Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;

    iget-object v8, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v8}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1800(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v8

    invoke-virtual {v8}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getMeasurementNumber()I

    move-result v8

    invoke-static {v6, v7, v8, v15}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$3700(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;IZ)V

    goto/16 :goto_a

    .line 1498
    :cond_b
    iget-object v6, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    sget-object v7, Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;->FINISH:Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;

    iget-object v8, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v8}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1800(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v8

    invoke-virtual {v8}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getMeasurementNumber()I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$3800(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;I)V

    goto/16 :goto_a

    .line 1442
    :pswitch_5
    invoke-static {}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$3000()Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1443
    iget-object v6, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const/4 v8, 0x1

    invoke-static {v6, v8}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$2200(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Z)V

    .line 1444
    iget-object v6, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$3300(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1445
    iget-object v6, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const v8, 0x7f0f011e

    invoke-virtual {v6, v8}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1446
    invoke-virtual {v2, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 1447
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5

    .line 1449
    :cond_c
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1450
    invoke-virtual {v1, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1453
    :goto_5
    iget-object v6, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1800(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v6

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->avrgConRange()I

    move-result v6

    .line 1454
    .local v6, "value":I
    if-eqz v6, :cond_e

    .line 1455
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1456
    .local v8, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v9, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const v10, 0x7f0f001e

    invoke-virtual {v9, v10}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1457
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v10, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const v11, 0x7f0f0024

    invoke-virtual {v10, v11}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v13, v11, [Ljava/lang/Object;

    if-gez v6, :cond_d

    .line 1458
    iget-object v11, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const v14, 0x7f0f009e

    goto :goto_6

    :cond_d
    iget-object v11, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const v14, 0x7f0f00b9

    :goto_6
    invoke-virtual {v11, v14}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v13, v15

    .line 1457
    invoke-static {v9, v10, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1459
    new-instance v9, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler$2;

    invoke-direct {v9, v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler$2;-><init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;)V

    invoke-virtual {v8, v12, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1465
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 1466
    .local v9, "stateDialog":Landroid/app/AlertDialog;
    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 1469
    .end local v8    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v9    # "stateDialog":Landroid/app/AlertDialog;
    :cond_e
    iget-object v8, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v8}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1800(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v8

    invoke-virtual {v8}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getRequiredVolumeImp()I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1470
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    const-string v9, "0"

    aput-object v9, v10, v15

    invoke-static {v8, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1472
    iget-object v7, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v7}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1800(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v7

    invoke-virtual {v7}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getResult()I

    move-result v7

    if-nez v7, :cond_10

    .line 1473
    iget-object v7, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v7}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1800(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v8

    invoke-virtual {v8}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getMeasurementNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    if-nez v6, :cond_f

    const/4 v15, 0x1

    :cond_f
    invoke-static {v7, v8, v15}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$3400(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Landroid/widget/TextView;Z)V

    goto/16 :goto_a

    .line 1474
    :cond_10
    iget-object v7, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v7}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1800(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v7

    invoke-virtual {v7}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getResult()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_12

    .line 1475
    iget-object v7, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v7}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1800(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v8

    invoke-virtual {v8}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getMeasurementNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    if-nez v6, :cond_11

    const/4 v15, 0x1

    :cond_11
    invoke-static {v7, v8, v15}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$3500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Landroid/widget/TextView;Z)V

    goto/16 :goto_a

    .line 1476
    :cond_12
    iget-object v7, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v7}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1800(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v7

    invoke-virtual {v7}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getResult()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1e

    .line 1477
    iget-object v7, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v7}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1800(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v8

    invoke-virtual {v8}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getMeasurementNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-static {v7, v8}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$3600(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Landroid/widget/TextView;)V

    goto/16 :goto_a

    .line 1379
    .end local v6    # "value":I
    :pswitch_6
    iget-object v6, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v6

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getAction()I

    move-result v6

    const/4 v8, 0x5

    if-ne v6, v8, :cond_14

    .line 1380
    iget-object v6, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v6, v15}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$2200(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Z)V

    .line 1382
    invoke-static {}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$3000()Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_13

    invoke-static {}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$3100()I

    move-result v6

    if-nez v6, :cond_13

    .line 1383
    invoke-static {}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$3000()Landroid/app/ProgressDialog;

    move-result-object v6

    iget-object v8, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const v9, 0x7f0f00b7

    invoke-virtual {v8, v9}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1384
    invoke-static {}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$3000()Landroid/app/ProgressDialog;

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1385
    invoke-static {}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$3000()Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v15}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1386
    invoke-static {}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$3000()Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v15}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1387
    invoke-static {}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$3000()Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->show()V

    goto :goto_7

    .line 1389
    :cond_13
    invoke-static {}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$3108()I

    .line 1390
    invoke-static {}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$3100()I

    move-result v6

    const/16 v8, 0x19

    if-ne v6, v8, :cond_15

    .line 1391
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v8, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-direct {v6, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1392
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v8, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const v9, 0x7f0f001e

    invoke-virtual {v8, v9}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1393
    const v8, 0x7f0f0066

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1394
    new-instance v8, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler$1;

    invoke-direct {v8, v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler$1;-><init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;)V

    invoke-virtual {v6, v12, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1400
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 1401
    .local v8, "stateDialog":Landroid/app/AlertDialog;
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 1402
    .end local v6    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v8    # "stateDialog":Landroid/app/AlertDialog;
    goto :goto_7

    .line 1405
    :cond_14
    iget-object v6, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const/4 v8, 0x1

    invoke-static {v6, v8}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$2200(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Z)V

    .line 1408
    :cond_15
    :goto_7
    iget-object v6, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const v8, 0x7f090192

    invoke-virtual {v6, v8}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1409
    .local v6, "textCurCon":Landroid/widget/TextView;
    iget-object v8, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const v9, 0x7f09018f

    invoke-virtual {v8, v9}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1411
    .local v8, "textAverageCon":Landroid/widget/TextView;
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    iget-object v12, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v12}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1800(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v12

    invoke-virtual {v12}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getConsumptionCurLit()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v11, v15

    const-string v12, "Q\u0442 %.3f"

    invoke-static {v9, v12, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1412
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v11, v10, [Ljava/lang/Object;

    iget-object v10, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v10}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1800(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v10

    invoke-virtual {v10}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getConsumptionAvrgLit()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v11, v15

    const-string v10, "Q\u0441 %.3f"

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1413
    iget-object v9, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v9}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v9

    invoke-virtual {v9}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getAction()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_16

    .line 1414
    iget-object v9, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v9}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1800(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v9

    invoke-virtual {v9}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getVolumeCurImp()I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1415
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    iget-object v10, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v10}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1800(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v10

    invoke-virtual {v10}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getTimeLeft()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v11, v15

    invoke-static {v9, v7, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1417
    :cond_16
    iget-object v7, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v7}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1800(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v7

    invoke-virtual {v7}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->curConRange()I

    move-result v7

    .line 1418
    .local v7, "currentConsumptionRange":I
    iget-object v9, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v9}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1800(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v9

    invoke-virtual {v9}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->avrgConRange()I

    move-result v9

    .line 1419
    .local v9, "averageConsumptionRange":I
    const/high16 v10, -0x1000000

    const v11, -0xff0100

    const/4 v12, -0x1

    if-ne v7, v12, :cond_17

    .line 1420
    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1421
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8

    .line 1422
    :cond_17
    if-nez v7, :cond_18

    .line 1423
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1424
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8

    .line 1425
    :cond_18
    const/4 v13, 0x1

    if-ne v7, v13, :cond_19

    .line 1426
    const/high16 v13, -0x10000

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1427
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1429
    :cond_19
    :goto_8
    if-ne v9, v12, :cond_1a

    .line 1430
    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1431
    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_9

    .line 1432
    :cond_1a
    if-nez v9, :cond_1b

    .line 1433
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1434
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_9

    .line 1435
    :cond_1b
    const/4 v10, 0x1

    if-ne v9, v10, :cond_1c

    .line 1436
    const/high16 v10, -0x10000

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1437
    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1439
    :cond_1c
    :goto_9
    iget-object v10, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v10}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1800(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v11

    invoke-virtual {v11}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getMeasurementNumber()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-static {v10, v11}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$3200(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Landroid/widget/TextView;)V

    .line 1440
    goto :goto_a

    .line 1481
    .end local v6    # "textCurCon":Landroid/widget/TextView;
    .end local v7    # "currentConsumptionRange":I
    .end local v8    # "textAverageCon":Landroid/widget/TextView;
    .end local v9    # "averageConsumptionRange":I
    :pswitch_7
    iget-object v6, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$2200(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Z)V

    .line 1482
    invoke-virtual {v2, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 1483
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1484
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v8, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const v9, 0x7f0f0163

    invoke-virtual {v8, v9}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v9, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v9}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1800(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v9

    invoke-virtual {v9}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getMeasurementNumber()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v15

    invoke-static {v6, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1485
    invoke-static {v15}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$3102(I)I

    .line 1486
    goto :goto_a

    .line 1369
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 1370
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v7, "error"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1d

    .line 1371
    iget-object v8, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-virtual {v8}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    invoke-static {v8, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 1372
    iget-object v7, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v7}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$600(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)V

    .line 1374
    :cond_1d
    const-string v7, "alert"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1e

    .line 1375
    iget-object v8, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-virtual {v8}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 1589
    .end local v6    # "bundle":Landroid/os/Bundle;
    :cond_1e
    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
