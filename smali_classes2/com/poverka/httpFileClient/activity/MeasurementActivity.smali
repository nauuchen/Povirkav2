.class public Lcom/poverka/httpFileClient/activity/MeasurementActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MeasurementActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/poverka/httpFileClient/activity/MeasurementActivity$TapGestureListener;,
        Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;,
        Lcom/poverka/httpFileClient/activity/MeasurementActivity$FreezeCheckerTask;,
        Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;
    }
.end annotation


# static fields
.field static final ACTION_MEASUREMENT:I = 0x4

.field static final ACTION_MEASUREMENT_DONE:I = 0x5

.field static final ACTION_PARAMS:I = 0x2

.field static final ACTION_PRE_MEASUREMENT:I = 0x3

.field static final ACTION_START:I = 0x1

.field private static final BUTTON_HEIGHT_RATIO:F = 0.14f

.field private static final MARGIN_HEIGHT_RATIO:F = 0.02f

.field static final SERVICE_TYPE_COLD:I = 0x1

.field static final SERVICE_TYPE_HOT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MeasurementActivity"

.field private static final TEXT_L_HEIGHT_RATIO:F = 0.07f

.field private static final TEXT_S_HEIGHT_RATIO:F = 0.05f

.field private static mProgressDialog:Landroid/app/ProgressDialog;

.field private static progressDialogTimer:I


# instance fields
.field private final clientResult:Lcom/poverka/httpFileClient/activity/ClientActivity$OnClientResult;

.field private curMeasurementResult:Lcom/poverka/httpFileClient/measurement/MeasurementResults;

.field private finishTimer:I

.field private freezeCheckerTimer:Ljava/util/Timer;

.field private freezeRepeats:I

.field private freezeSeconds:I

.field private imageResult:Lcom/poverka/httpFileClient/activity/ImageActivity$OnImageResult;

.field private isRepeating:Z

.field private isRestoring:Z

.field private mHttpFileClient:Lcom/poverka/httpFileClient/util/HttpFileClient;

.field public mHttpReceived:Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;

.field private mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

.field private mSender:Lcom/poverka/httpFileClient/util/MySender;

.field private mTcpClient:Lcom/poverka/httpFileClient/util/TcpClient;

.field public mTcpReceived:Lcom/poverka/httpFileClient/util/TcpClient$OnMessageReceived;

.field private mUIhandler:Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;

.field private mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

.field private pager:Lcom/poverka/httpFileClient/util/MyPager;

.field private pagerAdapter:Lcom/poverka/httpFileClient/util/MyPagerAdapter;

.field private report:I

.field private final requestMode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;",
            ">;"
        }
    .end annotation
.end field

.field private final resetListener:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private screenHeight:I

.field private final senderRunnable:Ljava/lang/Runnable;

.field private senderThread:Ljava/lang/Thread;

.field private threadDelay:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 105
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->requestMode:Landroidx/lifecycle/MutableLiveData;

    .line 130
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->resetListener:Landroidx/lifecycle/MutableLiveData;

    .line 238
    new-instance v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$2;

    invoke-direct {v0, p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$2;-><init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)V

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mTcpReceived:Lcom/poverka/httpFileClient/util/TcpClient$OnMessageReceived;

    .line 278
    new-instance v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;

    invoke-direct {v0, p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$3;-><init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)V

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mHttpReceived:Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;

    .line 402
    new-instance v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$4;

    invoke-direct {v0, p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$4;-><init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)V

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->senderRunnable:Ljava/lang/Runnable;

    .line 1635
    new-instance v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$14;

    invoke-direct {v0, p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$14;-><init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)V

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->imageResult:Lcom/poverka/httpFileClient/activity/ImageActivity$OnImageResult;

    .line 1688
    new-instance v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$15;

    invoke-direct {v0, p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$15;-><init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)V

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->clientResult:Lcom/poverka/httpFileClient/activity/ClientActivity$OnClientResult;

    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 2210
    const-string v0, "MeasurementActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    return-void
.end method

