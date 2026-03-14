.class Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyHandler;
.super Landroid/os/Handler;
.source "TaskViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/poverka/httpFileClient/activity/TaskViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# static fields
.field private static final ALERT:I = 0x1

.field private static final ALERT_DIALOG:I = 0x2

.field private static final DISMISS_ERROR:I = 0x3


# instance fields
.field private activity:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;


# direct methods
.method private constructor <init>(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    .line 390
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 391
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyHandler;->activity:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    .line 392
    return-void
.end method

.method synthetic constructor <init>(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/poverka/httpFileClient/activity/TaskViewerActivity;
    .param p2, "x1"    # Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;

    .line 383
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyHandler;-><init>(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 396
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 398
    .local v0, "bundle":Landroid/os/Bundle;
    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "alert"

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    goto/16 :goto_0

    .line 420
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "id"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 421
    .local v1, "id":I
    const/4 v4, -0x2

    const/4 v5, 0x0

    if-ne v1, v4, :cond_1

    .line 422
    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyHandler;->activity:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v5

    const-string v2, "id: -2 \n%s"

    invoke-static {v6, v2, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 425
    :cond_1
    :try_start_0
    new-instance v4, Ljava/io/File;

    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyHandler;->activity:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "localTasks.json"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 426
    .local v4, "localTasks":Ljava/io/File;
    new-instance v6, Lorg/json/JSONArray;

    iget-object v7, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyHandler;->activity:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-virtual {v7}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 428
    .local v6, "localTasksJSON":Lorg/json/JSONArray;
    iget-object v7, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyHandler;->activity:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-static {v7, v1, v6}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->access$800(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;ILorg/json/JSONArray;)Lcom/poverka/httpFileClient/containers/Task;

    move-result-object v7

    .line 429
    .local v7, "task":Lcom/poverka/httpFileClient/containers/Task;
    invoke-virtual {v7}, Lcom/poverka/httpFileClient/containers/Task;->setNew()V

    .line 430
    invoke-virtual {v7}, Lcom/poverka/httpFileClient/containers/Task;->toJSON()Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 431
    iget-object v8, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyHandler;->activity:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/poverka/httpFileClient/util/MyFileReader;->writeInternalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v8, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyHandler;->activity:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-static {v8, v3}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->access$600(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;I)V

    .line 433
    iget-object v8, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyHandler;->activity:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-virtual {v8}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    .end local v4    # "localTasks":Ljava/io/File;
    .end local v6    # "localTasksJSON":Lorg/json/JSONArray;
    .end local v7    # "task":Lcom/poverka/httpFileClient/containers/Task;
    goto/16 :goto_0

    .line 434
    :catch_0
    move-exception v4

    .line 435
    .local v4, "e":Lorg/json/JSONException;
    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyHandler;->activity:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v5

    const-string v2, "id: -3 \n%s"

    invoke-static {v7, v2, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 408
    .end local v1    # "id":I
    .end local v4    # "e":Lorg/json/JSONException;
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyHandler;->activity:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 409
    .local v1, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "tittle"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 410
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 411
    new-instance v2, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyHandler$1;

    invoke-direct {v2, p0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyHandler$1;-><init>(Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyHandler;)V

    const-string v3, "OK"

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 417
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 418
    goto :goto_0

    .line 400
    .end local v1    # "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    :cond_3
    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 401
    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyHandler;->activity:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 403
    :cond_4
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 404
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyHandler;->activity:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 440
    :cond_5
    :goto_0
    return-void
.end method
