.class Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler$6;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

.field final synthetic val$spinnerTown:Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    .line 1336
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler$6;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    iput-object p2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler$6;->val$spinnerTown:Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 1339
    const-string v0, "station"

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler$6;->val$spinnerTown:Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/poverka/httpFileClient/containers/Address;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/containers/Address;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$2102(I)I

    .line 1340
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler$6;->val$spinnerTown:Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/poverka/httpFileClient/containers/Address;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/containers/Address;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$2202(Ljava/lang/String;)Ljava/lang/String;

    .line 1342
    invoke-static {}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$2100()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1343
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler$6;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->access$2400(Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "address.json"

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/util/MyFileReader;->removeInternalFile(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1346
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler$6;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    invoke-static {v3}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->access$2400(Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "settings.json"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1347
    .local v2, "settings":Ljava/io/File;
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler$6;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    invoke-static {v3}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->access$2400(Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1348
    .local v3, "text":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1350
    .local v4, "jsonSettings":Lorg/json/JSONObject;
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 1351
    .local v5, "station":I
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1352
    invoke-static {}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$2100()I

    move-result v0

    invoke-static {v0, v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$2500(II)V

    goto :goto_0

    .line 1354
    :cond_1
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler$6;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->access$2400(Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;)Landroid/app/Activity;

    move-result-object v0

    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler$6;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->access$2400(Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;)Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0f01a4

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1359
    .end local v2    # "settings":Ljava/io/File;
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "jsonSettings":Lorg/json/JSONObject;
    .end local v5    # "station":I
    :goto_0
    goto :goto_1

    .line 1356
    :catch_0
    move-exception v0

    .line 1357
    .local v0, "e":Lorg/json/JSONException;
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler$6;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    invoke-static {v2}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->access$2400(Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;)Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler$6;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->access$2400(Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0f0065

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1358
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1361
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method
