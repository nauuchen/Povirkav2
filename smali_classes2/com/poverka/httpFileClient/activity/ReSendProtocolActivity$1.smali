.class Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$1;
.super Ljava/lang/Object;
.source "ReSendProtocolActivity.java"

# interfaces
.implements Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;

    .line 61
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageReceived(Lcom/poverka/httpFileClient/util/HttpFileClient$Type;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 9
    .param p1, "type"    # Lcom/poverka/httpFileClient/util/HttpFileClient$Type;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "stream"    # Ljava/io/InputStream;

    .line 64
    const-string v0, "archive"

    const-string v1, "alert"

    const-string v2, "ReSendProtocolActivity"

    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;

    invoke-static {v3}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->access$100(Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;)Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$UiHandler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$UiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 65
    .local v3, "msg":Landroid/os/Message;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 67
    .local v5, "bundle":Landroid/os/Bundle;
    :try_start_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const v7, 0x7f0f0177

    const-string v8, "\u0443\u0441\u043f\u0435\u0448\u043d\u043e"

    if-eqz v6, :cond_0

    :try_start_1
    sget-object v6, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->UPLOAD:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne p1, v6, :cond_0

    if-eqz p3, :cond_0

    .line 68
    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;

    invoke-virtual {v0, v7}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v3, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 71
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->access$100(Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;)Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$UiHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$UiHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 72
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->DELETE:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne p1, v6, :cond_2

    if-eqz p3, :cond_2

    .line 73
    invoke-static {p3}, Lcom/poverka/httpFileClient/util/HttpFileClient;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "input":Ljava/lang/String;
    const-string v6, "<tr><td>"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 75
    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;

    invoke-virtual {v6, v7}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v3, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 78
    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->access$100(Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;)Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$UiHandler;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$UiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 80
    .end local v0    # "input":Ljava/lang/String;
    :cond_1
    goto :goto_0

    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const v7, 0x7f0f0116

    const-string v8, "\u043f\u0440\u043e\u0442\u043e\u043a\u043e\u043b \u043d\u0435 \u043d\u0430\u0439\u0434\u0435\u043d"

    if-eqz v6, :cond_3

    :try_start_2
    sget-object v6, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->UPLOAD:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne p1, v6, :cond_3

    if-nez p3, :cond_3

    .line 81
    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;

    invoke-virtual {v0, v7}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v3, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 84
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->access$100(Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;)Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$UiHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$UiHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->DELETE:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne p1, v0, :cond_4

    if-nez p3, :cond_4

    .line 86
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->access$208(Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;)I

    .line 87
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->access$200(Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;)I

    move-result v0

    const/4 v6, 0x2

    if-ne v0, v6, :cond_4

    .line 88
    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;

    invoke-virtual {v0, v7}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v3, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 91
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->access$100(Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;)Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$UiHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$UiHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 100
    :cond_4
    :goto_0
    goto :goto_1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "Error in HTTP receiver"

    invoke-static {v2, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    const-string v6, "\u043e\u0448\u0438\u0431\u043a\u0430"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;

    const v7, 0x7f0f0065

    invoke-virtual {v6, v7}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, ""

    aput-object v8, v7, v4

    invoke-static {v2, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v3, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 99
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->access$100(Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;)Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$UiHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$UiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 101
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method
