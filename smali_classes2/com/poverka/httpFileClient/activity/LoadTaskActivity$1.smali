.class Lcom/poverka/httpFileClient/activity/LoadTaskActivity$1;
.super Ljava/lang/Object;
.source "LoadTaskActivity.java"

# interfaces
.implements Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/poverka/httpFileClient/activity/LoadTaskActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/LoadTaskActivity;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/LoadTaskActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/LoadTaskActivity;

    .line 79
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/LoadTaskActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/LoadTaskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageReceived(Lcom/poverka/httpFileClient/util/HttpFileClient$Type;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 22
    .param p1, "type"    # Lcom/poverka/httpFileClient/util/HttpFileClient$Type;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "stream"    # Ljava/io/InputStream;

    .line 83
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, "STATUS_ID"

    const-string v3, "ID"

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 86
    .local v4, "bundle":Landroid/os/Bundle;
    :try_start_0
    const-string v5, "getmarshrut"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    move-object/from16 v6, p1

    if-ne v6, v5, :cond_9

    if-eqz p3, :cond_9

    .line 87
    invoke-static/range {p3 .. p3}, Lcom/poverka/httpFileClient/util/HttpFileClient;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 88
    .local v5, "taskString":Ljava/lang/String;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 89
    .local v7, "taskInfo":Lorg/json/JSONObject;
    const-string v8, "status"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 90
    .local v8, "status":Ljava/lang/String;
    const-string v9, "OK"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "message"

    const-string v11, "tittle"

    if-eqz v9, :cond_8

    .line 91
    :try_start_1
    new-instance v9, Ljava/io/File;

    iget-object v13, v1, Lcom/poverka/httpFileClient/activity/LoadTaskActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/LoadTaskActivity;

    invoke-static {v13}, Lcom/poverka/httpFileClient/activity/LoadTaskActivity;->access$100(Lcom/poverka/httpFileClient/activity/LoadTaskActivity;)Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v13

    const-string v14, "localTasks.json"

    invoke-direct {v9, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 92
    .local v9, "localTasks":Ljava/io/File;
    const-string v13, "result"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 93
    .local v13, "serverTasksJSON":Lorg/json/JSONArray;
    new-instance v14, Lorg/json/JSONArray;

    iget-object v15, v1, Lcom/poverka/httpFileClient/activity/LoadTaskActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/LoadTaskActivity;

    invoke-static {v15}, Lcom/poverka/httpFileClient/activity/LoadTaskActivity;->access$100(Lcom/poverka/httpFileClient/activity/LoadTaskActivity;)Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v15, v12}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v14, v12}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object v12, v14

    .line 94
    .local v12, "localTasksJSON":Lorg/json/JSONArray;
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v14

    .line 96
    .local v14, "loadCount":I
    const/4 v15, 0x0

    .local v15, "serverInd":I
    :goto_0
    move-object/from16 v17, v5

    .end local v5    # "taskString":Ljava/lang/String;
    .local v17, "taskString":Ljava/lang/String;
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v15, v5, :cond_4

    .line 97
    const/4 v5, 0x0

    .local v5, "localInd":I
    :goto_1
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 98
    invoke-virtual {v13, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v19, v8

    .end local v8    # "status":Ljava/lang/String;
    .local v19, "status":Ljava/lang/String;
    invoke-virtual {v12, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    if-ne v6, v8, :cond_2

    .line 99
    invoke-virtual {v12, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v12, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_2

    .line 102
    :cond_0
    invoke-virtual {v13, v15}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    .line 103
    add-int/lit8 v15, v15, -0x1

    goto :goto_3

    .line 100
    :cond_1
    :goto_2
    invoke-virtual {v12, v5}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    .line 105
    :goto_3
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v6

    move v5, v6

    .line 97
    :cond_2
    const/4 v6, 0x1

    add-int/2addr v5, v6

    move-object/from16 v8, v19

    goto :goto_1

    .end local v19    # "status":Ljava/lang/String;
    .restart local v8    # "status":Ljava/lang/String;
    :cond_3
    move-object/from16 v19, v8

    .line 96
    .end local v5    # "localInd":I
    .end local v8    # "status":Ljava/lang/String;
    .restart local v19    # "status":Ljava/lang/String;
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v6, p1

    move-object/from16 v5, v17

    goto :goto_0

    .end local v19    # "status":Ljava/lang/String;
    .restart local v8    # "status":Ljava/lang/String;
    :cond_4
    move-object/from16 v19, v8

    .line 109
    .end local v8    # "status":Ljava/lang/String;
    .end local v15    # "serverInd":I
    .restart local v19    # "status":Ljava/lang/String;
    const/4 v0, 0x0

    .line 110
    .local v0, "emptyCount":I
    const/4 v3, 0x0

    .line 111
    .local v3, "saveCount":I
    const/4 v5, 0x0

    .local v5, "serverInd":I
    :goto_4
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 112
    invoke-virtual {v13, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "ZAJAVKA_TIME"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "null"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 113
    add-int/lit8 v0, v0, 0x1

    .line 114
    invoke-virtual {v13, v5}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    .line 115
    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    .line 117
    :cond_5
    invoke-virtual {v13, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v12, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 118
    add-int/lit8 v3, v3, 0x1

    .line 111
    :goto_5
    const/4 v6, 0x1

    add-int/2addr v5, v6

    goto :goto_4

    .line 122
    .end local v5    # "serverInd":I
    :cond_6
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/LoadTaskActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/LoadTaskActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/LoadTaskActivity;->access$100(Lcom/poverka/httpFileClient/activity/LoadTaskActivity;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v8}, Lcom/poverka/httpFileClient/util/MyFileReader;->writeInternalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v5, "date=(.*?)$"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 125
    .local v5, "date":Ljava/util/regex/Pattern;
    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 126
    .local v6, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 127
    iget-object v8, v1, Lcom/poverka/httpFileClient/activity/LoadTaskActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/LoadTaskActivity;

    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2, v13}, Lcom/poverka/httpFileClient/activity/LoadTaskActivity;->access$200(Lcom/poverka/httpFileClient/activity/LoadTaskActivity;Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 130
    :cond_7
    iget-object v2, v1, Lcom/poverka/httpFileClient/activity/LoadTaskActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/LoadTaskActivity;

    invoke-static {v2}, Lcom/poverka/httpFileClient/activity/LoadTaskActivity;->access$300(Lcom/poverka/httpFileClient/activity/LoadTaskActivity;)Lcom/poverka/httpFileClient/activity/LoadTaskActivity$MyHandler;

    move-result-object v2

    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Lcom/poverka/httpFileClient/activity/LoadTaskActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 131
    .local v2, "msg":Landroid/os/Message;
    iget-object v8, v1, Lcom/poverka/httpFileClient/activity/LoadTaskActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/LoadTaskActivity;

    const v15, 0x7f0f012e

    invoke-virtual {v8, v15}, Lcom/poverka/httpFileClient/activity/LoadTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v11, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v11, v1, Lcom/poverka/httpFileClient/activity/LoadTaskActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/LoadTaskActivity;

    const v15, 0x7f0f009f

    invoke-virtual {v11, v15}, Lcom/poverka/httpFileClient/activity/LoadTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v20, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v15, v20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v18, 0x1

    aput-object v20, v15, v18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v16, 0x2

    aput-object v18, v15, v16

    invoke-static {v8, v11, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v10, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v2, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 134
    iget-object v8, v1, Lcom/poverka/httpFileClient/activity/LoadTaskActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/LoadTaskActivity;

    invoke-static {v8}, Lcom/poverka/httpFileClient/activity/LoadTaskActivity;->access$300(Lcom/poverka/httpFileClient/activity/LoadTaskActivity;)Lcom/poverka/httpFileClient/activity/LoadTaskActivity$MyHandler;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/poverka/httpFileClient/activity/LoadTaskActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 135
    nop

    .end local v0    # "emptyCount":I
    .end local v3    # "saveCount":I
    .end local v5    # "date":Ljava/util/regex/Pattern;
    .end local v6    # "m":Ljava/util/regex/Matcher;
    .end local v9    # "localTasks":Ljava/io/File;
    .end local v12    # "localTasksJSON":Lorg/json/JSONArray;
    .end local v13    # "serverTasksJSON":Lorg/json/JSONArray;
    .end local v14    # "loadCount":I
    goto :goto_6

    .line 136
    .end local v2    # "msg":Landroid/os/Message;
    .end local v17    # "taskString":Ljava/lang/String;
    .end local v19    # "status":Ljava/lang/String;
    .local v5, "taskString":Ljava/lang/String;
    .restart local v8    # "status":Ljava/lang/String;
    :cond_8
    move-object/from16 v17, v5

    move-object/from16 v19, v8

    .end local v5    # "taskString":Ljava/lang/String;
    .end local v8    # "status":Ljava/lang/String;
    .restart local v17    # "taskString":Ljava/lang/String;
    .restart local v19    # "status":Ljava/lang/String;
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/LoadTaskActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/LoadTaskActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/LoadTaskActivity;->access$300(Lcom/poverka/httpFileClient/activity/LoadTaskActivity;)Lcom/poverka/httpFileClient/activity/LoadTaskActivity$MyHandler;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/poverka/httpFileClient/activity/LoadTaskActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 137
    .local v0, "msg":Landroid/os/Message;
    const-string v2, "error"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "error":Ljava/lang/String;
    iget-object v3, v1, Lcom/poverka/httpFileClient/activity/LoadTaskActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/LoadTaskActivity;

    const v5, 0x7f0f018d

    invoke-virtual {v3, v5}, Lcom/poverka/httpFileClient/activity/LoadTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v11, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v4, v10, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 141
    iget-object v3, v1, Lcom/poverka/httpFileClient/activity/LoadTaskActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/LoadTaskActivity;

    invoke-static {v3}, Lcom/poverka/httpFileClient/activity/LoadTaskActivity;->access$300(Lcom/poverka/httpFileClient/activity/LoadTaskActivity;)Lcom/poverka/httpFileClient/activity/LoadTaskActivity$MyHandler;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/poverka/httpFileClient/activity/LoadTaskActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 146
    .end local v0    # "msg":Landroid/os/Message;
    .end local v2    # "error":Ljava/lang/String;
    .end local v7    # "taskInfo":Lorg/json/JSONObject;
    .end local v17    # "taskString":Ljava/lang/String;
    .end local v19    # "status":Ljava/lang/String;
    :cond_9
    :goto_6
    goto :goto_8

    .line 144
    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 147
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8
    return-void
.end method
