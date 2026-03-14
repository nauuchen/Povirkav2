.class public Lcom/poverka/httpFileClient/activity/TaskViewerActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "TaskViewerActivity.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;,
        Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyHandler;
    }
.end annotation


# static fields
.field private static final APARTMENTS:I = 0x2

.field private static final COUNTERS:I = 0x3

.field private static final DAYS:I = 0x1

.field private static final NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TaskViewerActivity"


# instance fields
.field private currentList:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;

.field public mHttpReceived:Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;

.field private myHandler:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyHandler;

.field private photoType:I

.field private writeLog:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 336
    new-instance v0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$2;

    invoke-direct {v0, p0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$2;-><init>(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;)V

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->mHttpReceived:Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;

    return-void
.end method

.method static synthetic access$100(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;)Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    .line 59
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->currentList:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;

    return-object v0
.end method

.method static synthetic access$200(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    .line 59
    iget v0, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->photoType:I

    return v0
.end method

.method static synthetic access$300(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    .line 59
    iget v0, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->writeLog:I

    return v0
.end method

.method static synthetic access$400(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/TaskViewerActivity;
    .param p1, "x1"    # Landroid/content/Context;

    .line 59
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->checkMobileDataEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/TaskViewerActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->cancelPribor(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/TaskViewerActivity;
    .param p1, "x1"    # I

    .line 59
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->updateList(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;)Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    .line 59
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->myHandler:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;ILorg/json/JSONArray;)Lcom/poverka/httpFileClient/containers/Task;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/TaskViewerActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->takeTaskById(ILorg/json/JSONArray;)Lcom/poverka/httpFileClient/containers/Task;

    move-result-object v0

    return-object v0
.end method

.method private cancelPribor(ILjava/lang/String;)V
    .locals 20
    .param p1, "id"    # I
    .param p2, "comment"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    .line 578
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    const-string v0, "station_head1"

    .line 579
    .local v0, "user":Ljava/lang/String;
    const-string v6, "I8X_V..oe%OX"

    .line 580
    .local v6, "password":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 581
    .local v7, "auth":Ljava/lang/String;
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-static {v8, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v8

    .line 582
    .local v8, "encodedAuth":[B
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Basic "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 584
    .local v9, "authHeaderValue":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    .line 586
    .local v10, "date":Ljava/util/Date;
    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v12, "cancelpribor?protocolId=%d"

    new-array v13, v5, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v4

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 587
    .local v11, "path":Ljava/lang/String;
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 588
    .local v12, "dismissJSON":Lorg/json/JSONObject;
    const-string v13, "ID"

    invoke-virtual {v12, v13, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 589
    const-string v13, "COMMENT"

    invoke-virtual {v12, v13, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 590
    const-string v13, "DATETIME"

    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v15, "%tFT%<tTZ"

    new-array v4, v5, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v10, v4, v16

    invoke-static {v14, v15, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v13, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 591
    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 596
    .local v4, "data":Ljava/lang/String;
    new-instance v13, Lcom/poverka/httpFileClient/util/HttpFileClient;

    iget-object v14, v1, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->mHttpReceived:Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;

    invoke-direct {v13, v14}, Lcom/poverka/httpFileClient/util/HttpFileClient;-><init>(Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;)V

    .line 597
    .local v13, "mHttpFileClient":Lcom/poverka/httpFileClient/util/HttpFileClient;
    invoke-virtual {v13, v11, v4, v9}, Lcom/poverka/httpFileClient/util/HttpFileClient;->uploadServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    new-instance v14, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getFilesDir()Ljava/io/File;

    move-result-object v15

    const-string v5, "localTasks.json"

    invoke-direct {v14, v15, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, v14

    .line 600
    .local v5, "localTasks":Ljava/io/File;
    new-instance v14, Lorg/json/JSONArray;

    invoke-virtual/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getFilesDir()Ljava/io/File;

    move-result-object v15

    move-object/from16 v17, v0

    .end local v0    # "user":Ljava/lang/String;
    .local v17, "user":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object v0, v14

    .line 602
    .local v0, "localTasksJSON":Lorg/json/JSONArray;
    invoke-direct {v1, v2, v0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->takeTaskById(ILorg/json/JSONArray;)Lcom/poverka/httpFileClient/containers/Task;

    move-result-object v14

    .line 603
    .local v14, "task":Lcom/poverka/httpFileClient/containers/Task;
    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "%1$td.%1$tm.%1$tY"

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    const/4 v4, 0x1

    .end local v4    # "data":Ljava/lang/String;
    .end local v6    # "password":Ljava/lang/String;
    .local v18, "data":Ljava/lang/String;
    .local v19, "password":Ljava/lang/String;
    new-array v6, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v10, v6, v4

    invoke-static {v15, v2, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2, v3}, Lcom/poverka/httpFileClient/containers/Task;->setDismiss(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    invoke-virtual {v14}, Lcom/poverka/httpFileClient/containers/Task;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 605
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/poverka/httpFileClient/util/MyFileReader;->writeInternalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    .end local v0    # "localTasksJSON":Lorg/json/JSONArray;
    .end local v5    # "localTasks":Ljava/io/File;
    .end local v7    # "auth":Ljava/lang/String;
    .end local v8    # "encodedAuth":[B
    .end local v9    # "authHeaderValue":Ljava/lang/String;
    .end local v10    # "date":Ljava/util/Date;
    .end local v11    # "path":Ljava/lang/String;
    .end local v12    # "dismissJSON":Lorg/json/JSONObject;
    .end local v13    # "mHttpFileClient":Lcom/poverka/httpFileClient/util/HttpFileClient;
    .end local v14    # "task":Lcom/poverka/httpFileClient/containers/Task;
    .end local v17    # "user":Ljava/lang/String;
    .end local v18    # "data":Ljava/lang/String;
    .end local v19    # "password":Ljava/lang/String;
    goto :goto_0

    .line 606
    :catch_0
    move-exception v0

    .line 607
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const v4, 0x7f0f0065

    invoke-virtual {v1, v4}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v2, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 609
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method private checkMobileDataEnabled(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 639
    const/4 v0, 0x0

    .line 640
    .local v0, "mobileDataEnabled":Z
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 642
    .local v1, "cm":Landroid/net/ConnectivityManager;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 643
    .local v2, "cmClass":Ljava/lang/Class;
    const-string v3, "getMobileDataEnabled"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 644
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 645
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    .line 648
    .end local v2    # "cmClass":Ljava/lang/Class;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 646
    :catch_0
    move-exception v2

    .line 647
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 649
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method private initListView()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/poverka/httpFileClient/containers/Task;",
            ">;"
        }
    .end annotation

    .line 445
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "localTasks.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 446
    .local v0, "localTasks":Ljava/io/File;
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/poverka/httpFileClient/containers/Task;->jsonStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 447
    .end local v0    # "localTasks":Ljava/io/File;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 448
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 449
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method private takeTaskById(ILorg/json/JSONArray;)Lcom/poverka/httpFileClient/containers/Task;
    .locals 3
    .param p1, "id"    # I
    .param p2, "localTasksJSON"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 628
    const/4 v0, 0x0

    .local v0, "localInd":I
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 629
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "ID"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 630
    new-instance v1, Lcom/poverka/httpFileClient/containers/Task;

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/poverka/httpFileClient/containers/Task;-><init>(Lorg/json/JSONObject;)V

    .line 631
    .local v1, "task":Lcom/poverka/httpFileClient/containers/Task;
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    .line 632
    return-object v1

    .line 628
    .end local v1    # "task":Lcom/poverka/httpFileClient/containers/Task;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 635
    .end local v0    # "localInd":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private updateList(I)V
    .locals 18
    .param p1, "list"    # I

    .line 612
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->currentList:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->getDate()Ljava/lang/String;

    move-result-object v1

    .line 613
    .local v1, "date":Ljava/lang/String;
    iget-object v2, v0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->currentList:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->getCityId()I

    move-result v11

    .line 614
    .local v11, "cityId":I
    iget-object v2, v0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->currentList:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->getStreetId()I

    move-result v12

    .line 615
    .local v12, "streetId":I
    iget-object v2, v0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->currentList:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->getBuilding()I

    move-result v13

    .line 616
    .local v13, "building":I
    iget-object v2, v0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->currentList:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->getBuildingB()Ljava/lang/String;

    move-result-object v14

    .line 617
    .local v14, "buildingB":Ljava/lang/String;
    iget-object v2, v0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->currentList:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->getBuildingK()Ljava/lang/String;

    move-result-object v15

    .line 618
    .local v15, "buildingK":Ljava/lang/String;
    iget-object v2, v0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->currentList:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->getApartment()I

    move-result v16

    .line 619
    .local v16, "apartment":I
    iget-object v2, v0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->currentList:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->getApartmentB()Ljava/lang/String;

    move-result-object v17

    .line 621
    .local v17, "apartmentB":Ljava/lang/String;
    new-instance v2, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;

    invoke-direct/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->initListView()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;-><init>(Ljava/util/List;)V

    iput-object v2, v0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->currentList:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;

    .line 622
    move-object v3, v1

    move v4, v11

    move v5, v12

    move v6, v13

    move-object v7, v14

    move-object v8, v15

    move/from16 v9, v16

    move-object/from16 v10, v17

    invoke-virtual/range {v2 .. v10}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->setData(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 623
    iget-object v2, v0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->currentList:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;

    invoke-virtual {v2, v0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->addObserver(Ljava/util/Observer;)V

    .line 624
    iget-object v2, v0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->currentList:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->setCurrentList(I)V

    .line 625
    return-void
.end method


# virtual methods
.method public CleanGreyClicked(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .line 454
    const v0, 0x7f09004b

    invoke-virtual {p0, v0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 455
    .local v0, "buttonClose":Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f018a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f0f0059

    const/4 v3, 0x0

    const v4, 0x7f0f001e

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    .line 456
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .local v1, "datesStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 458
    .local v6, "dates":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->currentList:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;

    invoke-virtual {v7}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->getTasksByDay()Ljava/util/List;

    move-result-object v7

    .line 459
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Lcom/poverka/httpFileClient/containers/Day;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/poverka/httpFileClient/containers/Day;

    .line 460
    .local v9, "d":Lcom/poverka/httpFileClient/containers/Day;
    invoke-virtual {v9}, Lcom/poverka/httpFileClient/containers/Day;->getNewNumber()I

    move-result v10

    if-nez v10, :cond_0

    .line 461
    invoke-virtual {v9}, Lcom/poverka/httpFileClient/containers/Day;->getDate()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    invoke-virtual {v9}, Lcom/poverka/httpFileClient/containers/Day;->getDate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .end local v9    # "d":Lcom/poverka/httpFileClient/containers/Day;
    :cond_0
    goto :goto_0

    .line 466
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 467
    const v2, 0x7f0f004e

    invoke-virtual {p0, v2}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 468
    return-void

    .line 471
    :cond_2
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 472
    .local v8, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v8, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 473
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const v9, 0x7f0f01ae

    .line 474
    invoke-virtual {p0, v9}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v3

    .line 473
    invoke-static {v4, v9, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 475
    const v3, 0x7f0f0030

    new-instance v4, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$3;

    invoke-direct {v4, p0, v1}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$3;-><init>(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;Ljava/util/List;)V

    invoke-virtual {v8, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 500
    new-instance v3, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$4;

    invoke-direct {v3, p0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$4;-><init>(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;)V

    invoke-virtual {v8, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 506
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .end local v1    # "datesStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "dates":Ljava/lang/StringBuilder;
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/poverka/httpFileClient/containers/Day;>;"
    .end local v8    # "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    goto/16 :goto_2

    .line 507
    :cond_3
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f018b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 508
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->currentList:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->getTasksOfApartment()Ljava/util/List;

    move-result-object v1

    .line 509
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/poverka/httpFileClient/containers/Task;>;"
    const/4 v6, 0x0

    .line 511
    .local v6, "counter":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/poverka/httpFileClient/containers/Task;

    .line 512
    .local v8, "t":Lcom/poverka/httpFileClient/containers/Task;
    invoke-virtual {v8}, Lcom/poverka/httpFileClient/containers/Task;->getStatus()I

    move-result v9

    if-nez v9, :cond_4

    .line 513
    add-int/lit8 v6, v6, 0x1

    .line 515
    .end local v8    # "t":Lcom/poverka/httpFileClient/containers/Task;
    :cond_4
    goto :goto_1

    .line 517
    :cond_5
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->checkMobileDataEnabled(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 518
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 519
    .local v2, "builderSmall":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 520
    const v3, 0x7f0f00e5

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 521
    new-instance v3, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$5;

    invoke-direct {v3, p0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$5;-><init>(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;)V

    const-string v4, "OK"

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 526
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 527
    .local v3, "dialogSmall":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 528
    .end local v2    # "builderSmall":Landroid/app/AlertDialog$Builder;
    .end local v3    # "dialogSmall":Landroid/app/AlertDialog;
    goto :goto_3

    :cond_6
    if-nez v6, :cond_7

    .line 529
    const v2, 0x7f0f0021

    invoke-virtual {p0, v2}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 531
    :cond_7
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 532
    .local v4, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const v8, 0x7f0f00ee

    invoke-virtual {p0, v8}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v3

    invoke-static {v7, v8, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 533
    new-instance v3, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 534
    .local v3, "editComment":Landroid/widget/EditText;
    const/high16 v5, 0x2000000

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 535
    const v5, 0x7f0f0142

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHint(I)V

    .line 536
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 538
    const v5, 0x7f0f0028

    new-instance v7, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$6;

    invoke-direct {v7, p0, v1, v3}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$6;-><init>(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;Ljava/util/List;Landroid/widget/EditText;)V

    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 550
    new-instance v5, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$7;

    invoke-direct {v5, p0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$7;-><init>(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;)V

    invoke-virtual {v4, v2, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 556
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_3

    .line 507
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/poverka/httpFileClient/containers/Task;>;"
    .end local v3    # "editComment":Landroid/widget/EditText;
    .end local v4    # "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    .end local v6    # "counter":I
    :cond_8
    :goto_2
    nop

    .line 559
    :goto_3
    return-void
.end method

.method public LoadTasksClicked(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .line 563
    const-string v0, "station"

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "settings.json"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 564
    .local v1, "settings":Ljava/io/File;
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 565
    .local v2, "text":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 567
    .local v3, "jsonSettings":Lorg/json/JSONObject;
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/poverka/httpFileClient/activity/LoadTaskActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 568
    .local v4, "loadTaskIntent":Landroid/content/Intent;
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 569
    invoke-virtual {p0, v4}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    .end local v1    # "settings":Ljava/io/File;
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "jsonSettings":Lorg/json/JSONObject;
    .end local v4    # "loadTaskIntent":Landroid/content/Intent;
    goto :goto_0

    .line 570
    :catch_0
    move-exception v0

    .line 571
    .local v0, "e":Lorg/json/JSONException;
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const v2, 0x7f0f0065

    invoke-virtual {p0, v2}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 572
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 574
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->currentList:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->toPreviousList()V

    .line 287
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 75
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v0, 0x7f0c0026

    invoke-virtual {p0, v0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->setContentView(I)V

    .line 78
    new-instance v0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyHandler;-><init>(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;)V

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->myHandler:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyHandler;

    .line 80
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "photoType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->photoType:I

    .line 82
    const-string v1, "writeLog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->writeLog:I

    .line 84
    const v1, 0x7f090186

    invoke-virtual {p0, v1}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 85
    .local v1, "myListView":Landroid/widget/ListView;
    new-instance v2, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;

    invoke-direct {v2, p0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;-><init>(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 268
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 272
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 274
    const v0, 0x7f090184

    invoke-virtual {p0, v0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 275
    const v0, 0x7f090182

    invoke-virtual {p0, v0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 276
    const v0, 0x7f090183

    invoke-virtual {p0, v0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 277
    const v0, 0x7f09004b

    invoke-virtual {p0, v0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 279
    new-instance v0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;

    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->initListView()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->currentList:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;

    .line 280
    invoke-virtual {v0, p0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->addObserver(Ljava/util/Observer;)V

    .line 281
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->currentList:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->setCurrentList(I)V

    .line 282
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 10
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 291
    const v0, 0x7f090186

    invoke-virtual {p0, v0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 293
    .local v0, "myListView":Landroid/widget/ListView;
    const v1, 0x7f090184

    invoke-virtual {p0, v1}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 294
    .local v1, "viewDays":Landroid/view/View;
    const v2, 0x7f090182

    invoke-virtual {p0, v2}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 295
    .local v2, "viewApartments":Landroid/view/View;
    const v3, 0x7f090183

    invoke-virtual {p0, v3}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 296
    .local v3, "viewCounters":Landroid/view/View;
    const v4, 0x7f09004b

    invoke-virtual {p0, v4}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 298
    .local v4, "buttonClose":Landroid/widget/Button;
    move-object v5, p1

    check-cast v5, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;

    .line 299
    .local v5, "mList":Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;
    invoke-virtual {v5}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->getCurrentList()I

    move-result v6

    if-eqz v6, :cond_3

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x8

    if-eq v6, v7, :cond_2

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    goto :goto_0

    .line 323
    :cond_0
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 324
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 325
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 326
    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 327
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f018b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 329
    new-instance v6, Lcom/poverka/httpFileClient/task/TaskViewerAdapter;

    const v7, 0x7f0c0062

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->getTasksOfApartment()Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, p0, v7, v8}, Lcom/poverka/httpFileClient/task/TaskViewerAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 330
    .local v6, "taskAdapter":Lcom/poverka/httpFileClient/task/TaskViewerAdapter;
    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 314
    .end local v6    # "taskAdapter":Lcom/poverka/httpFileClient/task/TaskViewerAdapter;
    :cond_1
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 315
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 316
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 317
    invoke-virtual {v4, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 319
    new-instance v6, Lcom/poverka/httpFileClient/task/ApartmentViewerAdapter;

    const v7, 0x7f0c0061

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->getTasksOfDay()Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, p0, v7, v8}, Lcom/poverka/httpFileClient/task/ApartmentViewerAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 320
    .local v6, "apartmentAdapter":Lcom/poverka/httpFileClient/task/ApartmentViewerAdapter;
    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 321
    goto :goto_0

    .line 304
    .end local v6    # "apartmentAdapter":Lcom/poverka/httpFileClient/task/ApartmentViewerAdapter;
    :cond_2
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 305
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 306
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 307
    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 308
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f018a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 310
    new-instance v6, Lcom/poverka/httpFileClient/task/DayViewerAdapter;

    const v7, 0x7f0c0063

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->getTasksByDay()Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, p0, v7, v8}, Lcom/poverka/httpFileClient/task/DayViewerAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 311
    .local v6, "dayAdapter":Lcom/poverka/httpFileClient/task/DayViewerAdapter;
    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 312
    goto :goto_0

    .line 301
    .end local v6    # "dayAdapter":Lcom/poverka/httpFileClient/task/DayViewerAdapter;
    :cond_3
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 302
    nop

    .line 333
    :goto_0
    return-void
.end method
