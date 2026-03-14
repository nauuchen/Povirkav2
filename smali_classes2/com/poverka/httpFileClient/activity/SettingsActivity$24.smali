.class Lcom/poverka/httpFileClient/activity/SettingsActivity$24;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/SettingsActivity;->PaymentAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

.field final synthetic val$dialogNew:Landroid/app/AlertDialog;

.field final synthetic val$editPaymentAccountCurrent:Landroid/widget/EditText;

.field final synthetic val$jsonSettings:Lorg/json/JSONObject;

.field final synthetic val$settings:Ljava/io/File;

.field final synthetic val$switchPaymentAccountGenerate:Landroid/widget/Switch;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/SettingsActivity;Landroid/app/AlertDialog;Landroid/widget/EditText;Lorg/json/JSONObject;Ljava/io/File;Landroid/widget/Switch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/SettingsActivity;

    .line 879
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$24;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    iput-object p2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$24;->val$dialogNew:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$24;->val$editPaymentAccountCurrent:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$24;->val$jsonSettings:Lorg/json/JSONObject;

    iput-object p5, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$24;->val$settings:Ljava/io/File;

    iput-object p6, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$24;->val$switchPaymentAccountGenerate:Landroid/widget/Switch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .line 882
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$24;->val$dialogNew:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 883
    .local v0, "button":Landroid/widget/Button;
    new-instance v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$24$1;

    invoke-direct {v1, p0}, Lcom/poverka/httpFileClient/activity/SettingsActivity$24$1;-><init>(Lcom/poverka/httpFileClient/activity/SettingsActivity$24;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 914
    return-void
.end method
