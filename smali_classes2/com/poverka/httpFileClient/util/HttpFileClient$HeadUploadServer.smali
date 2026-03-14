.class Lcom/poverka/httpFileClient/util/HttpFileClient$HeadUploadServer;
.super Ljava/lang/Thread;
.source "HttpFileClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/poverka/httpFileClient/util/HttpFileClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadUploadServer"
.end annotation


# static fields
.field private static final domain:Ljava/lang/String; = "head-point.serrp.info:9443"


# instance fields
.field private final authorization:Ljava/lang/String;

.field private final file:Ljava/io/File;

.field private final path:Ljava/lang/String;

.field final synthetic this$0:Lcom/poverka/httpFileClient/util/HttpFileClient;


# direct methods
.method private constructor <init>(Lcom/poverka/httpFileClient/util/HttpFileClient;Ljava/lang/String;Ljava/io/File;)V
    .locals 5
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;

    .line 398
    iput-object p1, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadUploadServer;->this$0:Lcom/poverka/httpFileClient/util/HttpFileClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 399
    const-string p1, "station_head1"

    .line 400
    .local p1, "user":Ljava/lang/String;
    const-string v0, "I8X_V..oe%OX"

    .line 401
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

    .line 402
    .local v1, "auth":Ljava/lang/String;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    .line 404
    .local v2, "encodedAuth":[B
    iput-object p2, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadUploadServer;->path:Ljava/lang/String;

    .line 405
    iput-object p3, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadUploadServer;->file:Ljava/io/File;

    .line 406
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

    iput-object v3, p0, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadUploadServer;->authorization:Ljava/lang/String;

    .line 407
    return-void
.end method

.method synthetic constructor <init>(Lcom/poverka/httpFileClient/util/HttpFileClient;Ljava/lang/String;Ljava/io/File;Lcom/poverka/httpFileClient/util/HttpFileClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/poverka/httpFileClient/util/HttpFileClient;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/io/File;
    .param p4, "x3"    # Lcom/poverka/httpFileClient/util/HttpFileClient$1;

    .line 392
    invoke-direct {p0, p1, p2, p3}, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadUploadServer;-><init>(Lcom/poverka/httpFileClient/util/HttpFileClient;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    .line 412
    move-object/from16 v1, p0

    const-string v0, "*****"

    const-string v2, "\r\n"

    .line 413
    .local v2, "lineEnd":Ljava/lang/String;
    const-string v3, "--"

    .line 414
    .local v3, "twoHyphens":Ljava/lang/String;
    const/high16 v4, 0x100000

    .line 417
    .local v4, "maxBufferSize":I
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-string v8, "%d.log"

    invoke-static {v5, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 420
    .local v5, "fileName":Ljava/lang/String;
    :try_start_0
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v11, "Uploading server https://%s/%s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const-string v13, "head-point.serrp.info:9443"

    aput-object v13, v12, v9

    iget-object v13, v1, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadUploadServer;->path:Ljava/lang/String;

    aput-object v13, v12, v6

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 421
    new-instance v6, Ljava/io/FileInputStream;

    iget-object v8, v1, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadUploadServer;->file:Ljava/io/File;

    invoke-direct {v6, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 422
    .local v6, "fileInputStream":Ljava/io/FileInputStream;
    new-instance v8, Ljava/net/URL;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "https://head-point.serrp.info:9443/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadUploadServer;->path:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 423
    .local v8, "url":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/HttpURLConnection;

    .line 425
    .local v10, "httpUrlConnection":Ljava/net/HttpURLConnection;
    const-string v11, "POST"

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 426
    const-string v11, "Content-Type"

    const-string v12, "multipart/form-data;boundary=*****"

    invoke-virtual {v10, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v11, "file"

    invoke-virtual {v10, v11, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v11, "Authorization"

    iget-object v12, v1, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadUploadServer;->authorization:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    new-instance v11, Ljava/io/DataOutputStream;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 431
    .local v11, "request":Ljava/io/DataOutputStream;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 432
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Content-Disposition: form-data; name=\"file\";filename=\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v11, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v6}, Ljava/io/FileInputStream;->available()I

    move-result v12

    .line 438
    .local v12, "bytesAvailable":I
    invoke-static {v12, v4}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 439
    .local v13, "bufferSize":I
    new-array v14, v13, [B

    .line 442
    .local v14, "buffer":[B
    invoke-virtual {v6, v14, v9, v13}, Ljava/io/FileInputStream;->read([BII)I

    move-result v15
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 444
    .local v15, "bytesRead":I
    :goto_0
    if-lez v15, :cond_0

    .line 445
    :try_start_1
    invoke-virtual {v11, v14, v9, v13}, Ljava/io/DataOutputStream;->write([BII)V

    .line 446
    invoke-virtual {v6}, Ljava/io/FileInputStream;->available()I

    move-result v16

    move/from16 v12, v16

    .line 447
    invoke-static {v12, v4}, Ljava/lang/Math;->min(II)I

    move-result v16

    move/from16 v13, v16

    .line 448
    invoke-virtual {v6, v14, v9, v13}, Ljava/io/FileInputStream;->read([BII)I

    move-result v16
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v15, v16

    goto :goto_0

    .line 477
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v8    # "url":Ljava/net/URL;
    .end local v10    # "httpUrlConnection":Ljava/net/HttpURLConnection;
    .end local v11    # "request":Ljava/io/DataOutputStream;
    .end local v12    # "bytesAvailable":I
    .end local v13    # "bufferSize":I
    .end local v14    # "buffer":[B
    .end local v15    # "bytesRead":I
    :catch_0
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v19, v4

    move-object/from16 v22, v5

    goto/16 :goto_3

    .line 452
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v8    # "url":Ljava/net/URL;
    .restart local v10    # "httpUrlConnection":Ljava/net/HttpURLConnection;
    .restart local v11    # "request":Ljava/io/DataOutputStream;
    .restart local v12    # "bytesAvailable":I
    .restart local v13    # "bufferSize":I
    .restart local v14    # "buffer":[B
    .restart local v15    # "bytesRead":I
    :cond_0
    :try_start_2
    invoke-virtual {v11, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 453
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->flush()V

    .line 456
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V

    .line 458
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 459
    .local v0, "responseCode":I
    const/16 v9, 0xc8

    if-ne v0, v9, :cond_2

    .line 460
    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v9, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v7, v9

    .line 461
    .local v7, "responseStream":Ljava/io/InputStream;
    new-instance v9, Ljava/io/BufferedReader;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-object/from16 v17, v2

    .end local v2    # "lineEnd":Ljava/lang/String;
    .local v17, "lineEnd":Ljava/lang/String;
    :try_start_3
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v9

    .line 463
    .local v2, "responseStreamReader":Ljava/io/BufferedReader;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 465
    .local v9, "stringBuilder":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v19, v18

    .local v19, "line":Ljava/lang/String;
    if-eqz v18, :cond_1

    .line 466
    move-object/from16 v18, v3

    move-object/from16 v3, v19

    move/from16 v19, v4

    .end local v4    # "maxBufferSize":I
    .local v3, "line":Ljava/lang/String;
    .local v18, "twoHyphens":Ljava/lang/String;
    .local v19, "maxBufferSize":I
    :try_start_4
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v20, v3

    .end local v3    # "line":Ljava/lang/String;
    .local v20, "line":Ljava/lang/String;
    const-string v3, "\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v3, v18

    move/from16 v4, v19

    goto :goto_1

    .line 477
    .end local v0    # "responseCode":I
    .end local v2    # "responseStreamReader":Ljava/io/BufferedReader;
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v7    # "responseStream":Ljava/io/InputStream;
    .end local v8    # "url":Ljava/net/URL;
    .end local v9    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v10    # "httpUrlConnection":Ljava/net/HttpURLConnection;
    .end local v11    # "request":Ljava/io/DataOutputStream;
    .end local v12    # "bytesAvailable":I
    .end local v13    # "bufferSize":I
    .end local v14    # "buffer":[B
    .end local v15    # "bytesRead":I
    .end local v20    # "line":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v22, v5

    goto/16 :goto_3

    .line 468
    .end local v18    # "twoHyphens":Ljava/lang/String;
    .restart local v0    # "responseCode":I
    .restart local v2    # "responseStreamReader":Ljava/io/BufferedReader;
    .local v3, "twoHyphens":Ljava/lang/String;
    .restart local v4    # "maxBufferSize":I
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v7    # "responseStream":Ljava/io/InputStream;
    .restart local v8    # "url":Ljava/net/URL;
    .restart local v9    # "stringBuilder":Ljava/lang/StringBuilder;
    .restart local v10    # "httpUrlConnection":Ljava/net/HttpURLConnection;
    .restart local v11    # "request":Ljava/io/DataOutputStream;
    .restart local v12    # "bytesAvailable":I
    .restart local v13    # "bufferSize":I
    .restart local v14    # "buffer":[B
    .restart local v15    # "bytesRead":I
    .local v19, "line":Ljava/lang/String;
    :cond_1
    move-object/from16 v18, v3

    move-object/from16 v20, v19

    move/from16 v19, v4

    .end local v3    # "twoHyphens":Ljava/lang/String;
    .end local v4    # "maxBufferSize":I
    .restart local v18    # "twoHyphens":Ljava/lang/String;
    .local v19, "maxBufferSize":I
    .restart local v20    # "line":Ljava/lang/String;
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 469
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 470
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Uploaded to server"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 471
    iget-object v3, v1, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadUploadServer;->this$0:Lcom/poverka/httpFileClient/util/HttpFileClient;

    invoke-static {v3}, Lcom/poverka/httpFileClient/util/HttpFileClient;->access$900(Lcom/poverka/httpFileClient/util/HttpFileClient;)Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;

    move-result-object v3

    sget-object v4, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    move-object/from16 v21, v2

    .end local v2    # "responseStreamReader":Ljava/io/BufferedReader;
    .local v21, "responseStreamReader":Ljava/io/BufferedReader;
    iget-object v2, v1, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadUploadServer;->path:Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-object/from16 v22, v5

    .end local v5    # "fileName":Ljava/lang/String;
    .local v22, "fileName":Ljava/lang/String;
    :try_start_6
    new-instance v5, Ljava/io/ByteArrayInputStream;

    move-object/from16 v23, v6

    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .local v23, "fileInputStream":Ljava/io/FileInputStream;
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v24, v7

    .end local v7    # "responseStream":Ljava/io/InputStream;
    .local v24, "responseStream":Ljava/io/InputStream;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v3, v4, v2, v5}, Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;->messageReceived(Lcom/poverka/httpFileClient/util/HttpFileClient$Type;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 472
    .end local v9    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v20    # "line":Ljava/lang/String;
    .end local v21    # "responseStreamReader":Ljava/io/BufferedReader;
    .end local v24    # "responseStream":Ljava/io/InputStream;
    goto :goto_2

    .line 477
    .end local v0    # "responseCode":I
    .end local v8    # "url":Ljava/net/URL;
    .end local v10    # "httpUrlConnection":Ljava/net/HttpURLConnection;
    .end local v11    # "request":Ljava/io/DataOutputStream;
    .end local v12    # "bytesAvailable":I
    .end local v13    # "bufferSize":I
    .end local v14    # "buffer":[B
    .end local v15    # "bytesRead":I
    .end local v22    # "fileName":Ljava/lang/String;
    .end local v23    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileName":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v22, v5

    .end local v5    # "fileName":Ljava/lang/String;
    .restart local v22    # "fileName":Ljava/lang/String;
    goto :goto_3

    .end local v18    # "twoHyphens":Ljava/lang/String;
    .end local v19    # "maxBufferSize":I
    .end local v22    # "fileName":Ljava/lang/String;
    .restart local v3    # "twoHyphens":Ljava/lang/String;
    .restart local v4    # "maxBufferSize":I
    .restart local v5    # "fileName":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v19, v4

    move-object/from16 v22, v5

    .end local v3    # "twoHyphens":Ljava/lang/String;
    .end local v4    # "maxBufferSize":I
    .end local v5    # "fileName":Ljava/lang/String;
    .restart local v18    # "twoHyphens":Ljava/lang/String;
    .restart local v19    # "maxBufferSize":I
    .restart local v22    # "fileName":Ljava/lang/String;
    goto :goto_3

    .line 473
    .end local v17    # "lineEnd":Ljava/lang/String;
    .end local v18    # "twoHyphens":Ljava/lang/String;
    .end local v19    # "maxBufferSize":I
    .end local v22    # "fileName":Ljava/lang/String;
    .restart local v0    # "responseCode":I
    .local v2, "lineEnd":Ljava/lang/String;
    .restart local v3    # "twoHyphens":Ljava/lang/String;
    .restart local v4    # "maxBufferSize":I
    .restart local v5    # "fileName":Ljava/lang/String;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v8    # "url":Ljava/net/URL;
    .restart local v10    # "httpUrlConnection":Ljava/net/HttpURLConnection;
    .restart local v11    # "request":Ljava/io/DataOutputStream;
    .restart local v12    # "bytesAvailable":I
    .restart local v13    # "bufferSize":I
    .restart local v14    # "buffer":[B
    .restart local v15    # "bytesRead":I
    :cond_2
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v19, v4

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    .end local v2    # "lineEnd":Ljava/lang/String;
    .end local v3    # "twoHyphens":Ljava/lang/String;
    .end local v4    # "maxBufferSize":I
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v17    # "lineEnd":Ljava/lang/String;
    .restart local v18    # "twoHyphens":Ljava/lang/String;
    .restart local v19    # "maxBufferSize":I
    .restart local v22    # "fileName":Ljava/lang/String;
    .restart local v23    # "fileInputStream":Ljava/io/FileInputStream;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem with upload. Server replied HTTP code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 474
    iget-object v2, v1, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadUploadServer;->this$0:Lcom/poverka/httpFileClient/util/HttpFileClient;

    invoke-static {v2}, Lcom/poverka/httpFileClient/util/HttpFileClient;->access$900(Lcom/poverka/httpFileClient/util/HttpFileClient;)Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;

    move-result-object v2

    sget-object v3, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    iget-object v4, v1, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadUploadServer;->path:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;->messageReceived(Lcom/poverka/httpFileClient/util/HttpFileClient$Type;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 476
    :goto_2
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 480
    .end local v0    # "responseCode":I
    .end local v11    # "request":Ljava/io/DataOutputStream;
    .end local v12    # "bytesAvailable":I
    .end local v13    # "bufferSize":I
    .end local v14    # "buffer":[B
    .end local v15    # "bytesRead":I
    .end local v23    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 477
    .end local v8    # "url":Ljava/net/URL;
    .end local v10    # "httpUrlConnection":Ljava/net/HttpURLConnection;
    :catch_4
    move-exception v0

    goto :goto_3

    .end local v17    # "lineEnd":Ljava/lang/String;
    .end local v18    # "twoHyphens":Ljava/lang/String;
    .end local v19    # "maxBufferSize":I
    .end local v22    # "fileName":Ljava/lang/String;
    .restart local v2    # "lineEnd":Ljava/lang/String;
    .restart local v3    # "twoHyphens":Ljava/lang/String;
    .restart local v4    # "maxBufferSize":I
    .restart local v5    # "fileName":Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v19, v4

    move-object/from16 v22, v5

    .line 478
    .end local v2    # "lineEnd":Ljava/lang/String;
    .end local v3    # "twoHyphens":Ljava/lang/String;
    .end local v4    # "maxBufferSize":I
    .end local v5    # "fileName":Ljava/lang/String;
    .local v0, "e":Ljava/io/IOException;
    .restart local v17    # "lineEnd":Ljava/lang/String;
    .restart local v18    # "twoHyphens":Ljava/lang/String;
    .restart local v19    # "maxBufferSize":I
    .restart local v22    # "fileName":Ljava/lang/String;
    :goto_3
    iget-object v2, v1, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadUploadServer;->this$0:Lcom/poverka/httpFileClient/util/HttpFileClient;

    invoke-static {v2}, Lcom/poverka/httpFileClient/util/HttpFileClient;->access$900(Lcom/poverka/httpFileClient/util/HttpFileClient;)Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;

    move-result-object v2

    sget-object v3, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    iget-object v4, v1, Lcom/poverka/httpFileClient/util/HttpFileClient$HeadUploadServer;->path:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;->messageReceived(Lcom/poverka/httpFileClient/util/HttpFileClient$Type;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 479
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 481
    .end local v0    # "e":Ljava/io/IOException;
    :goto_4
    return-void
.end method
