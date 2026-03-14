.class Lcom/poverka/httpFileClient/util/HttpFileClient$HeadDownloadApk;
.super Ljava/lang/Thread;
.source "HttpFileClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/poverka/httpFileClient/util/HttpFileClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadDownloadApk"
.end annotation


# static fields
.field private static final domain:Ljava/lang/String; = "head-point.serrp.info:9443"


# instance fields
.field private apkName:Ljava/lang/String;

.field private authorization:Ljava/lang/String;

.field private id:I

.field final synthetic this$0:Lcom/poverka/httpFileClient/util/HttpFileClient;


# direct methods
.method private constructor <init>(Lcom/poverka/httpFileClient/util/HttpFileClient;ILjava/lang/String;)V
    .locals 5
    .param p2, "id"    # I
    .param p3, "apkName"    # Ljava/lang/String;

    .line 490
    iput-object p1, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadDownloadApk;->this$0:Lcom/poverka/httpFileClient/util/HttpFileClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 491
    const-string p1, "station_head1"

    .line 492
    .local p1, "user":Ljava/lang/String;
    const-string v0, "I8X_V..oe%OX"

    .line 493
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

    .line 494
    .local v1, "auth":Ljava/lang/String;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    .line 495
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

    .line 497
    .local v3, "authHeaderValue":Ljava/lang/String;
    iput p2, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadDownloadApk;->id:I

    .line 498
    iput-object v3, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadDownloadApk;->authorization:Ljava/lang/String;

    .line 499
    iput-object p3, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadDownloadApk;->apkName:Ljava/lang/String;

    .line 500
    return-void
.end method

