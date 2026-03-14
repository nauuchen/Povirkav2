.class Lcom/poverka/httpFileClient/activity/SettingsActivity$15;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/SettingsActivity;->Support()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/SettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/SettingsActivity;

    .line 402
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$15;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 405
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$15;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 406
    .local v0, "builderItem":Landroid/app/AlertDialog$Builder;
    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 414
    :cond_0
    const v1, 0x7f0c005a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 411
    :cond_1
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$15;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0179

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 412
    goto :goto_0

    .line 408
    :cond_2
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$15;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f017a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 409
    nop

    .line 417
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 418
    .local v1, "dialogItem":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 419
    return-void
.end method
