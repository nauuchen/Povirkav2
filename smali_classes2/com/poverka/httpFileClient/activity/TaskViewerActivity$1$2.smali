.class Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$2;
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

    .line 163
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$2;->this$1:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;

    iput-object p2, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$2;->val$task:Lcom/poverka/httpFileClient/containers/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 166
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$2;->this$1:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;

    iget-object v0, v0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$2;->this$1:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;

    iget-object v1, v1, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->access$400(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$2;->this$1:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;

    iget-object v1, v1, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 168
    .local v0, "builderSmall":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0f001e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 169
    const v1, 0x7f0f00e5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 170
    new-instance v1, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$2$1;

    invoke-direct {v1, p0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$2$1;-><init>(Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$2;)V

    const-string v2, "OK"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 175
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 176
    .local v1, "dialogSmall":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 177
    .end local v0    # "builderSmall":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialogSmall":Landroid/app/AlertDialog;
    goto :goto_0

    .line 178
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$2;->this$1:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;

    iget-object v1, v1, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 179
    .local v0, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0f0184

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 180
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 181
    .local v1, "editComment":Landroid/widget/EditText;
    const/high16 v2, 0x2000000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 182
    const v2, 0x7f0f0141

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 183
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 185
    const v2, 0x7f0f0028

    new-instance v3, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$2$2;

    invoke-direct {v3, p0, v1}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$2$2;-><init>(Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$2;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 192
    const v2, 0x7f0f0059

    new-instance v3, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$2$3;

    invoke-direct {v3, p0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$2$3;-><init>(Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$2;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 198
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 200
    .end local v0    # "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "editComment":Landroid/widget/EditText;
    :goto_0
    return-void
.end method