.method synthetic constructor <init>(Lcom/poverka/httpFileClient/util/HttpFileClient;ILjava/lang/String;Lcom/poverka/httpFileClient/util/HttpFileClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/poverka/httpFileClient/util/HttpFileClient;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/poverka/httpFileClient/util/HttpFileClient$1;

    .line 484
    invoke-direct {p0, p1, p2, p3}, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadDownloadApk;-><init>(Lcom/poverka/httpFileClient/util/HttpFileClient;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .line 503
    move-object/from16 v1, p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, v1, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadDownloadApk;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "apk/download/%d"

    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 505
    .local v3, "path":Ljava/lang/String;
    :try_start_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v7, "Downloading apk https://%s/%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "head-point.serrp.info:9443"

    aput-object v9, v8, v5

    aput-object v3, v8, v2

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 506
    new-instance v0, Ljava/io/File;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iget-object v6, v1, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadDownloadApk;->apkName:Ljava/lang/String;

    invoke-direct {v0, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 507
    .local v0, "apkFile":Ljava/io/File;
    new-instance v2, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "https://head-point.serrp.info:9443/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 509
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 510
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 513
    :cond_0
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    .line 515
    .local v6, "httpUrlConnection":Ljava/net/HttpURLConnection;
    const-string v7, "GET"

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 516
    const-string v7, "Connection"

    const-string v8, "Keep-Alive"

    invoke-virtual {v6, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string v7, "Cache-Control"

    const-string v8, "no-cache"

    invoke-virtual {v6, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v7, "Authorization"

    iget-object v8, v1, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadDownloadApk;->authorization:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 521
    .local v7, "responseCode":I
    const/16 v8, 0xc8

    if-ne v7, v8, :cond_2

    .line 522
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v8

    .line 523
    .local v8, "fileLength":I
    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 524
    .local v9, "responseStream":Ljava/io/InputStream;
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 526
    .local v10, "output":Ljava/io/OutputStream;
    iget-object v11, v1, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadDownloadApk;->this$0:Lcom/poverka/httpFileClient/util/HttpFileClient;

    invoke-static {v11}, Lcom/poverka/httpFileClient/util/HttpFileClient;->access$900(Lcom/poverka/httpFileClient/util/HttpFileClient;)Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;

    move-result-object v11

    sget-object v12, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    new-instance v13, Ljava/io/ByteArrayInputStream;

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v15, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-direct {v13, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v11, v12, v3, v13}, Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;->messageReceived(Lcom/poverka/httpFileClient/util/HttpFileClient$Type;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 528
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 529
    .local v4, "data":[B
    const-wide/16 v11, 0x0

    .line 531
    .local v11, "total":J
    :goto_0
    invoke-virtual {v9, v4}, Ljava/io/InputStream;->read([B)I

    move-result v13

    move v15, v13

    .local v15, "count":I
    if-eq v13, v14, :cond_1

    .line 532
    move-object/from16 v16, v6

    .end local v6    # "httpUrlConnection":Ljava/net/HttpURLConnection;
    .local v16, "httpUrlConnection":Ljava/net/HttpURLConnection;
    int-to-long v5, v15

    add-long/2addr v11, v5

    .line 533
    const-wide/16 v5, 0x64

    mul-long v5, v5, v11

    int-to-long v13, v8

    div-long/2addr v5, v13

    long-to-int v6, v5

    .line 534
    .local v6, "progress":I
    iget-object v5, v1, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadDownloadApk;->this$0:Lcom/poverka/httpFileClient/util/HttpFileClient;

    invoke-static {v5}, Lcom/poverka/httpFileClient/util/HttpFileClient;->access$900(Lcom/poverka/httpFileClient/util/HttpFileClient;)Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;

    move-result-object v5

    sget-object v13, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    new-instance v14, Ljava/io/ByteArrayInputStream;

    move-object/from16 v17, v0

    .end local v0    # "apkFile":Ljava/io/File;
    .local v17, "apkFile":Ljava/io/File;
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v2

    .end local v2    # "url":Ljava/net/URL;
    .local v18, "url":Ljava/net/URL;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-direct {v14, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v5, v13, v3, v14}, Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;->messageReceived(Lcom/poverka/httpFileClient/util/HttpFileClient$Type;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 535
    const/4 v0, 0x0

    invoke-virtual {v10, v4, v0, v15}, Ljava/io/OutputStream;->write([BII)V

    .line 536
    .end local v6    # "progress":I
    move-object/from16 v6, v16

    move-object/from16 v0, v17

    move-object/from16 v2, v18

    const/4 v5, 0x0

    const/4 v14, -0x1

    goto :goto_0

    .line 538
    .end local v16    # "httpUrlConnection":Ljava/net/HttpURLConnection;
    .end local v17    # "apkFile":Ljava/io/File;
    .end local v18    # "url":Ljava/net/URL;
    .restart local v0    # "apkFile":Ljava/io/File;
    .restart local v2    # "url":Ljava/net/URL;
    .local v6, "httpUrlConnection":Ljava/net/HttpURLConnection;
    :cond_1
    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v16, v6

    .end local v0    # "apkFile":Ljava/io/File;
    .end local v2    # "url":Ljava/net/URL;
    .end local v6    # "httpUrlConnection":Ljava/net/HttpURLConnection;
    .restart local v16    # "httpUrlConnection":Ljava/net/HttpURLConnection;
    .restart local v17    # "apkFile":Ljava/io/File;
    .restart local v18    # "url":Ljava/net/URL;
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    .line 539
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 540
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 541
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Downloaded from server"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 542
    iget-object v0, v1, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadDownloadApk;->this$0:Lcom/poverka/httpFileClient/util/HttpFileClient;

    invoke-static {v0}, Lcom/poverka/httpFileClient/util/HttpFileClient;->access$900(Lcom/poverka/httpFileClient/util/HttpFileClient;)Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;

    move-result-object v0

    sget-object v2, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, v1, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadDownloadApk;->apkName:Ljava/lang/String;

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v0, v2, v3, v5}, Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;->messageReceived(Lcom/poverka/httpFileClient/util/HttpFileClient$Type;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 543
    .end local v4    # "data":[B
    .end local v8    # "fileLength":I
    .end local v9    # "responseStream":Ljava/io/InputStream;
    .end local v10    # "output":Ljava/io/OutputStream;
    .end local v11    # "total":J
    .end local v15    # "count":I
    goto :goto_1

    .line 544
    .end local v16    # "httpUrlConnection":Ljava/net/HttpURLConnection;
    .end local v17    # "apkFile":Ljava/io/File;
    .end local v18    # "url":Ljava/net/URL;
    .restart local v0    # "apkFile":Ljava/io/File;
    .restart local v2    # "url":Ljava/net/URL;
    .restart local v6    # "httpUrlConnection":Ljava/net/HttpURLConnection;
    :cond_2
    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v16, v6

    .end local v0    # "apkFile":Ljava/io/File;
    .end local v2    # "url":Ljava/net/URL;
    .end local v6    # "httpUrlConnection":Ljava/net/HttpURLConnection;
    .restart local v16    # "httpUrlConnection":Ljava/net/HttpURLConnection;
    .restart local v17    # "apkFile":Ljava/io/File;
    .restart local v18    # "url":Ljava/net/URL;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem with download apk. Server replied HTTP code: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 545
    iget-object v0, v1, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadDownloadApk;->this$0:Lcom/poverka/httpFileClient/util/HttpFileClient;

    invoke-static {v0}, Lcom/poverka/httpFileClient/util/HttpFileClient;->access$900(Lcom/poverka/httpFileClient/util/HttpFileClient;)Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;

    move-result-object v0

    sget-object v2, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;->messageReceived(Lcom/poverka/httpFileClient/util/HttpFileClient$Type;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 547
    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    .end local v7    # "responseCode":I
    .end local v16    # "httpUrlConnection":Ljava/net/HttpURLConnection;
    .end local v17    # "apkFile":Ljava/io/File;
    .end local v18    # "url":Ljava/net/URL;
    goto :goto_2

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "YourApp"

    const-string v4, "Well that didn\'t work out so well..."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v2, v1, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadDownloadApk;->this$0:Lcom/poverka/httpFileClient/util/HttpFileClient;

    invoke-static {v2}, Lcom/poverka/httpFileClient/util/HttpFileClient;->access$900(Lcom/poverka/httpFileClient/util/HttpFileClient;)Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;

    move-result-object v2

    sget-object v4, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    const/4 v5, 0x0

    invoke-interface {v2, v4, v3, v5}, Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;->messageReceived(Lcom/poverka/httpFileClient/util/HttpFileClient$Type;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 553
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method
