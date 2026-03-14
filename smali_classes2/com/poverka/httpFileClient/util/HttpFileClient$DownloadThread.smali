.class Lcom/poverka/httpFileClient/util/HttpFileClient$DownloadThread;
.super Ljava/lang/Thread;
.source "HttpFileClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/poverka/httpFileClient/util/HttpFileClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadThread"
.end annotation


# instance fields
.field private filePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/poverka/httpFileClient/util/HttpFileClient;


# direct methods
.method private constructor <init>(Lcom/poverka/httpFileClient/util/HttpFileClient;Ljava/lang/String;)V
    .locals 0
    .param p2, "filePath"    # Ljava/lang/String;

    .line 214
    iput-object p1, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$DownloadThread;->this$0:Lcom/poverka/httpFileClient/util/HttpFileClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 215
    iput-object p2, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$DownloadThread;->filePath:Ljava/lang/String;

    .line 216
    return-void
.end method

.method synthetic constructor <init>(Lcom/poverka/httpFileClient/util/HttpFileClient;Ljava/lang/String;Lcom/poverka/httpFileClient/util/HttpFileClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/poverka/httpFileClient/util/HttpFileClient;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/poverka/httpFileClient/util/HttpFileClient$1;

    .line 211
    invoke-direct {p0, p1, p2}, Lcom/poverka/httpFileClient/util/HttpFileClient$DownloadThread;-><init>(Lcom/poverka/httpFileClient/util/HttpFileClient;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 220
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 221
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "Downloading http://%s/%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/poverka/httpFileClient/activity/MainActivity;->IP:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$DownloadThread;->filePath:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 222
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/poverka/httpFileClient/activity/MainActivity;->IP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$DownloadThread;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 223
    .local v0, "inputStream":Ljava/io/BufferedInputStream;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "File downloaded"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$DownloadThread;->this$0:Lcom/poverka/httpFileClient/util/HttpFileClient;

    invoke-static {v1}, Lcom/poverka/httpFileClient/util/HttpFileClient;->access$900(Lcom/poverka/httpFileClient/util/HttpFileClient;)Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;

    move-result-object v1

    sget-object v2, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->DOWNLOAD:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    iget-object v3, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$DownloadThread;->filePath:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;->messageReceived(Lcom/poverka/httpFileClient/util/HttpFileClient$Type;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 225
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v0    # "inputStream":Ljava/io/BufferedInputStream;
    goto :goto_1

    .line 226
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "No file to download."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 229
    iget-object v1, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$DownloadThread;->this$0:Lcom/poverka/httpFileClient/util/HttpFileClient;

    invoke-static {v1}, Lcom/poverka/httpFileClient/util/HttpFileClient;->access$900(Lcom/poverka/httpFileClient/util/HttpFileClient;)Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;

    move-result-object v1

    sget-object v2, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->DOWNLOAD:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    iget-object v3, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$DownloadThread;->filePath:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;->messageReceived(Lcom/poverka/httpFileClient/util/HttpFileClient$Type;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 231
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
