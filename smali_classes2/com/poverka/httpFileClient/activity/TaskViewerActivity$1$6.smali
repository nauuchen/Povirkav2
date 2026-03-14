.class Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$6;
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


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;

    .line 253
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$6;->this$1:Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 256
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 257
    return-void
.end method
