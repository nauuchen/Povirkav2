.class Lcom/poverka/httpFileClient/util/TcpClient$1;
.super Ljava/lang/Object;
.source "TcpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/util/TcpClient;->sendMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/util/TcpClient;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/util/TcpClient;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/util/TcpClient;

    .line 49
    iput-object p1, p0, Lcom/poverka/httpFileClient/util/TcpClient$1;->this$0:Lcom/poverka/httpFileClient/util/TcpClient;

    iput-object p2, p0, Lcom/poverka/httpFileClient/util/TcpClient$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/TcpClient$1;->this$0:Lcom/poverka/httpFileClient/util/TcpClient;

    invoke-static {v0}, Lcom/poverka/httpFileClient/util/TcpClient;->access$000(Lcom/poverka/httpFileClient/util/TcpClient;)Ljava/io/PrintWriter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Lcom/poverka/httpFileClient/util/TcpClient;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/poverka/httpFileClient/util/TcpClient$1;->val$message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/TcpClient$1;->this$0:Lcom/poverka/httpFileClient/util/TcpClient;

    invoke-static {v0}, Lcom/poverka/httpFileClient/util/TcpClient;->access$000(Lcom/poverka/httpFileClient/util/TcpClient;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/poverka/httpFileClient/util/TcpClient$1;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/TcpClient$1;->this$0:Lcom/poverka/httpFileClient/util/TcpClient;

    invoke-static {v0}, Lcom/poverka/httpFileClient/util/TcpClient;->access$000(Lcom/poverka/httpFileClient/util/TcpClient;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 57
    :cond_0
    return-void
.end method
