.class Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$UiHandler;
.super Landroid/os/Handler;
.source "ReSendProtocolActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UiHandler"
.end annotation


# static fields
.field private static final ALERT:I


# instance fields
.field private activity:Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;


# direct methods
.method private constructor <init>(Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;

    .line 322
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 323
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$UiHandler;->activity:Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;

    .line 324
    return-void
.end method

.method synthetic constructor <init>(Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;
    .param p2, "x1"    # Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$1;

    .line 317
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$UiHandler;-><init>(Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 328
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 330
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 331
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "alert"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 332
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$UiHandler;->activity:Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 336
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void
.end method
