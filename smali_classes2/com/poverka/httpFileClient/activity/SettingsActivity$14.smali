.class Lcom/poverka/httpFileClient/activity/SettingsActivity$14;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/SettingsActivity;->initViews()V
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

    .line 308
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$14;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 311
    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_4

    .line 312
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$14;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v2}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "settings.json"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 313
    .local v1, "settings":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$14;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v3}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "address.json"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 314
    .local v2, "address":Ljava/io/File;
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$14;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v3}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1500(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090177

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    .line 316
    .local v3, "switchDispatcher":Landroid/widget/Switch;
    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 317
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 318
    .local v4, "bundle":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$14;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1600(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 319
    .local v5, "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$14;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0f001e

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "tittle"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$14;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0f00e0

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "message"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {v5, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 322
    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$14;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1600(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 323
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v5    # "msg":Landroid/os/Message;
    goto :goto_3

    .line 326
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 327
    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$14;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .local v4, "jsonSettings":Lorg/json/JSONObject;
    goto :goto_0

    .line 329
    .end local v4    # "jsonSettings":Lorg/json/JSONObject;
    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 332
    .restart local v4    # "jsonSettings":Lorg/json/JSONObject;
    :goto_0
    const-string v5, "local"

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 333
    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$14;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v8}, Lcom/poverka/httpFileClient/util/MyFileReader;->writeInternalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v7, 0x1

    :goto_2
    sput v7, Lcom/poverka/httpFileClient/activity/MainActivity;->MARKER:I

    .line 335
    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$14;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1700(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    .end local v4    # "jsonSettings":Lorg/json/JSONObject;
    goto :goto_3

    .line 336
    :catch_0
    move-exception v4

    .line 337
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 341
    .end local v1    # "settings":Ljava/io/File;
    .end local v2    # "address":Ljava/io/File;
    .end local v3    # "switchDispatcher":Landroid/widget/Switch;
    .end local v4    # "e":Lorg/json/JSONException;
    :cond_4
    :goto_3
    return v0
.end method
