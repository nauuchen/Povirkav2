.class Lcom/poverka/httpFileClient/activity/MeasurementActivity$1;
.super Ljava/lang/Object;
.source "MeasurementActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/MeasurementActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    .line 179
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 179
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$1;->onChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onChanged(Ljava/lang/String;)V
    .locals 5
    .param p1, "val"    # Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    new-instance v1, Lcom/poverka/httpFileClient/util/TcpClient;

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    iget-object v2, v2, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mTcpReceived:Lcom/poverka/httpFileClient/util/TcpClient$OnMessageReceived;

    invoke-direct {v1, v2}, Lcom/poverka/httpFileClient/util/TcpClient;-><init>(Lcom/poverka/httpFileClient/util/TcpClient$OnMessageReceived;)V

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$102(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Lcom/poverka/httpFileClient/util/TcpClient;)Lcom/poverka/httpFileClient/util/TcpClient;

    .line 183
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$100(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/TcpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/TcpClient;->start()V

    .line 184
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$200(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Z

    move-result v0

    const-string v1, "Reset"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "connected"

    invoke-static {v0, v1, v3}, Lcom/poverka/httpFileClient/util/MyFileReader;->appendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v0, "Connected after reset"

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$300(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v0, v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$402(Lcom/poverka/httpFileClient/activity/MeasurementActivity;I)I

    .line 189
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    new-instance v1, Lcom/poverka/httpFileClient/util/MySender;

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$100(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/TcpClient;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/poverka/httpFileClient/util/MySender;-><init>(Lcom/poverka/httpFileClient/util/TcpClient;)V

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$502(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Lcom/poverka/httpFileClient/util/MySender;)Lcom/poverka/httpFileClient/util/MySender;

    .line 190
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/MySender;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/poverka/httpFileClient/util/MySender;->createSendString(Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const v4, 0x7f0f00ed

    invoke-virtual {v3, v4}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 193
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "NOT connected"

    invoke-static {v0, v1, v2}, Lcom/poverka/httpFileClient/util/MyFileReader;->appendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v0, "Not connected after reset"

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$300(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$600(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)V

    .line 197
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/poverka/httpFileClient/activity/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 200
    const/4 v1, 0x1

    const-string v2, "EXIT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 201
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-virtual {v1, v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->startActivity(Landroid/content/Intent;)V

    .line 203
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void
.end method
