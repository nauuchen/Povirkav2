.class public Lcom/poverka/httpFileClient/util/MyModeQueue$UpdateModeTask;
.super Ljava/util/TimerTask;
.source "MyModeQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/poverka/httpFileClient/util/MyModeQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateModeTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/util/MyModeQueue;


# direct methods
.method public constructor <init>(Lcom/poverka/httpFileClient/util/MyModeQueue;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/util/MyModeQueue;

    .line 86
    iput-object p1, p0, Lcom/poverka/httpFileClient/util/MyModeQueue$UpdateModeTask;->this$0:Lcom/poverka/httpFileClient/util/MyModeQueue;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/MyModeQueue$UpdateModeTask;->this$0:Lcom/poverka/httpFileClient/util/MyModeQueue;

    invoke-static {v0}, Lcom/poverka/httpFileClient/util/MyModeQueue;->access$000(Lcom/poverka/httpFileClient/util/MyModeQueue;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->NONE:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/poverka/httpFileClient/util/MyModeQueue$UpdateModeTask;->this$0:Lcom/poverka/httpFileClient/util/MyModeQueue;

    invoke-static {v0}, Lcom/poverka/httpFileClient/util/MyModeQueue;->access$100(Lcom/poverka/httpFileClient/util/MyModeQueue;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/MyModeQueue$UpdateModeTask;->this$0:Lcom/poverka/httpFileClient/util/MyModeQueue;

    invoke-static {v0}, Lcom/poverka/httpFileClient/util/MyModeQueue;->access$200(Lcom/poverka/httpFileClient/util/MyModeQueue;)V

    .line 92
    :cond_0
    return-void
.end method
