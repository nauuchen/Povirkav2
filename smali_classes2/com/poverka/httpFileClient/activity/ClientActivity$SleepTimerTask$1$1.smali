.class Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$1$1;
.super Ljava/lang/Object;
.source "ClientActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$1;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$1;

    .line 1044
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$1$1;->this$2:Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 1047
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$1$1;->this$2:Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$1;

    iget-object v0, v0, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$1;->this$1:Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask;

    iget-object v0, v0, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask;->this$0:Lcom/poverka/httpFileClient/activity/ClientActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/activity/ClientActivity;->access$602(Lcom/poverka/httpFileClient/activity/ClientActivity;I)I

    .line 1048
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1049
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "delay_sleep"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1050
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$1$1;->this$2:Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$1;

    iget-object v1, v1, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$1;->this$1:Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask;

    iget-object v1, v1, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask;->this$0:Lcom/poverka/httpFileClient/activity/ClientActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/ClientActivity;->access$700(Lcom/poverka/httpFileClient/activity/ClientActivity;)Lcom/poverka/httpFileClient/activity/ClientActivity$OnClientResult;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/poverka/httpFileClient/activity/ClientActivity$OnClientResult;->clientResult(Landroid/os/Bundle;)V

    .line 1051
    return-void
.end method
