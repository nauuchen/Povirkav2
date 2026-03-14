.class Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;
.super Ljava/lang/Object;
.source "MeasurementActivity.java"

# interfaces
.implements Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;


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

    .line 278
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageReceived(Lcom/poverka/httpFileClient/util/HttpFileClient$Type;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 9
    .param p1, "type"    # Lcom/poverka/httpFileClient/util/HttpFileClient$Type;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "stream"    # Ljava/io/InputStream;

    .line 281
    const-string v0, ".json"

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "Meas HTTP R"

    const/4 v4, 0x1

    if-nez p3, :cond_0

    .line 282
    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->ordinal()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    aput-object p2, v7, v4

    const-string v8, "type is %d, %s"

    invoke-static {v6, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v3, v6}, Lcom/poverka/httpFileClient/util/MyFileReader;->appendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_0
    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$700(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->UPDATE_RESULTS:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    if-ne v5, v6, :cond_4

    .line 285
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v0, v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$802(Lcom/poverka/httpFileClient/activity/MeasurementActivity;I)I

    .line 286
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v0, v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$402(Lcom/poverka/httpFileClient/activity/MeasurementActivity;I)I

    .line 287
    const/4 v0, -0x1

    .line 288
    .local v0, "fileNumber":I
    const-string v1, "counter_info"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    const/4 v0, 0x1

    goto :goto_0

    .line 290
    :cond_1
    const-string v1, "meast_1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 291
    const/4 v0, 0x2

    goto :goto_0

    .line 292
    :cond_2
    const-string v1, "meast_2"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 293
    const/4 v0, 0x3

    .line 295
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v1, v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1400(Lcom/poverka/httpFileClient/activity/MeasurementActivity;I)V

    .line 296
    .end local v0    # "fileNumber":I
    goto/16 :goto_7

    .line 297
    :cond_4
    const-string v5, "meast_"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->DOWNLOAD:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne p1, v5, :cond_7

    if-eqz p3, :cond_7

    .line 299
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {p3}, Lcom/poverka/httpFileClient/util/HttpFileClient;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 300
    .local v2, "json":Lorg/json/JSONObject;
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 301
    .local v1, "measNumb":I
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 302
    .local v0, "reitNumb":I
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v3}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getMeasurement(II)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v3

    .line 304
    .local v3, "measurement":Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    sget-object v4, Lcom/poverka/httpFileClient/util/MyJSON;->first_val:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getValStart()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 305
    sget-object v4, Lcom/poverka/httpFileClient/util/MyJSON;->last_val:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getValEnd()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 306
    sget-object v4, Lcom/poverka/httpFileClient/util/MyJSON;->calc_error:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getError()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 307
    sget-object v4, Lcom/poverka/httpFileClient/util/MyJSON;->result:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getResult()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 309
    sget-object v4, Lcom/poverka/httpFileClient/util/MyJSON;->duration:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getDuration()I

    move-result v4

    if-nez v4, :cond_5

    .line 310
    sget-object v4, Lcom/poverka/httpFileClient/util/MyJSON;->duration:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->setDuration(I)V

    .line 312
    :cond_5
    sget-object v4, Lcom/poverka/httpFileClient/util/MyJSON;->temper:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getWaterTemperature()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_6

    .line 313
    sget-object v4, Lcom/poverka/httpFileClient/util/MyJSON;->temper:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->setWaterTemperature(I)V

    .line 314
    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1600(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 315
    .local v4, "msg":Landroid/os/Message;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 316
    .local v5, "bundleAlert":Landroid/os/Bundle;
    const-string v6, "meas_number"

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getMeasurementNumber()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 317
    invoke-virtual {v4, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 318
    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1600(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->sendMessage(Landroid/os/Message;)Z

    .line 320
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "bundleAlert":Landroid/os/Bundle;
    :cond_6
    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1700(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/HttpFileClient;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Lcom/poverka/httpFileClient/util/HttpFileClient;->upload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "reitNumb":I
    .end local v1    # "measNumb":I
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "measurement":Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    goto :goto_2

    .line 321
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 323
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    goto/16 :goto_7

    .line 324
    :cond_7
    const-string v0, "photo_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->DOWNLOAD:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne p1, v0, :cond_a

    if-eqz p3, :cond_a

    .line 326
    :try_start_1
    const-string v0, "photo_(.*?).jpeg"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 327
    .local v0, "photo":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 328
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 329
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v3}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1800(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v3

    invoke-static {p3}, Lcom/poverka/httpFileClient/util/HttpFileClient;->inputStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object v5

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    invoke-virtual {v3, v5, v1}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->setPhoto([BI)V

    .line 330
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1600(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->sendEmptyMessage(I)Z

    .line 333
    :cond_8
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getAction()I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_9

    .line 334
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const/16 v3, 0x1f4

    invoke-static {v1, v3}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1902(Lcom/poverka/httpFileClient/activity/MeasurementActivity;I)I

    .line 335
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1600(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->sendEmptyMessage(I)Z

    .line 336
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$2000(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/MyModeQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/util/MyModeQueue;->endMode()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    .line 338
    .end local v0    # "photo":Ljava/util/regex/Pattern;
    .end local v2    # "m":Ljava/util/regex/Matcher;
    :catch_2
    move-exception v0

    .line 339
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "MeasurementActivity"

    const-string v2, "Error in HTTP receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$600(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)V

    .line 341
    .end local v0    # "e":Ljava/io/IOException;
    :cond_9
    :goto_3
    goto/16 :goto_7

    .line 342
    :cond_a
    const-string v0, "client.json"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->UPLOAD:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne p1, v0, :cond_b

    if-eqz p3, :cond_b

    .line 343
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "client up"

    invoke-static {v0, v3, v1}, Lcom/poverka/httpFileClient/util/MyFileReader;->appendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 346
    .local v0, "geoMetDate":Lorg/json/JSONObject;
    const-string v1, "temperature"

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getEnvironmentT()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 347
    const-string v1, "humidity"

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getEnvironmentH()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 348
    const-string v1, "temperature_in"

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getInnerTemperature()F

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-double v4, v2

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v4, v6

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 349
    const-string v1, "humidity_in"

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getInnerHumidity()F

    move-result v2

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 351
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1700(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/HttpFileClient;

    move-result-object v1

    const-string v2, "1/current/geo_met_date.json"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/poverka/httpFileClient/util/HttpFileClient;->upload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    .end local v0    # "geoMetDate":Lorg/json/JSONObject;
    goto :goto_4

    .line 352
    :catch_3
    move-exception v0

    .line 353
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 354
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_4
    goto/16 :goto_7

    .line 355
    :cond_b
    const-string v0, "geo_met_date.json"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->UPLOAD:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne p1, v0, :cond_c

    if-eqz p3, :cond_c

    .line 356
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "geo up"

    invoke-static {v0, v3, v1}, Lcom/poverka/httpFileClient/util/MyFileReader;->appendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1700(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/HttpFileClient;

    move-result-object v0

    const-string v1, "1/current"

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/util/HttpFileClient;->show(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 358
    :cond_c
    const-string v0, "current"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SHOW:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne p1, v0, :cond_e

    if-eqz p3, :cond_e

    .line 359
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "current shown"

    invoke-static {v0, v3, v1}, Lcom/poverka/httpFileClient/util/MyFileReader;->appendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :try_start_3
    invoke-static {p3}, Lcom/poverka/httpFileClient/util/HttpFileClient;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "files":Ljava/lang/String;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 365
    .local v1, "fileCount":I
    :try_start_4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 366
    .local v3, "systemJson":Lorg/json/JSONObject;
    const-string v5, "id"

    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v6

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 367
    const-string v5, "personal_account"

    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v6

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getPersonalAccount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 368
    const-string v5, "local"

    sget v6, Lcom/poverka/httpFileClient/activity/MainActivity;->MARKER:I

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 369
    const-string v5, "verif_number"

    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v6

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getPaymentAccount()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 370
    const-string v5, "verif_today"

    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v6

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getVerificationNumberToday()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 371
    const-string v5, "calibration_date"

    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v6

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getVerificationDateUnix()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 372
    const-string v5, "date"

    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v6

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getCurrentStationTime()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 373
    const-string v5, "test_name"

    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v6

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getTestName()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 374
    const-string v5, "multiplier"

    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v6

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getMultiplier()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 375
    const-string v5, "imp_liter"

    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v6

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getImpLiter()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 376
    const-string v5, "report"

    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$2100(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 377
    const-string v5, "service_type"

    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v6

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getServiceType()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 378
    const-string v5, "ver_soft"

    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v6

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getVerStation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 379
    const-string v5, "ver_android"

    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v6

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getVerAndroid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 380
    const-string v5, "file_count"

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 381
    const-string v5, "status_server"

    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v6

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->isOnline()I

    move-result v6

    if-ne v6, v4, :cond_d

    goto :goto_5

    :cond_d
    const/4 v2, 0x1

    :goto_5
    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 382
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1700(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/HttpFileClient;

    move-result-object v2

    const-string v4, "1/current/system.json"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/poverka/httpFileClient/util/HttpFileClient;->upload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 385
    .end local v3    # "systemJson":Lorg/json/JSONObject;
    goto :goto_6

    .line 383
    :catch_4
    move-exception v2

    .line 384
    .local v2, "e":Lorg/json/JSONException;
    :try_start_5
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_6

    .line 386
    .end local v0    # "files":Ljava/lang/String;
    .end local v1    # "fileCount":I
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_5
    move-exception v0

    .line 387
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 388
    .end local v0    # "e":Ljava/io/IOException;
    :goto_6
    goto :goto_7

    .line 389
    :cond_e
    const-string v0, "system.json"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->UPLOAD:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne p1, v0, :cond_f

    if-eqz p3, :cond_f

    .line 390
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const v1, 0x7f09006a

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 391
    .local v0, "buttonStart":Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const v4, 0x7f0f011e

    invoke-virtual {v2, v4}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 392
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "system up"

    invoke-static {v1, v3, v2}, Lcom/poverka/httpFileClient/util/MyFileReader;->appendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$2000(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/MyModeQueue;

    move-result-object v1

    sget-object v2, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->FINISH:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    invoke-virtual {v1, v2}, Lcom/poverka/httpFileClient/util/MyModeQueue;->add(Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;)V

    .line 397
    .end local v0    # "buttonStart":Landroid/widget/Button;
    :cond_f
    :goto_7
    return-void
.end method
