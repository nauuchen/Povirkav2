.class Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$2$2;
.super Ljava/lang/Object;
.source "TaskViewerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$2;

.field final synthetic val$editComment:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$2;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$2"    # Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$2;

    .line 185
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$2$2;->this$2:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$2;

    iput-object p2, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$2$2;->val$editComment:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 188
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$2$2;->this$2:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$2;

    iget-object v0, v0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$2;->this$1:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;

    iget-object v0, v0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$2$2;->this$2:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$2;

    iget-object v1, v1, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$2;->val$task:Lcom/poverka/httpFileClient/containers/Task;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/containers/Task;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$2$2;->val$editComment:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->access$500(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;ILjava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$2$2;->this$2:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$2;

    iget-object v0, v0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$2;->this$1:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;

    iget-object v0, v0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->access$600(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;I)V

    .line 190
    return-void
.end method
