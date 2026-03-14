.class Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$1;
.super Ljava/lang/Object;
.source "ResetProtocolNumberActivity.java"

# interfaces
.implements Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;

    .line 58
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageReceived(Lcom/poverka/httpFileClient/util/HttpFileClient$Type;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 22
    .param p1, "type"    # Lcom/poverka/httpFileClient/util/HttpFileClient$Type;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "stream"    # Ljava/io/InputStream;

    .line 61
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "archive"

    const-string v4, "alert"

    const-string v5, "ReSendProtocolActivity"

    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->access$100(Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;)Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$UiHandler;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$UiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 62
    .local v6, "msg":Landroid/os/Message;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 64
    .local v8, "bundle":Landroid/os/Bundle;
    :try_start_0
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    const v11, 0x7f0f0177

    if-eqz v10, :cond_1

    sget-object v10, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->DELETE:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne v2, v10, :cond_1

    if-eqz p3, :cond_1

    .line 65
    invoke-static/range {p3 .. p3}, Lcom/poverka/httpFileClient/util/HttpFileClient;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "input":Ljava/lang/String;
    const-string v10, "<tr><td>"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 67
    const-string v10, "\u0443\u0441\u043f\u0435\u0448\u043d\u043e"

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v10, v1, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;

    invoke-virtual {v10, v11}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v4, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v6, v8}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 70
    iget-object v10, v1, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;

    invoke-static {v10}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->access$100(Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;)Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$UiHandler;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$UiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 72
    .end local v0    # "input":Ljava/lang/String;
    :cond_0
    goto/16 :goto_3

    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const v12, 0x7f0f0116

    const-string v13, "\u043f\u0440\u043e\u0442\u043e\u043a\u043e\u043b \u043d\u0435 \u043d\u0430\u0439\u0434\u0435\u043d"

    if-eqz v10, :cond_2

    :try_start_1
    sget-object v10, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->DELETE:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne v2, v10, :cond_2

    if-nez p3, :cond_2

    .line 73
    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;

    invoke-virtual {v0, v12}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v6, v8}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 76
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->access$100(Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;)Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$UiHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$UiHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3

    .line 77
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    sget-object v10, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SHOW:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne v2, v10, :cond_5

    if-eqz p3, :cond_5

    .line 78
    invoke-static/range {p3 .. p3}, Lcom/poverka/httpFileClient/util/HttpFileClient;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .restart local v0    # "input":Ljava/lang/String;
    const/4 v10, 0x0

    .line 80
    .local v10, "match":Z
    const-string v12, "\n"

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 81
    .local v12, "list":[Ljava/lang/String;
    const-string v13, "\\d.cmt"

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    .line 82
    .local v13, "p":Ljava/util/regex/Pattern;
    array-length v14, v12

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v14, :cond_4

    aget-object v16, v12, v15

    move-object/from16 v17, v16

    .line 83
    .local v17, "file":Ljava/lang/String;
    move-object/from16 v11, v17

    .end local v17    # "file":Ljava/lang/String;
    .local v11, "file":Ljava/lang/String;
    invoke-virtual {v13, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 84
    const/4 v10, 0x1

    .line 85
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v7, "%s/%s"

    move-object/from16 v19, v0

    .end local v0    # "input":Ljava/lang/String;
    .local v19, "input":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v3, v0, v18

    const/16 v17, 0x1

    aput-object v11, v0, v17

    invoke-static {v9, v7, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "path":Ljava/lang/String;
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v9, "Deleting: %s"

    move/from16 v20, v10

    move-object/from16 v21, v11

    const/4 v10, 0x1

    .end local v10    # "match":Z
    .end local v11    # "file":Ljava/lang/String;
    .local v20, "match":Z
    .local v21, "file":Ljava/lang/String;
    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v11, v10

    invoke-static {v7, v9, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v7, v1, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;

    invoke-static {v7}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->access$200(Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;)Lcom/poverka/httpFileClient/util/HttpFileClient;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/poverka/httpFileClient/util/HttpFileClient;->delete(Ljava/lang/String;)V

    move/from16 v10, v20

    goto :goto_1

    .line 83
    .end local v19    # "input":Ljava/lang/String;
    .end local v20    # "match":Z
    .end local v21    # "file":Ljava/lang/String;
    .local v0, "input":Ljava/lang/String;
    .restart local v10    # "match":Z
    .restart local v11    # "file":Ljava/lang/String;
    :cond_3
    move-object/from16 v19, v0

    move-object/from16 v21, v11

    .line 82
    .end local v0    # "input":Ljava/lang/String;
    .end local v11    # "file":Ljava/lang/String;
    .restart local v19    # "input":Ljava/lang/String;
    :goto_1
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v19

    const/4 v7, 0x0

    const v11, 0x7f0f0177

    goto :goto_0

    .line 90
    .end local v19    # "input":Ljava/lang/String;
    .restart local v0    # "input":Ljava/lang/String;
    :cond_4
    move-object/from16 v19, v0

    .end local v0    # "input":Ljava/lang/String;
    .restart local v19    # "input":Ljava/lang/String;
    if-nez v10, :cond_6

    .line 91
    const-string v0, "\u0441\u0447\u0435\u0442\u0447\u0438\u043a \u0441\u0431\u0440\u043e\u0448\u0435\u043d"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;

    const v7, 0x7f0f0177

    invoke-virtual {v0, v7}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v6, v8}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 94
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->access$100(Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;)Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$UiHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$UiHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 96
    .end local v10    # "match":Z
    .end local v12    # "list":[Ljava/lang/String;
    .end local v13    # "p":Ljava/util/regex/Pattern;
    .end local v19    # "input":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SHOW:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne v2, v0, :cond_6

    if-nez p3, :cond_6

    .line 97
    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;

    invoke-virtual {v0, v12}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v6, v8}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 100
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->access$100(Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;)Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$UiHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$UiHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 96
    :cond_6
    :goto_2
    nop

    .line 108
    :goto_3
    goto :goto_4

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "Error in HTTP receiver"

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    const-string v7, "\u043e\u0448\u0438\u0431\u043a\u0430"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v7, v1, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;

    const v9, 0x7f0f0065

    invoke-virtual {v7, v9}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, ""

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v5, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v6, v8}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 107
    iget-object v4, v1, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->access$100(Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;)Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$UiHandler;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$UiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 109
    .end local v0    # "e":Ljava/io/IOException;
    :goto_4
    return-void
.end method
