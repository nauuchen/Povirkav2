.class public Lcom/poverka/httpFileClient/util/HttpFileClient;
.super Ljava/lang/Object;
.source "HttpFileClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;,
        Lcom/poverka/httpFileClient/util/HttpFileClient$ShowThread;,
        Lcom/poverka/httpFileClient/util/HttpFileClient$HeadDownloadApk;,
        Lcom/poverka/httpFileClient/util/HttpFileClient$HeadUploadServer;,
        Lcom/poverka/httpFileClient/util/HttpFileClient$UploadServer;,
        Lcom/poverka/httpFileClient/util/HttpFileClient$HeadDownloadServer;,
        Lcom/poverka/httpFileClient/util/HttpFileClient$DownloadServer;,
        Lcom/poverka/httpFileClient/util/HttpFileClient$DownloadThread;,
        Lcom/poverka/httpFileClient/util/HttpFileClient$UploadThread;,
        Lcom/poverka/httpFileClient/util/HttpFileClient$DeleteThread;,
        Lcom/poverka/httpFileClient/util/HttpFileClient$Type;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1000


# instance fields
.field private final mMessageListener:Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;


# direct methods
.method public constructor <init>(Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;)V
    .locals 0
    .param p1, "listener"    # Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/poverka/httpFileClient/util/HttpFileClient;->mMessageListener:Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;

    .line 58
    return-void
.end method

.method static synthetic access$900(Lcom/poverka/httpFileClient/util/HttpFileClient;)Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/util/HttpFileClient;

    .line 44
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/HttpFileClient;->mMessageListener:Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;

    return-object v0
.end method

.method public static inputStreamToByteArray(Ljava/io/InputStream;)[B
    .locals 5
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 617
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 618
    .local v0, "result":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 620
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "length":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 621
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 623
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 607
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 608
    .local v0, "result":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 610
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "length":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 611
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 613
    :cond_0
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .line 61
    new-instance v0, Lcom/poverka/httpFileClient/util/HttpFileClient$DeleteThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/poverka/httpFileClient/util/HttpFileClient$DeleteThread;-><init>(Lcom/poverka/httpFileClient/util/HttpFileClient;Ljava/lang/String;Lcom/poverka/httpFileClient/util/HttpFileClient$1;)V

    .line 62
    .local v0, "thread":Lcom/poverka/httpFileClient/util/HttpFileClient$DeleteThread;
    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/HttpFileClient$DeleteThread;->start()V

    .line 63
    return-void
.end method

.method public download(Ljava/lang/String;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/poverka/httpFileClient/util/HttpFileClient$DownloadThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/poverka/httpFileClient/util/HttpFileClient$DownloadThread;-><init>(Lcom/poverka/httpFileClient/util/HttpFileClient;Ljava/lang/String;Lcom/poverka/httpFileClient/util/HttpFileClient$1;)V

    .line 72
    .local v0, "thread":Lcom/poverka/httpFileClient/util/HttpFileClient$DownloadThread;
    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/HttpFileClient$DownloadThread;->start()V

    .line 73
    return-void
.end method

.method public downloadServer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "authorization"    # Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/poverka/httpFileClient/util/HttpFileClient$DownloadServer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/poverka/httpFileClient/util/HttpFileClient$DownloadServer;-><init>(Lcom/poverka/httpFileClient/util/HttpFileClient;Ljava/lang/String;Ljava/lang/String;Lcom/poverka/httpFileClient/util/HttpFileClient$1;)V

    .line 77
    .local v0, "thread":Lcom/poverka/httpFileClient/util/HttpFileClient$DownloadServer;
    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/HttpFileClient$DownloadServer;->start()V

    .line 78
    return-void
.end method

.method public headDownloadApk(ILjava/lang/String;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "apkName"    # Ljava/lang/String;

    .line 96
    new-instance v0, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadDownloadApk;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadDownloadApk;-><init>(Lcom/poverka/httpFileClient/util/HttpFileClient;ILjava/lang/String;Lcom/poverka/httpFileClient/util/HttpFileClient$1;)V

    .line 97
    .local v0, "thread":Lcom/poverka/httpFileClient/util/HttpFileClient$HeadDownloadApk;
    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadDownloadApk;->start()V

    .line 98
    return-void
.end method

.method public headDownloadServer(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 81
    new-instance v0, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadDownloadServer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadDownloadServer;-><init>(Lcom/poverka/httpFileClient/util/HttpFileClient;Ljava/lang/String;Lcom/poverka/httpFileClient/util/HttpFileClient$1;)V

    .line 82
    .local v0, "thread":Lcom/poverka/httpFileClient/util/HttpFileClient$HeadDownloadServer;
    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadDownloadServer;->start()V

    .line 83
    return-void
.end method

.method public headUploadServer(Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .line 91
    new-instance v0, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadUploadServer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadUploadServer;-><init>(Lcom/poverka/httpFileClient/util/HttpFileClient;Ljava/lang/String;Ljava/io/File;Lcom/poverka/httpFileClient/util/HttpFileClient$1;)V

    .line 92
    .local v0, "thread":Lcom/poverka/httpFileClient/util/HttpFileClient$HeadUploadServer;
    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadUploadServer;->start()V

    .line 93
    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 101
    new-instance v0, Lcom/poverka/httpFileClient/util/HttpFileClient$ShowThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/poverka/httpFileClient/util/HttpFileClient$ShowThread;-><init>(Lcom/poverka/httpFileClient/util/HttpFileClient;Ljava/lang/String;Lcom/poverka/httpFileClient/util/HttpFileClient$1;)V

    .line 102
    .local v0, "thread":Lcom/poverka/httpFileClient/util/HttpFileClient$ShowThread;
    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/HttpFileClient$ShowThread;->start()V

    .line 103
    return-void
.end method

.method public upload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/poverka/httpFileClient/util/HttpFileClient$UploadThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/poverka/httpFileClient/util/HttpFileClient$UploadThread;-><init>(Lcom/poverka/httpFileClient/util/HttpFileClient;Ljava/lang/String;Ljava/lang/String;Lcom/poverka/httpFileClient/util/HttpFileClient$1;)V

    .line 67
    .local v0, "thread":Lcom/poverka/httpFileClient/util/HttpFileClient$UploadThread;
    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/HttpFileClient$UploadThread;->start()V

    .line 68
    return-void
.end method

.method public uploadServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "authorization"    # Ljava/lang/String;

    .line 86
    new-instance v6, Lcom/poverka/httpFileClient/util/HttpFileClient$UploadServer;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/poverka/httpFileClient/util/HttpFileClient$UploadServer;-><init>(Lcom/poverka/httpFileClient/util/HttpFileClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/poverka/httpFileClient/util/HttpFileClient$1;)V

    .line 87
    .local v0, "thread":Lcom/poverka/httpFileClient/util/HttpFileClient$UploadServer;
    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/HttpFileClient$UploadServer;->start()V

    .line 88
    return-void
.end method
