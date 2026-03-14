.class Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$1;
.super Ljava/lang/Object;
.source "ClientActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask;

    .line 1040
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$1;->this$1:Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1043
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$1;->this$1:Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask;

    iget-object v0, v0, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask;->alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0f016c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1044
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$1;->this$1:Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask;

    iget-object v0, v0, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask;->alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$1$1;

    invoke-direct {v1, p0}, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$1$1;-><init>(Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$1;)V

    const-string v2, "\u041e\u041a"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1053
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$1;->this$1:Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask;

    iget-object v1, v0, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask;->alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask;->alertDialog:Landroid/app/AlertDialog;

    .line 1054
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask$1;->this$1:Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask;

    iget-object v0, v0, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1055
    return-void
.end method
