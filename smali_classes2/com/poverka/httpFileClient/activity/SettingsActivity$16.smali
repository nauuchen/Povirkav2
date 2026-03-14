.class Lcom/poverka/httpFileClient/activity/SettingsActivity$16;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/SettingsActivity;->SetIP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

.field final synthetic val$buttonSetIP:Landroid/widget/Button;

.field final synthetic val$editIP:Landroid/widget/EditText;

.field final synthetic val$settings:Ljava/io/File;

.field final synthetic val$switchCamera:Landroidx/appcompat/widget/SwitchCompat;

.field final synthetic val$switchLogging:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/SettingsActivity;Landroid/widget/EditText;Ljava/io/File;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/Button;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/SettingsActivity;

    .line 475
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$16;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    iput-object p2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$16;->val$editIP:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$16;->val$settings:Ljava/io/File;

    iput-object p4, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$16;->val$switchCamera:Landroidx/appcompat/widget/SwitchCompat;

    iput-object p5, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$16;->val$switchLogging:Landroidx/appcompat/widget/SwitchCompat;

    iput-object p6, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$16;->val$buttonSetIP:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 478
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$16;->val$editIP:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "text":Ljava/lang/String;
    const-string v1, "^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 480
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 481
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 484
    :try_start_0
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$16;->val$settings:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 485
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$16;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$16;->val$settings:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .local v3, "jsonSettings":Lorg/json/JSONObject;
    goto :goto_0

    .line 487
    .end local v3    # "jsonSettings":Lorg/json/JSONObject;
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 489
    .restart local v3    # "jsonSettings":Lorg/json/JSONObject;
    :goto_0
    const-string v4, "ip"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 490
    const-string v4, "photoType"

    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$16;->val$switchCamera:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v5}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 491
    const-string v4, "writeLog"

    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$16;->val$switchLogging:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v5}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 492
    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$16;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$16;->val$settings:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/poverka/httpFileClient/util/MyFileReader;->writeInternalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    sput-object v0, Lcom/poverka/httpFileClient/activity/MainActivity;->IP:Ljava/lang/String;

    .line 495
    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$16;->val$buttonSetIP:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "jsonSettings":Lorg/json/JSONObject;
    goto :goto_1

    .line 496
    :catch_0
    move-exception v3

    .line 497
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 498
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_1
    goto :goto_2

    .line 500
    :cond_1
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$16;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v3}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$16;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0f01b7

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 502
    :goto_2
    return-void
.end method
