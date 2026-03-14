.class Lcom/poverka/httpFileClient/activity/SettingsActivity$24$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/SettingsActivity$24;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/poverka/httpFileClient/activity/SettingsActivity$24;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/SettingsActivity$24;)V
    .locals 0
    .param p1, "this$1"    # Lcom/poverka/httpFileClient/activity/SettingsActivity$24;

    .line 883
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$24$1;->this$1:Lcom/poverka/httpFileClient/activity/SettingsActivity$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .line 886
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$24$1;->this$1:Lcom/poverka/httpFileClient/activity/SettingsActivity$24;

    iget-object v0, v0, Lcom/poverka/httpFileClient/activity/SettingsActivity$24;->val$editPaymentAccountCurrent:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 888
    .local v0, "paymentAccountCurrent":Ljava/lang/String;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "paymentAccountGenerate"

    const-string v4, "paymentAccountCurrent"

    if-nez v2, :cond_0

    .line 889
    :try_start_1
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$24$1;->this$1:Lcom/poverka/httpFileClient/activity/SettingsActivity$24;

    iget-object v2, v2, Lcom/poverka/httpFileClient/activity/SettingsActivity$24;->val$jsonSettings:Lorg/json/JSONObject;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 890
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$24$1;->this$1:Lcom/poverka/httpFileClient/activity/SettingsActivity$24;

    iget-object v2, v2, Lcom/poverka/httpFileClient/activity/SettingsActivity$24;->val$jsonSettings:Lorg/json/JSONObject;

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 891
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$24$1;->this$1:Lcom/poverka/httpFileClient/activity/SettingsActivity$24;

    iget-object v2, v2, Lcom/poverka/httpFileClient/activity/SettingsActivity$24;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v2}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$24$1;->this$1:Lcom/poverka/httpFileClient/activity/SettingsActivity$24;

    iget-object v3, v3, Lcom/poverka/httpFileClient/activity/SettingsActivity$24;->val$settings:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$24$1;->this$1:Lcom/poverka/httpFileClient/activity/SettingsActivity$24;

    iget-object v4, v4, Lcom/poverka/httpFileClient/activity/SettingsActivity$24;->val$jsonSettings:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/poverka/httpFileClient/util/MyFileReader;->writeInternalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$24$1;->this$1:Lcom/poverka/httpFileClient/activity/SettingsActivity$24;

    iget-object v2, v2, Lcom/poverka/httpFileClient/activity/SettingsActivity$24;->val$dialogNew:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_1

    .line 894
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 895
    .local v2, "number":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_1

    .line 896
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$24$1;->this$1:Lcom/poverka/httpFileClient/activity/SettingsActivity$24;

    iget-object v3, v3, Lcom/poverka/httpFileClient/activity/SettingsActivity$24;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v3}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$24$1;->this$1:Lcom/poverka/httpFileClient/activity/SettingsActivity$24;

    iget-object v4, v4, Lcom/poverka/httpFileClient/activity/SettingsActivity$24;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0f0087

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 897
    :cond_1
    if-lt v2, v1, :cond_3

    const v5, 0x1869f

    if-le v2, v5, :cond_2

    goto :goto_0

    .line 900
    :cond_2
    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$24$1;->this$1:Lcom/poverka/httpFileClient/activity/SettingsActivity$24;

    iget-object v5, v5, Lcom/poverka/httpFileClient/activity/SettingsActivity$24;->val$jsonSettings:Lorg/json/JSONObject;

    invoke-virtual {v5, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 901
    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$24$1;->this$1:Lcom/poverka/httpFileClient/activity/SettingsActivity$24;

    iget-object v4, v4, Lcom/poverka/httpFileClient/activity/SettingsActivity$24;->val$jsonSettings:Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$24$1;->this$1:Lcom/poverka/httpFileClient/activity/SettingsActivity$24;

    iget-object v5, v5, Lcom/poverka/httpFileClient/activity/SettingsActivity$24;->val$switchPaymentAccountGenerate:Landroid/widget/Switch;

    invoke-virtual {v5}, Landroid/widget/Switch;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 902
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$24$1;->this$1:Lcom/poverka/httpFileClient/activity/SettingsActivity$24;

    iget-object v3, v3, Lcom/poverka/httpFileClient/activity/SettingsActivity$24;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v3}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$24$1;->this$1:Lcom/poverka/httpFileClient/activity/SettingsActivity$24;

    iget-object v4, v4, Lcom/poverka/httpFileClient/activity/SettingsActivity$24;->val$settings:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$24$1;->this$1:Lcom/poverka/httpFileClient/activity/SettingsActivity$24;

    iget-object v5, v5, Lcom/poverka/httpFileClient/activity/SettingsActivity$24;->val$jsonSettings:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/poverka/httpFileClient/util/MyFileReader;->writeInternalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$24$1;->this$1:Lcom/poverka/httpFileClient/activity/SettingsActivity$24;

    iget-object v3, v3, Lcom/poverka/httpFileClient/activity/SettingsActivity$24;->val$dialogNew:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_1

    .line 898
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$24$1;->this$1:Lcom/poverka/httpFileClient/activity/SettingsActivity$24;

    iget-object v3, v3, Lcom/poverka/httpFileClient/activity/SettingsActivity$24;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v3}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$24$1;->this$1:Lcom/poverka/httpFileClient/activity/SettingsActivity$24;

    iget-object v4, v4, Lcom/poverka/httpFileClient/activity/SettingsActivity$24;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0f0086

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 908
    .end local v2    # "number":I
    :catch_0
    move-exception v2

    .line 909
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 910
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$24$1;->this$1:Lcom/poverka/httpFileClient/activity/SettingsActivity$24;

    iget-object v3, v3, Lcom/poverka/httpFileClient/activity/SettingsActivity$24;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v3}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$24$1;->this$1:Lcom/poverka/httpFileClient/activity/SettingsActivity$24;

    iget-object v4, v4, Lcom/poverka/httpFileClient/activity/SettingsActivity$24;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0f0065

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 906
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v2

    .line 907
    .local v2, "e":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$24$1;->this$1:Lcom/poverka/httpFileClient/activity/SettingsActivity$24;

    iget-object v3, v3, Lcom/poverka/httpFileClient/activity/SettingsActivity$24;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v3}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$24$1;->this$1:Lcom/poverka/httpFileClient/activity/SettingsActivity$24;

    iget-object v4, v4, Lcom/poverka/httpFileClient/activity/SettingsActivity$24;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0f0088

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 911
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_1
    nop

    .line 912
    :goto_2
    return-void
.end method
