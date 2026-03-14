.class Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask;
.super Ljava/util/TimerTask;
.source "ClientActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/poverka/httpFileClient/activity/ClientActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SleepTimerTask"
.end annotation


# instance fields
.field alertDialog:Landroid/app/AlertDialog;

.field final alertDialogBuilder:Landroid/app/AlertDialog$Builder;

.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/ClientActivity;


# direct methods
.method public constructor <init>(Lcom/poverka/httpFileClient/activity/ClientActivity;)V
    .locals 1

    .line 1030
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask;->this$0:Lcom/poverka/httpFileClient/activity/ClientActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1027
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {p1}, Lcom/poverka/httpFileClient/activity/ClientActivity;->access$500(Lcom/poverka/httpFileClient/activity/ClientActivity;)Landroid/app/Activity;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask;->alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 1031
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1032
    const p1, 0x7f0f001e

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1033
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1037
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask;->this$0:Lcom/poverka/httpFileClient/activity/ClientActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/ClientActivity;->access$608(Lcom/poverka/httpFileClient/activity/ClientActivity;)I

    .line 1039
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask;->this$0:Lcom/poverka/httpFileClient/activity/ClientActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/ClientActivity;->access$600(Lcom/poverka/httpFileClient/activity/ClientActivity;)I

    move-result v0

    const/16 v1, 0x12c

    if-ne v0, v1, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask;->this$0:Lcom/poverka/httpFileClient/activity/ClientActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/ClientActivity;->access$500(Lcom/poverka/httpFileClient/activity/ClientActivity;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$1;

    invoke-direct {v1, p0}, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$1;-><init>(Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1057
    :cond_0
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask;->this$0:Lcom/poverka/httpFileClient/activity/ClientActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/ClientActivity;->access$600(Lcom/poverka/httpFileClient/activity/ClientActivity;)I

    move-result v0

    const/16 v1, 0x258

    if-ne v0, v1, :cond_1

    .line 1058
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask;->this$0:Lcom/poverka/httpFileClient/activity/ClientActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/ClientActivity;->access$500(Lcom/poverka/httpFileClient/activity/ClientActivity;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$2;

    invoke-direct {v1, p0}, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$2;-><init>(Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1079
    :cond_1
    :goto_0
    return-void
.end method
