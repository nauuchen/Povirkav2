.class Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler$2;
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


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    .line 1487
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 1490
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler$2;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->access$3800(Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;)Lcom/poverka/httpFileClient/activity/StateActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$2100(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/util/MyModeQueue;

    move-result-object v0

    sget-object v1, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->UPDATE_FIRMWARE:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/util/MyModeQueue;->add(Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;)V

    .line 1491
    return-void
.end method
