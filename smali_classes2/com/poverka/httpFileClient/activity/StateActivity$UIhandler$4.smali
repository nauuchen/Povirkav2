.class Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler$4;
.super Ljava/lang/Object;
.source "StateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

.field final synthetic val$apkName:Ljava/lang/String;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    .line 1515
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler$4;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    iput p2, p0, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler$4;->val$id:I

    iput-object p3, p0, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler$4;->val$apkName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 1518
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler$4;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->access$3800(Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;)Lcom/poverka/httpFileClient/activity/StateActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$2000(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/util/HttpFileClient;

    move-result-object v0

    iget v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler$4;->val$id:I

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler$4;->val$apkName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/poverka/httpFileClient/util/HttpFileClient;->headDownloadApk(ILjava/lang/String;)V

    .line 1519
    return-void
.end method
