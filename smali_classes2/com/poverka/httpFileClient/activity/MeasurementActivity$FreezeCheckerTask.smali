.class Lcom/poverka/httpFileClient/activity/MeasurementActivity$FreezeCheckerTask;
.super Ljava/util/TimerTask;
.source "MeasurementActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/poverka/httpFileClient/activity/MeasurementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FreezeCheckerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;


# direct methods
.method private constructor <init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)V
    .locals 0

    .line 1313
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$FreezeCheckerTask;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Lcom/poverka/httpFileClient/activity/MeasurementActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;
    .param p2, "x1"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity$1;

    .line 1313
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$FreezeCheckerTask;-><init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1316
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$FreezeCheckerTask;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$700(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->NONE:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    if-eq v0, v1, :cond_1

    .line 1317
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$FreezeCheckerTask;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$808(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)I

    .line 1318
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$FreezeCheckerTask;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$800(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1319
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$FreezeCheckerTask;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$802(Lcom/poverka/httpFileClient/activity/MeasurementActivity;I)I

    .line 1320
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$FreezeCheckerTask;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$408(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)I

    .line 1321
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$FreezeCheckerTask;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$400(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "MeasurementActivity"

    if-ge v0, v1, :cond_0

    .line 1322
    const-string v0, "REPEATING LAST MESSAGE"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$FreezeCheckerTask;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/MySender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MySender;->repeatLastMessage()V

    goto :goto_2

    .line 1325
    :cond_0
    const-string v0, "RESETTING TCP CLIENT"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    :try_start_0
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$FreezeCheckerTask;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$100(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/TcpClient;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/util/TcpClient;->stopClient(Z)V

    .line 1328
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$FreezeCheckerTask;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$100(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/TcpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/TcpClient;->interrupt()V

    .line 1329
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1333
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1330
    :catch_0
    move-exception v0

    .line 1331
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1333
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$FreezeCheckerTask;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$2900(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$FreezeCheckerTask;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/MySender;

    move-result-object v1

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/util/MySender;->getLastMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 1334
    goto :goto_2

    .line 1333
    :goto_1
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$FreezeCheckerTask;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$2900(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$FreezeCheckerTask;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/MySender;

    move-result-object v2

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/util/MySender;->getLastMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 1334
    throw v0

    .line 1338
    :cond_1
    :goto_2
    return-void
.end method
