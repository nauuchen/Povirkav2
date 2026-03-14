.class Lcom/poverka/httpFileClient/activity/SettingsActivity$25;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/poverka/httpFileClient/activity/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/SettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/SettingsActivity;

    .line 925
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageReceived(Lcom/poverka/httpFileClient/util/HttpFileClient$Type;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 24
    .param p1, "type"    # Lcom/poverka/httpFileClient/util/HttpFileClient$Type;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "stream"    # Ljava/io/InputStream;

    .line 928
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, ":"

    const-string v5, "logs/upload"

    const-string v6, "version"

    const-string v7, "getsprstreet"

    const-string v8, "getsprtown"

    const-string v9, "apk/download"

    const-string v10, "apk/last"

    const-string v11, "ver-tests"

    const-string v12, "SettingsActivity"

    const-string v13, "device-types"

    const-string v14, "flash_a"

    const-string v15, "disableUpdate"

    move-object/from16 v16, v14

    const-string v14, "alert"

    move-object/from16 v17, v5

    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1600(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    move-result-object v5

    move-object/from16 v18, v7

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 929
    .local v5, "msg":Landroid/os/Message;
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v20, v19

    .line 932
    .local v20, "bundle":Landroid/os/Bundle;
    :try_start_0
    invoke-virtual {v3, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_26

    if-eqz v19, :cond_0

    :try_start_1
    sget-object v7, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne v2, v7, :cond_0

    if-eqz p3, :cond_0

    .line 933
    invoke-static/range {p3 .. p3}, Lcom/poverka/httpFileClient/util/HttpFileClient;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 934
    .local v4, "typeString":Ljava/lang/String;
    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "types.json"

    invoke-static {v6, v7, v4}, Lcom/poverka/httpFileClient/util/MyFileReader;->writeInternalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0f01a2

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v7, v20

    .end local v20    # "bundle":Landroid/os/Bundle;
    .local v7, "bundle":Landroid/os/Bundle;
    :try_start_2
    invoke-virtual {v7, v14, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    invoke-virtual {v5, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 938
    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1600(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 939
    move-object v4, v5

    .end local v4    # "typeString":Ljava/lang/String;
    goto/16 :goto_19

    .line 1158
    .end local v7    # "bundle":Landroid/os/Bundle;
    .restart local v20    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    move-object/from16 v7, v20

    move-object v4, v0

    move-object/from16 v18, v12

    move-object v15, v14

    .end local v20    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "bundle":Landroid/os/Bundle;
    goto/16 :goto_1c

    .line 932
    .end local v7    # "bundle":Landroid/os/Bundle;
    .restart local v20    # "bundle":Landroid/os/Bundle;
    :cond_0
    move-object/from16 v7, v20

    .line 939
    .end local v20    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "bundle":Landroid/os/Bundle;
    :try_start_3
    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_25

    move-object/from16 v21, v11

    const-string v11, "settings.json"

    if-eqz v20, :cond_2

    move-object/from16 v20, v13

    :try_start_4
    sget-object v13, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne v2, v13, :cond_3

    if-eqz p3, :cond_3

    .line 940
    invoke-static/range {p3 .. p3}, Lcom/poverka/httpFileClient/util/HttpFileClient;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 941
    .local v4, "testString":Ljava/lang/String;
    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v8, "tests.json"

    invoke-static {v6, v8, v4}, Lcom/poverka/httpFileClient/util/MyFileReader;->writeInternalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v6

    const v8, 0x7f0f019b

    invoke-virtual {v6, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 945
    .local v6, "answer":Ljava/lang/String;
    :try_start_5
    new-instance v8, Ljava/io/File;

    iget-object v9, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v9}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-direct {v8, v9, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 946
    .local v8, "settings":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 947
    iget-object v9, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v9}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 948
    .local v9, "text":Ljava/lang/String;
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 949
    .local v10, "jsonSettings":Lorg/json/JSONObject;
    const-string v11, "update_tests"

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 950
    iget-object v11, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v11}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v11, v13, v15}, Lcom/poverka/httpFileClient/util/MyFileReader;->writeInternalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v13}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v13

    const v15, 0x7f0f01b3

    invoke-virtual {v13, v15}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-object v6, v11

    .line 955
    .end local v8    # "settings":Ljava/io/File;
    .end local v9    # "text":Ljava/lang/String;
    .end local v10    # "jsonSettings":Lorg/json/JSONObject;
    :cond_1
    goto :goto_0

    .line 953
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 954
    .local v8, "e":Lorg/json/JSONException;
    :try_start_6
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    .line 957
    .end local v8    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v7, v14, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    invoke-virtual {v5, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 959
    iget-object v8, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v8}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1600(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 960
    move-object v4, v5

    .end local v4    # "testString":Ljava/lang/String;
    .end local v6    # "answer":Ljava/lang/String;
    goto/16 :goto_19

    .line 1158
    :catch_2
    move-exception v0

    move-object v4, v0

    move-object/from16 v18, v12

    move-object v15, v14

    goto/16 :goto_1c

    .line 939
    :cond_2
    move-object/from16 v20, v13

    .line 960
    :cond_3
    :try_start_7
    const-string v13, "stations/state"

    invoke-virtual {v3, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_25

    move-object/from16 v22, v5

    .end local v5    # "msg":Landroid/os/Message;
    .local v22, "msg":Landroid/os/Message;
    const-string v5, "tittle"

    move-object/from16 v23, v14

    const/4 v14, 0x0

    if-eqz v13, :cond_7

    :try_start_8
    sget-object v13, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne v2, v13, :cond_7

    if-eqz p3, :cond_7

    .line 961
    invoke-static/range {p3 .. p3}, Lcom/poverka/httpFileClient/util/HttpFileClient;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 962
    .local v4, "serverString":Ljava/lang/String;
    invoke-static {v12, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 965
    :try_start_9
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 966
    .local v6, "json":Lorg/json/JSONObject;
    invoke-virtual {v6, v15, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_4

    .line 967
    const-string v5, "Update is ALLOWED"

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1800(Ljava/lang/String;)V

    .line 968
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1900(Lcom/poverka/httpFileClient/activity/SettingsActivity;)V

    goto/16 :goto_2

    .line 969
    :cond_4
    invoke-virtual {v6, v15, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    const-string v8, "operationMode"

    invoke-virtual {v6, v8, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_5

    .line 970
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1500(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/view/View;

    move-result-object v5

    const v8, 0x7f090058

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 971
    .local v5, "buttonSetIP":Landroid/widget/Button;
    invoke-virtual {v5}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/poverka/httpFileClient/activity/MainActivity;->IP:Ljava/lang/String;

    .line 972
    invoke-static {}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$2000()Lcom/poverka/httpFileClient/util/HttpFileClient;

    move-result-object v8

    const-string v9, "1/flash/flash_a.json"

    invoke-virtual {v8, v9}, Lcom/poverka/httpFileClient/util/HttpFileClient;->download(Ljava/lang/String;)V

    .end local v5    # "buttonSetIP":Landroid/widget/Button;
    goto :goto_1

    .line 973
    :cond_5
    invoke-virtual {v6, v15, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    .line 974
    iget-object v8, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v8}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1600(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 975
    .end local v22    # "msg":Landroid/os/Message;
    .local v8, "msg":Landroid/os/Message;
    :try_start_a
    iget-object v9, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v9}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0f01a5

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v5, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    const-string v5, "message"

    iget-object v9, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v9}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0f01a6

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v5, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    invoke-virtual {v8, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 978
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1600(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    move-object v5, v8

    goto :goto_3

    .line 1158
    .end local v4    # "serverString":Ljava/lang/String;
    .end local v6    # "json":Lorg/json/JSONObject;
    :catch_3
    move-exception v0

    move-object v4, v0

    move-object v5, v8

    move-object/from16 v18, v12

    move-object/from16 v15, v23

    goto/16 :goto_1c

    .line 980
    .restart local v4    # "serverString":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object v6, v0

    move-object v5, v8

    goto :goto_4

    .line 973
    .end local v8    # "msg":Landroid/os/Message;
    .restart local v6    # "json":Lorg/json/JSONObject;
    .restart local v22    # "msg":Landroid/os/Message;
    :cond_6
    :goto_1
    nop

    .line 982
    .end local v6    # "json":Lorg/json/JSONObject;
    :goto_2
    move-object/from16 v5, v22

    .end local v22    # "msg":Landroid/os/Message;
    .local v5, "msg":Landroid/os/Message;
    :goto_3
    goto :goto_5

    .line 980
    .end local v5    # "msg":Landroid/os/Message;
    .restart local v22    # "msg":Landroid/os/Message;
    :catch_5
    move-exception v0

    move-object v6, v0

    move-object/from16 v5, v22

    .line 981
    .end local v22    # "msg":Landroid/os/Message;
    .restart local v5    # "msg":Landroid/os/Message;
    .local v6, "e":Lorg/json/JSONException;
    :goto_4
    :try_start_b
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 983
    .end local v4    # "serverString":Ljava/lang/String;
    .end local v6    # "e":Lorg/json/JSONException;
    :goto_5
    goto/16 :goto_1a

    .line 1158
    :catch_6
    move-exception v0

    move-object v4, v0

    move-object/from16 v18, v12

    move-object/from16 v15, v23

    goto/16 :goto_1c

    .end local v5    # "msg":Landroid/os/Message;
    .restart local v22    # "msg":Landroid/os/Message;
    :catch_7
    move-exception v0

    move-object v4, v0

    move-object/from16 v18, v12

    move-object/from16 v5, v22

    move-object/from16 v15, v23

    goto/16 :goto_1c

    .line 983
    :cond_7
    :try_start_c
    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_24

    if-eqz v13, :cond_b

    :try_start_d
    sget-object v13, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne v2, v13, :cond_b

    if-eqz p3, :cond_b

    .line 984
    invoke-static/range {p3 .. p3}, Lcom/poverka/httpFileClient/util/HttpFileClient;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    .line 985
    .local v8, "apkString":Ljava/lang/String;
    invoke-static {v8}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1800(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 988
    :try_start_e
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 989
    .local v9, "apkInfo":Lorg/json/JSONObject;
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v14

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 990
    .local v10, "versionCodeNew":I
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aget-object v4, v4, v6

    .line 992
    .local v4, "versionNameNew":Ljava/lang/String;
    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v13, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v13}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 993
    .local v6, "pInfo":Landroid/content/pm/PackageInfo;
    iget v13, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 994
    .local v13, "versionCodeCur":I
    iget-object v14, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 996
    .local v14, "versionNameCur":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v6

    .end local v6    # "pInfo":Landroid/content/pm/PackageInfo;
    .local v16, "pInfo":Landroid/content/pm/PackageInfo;
    const-string v6, "\u041d\u043e\u043c\u0435\u0440 \u0442\u0435\u043a\u0443\u0449\u0435\u0439 \u0432\u0435\u0440\u0441\u0438\u0438: "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1800(Ljava/lang/String;)V

    .line 997
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u041a\u043e\u0434 \u0442\u0435\u043a\u0443\u0449\u0435\u0439 \u0432\u0435\u0440\u0441\u0438\u0438: "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1800(Ljava/lang/String;)V

    .line 999
    if-le v10, v13, :cond_8

    .line 1000
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1600(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_e} :catch_12
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 1001
    .end local v22    # "msg":Landroid/os/Message;
    .restart local v5    # "msg":Landroid/os/Message;
    :try_start_f
    const-string v6, "apk_info"

    invoke-virtual {v7, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    invoke-virtual {v5, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1003
    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1600(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    move-object/from16 v17, v4

    goto :goto_7

    .line 1024
    .end local v4    # "versionNameNew":Ljava/lang/String;
    .end local v9    # "apkInfo":Lorg/json/JSONObject;
    .end local v10    # "versionCodeNew":I
    .end local v13    # "versionCodeCur":I
    .end local v14    # "versionNameCur":Ljava/lang/String;
    .end local v16    # "pInfo":Landroid/content/pm/PackageInfo;
    :catch_8
    move-exception v0

    goto :goto_6

    :catch_9
    move-exception v0

    :goto_6
    move-object v4, v0

    goto/16 :goto_d

    .line 1004
    .end local v5    # "msg":Landroid/os/Message;
    .restart local v4    # "versionNameNew":Ljava/lang/String;
    .restart local v9    # "apkInfo":Lorg/json/JSONObject;
    .restart local v10    # "versionCodeNew":I
    .restart local v13    # "versionCodeCur":I
    .restart local v14    # "versionNameCur":Ljava/lang/String;
    .restart local v16    # "pInfo":Landroid/content/pm/PackageInfo;
    .restart local v22    # "msg":Landroid/os/Message;
    :cond_8
    if-ne v10, v13, :cond_9

    :try_start_10
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 1005
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1600(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_10} :catch_12
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    .line 1006
    .end local v22    # "msg":Landroid/os/Message;
    .restart local v5    # "msg":Landroid/os/Message;
    :try_start_11
    const-string v6, "apk_info"

    invoke-virtual {v7, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    invoke-virtual {v5, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1008
    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1600(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_11} :catch_8
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6

    move-object/from16 v17, v4

    goto :goto_7

    .line 1010
    .end local v5    # "msg":Landroid/os/Message;
    .restart local v22    # "msg":Landroid/os/Message;
    :cond_9
    :try_start_12
    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1600(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    move-result-object v6

    const/4 v15, 0x2

    invoke-virtual {v6, v15}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_12} :catch_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7

    .line 1011
    .end local v22    # "msg":Landroid/os/Message;
    .local v6, "msg":Landroid/os/Message;
    :try_start_13
    iget-object v15, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v15}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v15

    move-object/from16 v17, v4

    .end local v4    # "versionNameNew":Ljava/lang/String;
    .local v17, "versionNameNew":Ljava/lang/String;
    const v4, 0x7f0f01a5

    invoke-virtual {v15, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    const-string v4, "message"

    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v5

    const v15, 0x7f0f009c

    invoke-virtual {v5, v15}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    invoke-virtual {v6, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1014
    iget-object v4, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1600(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_13} :catch_10
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_14

    move-object v5, v6

    .line 1017
    .end local v6    # "msg":Landroid/os/Message;
    .restart local v5    # "msg":Landroid/os/Message;
    :goto_7
    :try_start_14
    new-instance v4, Ljava/io/File;

    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-direct {v4, v6, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1018
    .local v4, "settings":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1019
    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1020
    .local v6, "text":Ljava/lang/String;
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1021
    .local v11, "jsonSettings":Lorg/json/JSONObject;
    const-string v15, "check_firmware_update"
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_14} :catch_e
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d

    move-object/from16 v18, v5

    const/4 v5, 0x1

    .end local v5    # "msg":Landroid/os/Message;
    .local v18, "msg":Landroid/os/Message;
    :try_start_15
    invoke-virtual {v11, v15, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1022
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v19, v4

    .end local v4    # "settings":Ljava/io/File;
    .local v19, "settings":Ljava/io/File;
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v15, v4}, Lcom/poverka/httpFileClient/util/MyFileReader;->writeInternalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_15} :catch_b
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_a

    goto :goto_9

    .line 1158
    .end local v6    # "text":Ljava/lang/String;
    .end local v8    # "apkString":Ljava/lang/String;
    .end local v9    # "apkInfo":Lorg/json/JSONObject;
    .end local v10    # "versionCodeNew":I
    .end local v11    # "jsonSettings":Lorg/json/JSONObject;
    .end local v13    # "versionCodeCur":I
    .end local v14    # "versionNameCur":Ljava/lang/String;
    .end local v16    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v17    # "versionNameNew":Ljava/lang/String;
    .end local v19    # "settings":Ljava/io/File;
    :catch_a
    move-exception v0

    move-object v4, v0

    move-object/from16 v5, v18

    move-object/from16 v15, v23

    move-object/from16 v18, v12

    goto/16 :goto_1c

    .line 1024
    .restart local v8    # "apkString":Ljava/lang/String;
    :catch_b
    move-exception v0

    goto :goto_8

    :catch_c
    move-exception v0

    :goto_8
    move-object v4, v0

    move-object/from16 v5, v18

    goto :goto_d

    .line 1018
    .end local v18    # "msg":Landroid/os/Message;
    .restart local v4    # "settings":Ljava/io/File;
    .restart local v5    # "msg":Landroid/os/Message;
    .restart local v9    # "apkInfo":Lorg/json/JSONObject;
    .restart local v10    # "versionCodeNew":I
    .restart local v13    # "versionCodeCur":I
    .restart local v14    # "versionNameCur":Ljava/lang/String;
    .restart local v16    # "pInfo":Landroid/content/pm/PackageInfo;
    .restart local v17    # "versionNameNew":Ljava/lang/String;
    :cond_a
    move-object/from16 v19, v4

    move-object/from16 v18, v5

    .line 1026
    .end local v4    # "settings":Ljava/io/File;
    .end local v5    # "msg":Landroid/os/Message;
    .end local v9    # "apkInfo":Lorg/json/JSONObject;
    .end local v10    # "versionCodeNew":I
    .end local v13    # "versionCodeCur":I
    .end local v14    # "versionNameCur":Ljava/lang/String;
    .end local v16    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v17    # "versionNameNew":Ljava/lang/String;
    .restart local v18    # "msg":Landroid/os/Message;
    :goto_9
    move-object/from16 v5, v18

    goto :goto_e

    .line 1158
    .end local v8    # "apkString":Ljava/lang/String;
    .end local v18    # "msg":Landroid/os/Message;
    .restart local v5    # "msg":Landroid/os/Message;
    :catch_d
    move-exception v0

    move-object/from16 v18, v5

    move-object v4, v0

    move-object/from16 v15, v23

    move-object/from16 v18, v12

    .end local v5    # "msg":Landroid/os/Message;
    .restart local v18    # "msg":Landroid/os/Message;
    goto/16 :goto_1c

    .line 1024
    .end local v18    # "msg":Landroid/os/Message;
    .restart local v5    # "msg":Landroid/os/Message;
    .restart local v8    # "apkString":Ljava/lang/String;
    :catch_e
    move-exception v0

    goto :goto_a

    :catch_f
    move-exception v0

    :goto_a
    move-object/from16 v18, v5

    move-object v4, v0

    .end local v5    # "msg":Landroid/os/Message;
    .restart local v18    # "msg":Landroid/os/Message;
    goto :goto_d

    .end local v18    # "msg":Landroid/os/Message;
    .local v6, "msg":Landroid/os/Message;
    :catch_10
    move-exception v0

    goto :goto_b

    :catch_11
    move-exception v0

    :goto_b
    move-object v4, v0

    move-object v5, v6

    goto :goto_d

    .end local v6    # "msg":Landroid/os/Message;
    .restart local v22    # "msg":Landroid/os/Message;
    :catch_12
    move-exception v0

    goto :goto_c

    :catch_13
    move-exception v0

    :goto_c
    move-object v4, v0

    move-object/from16 v5, v22

    .line 1025
    .end local v22    # "msg":Landroid/os/Message;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v5    # "msg":Landroid/os/Message;
    :goto_d
    :try_start_16
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_6

    .line 1027
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v8    # "apkString":Ljava/lang/String;
    :goto_e
    goto/16 :goto_1a

    .end local v5    # "msg":Landroid/os/Message;
    .restart local v22    # "msg":Landroid/os/Message;
    :cond_b
    :try_start_17
    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_24

    if-eqz v4, :cond_c

    :try_start_18
    sget-object v4, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne v2, v4, :cond_c

    if-eqz p3, :cond_c

    .line 1028
    invoke-static/range {p3 .. p3}, Lcom/poverka/httpFileClient/util/HttpFileClient;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 1029
    .local v4, "progressString":Ljava/lang/String;
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1600(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_7

    .line 1030
    .end local v22    # "msg":Landroid/os/Message;
    .restart local v5    # "msg":Landroid/os/Message;
    :try_start_19
    const-string v6, "progress"

    invoke-virtual {v7, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    invoke-virtual {v5, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1032
    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1600(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_6

    .line 1033
    nop

    .end local v4    # "progressString":Ljava/lang/String;
    goto/16 :goto_1a

    .end local v5    # "msg":Landroid/os/Message;
    .restart local v22    # "msg":Landroid/os/Message;
    :cond_c
    :try_start_1a
    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_24

    const-string v5, "result"

    const-string v6, "error"

    const-string v11, "OK"

    const-string v13, "status"

    if-eqz v4, :cond_e

    :try_start_1b
    sget-object v4, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_1e

    if-ne v2, v4, :cond_e

    if-eqz p3, :cond_e

    .line 1034
    :try_start_1c
    invoke-static/range {p3 .. p3}, Lcom/poverka/httpFileClient/util/HttpFileClient;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 1035
    .local v4, "addressString":Ljava/lang/String;
    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1800(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_1d

    .line 1038
    :try_start_1d
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1039
    .local v8, "addressInfo":Lorg/json/JSONObject;
    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1040
    .local v9, "status":Ljava/lang/String;
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_1d} :catch_1b
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_1d

    if-eqz v10, :cond_d

    .line 1041
    :try_start_1e
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1042
    .local v5, "townsJSON":Lorg/json/JSONArray;
    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1600(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    move-result-object v6

    const/4 v10, 0x5

    invoke-virtual {v6, v10}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_1e} :catch_16
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_7

    .line 1043
    .end local v22    # "msg":Landroid/os/Message;
    .restart local v6    # "msg":Landroid/os/Message;
    :try_start_1f
    const-string v10, "townsJSON"

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    invoke-virtual {v6, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1045
    iget-object v10, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v10}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1600(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_1f} :catch_15
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_14

    .line 1046
    move-object v5, v6

    .end local v5    # "townsJSON":Lorg/json/JSONArray;
    goto :goto_f

    .line 1158
    .end local v4    # "addressString":Ljava/lang/String;
    .end local v8    # "addressInfo":Lorg/json/JSONObject;
    .end local v9    # "status":Ljava/lang/String;
    :catch_14
    move-exception v0

    move-object v4, v0

    move-object v5, v6

    move-object/from16 v18, v12

    move-object/from16 v15, v23

    goto/16 :goto_1c

    .line 1053
    .restart local v4    # "addressString":Ljava/lang/String;
    :catch_15
    move-exception v0

    move-object v5, v6

    move-object/from16 v15, v23

    goto :goto_10

    .end local v6    # "msg":Landroid/os/Message;
    .restart local v22    # "msg":Landroid/os/Message;
    :catch_16
    move-exception v0

    move-object v6, v0

    move-object/from16 v5, v22

    move-object/from16 v15, v23

    goto :goto_12

    .line 1048
    .restart local v8    # "addressInfo":Lorg/json/JSONObject;
    .restart local v9    # "status":Ljava/lang/String;
    :cond_d
    :try_start_20
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_20} :catch_1b
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_1d

    .line 1049
    .local v5, "error":Ljava/lang/String;
    move-object/from16 v15, v23

    :try_start_21
    invoke-virtual {v7, v15, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_21} :catch_1a
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_19

    .line 1050
    move-object/from16 v6, v22

    .end local v22    # "msg":Landroid/os/Message;
    .restart local v6    # "msg":Landroid/os/Message;
    :try_start_22
    invoke-virtual {v6, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1051
    iget-object v10, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v10}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1600(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_22} :catch_18
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_17

    move-object v5, v6

    .line 1055
    .end local v6    # "msg":Landroid/os/Message;
    .end local v8    # "addressInfo":Lorg/json/JSONObject;
    .end local v9    # "status":Ljava/lang/String;
    .local v5, "msg":Landroid/os/Message;
    :goto_f
    goto :goto_13

    .line 1158
    .end local v4    # "addressString":Ljava/lang/String;
    .end local v5    # "msg":Landroid/os/Message;
    .restart local v6    # "msg":Landroid/os/Message;
    :catch_17
    move-exception v0

    move-object v4, v0

    move-object v5, v6

    move-object/from16 v18, v12

    goto/16 :goto_1c

    .line 1053
    .restart local v4    # "addressString":Ljava/lang/String;
    :catch_18
    move-exception v0

    move-object v5, v6

    :goto_10
    move-object v6, v0

    goto :goto_12

    .line 1158
    .end local v4    # "addressString":Ljava/lang/String;
    .end local v6    # "msg":Landroid/os/Message;
    .restart local v22    # "msg":Landroid/os/Message;
    :catch_19
    move-exception v0

    move-object/from16 v6, v22

    goto :goto_14

    .line 1053
    .restart local v4    # "addressString":Ljava/lang/String;
    :catch_1a
    move-exception v0

    move-object/from16 v6, v22

    goto :goto_11

    :catch_1b
    move-exception v0

    move-object/from16 v6, v22

    move-object/from16 v15, v23

    :goto_11
    move-object v5, v6

    move-object v6, v0

    .line 1054
    .end local v22    # "msg":Landroid/os/Message;
    .restart local v5    # "msg":Landroid/os/Message;
    .local v6, "e":Lorg/json/JSONException;
    :goto_12
    :try_start_23
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_1c

    .line 1056
    .end local v4    # "addressString":Ljava/lang/String;
    .end local v6    # "e":Lorg/json/JSONException;
    :goto_13
    goto/16 :goto_1a

    .line 1158
    :catch_1c
    move-exception v0

    move-object v4, v0

    move-object/from16 v18, v12

    goto/16 :goto_1c

    .end local v5    # "msg":Landroid/os/Message;
    .restart local v22    # "msg":Landroid/os/Message;
    :catch_1d
    move-exception v0

    move-object/from16 v6, v22

    move-object/from16 v15, v23

    :goto_14
    move-object v4, v0

    move-object v5, v6

    move-object/from16 v18, v12

    .end local v22    # "msg":Landroid/os/Message;
    .local v6, "msg":Landroid/os/Message;
    goto/16 :goto_1c

    .end local v6    # "msg":Landroid/os/Message;
    .restart local v22    # "msg":Landroid/os/Message;
    :catch_1e
    move-exception v0

    move-object/from16 v4, v22

    move-object/from16 v15, v23

    move-object v5, v4

    move-object/from16 v18, v12

    goto/16 :goto_1b

    .line 1033
    :cond_e
    move-object/from16 v4, v22

    move-object/from16 v15, v23

    .line 1056
    .end local v22    # "msg":Landroid/os/Message;
    .local v4, "msg":Landroid/os/Message;
    move-object/from16 v14, v18

    :try_start_24
    invoke-virtual {v3, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_23

    if-eqz v18, :cond_11

    move-object/from16 v18, v12

    :try_start_25
    sget-object v12, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne v2, v12, :cond_12

    if-eqz p3, :cond_12

    .line 1057
    invoke-static/range {p3 .. p3}, Lcom/poverka/httpFileClient/util/HttpFileClient;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    .line 1058
    .local v8, "streetsString":Ljava/lang/String;
    invoke-static {v8}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1800(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_20

    .line 1061
    :try_start_26
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1062
    .local v9, "streetsInfo":Lorg/json/JSONObject;
    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1063
    .local v10, "status":Ljava/lang/String;
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 1064
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1066
    .local v5, "streetsJSON":Lorg/json/JSONArray;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 1067
    .local v6, "addressJSON":Lorg/json/JSONObject;
    const-string v11, "city_id"

    invoke-static {}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$2100()I

    move-result v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1068
    const-string v11, "city_name"

    invoke-static {}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$2200()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1069
    const-string v11, "streets"

    invoke-virtual {v6, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1071
    new-instance v11, Ljava/io/File;

    iget-object v12, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v12}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    const-string v13, "address.json"

    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1072
    .local v11, "address":Ljava/io/File;
    iget-object v12, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v12}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/poverka/httpFileClient/util/MyFileReader;->writeInternalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    iget-object v12, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v12}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v12

    const v13, 0x7f0f001d

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v15, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    invoke-virtual {v4, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1076
    iget-object v12, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v12}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1600(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1077
    nop

    .end local v5    # "streetsJSON":Lorg/json/JSONArray;
    .end local v6    # "addressJSON":Lorg/json/JSONObject;
    .end local v11    # "address":Ljava/io/File;
    goto :goto_16

    .line 1078
    :cond_f
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1079
    .local v5, "error":Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1080
    .local v6, "jsonError":Lorg/json/JSONObject;
    const-string v11, "code"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    const/16 v12, 0x71

    if-ne v11, v12, :cond_10

    .line 1081
    iget-object v11, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v11}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v11

    const v12, 0x7f0f013e

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v15, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 1083
    :cond_10
    invoke-virtual {v7, v15, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    :goto_15
    invoke-virtual {v4, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1086
    iget-object v11, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v11}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1600(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    move-result-object v11

    invoke-virtual {v11, v4}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_26} :catch_1f
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_20

    .line 1090
    .end local v5    # "error":Ljava/lang/String;
    .end local v6    # "jsonError":Lorg/json/JSONObject;
    .end local v9    # "streetsInfo":Lorg/json/JSONObject;
    .end local v10    # "status":Ljava/lang/String;
    :goto_16
    goto :goto_17

    .line 1088
    :catch_1f
    move-exception v0

    move-object v5, v0

    .line 1089
    .local v5, "e":Lorg/json/JSONException;
    :try_start_27
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 1091
    .end local v5    # "e":Lorg/json/JSONException;
    .end local v8    # "streetsString":Ljava/lang/String;
    :goto_17
    goto/16 :goto_19

    .line 1158
    :catch_20
    move-exception v0

    move-object v5, v4

    move-object v4, v0

    goto/16 :goto_1c

    .line 1056
    :cond_11
    move-object/from16 v18, v12

    .line 1091
    :cond_12
    move-object/from16 v5, v17

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_13

    sget-object v6, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne v2, v6, :cond_13

    if-eqz p3, :cond_13

    .line 1092
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/poverka/httpFileClient/util/MyFileReader;->removeLog(Landroid/content/Context;)V

    .line 1094
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1600(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_20

    .line 1095
    .end local v4    # "msg":Landroid/os/Message;
    .local v5, "msg":Landroid/os/Message;
    :try_start_28
    iget-object v4, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v4

    const v6, 0x7f0f0178

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v15, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    invoke-virtual {v5, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1097
    iget-object v4, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1600(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_21

    goto/16 :goto_1a

    .line 1158
    :catch_21
    move-exception v0

    move-object v4, v0

    goto/16 :goto_1c

    .line 1098
    .end local v5    # "msg":Landroid/os/Message;
    .restart local v4    # "msg":Landroid/os/Message;
    :cond_13
    move-object/from16 v6, v16

    :try_start_29
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_14

    sget-object v11, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->DOWNLOAD:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_20

    if-ne v2, v11, :cond_14

    if-eqz p3, :cond_14

    .line 1100
    :try_start_2a
    new-instance v5, Lorg/json/JSONObject;

    invoke-static/range {p3 .. p3}, Lcom/poverka/httpFileClient/util/HttpFileClient;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1101
    .local v5, "json":Lorg/json/JSONObject;
    const-string v6, "send_data"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 1103
    .local v6, "sendDate":I
    new-instance v8, Ljava/util/Date;

    int-to-long v9, v6

    const-wide/16 v11, 0x3e8

    mul-long v9, v9, v11

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 1104
    .local v8, "curDate":Ljava/util/Date;
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "dd.MM.yyyy HH:mm"

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v9, v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1105
    .local v9, "format":Ljava/text/SimpleDateFormat;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "old send_data: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1800(Ljava/lang/String;)V

    .line 1107
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 1108
    .local v10, "today":Ljava/util/Calendar;
    const/4 v11, 0x5

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 1109
    const/16 v11, 0xb

    const/16 v12, 0xc

    invoke-virtual {v10, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 1110
    const/16 v11, 0xc

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 1111
    const/16 v11, 0xd

    invoke-virtual {v10, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 1112
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "today, the first: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1800(Ljava/lang/String;)V

    .line 1114
    const-string v11, "send_data"

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    const-wide/16 v16, 0x3e8

    div-long v12, v12, v16

    long-to-int v13, v12

    invoke-virtual {v5, v11, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1115
    invoke-static {}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$2000()Lcom/poverka/httpFileClient/util/HttpFileClient;

    move-result-object v11

    const-string v12, "1/flash/flash_a.json"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/poverka/httpFileClient/util/HttpFileClient;->upload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_2a} :catch_22
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_20

    .end local v5    # "json":Lorg/json/JSONObject;
    .end local v6    # "sendDate":I
    .end local v8    # "curDate":Ljava/util/Date;
    .end local v9    # "format":Ljava/text/SimpleDateFormat;
    .end local v10    # "today":Ljava/util/Calendar;
    goto :goto_18

    .line 1116
    :catch_22
    move-exception v0

    move-object v5, v0

    .line 1117
    .local v5, "e":Lorg/json/JSONException;
    :try_start_2b
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 1118
    .end local v5    # "e":Lorg/json/JSONException;
    :goto_18
    goto/16 :goto_19

    .line 1119
    :cond_14
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_15

    sget-object v11, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->UPLOAD:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne v2, v11, :cond_15

    if-eqz p3, :cond_15

    .line 1120
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0f0177

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v15, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    invoke-virtual {v4, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1122
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1600(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_19

    .line 1123
    :cond_15
    move-object/from16 v11, v20

    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_16

    sget-object v11, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne v2, v11, :cond_16

    if-nez p3, :cond_16

    .line 1124
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0f006f

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v15, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    invoke-virtual {v4, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1126
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1600(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_19

    .line 1127
    :cond_16
    move-object/from16 v11, v21

    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_17

    sget-object v11, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne v2, v11, :cond_17

    if-nez p3, :cond_17

    .line 1128
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0f006e

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v15, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    invoke-virtual {v4, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1130
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1600(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_19

    .line 1131
    :cond_17
    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_18

    sget-object v10, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne v2, v10, :cond_18

    if-nez p3, :cond_18

    .line 1132
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0f0070

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v15, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    invoke-virtual {v4, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1134
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1600(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_19

    .line 1135
    :cond_18
    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_19

    sget-object v9, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne v2, v9, :cond_19

    if-nez p3, :cond_19

    .line 1136
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0f0071

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v15, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    invoke-virtual {v4, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1138
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1600(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_19

    .line 1139
    :cond_19
    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1a

    sget-object v8, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne v2, v8, :cond_1a

    if-nez p3, :cond_1a

    .line 1140
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0f0068

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v15, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    invoke-virtual {v4, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1142
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1600(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_19

    .line 1143
    :cond_1a
    invoke-virtual {v3, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1b

    sget-object v8, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne v2, v8, :cond_1b

    if-nez p3, :cond_1b

    .line 1144
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0f006b

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v15, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    invoke-virtual {v4, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1146
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1600(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_19

    .line 1147
    :cond_1b
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1c

    sget-object v5, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne v2, v5, :cond_1c

    if-nez p3, :cond_1c

    .line 1148
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1600(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_20

    .line 1149
    .end local v4    # "msg":Landroid/os/Message;
    .local v5, "msg":Landroid/os/Message;
    :try_start_2c
    iget-object v4, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v4

    const v6, 0x7f0f006c

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v15, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    invoke-virtual {v5, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1151
    iget-object v4, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1600(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_21

    goto :goto_1a

    .line 1152
    .end local v5    # "msg":Landroid/os/Message;
    .restart local v4    # "msg":Landroid/os/Message;
    :cond_1c
    :try_start_2d
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1d

    sget-object v5, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->DOWNLOAD:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne v2, v5, :cond_1d

    if-nez p3, :cond_1d

    .line 1153
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1600(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_20

    .line 1154
    .end local v4    # "msg":Landroid/os/Message;
    .restart local v5    # "msg":Landroid/os/Message;
    :try_start_2e
    iget-object v4, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v4

    const v6, 0x7f0f0069

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v15, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    invoke-virtual {v5, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1156
    iget-object v4, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1600(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_21

    goto :goto_1a

    .line 1163
    :cond_1d
    :goto_19
    move-object v5, v4

    :goto_1a
    goto :goto_1d

    .line 1158
    .end local v5    # "msg":Landroid/os/Message;
    .restart local v4    # "msg":Landroid/os/Message;
    :catch_23
    move-exception v0

    move-object/from16 v18, v12

    move-object v5, v4

    move-object v4, v0

    goto :goto_1c

    .end local v4    # "msg":Landroid/os/Message;
    .restart local v22    # "msg":Landroid/os/Message;
    :catch_24
    move-exception v0

    move-object/from16 v18, v12

    move-object/from16 v4, v22

    move-object/from16 v15, v23

    move-object v5, v4

    :goto_1b
    move-object v4, v0

    .end local v22    # "msg":Landroid/os/Message;
    .restart local v4    # "msg":Landroid/os/Message;
    goto :goto_1c

    .end local v4    # "msg":Landroid/os/Message;
    .restart local v5    # "msg":Landroid/os/Message;
    :catch_25
    move-exception v0

    move-object v4, v5

    move-object/from16 v18, v12

    move-object v15, v14

    move-object v4, v0

    .end local v5    # "msg":Landroid/os/Message;
    .restart local v4    # "msg":Landroid/os/Message;
    goto :goto_1c

    .end local v4    # "msg":Landroid/os/Message;
    .end local v7    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "msg":Landroid/os/Message;
    .restart local v20    # "bundle":Landroid/os/Bundle;
    :catch_26
    move-exception v0

    move-object v4, v5

    move-object/from16 v18, v12

    move-object v15, v14

    move-object/from16 v7, v20

    move-object v4, v0

    .line 1159
    .end local v20    # "bundle":Landroid/os/Bundle;
    .local v4, "e":Ljava/io/IOException;
    .restart local v7    # "bundle":Landroid/os/Bundle;
    :goto_1c
    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v6

    const v8, 0x7f0f006a

    invoke-virtual {v6, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v15, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    invoke-virtual {v5, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1161
    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1600(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1162
    const-string v6, "Error in HTTP receiver"

    move-object/from16 v8, v18

    invoke-static {v8, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1164
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1d
    return-void
.end method
