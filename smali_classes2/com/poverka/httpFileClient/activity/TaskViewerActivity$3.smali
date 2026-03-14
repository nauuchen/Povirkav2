.class Lcom/poverka/httpFileClient/activity/TaskViewerActivity$3;
.super Ljava/lang/Object;
.source "TaskViewerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->CleanGreyClicked(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

.field final synthetic val$datesStr:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    .line 475
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    iput-object p2, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$3;->val$datesStr:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 479
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "localTasks.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 480
    .local v0, "localTasks":Ljava/io/File;
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 482
    .local v1, "localTasksJSON":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 483
    .local v2, "counter":I
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$3;->val$datesStr:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 484
    .local v4, "day":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "localInd":I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 485
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "ZAJAVKA_DATE"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 486
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    .line 487
    add-int/lit8 v6, v6, -0x1

    .line 488
    add-int/lit8 v2, v2, 0x1

    .line 484
    :cond_0
    add-int/2addr v6, v5

    goto :goto_1

    .line 491
    .end local v4    # "day":Ljava/lang/String;
    .end local v6    # "localInd":I
    :cond_1
    goto :goto_0

    .line 492
    :cond_2
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v6}, Lcom/poverka/httpFileClient/util/MyFileReader;->writeInternalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-static {v3, v5}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->access$600(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;I)V

    .line 494
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    const v7, 0x7f0f0057

    invoke-virtual {v6, v7}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    .end local v0    # "localTasks":Ljava/io/File;
    .end local v1    # "localTasksJSON":Lorg/json/JSONArray;
    .end local v2    # "counter":I
    goto :goto_2

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 498
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2
    return-void
.end method
