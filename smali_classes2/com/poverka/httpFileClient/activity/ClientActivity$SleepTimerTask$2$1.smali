.class Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$2$1;
.super Ljava/lang/Object;
.source "ClientActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$2;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$2;

    .line 1063
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$2$1;->this$2:Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogI"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 1066
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1067
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "delay_sleep"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1068
    const-string v1, "sleeping"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1069
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$2$1;->this$2:Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$2;

    iget-object v1, v1, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$2;->this$1:Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask;

    iget-object v1, v1, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask;->this$0:Lcom/poverka/httpFileClient/activity/ClientActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/ClientActivity;->access$700(Lcom/poverka/httpFileClient/activity/ClientActivity;)Lcom/poverka/httpFileClient/activity/ClientActivity$OnClientResult;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/poverka/httpFileClient/activity/ClientActivity$OnClientResult;->clientResult(Landroid/os/Bundle;)V

    .line 1070
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$2$1;->this$2:Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$2;

    iget-object v1, v1, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$2;->this$1:Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask;

    iget-object v1, v1, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask;->this$0:Lcom/poverka/httpFileClient/activity/ClientActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/ClientActivity;->access$800(Lcom/poverka/httpFileClient/activity/ClientActivity;)V

    .line 1071
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$2$1;->this$2:Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$2;

    iget-object v1, v1, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$2;->this$1:Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask;

    iget-object v1, v1, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask;->this$0:Lcom/poverka/httpFileClient/activity/ClientActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/ClientActivity;->access$900(Lcom/poverka/httpFileClient/activity/ClientActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1072
    return-void
.end method
