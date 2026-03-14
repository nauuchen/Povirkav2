.class Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler$2;
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

.field final synthetic val$apkName:Ljava/lang/String;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    .line 1217
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler$2;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    iput p2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler$2;->val$id:I

    iput-object p3, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler$2;->val$apkName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 1220
    invoke-static {}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$2000()Lcom/poverka/httpFileClient/util/HttpFileClient;

    move-result-object v0

    iget v1, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler$2;->val$id:I

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler$2;->val$apkName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/poverka/httpFileClient/util/HttpFileClient;->headDownloadApk(ILjava/lang/String;)V

    .line 1221
    return-void
.end method
