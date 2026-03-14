.class Lcom/poverka/httpFileClient/activity/SettingsActivity$22;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/SettingsActivity;->MetrologistNameClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

.field final synthetic val$editName:Landroid/widget/EditText;

.field final synthetic val$settings:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/SettingsActivity;Landroid/widget/EditText;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/SettingsActivity;

    .line 810
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$22;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    iput-object p2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$22;->val$editName:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$22;->val$settings:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 813
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$22;->val$editName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 817
    .local v0, "text":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$22;->val$settings:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 818
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$22;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v2}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$22;->val$settings:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .local v1, "jsonSettings":Lorg/json/JSONObject;
    goto :goto_0

    .line 820
    .end local v1    # "jsonSettings":Lorg/json/JSONObject;
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 822
    .restart local v1    # "jsonSettings":Lorg/json/JSONObject;
    :goto_0
    const-string v2, "metrologist"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 823
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$22;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v2}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$22;->val$settings:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/poverka/httpFileClient/util/MyFileReader;->writeInternalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    .end local v1    # "jsonSettings":Lorg/json/JSONObject;
    goto :goto_1

    .line 824
    :catch_0
    move-exception v1

    .line 825
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 827
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method
