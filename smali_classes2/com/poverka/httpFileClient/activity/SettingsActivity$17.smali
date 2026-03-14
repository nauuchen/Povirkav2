.class Lcom/poverka/httpFileClient/activity/SettingsActivity$17;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/SettingsActivity;->SetEnvironment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

.field final synthetic val$editH:Landroid/widget/EditText;

.field final synthetic val$editT:Landroid/widget/EditText;

.field final synthetic val$jsonSettings:Lorg/json/JSONObject;

.field final synthetic val$settings:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/SettingsActivity;Lorg/json/JSONObject;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/SettingsActivity;

    .line 551
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$17;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    iput-object p2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$17;->val$jsonSettings:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$17;->val$editT:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$17;->val$editH:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$17;->val$settings:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 555
    :try_start_0
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$17;->val$jsonSettings:Lorg/json/JSONObject;

    const-string v1, "environmentT"

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$17;->val$editT:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 556
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$17;->val$jsonSettings:Lorg/json/JSONObject;

    const-string v1, "environmentH"

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$17;->val$editH:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    goto :goto_0

    .line 557
    :catch_0
    move-exception v0

    .line 558
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 560
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$17;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$17;->val$settings:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$17;->val$jsonSettings:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/poverka/httpFileClient/util/MyFileReader;->writeInternalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    return-void
.end method
