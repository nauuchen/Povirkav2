.class public Lcom/poverka/httpFileClient/util/TcpClient;
.super Ljava/lang/Thread;
.source "TcpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/poverka/httpFileClient/util/TcpClient$OnMessageReceived;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static final SERVER_PORT:I = 0x17

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBufferIn:Ljava/io/BufferedReader;

.field private mBufferOut:Ljava/io/PrintWriter;

.field private mMessageListener:Lcom/poverka/httpFileClient/util/TcpClient$OnMessageReceived;

.field private mRun:Z

.field private mServerMessage:Ljava/lang/String;

.field private socket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/poverka/httpFileClient/util/TcpClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/poverka/httpFileClient/util/TcpClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/poverka/httpFileClient/util/TcpClient$OnMessageReceived;)V
    .locals 1
    .param p1, "listener"    # Lcom/poverka/httpFileClient/util/TcpClient$OnMessageReceived;

    .line 39
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/poverka/httpFileClient/util/TcpClient;->mRun:Z

    .line 40
    iput-object p1, p0, Lcom/poverka/httpFileClient/util/TcpClient;->mMessageListener:Lcom/poverka/httpFileClient/util/TcpClient$OnMessageReceived;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/poverka/httpFileClient/util/TcpClient;)Ljava/io/PrintWriter;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/util/TcpClient;

    .line 15
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/TcpClient;->mBufferOut:Ljava/io/PrintWriter;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/poverka/httpFileClient/util/TcpClient;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public isServerRunning()Z
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/TcpClient;->socket:Ljava/net/Socket;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 137
    :cond_0
    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/poverka/httpFileClient/util/TcpClient;->mRun:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public run()V
    .locals 8

    .line 86
    const-string v0, "TCP"

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/poverka/httpFileClient/util/TcpClient;->mRun:Z

    .line 90
    :try_start_0
    sget-object v2, Lcom/poverka/httpFileClient/activity/MainActivity;->IP:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 92
    .local v2, "serverAddr":Ljava/net/InetAddress;
    const-string v3, "TCP Client"

    const-string v4, "C: Connecting..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 98
    new-instance v3, Ljava/net/Socket;

    sget-object v4, Lcom/poverka/httpFileClient/activity/MainActivity;->IP:Ljava/lang/String;

    const/16 v5, 0x17

    invoke-direct {v3, v4, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/poverka/httpFileClient/util/TcpClient;->socket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 102
    const/4 v3, 0x0

    :try_start_1
    new-instance v4, Ljava/io/PrintWriter;

    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    iget-object v7, p0, Lcom/poverka/httpFileClient/util/TcpClient;->socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v4, v5, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    iput-object v4, p0, Lcom/poverka/httpFileClient/util/TcpClient;->mBufferOut:Ljava/io/PrintWriter;

    .line 105
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v5, p0, Lcom/poverka/httpFileClient/util/TcpClient;->socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lcom/poverka/httpFileClient/util/TcpClient;->mBufferIn:Ljava/io/BufferedReader;

    .line 108
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/poverka/httpFileClient/util/TcpClient;->mRun:Z

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/poverka/httpFileClient/util/TcpClient;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/poverka/httpFileClient/util/TcpClient;->mBufferIn:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/poverka/httpFileClient/util/TcpClient;->mServerMessage:Ljava/lang/String;

    .line 113
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/poverka/httpFileClient/util/TcpClient;->mMessageListener:Lcom/poverka/httpFileClient/util/TcpClient$OnMessageReceived;

    if-eqz v4, :cond_0

    .line 115
    invoke-interface {v4, v1}, Lcom/poverka/httpFileClient/util/TcpClient$OnMessageReceived;->messageReceived(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_1
    const-string v1, "RESPONSE FROM SERVER"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "S: Received Message: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/poverka/httpFileClient/util/TcpClient;->mServerMessage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    :try_start_2
    iput-boolean v3, p0, Lcom/poverka/httpFileClient/util/TcpClient;->mRun:Z

    .line 128
    iget-object v1, p0, Lcom/poverka/httpFileClient/util/TcpClient;->socket:Ljava/net/Socket;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 127
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v4, "S: Error"

    invoke-static {v0, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    .end local v1    # "e":Ljava/lang/Exception;
    :try_start_4
    iput-boolean v3, p0, Lcom/poverka/httpFileClient/util/TcpClient;->mRun:Z

    .line 128
    iget-object v1, p0, Lcom/poverka/httpFileClient/util/TcpClient;->socket:Ljava/net/Socket;

    :goto_1
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 129
    nop

    .line 132
    .end local v2    # "serverAddr":Ljava/net/InetAddress;
    goto :goto_3

    .line 127
    .restart local v2    # "serverAddr":Ljava/net/InetAddress;
    :goto_2
    iput-boolean v3, p0, Lcom/poverka/httpFileClient/util/TcpClient;->mRun:Z

    .line 128
    iget-object v3, p0, Lcom/poverka/httpFileClient/util/TcpClient;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 129
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 130
    .end local v2    # "serverAddr":Ljava/net/InetAddress;
    :catch_1
    move-exception v1

    .line 131
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v2, "C: Error"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method sendMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 49
    new-instance v0, Lcom/poverka/httpFileClient/util/TcpClient$1;

    invoke-direct {v0, p0, p1}, Lcom/poverka/httpFileClient/util/TcpClient$1;-><init>(Lcom/poverka/httpFileClient/util/TcpClient;Ljava/lang/String;)V

    .line 59
    .local v0, "runnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 60
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 61
    return-void
.end method

.method public stopClient(Z)V
    .locals 2
    .param p1, "reset"    # Z

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/poverka/httpFileClient/util/TcpClient;->mRun:Z

    .line 70
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/TcpClient;->mBufferOut:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 72
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/TcpClient;->mBufferOut:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 75
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 76
    iput-object v0, p0, Lcom/poverka/httpFileClient/util/TcpClient;->mMessageListener:Lcom/poverka/httpFileClient/util/TcpClient$OnMessageReceived;

    .line 78
    :cond_1
    iput-object v0, p0, Lcom/poverka/httpFileClient/util/TcpClient;->mBufferIn:Ljava/io/BufferedReader;

    .line 79
    iput-object v0, p0, Lcom/poverka/httpFileClient/util/TcpClient;->mBufferOut:Ljava/io/PrintWriter;

    .line 80
    iput-object v0, p0, Lcom/poverka/httpFileClient/util/TcpClient;->mServerMessage:Ljava/lang/String;

    .line 81
    const-string v0, "TCP Client"

    const-string v1, "STOP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method
