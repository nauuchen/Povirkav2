.class Lcom/poverka/httpFileClient/activity/StateActivity$2;
.super Ljava/lang/Object;
.source "StateActivity.java"

# interfaces
.implements Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;


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

    .line 205
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageReceived(Lcom/poverka/httpFileClient/util/HttpFileClient$Type;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 31
    .param p1, "type"    # Lcom/poverka/httpFileClient/util/HttpFileClient$Type;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "stream"    # Ljava/io/InputStream;

    .line 208
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, ":"

    const-string v5, "version"

    const-string v6, "flash/tests.json"

    const-string v7, "apk/download"

    const-string v8, "apk/last"

    iget-object v9, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v9}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1500(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 209
    .local v9, "msg":Landroid/os/Message;
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 211
    .local v11, "bundle":Landroid/os/Bundle;
    iget-object v12, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v12}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$200(Lcom/poverka/httpFileClient/activity/StateActivity;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->RESTORE_FILES:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    const-string v14, "photo_"

    const-string v15, "State HTTP"

    const-string v10, "StateActivity"

    move-object/from16 v18, v9

    .end local v9    # "msg":Landroid/os/Message;
    .local v18, "msg":Landroid/os/Message;
    const/4 v9, 0x1

    if-ne v12, v13, :cond_c

    const-string v12, "logs/upload"

    invoke-virtual {v3, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 212
    iget-object v4, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$302(Lcom/poverka/httpFileClient/activity/StateActivity;I)I

    .line 214
    :try_start_0
    invoke-static {}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1600()Lcom/poverka/httpFileClient/util/RestorationHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/util/RestorationHelper;->setCurrentFileRestored()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    move-object v4, v0

    .line 216
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/IndexOutOfBoundsException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    invoke-static {v5, v15, v6, v7}, Lcom/poverka/httpFileClient/util/MyFileReader;->appendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    .line 219
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_0
    const-string v4, "photo_(.*?).jpeg"

    const/16 v5, 0x20

    invoke-static {v4, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 220
    .local v4, "photo":Ljava/util/regex/Pattern;
    const-string v6, "meast_(.*?).json"

    invoke-static {v6, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 223
    .local v5, "meas":Ljava/util/regex/Pattern;
    :try_start_1
    invoke-virtual {v3, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_b

    if-eqz v6, :cond_3

    :try_start_2
    sget-object v6, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->DOWNLOAD:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne v2, v6, :cond_3

    if-eqz p3, :cond_3

    .line 224
    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 225
    .local v6, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 226
    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 227
    .local v7, "str":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v8, v8, -0x30

    .line 228
    .local v8, "measNumb":I
    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    add-int/lit8 v10, v10, -0x30

    .line 229
    .local v10, "reitNumb":I
    const/4 v12, 0x2

    invoke-virtual {v7, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    add-int/lit8 v12, v12, -0x30

    .line 231
    .local v12, "photoNumb":I
    if-nez v8, :cond_0

    if-nez v10, :cond_0

    if-ne v12, v9, :cond_0

    .line 232
    iget-object v9, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v9}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v9

    invoke-static/range {p3 .. p3}, Lcom/poverka/httpFileClient/util/HttpFileClient;->inputStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setTestPhoto([B)V

    goto :goto_1

    .line 234
    :cond_0
    iget-object v9, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v9}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v9

    invoke-virtual {v9, v8, v10}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getMeasurement(II)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v9

    .line 235
    .local v9, "mRes":Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    if-eqz v9, :cond_1

    .line 236
    invoke-static/range {p3 .. p3}, Lcom/poverka/httpFileClient/util/HttpFileClient;->inputStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object v13

    invoke-virtual {v9, v13, v12}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->setPhoto([BI)V

    goto :goto_1

    .line 238
    :cond_1
    iget-object v13, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-virtual {v13}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "meas is null"

    invoke-static {v13, v15, v14}, Lcom/poverka/httpFileClient/util/MyFileReader;->appendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .end local v7    # "str":Ljava/lang/String;
    .end local v8    # "measNumb":I
    .end local v9    # "mRes":Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    .end local v10    # "reitNumb":I
    .end local v12    # "photoNumb":I
    :goto_1
    goto :goto_2

    .line 242
    :cond_2
    const-string v7, "Photo pattern doesn\'t match"

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 244
    .end local v6    # "m":Ljava/util/regex/Matcher;
    :goto_2
    move-object/from16 v22, v4

    move-object/from16 v23, v5

    goto/16 :goto_8

    .line 308
    :catch_1
    move-exception v0

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object v4, v0

    goto/16 :goto_b

    :catch_2
    move-exception v0

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object v4, v0

    goto/16 :goto_b

    .line 244
    :cond_3
    :try_start_3
    const-string v6, "meast_"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_b

    if-eqz v6, :cond_7

    :try_start_4
    sget-object v6, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->DOWNLOAD:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne v2, v6, :cond_7

    if-eqz p3, :cond_7

    .line 245
    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 246
    .restart local v6    # "m":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 247
    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 248
    .local v8, "str":Ljava/lang/String;
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    add-int/lit8 v13, v13, -0x30

    .line 249
    .local v13, "measNumb":I
    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    add-int/lit8 v12, v12, -0x30

    .line 251
    .local v12, "reitNumb":I
    new-instance v14, Lorg/json/JSONObject;

    invoke-static/range {p3 .. p3}, Lcom/poverka/httpFileClient/util/HttpFileClient;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v14, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v7, v14

    .line 252
    .local v7, "json":Lorg/json/JSONObject;
    iget-object v14, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v14}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v14

    invoke-virtual {v14, v13, v12}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->createMeasurement(II)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v14

    .line 253
    .local v14, "mRes":Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    iget-object v9, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5

    move-object/from16 v22, v4

    const/4 v4, 0x4

    .end local v4    # "photo":Ljava/util/regex/Pattern;
    .local v22, "photo":Ljava/util/regex/Pattern;
    :try_start_5
    new-array v4, v4, [Lcom/poverka/httpFileClient/util/MyJSON;

    sget-object v16, Lcom/poverka/httpFileClient/util/MyJSON;->first_val:Lcom/poverka/httpFileClient/util/MyJSON;

    const/16 v19, 0x0

    aput-object v16, v4, v19

    sget-object v16, Lcom/poverka/httpFileClient/util/MyJSON;->last_val:Lcom/poverka/httpFileClient/util/MyJSON;

    const/16 v21, 0x1

    aput-object v16, v4, v21

    sget-object v16, Lcom/poverka/httpFileClient/util/MyJSON;->calc_error:Lcom/poverka/httpFileClient/util/MyJSON;

    const/16 v17, 0x2

    aput-object v16, v4, v17

    sget-object v16, Lcom/poverka/httpFileClient/util/MyJSON;->result:Lcom/poverka/httpFileClient/util/MyJSON;

    const/16 v20, 0x3

    aput-object v16, v4, v20

    invoke-static {v9, v7, v4}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1800(Lcom/poverka/httpFileClient/activity/StateActivity;Lorg/json/JSONObject;[Lcom/poverka/httpFileClient/util/MyJSON;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 254
    sget-object v4, Lcom/poverka/httpFileClient/util/MyJSON;->first_val:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v14, v4}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->setValStart(I)V

    .line 255
    sget-object v4, Lcom/poverka/httpFileClient/util/MyJSON;->last_val:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v14, v4}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->setValEnd(I)V

    .line 256
    invoke-virtual {v14}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->calculate()Z

    .line 258
    :cond_4
    iget-object v4, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    const/4 v9, 0x3

    new-array v9, v9, [Lcom/poverka/httpFileClient/util/MyJSON;

    sget-object v16, Lcom/poverka/httpFileClient/util/MyJSON;->average_con:Lcom/poverka/httpFileClient/util/MyJSON;

    const/16 v19, 0x0

    aput-object v16, v9, v19

    sget-object v16, Lcom/poverka/httpFileClient/util/MyJSON;->duration:Lcom/poverka/httpFileClient/util/MyJSON;

    const/16 v19, 0x1

    aput-object v16, v9, v19

    sget-object v16, Lcom/poverka/httpFileClient/util/MyJSON;->temper:Lcom/poverka/httpFileClient/util/MyJSON;

    const/16 v17, 0x2

    aput-object v16, v9, v17

    invoke-static {v4, v7, v9}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1800(Lcom/poverka/httpFileClient/activity/StateActivity;Lorg/json/JSONObject;[Lcom/poverka/httpFileClient/util/MyJSON;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 259
    sget-object v4, Lcom/poverka/httpFileClient/util/MyJSON;->average_con:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v14, v4}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->setAverageConsumption(I)V

    .line 260
    sget-object v4, Lcom/poverka/httpFileClient/util/MyJSON;->duration:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v14, v4}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->setDuration(I)V

    .line 261
    sget-object v4, Lcom/poverka/httpFileClient/util/MyJSON;->temper:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v14, v4}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->setWaterTemperature(I)V

    goto :goto_3

    .line 263
    :cond_5
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .end local v7    # "json":Lorg/json/JSONObject;
    .end local v8    # "str":Ljava/lang/String;
    .end local v12    # "reitNumb":I
    .end local v13    # "measNumb":I
    .end local v14    # "mRes":Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    :goto_3
    goto :goto_4

    .line 266
    .end local v22    # "photo":Ljava/util/regex/Pattern;
    .restart local v4    # "photo":Ljava/util/regex/Pattern;
    :cond_6
    move-object/from16 v22, v4

    .end local v4    # "photo":Ljava/util/regex/Pattern;
    .restart local v22    # "photo":Ljava/util/regex/Pattern;
    const-string v4, "Meas pattern doesn\'t match"

    invoke-static {v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    .line 268
    .end local v6    # "m":Ljava/util/regex/Matcher;
    :goto_4
    move-object/from16 v23, v5

    goto/16 :goto_8

    .line 308
    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    :goto_5
    move-object v4, v0

    move-object/from16 v23, v5

    goto/16 :goto_b

    .end local v22    # "photo":Ljava/util/regex/Pattern;
    .restart local v4    # "photo":Ljava/util/regex/Pattern;
    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    :goto_6
    move-object/from16 v22, v4

    move-object v4, v0

    move-object/from16 v23, v5

    .end local v4    # "photo":Ljava/util/regex/Pattern;
    .restart local v22    # "photo":Ljava/util/regex/Pattern;
    goto/16 :goto_b

    .line 244
    .end local v22    # "photo":Ljava/util/regex/Pattern;
    .restart local v4    # "photo":Ljava/util/regex/Pattern;
    :cond_7
    move-object/from16 v22, v4

    .line 268
    .end local v4    # "photo":Ljava/util/regex/Pattern;
    .restart local v22    # "photo":Ljava/util/regex/Pattern;
    :try_start_6
    const-string v4, "system.json"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v6, 0x5

    if-eqz v4, :cond_9

    sget-object v4, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->DOWNLOAD:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne v2, v4, :cond_9

    if-eqz p3, :cond_9

    .line 269
    new-instance v4, Lorg/json/JSONObject;

    invoke-static/range {p3 .. p3}, Lcom/poverka/httpFileClient/util/HttpFileClient;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 270
    .local v4, "json":Lorg/json/JSONObject;
    iget-object v7, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/poverka/httpFileClient/util/MyJSON;

    sget-object v9, Lcom/poverka/httpFileClient/util/MyJSON;->id:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v12, 0x0

    aput-object v9, v8, v12

    sget-object v9, Lcom/poverka/httpFileClient/util/MyJSON;->local:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v12, 0x1

    aput-object v9, v8, v12

    sget-object v9, Lcom/poverka/httpFileClient/util/MyJSON;->verif_number:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v12, 0x2

    aput-object v9, v8, v12

    sget-object v9, Lcom/poverka/httpFileClient/util/MyJSON;->verif_today:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v12, 0x3

    aput-object v9, v8, v12

    sget-object v9, Lcom/poverka/httpFileClient/util/MyJSON;->test_name:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v12, 0x4

    aput-object v9, v8, v12

    sget-object v9, Lcom/poverka/httpFileClient/util/MyJSON;->multiplier:Lcom/poverka/httpFileClient/util/MyJSON;

    aput-object v9, v8, v6

    const/4 v6, 0x6

    sget-object v9, Lcom/poverka/httpFileClient/util/MyJSON;->service_type:Lcom/poverka/httpFileClient/util/MyJSON;

    aput-object v9, v8, v6

    invoke-static {v7, v4, v8}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1800(Lcom/poverka/httpFileClient/activity/StateActivity;Lorg/json/JSONObject;[Lcom/poverka/httpFileClient/util/MyJSON;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 271
    const-string v23, "4.0"

    const-string v24, "2.5"

    const-string v25, "1.6"

    const-string v26, "1.0"

    const-string v27, "3.5"

    const-string v28, "2.5"

    const-string v29, "1.5"

    const-string v30, "1.0"

    filled-new-array/range {v23 .. v30}, [Ljava/lang/String;

    move-result-object v6

    .line 272
    .local v6, "char1Array":[Ljava/lang/String;
    const-string v23, "25.0"

    const-string v24, "40.0"

    const-string v25, "50.0"

    const-string v26, "63.0"

    const-string v27, "80.0"

    const-string v28, "100.0"

    const-string v29, "25.0"

    const-string v30, "50.0"

    filled-new-array/range {v23 .. v30}, [Ljava/lang/String;

    move-result-object v7

    .line 274
    .local v7, "char2Array":[Ljava/lang/String;
    sget-object v8, Lcom/poverka/httpFileClient/util/MyJSON;->id:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v8}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 275
    .local v8, "id":Ljava/lang/String;
    sget-object v9, Lcom/poverka/httpFileClient/util/MyJSON;->local:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v9}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 276
    .local v9, "local":I
    sget-object v10, Lcom/poverka/httpFileClient/util/MyJSON;->test_name:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v10}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 277
    .local v10, "testName":I
    sget-object v12, Lcom/poverka/httpFileClient/util/MyJSON;->multiplier:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v12}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 278
    .local v12, "multiplier":I
    sget-object v13, Lcom/poverka/httpFileClient/util/MyJSON;->service_type:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v13}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 279
    .local v13, "service_type":I
    sget-object v14, Lcom/poverka/httpFileClient/util/MyJSON;->verif_today:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v14}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 281
    .local v14, "todayVerifications":I
    move-object/from16 v16, v4

    .end local v4    # "json":Lorg/json/JSONObject;
    .local v16, "json":Lorg/json/JSONObject;
    iget-object v4, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setId(Ljava/lang/String;)V

    .line 282
    iget-object v4, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setLocal(I)V

    .line 283
    iget-object v4, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_9

    move-object/from16 v23, v5

    .end local v5    # "meas":Ljava/util/regex/Pattern;
    .local v23, "meas":Ljava/util/regex/Pattern;
    add-int/lit8 v5, v14, -0x1

    :try_start_7
    invoke-virtual {v4, v5}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setVerificationNumberToday(I)V

    .line 284
    iget-object v4, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v19, v8

    const/4 v8, 0x1

    .end local v8    # "id":Ljava/lang/String;
    .local v19, "id":Ljava/lang/String;
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x31

    aget-object v5, v6, v5

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v20, v6

    const/4 v6, 0x2

    .end local v6    # "char1Array":[Ljava/lang/String;
    .local v20, "char1Array":[Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x31

    aget-object v6, v7, v6

    invoke-virtual {v4, v5, v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setDeviceTypeInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v4, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v4

    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v4, v5, v10, v12}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->loadMeasurementSettings(Landroid/content/ContextWrapper;II)Z

    .line 286
    iget-object v4, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setServiceType(I)V

    .line 287
    .end local v7    # "char2Array":[Ljava/lang/String;
    .end local v9    # "local":I
    .end local v10    # "testName":I
    .end local v12    # "multiplier":I
    .end local v13    # "service_type":I
    .end local v14    # "todayVerifications":I
    .end local v19    # "id":Ljava/lang/String;
    .end local v20    # "char1Array":[Ljava/lang/String;
    goto/16 :goto_7

    .line 288
    .end local v16    # "json":Lorg/json/JSONObject;
    .end local v23    # "meas":Ljava/util/regex/Pattern;
    .restart local v4    # "json":Lorg/json/JSONObject;
    .restart local v5    # "meas":Ljava/util/regex/Pattern;
    :cond_8
    move-object/from16 v16, v4

    move-object/from16 v23, v5

    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v5    # "meas":Ljava/util/regex/Pattern;
    .restart local v16    # "json":Lorg/json/JSONObject;
    .restart local v23    # "meas":Ljava/util/regex/Pattern;
    const-string v4, "system.json problem"

    invoke-static {v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 268
    .end local v16    # "json":Lorg/json/JSONObject;
    .end local v23    # "meas":Ljava/util/regex/Pattern;
    .restart local v5    # "meas":Ljava/util/regex/Pattern;
    :cond_9
    move-object/from16 v23, v5

    .line 291
    .end local v5    # "meas":Ljava/util/regex/Pattern;
    .restart local v23    # "meas":Ljava/util/regex/Pattern;
    const-string v4, "counter_info.json"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    sget-object v4, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->DOWNLOAD:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne v2, v4, :cond_b

    if-eqz p3, :cond_b

    .line 292
    new-instance v4, Lorg/json/JSONObject;

    invoke-static/range {p3 .. p3}, Lcom/poverka/httpFileClient/util/HttpFileClient;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 293
    .restart local v4    # "json":Lorg/json/JSONObject;
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    new-array v6, v6, [Lcom/poverka/httpFileClient/util/MyJSON;

    sget-object v7, Lcom/poverka/httpFileClient/util/MyJSON;->counter_number:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Lcom/poverka/httpFileClient/util/MyJSON;->start_volume:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    sget-object v7, Lcom/poverka/httpFileClient/util/MyJSON;->production_year:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    sget-object v7, Lcom/poverka/httpFileClient/util/MyJSON;->type_id:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v8, 0x3

    aput-object v7, v6, v8

    sget-object v7, Lcom/poverka/httpFileClient/util/MyJSON;->water_temperature:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v8, 0x4

    aput-object v7, v6, v8

    invoke-static {v5, v4, v6}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1800(Lcom/poverka/httpFileClient/activity/StateActivity;Lorg/json/JSONObject;[Lcom/poverka/httpFileClient/util/MyJSON;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 295
    sget-object v5, Lcom/poverka/httpFileClient/util/MyJSON;->counter_number:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 296
    .local v5, "counterNumber":Ljava/lang/String;
    sget-object v6, Lcom/poverka/httpFileClient/util/MyJSON;->start_volume:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 297
    .local v6, "initialVolume":I
    sget-object v7, Lcom/poverka/httpFileClient/util/MyJSON;->production_year:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v7}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 298
    .local v7, "productionYear":I
    sget-object v8, Lcom/poverka/httpFileClient/util/MyJSON;->type_id:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v8}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 299
    .local v8, "typeId":I
    sget-object v9, Lcom/poverka/httpFileClient/util/MyJSON;->water_temperature:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v9}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 301
    .local v9, "waterTemperature":I
    iget-object v10, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v10}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v10

    invoke-virtual {v10, v5, v6, v7, v8}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setCounterInfo(Ljava/lang/String;III)V

    .line 302
    iget-object v10, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v10}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v10

    int-to-float v12, v9

    const/high16 v13, 0x447a0000    # 1000.0f

    div-float/2addr v12, v13

    invoke-virtual {v10, v12}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setWaterTemperature(F)V

    .line 303
    .end local v5    # "counterNumber":Ljava/lang/String;
    .end local v6    # "initialVolume":I
    .end local v7    # "productionYear":I
    .end local v8    # "typeId":I
    .end local v9    # "waterTemperature":I
    goto :goto_8

    .line 304
    :cond_a
    const-string v5, "counter_info.json problem"

    invoke-static {v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 291
    .end local v4    # "json":Lorg/json/JSONObject;
    :cond_b
    :goto_7
    nop

    .line 307
    :goto_8
    iget-object v4, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1900(Lcom/poverka/httpFileClient/activity/StateActivity;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7

    .line 311
    goto :goto_c

    .line 308
    :catch_7
    move-exception v0

    move-object v4, v0

    goto :goto_b

    :catch_8
    move-exception v0

    move-object v4, v0

    goto :goto_b

    .end local v23    # "meas":Ljava/util/regex/Pattern;
    .local v5, "meas":Ljava/util/regex/Pattern;
    :catch_9
    move-exception v0

    goto :goto_9

    :catch_a
    move-exception v0

    :goto_9
    move-object/from16 v23, v5

    move-object v4, v0

    .end local v5    # "meas":Ljava/util/regex/Pattern;
    .restart local v23    # "meas":Ljava/util/regex/Pattern;
    goto :goto_b

    .end local v22    # "photo":Ljava/util/regex/Pattern;
    .end local v23    # "meas":Ljava/util/regex/Pattern;
    .local v4, "photo":Ljava/util/regex/Pattern;
    .restart local v5    # "meas":Ljava/util/regex/Pattern;
    :catch_b
    move-exception v0

    goto :goto_a

    :catch_c
    move-exception v0

    :goto_a
    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object v4, v0

    .line 309
    .end local v5    # "meas":Ljava/util/regex/Pattern;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v22    # "photo":Ljava/util/regex/Pattern;
    .restart local v23    # "meas":Ljava/util/regex/Pattern;
    :goto_b
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    invoke-static {v5, v15, v6, v7}, Lcom/poverka/httpFileClient/util/MyFileReader;->appendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    .line 310
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 312
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v22    # "photo":Ljava/util/regex/Pattern;
    .end local v23    # "meas":Ljava/util/regex/Pattern;
    :goto_c
    move-object/from16 v9, v18

    goto/16 :goto_16

    .line 314
    :cond_c
    :try_start_8
    invoke-virtual {v3, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1b
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_19

    if-eqz v9, :cond_d

    :try_start_9
    sget-object v9, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->DOWNLOAD:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne v2, v9, :cond_d

    if-eqz p3, :cond_d

    .line 315
    iget-object v4, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v4

    invoke-static/range {p3 .. p3}, Lcom/poverka/httpFileClient/util/HttpFileClient;->inputStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setTestPhoto([B)V

    .line 316
    iget-object v4, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1500(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->sendEmptyMessage(I)Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_d

    move-object/from16 v4, v18

    goto/16 :goto_12

    .line 422
    :catch_d
    move-exception v0

    goto :goto_d

    :catch_e
    move-exception v0

    goto :goto_d

    :catch_f
    move-exception v0

    :goto_d
    move-object v4, v0

    move-object/from16 v9, v18

    goto/16 :goto_15

    .line 317
    :cond_d
    :try_start_a
    const-string v9, "flash_"

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1b
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_19

    if-eqz v9, :cond_12

    :try_start_b
    sget-object v9, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->DOWNLOAD:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne v2, v9, :cond_12

    if-eqz p3, :cond_12

    .line 318
    new-instance v4, Lorg/json/JSONObject;

    invoke-static/range {p3 .. p3}, Lcom/poverka/httpFileClient/util/HttpFileClient;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 319
    .local v4, "json":Lorg/json/JSONObject;
    const-string v5, "flash_a"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_f
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_d

    const-string v6, "answer JSON object IS NULL!"

    if-eqz v5, :cond_f

    .line 320
    :try_start_c
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    const/4 v7, 0x2

    new-array v7, v7, [Lcom/poverka/httpFileClient/util/MyJSON;

    sget-object v8, Lcom/poverka/httpFileClient/util/MyJSON;->imp_liter:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    sget-object v8, Lcom/poverka/httpFileClient/util/MyJSON;->station:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {v5, v4, v7}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1800(Lcom/poverka/httpFileClient/activity/StateActivity;Lorg/json/JSONObject;[Lcom/poverka/httpFileClient/util/MyJSON;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 321
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$100(Ljava/lang/String;)V

    .line 322
    sget-object v5, Lcom/poverka/httpFileClient/util/MyJSON;->imp_liter:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 323
    .local v5, "impulsesPerLiter":I
    sget-object v6, Lcom/poverka/httpFileClient/util/MyJSON;->station:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 324
    .local v6, "stationNumber":I
    iget-object v7, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v7}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setFlashData(II)V

    .line 326
    iget-object v7, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v7}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$2000(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/util/HttpFileClient;

    move-result-object v7

    const-string v8, "1/flash/flash_s.json"

    invoke-virtual {v7, v8}, Lcom/poverka/httpFileClient/util/HttpFileClient;->download(Ljava/lang/String;)V

    .line 327
    .end local v5    # "impulsesPerLiter":I
    .end local v6    # "stationNumber":I
    goto/16 :goto_e

    .line 329
    :cond_e
    invoke-static {v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 331
    :cond_f
    const-string v5, "flash_s"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 332
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/poverka/httpFileClient/util/MyJSON;

    sget-object v8, Lcom/poverka/httpFileClient/util/MyJSON;->verif_date:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v5, v4, v7}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1800(Lcom/poverka/httpFileClient/activity/StateActivity;Lorg/json/JSONObject;[Lcom/poverka/httpFileClient/util/MyJSON;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 333
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$100(Ljava/lang/String;)V

    .line 334
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v5

    sget-object v6, Lcom/poverka/httpFileClient/util/MyJSON;->verif_date:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setVerificationDate(I)V

    .line 335
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v5

    sget-object v6, Lcom/poverka/httpFileClient/util/MyJSON;->prod_date:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setProductionDate(I)V

    .line 336
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v5

    sget-object v6, Lcom/poverka/httpFileClient/util/MyJSON;->due_date:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const v7, 0x15180

    div-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setDueDate(I)V

    .line 337
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v5

    sget-object v6, Lcom/poverka/httpFileClient/util/MyJSON;->online:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setOnline(I)V

    .line 338
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$2100(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/util/MyModeQueue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/util/MyModeQueue;->endMode()V

    goto :goto_e

    .line 341
    :cond_10
    invoke-static {v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_f
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_c} :catch_d

    .line 344
    .end local v4    # "json":Lorg/json/JSONObject;
    :cond_11
    :goto_e
    move-object/from16 v4, v18

    goto/16 :goto_12

    :cond_12
    :try_start_d
    const-string v9, "current"

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1b
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_d} :catch_19

    if-eqz v9, :cond_13

    :try_start_e
    sget-object v9, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SHOW:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne v2, v9, :cond_13

    if-eqz p3, :cond_13

    .line 345
    iget-object v4, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static/range {p3 .. p3}, Lcom/poverka/httpFileClient/util/HttpFileClient;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$2200(Lcom/poverka/httpFileClient/activity/StateActivity;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_f
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_e} :catch_d

    move-object/from16 v4, v18

    goto/16 :goto_12

    .line 346
    :cond_13
    :try_start_f
    const-string v9, "stations/state"

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1b
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_f} :catch_19

    if-eqz v9, :cond_15

    :try_start_10
    sget-object v9, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne v2, v9, :cond_15

    if-eqz p3, :cond_15

    .line 347
    invoke-static/range {p3 .. p3}, Lcom/poverka/httpFileClient/util/HttpFileClient;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 348
    .local v4, "serverString":Ljava/lang/String;
    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 350
    .local v5, "json":Lorg/json/JSONObject;
    const-string v6, "disableUpdate"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_14

    .line 351
    const-string v6, "Update is ALLOWED"

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$100(Ljava/lang/String;)V

    .line 352
    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$2300(Lcom/poverka/httpFileClient/activity/StateActivity;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_10} :catch_d

    .line 354
    .end local v4    # "serverString":Ljava/lang/String;
    .end local v5    # "json":Lorg/json/JSONObject;
    :cond_14
    move-object/from16 v4, v18

    goto/16 :goto_12

    :cond_15
    :try_start_11
    const-string v9, "firmware-version"

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1b
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_11} :catch_19

    const-string v12, "\u041d\u043e\u043c\u0435\u0440 \u0442\u0435\u043a\u0443\u0449\u0435\u0439 \u0432\u0435\u0440\u0441\u0438\u0438: "

    if-eqz v9, :cond_17

    :try_start_12
    sget-object v9, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne v2, v9, :cond_17

    if-eqz p3, :cond_17

    .line 355
    invoke-static/range {p3 .. p3}, Lcom/poverka/httpFileClient/util/HttpFileClient;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 356
    .local v4, "firmwareString":Ljava/lang/String;
    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$100(Ljava/lang/String;)V

    .line 358
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v6

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getVerStation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$100(Ljava/lang/String;)V

    .line 360
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v5

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getVerStation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 361
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1500(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_f
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_12} :catch_d

    move-object v9, v5

    .line 362
    .end local v18    # "msg":Landroid/os/Message;
    .local v9, "msg":Landroid/os/Message;
    :try_start_13
    const-string v5, "cur_firmware_version"

    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v6

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getVerStation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v5, "new_firmware_version"

    invoke-virtual {v11, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-virtual {v9, v11}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 365
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1500(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_15
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_13} :catch_13

    goto :goto_f

    .line 367
    .end local v9    # "msg":Landroid/os/Message;
    .restart local v18    # "msg":Landroid/os/Message;
    :cond_16
    :try_start_14
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$2400(Lcom/poverka/httpFileClient/activity/StateActivity;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_f
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_14} :catch_d

    move-object/from16 v9, v18

    .line 369
    .end local v4    # "firmwareString":Ljava/lang/String;
    .end local v18    # "msg":Landroid/os/Message;
    .restart local v9    # "msg":Landroid/os/Message;
    :goto_f
    goto/16 :goto_13

    .end local v9    # "msg":Landroid/os/Message;
    .restart local v18    # "msg":Landroid/os/Message;
    :cond_17
    :try_start_15
    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_1b
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_15} :catch_19

    if-eqz v9, :cond_1a

    :try_start_16
    sget-object v9, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne v2, v9, :cond_1a

    if-eqz p3, :cond_1a

    .line 370
    invoke-static/range {p3 .. p3}, Lcom/poverka/httpFileClient/util/HttpFileClient;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 371
    .local v6, "apkString":Ljava/lang/String;
    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$100(Ljava/lang/String;)V

    .line 373
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 374
    .local v7, "apkInfo":Lorg/json/JSONObject;
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 375
    .local v8, "versionCodeNew":I
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    .line 377
    .local v4, "versionNameNew":Ljava/lang/String;
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v9, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-virtual {v9}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x0

    invoke-virtual {v5, v9, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 378
    .local v5, "pInfo":Landroid/content/pm/PackageInfo;
    iget v9, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 379
    .local v9, "versionCodeCur":I
    iget-object v13, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 381
    .local v13, "versionNameCur":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$100(Ljava/lang/String;)V

    .line 382
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u041a\u043e\u0434 \u0442\u0435\u043a\u0443\u0449\u0435\u0439 \u0432\u0435\u0440\u0441\u0438\u0438: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$100(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_f
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_16} :catch_d

    .line 384
    const-string v12, "apk_info"

    const-string v14, "cur_apk"

    move-object/from16 v16, v5

    .end local v5    # "pInfo":Landroid/content/pm/PackageInfo;
    .local v16, "pInfo":Landroid/content/pm/PackageInfo;
    if-le v8, v9, :cond_18

    .line 385
    :try_start_17
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1500(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    move-result-object v5

    move-object/from16 v19, v7

    const/16 v7, 0x9

    .end local v7    # "apkInfo":Lorg/json/JSONObject;
    .local v19, "apkInfo":Lorg/json/JSONObject;
    invoke-virtual {v5, v7}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_f
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_17} :catch_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_17} :catch_d

    .line 386
    .end local v18    # "msg":Landroid/os/Message;
    .local v5, "msg":Landroid/os/Message;
    :try_start_18
    invoke-virtual {v11, v14, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-virtual {v11, v12, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-virtual {v5, v11}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 389
    iget-object v7, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v7}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1500(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_12
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_18} :catch_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_18} :catch_10

    move-object v9, v5

    goto :goto_11

    .line 422
    .end local v4    # "versionNameNew":Ljava/lang/String;
    .end local v6    # "apkString":Ljava/lang/String;
    .end local v8    # "versionCodeNew":I
    .end local v9    # "versionCodeCur":I
    .end local v13    # "versionNameCur":Ljava/lang/String;
    .end local v16    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v19    # "apkInfo":Lorg/json/JSONObject;
    :catch_10
    move-exception v0

    goto :goto_10

    :catch_11
    move-exception v0

    goto :goto_10

    :catch_12
    move-exception v0

    :goto_10
    move-object v4, v0

    move-object v9, v5

    goto/16 :goto_15

    .line 390
    .end local v5    # "msg":Landroid/os/Message;
    .restart local v4    # "versionNameNew":Ljava/lang/String;
    .restart local v6    # "apkString":Ljava/lang/String;
    .restart local v7    # "apkInfo":Lorg/json/JSONObject;
    .restart local v8    # "versionCodeNew":I
    .restart local v9    # "versionCodeCur":I
    .restart local v13    # "versionNameCur":Ljava/lang/String;
    .restart local v16    # "pInfo":Landroid/content/pm/PackageInfo;
    .restart local v18    # "msg":Landroid/os/Message;
    :cond_18
    move-object/from16 v19, v7

    .end local v7    # "apkInfo":Lorg/json/JSONObject;
    .restart local v19    # "apkInfo":Lorg/json/JSONObject;
    if-ne v8, v9, :cond_19

    :try_start_19
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 391
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1500(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    move-result-object v5

    const/16 v7, 0x9

    invoke-virtual {v5, v7}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_f
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_19} :catch_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_19} :catch_d

    .line 392
    .end local v18    # "msg":Landroid/os/Message;
    .restart local v5    # "msg":Landroid/os/Message;
    :try_start_1a
    invoke-virtual {v11, v14, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-virtual {v11, v12, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-virtual {v5, v11}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 395
    iget-object v7, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v7}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1500(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_12
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_1a} :catch_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a .. :try_end_1a} :catch_10

    move-object v9, v5

    goto :goto_11

    .line 397
    .end local v4    # "versionNameNew":Ljava/lang/String;
    .end local v5    # "msg":Landroid/os/Message;
    .end local v6    # "apkString":Ljava/lang/String;
    .end local v8    # "versionCodeNew":I
    .end local v9    # "versionCodeCur":I
    .end local v13    # "versionNameCur":Ljava/lang/String;
    .end local v16    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v19    # "apkInfo":Lorg/json/JSONObject;
    .restart local v18    # "msg":Landroid/os/Message;
    :cond_19
    move-object/from16 v9, v18

    .end local v18    # "msg":Landroid/os/Message;
    .local v9, "msg":Landroid/os/Message;
    :goto_11
    goto/16 :goto_13

    .end local v9    # "msg":Landroid/os/Message;
    .restart local v18    # "msg":Landroid/os/Message;
    :cond_1a
    :try_start_1b
    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_1b
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_1b} :catch_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b .. :try_end_1b} :catch_19

    if-eqz v4, :cond_1b

    :try_start_1c
    sget-object v4, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne v2, v4, :cond_1b

    if-eqz p3, :cond_1b

    .line 398
    invoke-static/range {p3 .. p3}, Lcom/poverka/httpFileClient/util/HttpFileClient;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 399
    .local v4, "progressString":Ljava/lang/String;
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1500(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_f
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_1c} :catch_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c .. :try_end_1c} :catch_d

    move-object v9, v5

    .line 400
    .end local v18    # "msg":Landroid/os/Message;
    .restart local v9    # "msg":Landroid/os/Message;
    :try_start_1d
    const-string v5, "progress"

    invoke-virtual {v11, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-virtual {v9, v11}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 402
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1500(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_15
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_1d} :catch_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1d .. :try_end_1d} :catch_13

    .line 403
    nop

    .end local v4    # "progressString":Ljava/lang/String;
    goto/16 :goto_13

    .line 422
    :catch_13
    move-exception v0

    move-object v4, v0

    goto/16 :goto_15

    :catch_14
    move-exception v0

    move-object v4, v0

    goto/16 :goto_15

    :catch_15
    move-exception v0

    move-object v4, v0

    goto/16 :goto_15

    .line 403
    .end local v9    # "msg":Landroid/os/Message;
    .restart local v18    # "msg":Landroid/os/Message;
    :cond_1b
    :try_start_1e
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_1b
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_1e} :catch_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e .. :try_end_1e} :catch_19

    const-string v5, "alert"

    if-eqz v4, :cond_1c

    :try_start_1f
    sget-object v4, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->UPLOAD:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne v2, v4, :cond_1c

    if-eqz p3, :cond_1c

    .line 404
    iget-object v4, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$2100(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/util/MyModeQueue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/util/MyModeQueue;->endMode()V

    .line 405
    iget-object v4, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    const v6, 0x7f0f019a

    invoke-virtual {v4, v6}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_1b
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_1f} :catch_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f .. :try_end_1f} :catch_19

    .line 406
    move-object/from16 v4, v18

    .end local v18    # "msg":Landroid/os/Message;
    .local v4, "msg":Landroid/os/Message;
    :try_start_20
    invoke-virtual {v4, v11}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 407
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1500(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_12

    .line 403
    .end local v4    # "msg":Landroid/os/Message;
    .restart local v18    # "msg":Landroid/os/Message;
    :cond_1c
    move-object/from16 v4, v18

    .line 408
    .end local v18    # "msg":Landroid/os/Message;
    .restart local v4    # "msg":Landroid/os/Message;
    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1d

    sget-object v8, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne v2, v8, :cond_1d

    if-nez p3, :cond_1d

    .line 409
    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    const v7, 0x7f0f0070

    invoke-virtual {v6, v7}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-virtual {v4, v11}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 411
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1500(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_12

    .line 412
    :cond_1d
    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1e

    sget-object v7, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne v2, v7, :cond_1e

    if-nez p3, :cond_1e

    .line 413
    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    const v7, 0x7f0f0071

    invoke-virtual {v6, v7}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-virtual {v4, v11}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 415
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1500(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_12

    .line 416
    :cond_1e
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1f

    sget-object v6, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->UPLOAD:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne v2, v6, :cond_1f

    if-nez p3, :cond_1f

    .line 417
    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$2100(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/util/MyModeQueue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/util/MyModeQueue;->endMode()V

    .line 418
    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    const v7, 0x7f0f0074

    invoke-virtual {v6, v7}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-virtual {v4, v11}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 420
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1500(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_18
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_20} :catch_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20 .. :try_end_20} :catch_16

    .line 426
    .end local v4    # "msg":Landroid/os/Message;
    .restart local v18    # "msg":Landroid/os/Message;
    :cond_1f
    :goto_12
    move-object v9, v4

    .end local v18    # "msg":Landroid/os/Message;
    .restart local v9    # "msg":Landroid/os/Message;
    :goto_13
    goto :goto_16

    .line 422
    .end local v9    # "msg":Landroid/os/Message;
    .restart local v4    # "msg":Landroid/os/Message;
    :catch_16
    move-exception v0

    move-object v9, v4

    move-object v4, v0

    goto :goto_15

    :catch_17
    move-exception v0

    move-object v9, v4

    move-object v4, v0

    goto :goto_15

    :catch_18
    move-exception v0

    move-object v9, v4

    move-object v4, v0

    goto :goto_15

    .end local v4    # "msg":Landroid/os/Message;
    .restart local v18    # "msg":Landroid/os/Message;
    :catch_19
    move-exception v0

    goto :goto_14

    :catch_1a
    move-exception v0

    goto :goto_14

    :catch_1b
    move-exception v0

    :goto_14
    move-object/from16 v4, v18

    move-object v9, v4

    move-object v4, v0

    .line 423
    .end local v18    # "msg":Landroid/os/Message;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v9    # "msg":Landroid/os/Message;
    :goto_15
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    invoke-static {v5, v15, v6, v7}, Lcom/poverka/httpFileClient/util/MyFileReader;->appendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    .line 424
    const-string v5, "Error in HTTP receiver"

    invoke-static {v10, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 425
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/StateActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1400(Lcom/poverka/httpFileClient/activity/StateActivity;)V

    .line 428
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_16
    return-void
.end method