.method private RepeatAfterMeasurements(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;

    .line 781
    new-instance v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$9;

    invoke-direct {v0, p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$9;-><init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 801
    return-void
.end method

.method static synthetic access$100(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/TcpClient;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    .line 80
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mTcpClient:Lcom/poverka/httpFileClient/util/TcpClient;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->measurementMode(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$102(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Lcom/poverka/httpFileClient/util/TcpClient;)Lcom/poverka/httpFileClient/util/TcpClient;
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;
    .param p1, "x1"    # Lcom/poverka/httpFileClient/util/TcpClient;

    .line 80
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mTcpClient:Lcom/poverka/httpFileClient/util/TcpClient;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->prepareMeasurementMode(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->finishMode(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->sleepTimerMode(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/poverka/httpFileClient/activity/MeasurementActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;
    .param p1, "x1"    # I

    .line 80
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->updateResultsMode(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    .line 80
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    .line 80
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mUIhandler:Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/HttpFileClient;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    .line 80
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mHttpFileClient:Lcom/poverka/httpFileClient/util/HttpFileClient;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    .line 80
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->curMeasurementResult:Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Lcom/poverka/httpFileClient/measurement/MeasurementResults;)Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;
    .param p1, "x1"    # Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    .line 80
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->curMeasurementResult:Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    .line 80
    iget v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->threadDelay:I

    return v0
.end method

.method static synthetic access$1902(Lcom/poverka/httpFileClient/activity/MeasurementActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;
    .param p1, "x1"    # I

    .line 80
    iput p1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->threadDelay:I

    return p1
.end method

.method static synthetic access$200(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    .line 80
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->isConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/MyModeQueue;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    .line 80
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    .line 80
    iget v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->report:I

    return v0
.end method

.method static synthetic access$2102(Lcom/poverka/httpFileClient/activity/MeasurementActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;
    .param p1, "x1"    # I

    .line 80
    iput p1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->report:I

    return p1
.end method

.method static synthetic access$2200(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;
    .param p1, "x1"    # Z

    .line 80
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->setViewsClickable(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/poverka/httpFileClient/activity/MeasurementActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;
    .param p1, "x1"    # I

    .line 80
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->removePagesOfMeasurement(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    .line 80
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->prepareViews()V

    return-void
.end method

.method static synthetic access$2500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/activity/ClientActivity$OnClientResult;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    .line 80
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->clientResult:Lcom/poverka/httpFileClient/activity/ClientActivity$OnClientResult;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    .line 80
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->fabClicked()V

    return-void
.end method

.method static synthetic access$2900(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    .line 80
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->resetListener:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 80
    invoke-static {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->Log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000()Landroid/app/ProgressDialog;
    .locals 1

    .line 80
    sget-object v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3100()I
    .locals 1

    .line 80
    sget v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->progressDialogTimer:I

    return v0
.end method

.method static synthetic access$3102(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 80
    sput p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->progressDialogTimer:I

    return p0
.end method

.method static synthetic access$3108()I
    .locals 2

    .line 80
    sget v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->progressDialogTimer:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->progressDialogTimer:I

    return v0
.end method

.method static synthetic access$3200(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Landroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;
    .param p1, "x1"    # Landroid/widget/TextView;

    .line 80
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->changeToDoing(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    .line 80
    iget-boolean v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->isRepeating:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Landroid/widget/TextView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # Z

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->changeToDone(Landroid/widget/TextView;Z)V

    return-void
.end method

.method static synthetic access$3500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Landroid/widget/TextView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # Z

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->changeToValid(Landroid/widget/TextView;Z)V

    return-void
.end method

.method static synthetic access$3600(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Landroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;
    .param p1, "x1"    # Landroid/widget/TextView;

    .line 80
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->changeToInvalid(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;
    .param p1, "x1"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->updatePage(Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;IZ)V

    return-void
.end method

.method static synthetic access$3800(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;I)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;
    .param p1, "x1"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;
    .param p2, "x2"    # I

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->insertPage(Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;
    .param p1, "x1"    # Z

    .line 80
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->changeTemperature(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    .line 80
    iget v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->freezeRepeats:I

    return v0
.end method

.method static synthetic access$4000(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/MyPager;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    .line 80
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->pager:Lcom/poverka/httpFileClient/util/MyPager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/poverka/httpFileClient/activity/MeasurementActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;
    .param p1, "x1"    # I

    .line 80
    iput p1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->freezeRepeats:I

    return p1
.end method

.method static synthetic access$408(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    .line 80
    iget v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->freezeRepeats:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->freezeRepeats:I

    return v0
.end method

.method static synthetic access$4100(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/MyPagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    .line 80
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->pagerAdapter:Lcom/poverka/httpFileClient/util/MyPagerAdapter;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/activity/ImageActivity$OnImageResult;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    .line 80
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->imageResult:Lcom/poverka/httpFileClient/activity/ImageActivity$OnImageResult;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/poverka/httpFileClient/activity/MeasurementActivity;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;
    .param p1, "x1"    # I

    .line 80
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->textOnImage(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Lorg/json/JSONObject;I)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->savePdfAndExcel(Lorg/json/JSONObject;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/MySender;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    .line 80
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mSender:Lcom/poverka/httpFileClient/util/MySender;

    return-object v0
.end method

.method static synthetic access$502(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Lcom/poverka/httpFileClient/util/MySender;)Lcom/poverka/httpFileClient/util/MySender;
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;
    .param p1, "x1"    # Lcom/poverka/httpFileClient/util/MySender;

    .line 80
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mSender:Lcom/poverka/httpFileClient/util/MySender;

    return-object p1
.end method

.method static synthetic access$600(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    .line 80
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->stopActivity()V

    return-void
.end method

.method static synthetic access$700(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    .line 80
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->requestMode:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method static synthetic access$800(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    .line 80
    iget v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->freezeSeconds:I

    return v0
.end method

.method static synthetic access$802(Lcom/poverka/httpFileClient/activity/MeasurementActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;
    .param p1, "x1"    # I

    .line 80
    iput p1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->freezeSeconds:I

    return p1
.end method

.method static synthetic access$808(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    .line 80
    iget v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->freezeSeconds:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->freezeSeconds:I

    return v0
.end method

.method static synthetic access$900(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->flowRateSelectionMode(Lorg/json/JSONObject;)V

    return-void
.end method

.method private changeTemperature(Z)V
    .locals 3
    .param p1, "temperatureOk"    # Z

    .line 1217
    const/16 v0, 0xa

    .line 1218
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1219
    .local v1, "v":Landroid/widget/TextView;
    if-eqz p1, :cond_0

    .line 1220
    const v2, 0x7f080069

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1221
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1223
    :cond_0
    const v2, 0x7f08006b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1224
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1226
    :goto_0
    return-void
.end method

.method private changeToDoing(Landroid/widget/TextView;)V
    .locals 4
    .param p1, "v"    # Landroid/widget/TextView;

    .line 1273
    iget v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->screenHeight:I

    int-to-float v0, v0

    const v1, 0x3ccccccd    # 0.025f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 1274
    .local v0, "textSize":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08006a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1275
    const v1, 0x7f080068

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1277
    :cond_0
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1279
    :goto_0
    const v1, 0x7f0f00b6

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1280
    const/4 v1, 0x0

    int-to-float v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1281
    return-void
.end method

.method private changeToDone(Landroid/widget/TextView;Z)V
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "statusOK"    # Z

    .line 1284
    iget v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->screenHeight:I

    int-to-float v0, v0

    const v1, 0x3d0f5c29    # 0.035f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 1285
    .local v0, "textSize":I
    if-eqz p2, :cond_0

    .line 1286
    const v1, 0x7f08006c

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1288
    :cond_0
    const v1, 0x7f08006b

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1290
    :goto_0
    const v1, 0x7f0f00b5

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1291
    const/4 v1, 0x0

    int-to-float v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1292
    return-void
.end method

.method private changeToInit(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;

    .line 1248
    iget v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->screenHeight:I

    int-to-float v0, v0

    const v1, 0x3d4ccccd    # 0.05f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 1249
    .local v0, "textSize":I
    const v1, 0x7f080068

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1250
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1251
    add-int/lit8 v1, v0, -0x6

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1252
    return-void
.end method

.method private changeToInvalid(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;

    .line 1266
    iget v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->screenHeight:I

    int-to-float v0, v0

    const v1, 0x3ccccccd    # 0.025f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 1267
    .local v0, "textSize":I
    const v1, 0x7f08006b

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1268
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1269
    int-to-float v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1270
    return-void
.end method

.method private changeToValid(Landroid/widget/TextView;Z)V
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "statusOK"    # Z

    .line 1255
    iget v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->screenHeight:I

    int-to-float v0, v0

    const v1, 0x3ccccccd    # 0.025f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 1256
    .local v0, "textSize":I
    if-eqz p2, :cond_0

    .line 1257
    const v1, 0x7f080069

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1259
    :cond_0
    const v1, 0x7f08006b

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1261
    :goto_0
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1262
    const/4 v1, 0x0

    int-to-float v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1263
    return-void
.end method

.method private circleBox(I)Landroid/widget/TextView;
    .locals 7
    .param p1, "id"    # I

    .line 1229
    iget v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->screenHeight:I

    int-to-float v1, v0

    const v2, 0x3e0f5c29    # 0.14f

    mul-float v1, v1, v2

    float-to-double v1, v1

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double v1, v1, v3

    double-to-int v1, v1

    .line 1230
    .local v1, "viewHeight":I
    int-to-float v2, v0

    const v3, 0x3d4ccccd    # 0.05f

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 1231
    .local v2, "textSize":I
    int-to-float v0, v0

    const v3, 0x3ca3d70a    # 0.02f

    mul-float v0, v0, v3

    float-to-int v0, v0

    .line 1233
    .local v0, "margin":I
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1234
    .local v3, "v":Landroid/widget/TextView;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1235
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1236
    const/4 v6, 0x3

    if-ne p1, v6, :cond_0

    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 1237
    :cond_0
    invoke-virtual {v4, v5, v5, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1238
    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1239
    const v6, 0x7f080068

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1240
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setId(I)V

    .line 1241
    add-int/lit8 v6, v2, -0x6

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1242
    const-string v5, "Q=0"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1243
    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1244
    return-object v3
.end method

.method private connect()V
    .locals 10

    .line 873
    new-instance v0, Lcom/poverka/httpFileClient/util/TcpClient;

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mTcpReceived:Lcom/poverka/httpFileClient/util/TcpClient$OnMessageReceived;

    invoke-direct {v0, v1}, Lcom/poverka/httpFileClient/util/TcpClient;-><init>(Lcom/poverka/httpFileClient/util/TcpClient$OnMessageReceived;)V

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mTcpClient:Lcom/poverka/httpFileClient/util/TcpClient;

    .line 874
    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/TcpClient;->start()V

    .line 876
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->isConnected()Z

    move-result v0

    const-string v1, "Meas"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 877
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "connected"

    invoke-static {v0, v1, v4}, Lcom/poverka/httpFileClient/util/MyFileReader;->appendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0050

    invoke-virtual {p0, v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 879
    const-string v0, "Connected"

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->Log(Ljava/lang/String;)V

    .line 881
    new-instance v0, Lcom/poverka/httpFileClient/util/HttpFileClient;

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mHttpReceived:Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;

    invoke-direct {v0, v1}, Lcom/poverka/httpFileClient/util/HttpFileClient;-><init>(Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;)V

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mHttpFileClient:Lcom/poverka/httpFileClient/util/HttpFileClient;

    .line 882
    new-instance v0, Lcom/poverka/httpFileClient/util/MySender;

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mTcpClient:Lcom/poverka/httpFileClient/util/TcpClient;

    invoke-direct {v0, v1}, Lcom/poverka/httpFileClient/util/MySender;-><init>(Lcom/poverka/httpFileClient/util/TcpClient;)V

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mSender:Lcom/poverka/httpFileClient/util/MySender;

    .line 883
    new-instance v0, Lcom/poverka/httpFileClient/util/MyModeQueue;

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->requestMode:Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0, v1}, Lcom/poverka/httpFileClient/util/MyModeQueue;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    .line 885
    new-instance v4, Ljava/util/Timer;

    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    iput-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->freezeCheckerTimer:Ljava/util/Timer;

    .line 886
    new-instance v5, Lcom/poverka/httpFileClient/activity/MeasurementActivity$FreezeCheckerTask;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$FreezeCheckerTask;-><init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Lcom/poverka/httpFileClient/activity/MeasurementActivity$1;)V

    const-wide/16 v6, 0x1388

    const-wide/16 v8, 0x3e8

    invoke-virtual/range {v4 .. v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 887
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->senderRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->senderThread:Ljava/lang/Thread;

    .line 888
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 890
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->pagerAdapter:Lcom/poverka/httpFileClient/util/MyPagerAdapter;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MyPagerAdapter;->getCount()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 891
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mUIhandler:Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;

    invoke-virtual {v0, v3}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mUIhandler:Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->sendEmptyMessage(I)Z

    .line 896
    :goto_0
    iget-boolean v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->isRestoring:Z

    if-nez v0, :cond_3

    .line 898
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 899
    .local v0, "systemJson":Lorg/json/JSONObject;
    const-string v1, "id"

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 900
    const-string v1, "personal_account"

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getPersonalAccount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 901
    const-string v1, "local"

    sget v4, Lcom/poverka/httpFileClient/activity/MainActivity;->MARKER:I

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 902
    const-string v1, "verif_number"

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getPaymentAccount()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 903
    const-string v1, "verif_today"

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getVerificationNumberToday()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 904
    const-string v1, "calibration_date"

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getVerificationDateUnix()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 905
    const-string v1, "date"

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getCurrentStationTime()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 906
    const-string v1, "test_name"

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getTestName()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 907
    const-string v1, "multiplier"

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getMultiplier()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 908
    const-string v1, "imp_liter"

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getImpLiter()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 909
    const-string v1, "report"

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 910
    const-string v1, "service_type"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 911
    const-string v1, "ver_soft"

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getVerStation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 912
    const-string v1, "ver_android"

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getVerAndroid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 913
    const-string v1, "file_count"

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 914
    const-string v1, "status_server"

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->isOnline()I

    move-result v4

    if-ne v4, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 915
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mHttpFileClient:Lcom/poverka/httpFileClient/util/HttpFileClient;

    const-string v2, "1/current/system.json"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/poverka/httpFileClient/util/HttpFileClient;->upload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "systemJson":Lorg/json/JSONObject;
    goto :goto_2

    .line 916
    :catch_0
    move-exception v0

    .line 917
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 918
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2
    goto :goto_3

    .line 921
    :cond_2
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "NOT connected"

    invoke-static {v0, v1, v4}, Lcom/poverka/httpFileClient/util/MyFileReader;->appendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f00ed

    invoke-virtual {p0, v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 923
    const-string v0, "Not connected"

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->Log(Ljava/lang/String;)V

    .line 924
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->stopActivity()V

    .line 926
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/poverka/httpFileClient/activity/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 927
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 928
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 929
    const-string v1, "EXIT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 930
    invoke-virtual {p0, v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->startActivity(Landroid/content/Intent;)V

    .line 932
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_3
    return-void
.end method

.method private createExcel(Ljava/io/File;Ljava/lang/String;)V
    .locals 26
    .param p1, "path"    # Ljava/io/File;
    .param p2, "fileName"    # Ljava/lang/String;

    move-object/from16 v1, p2

    .line 2137
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2139
    .local v0, "current":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ru"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2140
    const-string v3, "id"

    const-string v4, "\u041d\u043e\u043c\u0435\u0440 \u0433\u043b\u043e\u0431\u0430\u043b\u044c\u043d\u044b\u0439"

    const-string v5, "\u2116 \u043f\u0440\u043e\u0442\u043e\u043a\u043e\u043b\u0430"

    const-string v6, "\u0424\u0418\u041e"

    const-string v7, "\u0413\u043e\u0440\u043e\u0434"

    const-string v8, "\u0423\u043b\u0438\u0446\u0430"

    const-string v9, "\u0414\u043e\u043c"

    const-string v10, "\u0411\u0443\u043a\u0432\u0430"

    const-string v11, "\u041a\u043e\u0440\u043f\u0443\u0441"

    const-string v12, "\u041a\u0432\u0430\u0440\u0442\u0438\u0440\u0430"

    const-string v13, "\u0411\u0443\u043a\u0432\u0430"

    const-string v14, "\u0410\u0434\u0440\u0435\u0441"

    const-string v15, "\u2116 \u043f\u043b\u043e\u043c\u0431\u044b"

    const-string v16, "\u0422\u0435\u043b\u0435\u0444\u043e\u043d \u043e\u0441\u043d."

    const-string v17, "\u0422\u0435\u043b\u0435\u0444\u043e\u043d \u0434\u043e\u043f."

    const-string v18, "\u0422\u0435\u043b\u0435\u0444\u043e\u043d \u0434\u043e\u043f2."

    const-string v19, "E-mail"

    const-string v20, "\u0414\u0430\u0442\u0430"

    const-string v21, "\u0412\u0440\u0435\u043c\u044f"

    const-string v22, "\u2116 \u0441\u0447\u0435\u0442\u0447\u0438\u043a\u0430"

    const-string v23, "\u0422\u0438\u043f \u0443\u0441\u043b\u0443\u0433\u0438"

    const-string v24, "\u041a\u043e\u043c\u043c\u0435\u043d\u0442\u0430\u0440\u0438\u0439"

    const-string v25, "\u0421\u0442\u0430\u043d\u0446\u0438\u044f"

    filled-new-array/range {v3 .. v25}, [Ljava/lang/String;

    move-result-object v2

    .local v2, "columns":[Ljava/lang/String;
    goto :goto_0

    .line 2143
    .end local v2    # "columns":[Ljava/lang/String;
    :cond_0
    const-string v3, "id"

    const-string v4, "\u041d\u043e\u043c\u0435\u0440 \u0433\u043b\u043e\u0431\u0430\u043b\u044c\u043d\u0438\u0439"

    const-string v5, "\u2116 \u043f\u0440\u043e\u0442\u043e\u043a\u043e\u043b\u0443"

    const-string v6, "\u041f\u0406\u0411"

    const-string v7, "\u041c\u0456\u0441\u0442\u043e"

    const-string v8, "\u0412\u0443\u043b\u0438\u0446\u044f"

    const-string v9, "\u0411\u0443\u0434\u0438\u043d\u043e\u043a"

    const-string v10, "\u041b\u0456\u0442\u0435\u0440\u0430"

    const-string v11, "\u041a\u043e\u0440\u043f\u0443\u0441"

    const-string v12, "\u041a\u0432\u0430\u0440\u0442\u0438\u0440\u0430"

    const-string v13, "\u041b\u0456\u0442\u0435\u0440\u0430"

    const-string v14, "\u0410\u0434\u0440\u0435\u0441\u0430"

    const-string v15, "\u2116 \u043f\u043b\u043e\u043c\u0431\u0438"

    const-string v16, "\u0422\u0435\u043b\u0435\u0444\u043e\u043d \u043e\u0441\u043d."

    const-string v17, "\u0422\u0435\u043b\u0435\u0444\u043e\u043d \u0434\u043e\u0434."

    const-string v18, "\u0422\u0435\u043b\u0435\u0444\u043e\u043d \u0434\u043e\u04342."

    const-string v19, "E-mail"

    const-string v20, "\u0414\u0430\u0442\u0430"

    const-string v21, "\u0427\u0430\u0441"

    const-string v22, "\u2116 \u043b\u0456\u0447\u0438\u043b\u044c\u043d\u0438\u043a\u0430"

    const-string v23, "\u0422\u0438\u043f \u043f\u043e\u0441\u043b\u0443\u0433\u0438"

    const-string v24, "\u041a\u043e\u043c\u0435\u043d\u0442\u0430\u0440"

    const-string v25, "\u0421\u0442\u0430\u043d\u0446\u0456\u044f"

    filled-new-array/range {v3 .. v25}, [Ljava/lang/String;

    move-result-object v2

    .line 2146
    .restart local v2    # "columns":[Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".xls"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/poi/EncryptedDocumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v5, p1

    :try_start_1
    invoke-direct {v3, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2147
    .local v3, "excelFile":Ljava/io/File;
    new-instance v4, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v4}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>()V

    .line 2148
    .local v4, "workbook":Lorg/apache/poi/ss/usermodel/Workbook;
    invoke-interface {v4, v1}, Lorg/apache/poi/ss/usermodel/Workbook;->createSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v6

    .line 2150
    .local v6, "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lorg/apache/poi/ss/usermodel/Sheet;->createRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v7

    .line 2152
    .local v7, "headerRow":Lorg/apache/poi/ss/usermodel/Row;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v9, v2

    if-ge v8, v9, :cond_1

    .line 2153
    invoke-interface {v7, v8}, Lorg/apache/poi/ss/usermodel/Row;->createCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v9

    .line 2154
    .local v9, "cell":Lorg/apache/poi/ss/usermodel/Cell;
    aget-object v10, v2, v8

    invoke-interface {v9, v10}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Ljava/lang/String;)V

    .line 2152
    .end local v9    # "cell":Lorg/apache/poi/ss/usermodel/Cell;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2157
    .end local v8    # "i":I
    :cond_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2158
    .local v8, "fileOut":Ljava/io/FileOutputStream;
    invoke-interface {v4, v8}, Lorg/apache/poi/ss/usermodel/Workbook;->write(Ljava/io/OutputStream;)V

    .line 2159
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 2160
    invoke-interface {v4}, Lorg/apache/poi/ss/usermodel/Workbook;->close()V

    .line 2161
    const-string v9, "excel created"

    invoke-static {v9}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->Log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/poi/EncryptedDocumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2164
    .end local v0    # "current":Ljava/util/Locale;
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v3    # "excelFile":Ljava/io/File;
    .end local v4    # "workbook":Lorg/apache/poi/ss/usermodel/Workbook;
    .end local v6    # "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    .end local v7    # "headerRow":Lorg/apache/poi/ss/usermodel/Row;
    .end local v8    # "fileOut":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 2162
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    :goto_2
    move-object/from16 v5, p1

    .line 2163
    .local v0, "ex":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2165
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method private fabClicked()V
    .locals 4

    .line 804
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getWorkInShortMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 805
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0f01aa

    invoke-virtual {p0, v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 806
    return-void

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->isResultDefined()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 810
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0f01ac

    invoke-virtual {p0, v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 811
    return-void

    .line 814
    :cond_1
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->requestMode:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->NONE:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->isCounterInfoOK()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 815
    move-object v0, p0

    .line 816
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 817
    .local v1, "builderConfirm":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0f004f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 818
    const v2, 0x7f0f017c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 819
    const v2, 0x7f0f01b9

    new-instance v3, Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;

    invoke-direct {v3, p0, v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;-><init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 858
    const v2, 0x7f0f00e8

    new-instance v3, Lcom/poverka/httpFileClient/activity/MeasurementActivity$11;

    invoke-direct {v3, p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$11;-><init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 864
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 865
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "builderConfirm":Landroid/app/AlertDialog$Builder;
    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->isCounterInfoOK()Z

    move-result v0

    if-nez v0, :cond_3

    .line 866
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0f00dd

    invoke-virtual {p0, v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 868
    :cond_3
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0f0176

    invoke-virtual {p0, v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 870
    :goto_0
    return-void
.end method

.method private finishMode(Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 536
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/poverka/httpFileClient/util/MyJSON;

    sget-object v2, Lcom/poverka/httpFileClient/util/MyJSON;->finish:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, p1, v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->isJSONok(Lorg/json/JSONObject;[Lcom/poverka/httpFileClient/util/MyJSON;)Z

    move-result v1

    const-string v2, "MeasurementActivity"

    if-eqz v1, :cond_5

    .line 537
    sget-object v1, Lcom/poverka/httpFileClient/util/MyJSON;->finish:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 538
    .local v1, "finish":I
    const/4 v4, 0x5

    if-ne v1, v0, :cond_0

    .line 539
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/poverka/httpFileClient/util/MyFileReader;->removeLog(Landroid/content/Context;)V

    .line 540
    const-string v0, "FINISH!!!!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MyModeQueue;->endMode()V

    .line 543
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mUIhandler:Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;

    invoke-virtual {v0, v4}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 544
    :cond_0
    const/4 v5, 0x3

    const-string v6, "Meas"

    if-ne v1, v5, :cond_1

    .line 545
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "finish is 3"

    invoke-static {v0, v6, v3}, Lcom/poverka/httpFileClient/util/MyFileReader;->appendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v0, "FINISH NO PDF!!!!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MyModeQueue;->endMode()V

    .line 549
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mUIhandler:Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;

    invoke-virtual {v0, v4}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 550
    :cond_1
    if-le v1, v0, :cond_4

    .line 551
    iget v5, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->finishTimer:I

    add-int/2addr v5, v0

    iput v5, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->finishTimer:I

    .line 552
    rem-int/2addr v5, v4

    if-nez v5, :cond_2

    .line 553
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    iget v9, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->finishTimer:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    const-string v9, "finish == %d, timer == %d"

    invoke-static {v5, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    iget v3, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->finishTimer:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v0

    invoke-static {v5, v9, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v6, v0}, Lcom/poverka/httpFileClient/util/MyFileReader;->appendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    :cond_2
    iget v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->finishTimer:I

    const/16 v2, 0xf

    if-lt v0, v2, :cond_3

    .line 557
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MyModeQueue;->endMode()V

    .line 558
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mUIhandler:Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;

    invoke-virtual {v0, v4}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 560
    :cond_3
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mSender:Lcom/poverka/httpFileClient/util/MySender;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MySender;->checkFinish()V

    goto :goto_0

    .line 563
    :cond_4
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v8, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    const-string v9, "finish == %d"

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/poverka/httpFileClient/util/MyFileReader;->appendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v3

    invoke-static {v5, v9, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mUIhandler:Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;

    invoke-virtual {v0, v3}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 566
    .local v0, "msg":Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 567
    .local v2, "bundleAlert":Landroid/os/Bundle;
    const v3, 0x7f0f0073

    invoke-virtual {p0, v3}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "alert"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 569
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mUIhandler:Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;

    invoke-virtual {v3, v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->sendMessage(Landroid/os/Message;)Z

    .line 571
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/util/MyModeQueue;->endMode()V

    .line 572
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mUIhandler:Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;

    invoke-virtual {v3, v4}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->sendEmptyMessage(I)Z

    .line 574
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "finish":I
    .end local v2    # "bundleAlert":Landroid/os/Bundle;
    :goto_0
    goto :goto_1

    .line 576
    :cond_5
    const-string v0, "answer JSON object IS NULL!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :goto_1
    return-void
.end method

.method private flowRateSelectionMode(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 464
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/poverka/httpFileClient/util/MyJSON;

    sget-object v1, Lcom/poverka/httpFileClient/util/MyJSON;->action:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->isJSONok(Lorg/json/JSONObject;[Lcom/poverka/httpFileClient/util/MyJSON;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    sget-object v0, Lcom/poverka/httpFileClient/util/MyJSON;->action:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 466
    .local v0, "curAction":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v1, v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setAction(I)V

    .line 468
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/util/MyModeQueue;->endMode()V

    goto :goto_0

    .line 471
    :cond_0
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mSender:Lcom/poverka/httpFileClient/util/MySender;

    invoke-virtual {v2, v1}, Lcom/poverka/httpFileClient/util/MySender;->changeAction(I)V

    .line 473
    .end local v0    # "curAction":I
    :goto_0
    goto :goto_1

    .line 475
    :cond_1
    const-string v0, "MeasurementActivity"

    const-string v1, "answer JSON object IS NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :goto_1
    return-void
.end method

.method private getFullTypeById(I)Ljava/lang/String;
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1812
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->readTypes()Lorg/json/JSONArray;

    move-result-object v0

    .line 1813
    .local v0, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1814
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1815
    .local v2, "item":Lorg/json/JSONObject;
    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 1816
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "dn"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1813
    .end local v2    # "item":Lorg/json/JSONObject;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1819
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Lorg/json/JSONException;

    const-string v2, "no id"

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private initPager()V
    .locals 3

    .line 1042
    const v0, 0x7f0901dc

    invoke-virtual {p0, v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/poverka/httpFileClient/util/MyPager;

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->pager:Lcom/poverka/httpFileClient/util/MyPager;

    .line 1043
    new-instance v0, Lcom/poverka/httpFileClient/util/MyPagerAdapter;

    invoke-direct {v0}, Lcom/poverka/httpFileClient/util/MyPagerAdapter;-><init>()V

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->pagerAdapter:Lcom/poverka/httpFileClient/util/MyPagerAdapter;

    .line 1044
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->pager:Lcom/poverka/httpFileClient/util/MyPager;

    invoke-virtual {v1, v0}, Lcom/poverka/httpFileClient/util/MyPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 1046
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getWorkInShortMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1047
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity$TapGestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p0, v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$TapGestureListener;-><init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Landroid/app/Activity;Lcom/poverka/httpFileClient/activity/MeasurementActivity$1;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 1048
    .local v0, "tapGestureDetector":Landroid/view/GestureDetector;
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->pager:Lcom/poverka/httpFileClient/util/MyPager;

    new-instance v2, Lcom/poverka/httpFileClient/activity/MeasurementActivity$13;

    invoke-direct {v2, p0, v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$13;-><init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Landroid/view/GestureDetector;)V

    invoke-virtual {v1, v2}, Lcom/poverka/httpFileClient/util/MyPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1055
    .end local v0    # "tapGestureDetector":Landroid/view/GestureDetector;
    :cond_0
    sget-object v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;->FIRST:Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->insertPage(Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;I)V

    .line 1056
    return-void
.end method

.method private initRequestObserver()V
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->requestMode:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity$5;

    invoke-direct {v1, p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$5;-><init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 461
    return-void
.end method

.method private initViews()V
    .locals 24

    .line 952
    move-object/from16 v0, p0

    const v1, 0x7f0901b8

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 953
    .local v1, "textTestName":Landroid/widget/TextView;
    const v2, 0x7f0901b9

    invoke-virtual {v0, v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 954
    .local v2, "textTestSettings":Landroid/widget/TextView;
    const v3, 0x7f09006a

    invoke-virtual {v0, v3}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 955
    .local v3, "buttonStart":Landroid/widget/Button;
    const v4, 0x7f090069

    invoke-virtual {v0, v4}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 956
    .local v4, "buttonRepeat":Landroid/widget/ImageButton;
    const v5, 0x7f090068

    invoke-virtual {v0, v5}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 957
    .local v5, "buttonNext":Landroid/widget/ImageButton;
    const v6, 0x7f09019f

    invoke-virtual {v0, v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 958
    .local v6, "textLow":Landroid/widget/TextView;
    const v7, 0x7f09019a

    invoke-virtual {v0, v7}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 959
    .local v7, "textHigh":Landroid/widget/TextView;
    const v8, 0x7f090192

    invoke-virtual {v0, v8}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 960
    .local v8, "textCurCon":Landroid/widget/TextView;
    const v9, 0x7f09018f

    invoke-virtual {v0, v9}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 961
    .local v9, "textAvrgCon":Landroid/widget/TextView;
    const v10, 0x7f0901ba

    invoke-virtual {v0, v10}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 962
    .local v10, "textTimeLeft":Landroid/widget/TextView;
    const v11, 0x7f090130

    invoke-virtual {v0, v11}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ProgressBar;

    .line 963
    .local v11, "pBar":Landroid/widget/ProgressBar;
    const v12, 0x7f090187

    invoke-virtual {v0, v12}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 964
    .local v12, "temperatureLayout":Landroid/widget/LinearLayout;
    const v13, 0x7f090173

    invoke-virtual {v0, v13}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 965
    .local v13, "statusLayout":Landroid/widget/LinearLayout;
    const v14, 0x7f0900c5

    invoke-virtual {v0, v14}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 967
    .local v14, "fab":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    new-instance v15, Landroid/util/DisplayMetrics;

    invoke-direct {v15}, Landroid/util/DisplayMetrics;-><init>()V

    .line 968
    .local v15, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v16

    move-object/from16 v17, v14

    .end local v14    # "fab":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .local v17, "fab":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14, v15}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 970
    iget v14, v15, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v14, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->screenHeight:I

    .line 971
    move-object/from16 v16, v15

    .end local v15    # "metrics":Landroid/util/DisplayMetrics;
    .local v16, "metrics":Landroid/util/DisplayMetrics;
    int-to-float v15, v14

    const v18, 0x3e0f5c29    # 0.14f

    mul-float v15, v15, v18

    float-to-int v15, v15

    .line 972
    .local v15, "buttonHeight":I
    int-to-float v0, v14

    const v18, 0x3d8f5c29    # 0.07f

    mul-float v0, v0, v18

    float-to-int v0, v0

    .line 973
    .local v0, "textLHeight":I
    move-object/from16 v18, v10

    .end local v10    # "textTimeLeft":Landroid/widget/TextView;
    .local v18, "textTimeLeft":Landroid/widget/TextView;
    int-to-float v10, v14

    const v19, 0x3d4ccccd    # 0.05f

    mul-float v10, v10, v19

    float-to-int v10, v10

    .line 974
    .local v10, "textSHeight":I
    int-to-float v14, v14

    const v19, 0x3ca3d70a    # 0.02f

    mul-float v14, v14, v19

    float-to-int v14, v14

    .line 977
    .local v14, "marginHeight":I
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout$LayoutParams;

    .line 979
    .local v19, "paramsL":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 981
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    move-object/from16 v21, v7

    .end local v7    # "textHigh":Landroid/widget/TextView;
    .local v21, "textHigh":Landroid/widget/TextView;
    move-object/from16 v7, v20

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 982
    .end local v19    # "paramsL":Landroid/widget/LinearLayout$LayoutParams;
    .local v7, "paramsL":Landroid/widget/LinearLayout$LayoutParams;
    iput v14, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 983
    invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V

    .line 985
    invoke-virtual {v3}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    move-object/from16 v7, v19

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 986
    iput v15, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 987
    iput v14, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 988
    invoke-virtual {v3}, Landroid/widget/Button;->requestLayout()V

    .line 990
    invoke-virtual {v4}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    move-object/from16 v7, v19

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 991
    iput v15, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 992
    iput v14, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 993
    invoke-virtual {v4}, Landroid/widget/ImageButton;->requestLayout()V

    .line 995
    invoke-virtual {v5}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    move-object/from16 v7, v19

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 996
    iput v15, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 997
    iput v14, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 998
    invoke-virtual {v5}, Landroid/widget/ImageButton;->requestLayout()V

    .line 1000
    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    move-object/from16 v20, v7

    .end local v7    # "paramsL":Landroid/widget/LinearLayout$LayoutParams;
    .local v20, "paramsL":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v7, v19

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1001
    .local v7, "paramsC":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    move/from16 v19, v15

    .end local v15    # "buttonHeight":I
    .local v19, "buttonHeight":I
    div-int/lit8 v15, v14, 0x2

    iput v15, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 1002
    invoke-virtual {v9}, Landroid/widget/TextView;->requestLayout()V

    .line 1004
    invoke-virtual {v11}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    move-object v7, v15

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1005
    iput v14, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 1006
    invoke-virtual {v11}, Landroid/widget/ProgressBar;->requestLayout()V

    .line 1008
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 1009
    .end local v20    # "paramsL":Landroid/widget/LinearLayout$LayoutParams;
    .local v15, "paramsL":Landroid/widget/LinearLayout$LayoutParams;
    iput v14, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1010
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1012
    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    move-object/from16 v15, v20

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 1013
    iput v14, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1014
    invoke-virtual {v13}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1016
    move-object/from16 v20, v7

    .end local v7    # "paramsC":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .local v20, "paramsC":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    int-to-float v7, v0

    move-object/from16 v22, v11

    .end local v11    # "pBar":Landroid/widget/ProgressBar;
    .local v22, "pBar":Landroid/widget/ProgressBar;
    const/4 v11, 0x0

    invoke-virtual {v1, v11, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1017
    int-to-float v7, v0

    invoke-virtual {v2, v11, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1018
    int-to-float v7, v10

    invoke-virtual {v3, v11, v7}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1019
    invoke-virtual {v4, v11, v14, v11, v14}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 1020
    invoke-virtual {v5, v11, v14, v11, v14}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 1021
    int-to-float v7, v0

    invoke-virtual {v8, v11, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1022
    int-to-float v7, v0

    invoke-virtual {v9, v11, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1023
    int-to-float v7, v10

    invoke-virtual {v6, v11, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1024
    int-to-float v7, v10

    move/from16 v23, v0

    move-object/from16 v0, v21

    .end local v21    # "textHigh":Landroid/widget/TextView;
    .local v0, "textHigh":Landroid/widget/TextView;
    .local v23, "textLHeight":I
    invoke-virtual {v0, v11, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1025
    int-to-float v7, v10

    move-object/from16 v0, v18

    .end local v18    # "textTimeLeft":Landroid/widget/TextView;
    .local v0, "textTimeLeft":Landroid/widget/TextView;
    .restart local v21    # "textHigh":Landroid/widget/TextView;
    invoke-virtual {v0, v11, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1027
    invoke-direct/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->temperatureBox()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v12, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1028
    const/4 v7, 0x1

    move-object/from16 v11, p0

    invoke-direct {v11, v7}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->circleBox(I)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1029
    const/4 v7, 0x2

    invoke-direct {v11, v7}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->circleBox(I)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1030
    const/4 v7, 0x3

    invoke-direct {v11, v7}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->circleBox(I)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1032
    new-instance v7, Lcom/poverka/httpFileClient/activity/MeasurementActivity$12;

    invoke-direct {v7, v11}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$12;-><init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)V

    move-object/from16 v0, v17

    .end local v17    # "fab":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .local v0, "fab":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .restart local v18    # "textTimeLeft":Landroid/widget/TextView;
    invoke-virtual {v0, v7}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1038
    return-void
.end method

.method private insertPage(Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;I)V
    .locals 9
    .param p1, "page"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;
    .param p2, "measNumber"    # I

    .line 1059
    iget v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->screenHeight:I

    int-to-float v0, v0

    const v1, 0x3d8f5c29    # 0.07f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 1060
    .local v0, "textLHeight":I
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1061
    .local v1, "view":Landroid/widget/TextView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1062
    int-to-float v2, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1063
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1064
    const/high16 v2, 0x41700000    # 15.0f

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v5, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1067
    :try_start_0
    sget-object v2, Lcom/poverka/httpFileClient/activity/MeasurementActivity$16;->$SwitchMap$com$poverka$httpFileClient$activity$MeasurementActivity$Pages:[I

    invoke-virtual {p1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v2, v5, :cond_2

    if-eq v2, v6, :cond_1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 1079
    :cond_0
    mul-int/lit8 v2, p2, 0x2

    invoke-direct {p0, v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->textOnImage(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1080
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->curMeasurementResult:Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    invoke-virtual {v8, v6}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1081
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->pagerAdapter:Lcom/poverka/httpFileClient/util/MyPagerAdapter;

    iget-object v7, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->pager:Lcom/poverka/httpFileClient/util/MyPager;

    mul-int/lit8 v8, p2, 0x2

    invoke-virtual {v2, v7, v1, v8}, Lcom/poverka/httpFileClient/util/MyPagerAdapter;->addView(Landroidx/viewpager/widget/ViewPager;Landroid/widget/TextView;I)I

    goto :goto_0

    .line 1074
    :cond_1
    mul-int/lit8 v2, p2, 0x2

    sub-int/2addr v2, v5

    invoke-direct {p0, v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->textOnImage(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1075
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->curMeasurementResult:Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    invoke-virtual {v8, v5}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1076
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->pagerAdapter:Lcom/poverka/httpFileClient/util/MyPagerAdapter;

    iget-object v7, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->pager:Lcom/poverka/httpFileClient/util/MyPager;

    mul-int/lit8 v8, p2, 0x2

    sub-int/2addr v8, v5

    invoke-virtual {v2, v7, v1, v8}, Lcom/poverka/httpFileClient/util/MyPagerAdapter;->addView(Landroidx/viewpager/widget/ViewPager;Landroid/widget/TextView;I)I

    .line 1077
    goto :goto_0

    .line 1069
    :cond_2
    invoke-direct {p0, p2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->textOnImage(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1070
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v8}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getTestPhoto()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1071
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->pagerAdapter:Lcom/poverka/httpFileClient/util/MyPagerAdapter;

    iget-object v7, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->pager:Lcom/poverka/httpFileClient/util/MyPager;

    invoke-virtual {v2, v7, v1, p2}, Lcom/poverka/httpFileClient/util/MyPagerAdapter;->addView(Landroidx/viewpager/widget/ViewPager;Landroid/widget/TextView;I)I

    .line 1072
    nop

    .line 1084
    :goto_0
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->pagerAdapter:Lcom/poverka/httpFileClient/util/MyPagerAdapter;

    invoke-virtual {v2, v1}, Lcom/poverka/httpFileClient/util/MyPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v2

    .line 1085
    .local v2, "index":I
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v8, "New page! it is %s, measNumber is %d, total is %d"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->pagerAdapter:Lcom/poverka/httpFileClient/util/MyPagerAdapter;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/util/MyPagerAdapter;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v7, v8, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->Log(Ljava/lang/String;)V

    .line 1086
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->pager:Lcom/poverka/httpFileClient/util/MyPager;

    invoke-virtual {v3, v2, v5}, Lcom/poverka/httpFileClient/util/MyPager;->setCurrentItem(IZ)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1095
    .end local v2    # "index":I
    goto :goto_1

    .line 1087
    :catch_0
    move-exception v2

    .line 1088
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const-string v6, "Meas insertPage"

    invoke-static {v3, v6, v4, v5}, Lcom/poverka/httpFileClient/util/MyFileReader;->appendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    .line 1089
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mUIhandler:Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1090
    .local v3, "msg":Landroid/os/Message;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1091
    .local v4, "bundle":Landroid/os/Bundle;
    const v5, 0x7f0f001e

    invoke-virtual {p0, v5}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "tittle"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    const v5, 0x7f0f0072

    invoke-virtual {p0, v5}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "message"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    invoke-virtual {v3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1094
    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mUIhandler:Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;

    invoke-virtual {v5, v3}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->sendMessage(Landroid/os/Message;)Z

    .line 1096
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "bundle":Landroid/os/Bundle;
    :goto_1
    return-void
.end method

.method private isConnected()Z
    .locals 3

    .line 936
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 937
    :try_start_0
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mTcpClient:Lcom/poverka/httpFileClient/util/TcpClient;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/util/TcpClient;->isServerRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 938
    const/4 v1, 0x1

    return v1

    .line 941
    :cond_0
    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 936
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 945
    .end local v0    # "i":I
    :catch_0
    move-exception v0

    .line 946
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "MeasurementActivity"

    const-string v2, "Sleep"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 947
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    nop

    .line 948
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private isJSONok(Lorg/json/JSONObject;[Lcom/poverka/httpFileClient/util/MyJSON;)Z
    .locals 5
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "params"    # [Lcom/poverka/httpFileClient/util/MyJSON;

    .line 655
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 656
    :cond_0
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p2, v2

    .line 657
    .local v3, "param":Lcom/poverka/httpFileClient/util/MyJSON;
    invoke-virtual {v3}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    return v0

    .line 656
    .end local v3    # "param":Lcom/poverka/httpFileClient/util/MyJSON;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 659
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private measurementMode(Lorg/json/JSONObject;)V
    .locals 12
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 480
    const/4 v0, 0x3

    new-array v1, v0, [Lcom/poverka/httpFileClient/util/MyJSON;

    sget-object v2, Lcom/poverka/httpFileClient/util/MyJSON;->temper_dev:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/poverka/httpFileClient/util/MyJSON;->press_dev:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/poverka/httpFileClient/util/MyJSON;->hum_dev:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    invoke-direct {p0, p1, v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->isJSONok(Lorg/json/JSONObject;[Lcom/poverka/httpFileClient/util/MyJSON;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    sget-object v1, Lcom/poverka/httpFileClient/util/MyJSON;->temper_dev:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 482
    .local v1, "temperature":I
    sget-object v2, Lcom/poverka/httpFileClient/util/MyJSON;->press_dev:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 483
    .local v2, "pressure":I
    sget-object v6, Lcom/poverka/httpFileClient/util/MyJSON;->hum_dev:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 484
    .local v6, "humidity":I
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v9, v0, [Ljava/lang/Object;

    int-to-float v10, v1

    const/high16 v11, 0x41200000    # 10.0f

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v3

    int-to-float v10, v2

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v4

    int-to-float v10, v6

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v5

    const-string v10, "temperature: %.2f pressure: %.2f humidity: %.2f"

    invoke-static {v8, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 487
    .end local v1    # "temperature":I
    .end local v2    # "pressure":I
    .end local v6    # "humidity":I
    :cond_0
    const/4 v1, 0x5

    new-array v2, v1, [Lcom/poverka/httpFileClient/util/MyJSON;

    sget-object v6, Lcom/poverka/httpFileClient/util/MyJSON;->action:Lcom/poverka/httpFileClient/util/MyJSON;

    aput-object v6, v2, v3

    sget-object v6, Lcom/poverka/httpFileClient/util/MyJSON;->cur_con:Lcom/poverka/httpFileClient/util/MyJSON;

    aput-object v6, v2, v4

    sget-object v6, Lcom/poverka/httpFileClient/util/MyJSON;->average_con:Lcom/poverka/httpFileClient/util/MyJSON;

    aput-object v6, v2, v5

    sget-object v6, Lcom/poverka/httpFileClient/util/MyJSON;->cur_volume:Lcom/poverka/httpFileClient/util/MyJSON;

    aput-object v6, v2, v0

    sget-object v0, Lcom/poverka/httpFileClient/util/MyJSON;->test_photo:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v6, 0x4

    aput-object v0, v2, v6

    invoke-direct {p0, p1, v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->isJSONok(Lorg/json/JSONObject;[Lcom/poverka/httpFileClient/util/MyJSON;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 488
    sget-object v0, Lcom/poverka/httpFileClient/util/MyJSON;->action:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 489
    .local v0, "curAction":I
    sget-object v2, Lcom/poverka/httpFileClient/util/MyJSON;->cur_con:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 490
    .local v2, "curConsumption":I
    sget-object v7, Lcom/poverka/httpFileClient/util/MyJSON;->average_con:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v7}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 491
    .local v7, "averageConsumption":I
    sget-object v8, Lcom/poverka/httpFileClient/util/MyJSON;->cur_volume:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v8}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 492
    .local v8, "curVolume":I
    sget-object v9, Lcom/poverka/httpFileClient/util/MyJSON;->test_photo:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v9}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_1

    const/4 v3, 0x1

    .line 494
    .local v3, "photoReady":Z
    :cond_1
    iget-object v9, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v9, v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setAction(I)V

    .line 495
    iget-object v9, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->curMeasurementResult:Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    invoke-virtual {v9, v2, v7, v8}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->updateValues(III)V

    .line 497
    iget-object v9, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mUIhandler:Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;

    invoke-virtual {v9, v5}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->sendEmptyMessage(I)Z

    .line 499
    if-ne v0, v6, :cond_2

    if-eqz v3, :cond_2

    .line 500
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mHttpFileClient:Lcom/poverka/httpFileClient/util/HttpFileClient;

    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->curMeasurementResult:Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    invoke-virtual {v5, v4}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getPhotoName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/poverka/httpFileClient/util/HttpFileClient;->download(Ljava/lang/String;)V

    goto :goto_0

    .line 501
    :cond_2
    if-ne v0, v1, :cond_3

    if-eqz v3, :cond_3

    .line 502
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mHttpFileClient:Lcom/poverka/httpFileClient/util/HttpFileClient;

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->curMeasurementResult:Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    invoke-virtual {v4, v5}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getPhotoName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/poverka/httpFileClient/util/HttpFileClient;->download(Ljava/lang/String;)V

    .line 504
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mSender:Lcom/poverka/httpFileClient/util/MySender;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/util/MySender;->readMeasuringData()V

    .line 505
    .end local v0    # "curAction":I
    .end local v2    # "curConsumption":I
    .end local v3    # "photoReady":Z
    .end local v7    # "averageConsumption":I
    .end local v8    # "curVolume":I
    goto :goto_1

    .line 506
    :cond_4
    const-string v0, "MeasurementActivity"

    const-string v1, "answer JSON object IS NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :goto_1
    return-void
.end method

.method private prepareMeasurementMode(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 511
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/poverka/httpFileClient/util/MyJSON;

    sget-object v1, Lcom/poverka/httpFileClient/util/MyJSON;->meas_numb:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/poverka/httpFileClient/util/MyJSON;->reit_numb:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/poverka/httpFileClient/util/MyJSON;->action:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    invoke-direct {p0, p1, v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->isJSONok(Lorg/json/JSONObject;[Lcom/poverka/httpFileClient/util/MyJSON;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 512
    sget-object v0, Lcom/poverka/httpFileClient/util/MyJSON;->action:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 513
    .local v0, "curAction":I
    sget-object v1, Lcom/poverka/httpFileClient/util/MyJSON;->meas_numb:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 514
    .local v1, "meas":I
    sget-object v4, Lcom/poverka/httpFileClient/util/MyJSON;->reit_numb:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 515
    .local v4, "reit":I
    if-ne v0, v3, :cond_1

    .line 516
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->curMeasurementResult:Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getMeasurementNumber()I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->curMeasurementResult:Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getReiterationNumber()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 517
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v3, v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setAction(I)V

    .line 518
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mUIhandler:Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;

    invoke-virtual {v3, v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->sendEmptyMessage(I)Z

    .line 519
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/util/MyModeQueue;->endMode()V

    goto :goto_0

    .line 521
    :cond_0
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mSender:Lcom/poverka/httpFileClient/util/MySender;

    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->curMeasurementResult:Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getMeasurementNumber()I

    move-result v3

    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->curMeasurementResult:Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getReiterationNumber()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Lcom/poverka/httpFileClient/util/MySender;->prepareMeasurement(II)V

    goto :goto_0

    .line 525
    :cond_1
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mSender:Lcom/poverka/httpFileClient/util/MySender;

    invoke-virtual {v2, v3}, Lcom/poverka/httpFileClient/util/MySender;->changeAction(I)V

    .line 527
    :goto_0
    sget-object v2, Lcom/poverka/httpFileClient/util/MyJSON;->date_time:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 528
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    sget-object v3, Lcom/poverka/httpFileClient/util/MyJSON;->date_time:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setCurrentStationTime(I)V

    .line 530
    .end local v0    # "curAction":I
    .end local v1    # "meas":I
    .end local v4    # "reit":I
    :cond_2
    goto :goto_1

    .line 531
    :cond_3
    const-string v0, "MeasurementActivity"

    const-string v1, "answer JSON object IS NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :goto_1
    return-void
.end method

.method private prepareViews()V
    .locals 16

    .line 1156
    move-object/from16 v0, p0

    const v1, 0x7f0901b8

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1157
    .local v1, "textTestName":Landroid/widget/TextView;
    const v2, 0x7f0901d6

    invoke-virtual {v0, v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1158
    .local v2, "underline":Landroid/view/View;
    const v3, 0x7f0901b9

    invoke-virtual {v0, v3}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1159
    .local v3, "textTestSettings":Landroid/widget/TextView;
    const v4, 0x7f09019f

    invoke-virtual {v0, v4}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1160
    .local v4, "textLow":Landroid/widget/TextView;
    const v5, 0x7f09019a

    invoke-virtual {v0, v5}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1161
    .local v5, "textHigh":Landroid/widget/TextView;
    const v6, 0x7f090192

    invoke-virtual {v0, v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1162
    .local v6, "textCurCon":Landroid/widget/TextView;
    const v7, 0x7f09018f

    invoke-virtual {v0, v7}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1163
    .local v7, "textAverageCon":Landroid/widget/TextView;
    const v8, 0x7f090130

    invoke-virtual {v0, v8}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .line 1164
    .local v8, "progress":Landroid/widget/ProgressBar;
    const v9, 0x7f0901ba

    invoke-virtual {v0, v9}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1166
    .local v9, "textTimeLeft":Landroid/widget/TextView;
    iget-object v10, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->testNameToText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1167
    iget-object v10, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v10}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getTestName()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v12, 0x31

    if-ne v10, v12, :cond_0

    .line 1168
    const v10, -0xffff01

    invoke-virtual {v2, v10}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1170
    :cond_0
    const/high16 v10, -0x10000

    invoke-virtual {v2, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1172
    :goto_0
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    iget-object v13, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->curMeasurementResult:Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    .line 1173
    invoke-virtual {v13}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getRequiredConsumptionLit()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x447a0000    # 1000.0f

    div-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v12, v11

    const v13, 0x7f0f0054

    invoke-virtual {v0, v13}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x1

    aput-object v13, v12, v15

    const/4 v13, 0x2

    iget-object v11, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->curMeasurementResult:Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    invoke-virtual {v11}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getRequiredVolumeLit()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v12, v13

    .line 1172
    const-string v11, "Q = %.3f %s \nV = %d \u043b"

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1174
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v11, v15, [Ljava/lang/Object;

    iget-object v12, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->curMeasurementResult:Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    invoke-virtual {v12}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getRequiredLowLimit()F

    move-result v12

    div-float/2addr v12, v14

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string v12, "%.3f"

    invoke-static {v10, v12, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1175
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v11, v15, [Ljava/lang/Object;

    iget-object v15, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->curMeasurementResult:Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    invoke-virtual {v15}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getRequiredHighLimit()F

    move-result v15

    div-float/2addr v15, v14

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v11, v13

    invoke-static {v10, v12, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1176
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v12, v13

    const-string v13, "Q\u0442 %.3f"

    invoke-static {v10, v13, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1177
    const/4 v10, -0x1

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1178
    const/high16 v12, -0x1000000

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1179
    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v15, 0x1

    new-array v14, v15, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const/4 v15, 0x0

    aput-object v11, v14, v15

    const-string v11, "Q\u0441 %.3f"

    invoke-static {v13, v11, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1180
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1181
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1182
    iget-object v10, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->curMeasurementResult:Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    invoke-virtual {v10}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getRequiredVolumeImp()I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1183
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1184
    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Object;

    const-string v12, "-"

    aput-object v12, v13, v10

    const-string v10, "%s \u0441."

    invoke-static {v11, v10, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1185
    iget-object v10, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->curMeasurementResult:Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    invoke-virtual {v10}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getMeasurementNumber()I

    move-result v10

    .line 1186
    .local v10, "curMeasurementNumber":I
    invoke-virtual {v0, v10}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    iget-object v14, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    add-int/lit8 v15, v10, -0x1

    invoke-virtual {v14, v15}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getRequiredConsumption(I)I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x447a0000    # 1000.0f

    div-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    const-string v14, "Q=%.3f"

    invoke-static {v12, v14, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v11, v12}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->changeToInit(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1187
    return-void
.end method

.method private readTypes()Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1823
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "types.json"

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1824
    .local v0, "text":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1825
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "deviceTypes"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    return-object v2
.end method

.method private removePagesOfMeasurement(I)V
    .locals 4
    .param p1, "measNumber"    # I

    .line 1140
    iget-boolean v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->isRepeating:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1141
    sget-object v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;->START:Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;

    invoke-direct {p0, v0, p1, v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->updatePage(Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;IZ)V

    .line 1142
    sget-object v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;->FINISH:Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;

    invoke-direct {p0, v0, p1, v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->updatePage(Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;IZ)V

    goto :goto_0

    .line 1144
    :cond_0
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v0, p1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->hasEndPhoto(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1145
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->pagerAdapter:Lcom/poverka/httpFileClient/util/MyPagerAdapter;

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->pager:Lcom/poverka/httpFileClient/util/MyPager;

    mul-int/lit8 v3, p1, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/poverka/httpFileClient/util/MyPagerAdapter;->removeView(Landroidx/viewpager/widget/ViewPager;I)I

    .line 1147
    :cond_1
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v0, p1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->hasStartPhoto(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1148
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->pagerAdapter:Lcom/poverka/httpFileClient/util/MyPagerAdapter;

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->pager:Lcom/poverka/httpFileClient/util/MyPager;

    mul-int/lit8 v3, p1, 0x2

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/poverka/httpFileClient/util/MyPagerAdapter;->removeView(Landroidx/viewpager/widget/ViewPager;I)I

    .line 1150
    :cond_2
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->pagerAdapter:Lcom/poverka/httpFileClient/util/MyPagerAdapter;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MyPagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    .line 1151
    .local v0, "index":I
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->pager:Lcom/poverka/httpFileClient/util/MyPager;

    invoke-virtual {v2, v0, v1}, Lcom/poverka/httpFileClient/util/MyPager;->setCurrentItem(IZ)V

    .line 1153
    .end local v0    # "index":I
    :goto_0
    return-void
.end method

.method private saveExcel(Ljava/io/File;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 16
    .param p1, "path"    # Ljava/io/File;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "json"    # Lorg/json/JSONObject;

    .line 2168
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".xls"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, p1

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v0

    .line 2169
    .local v1, "excelFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2170
    invoke-direct/range {p0 .. p2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->createExcel(Ljava/io/File;Ljava/lang/String;)V

    .line 2173
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2174
    .local v0, "inputStream":Ljava/io/FileInputStream;
    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->create(Ljava/io/InputStream;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v4

    .line 2175
    .local v4, "workbook":Lorg/apache/poi/ss/usermodel/Workbook;
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheetAt(I)Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v5

    .line 2177
    .local v5, "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    invoke-interface {v5}, Lorg/apache/poi/ss/usermodel/Sheet;->getLastRowNum()I

    move-result v6

    .line 2178
    .local v6, "rowCount":I
    add-int/lit8 v6, v6, 0x1

    invoke-interface {v5, v6}, Lorg/apache/poi/ss/usermodel/Sheet;->createRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v7

    .line 2179
    .local v7, "row":Lorg/apache/poi/ss/usermodel/Row;
    const/4 v8, 0x0

    .line 2181
    .local v8, "columnCount":I
    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    .line 2182
    .local v9, "iterator":Ljava/util/Iterator;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2184
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2185
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/apache/poi/EncryptedDocumentException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    .line 2186
    .local v11, "key":Ljava/lang/String;
    move-object/from16 v12, p3

    :try_start_1
    invoke-virtual {v12, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2187
    nop

    .end local v11    # "key":Ljava/lang/String;
    goto :goto_0

    .line 2189
    :cond_1
    move-object/from16 v12, p3

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 2190
    .local v13, "field":Ljava/lang/Object;
    add-int/lit8 v14, v8, 0x1

    .end local v8    # "columnCount":I
    .local v14, "columnCount":I
    invoke-interface {v7, v8}, Lorg/apache/poi/ss/usermodel/Row;->createCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v8

    .line 2191
    .local v8, "cell":Lorg/apache/poi/ss/usermodel/Cell;
    instance-of v15, v13, Ljava/lang/String;

    if-eqz v15, :cond_2

    .line 2192
    move-object v15, v13

    check-cast v15, Ljava/lang/String;

    invoke-interface {v8, v15}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Ljava/lang/String;)V

    goto :goto_2

    .line 2193
    :cond_2
    instance-of v15, v13, Ljava/lang/Integer;

    if-eqz v15, :cond_3

    .line 2194
    move-object v15, v13

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    int-to-double v2, v15

    invoke-interface {v8, v2, v3}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(D)V

    .line 2196
    .end local v8    # "cell":Lorg/apache/poi/ss/usermodel/Cell;
    .end local v13    # "field":Ljava/lang/Object;
    :cond_3
    :goto_2
    move-object/from16 v3, p1

    move-object/from16 v2, p2

    move v8, v14

    goto :goto_1

    .line 2197
    .end local v14    # "columnCount":I
    .local v8, "columnCount":I
    :cond_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 2199
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2200
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    invoke-interface {v4, v2}, Lorg/apache/poi/ss/usermodel/Workbook;->write(Ljava/io/OutputStream;)V

    .line 2201
    invoke-interface {v4}, Lorg/apache/poi/ss/usermodel/Workbook;->close()V

    .line 2202
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 2203
    const-string v3, "excel saved"

    invoke-static {v3}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->Log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/apache/poi/EncryptedDocumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2206
    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    .end local v4    # "workbook":Lorg/apache/poi/ss/usermodel/Workbook;
    .end local v5    # "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    .end local v6    # "rowCount":I
    .end local v7    # "row":Lorg/apache/poi/ss/usermodel/Row;
    .end local v8    # "columnCount":I
    .end local v9    # "iterator":Ljava/util/Iterator;
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    goto :goto_5

    .line 2204
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v0

    :goto_3
    move-object/from16 v12, p3

    .line 2205
    .local v0, "ex":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2207
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_5
    return-void
.end method

.method private savePdf(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 41
    .param p1, "path"    # Ljava/io/File;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "date"    # Ljava/lang/String;
    .param p4, "time"    # Ljava/lang/String;
    .param p5, "success"    # I

    .line 1845
    move-object/from16 v1, p0

    const-string v2, "-"

    :try_start_0
    iget-object v3, v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getDNtypeNumber()I

    move-result v3

    invoke-direct {v1, v3}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getFullTypeById(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1849
    .local v3, "dnTypeFull":Ljava/lang/String;
    goto :goto_0

    .line 2130
    .end local v3    # "dnTypeFull":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_16

    .line 1846
    :catch_1
    move-exception v0

    move-object v3, v0

    .line 1847
    .local v3, "e":Lorg/json/JSONException;
    :try_start_1
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 1848
    move-object v4, v2

    move-object v3, v4

    .line 1851
    .local v3, "dnTypeFull":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/io/File;

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v6, "%s-%02d.pdf"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    iget-object v10, v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v10}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getVerificationNumberToday()I

    move-result v10

    const/4 v11, 0x1

    add-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v11

    invoke-static {v5, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, p1

    invoke-direct {v4, v6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1852
    .local v4, "file":Ljava/io/File;
    const/16 v5, 0x34a

    .line 1853
    .local v5, "pdfWidth":I
    const/16 v8, 0x253

    .line 1854
    .local v8, "pdfHeigth":I
    const/16 v10, 0x10

    .line 1856
    .local v10, "lineInterval":I
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 1857
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1863
    .local v12, "fOut":Ljava/io/FileOutputStream;
    const/4 v13, 0x0

    .line 1864
    .local v13, "measCounter":I
    const/4 v14, 0x1

    .line 1865
    .local v14, "consumptionValid":Z
    const/4 v15, 0x1

    .line 1866
    .local v15, "resultValid":I
    new-instance v16, Landroid/graphics/pdf/PdfDocument;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/pdf/PdfDocument;-><init>()V

    move-object/from16 v17, v16

    .line 1867
    .local v17, "document":Landroid/graphics/pdf/PdfDocument;
    new-instance v7, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;

    invoke-direct {v7, v5, v8, v11}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;-><init>(III)V

    invoke-virtual {v7}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->create()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v7

    .line 1868
    .local v7, "pageInfo":Landroid/graphics/pdf/PdfDocument$PageInfo;
    move-object/from16 v9, v17

    .end local v17    # "document":Landroid/graphics/pdf/PdfDocument;
    .local v9, "document":Landroid/graphics/pdf/PdfDocument;
    invoke-virtual {v9, v7}, Landroid/graphics/pdf/PdfDocument;->startPage(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v17

    move-object/from16 v19, v17

    .line 1869
    .local v19, "page":Landroid/graphics/pdf/PdfDocument$Page;
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v17

    move-object/from16 v26, v17

    .line 1870
    .local v26, "canvas":Landroid/graphics/Canvas;
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v27, v17

    .line 1871
    .local v27, "paint":Landroid/graphics/Paint;
    const/high16 v11, 0x41400000    # 12.0f

    move-object/from16 v28, v4

    move-object/from16 v4, v27

    .end local v27    # "paint":Landroid/graphics/Paint;
    .local v4, "paint":Landroid/graphics/Paint;
    .local v28, "file":Ljava/io/File;
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1872
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1874
    const/high16 v21, 0x41700000    # 15.0f

    const/high16 v22, 0x41f00000    # 30.0f

    const v23, 0x444f8000    # 830.0f

    const/high16 v24, 0x41f00000    # 30.0f

    move-object/from16 v20, v26

    move-object/from16 v25, v4

    invoke-virtual/range {v20 .. v25}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1875
    const/high16 v21, 0x41700000    # 15.0f

    const/high16 v22, 0x43910000    # 290.0f

    const/high16 v23, 0x43570000    # 215.0f

    const/high16 v24, 0x43910000    # 290.0f

    move-object/from16 v20, v26

    move-object/from16 v25, v4

    invoke-virtual/range {v20 .. v25}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1876
    const/high16 v21, 0x41700000    # 15.0f

    const v22, 0x43b18000    # 355.0f

    const/high16 v23, 0x43570000    # 215.0f

    const v24, 0x43b18000    # 355.0f

    move-object/from16 v20, v26

    move-object/from16 v25, v4

    invoke-virtual/range {v20 .. v25}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1878
    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    move/from16 v20, v5

    .end local v5    # "pdfWidth":I
    .local v20, "pdfWidth":I
    const v5, 0x7f0f0103

    invoke-virtual {v1, v5}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    move-object/from16 v21, v7

    .end local v7    # "pageInfo":Landroid/graphics/pdf/PdfDocument$PageInfo;
    .local v21, "pageInfo":Landroid/graphics/pdf/PdfDocument$PageInfo;
    iget-object v7, v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    .line 1879
    invoke-virtual {v7}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getVerificationNumberToday()I

    move-result v7

    const/16 v17, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v18, 0x0

    aput-object v7, v6, v18

    aput-object p2, v6, v17

    const/4 v7, 0x2

    aput-object p3, v6, v7

    const/4 v7, 0x3

    aput-object p4, v6, v7

    const/16 v22, 0x4

    iget-object v7, v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v7}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getStationNumber()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v22

    iget-object v7, v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    .line 1880
    invoke-virtual {v7}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getVerificationDate()Ljava/lang/String;

    move-result-object v7

    const/16 v22, 0x5

    aput-object v7, v6, v22

    .line 1878
    invoke-static {v11, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x41a00000    # 20.0f

    move-object/from16 v7, v26

    .end local v26    # "canvas":Landroid/graphics/Canvas;
    .local v7, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v7, v5, v6, v6, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1882
    const/high16 v5, 0x41100000    # 9.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1883
    const/16 v5, 0x14

    .line 1884
    .local v5, "col":I
    const/4 v11, 0x4

    .line 1885
    .local v11, "row":I
    const v6, 0x7f0f010a

    invoke-virtual {v1, v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move/from16 v24, v8

    .end local v8    # "pdfHeigth":I
    .local v24, "pdfHeigth":I
    int-to-float v8, v5

    add-int/lit8 v25, v11, 0x1

    .end local v11    # "row":I
    .local v25, "row":I
    mul-int v11, v11, v10

    int-to-float v11, v11

    invoke-virtual {v7, v6, v8, v11, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1886
    const v6, 0x7f0f00fb

    invoke-virtual {v1, v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    int-to-float v8, v5

    add-int/lit8 v11, v25, 0x1

    move/from16 v26, v14

    .end local v14    # "consumptionValid":Z
    .end local v25    # "row":I
    .restart local v11    # "row":I
    .local v26, "consumptionValid":Z
    mul-int v14, v25, v10

    int-to-float v14, v14

    invoke-virtual {v7, v6, v8, v14, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1887
    const v6, 0x7f0f010b

    invoke-virtual {v1, v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    int-to-float v8, v5

    add-int/lit8 v14, v11, 0x1

    .end local v11    # "row":I
    .local v14, "row":I
    mul-int v11, v11, v10

    int-to-float v11, v11

    invoke-virtual {v7, v6, v8, v11, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1888
    const v6, 0x7f0f010c

    invoke-virtual {v1, v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    int-to-float v8, v5

    add-int/lit8 v11, v14, 0x1

    .end local v14    # "row":I
    .restart local v11    # "row":I
    mul-int v14, v14, v10

    int-to-float v14, v14

    invoke-virtual {v7, v6, v8, v14, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1889
    const v6, 0x7f0f0102

    invoke-virtual {v1, v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    int-to-float v8, v5

    add-int/lit8 v14, v11, 0x1

    .end local v11    # "row":I
    .restart local v14    # "row":I
    mul-int v11, v11, v10

    int-to-float v11, v11

    invoke-virtual {v7, v6, v8, v11, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1890
    const v6, 0x7f0f0105

    invoke-virtual {v1, v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    int-to-float v8, v5

    add-int/lit8 v11, v14, 0x1

    .end local v14    # "row":I
    .restart local v11    # "row":I
    mul-int v14, v14, v10

    int-to-float v14, v14

    invoke-virtual {v7, v6, v8, v14, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1892
    const v6, 0x7f0f0101

    invoke-virtual {v1, v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    int-to-float v8, v5

    add-int/lit8 v14, v11, 0x1

    .end local v11    # "row":I
    .restart local v14    # "row":I
    mul-int v11, v11, v10

    int-to-float v11, v11

    invoke-virtual {v7, v6, v8, v11, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1893
    const v6, 0x7f0f00fc

    invoke-virtual {v1, v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    int-to-float v8, v5

    add-int/lit8 v11, v14, 0x1

    .end local v14    # "row":I
    .restart local v11    # "row":I
    mul-int v14, v14, v10

    int-to-float v14, v14

    invoke-virtual {v7, v6, v8, v14, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1894
    const v6, 0x7f0f00fd

    invoke-virtual {v1, v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    int-to-float v8, v5

    add-int/lit8 v14, v11, 0x1

    .end local v11    # "row":I
    .restart local v14    # "row":I
    mul-int v11, v11, v10

    int-to-float v11, v11

    invoke-virtual {v7, v6, v8, v11, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1895
    const v6, 0x7f0f0104

    invoke-virtual {v1, v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    int-to-float v8, v5

    add-int/lit8 v11, v14, 0x1

    .end local v14    # "row":I
    .restart local v11    # "row":I
    mul-int v14, v14, v10

    int-to-float v14, v14

    invoke-virtual {v7, v6, v8, v14, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1896
    const v6, 0x7f0f0106

    invoke-virtual {v1, v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    int-to-float v8, v5

    mul-int v14, v11, v10

    int-to-float v14, v14

    invoke-virtual {v7, v6, v8, v14, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1898
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1899
    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getRequiredMeasurement(I)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1900
    .local v6, "measurement":Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    const-string v14, "%.1f"

    const-string v8, ""

    move/from16 v29, v5

    .end local v5    # "col":I
    .local v29, "col":I
    const-string v5, "%.3f"

    move/from16 v30, v11

    .end local v11    # "row":I
    .local v30, "row":I
    const-string v11, "%s"

    move/from16 v31, v15

    .end local v15    # "resultValid":I
    .local v31, "resultValid":I
    const-string v15, "%d"

    move-object/from16 v32, v12

    .end local v12    # "fOut":Ljava/io/FileOutputStream;
    .local v32, "fOut":Ljava/io/FileOutputStream;
    const-string v12, "%.2f"

    move-object/from16 v33, v9

    .end local v9    # "document":Landroid/graphics/pdf/PdfDocument;
    .local v33, "document":Landroid/graphics/pdf/PdfDocument;
    const/high16 v34, 0x447a0000    # 1000.0f

    if-eqz v6, :cond_7

    .line 1901
    const/16 v9, 0xf0

    .line 1902
    .end local v29    # "col":I
    .local v9, "col":I
    const/16 v29, 0x3

    .line 1903
    .end local v30    # "row":I
    .local v29, "row":I
    move-object/from16 v35, v2

    :try_start_2
    const-string v2, "\u0422\u0435\u0441\u0442 1"

    move-object/from16 v36, v3

    .end local v3    # "dnTypeFull":Ljava/lang/String;
    .local v36, "dnTypeFull":Ljava/lang/String;
    int-to-float v3, v9

    add-int/lit8 v30, v29, 0x1

    move/from16 v37, v13

    .end local v13    # "measCounter":I
    .end local v29    # "row":I
    .restart local v30    # "row":I
    .local v37, "measCounter":I
    mul-int v13, v29, v10

    int-to-float v13, v13

    invoke-virtual {v7, v2, v3, v13, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1904
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v13, v3, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getRequiredConsumptionLit()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v3, v34

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/16 v18, 0x0

    aput-object v3, v13, v18

    invoke-static {v2, v5, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v9

    add-int/lit8 v13, v30, 0x1

    move-object/from16 v38, v8

    .end local v30    # "row":I
    .local v13, "row":I
    mul-int v8, v30, v10

    int-to-float v8, v8

    invoke-virtual {v7, v2, v3, v8, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1905
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getRequiredError()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v18, 0x0

    aput-object v3, v8, v18

    invoke-static {v2, v15, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v9

    add-int/lit8 v8, v13, 0x1

    .end local v13    # "row":I
    .local v8, "row":I
    mul-int v13, v13, v10

    int-to-float v13, v13

    invoke-virtual {v7, v2, v3, v13, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1906
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v13, v3, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getRequiredVolumeLit()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v18, 0x0

    aput-object v3, v13, v18

    invoke-static {v2, v15, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v9

    add-int/lit8 v13, v8, 0x1

    .end local v8    # "row":I
    .restart local v13    # "row":I
    mul-int v8, v8, v10

    int-to-float v8, v8

    invoke-virtual {v7, v2, v3, v8, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1907
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getValStart()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v3, v34

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/16 v18, 0x0

    aput-object v3, v8, v18

    invoke-static {v2, v12, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v9

    add-int/lit8 v8, v13, 0x1

    .end local v13    # "row":I
    .restart local v8    # "row":I
    mul-int v13, v13, v10

    int-to-float v13, v13

    invoke-virtual {v7, v2, v3, v13, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1908
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v13, v3, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getValEnd()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v3, v34

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/16 v18, 0x0

    aput-object v3, v13, v18

    invoke-static {v2, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v9

    add-int/lit8 v13, v8, 0x1

    .end local v8    # "row":I
    .restart local v13    # "row":I
    mul-int v8, v8, v10

    int-to-float v8, v8

    invoke-virtual {v7, v2, v3, v8, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1909
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getValEnd()I

    move-result v3

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getValStart()I

    move-result v29

    sub-int v3, v3, v29

    int-to-float v3, v3

    div-float v3, v3, v34

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/16 v18, 0x0

    aput-object v3, v8, v18

    invoke-static {v2, v12, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v9

    add-int/lit8 v8, v13, 0x1

    .end local v13    # "row":I
    .restart local v8    # "row":I
    mul-int v13, v13, v10

    int-to-float v13, v13

    invoke-virtual {v7, v2, v3, v13, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1911
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v13, v3, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getDuration()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v3, v34

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/16 v18, 0x0

    aput-object v3, v13, v18

    invoke-static {v2, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v9

    add-int/lit8 v13, v8, 0x1

    .end local v8    # "row":I
    .restart local v13    # "row":I
    mul-int v8, v8, v10

    int-to-float v8, v8

    invoke-virtual {v7, v2, v3, v8, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1912
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getConsumptionAvrgLit()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/16 v18, 0x0

    aput-object v3, v8, v18

    invoke-static {v2, v5, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v9

    add-int/lit8 v8, v13, 0x1

    .end local v13    # "row":I
    .restart local v8    # "row":I
    mul-int v13, v13, v10

    int-to-float v13, v13

    invoke-virtual {v7, v2, v3, v13, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1913
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v13, v3, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->avrgConRange()I

    move-result v3

    if-nez v3, :cond_0

    const v3, 0x7f0f0052

    invoke-virtual {v1, v3}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto :goto_1

    :cond_0
    const v3, 0x7f0f0051

    invoke-virtual {v1, v3}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v29

    :goto_1
    const/4 v3, 0x0

    aput-object v29, v13, v3

    invoke-static {v2, v11, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v9

    add-int/lit8 v13, v8, 0x1

    .end local v8    # "row":I
    .restart local v13    # "row":I
    mul-int v8, v8, v10

    int-to-float v8, v8

    invoke-virtual {v7, v2, v3, v8, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1914
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getError()I

    move-result v3

    int-to-float v3, v3

    const/high16 v25, 0x41200000    # 10.0f

    div-float v3, v3, v25

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/16 v18, 0x0

    aput-object v3, v8, v18

    invoke-static {v2, v14, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v9

    add-int/lit8 v8, v13, 0x1

    .end local v13    # "row":I
    .restart local v8    # "row":I
    mul-int v13, v13, v10

    int-to-float v13, v13

    invoke-virtual {v7, v2, v3, v13, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1915
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v13, v3, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getResult()I

    move-result v3

    move-object/from16 v39, v14

    const/4 v14, 0x1

    if-ne v3, v14, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v14, 0x7f03000a

    invoke-virtual {v3, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v14, 0x1

    aget-object v3, v3, v14

    goto :goto_2

    :cond_1
    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getResult()I

    move-result v3

    const/4 v14, 0x2

    if-ne v3, v14, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v14, 0x7f03000a

    invoke-virtual {v3, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v14, 0x2

    aget-object v3, v3, v14

    goto :goto_2

    :cond_2
    move-object/from16 v3, v35

    :goto_2
    const/4 v14, 0x0

    aput-object v3, v13, v14

    invoke-static {v2, v11, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v9

    mul-int v13, v8, v10

    int-to-float v13, v13

    invoke-virtual {v7, v2, v3, v13, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1917
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1918
    move-object/from16 v2, v38

    .line 1919
    .local v2, "reiteration":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getReiterationNumber()I

    move-result v3

    if-lez v3, :cond_3

    .line 1920
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v13, ", \u043f\u043e\u0432\u0442\u043e\u0440 %d"

    move-object/from16 v29, v2

    const/4 v14, 0x1

    .end local v2    # "reiteration":Ljava/lang/String;
    .local v29, "reiteration":Ljava/lang/String;
    new-array v2, v14, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getReiterationNumber()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v18, 0x0

    aput-object v14, v2, v18

    invoke-static {v3, v13, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .end local v29    # "reiteration":Ljava/lang/String;
    .restart local v2    # "reiteration":Ljava/lang/String;
    goto :goto_3

    .line 1919
    :cond_3
    move-object/from16 v29, v2

    .line 1922
    :goto_3
    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->hasPhotoStart()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1923
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v14, "%s 1%s"

    move/from16 v30, v8

    const/4 v13, 0x2

    .end local v8    # "row":I
    .restart local v30    # "row":I
    new-array v8, v13, [Ljava/lang/Object;

    const v13, 0x7f0f0108

    invoke-virtual {v1, v13}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v18, 0x0

    aput-object v13, v8, v18

    const/4 v13, 0x1

    aput-object v2, v8, v13

    invoke-static {v3, v14, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/high16 v8, 0x437a0000    # 250.0f

    const/high16 v14, 0x43610000    # 225.0f

    invoke-virtual {v7, v3, v14, v8, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1924
    invoke-virtual {v6, v13}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1925
    .local v3, "image":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 1926
    .local v8, "matrix":Landroid/graphics/Matrix;
    const/high16 v13, 0x43820000    # 260.0f

    const/high16 v14, 0x43610000    # 225.0f

    invoke-virtual {v8, v14, v13}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1927
    const v13, 0x3e99999a    # 0.3f

    invoke-virtual {v8, v13, v13}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1928
    const/4 v13, 0x0

    invoke-virtual {v7, v3, v8, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_4

    .line 1922
    .end local v3    # "image":Landroid/graphics/Bitmap;
    .end local v30    # "row":I
    .local v8, "row":I
    :cond_4
    move/from16 v30, v8

    .line 1930
    .end local v8    # "row":I
    .restart local v30    # "row":I
    :goto_4
    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->hasPhotoEnd()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1931
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v8, "%s 1%s"

    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/Object;

    const v13, 0x7f0f0107

    invoke-virtual {v1, v13}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v18, 0x0

    aput-object v13, v14, v18

    const/4 v13, 0x1

    aput-object v2, v14, v13

    invoke-static {v3, v8, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/high16 v8, 0x43d20000    # 420.0f

    const/high16 v13, 0x43610000    # 225.0f

    invoke-virtual {v7, v3, v13, v8, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1932
    const/4 v3, 0x2

    invoke-virtual {v6, v3}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v3, v8

    .line 1933
    .restart local v3    # "image":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 1934
    .local v8, "matrix":Landroid/graphics/Matrix;
    const/high16 v13, 0x43610000    # 225.0f

    const/high16 v14, 0x43d70000    # 430.0f

    invoke-virtual {v8, v13, v14}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1935
    const v13, 0x3e99999a    # 0.3f

    invoke-virtual {v8, v13, v13}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1936
    const/4 v13, 0x0

    invoke-virtual {v7, v3, v8, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1938
    add-int/lit8 v13, v37, 0x1

    .line 1939
    .end local v37    # "measCounter":I
    .local v13, "measCounter":I
    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->avrgConRange()I

    move-result v14

    if-eqz v14, :cond_5

    .line 1940
    const/4 v14, 0x0

    .end local v26    # "consumptionValid":Z
    .local v14, "consumptionValid":Z
    goto :goto_5

    .line 1939
    .end local v14    # "consumptionValid":Z
    .restart local v26    # "consumptionValid":Z
    :cond_5
    move/from16 v14, v26

    .line 1942
    .end local v26    # "consumptionValid":Z
    .restart local v14    # "consumptionValid":Z
    :goto_5
    move-object/from16 v29, v2

    .end local v2    # "reiteration":Ljava/lang/String;
    .restart local v29    # "reiteration":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getResult()I

    move-result v2

    move-object/from16 v40, v3

    const/4 v3, 0x1

    .end local v3    # "image":Landroid/graphics/Bitmap;
    .local v40, "image":Landroid/graphics/Bitmap;
    if-eq v2, v3, :cond_8

    .line 1943
    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getResult()I

    move-result v2

    move/from16 v31, v2

    .end local v31    # "resultValid":I
    .local v2, "resultValid":I
    goto :goto_6

    .line 1930
    .end local v8    # "matrix":Landroid/graphics/Matrix;
    .end local v13    # "measCounter":I
    .end local v14    # "consumptionValid":Z
    .end local v29    # "reiteration":Ljava/lang/String;
    .end local v40    # "image":Landroid/graphics/Bitmap;
    .local v2, "reiteration":Ljava/lang/String;
    .restart local v26    # "consumptionValid":Z
    .restart local v31    # "resultValid":I
    .restart local v37    # "measCounter":I
    :cond_6
    move-object/from16 v29, v2

    .end local v2    # "reiteration":Ljava/lang/String;
    .restart local v29    # "reiteration":Ljava/lang/String;
    move/from16 v14, v26

    move/from16 v13, v37

    goto :goto_6

    .line 1900
    .end local v9    # "col":I
    .end local v36    # "dnTypeFull":Ljava/lang/String;
    .end local v37    # "measCounter":I
    .local v3, "dnTypeFull":Ljava/lang/String;
    .restart local v13    # "measCounter":I
    .local v29, "col":I
    :cond_7
    move-object/from16 v35, v2

    move-object/from16 v36, v3

    move-object/from16 v38, v8

    move/from16 v37, v13

    move-object/from16 v39, v14

    .end local v3    # "dnTypeFull":Ljava/lang/String;
    .end local v13    # "measCounter":I
    .restart local v36    # "dnTypeFull":Ljava/lang/String;
    .restart local v37    # "measCounter":I
    move/from16 v14, v26

    move/from16 v9, v29

    .line 1948
    .end local v26    # "consumptionValid":Z
    .end local v29    # "col":I
    .end local v37    # "measCounter":I
    .restart local v9    # "col":I
    .restart local v13    # "measCounter":I
    .restart local v14    # "consumptionValid":Z
    :cond_8
    :goto_6
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1949
    iget-object v2, v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getRequiredMeasurement(I)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v2

    .line 1950
    .end local v6    # "measurement":Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    .local v2, "measurement":Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    if-eqz v2, :cond_11

    .line 1951
    const/16 v9, 0x1bd

    .line 1952
    const/4 v3, 0x3

    .line 1953
    .end local v30    # "row":I
    .local v3, "row":I
    const-string v6, "\u0422\u0435\u0441\u0442 2"

    int-to-float v8, v9

    add-int/lit8 v26, v3, 0x1

    .end local v3    # "row":I
    .local v26, "row":I
    mul-int v3, v3, v10

    int-to-float v3, v3

    invoke-virtual {v7, v6, v8, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1954
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getRequiredConsumptionLit()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v6, v34

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/16 v18, 0x0

    aput-object v6, v8, v18

    invoke-static {v3, v5, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-float v6, v9

    add-int/lit8 v8, v26, 0x1

    move/from16 v29, v14

    .end local v14    # "consumptionValid":Z
    .end local v26    # "row":I
    .local v8, "row":I
    .local v29, "consumptionValid":Z
    mul-int v14, v26, v10

    int-to-float v14, v14

    invoke-virtual {v7, v3, v6, v14, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1955
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v14, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getRequiredError()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v18, 0x0

    aput-object v6, v14, v18

    invoke-static {v3, v15, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-float v6, v9

    add-int/lit8 v14, v8, 0x1

    .end local v8    # "row":I
    .local v14, "row":I
    mul-int v8, v8, v10

    int-to-float v8, v8

    invoke-virtual {v7, v3, v6, v8, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1956
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getRequiredVolumeLit()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v18, 0x0

    aput-object v6, v8, v18

    invoke-static {v3, v15, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-float v6, v9

    add-int/lit8 v8, v14, 0x1

    .end local v14    # "row":I
    .restart local v8    # "row":I
    mul-int v14, v14, v10

    int-to-float v14, v14

    invoke-virtual {v7, v3, v6, v14, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1957
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v14, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getValStart()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v6, v34

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/16 v18, 0x0

    aput-object v6, v14, v18

    invoke-static {v3, v12, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-float v6, v9

    add-int/lit8 v14, v8, 0x1

    .end local v8    # "row":I
    .restart local v14    # "row":I
    mul-int v8, v8, v10

    int-to-float v8, v8

    invoke-virtual {v7, v3, v6, v8, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1958
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getValEnd()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v6, v34

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/16 v18, 0x0

    aput-object v6, v8, v18

    invoke-static {v3, v12, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-float v6, v9

    add-int/lit8 v8, v14, 0x1

    .end local v14    # "row":I
    .restart local v8    # "row":I
    mul-int v14, v14, v10

    int-to-float v14, v14

    invoke-virtual {v7, v3, v6, v14, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1959
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v14, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getValEnd()I

    move-result v6

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getValStart()I

    move-result v26

    sub-int v6, v6, v26

    int-to-float v6, v6

    div-float v6, v6, v34

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/16 v18, 0x0

    aput-object v6, v14, v18

    invoke-static {v3, v12, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-float v6, v9

    add-int/lit8 v14, v8, 0x1

    .end local v8    # "row":I
    .restart local v14    # "row":I
    mul-int v8, v8, v10

    int-to-float v8, v8

    invoke-virtual {v7, v3, v6, v8, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1961
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getDuration()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v6, v34

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/16 v18, 0x0

    aput-object v6, v8, v18

    invoke-static {v3, v12, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-float v6, v9

    add-int/lit8 v8, v14, 0x1

    .end local v14    # "row":I
    .restart local v8    # "row":I
    mul-int v14, v14, v10

    int-to-float v14, v14

    invoke-virtual {v7, v3, v6, v14, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1962
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v14, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getConsumptionAvrgLit()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/16 v18, 0x0

    aput-object v6, v14, v18

    invoke-static {v3, v5, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-float v6, v9

    add-int/lit8 v14, v8, 0x1

    .end local v8    # "row":I
    .restart local v14    # "row":I
    mul-int v8, v8, v10

    int-to-float v8, v8

    invoke-virtual {v7, v3, v6, v8, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1963
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->avrgConRange()I

    move-result v6

    if-nez v6, :cond_9

    const v6, 0x7f0f0052

    invoke-virtual {v1, v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v26

    goto :goto_7

    :cond_9
    const v6, 0x7f0f0051

    invoke-virtual {v1, v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v26

    :goto_7
    const/4 v6, 0x0

    aput-object v26, v8, v6

    invoke-static {v3, v11, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-float v6, v9

    add-int/lit8 v8, v14, 0x1

    .end local v14    # "row":I
    .restart local v8    # "row":I
    mul-int v14, v14, v10

    int-to-float v14, v14

    invoke-virtual {v7, v3, v6, v14, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1964
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v14, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getError()I

    move-result v6

    int-to-float v6, v6

    const/high16 v25, 0x41200000    # 10.0f

    div-float v6, v6, v25

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/16 v18, 0x0

    aput-object v6, v14, v18

    move-object/from16 v6, v39

    invoke-static {v3, v6, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-float v14, v9

    add-int/lit8 v30, v8, 0x1

    .end local v8    # "row":I
    .restart local v30    # "row":I
    mul-int v8, v8, v10

    int-to-float v8, v8

    invoke-virtual {v7, v3, v14, v8, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1965
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v8, 0x1

    new-array v14, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getResult()I

    move-result v8

    move-object/from16 v39, v6

    const/4 v6, 0x1

    if-ne v8, v6, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v6, 0x7f03000a

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    const/4 v6, 0x1

    aget-object v8, v8, v6

    goto :goto_8

    :cond_a
    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getResult()I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f03000a

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    aget-object v6, v6, v8

    move-object v8, v6

    goto :goto_8

    :cond_b
    move-object/from16 v8, v35

    :goto_8
    const/4 v6, 0x0

    aput-object v8, v14, v6

    invoke-static {v3, v11, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-float v6, v9

    mul-int v8, v30, v10

    int-to-float v8, v8

    invoke-virtual {v7, v3, v6, v8, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1967
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1968
    move-object/from16 v3, v38

    .line 1969
    .local v3, "reiteration":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getReiterationNumber()I

    move-result v6

    if-lez v6, :cond_c

    .line 1970
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v8, ", \u043f\u043e\u0432\u0442\u043e\u0440 %d"

    move-object/from16 v26, v3

    const/4 v14, 0x1

    .end local v3    # "reiteration":Ljava/lang/String;
    .local v26, "reiteration":Ljava/lang/String;
    new-array v3, v14, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getReiterationNumber()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v18, 0x0

    aput-object v14, v3, v18

    invoke-static {v6, v8, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .end local v26    # "reiteration":Ljava/lang/String;
    .restart local v3    # "reiteration":Ljava/lang/String;
    goto :goto_9

    .line 1969
    :cond_c
    move-object/from16 v26, v3

    .line 1972
    :goto_9
    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->hasPhotoStart()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1973
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v8, "%s 2%s"

    move/from16 v26, v9

    const/4 v14, 0x2

    .end local v9    # "col":I
    .local v26, "col":I
    new-array v9, v14, [Ljava/lang/Object;

    const v14, 0x7f0f0108

    invoke-virtual {v1, v14}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v18, 0x0

    aput-object v14, v9, v18

    const/4 v14, 0x1

    aput-object v3, v9, v14

    invoke-static {v6, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/high16 v8, 0x437a0000    # 250.0f

    const/high16 v9, 0x43d70000    # 430.0f

    invoke-virtual {v7, v6, v9, v8, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1974
    invoke-virtual {v2, v14}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1975
    .local v6, "image":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 1976
    .local v8, "matrix":Landroid/graphics/Matrix;
    const/high16 v9, 0x43820000    # 260.0f

    const/high16 v14, 0x43d70000    # 430.0f

    invoke-virtual {v8, v14, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1977
    const v9, 0x3e99999a    # 0.3f

    invoke-virtual {v8, v9, v9}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1978
    const/4 v9, 0x0

    invoke-virtual {v7, v6, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_a

    .line 1972
    .end local v6    # "image":Landroid/graphics/Bitmap;
    .end local v8    # "matrix":Landroid/graphics/Matrix;
    .end local v26    # "col":I
    .restart local v9    # "col":I
    :cond_d
    move/from16 v26, v9

    .line 1980
    .end local v9    # "col":I
    .restart local v26    # "col":I
    :goto_a
    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->hasPhotoEnd()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1981
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v8, "%s 2%s"

    const/4 v9, 0x2

    new-array v14, v9, [Ljava/lang/Object;

    const v9, 0x7f0f0107

    invoke-virtual {v1, v9}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v18, 0x0

    aput-object v9, v14, v18

    const/4 v9, 0x1

    aput-object v3, v14, v9

    invoke-static {v6, v8, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/high16 v8, 0x43d20000    # 420.0f

    const/high16 v9, 0x43d70000    # 430.0f

    invoke-virtual {v7, v6, v9, v8, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1982
    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v6, v8

    .line 1983
    .restart local v6    # "image":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 1984
    .restart local v8    # "matrix":Landroid/graphics/Matrix;
    const/high16 v9, 0x43d70000    # 430.0f

    invoke-virtual {v8, v9, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1985
    const v9, 0x3e99999a    # 0.3f

    invoke-virtual {v8, v9, v9}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1986
    const/4 v9, 0x0

    invoke-virtual {v7, v6, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1988
    add-int/lit8 v13, v13, 0x1

    .line 1989
    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->avrgConRange()I

    move-result v9

    if-eqz v9, :cond_e

    .line 1990
    const/4 v14, 0x0

    .end local v29    # "consumptionValid":Z
    .local v14, "consumptionValid":Z
    goto :goto_b

    .line 1989
    .end local v14    # "consumptionValid":Z
    .restart local v29    # "consumptionValid":Z
    :cond_e
    move/from16 v14, v29

    .line 1992
    .end local v29    # "consumptionValid":Z
    .restart local v14    # "consumptionValid":Z
    :goto_b
    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getResult()I

    move-result v9

    move-object/from16 v37, v3

    const/4 v3, 0x1

    .end local v3    # "reiteration":Ljava/lang/String;
    .local v37, "reiteration":Ljava/lang/String;
    if-eq v9, v3, :cond_f

    if-eqz v31, :cond_f

    .line 1993
    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getResult()I

    move-result v3

    move/from16 v31, v3

    move/from16 v9, v26

    goto :goto_c

    .line 1998
    .end local v6    # "image":Landroid/graphics/Bitmap;
    .end local v8    # "matrix":Landroid/graphics/Matrix;
    .end local v37    # "reiteration":Ljava/lang/String;
    :cond_f
    move/from16 v9, v26

    goto :goto_c

    .line 1980
    .end local v14    # "consumptionValid":Z
    .restart local v3    # "reiteration":Ljava/lang/String;
    .restart local v29    # "consumptionValid":Z
    :cond_10
    move-object/from16 v37, v3

    .end local v3    # "reiteration":Ljava/lang/String;
    .restart local v37    # "reiteration":Ljava/lang/String;
    move/from16 v9, v26

    move/from16 v14, v29

    goto :goto_c

    .line 1950
    .end local v26    # "col":I
    .end local v29    # "consumptionValid":Z
    .end local v37    # "reiteration":Ljava/lang/String;
    .restart local v9    # "col":I
    .restart local v14    # "consumptionValid":Z
    :cond_11
    move/from16 v29, v14

    .line 1998
    :goto_c
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1999
    iget-object v3, v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getRequiredMeasurement(I)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v3

    move-object v2, v3

    .line 2000
    if-eqz v2, :cond_1a

    .line 2001
    const/16 v9, 0x28a

    .line 2002
    const/4 v3, 0x3

    .line 2003
    .end local v30    # "row":I
    .local v3, "row":I
    const-string v6, "\u0422\u0435\u0441\u0442 3"

    int-to-float v8, v9

    add-int/lit8 v26, v3, 0x1

    .end local v3    # "row":I
    .local v26, "row":I
    mul-int v3, v3, v10

    int-to-float v3, v3

    invoke-virtual {v7, v6, v8, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2004
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getRequiredConsumptionLit()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v6, v34

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/16 v18, 0x0

    aput-object v6, v8, v18

    invoke-static {v3, v5, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-float v6, v9

    add-int/lit8 v8, v26, 0x1

    move/from16 v29, v14

    .end local v14    # "consumptionValid":Z
    .end local v26    # "row":I
    .local v8, "row":I
    .restart local v29    # "consumptionValid":Z
    mul-int v14, v26, v10

    int-to-float v14, v14

    invoke-virtual {v7, v3, v6, v14, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2005
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v14, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getRequiredError()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v18, 0x0

    aput-object v6, v14, v18

    invoke-static {v3, v15, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-float v6, v9

    add-int/lit8 v14, v8, 0x1

    .end local v8    # "row":I
    .local v14, "row":I
    mul-int v8, v8, v10

    int-to-float v8, v8

    invoke-virtual {v7, v3, v6, v8, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2006
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getRequiredVolumeLit()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v18, 0x0

    aput-object v6, v8, v18

    invoke-static {v3, v15, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-float v6, v9

    add-int/lit8 v8, v14, 0x1

    .end local v14    # "row":I
    .restart local v8    # "row":I
    mul-int v14, v14, v10

    int-to-float v14, v14

    invoke-virtual {v7, v3, v6, v14, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2007
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v14, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getValStart()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v6, v34

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/16 v18, 0x0

    aput-object v6, v14, v18

    invoke-static {v3, v12, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-float v6, v9

    add-int/lit8 v14, v8, 0x1

    .end local v8    # "row":I
    .restart local v14    # "row":I
    mul-int v8, v8, v10

    int-to-float v8, v8

    invoke-virtual {v7, v3, v6, v8, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2008
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getValEnd()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v6, v34

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/16 v18, 0x0

    aput-object v6, v8, v18

    invoke-static {v3, v12, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-float v6, v9

    add-int/lit8 v8, v14, 0x1

    .end local v14    # "row":I
    .restart local v8    # "row":I
    mul-int v14, v14, v10

    int-to-float v14, v14

    invoke-virtual {v7, v3, v6, v14, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2009
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v14, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getValEnd()I

    move-result v6

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getValStart()I

    move-result v26

    sub-int v6, v6, v26

    int-to-float v6, v6

    div-float v6, v6, v34

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/16 v18, 0x0

    aput-object v6, v14, v18

    invoke-static {v3, v12, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-float v6, v9

    add-int/lit8 v14, v8, 0x1

    .end local v8    # "row":I
    .restart local v14    # "row":I
    mul-int v8, v8, v10

    int-to-float v8, v8

    invoke-virtual {v7, v3, v6, v8, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2011
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getDuration()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v6, v34

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/16 v18, 0x0

    aput-object v6, v8, v18

    invoke-static {v3, v12, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-float v6, v9

    add-int/lit8 v8, v14, 0x1

    .end local v14    # "row":I
    .restart local v8    # "row":I
    mul-int v14, v14, v10

    int-to-float v12, v14

    invoke-virtual {v7, v3, v6, v12, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2012
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v12, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getConsumptionAvrgLit()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v14, 0x0

    aput-object v6, v12, v14

    invoke-static {v3, v5, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-float v5, v9

    add-int/lit8 v6, v8, 0x1

    .end local v8    # "row":I
    .local v6, "row":I
    mul-int v8, v8, v10

    int-to-float v8, v8

    invoke-virtual {v7, v3, v5, v8, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2013
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->avrgConRange()I

    move-result v5

    if-nez v5, :cond_12

    const v5, 0x7f0f0052

    invoke-virtual {v1, v5}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_d

    :cond_12
    const v5, 0x7f0f0051

    invoke-virtual {v1, v5}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_d
    const/4 v12, 0x0

    aput-object v5, v8, v12

    invoke-static {v3, v11, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-float v5, v9

    add-int/lit8 v8, v6, 0x1

    .end local v6    # "row":I
    .restart local v8    # "row":I
    mul-int v6, v6, v10

    int-to-float v6, v6

    invoke-virtual {v7, v3, v5, v6, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2014
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getError()I

    move-result v5

    int-to-float v5, v5

    const/high16 v12, 0x41200000    # 10.0f

    div-float/2addr v5, v12

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v12, 0x0

    aput-object v5, v6, v12

    move-object/from16 v5, v39

    invoke-static {v3, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-float v5, v9

    add-int/lit8 v30, v8, 0x1

    .end local v8    # "row":I
    .restart local v30    # "row":I
    mul-int v8, v8, v10

    int-to-float v6, v8

    invoke-virtual {v7, v3, v5, v6, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2015
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getResult()I

    move-result v8

    if-ne v8, v5, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v12, 0x7f03000a

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v5

    goto :goto_e

    :cond_13
    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getResult()I

    move-result v5

    const/4 v8, 0x2

    if-ne v5, v8, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v12, 0x7f03000a

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v8

    move-object v8, v5

    goto :goto_e

    :cond_14
    move-object/from16 v8, v35

    :goto_e
    const/4 v5, 0x0

    aput-object v8, v6, v5

    invoke-static {v3, v11, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-float v5, v9

    mul-int v6, v30, v10

    int-to-float v6, v6

    invoke-virtual {v7, v3, v5, v6, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2017
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2018
    move-object/from16 v3, v38

    .line 2019
    .local v3, "reiteration":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getReiterationNumber()I

    move-result v5

    if-lez v5, :cond_15

    .line 2020
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v6, ", \u043f\u043e\u0432\u0442\u043e\u0440 %d"

    const/4 v8, 0x1

    new-array v12, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getReiterationNumber()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v14, 0x0

    aput-object v8, v12, v14

    invoke-static {v5, v6, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 2022
    :cond_15
    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->hasPhotoStart()Z

    move-result v5

    const v6, 0x441ec000    # 635.0f

    if-eqz v5, :cond_16

    .line 2023
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v8, "%s 3%s"

    const/4 v12, 0x2

    new-array v14, v12, [Ljava/lang/Object;

    const v12, 0x7f0f0108

    invoke-virtual {v1, v12}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v18, 0x0

    aput-object v12, v14, v18

    const/4 v12, 0x1

    aput-object v3, v14, v12

    invoke-static {v5, v8, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/high16 v8, 0x437a0000    # 250.0f

    invoke-virtual {v7, v5, v6, v8, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2024
    invoke-virtual {v2, v12}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2025
    .local v5, "image":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 2026
    .local v8, "matrix":Landroid/graphics/Matrix;
    const/high16 v12, 0x43820000    # 260.0f

    invoke-virtual {v8, v6, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 2027
    const v12, 0x3e99999a    # 0.3f

    invoke-virtual {v8, v12, v12}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 2028
    const/4 v12, 0x0

    invoke-virtual {v7, v5, v8, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 2030
    .end local v5    # "image":Landroid/graphics/Bitmap;
    .end local v8    # "matrix":Landroid/graphics/Matrix;
    :cond_16
    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->hasPhotoEnd()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 2031
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v8, "%s 3%s"

    const/4 v12, 0x2

    new-array v14, v12, [Ljava/lang/Object;

    const v12, 0x7f0f0107

    invoke-virtual {v1, v12}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v18, 0x0

    aput-object v12, v14, v18

    const/4 v12, 0x1

    aput-object v3, v14, v12

    invoke-static {v5, v8, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/high16 v8, 0x43d20000    # 420.0f

    invoke-virtual {v7, v5, v6, v8, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2032
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v5, v8

    .line 2033
    .restart local v5    # "image":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 2034
    .restart local v8    # "matrix":Landroid/graphics/Matrix;
    const/high16 v12, 0x43d70000    # 430.0f

    invoke-virtual {v8, v6, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 2035
    const v6, 0x3e99999a    # 0.3f

    invoke-virtual {v8, v6, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 2036
    const/4 v6, 0x0

    invoke-virtual {v7, v5, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 2038
    add-int/lit8 v13, v13, 0x1

    .line 2039
    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->avrgConRange()I

    move-result v6

    if-eqz v6, :cond_17

    .line 2040
    const/4 v14, 0x0

    .end local v29    # "consumptionValid":Z
    .local v14, "consumptionValid":Z
    goto :goto_f

    .line 2039
    .end local v14    # "consumptionValid":Z
    .restart local v29    # "consumptionValid":Z
    :cond_17
    move/from16 v14, v29

    .line 2042
    .end local v29    # "consumptionValid":Z
    .restart local v14    # "consumptionValid":Z
    :goto_f
    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getResult()I

    move-result v6

    const/4 v12, 0x1

    if-eq v6, v12, :cond_18

    if-eqz v31, :cond_18

    .line 2043
    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getResult()I

    move-result v6

    move/from16 v31, v6

    move/from16 v3, v31

    goto :goto_10

    .line 2048
    .end local v3    # "reiteration":Ljava/lang/String;
    .end local v5    # "image":Landroid/graphics/Bitmap;
    .end local v8    # "matrix":Landroid/graphics/Matrix;
    :cond_18
    move/from16 v3, v31

    goto :goto_10

    .line 2030
    .end local v14    # "consumptionValid":Z
    .restart local v3    # "reiteration":Ljava/lang/String;
    .restart local v29    # "consumptionValid":Z
    :cond_19
    move/from16 v14, v29

    move/from16 v3, v31

    goto :goto_10

    .line 2000
    .end local v3    # "reiteration":Ljava/lang/String;
    .end local v29    # "consumptionValid":Z
    .restart local v14    # "consumptionValid":Z
    :cond_1a
    move/from16 v29, v14

    .end local v14    # "consumptionValid":Z
    .restart local v29    # "consumptionValid":Z
    move/from16 v3, v31

    .line 2048
    .end local v29    # "consumptionValid":Z
    .end local v31    # "resultValid":I
    .local v3, "resultValid":I
    .restart local v14    # "consumptionValid":Z
    :goto_10
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2049
    const/16 v5, 0x14

    .line 2050
    .end local v9    # "col":I
    .local v5, "col":I
    const/16 v6, 0x11

    .line 2051
    .end local v30    # "row":I
    .restart local v6    # "row":I
    const v8, 0x7f0f00fe

    invoke-virtual {v1, v8}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    int-to-float v9, v5

    add-int/lit8 v12, v6, 0x1

    .end local v6    # "row":I
    .local v12, "row":I
    mul-int v6, v6, v10

    int-to-float v6, v6

    invoke-virtual {v7, v8, v9, v6, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2052
    const v6, 0x7f0f00f8

    invoke-virtual {v1, v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    int-to-float v8, v5

    add-int/lit8 v9, v12, 0x1

    .end local v12    # "row":I
    .local v9, "row":I
    mul-int v12, v12, v10

    int-to-float v12, v12

    invoke-virtual {v7, v6, v8, v12, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2053
    const v6, 0x7f0f00ff

    invoke-virtual {v1, v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    int-to-float v8, v5

    add-int/lit8 v12, v9, 0x1

    .end local v9    # "row":I
    .restart local v12    # "row":I
    mul-int v9, v9, v10

    int-to-float v9, v9

    invoke-virtual {v7, v6, v8, v9, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2054
    const v6, 0x7f0f0100

    invoke-virtual {v1, v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    int-to-float v8, v5

    add-int/lit8 v9, v12, 0x1

    .end local v12    # "row":I
    .restart local v9    # "row":I
    mul-int v12, v12, v10

    int-to-float v12, v12

    invoke-virtual {v7, v6, v8, v12, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2055
    const v6, 0x7f0f0109

    invoke-virtual {v1, v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    int-to-float v8, v5

    add-int/lit8 v12, v9, 0x1

    .end local v9    # "row":I
    .restart local v12    # "row":I
    mul-int v9, v9, v10

    int-to-float v9, v9

    invoke-virtual {v7, v6, v8, v9, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2056
    const v6, 0x7f0f0110

    invoke-virtual {v1, v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    int-to-float v8, v5

    add-int/lit8 v9, v12, 0x1

    .end local v12    # "row":I
    .restart local v9    # "row":I
    mul-int v12, v12, v10

    int-to-float v12, v12

    invoke-virtual {v7, v6, v8, v12, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2057
    const v6, 0x7f0f0111

    invoke-virtual {v1, v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    int-to-float v8, v5

    add-int/lit8 v12, v9, 0x1

    .end local v9    # "row":I
    .restart local v12    # "row":I
    mul-int v9, v9, v10

    int-to-float v9, v9

    invoke-virtual {v7, v6, v8, v9, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2058
    const v6, 0x7f0f00fa

    invoke-virtual {v1, v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    int-to-float v8, v5

    add-int/lit8 v9, v12, 0x1

    .end local v12    # "row":I
    .restart local v9    # "row":I
    mul-int v12, v12, v10

    int-to-float v12, v12

    invoke-virtual {v7, v6, v8, v12, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2059
    const v6, 0x7f0f00f9

    invoke-virtual {v1, v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    int-to-float v8, v5

    add-int/lit8 v12, v9, 0x1

    .end local v9    # "row":I
    .restart local v12    # "row":I
    mul-int v9, v9, v10

    int-to-float v9, v9

    invoke-virtual {v7, v6, v8, v9, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2061
    const v6, 0x7f0f010f

    invoke-virtual {v1, v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    int-to-float v8, v5

    mul-int v9, v12, v10

    int-to-float v9, v9

    invoke-virtual {v7, v6, v8, v9, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2063
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2064
    const/16 v5, 0x73

    .line 2065
    const/16 v6, 0x11

    .line 2066
    .end local v12    # "row":I
    .restart local v6    # "row":I
    iget-object v8, v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->testNameToText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v8

    int-to-float v9, v5

    add-int/lit8 v12, v6, 0x1

    .end local v6    # "row":I
    .restart local v12    # "row":I
    mul-int v6, v6, v10

    int-to-float v6, v6

    invoke-virtual {v7, v8, v9, v6, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2067
    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getTestName()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    const/4 v8, 0x1

    aget-char v6, v6, v8

    const/16 v8, 0x31

    if-lt v6, v8, :cond_1b

    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getTestName()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    const/4 v8, 0x1

    aget-char v6, v6, v8

    const/16 v8, 0x34

    if-gt v6, v8, :cond_1b

    .line 2068
    const-string v6, "\u0414\u0421\u0422\u0423 EN ISO 4064"

    int-to-float v8, v5

    add-int/lit8 v9, v12, 0x1

    .end local v12    # "row":I
    .restart local v9    # "row":I
    mul-int v12, v12, v10

    int-to-float v12, v12

    invoke-virtual {v7, v6, v8, v12, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_11

    .line 2070
    .end local v9    # "row":I
    .restart local v12    # "row":I
    :cond_1b
    const-string v6, "\u0414\u0421\u0422\u0423 3580"

    int-to-float v8, v5

    add-int/lit8 v9, v12, 0x1

    .end local v12    # "row":I
    .restart local v9    # "row":I
    mul-int v12, v12, v10

    int-to-float v12, v12

    invoke-virtual {v7, v6, v8, v12, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2072
    :goto_11
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v8, 0x1

    new-array v12, v8, [Ljava/lang/Object;

    iget-object v8, v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v8}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getCounterNumber()Ljava/lang/String;

    move-result-object v8

    const/16 v18, 0x0

    aput-object v8, v12, v18

    invoke-static {v6, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    int-to-float v8, v5

    add-int/lit8 v12, v9, 0x1

    .end local v9    # "row":I
    .restart local v12    # "row":I
    mul-int v9, v9, v10

    int-to-float v9, v9

    invoke-virtual {v7, v6, v8, v9, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2073
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v36, v9, v8

    invoke-static {v6, v11, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    int-to-float v8, v5

    add-int/lit8 v9, v12, 0x1

    .end local v12    # "row":I
    .restart local v9    # "row":I
    mul-int v12, v12, v10

    int-to-float v12, v12

    invoke-virtual {v7, v6, v8, v12, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2074
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v8, 0x1

    new-array v12, v8, [Ljava/lang/Object;

    iget-object v8, v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v8}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getProductionYear()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v18, 0x0

    aput-object v8, v12, v18

    invoke-static {v6, v15, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    int-to-float v8, v5

    add-int/lit8 v12, v9, 0x1

    .end local v9    # "row":I
    .restart local v12    # "row":I
    mul-int v9, v9, v10

    int-to-float v9, v9

    invoke-virtual {v7, v6, v8, v9, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2075
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v8, "%05d"

    move-object/from16 v25, v2

    const/4 v9, 0x1

    .end local v2    # "measurement":Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    .local v25, "measurement":Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    new-array v2, v9, [Ljava/lang/Object;

    iget-object v9, v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v9}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getInitialVolume()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v18, 0x0

    aput-object v9, v2, v18

    invoke-static {v6, v8, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-float v6, v5

    add-int/lit8 v8, v12, 0x1

    .end local v12    # "row":I
    .local v8, "row":I
    mul-int v12, v12, v10

    int-to-float v9, v12

    invoke-virtual {v7, v2, v6, v9, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2076
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v9, v6, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getWaterTemperatureRound()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v12, 0x0

    aput-object v6, v9, v12

    invoke-static {v2, v15, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-float v6, v5

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "row":I
    .restart local v9    # "row":I
    mul-int v8, v8, v10

    int-to-float v8, v8

    invoke-virtual {v7, v2, v6, v8, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2077
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getEnvironmentT()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v12, 0x0

    aput-object v6, v8, v12

    invoke-static {v2, v15, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-float v6, v5

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "row":I
    .restart local v8    # "row":I
    mul-int v9, v9, v10

    int-to-float v9, v9

    invoke-virtual {v7, v2, v6, v9, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2078
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v9, v6, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getEnvironmentH()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v12, 0x0

    aput-object v6, v9, v12

    invoke-static {v2, v15, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-float v6, v5

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "row":I
    .restart local v9    # "row":I
    mul-int v8, v8, v10

    int-to-float v8, v8

    invoke-virtual {v7, v2, v6, v8, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2079
    const/4 v2, 0x3

    if-ne v13, v2, :cond_1e

    .line 2081
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    if-nez v3, :cond_1c

    move-object/from16 v12, v35

    goto :goto_12

    :cond_1c
    if-ne v3, v6, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v15, 0x7f03000a

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v6

    goto :goto_12

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v12, 0x7f03000a

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x2

    aget-object v6, v6, v12

    move-object v12, v6

    :goto_12
    const/4 v6, 0x0

    aput-object v12, v8, v6

    invoke-static {v2, v11, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-float v6, v5

    mul-int v8, v9, v10

    int-to-float v8, v8

    invoke-virtual {v7, v2, v6, v8, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_13

    .line 2084
    :cond_1e
    int-to-float v2, v5

    mul-int v6, v9, v10

    int-to-float v6, v6

    move-object/from16 v8, v35

    invoke-virtual {v7, v8, v2, v6, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2087
    :goto_13
    iget-object v2, v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getTestPhoto()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2088
    .local v2, "image":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 2089
    .local v6, "matrix":Landroid/graphics/Matrix;
    const/high16 v8, 0x41a00000    # 20.0f

    const/high16 v11, 0x43d70000    # 430.0f

    invoke-virtual {v6, v8, v11}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 2090
    const v8, 0x3e99999a    # 0.3f

    invoke-virtual {v6, v8, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 2091
    const/4 v8, 0x0

    invoke-virtual {v7, v2, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2093
    move-object/from16 v8, v38

    .line 2095
    .local v8, "metrologist":Ljava/lang/String;
    :try_start_3
    new-instance v11, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getFilesDir()Ljava/io/File;

    move-result-object v12

    const-string v15, "settings.json"

    invoke-direct {v11, v12, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2096
    .local v11, "settings":Ljava/io/File;
    invoke-virtual/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getFilesDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v12, v15}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2097
    .local v12, "text":Ljava/lang/String;
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2098
    .local v15, "jsonSettings":Lorg/json/JSONObject;
    move-object/from16 v16, v2

    .end local v2    # "image":Landroid/graphics/Bitmap;
    .local v16, "image":Landroid/graphics/Bitmap;
    :try_start_4
    const-string v2, "metrologist"
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move/from16 v23, v3

    move-object/from16 v3, v38

    .end local v3    # "resultValid":I
    .local v23, "resultValid":I
    :try_start_5
    invoke-virtual {v15, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-object v8, v2

    .line 2101
    .end local v11    # "settings":Ljava/io/File;
    .end local v12    # "text":Ljava/lang/String;
    .end local v15    # "jsonSettings":Lorg/json/JSONObject;
    goto :goto_15

    .line 2099
    :catch_2
    move-exception v0

    move-object v2, v0

    goto :goto_14

    .end local v23    # "resultValid":I
    .restart local v3    # "resultValid":I
    :catch_3
    move-exception v0

    move/from16 v23, v3

    move-object/from16 v3, v38

    move-object v2, v0

    .end local v3    # "resultValid":I
    .restart local v23    # "resultValid":I
    goto :goto_14

    .end local v16    # "image":Landroid/graphics/Bitmap;
    .end local v23    # "resultValid":I
    .restart local v2    # "image":Landroid/graphics/Bitmap;
    .restart local v3    # "resultValid":I
    :catch_4
    move-exception v0

    move-object/from16 v16, v2

    move/from16 v23, v3

    move-object/from16 v3, v38

    move-object v2, v0

    .line 2100
    .end local v3    # "resultValid":I
    .local v2, "e":Lorg/json/JSONException;
    .restart local v16    # "image":Landroid/graphics/Bitmap;
    .restart local v23    # "resultValid":I
    :goto_14
    :try_start_6
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 2106
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_15
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 2107
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const v3, 0x7f0f010e

    invoke-virtual {v1, v3}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    invoke-static {v2, v3, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x44124000    # 585.0f

    const/high16 v11, 0x41a00000    # 20.0f

    invoke-virtual {v7, v2, v11, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2126
    :cond_1f
    move-object/from16 v3, v19

    move-object/from16 v2, v33

    .end local v19    # "page":Landroid/graphics/pdf/PdfDocument$Page;
    .end local v33    # "document":Landroid/graphics/pdf/PdfDocument;
    .local v2, "document":Landroid/graphics/pdf/PdfDocument;
    .local v3, "page":Landroid/graphics/pdf/PdfDocument$Page;
    invoke-virtual {v2, v3}, Landroid/graphics/pdf/PdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    .line 2127
    move-object/from16 v11, v32

    .end local v32    # "fOut":Ljava/io/FileOutputStream;
    .local v11, "fOut":Ljava/io/FileOutputStream;
    invoke-virtual {v2, v11}, Landroid/graphics/pdf/PdfDocument;->writeTo(Ljava/io/OutputStream;)V

    .line 2128
    invoke-virtual {v2}, Landroid/graphics/pdf/PdfDocument;->close()V

    .line 2129
    const-string v12, "pdf saved"

    invoke-static {v12}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->Log(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 2132
    .end local v2    # "document":Landroid/graphics/pdf/PdfDocument;
    .end local v3    # "page":Landroid/graphics/pdf/PdfDocument$Page;
    .end local v4    # "paint":Landroid/graphics/Paint;
    .end local v5    # "col":I
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "metrologist":Ljava/lang/String;
    .end local v9    # "row":I
    .end local v10    # "lineInterval":I
    .end local v11    # "fOut":Ljava/io/FileOutputStream;
    .end local v13    # "measCounter":I
    .end local v14    # "consumptionValid":Z
    .end local v16    # "image":Landroid/graphics/Bitmap;
    .end local v20    # "pdfWidth":I
    .end local v21    # "pageInfo":Landroid/graphics/pdf/PdfDocument$PageInfo;
    .end local v23    # "resultValid":I
    .end local v24    # "pdfHeigth":I
    .end local v25    # "measurement":Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    .end local v28    # "file":Ljava/io/File;
    .end local v36    # "dnTypeFull":Ljava/lang/String;
    goto :goto_17

    .line 2131
    .local v2, "e":Ljava/io/IOException;
    :goto_16
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 2133
    .end local v2    # "e":Ljava/io/IOException;
    :goto_17
    return-void
.end method

.method private savePdfAndExcel(Lorg/json/JSONObject;I)V
    .locals 11
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "success"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1829
    const-string v0, "PROTOCOL_DATE"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1830
    .local v0, "date":Ljava/lang/String;
    const-string v1, "PROTOCOL_TIME"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1831
    .local v7, "time":Ljava/lang/String;
    invoke-static {}, Lcom/poverka/httpFileClient/util/MyFileReader;->createPoverkaFolder()Ljava/io/File;

    move-result-object v8

    .line 1832
    .local v8, "folder":Ljava/io/File;
    invoke-static {v0}, Lcom/poverka/httpFileClient/util/MyFileReader;->createFolderInPoverkaFolder(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 1834
    .local v9, "dayFolder":Ljava/io/File;
    invoke-static {}, Lcom/poverka/httpFileClient/util/MyFileReader;->getDaysFromPoverka()Ljava/util/ArrayList;

    move-result-object v10

    .line 1835
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v10}, Lcom/poverka/httpFileClient/util/MyFileReader;->cleanOldest(Ljava/util/ArrayList;)V

    .line 1837
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getProtocolNumber()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, v9

    move-object v4, v0

    move-object v5, v7

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->savePdf(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1838
    const/16 v1, 0x2e

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v9, v1, p1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->saveExcel(Ljava/io/File;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1839
    return-void
.end method

.method private setViewsClickable(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 1190
    const v0, 0x7f09006a

    invoke-virtual {p0, v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1191
    .local v0, "buttonStart":Landroid/widget/Button;
    const v1, 0x7f090069

    invoke-virtual {p0, v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 1192
    .local v1, "buttonRepeat":Landroid/widget/ImageButton;
    const v2, 0x7f090068

    invoke-virtual {p0, v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 1194
    .local v2, "buttonNext":Landroid/widget/ImageButton;
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1195
    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1196
    invoke-virtual {v2, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1197
    return-void
.end method

.method private sleepTimerMode(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 581
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/poverka/httpFileClient/util/MyJSON;

    sget-object v1, Lcom/poverka/httpFileClient/util/MyJSON;->powerOnOff:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->isJSONok(Lorg/json/JSONObject;[Lcom/poverka/httpFileClient/util/MyJSON;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    sget-object v0, Lcom/poverka/httpFileClient/util/MyJSON;->powerOnOff:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->Log(Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MyModeQueue;->endMode()V

    goto :goto_0

    .line 586
    :cond_0
    const-string v0, "MeasurementActivity"

    const-string v1, "answer JSON object IS NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :goto_0
    return-void
.end method

.method private stopActivity()V
    .locals 2

    .line 1295
    const-string v0, "\u041e\u0441\u0442\u0430\u043d\u0430\u0432\u043b\u0438\u0432\u0430\u0435\u043c \u0432\u0441\u0435 \u043f\u0440\u043e\u0446\u0435\u0441\u0441\u044b"

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->Log(Ljava/lang/String;)V

    .line 1297
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    if-eqz v0, :cond_0

    .line 1298
    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MyModeQueue;->stopAndClear()V

    .line 1300
    :cond_0
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->freezeCheckerTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 1301
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1302
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->freezeCheckerTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1304
    :cond_1
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->senderThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .line 1305
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1307
    :cond_2
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mTcpClient:Lcom/poverka/httpFileClient/util/TcpClient;

    if-eqz v0, :cond_3

    .line 1308
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/util/TcpClient;->stopClient(Z)V

    .line 1310
    :cond_3
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->requestMode:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/MutableLiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 1311
    return-void
.end method

.method private temperatureBox()Landroid/widget/TextView;
    .locals 7

    .line 1200
    iget v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->screenHeight:I

    int-to-float v1, v0

    const v2, 0x3e0f5c29    # 0.14f

    mul-float v1, v1, v2

    float-to-double v1, v1

    const-wide v3, 0x3fd999999999999aL    # 0.4

    mul-double v1, v1, v3

    double-to-int v1, v1

    .line 1201
    .local v1, "viewHeight":I
    int-to-float v0, v0

    const v2, 0x3d4ccccd    # 0.05f

    mul-float v0, v0, v2

    float-to-double v2, v0

    const-wide v4, 0x3fe6666666666666L    # 0.7

    mul-double v2, v2, v4

    double-to-int v0, v2

    .line 1203
    .local v0, "textSize":I
    const/16 v2, 0xa

    .line 1204
    .local v2, "id":I
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1205
    .local v3, "v":Landroid/widget/TextView;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1206
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1207
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1208
    const v6, 0x7f080069

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1209
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setId(I)V

    .line 1210
    int-to-float v6, v0

    invoke-virtual {v3, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1211
    const-string v5, "\u0422\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u0430"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1212
    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1213
    return-object v3
.end method

.method private textOnImage(I)Ljava/lang/String;
    .locals 14
    .param p1, "number"    # I

    .line 1766
    const-string v0, ""

    .line 1767
    .local v0, "textOnImage":Ljava/lang/String;
    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 1768
    .local v1, "meas":I
    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-nez p1, :cond_0

    .line 1769
    const-string v9, ""

    .line 1771
    .local v9, "dnTypeFull":Ljava/lang/String;
    :try_start_0
    iget-object v10, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v10}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getDNtypeNumber()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getFullTypeById(I)Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v10

    .line 1775
    goto :goto_0

    .line 1772
    :catch_0
    move-exception v10

    .line 1773
    .local v10, "e":Lorg/json/JSONException;
    invoke-virtual {v10}, Lorg/json/JSONException;->printStackTrace()V

    .line 1774
    const-string v9, "-"

    .line 1776
    .end local v10    # "e":Lorg/json/JSONException;
    :goto_0
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x7f0f0164

    .line 1777
    invoke-virtual {p0, v12}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n\u2116 %s \nt %d\u00b0C \nVc %05d \u043c\u00b3 \n%s %d \n\u0422\u0438\u043f %s "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v12, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    .line 1783
    invoke-virtual {v12}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getCounterNumber()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v8

    iget-object v8, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v8}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getWaterTemperatureRound()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v3

    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getInitialVolume()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    const v2, 0x7f0f01b8

    invoke-virtual {p0, v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v7

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getProductionYear()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    aput-object v9, v4, v5

    .line 1776
    invoke-static {v10, v11, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1784
    .end local v9    # "dnTypeFull":Ljava/lang/String;
    goto/16 :goto_3

    :cond_0
    add-int/lit8 v9, p1, -0x1

    rem-int/2addr v9, v2

    const/high16 v10, 0x447a0000    # 1000.0f

    if-nez v9, :cond_1

    .line 1785
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0f0163

    .line 1786
    invoke-virtual {p0, v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nVc %.2f \u043b"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    .line 1788
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v8

    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v6, p1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getValueByNumber(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v10

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v2, v3

    .line 1785
    invoke-static {v4, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 1790
    :cond_1
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x7f0f0080

    .line 1791
    invoke-virtual {p0, v12}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\nQ %.3f %s \nt %d \u00b0C \nV\u0435 %d \u043b \nVc %.2f \u043b \n\u0394 %.2f %% \n%s"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x8

    new-array v12, v12, [Ljava/lang/Object;

    .line 1798
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v8

    iget-object v13, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v13, v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getAvrgConsumption(I)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v12, v3

    const v13, 0x7f0f0054

    invoke-virtual {p0, v13}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v2

    iget-object v13, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v13, v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getTemperatureByNumber(I)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v7

    iget-object v7, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v7, v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getRequiredVolume(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v12, v6

    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    .line 1799
    invoke-virtual {v6, p1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getValueByNumber(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v10

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v12, v5

    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v5, v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getError(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x41200000    # 10.0f

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v12, v4

    const/4 v4, 0x7

    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getResultString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v12, v4

    .line 1790
    invoke-static {v9, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1800
    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v4, v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getResultInt(I)I

    move-result v4

    if-nez v4, :cond_3

    .line 1801
    invoke-virtual {p0, v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v4, v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getAvrgConRange(I)I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->changeToDone(Landroid/widget/TextView;Z)V

    goto :goto_3

    .line 1802
    :cond_3
    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v4, v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getResultInt(I)I

    move-result v4

    if-ne v4, v3, :cond_5

    .line 1803
    invoke-virtual {p0, v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v4, v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getAvrgConRange(I)I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    invoke-direct {p0, v2, v3}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->changeToValid(Landroid/widget/TextView;Z)V

    goto :goto_3

    .line 1804
    :cond_5
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v3, v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getResultInt(I)I

    move-result v3

    if-ne v3, v2, :cond_6

    .line 1805
    invoke-virtual {p0, v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->changeToInvalid(Landroid/widget/TextView;)V

    .line 1808
    :cond_6
    :goto_3
    return-object v0
.end method

.method private updatePage(Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;IZ)V
    .locals 10
    .param p1, "page"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;
    .param p2, "measNumber"    # I
    .param p3, "toClean"    # Z

    .line 1100
    sget-object v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$16;->$SwitchMap$com$poverka$httpFileClient$activity$MeasurementActivity$Pages:[I

    invoke-virtual {p1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v0, v3, :cond_4

    const/4 v5, 0x0

    if-eq v0, v4, :cond_2

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 1118
    :cond_0
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->pagerAdapter:Lcom/poverka/httpFileClient/util/MyPagerAdapter;

    mul-int/lit8 v6, p2, 0x2

    invoke-virtual {v0, v6}, Lcom/poverka/httpFileClient/util/MyPagerAdapter;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1119
    .local v0, "view":Landroid/widget/TextView;
    if-eqz p3, :cond_1

    .line 1120
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const v8, 0x7f0f007f

    .line 1127
    invoke-virtual {p0, v8}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    const v8, 0x7f0f0054

    invoke-virtual {p0, v8}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f03000a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v2

    aput-object v8, v7, v1

    .line 1120
    const-string v8, "%s %d \nQ 0.000 %s\nt 0 \u00b0C \nV\u0435 0 \u043b\nVc 0.00 \u043b \n\u0394 0.00 %% \n%s"

    invoke-static {v6, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1128
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1130
    :cond_1
    mul-int/lit8 v5, p2, 0x2

    invoke-direct {p0, v5}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->textOnImage(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1132
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    mul-int/lit8 v8, p2, 0x2

    invoke-virtual {v7, v8}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getBitmapByNumber(I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1107
    .end local v0    # "view":Landroid/widget/TextView;
    :cond_2
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->pagerAdapter:Lcom/poverka/httpFileClient/util/MyPagerAdapter;

    mul-int/lit8 v6, p2, 0x2

    sub-int/2addr v6, v3

    invoke-virtual {v0, v6}, Lcom/poverka/httpFileClient/util/MyPagerAdapter;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1108
    .restart local v0    # "view":Landroid/widget/TextView;
    if-eqz p3, :cond_3

    .line 1109
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v7, v4, [Ljava/lang/Object;

    const v8, 0x7f0f0161

    invoke-virtual {p0, v8}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    const-string v8, "%s %d \nVc 0.00 \u043b"

    invoke-static {v6, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1110
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1112
    :cond_3
    mul-int/lit8 v5, p2, 0x2

    sub-int/2addr v5, v3

    invoke-direct {p0, v5}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->textOnImage(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1114
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    mul-int/lit8 v8, p2, 0x2

    sub-int/2addr v8, v3

    invoke-virtual {v7, v8}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getBitmapByNumber(I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1116
    goto :goto_0

    .line 1102
    .end local v0    # "view":Landroid/widget/TextView;
    :cond_4
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->pagerAdapter:Lcom/poverka/httpFileClient/util/MyPagerAdapter;

    invoke-virtual {v0, p2}, Lcom/poverka/httpFileClient/util/MyPagerAdapter;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1103
    .restart local v0    # "view":Landroid/widget/TextView;
    invoke-direct {p0, p2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->textOnImage(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1104
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v7}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getTestPhoto()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1105
    nop

    .line 1136
    .end local v0    # "view":Landroid/widget/TextView;
    :goto_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->pagerAdapter:Lcom/poverka/httpFileClient/util/MyPagerAdapter;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/util/MyPagerAdapter;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "Updating page! it is %s, measNumber is %d, total is %d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->Log(Ljava/lang/String;)V

    .line 1137
    return-void
.end method

.method private updateResultsMode(I)V
    .locals 8
    .param p1, "fileNumber"    # I

    .line 592
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 593
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, ""

    .line 594
    .local v1, "path":Ljava/lang/String;
    const-string v2, ""

    .line 597
    .local v2, "data":Ljava/lang/String;
    const/high16 v3, 0x447a0000    # 1000.0f

    if-eqz p1, :cond_6

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq p1, v4, :cond_3

    if-eq p1, v5, :cond_0

    .line 644
    :try_start_0
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mUIhandler:Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->sendEmptyMessage(I)Z

    .line 645
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/util/MyModeQueue;->endMode()V

    .line 646
    return-void

    .line 626
    :cond_0
    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v4, p1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getRequiredMeasurement(I)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v4

    .line 628
    .local v4, "results":Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getDuration()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getResult()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 633
    :cond_1
    sget-object v5, Lcom/poverka/httpFileClient/util/MyJSON;->average_con:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getConsumptionAvrgImp()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 634
    sget-object v5, Lcom/poverka/httpFileClient/util/MyJSON;->duration:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getDuration()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 635
    sget-object v5, Lcom/poverka/httpFileClient/util/MyJSON;->temper:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getWaterTemperature()F

    move-result v6

    mul-float v6, v6, v3

    float-to-int v3, v6

    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 636
    sget-object v3, Lcom/poverka/httpFileClient/util/MyJSON;->first_val:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getValStart()I

    move-result v5

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 637
    sget-object v3, Lcom/poverka/httpFileClient/util/MyJSON;->last_val:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getValEnd()I

    move-result v5

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 638
    sget-object v3, Lcom/poverka/httpFileClient/util/MyJSON;->calc_error:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getError()I

    move-result v5

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 639
    sget-object v3, Lcom/poverka/httpFileClient/util/MyJSON;->result:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getResult()I

    move-result v5

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 640
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getFileNameByNumber(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 641
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 642
    goto/16 :goto_2

    .line 629
    :cond_2
    :goto_0
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->updateResultsMode(I)V

    .line 630
    return-void

    .line 608
    .end local v4    # "results":Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    :cond_3
    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v4, p1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getRequiredMeasurement(I)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v4

    .line 610
    .restart local v4    # "results":Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getDuration()I

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getResult()I

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    .line 615
    :cond_4
    sget-object v6, Lcom/poverka/httpFileClient/util/MyJSON;->average_con:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getConsumptionAvrgImp()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 616
    sget-object v6, Lcom/poverka/httpFileClient/util/MyJSON;->duration:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getDuration()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 617
    sget-object v6, Lcom/poverka/httpFileClient/util/MyJSON;->temper:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getWaterTemperature()F

    move-result v7

    mul-float v7, v7, v3

    float-to-int v3, v7

    invoke-virtual {v0, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 618
    sget-object v3, Lcom/poverka/httpFileClient/util/MyJSON;->first_val:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getValStart()I

    move-result v6

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 619
    sget-object v3, Lcom/poverka/httpFileClient/util/MyJSON;->last_val:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getValEnd()I

    move-result v6

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 620
    sget-object v3, Lcom/poverka/httpFileClient/util/MyJSON;->calc_error:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getError()I

    move-result v6

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 621
    sget-object v3, Lcom/poverka/httpFileClient/util/MyJSON;->result:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getResult()I

    move-result v6

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 622
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v3, v5}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getFileNameByNumber(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 623
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 624
    goto :goto_2

    .line 611
    :cond_5
    :goto_1
    invoke-direct {p0, v5}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->updateResultsMode(I)V

    .line 612
    return-void

    .line 599
    .end local v4    # "results":Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    :cond_6
    sget-object v4, Lcom/poverka/httpFileClient/util/MyJSON;->counter_number:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getCounterNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 600
    sget-object v4, Lcom/poverka/httpFileClient/util/MyJSON;->start_volume:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getInitialVolume()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 601
    sget-object v4, Lcom/poverka/httpFileClient/util/MyJSON;->production_year:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getProductionYear()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 602
    sget-object v4, Lcom/poverka/httpFileClient/util/MyJSON;->type_id:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getDNtypeNumber()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 603
    sget-object v4, Lcom/poverka/httpFileClient/util/MyJSON;->water_temperature:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getWaterTemperature()F

    move-result v5

    mul-float v5, v5, v3

    float-to-double v5, v5

    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 604
    const-string v3, "1/current/counter_info.json"

    move-object v1, v3

    .line 605
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 606
    nop

    .line 648
    :goto_2
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mHttpFileClient:Lcom/poverka/httpFileClient/util/HttpFileClient;

    invoke-virtual {v3, v1, v2}, Lcom/poverka/httpFileClient/util/HttpFileClient;->upload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    goto :goto_3

    .line 649
    :catch_0
    move-exception v3

    .line 650
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 652
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_3
    return-void
.end method


# virtual methods
.method public NextClicked(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 761
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getLastMeasNumber()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 762
    invoke-direct {p0, v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->setViewsClickable(Z)V

    .line 763
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->newMeasurement()Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v0

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->curMeasurementResult:Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    .line 764
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->prepareViews()V

    .line 765
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    sget-object v1, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->PREPARE_MEASUREMENT:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/util/MyModeQueue;->add(Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;)V

    goto :goto_1

    .line 767
    :cond_0
    const v0, 0x7f09006a

    invoke-virtual {p0, v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 768
    .local v0, "buttonStart":Landroid/widget/Button;
    const v3, 0x7f0900ee

    invoke-virtual {p0, v3}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 769
    .local v3, "layoutButton":Landroid/widget/LinearLayout;
    const v4, 0x7f0f011e

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 770
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 771
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 773
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->isRepeating:Z

    .line 774
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 775
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->RepeatAfterMeasurements(Landroid/widget/TextView;)V

    .line 774
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 778
    .end local v0    # "buttonStart":Landroid/widget/Button;
    .end local v1    # "i":I
    .end local v3    # "layoutButton":Landroid/widget/LinearLayout;
    :cond_1
    :goto_1
    return-void
.end method

.method public RepeatClicked(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .line 727
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getTotalReitNumber()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 728
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->curMeasurementResult:Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getMeasurementNumber()I

    move-result v0

    .line 729
    .local v0, "id":I
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 730
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0f0121

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 731
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const v5, 0x7f0f017d

    invoke-virtual {p0, v5}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v1, 0x1

    iget-object v7, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v7}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getTotalReitNumber()I

    move-result v7

    sub-int/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 732
    const v1, 0x7f0f01b9

    new-instance v2, Lcom/poverka/httpFileClient/activity/MeasurementActivity$7;

    invoke-direct {v2, p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$7;-><init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)V

    invoke-virtual {v3, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 742
    const v1, 0x7f0f00e8

    new-instance v2, Lcom/poverka/httpFileClient/activity/MeasurementActivity$8;

    invoke-direct {v2, p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$8;-><init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)V

    invoke-virtual {v3, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 748
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 749
    .local v1, "stateDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 750
    .end local v0    # "id":I
    .end local v1    # "stateDialog":Landroid/app/AlertDialog;
    .end local v3    # "builder":Landroid/app/AlertDialog$Builder;
    goto :goto_0

    .line 751
    :cond_0
    const-string v0, "MeasurementActivity"

    const-string v2, "can not repeat measurements more than 3 times"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mUIhandler:Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 753
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 754
    .local v1, "bundle":Landroid/os/Bundle;
    const v2, 0x7f0f011f

    invoke-virtual {p0, v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "alert"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 756
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mUIhandler:Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;

    invoke-virtual {v2, v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->sendMessage(Landroid/os/Message;)Z

    .line 758
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void
.end method

.method public StartClicked(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .line 663
    const v0, 0x7f09006a

    invoke-virtual {p0, v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 665
    .local v0, "buttonStart":Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0f0161

    invoke-virtual {p0, v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x2

    const-string v4, "%s %d"

    const v5, 0x7f0f0175

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    .line 666
    invoke-direct {p0, v7}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->setViewsClickable(Z)V

    .line 667
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v5}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->curMeasurementResult:Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getMeasurementNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 668
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    sget-object v2, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->FLOW_RATE_SELECTION:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    invoke-virtual {v1, v2}, Lcom/poverka/httpFileClient/util/MyModeQueue;->add(Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;)V

    .line 669
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    sget-object v2, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->MEASUREMENT:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    invoke-virtual {v1, v2}, Lcom/poverka/httpFileClient/util/MyModeQueue;->add(Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;)V

    goto/16 :goto_0

    .line 670
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 671
    invoke-direct {p0, v7}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->setViewsClickable(Z)V

    .line 672
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v7

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->curMeasurementResult:Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getMeasurementNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v6

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 673
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/util/MyModeQueue;->stop()V

    .line 674
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->curMeasurementResult:Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getMeasurementNumber()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->removePagesOfMeasurement(I)V

    .line 675
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->curMeasurementResult:Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->clearData()V

    .line 676
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->prepareViews()V

    .line 677
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    sget-object v2, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->PREPARE_MEASUREMENT:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    invoke-virtual {v1, v2}, Lcom/poverka/httpFileClient/util/MyModeQueue;->add(Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;)V

    goto/16 :goto_0

    .line 678
    :cond_1
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0f011e

    invoke-virtual {p0, v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 679
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Meas buttonStart"

    const-string v3, "END"

    invoke-static {v1, v2, v3}, Lcom/poverka/httpFileClient/util/MyFileReader;->appendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getWorkInShortMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 681
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Meas"

    const-string v3, "END in SHORT_MODE"

    invoke-static {v1, v2, v3}, Lcom/poverka/httpFileClient/util/MyFileReader;->appendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    sget-object v2, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->FINISH:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    invoke-virtual {v1, v2}, Lcom/poverka/httpFileClient/util/MyModeQueue;->add(Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;)V

    .line 683
    return-void

    .line 686
    :cond_2
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->calculateAverageTemperature()V

    .line 687
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->isTestTemperatureOk()Z

    move-result v1

    if-nez v1, :cond_3

    .line 688
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->updateResults(Landroid/content/ContextWrapper;)V

    .line 689
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    sget-object v2, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->UPDATE_RESULTS:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    invoke-virtual {v1, v2}, Lcom/poverka/httpFileClient/util/MyModeQueue;->add(Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;)V

    .line 690
    invoke-direct {p0, v7}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->setViewsClickable(Z)V

    .line 692
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 693
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0f001e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 694
    const v2, 0x7f0f0190

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 695
    new-instance v2, Lcom/poverka/httpFileClient/activity/MeasurementActivity$6;

    invoke-direct {v2, p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$6;-><init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)V

    const-string v3, "OK"

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 701
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 702
    .local v2, "stateDialog":Landroid/app/AlertDialog;
    invoke-virtual {v2, v7}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 703
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 704
    return-void

    .line 707
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "stateDialog":Landroid/app/AlertDialog;
    :cond_3
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->isCounterInfoOK()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 708
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    sget-object v2, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->SLEEP_TIMER:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    invoke-virtual {v1, v2}, Lcom/poverka/httpFileClient/util/MyModeQueue;->add(Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;)V

    .line 710
    iput v6, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->report:I

    .line 711
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 712
    .local v1, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getProtocolNumber()Ljava/lang/String;

    move-result-object v2

    const-string v3, "protocolNumber"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getVerificationNumberToday()I

    move-result v2

    add-int/2addr v2, v6

    const-string v3, "todayVerificationNumber"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 715
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getCounterNumber()Ljava/lang/String;

    move-result-object v2

    const-string v3, "counterNumber"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getCurrentStationTimeString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dateTime"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getWaterTemperature()F

    move-result v2

    const-string v3, "waterTemperature"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 718
    new-instance v2, Lcom/poverka/httpFileClient/activity/ClientActivity;

    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->clientResult:Lcom/poverka/httpFileClient/activity/ClientActivity$OnClientResult;

    invoke-direct {v2, p0, v3, v1}, Lcom/poverka/httpFileClient/activity/ClientActivity;-><init>(Landroid/app/Activity;Lcom/poverka/httpFileClient/activity/ClientActivity$OnClientResult;Landroid/os/Bundle;)V

    .line 719
    invoke-direct {p0, v7}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->setViewsClickable(Z)V

    .line 720
    .end local v1    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 721
    :cond_4
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f00dd

    invoke-virtual {p0, v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 724
    :cond_5
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 234
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f00de

    invoke-virtual {p0, v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 235
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 134
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    const v0, 0x7f0c0020

    invoke-virtual {p0, v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->setContentView(I)V

    .line 137
    const-string v0, "*** Created ***"

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->Log(Ljava/lang/String;)V

    .line 138
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->initViews()V

    .line 140
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 141
    const/4 v0, 0x0

    sput v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->progressDialogTimer:I

    .line 142
    iput-boolean v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->isRepeating:Z

    .line 143
    new-instance v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;-><init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Lcom/poverka/httpFileClient/activity/MeasurementActivity$1;)V

    iput-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mUIhandler:Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;

    .line 144
    const/16 v1, 0x1f4

    iput v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->threadDelay:I

    .line 145
    iput v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->finishTimer:I

    .line 147
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 148
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "verification"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/poverka/httpFileClient/measurement/CounterVerification;

    iput-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    .line 149
    const-string v2, "restoring"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->isRestoring:Z

    .line 150
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MeasurementActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const v2, 0x7f090173

    invoke-virtual {p0, v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 153
    .local v2, "statusLayout":Landroid/widget/LinearLayout;
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->initPager()V

    .line 154
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ge v3, v4, :cond_0

    .line 155
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 156
    .local v4, "view":Landroid/widget/TextView;
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v7, v3}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getRequiredConsumption(I)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v0

    const-string v7, "Q=%.3f"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    .end local v4    # "view":Landroid/widget/TextView;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    .end local v3    # "i":I
    :cond_0
    iget-boolean v3, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->isRestoring:Z

    if-eqz v3, :cond_3

    .line 160
    const/4 v0, 0x1

    .local v0, "meas":I
    :goto_1
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getLastMeasNumber()I

    move-result v3

    if-gt v0, v3, :cond_2

    .line 161
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v3, v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getRequiredMeasurement(I)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v3

    iput-object v3, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->curMeasurementResult:Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    .line 162
    if-eqz v3, :cond_1

    .line 163
    sget-object v3, Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;->START:Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->curMeasurementResult:Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getMeasurementNumber()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->insertPage(Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;I)V

    .line 164
    sget-object v3, Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;->FINISH:Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->curMeasurementResult:Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getMeasurementNumber()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->insertPage(Lcom/poverka/httpFileClient/activity/MeasurementActivity$Pages;I)V

    .line 160
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 168
    .end local v0    # "meas":I
    :cond_2
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getLastMeasNumber()I

    move-result v0

    if-nez v0, :cond_4

    .line 169
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->newMeasurement()Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v0

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->curMeasurementResult:Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    goto :goto_2

    .line 172
    :cond_3
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v3, v5, v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getMeasurement(II)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v0

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->curMeasurementResult:Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    .line 174
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->prepareViews()V

    .line 176
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->connect()V

    .line 177
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->initRequestObserver()V

    .line 179
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->resetListener:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/poverka/httpFileClient/activity/MeasurementActivity$1;

    invoke-direct {v3, p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$1;-><init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)V

    invoke-virtual {v0, p0, v3}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 205
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 221
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 222
    const-string v0, "*** Destroyed ***"

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->Log(Ljava/lang/String;)V

    .line 224
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->stopActivity()V

    .line 225
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 209
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 210
    const-string v0, "*** Started ***"

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->Log(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 215
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 216
    const-string v0, "*** Stopped ***"

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->Log(Ljava/lang/String;)V

    .line 217
    return-void
.end method
