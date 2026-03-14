.class Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1;
.super Ljava/lang/Object;
.source "TaskViewerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;

.field final synthetic val$task:Lcom/poverka/httpFileClient/containers/Task;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;Lcom/poverka/httpFileClient/containers/Task;)V
    .locals 0
    .param p1, "this$1"    # Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;

    .line 111
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1;->this$1:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;

    iput-object p2, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1;->val$task:Lcom/poverka/httpFileClient/containers/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 114
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1;->this$1:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;

    iget-object v1, v1, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "address.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 115
    .local v0, "addressFile":Ljava/io/File;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1;->this$1:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;

    iget-object v2, v2, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 116
    .local v1, "alertAddress":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0f001e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 117
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1;->this$1:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;

    iget-object v3, v3, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 120
    .local v2, "jsonAddress":Lorg/json/JSONObject;
    const-string v3, "city_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1;->val$task:Lcom/poverka/httpFileClient/containers/Task;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/containers/Task;->getCityId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 121
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1;->this$1:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;

    iget-object v4, v4, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v3, "myIntent":Landroid/content/Intent;
    const-string v4, "local"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 123
    const-string v4, "selectedId"

    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1;->val$task:Lcom/poverka/httpFileClient/containers/Task;

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/containers/Task;->getId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    const-string v4, "photoType"

    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1;->this$1:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;

    iget-object v5, v5, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->access$200(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    const-string v4, "writeLog"

    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1;->this$1:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;

    iget-object v5, v5, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->access$300(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1;->this$1:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;

    iget-object v4, v4, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-virtual {v4, v3}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->startActivity(Landroid/content/Intent;)V

    .line 127
    .end local v3    # "myIntent":Landroid/content/Intent;
    goto :goto_0

    .line 128
    :cond_0
    const v3, 0x7f0f01b5

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 129
    const v3, 0x7f0f0131

    new-instance v4, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1$1;

    invoke-direct {v4, p0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1$1;-><init>(Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 140
    const v3, 0x7f0f0059

    new-instance v4, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1$2;

    invoke-direct {v4, p0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1$2;-><init>(Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 146
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    .end local v2    # "jsonAddress":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 149
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 150
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_0
    goto :goto_1

    .line 152
    :cond_1
    const v2, 0x7f0f00df

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 153
    new-instance v2, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1$3;

    invoke-direct {v2, p0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1$3;-><init>(Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1;)V

    const-string v3, "\u041e\u041a"

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 159
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 161
    :goto_1
    return-void
.end method
