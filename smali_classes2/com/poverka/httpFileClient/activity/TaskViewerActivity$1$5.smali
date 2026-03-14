.class Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$5;
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

    .line 226
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$5;->this$1:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;

    iput-object p2, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$5;->val$task:Lcom/poverka/httpFileClient/containers/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 229
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Poverka"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .local v0, "folderPoverka":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$5;->val$task:Lcom/poverka/httpFileClient/containers/Task;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/containers/Task;->getStatusDate()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    const/16 v4, 0x5f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 231
    .local v1, "folderDay":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$5;->val$task:Lcom/poverka/httpFileClient/containers/Task;

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/containers/Task;->getProtocolNumber()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "%s.pdf"

    invoke-static {v3, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 233
    .local v2, "pdfFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 234
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    .local v3, "intent":Landroid/content/Intent;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    const-string v8, "application/pdf"

    if-lt v5, v6, :cond_0

    .line 236
    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$5;->this$1:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;

    iget-object v5, v5, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    const-string v6, "com.poverka.httpFileClient.fileprovider"

    invoke-static {v5, v6, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 237
    .local v5, "pdfUri":Landroid/net/Uri;
    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    .end local v5    # "pdfUri":Landroid/net/Uri;
    goto :goto_0

    .line 239
    :cond_0
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    :goto_0
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 244
    :try_start_0
    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$5;->this$1:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;

    iget-object v4, v4, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-virtual {v4, v3}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    goto :goto_1

    .line 245
    :catch_0
    move-exception v4

    .line 246
    .local v4, "e":Landroid/content/ActivityNotFoundException;
    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$5;->this$1:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;

    iget-object v5, v5, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$5;->this$1:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;

    iget-object v6, v6, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    const v8, 0x7f0f00e9

    invoke-virtual {v6, v8}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 248
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "e":Landroid/content/ActivityNotFoundException;
    :goto_1
    goto :goto_2

    .line 249
    :cond_1
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$5;->this$1:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;

    iget-object v3, v3, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$5;->this$1:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;

    iget-object v4, v4, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    const v5, 0x7f0f0115

    invoke-virtual {v4, v5}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 251
    :goto_2
    return-void
.end method
