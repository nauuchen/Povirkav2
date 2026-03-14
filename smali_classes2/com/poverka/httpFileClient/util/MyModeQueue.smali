.class public Lcom/poverka/httpFileClient/util/MyModeQueue;
.super Ljava/lang/Object;
.source "MyModeQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/poverka/httpFileClient/util/MyModeQueue$UpdateModeTask;,
        Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;
    }
.end annotation


# instance fields
.field private final modeQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;",
            ">;"
        }
    .end annotation
.end field

.field private final requestMode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;",
            ">;"
        }
    .end annotation
.end field

.field private final updateModeTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/MutableLiveData;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;",
            ">;)V"
        }
    .end annotation

    .line 37
    .local p1, "mode":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/poverka/httpFileClient/util/MyModeQueue;->modeQueue:Ljava/util/Queue;

    .line 39
    iput-object p1, p0, Lcom/poverka/httpFileClient/util/MyModeQueue;->requestMode:Landroidx/lifecycle/MutableLiveData;

    .line 41
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/poverka/httpFileClient/util/MyModeQueue;->updateModeTimer:Ljava/util/Timer;

    .line 42
    new-instance v2, Lcom/poverka/httpFileClient/util/MyModeQueue$UpdateModeTask;

    invoke-direct {v2, p0}, Lcom/poverka/httpFileClient/util/MyModeQueue$UpdateModeTask;-><init>(Lcom/poverka/httpFileClient/util/MyModeQueue;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 44
    sget-object v0, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->NONE:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/poverka/httpFileClient/util/MyModeQueue;)Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/util/MyModeQueue;

    .line 10
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/MyModeQueue;->requestMode:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method static synthetic access$100(Lcom/poverka/httpFileClient/util/MyModeQueue;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/util/MyModeQueue;

    .line 10
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/MyModeQueue;->modeQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$200(Lcom/poverka/httpFileClient/util/MyModeQueue;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/util/MyModeQueue;

    .line 10
    invoke-direct {p0}, Lcom/poverka/httpFileClient/util/MyModeQueue;->updateMode()V

    return-void
.end method

.method private updateMode()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/MyModeQueue;->modeQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/MyModeQueue;->requestMode:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->NONE:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/MyModeQueue;->requestMode:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/poverka/httpFileClient/util/MyModeQueue;->modeQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 84
    :goto_0
    return-void
.end method


# virtual methods
.method public add(Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;)V
    .locals 1
    .param p1, "mode"    # Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    .line 48
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/MyModeQueue;->modeQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public contains(Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;)Z
    .locals 1
    .param p1, "mode"    # Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    .line 52
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/MyModeQueue;->modeQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public endMode()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/MyModeQueue;->modeQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/MyModeQueue;->modeQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/poverka/httpFileClient/util/MyModeQueue;->updateMode()V

    .line 75
    return-void
.end method

.method public stop()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/MyModeQueue;->modeQueue:Ljava/util/Queue;

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 66
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/util/MyModeQueue;->endMode()V

    .line 68
    :cond_0
    return-void
.end method

.method public stopAndClear()V
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/util/MyModeQueue;->stop()V

    .line 57
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/MyModeQueue;->updateModeTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 59
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/MyModeQueue;->updateModeTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 61
    :cond_0
    return-void
.end method
