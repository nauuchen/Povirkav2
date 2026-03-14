.class Lcom/poverka/httpFileClient/activity/MeasurementActivity$15;
.super Ljava/lang/Object;
.source "MeasurementActivity.java"

# interfaces
.implements Lcom/poverka/httpFileClient/activity/ClientActivity$OnClientResult;


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

    .line 1688
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$15;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clientResult(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 1691
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "environmentH"

    const-string v3, "environmentT"

    const-string v4, "delay_sleep"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 1692
    .local v4, "delaySleep":Z
    if-eqz v4, :cond_1

    .line 1693
    const-string v0, "sleeping"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1694
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity$15;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1600(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;

    move-result-object v0

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->sendEmptyMessage(I)Z

    move/from16 v16, v4

    goto/16 :goto_3

    .line 1696
    :cond_0
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity$15;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$2000(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/MyModeQueue;

    move-result-object v0

    sget-object v3, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->SLEEP_TIMER:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    invoke-virtual {v0, v3}, Lcom/poverka/httpFileClient/util/MyModeQueue;->add(Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;)V

    move/from16 v16, v4

    goto/16 :goto_3

    .line 1699
    :cond_1
    const-string v5, "clientInfo"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1700
    .local v5, "clientInfo":Ljava/lang/String;
    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity$15;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setId(Ljava/lang/String;)V

    .line 1701
    const-string v6, "payment_account"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1702
    .local v6, "paymentAccount":I
    iget-object v7, v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity$15;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v7}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v7

    const-string v8, "personal_account"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setPersonalAccount(Ljava/lang/String;)V

    .line 1703
    iget-object v7, v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity$15;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v7}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v7

    const-string v8, "service_type"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setServiceType(I)V

    .line 1704
    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$300(Ljava/lang/String;)V

    .line 1707
    const/16 v7, 0x12

    .line 1708
    .local v7, "T_LOW":I
    const/16 v8, 0x18

    .line 1709
    .local v8, "T_HIGH":I
    const/4 v9, 0x2

    .line 1710
    .local v9, "T_GAP":I
    const/16 v10, 0x28

    .line 1711
    .local v10, "H_LOW":I
    const/16 v11, 0x47

    .line 1712
    .local v11, "H_HIGH":I
    const/4 v12, 0x7

    .line 1714
    .local v12, "H_GAP":I
    :try_start_0
    new-instance v13, Ljava/io/File;

    iget-object v14, v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity$15;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-virtual {v14}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getFilesDir()Ljava/io/File;

    move-result-object v14

    const-string v15, "settings.json"

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1715
    .local v13, "settings":Ljava/io/File;
    iget-object v14, v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity$15;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-virtual {v14}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getFilesDir()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1716
    .local v14, "text":Ljava/lang/String;
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1718
    .local v15, "jsonSettings":Lorg/json/JSONObject;
    const/16 v2, 0x16

    invoke-virtual {v15, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1719
    .local v2, "T_OLD":I
    move/from16 v16, v4

    .end local v4    # "delaySleep":Z
    .local v16, "delaySleep":Z
    const/16 v4, 0x3c

    :try_start_1
    invoke-virtual {v15, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 1721
    .local v4, "H_OLD":I
    move/from16 v17, v7

    .end local v7    # "T_LOW":I
    .local v17, "T_LOW":I
    iget-object v7, v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity$15;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v7}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v7

    invoke-virtual {v7, v2, v4}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setEnvironment(II)V

    .line 1723
    iget-object v7, v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity$15;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v7}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v7

    move/from16 v18, v8

    .end local v8    # "T_HIGH":I
    .local v18, "T_HIGH":I
    const/16 v8, 0x12

    move/from16 v19, v9

    .end local v9    # "T_GAP":I
    .local v19, "T_GAP":I
    const/16 v9, 0x18

    move/from16 v20, v10

    .end local v10    # "H_LOW":I
    .local v20, "H_LOW":I
    const/4 v10, 0x2

    invoke-virtual {v7, v8, v9, v2, v10}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->measureEnvironment(IIII)I

    move-result v7

    .line 1724
    .local v7, "newT":I
    iget-object v8, v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity$15;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v8}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v8

    const/16 v9, 0x28

    const/16 v10, 0x47

    move/from16 v21, v2

    .end local v2    # "T_OLD":I
    .local v21, "T_OLD":I
    const/4 v2, 0x7

    invoke-virtual {v8, v9, v10, v4, v2}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->measureEnvironment(IIII)I

    move-result v2

    .line 1726
    .local v2, "newH":I
    invoke-virtual {v15, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1727
    invoke-virtual {v15, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1729
    const-string v0, "paymentAccountCurrent"

    const-string v3, "paymentAccountGenerate"

    if-nez v6, :cond_2

    .line 1730
    :try_start_2
    iget-object v8, v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity$15;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v8}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setPaymentAccount(I)V

    .line 1731
    invoke-virtual {v15, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1732
    invoke-virtual {v15, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    .line 1734
    :cond_2
    iget-object v8, v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity$15;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v8}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setPaymentAccount(I)V

    .line 1735
    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1736
    .local v3, "paymentAccountGenerate":Z
    move v8, v6

    .line 1737
    .local v8, "paymentAccountNext":I
    if-eqz v3, :cond_3

    const v9, 0x1869f

    if-ge v6, v9, :cond_3

    .line 1738
    add-int/lit8 v8, v8, 0x1

    .line 1740
    :cond_3
    invoke-virtual {v15, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1743
    .end local v3    # "paymentAccountGenerate":Z
    .end local v8    # "paymentAccountNext":I
    :goto_0
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity$15;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v3, v8}, Lcom/poverka/httpFileClient/util/MyFileReader;->writeInternalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1746
    .end local v2    # "newH":I
    .end local v4    # "H_OLD":I
    .end local v7    # "newT":I
    .end local v11    # "H_HIGH":I
    .end local v12    # "H_GAP":I
    .end local v13    # "settings":Ljava/io/File;
    .end local v14    # "text":Ljava/lang/String;
    .end local v15    # "jsonSettings":Lorg/json/JSONObject;
    .end local v17    # "T_LOW":I
    .end local v18    # "T_HIGH":I
    .end local v19    # "T_GAP":I
    .end local v20    # "H_LOW":I
    .end local v21    # "T_OLD":I
    goto :goto_2

    .line 1744
    :catch_0
    move-exception v0

    goto :goto_1

    .end local v16    # "delaySleep":Z
    .local v4, "delaySleep":Z
    :catch_1
    move-exception v0

    move/from16 v16, v4

    .line 1745
    .end local v4    # "delaySleep":Z
    .local v0, "e":Lorg/json/JSONException;
    .restart local v16    # "delaySleep":Z
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1748
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity$15;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1700(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/HttpFileClient;

    move-result-object v0

    const-string v2, "1/current/client.json"

    invoke-virtual {v0, v2, v5}, Lcom/poverka/httpFileClient/util/HttpFileClient;->upload(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    new-instance v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$15$1;

    invoke-direct {v0, v1, v5}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$15$1;-><init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity$15;Ljava/lang/String;)V

    .line 1759
    .local v0, "myRunnable":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1761
    .end local v0    # "myRunnable":Ljava/lang/Runnable;
    .end local v5    # "clientInfo":Ljava/lang/String;
    .end local v6    # "paymentAccount":I
    :goto_3
    return-void
.end method
