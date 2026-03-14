.class Lcom/poverka/httpFileClient/util/HttpFileClient$HeadDownloadServer;
.super Ljava/lang/Thread;
.source "HttpFileClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/poverka/httpFileClient/util/HttpFileClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadDownloadServer"
.end annotation


# static fields
.field private static final domain:Ljava/lang/String; = "head-point.serrp.info:9443"


# instance fields
.field private authorization:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field final synthetic this$0:Lcom/poverka/httpFileClient/util/HttpFileClient;


# direct methods
.method private constructor <init>(Lcom/poverka/httpFileClient/util/HttpFileClient;Ljava/lang/String;)V
    .locals 5
    .param p2, "path"    # Ljava/lang/String;

    .line 287
    iput-object p1, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadDownloadServer;->this$0:Lcom/poverka/httpFileClient/util/HttpFileClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 288
    const-string p1, "station_head1"

    .line 289
    .local p1, "user":Ljava/lang/String;
    const-string v0, "I8X_V..oe%OX"

    .line 290
    .local v0, "password":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "auth":Ljava/lang/String;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    .line 292
    .local v2, "encodedAuth":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Basic "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 294
    .local v3, "authHeaderValue":Ljava/lang/String;
    iput-object p2, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadDownloadServer;->path:Ljava/lang/String;

    .line 295
    iput-object v3, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadDownloadServer;->authorization:Ljava/lang/String;

    .line 296
    return-void
.end method

.method synthetic constructor <init>(Lcom/poverka/httpFileClient/util/HttpFileClient;Ljava/lang/String;Lcom/poverka/httpFileClient/util/HttpFileClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/poverka/httpFileClient/util/HttpFileClient;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/poverka/httpFileClient/util/HttpFileClient$1;

    .line 282
    invoke-direct {p0, p1, p2}, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadDownloadServer;-><init>(Lcom/poverka/httpFileClient/util/HttpFileClient;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 303
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "Downloading server https://%s/%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "head-point.serrp.info:9443"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadDownloadServer;->path:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 304
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://head-point.serrp.info:9443/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadDownloadServer;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 305
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 307
    .local v2, "httpUrlConnection":Ljava/net/HttpURLConnection;
    const-string v3, "GET"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 308
    const-string v3, "Authorization"

    iget-object v4, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadDownloadServer;->authorization:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 311
    .local v3, "responseCode":I
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_1

    .line 312
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 313
    .local v4, "responseStream":Ljava/io/InputStream;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 315
    .local v5, "responseStreamReader":Ljava/io/BufferedReader;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .local v6, "stringBuilder":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .local v8, "line":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 318
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 320
    :cond_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 321
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 322
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "Downloaded from server"

    invoke-virtual {v7, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 323
    iget-object v7, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadDownloadServer;->this$0:Lcom/poverka/httpFileClient/util/HttpFileClient;

    invoke-static {v7}, Lcom/poverka/httpFileClient/util/HttpFileClient;->access$900(Lcom/poverka/httpFileClient/util/HttpFileClient;)Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;

    move-result-object v7

    sget-object v9, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    iget-object v10, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadDownloadServer;->path:Ljava/lang/String;

    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v7, v9, v10, v11}, Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;->messageReceived(Lcom/poverka/httpFileClient/util/HttpFileClient$Type;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 324
    .end local v4    # "responseStream":Ljava/io/InputStream;
    .end local v5    # "responseStreamReader":Ljava/io/BufferedReader;
    .end local v6    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v8    # "line":Ljava/lang/String;
    goto :goto_1

    .line 325
    :cond_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem with download. Server replied HTTP code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 326
    iget-object v4, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadDownloadServer;->this$0:Lcom/poverka/httpFileClient/util/HttpFileClient;

    invoke-static {v4}, Lcom/poverka/httpFileClient/util/HttpFileClient;->access$900(Lcom/poverka/httpFileClient/util/HttpFileClient;)Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;

    move-result-object v4

    sget-object v5, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    iget-object v6, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadDownloadServer;->path:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v0}, Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;->messageReceived(Lcom/poverka/httpFileClient/util/HttpFileClient$Type;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 328
    :goto_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .end local v3    # "responseCode":I
    goto :goto_2

    .line 329
    .end local v1    # "url":Ljava/net/URL;
    .end local v2    # "httpUrlConnection":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v1

    .line 330
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadDownloadServer;->this$0:Lcom/poverka/httpFileClient/util/HttpFileClient;

    invoke-static {v2}, Lcom/poverka/httpFileClient/util/HttpFileClient;->access$900(Lcom/poverka/httpFileClient/util/HttpFileClient;)Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;

    move-result-object v2

    sget-object v3, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    iget-object v4, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadDownloadServer;->path:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v0}, Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;->messageReceived(Lcom/poverka/httpFileClient/util/HttpFileClient$Type;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 331
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 333
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method
