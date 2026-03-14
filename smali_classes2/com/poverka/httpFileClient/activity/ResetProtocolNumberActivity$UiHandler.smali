.class Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$UiHandler;
.super Landroid/os/Handler;
.source "ResetProtocolNumberActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UiHandler"
.end annotation


# static fields
.field private static final ALERT:I


# instance fields
.field private activity:Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;


# direct methods
.method private constructor <init>(Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;

    .line 272
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 273
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$UiHandler;->activity:Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;

    .line 274
    return-void
.end method

.method synthetic constructor <init>(Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;
    .param p2, "x1"    # Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$1;

    .line 267
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$UiHandler;-><init>(Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 278
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 281
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "alert"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 282
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$UiHandler;->activity:Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 286
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void
.end method
