.class Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1$1;
.super Ljava/lang/Object;
.source "TaskViewerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1;

    .line 129
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1$1;->this$2:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 132
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1$1;->this$2:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1;

    iget-object v1, v1, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1;->this$1:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;

    iget-object v1, v1, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .local v0, "myIntent":Landroid/content/Intent;
    const-string v1, "local"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 134
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1$1;->this$2:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1;

    iget-object v1, v1, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1;->val$task:Lcom/poverka/httpFileClient/containers/Task;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/containers/Task;->getId()I

    move-result v1

    const-string v2, "selectedId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1$1;->this$2:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1;

    iget-object v1, v1, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1;->this$1:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;

    iget-object v1, v1, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->access$200(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;)I

    move-result v1

    const-string v2, "photoType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1$1;->this$2:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1;

    iget-object v1, v1, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1;->this$1:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;

    iget-object v1, v1, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->access$300(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;)I

    move-result v1

    const-string v2, "writeLog"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1$1;->this$2:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1;

    iget-object v1, v1, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1;->this$1:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;

    iget-object v1, v1, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-virtual {v1, v0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->startActivity(Landroid/content/Intent;)V

    .line 138
    return-void
.end method
