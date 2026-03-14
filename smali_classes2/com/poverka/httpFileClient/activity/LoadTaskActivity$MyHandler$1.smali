.class Lcom/poverka/httpFileClient/activity/LoadTaskActivity$MyHandler$1;
.super Ljava/lang/Object;
.source "LoadTaskActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/LoadTaskActivity$MyHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/LoadTaskActivity$MyHandler;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/LoadTaskActivity$MyHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/LoadTaskActivity$MyHandler;

    .line 197
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/LoadTaskActivity$MyHandler$1;->this$0:Lcom/poverka/httpFileClient/activity/LoadTaskActivity$MyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 200
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 201
    return-void
.end method
