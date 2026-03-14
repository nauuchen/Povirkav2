.class Lcom/poverka/httpFileClient/util/HttpFileClient$UploadServer;
.super Ljava/lang/Thread;
.source "HttpFileClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/poverka/httpFileClient/util/HttpFileClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadServer"
.end annotation


# static fields
.field private static final domain:Ljava/lang/String; = "upload.serrp.info:9443"


# instance fields
.field private authorization:Ljava/lang/String;

.field private data:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field final synthetic this$0:Lcom/poverka/httpFileClient/util/HttpFileClient;


# direct methods
.method private constructor <init>(Lcom/poverka/httpFileClient/util/HttpFileClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "authorization"    # Ljava/lang/String;

    .line 342
    iput-object p1, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$UploadServer;->this$0:Lcom/poverka/httpFileClient/util/HttpFileClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 343
    iput-object p2, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$UploadServer;->path:Ljava/lang/String;

    .line 344
    iput-object p3, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$UploadServer;->data:Ljava/lang/String;

    .line 345
    iput-object p4, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$UploadServer;->authorization:Ljava/lang/String;

    .line 346
    return-void
.end method

.method synthetic constructor <init>(Lcom/poverka/httpFileClient/util/HttpFileClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/poverka/httpFileClient/util/HttpFileClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/poverka/httpFileClient/util/HttpFileClient;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Lcom/poverka/httpFileClient/util/HttpFileClient$1;

    .line 336
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/poverka/httpFileClient/util/HttpFileClient$UploadServer;-><init>(Lcom/poverka/httpFileClient/util/HttpFileClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 353
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "Uploading server https://%s/%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "upload.serrp.info:9443"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$UploadServer;->path:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 354
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://upload.serrp.info:9443/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$UploadServer;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 355
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 357
    .local v2, "httpUrlConnection":Ljava/net/HttpURLConnection;
    const-string v3, "POST"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 358
    const-string v3, "Content-Type"

    const-string v4, "application/json; charset=utf-8"

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v3, "Authorization"

    iget-object v4, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$UploadServer;->authorization:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 362
    .local v3, "request":Ljava/io/DataOutputStream;
    iget-object v4, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$UploadServer;->data:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 363
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 364
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 366
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 367
    .local v4, "responseCode":I
    const/16 v5, 0xc8

    if-ne v4, v5, :cond_1

    .line 368
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 369
    .local v5, "responseStream":Ljava/io/InputStream;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 371
    .local v6, "responseStreamReader":Ljava/io/BufferedReader;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    .local v7, "stringBuilder":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .local v9, "line":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 374
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 376
    :cond_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 377
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 378
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "Uploaded to server"

    invoke-virtual {v8, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 379
    iget-object v8, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$UploadServer;->this$0:Lcom/poverka/httpFileClient/util/HttpFileClient;

    invoke-static {v8}, Lcom/poverka/httpFileClient/util/HttpFileClient;->access$900(Lcom/poverka/httpFileClient/util/HttpFileClient;)Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;

    move-result-object v8

    sget-object v10, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    iget-object v11, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$UploadServer;->path:Ljava/lang/String;

    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v8, v10, v11, v12}, Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;->messageReceived(Lcom/poverka/httpFileClient/util/HttpFileClient$Type;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 380
    .end local v5    # "responseStream":Ljava/io/InputStream;
    .end local v6    # "responseStreamReader":Ljava/io/BufferedReader;
    .end local v7    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v9    # "line":Ljava/lang/String;
    goto :goto_1

    .line 381
    :cond_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem with upload. Server replied HTTP code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 382
    iget-object v5, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$UploadServer;->this$0:Lcom/poverka/httpFileClient/util/HttpFileClient;

    invoke-static {v5}, Lcom/poverka/httpFileClient/util/HttpFileClient;->access$900(Lcom/poverka/httpFileClient/util/HttpFileClient;)Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;

    move-result-object v5

    sget-object v6, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    iget-object v7, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$UploadServer;->path:Ljava/lang/String;

    invoke-interface {v5, v6, v7, v0}, Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;->messageReceived(Lcom/poverka/httpFileClient/util/HttpFileClient$Type;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 384
    :goto_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    .end local v3    # "request":Ljava/io/DataOutputStream;
    .end local v4    # "responseCode":I
    goto :goto_2

    .line 385
    .end local v1    # "url":Ljava/net/URL;
    .end local v2    # "httpUrlConnection":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v1

    .line 386
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$UploadServer;->this$0:Lcom/poverka/httpFileClient/util/HttpFileClient;

    invoke-static {v2}, Lcom/poverka/httpFileClient/util/HttpFileClient;->access$900(Lcom/poverka/httpFileClient/util/HttpFileClient;)Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;

    move-result-object v2

    sget-object v3, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    iget-object v4, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$UploadServer;->path:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v0}, Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;->messageReceived(Lcom/poverka/httpFileClient/util/HttpFileClient$Type;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 387
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 389
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method
