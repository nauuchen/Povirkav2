.class Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler$8;
.super Ljava/lang/Object;
.source "StateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 1612
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler$8;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 1615
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler$8;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->access$3800(Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;)Lcom/poverka/httpFileClient/activity/StateActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$2700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/util/MySender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MySender;->setDateTime()V

    .line 1616
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1617
    return-void
.end method
