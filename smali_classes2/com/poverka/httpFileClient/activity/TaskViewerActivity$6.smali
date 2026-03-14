.class Lcom/poverka/httpFileClient/activity/TaskViewerActivity$6;
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

.field final synthetic val$editComment:Landroid/widget/EditText;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;Ljava/util/List;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    .line 538
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$6;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    iput-object p2, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$6;->val$list:Ljava/util/List;

    iput-object p3, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$6;->val$editComment:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 541
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$6;->val$list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/poverka/httpFileClient/containers/Task;

    .line 542
    .local v1, "t":Lcom/poverka/httpFileClient/containers/Task;
    invoke-virtual {v1}, Lcom/poverka/httpFileClient/containers/Task;->getStatus()I

    move-result v2

    if-nez v2, :cond_0

    .line 543
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$6;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/containers/Task;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$6;->val$editComment:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->access$500(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;ILjava/lang/String;)V

    .line 545
    .end local v1    # "t":Lcom/poverka/httpFileClient/containers/Task;
    :cond_0
    goto :goto_0

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$6;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->access$600(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;I)V

    .line 548
    return-void
.end method
