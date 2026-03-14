.class Lcom/poverka/httpFileClient/activity/StateActivity$FreezeCheckerTask;
.super Ljava/util/TimerTask;
.source "StateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/poverka/httpFileClient/activity/StateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FreezeCheckerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/StateActivity;


# direct methods
.method private constructor <init>(Lcom/poverka/httpFileClient/activity/StateActivity;)V
    .locals 0

    .line 1340
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/StateActivity$FreezeCheckerTask;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/poverka/httpFileClient/activity/StateActivity;Lcom/poverka/httpFileClient/activity/StateActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity;
    .param p2, "x1"    # Lcom/poverka/httpFileClient/activity/StateActivity$1;

    .line 1340
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/activity/StateActivity$FreezeCheckerTask;-><init>(Lcom/poverka/httpFileClient/activity/StateActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1343
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$FreezeCheckerTask;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$200(Lcom/poverka/httpFileClient/activity/StateActivity;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->NONE:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$FreezeCheckerTask;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$200(Lcom/poverka/httpFileClient/activity/StateActivity;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->READ_DATE_TIME:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    if-eq v0, v1, :cond_0

    .line 1344
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$FreezeCheckerTask;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$308(Lcom/poverka/httpFileClient/activity/StateActivity;)I

    .line 1345
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$FreezeCheckerTask;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$300(Lcom/poverka/httpFileClient/activity/StateActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$FreezeCheckerTask;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$302(Lcom/poverka/httpFileClient/activity/StateActivity;I)I

    .line 1347
    const-string v0, "StateActivity"

    const-string v1, "REPEATING LAST MESSAGE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$FreezeCheckerTask;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$2700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/util/MySender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MySender;->repeatLastMessage()V

    .line 1351
    :cond_0
    return-void
.end method
