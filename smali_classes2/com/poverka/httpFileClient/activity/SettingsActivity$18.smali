.class Lcom/poverka/httpFileClient/activity/SettingsActivity$18;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/SettingsActivity;->SelectLanguage()V
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

    .line 603
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$18;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 606
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$18;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    const-string v1, "ru"

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->setLocale(Ljava/lang/String;)V

    goto :goto_0

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$18;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    const-string v1, "en"

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->setLocale(Ljava/lang/String;)V

    .line 611
    :goto_0
    return-void
.end method
