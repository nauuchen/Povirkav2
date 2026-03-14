.class public Lcom/poverka/httpFileClient/activity/StateActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "StateActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;,
        Lcom/poverka/httpFileClient/activity/StateActivity$FreezeCheckerTask;
    }
.end annotation


# static fields
.field private static final BUTTON_HEIGHT_RATIO:F = 0.15f

.field private static final MARGIN_HEIGHT_RATIO:F = 0.03f

.field private static final TAG:Ljava/lang/String; = "StateActivity"

.field private static final TEXT_L_HEIGHT_RATIO:F = 0.062f

.field private static final TEXT_S_HEIGHT_RATIO:F = 0.05f

.field private static mProgressDialog:Landroid/app/ProgressDialog;

.field private static restoration:Lcom/poverka/httpFileClient/util/RestorationHelper;


# instance fields
.field private freezeCheckerTimer:Ljava/util/Timer;

.field private freezeSeconds:I

.field private imageResult:Lcom/poverka/httpFileClient/activity/ImageActivity$OnImageResult;

.field private local:Z

.field private mHttpFileClient:Lcom/poverka/httpFileClient/util/HttpFileClient;

.field public mHttpReceived:Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;

.field private mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

.field private mSender:Lcom/poverka/httpFileClient/util/MySender;

.field private mTcpClient:Lcom/poverka/httpFileClient/util/TcpClient;

.field public mTcpReceived:Lcom/poverka/httpFileClient/util/TcpClient$OnMessageReceived;

.field private mUIhandler:Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

.field private mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

.field private photoType:I

.field private final requestMode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;",
            ">;"
        }
    .end annotation
.end field

.field private selectedId:I

.field private selectedMechanismIndex:I

.field private selectedQNameIndex:I

.field private selectedQValueIndex:I

.field private selectedRClassValueIndex:I

.field private final senderRunnable:Ljava/lang/Runnable;

.field private senderThread:Ljava/lang/Thread;

.field private threadDelay:I

.field private writeLog:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 79
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->requestMode:Landroidx/lifecycle/MutableLiveData;

    .line 150
    new-instance v0, Lcom/poverka/httpFileClient/activity/StateActivity$1;

    invoke-direct {v0, p0}, Lcom/poverka/httpFileClient/activity/StateActivity$1;-><init>(Lcom/poverka/httpFileClient/activity/StateActivity;)V

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mTcpReceived:Lcom/poverka/httpFileClient/util/TcpClient$OnMessageReceived;

    .line 205
    new-instance v0, Lcom/poverka/httpFileClient/activity/StateActivity$2;

    invoke-direct {v0, p0}, Lcom/poverka/httpFileClient/activity/StateActivity$2;-><init>(Lcom/poverka/httpFileClient/activity/StateActivity;)V

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mHttpReceived:Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;

    .line 433
    new-instance v0, Lcom/poverka/httpFileClient/activity/StateActivity$3;

    invoke-direct {v0, p0}, Lcom/poverka/httpFileClient/activity/StateActivity$3;-><init>(Lcom/poverka/httpFileClient/activity/StateActivity;)V

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->senderRunnable:Ljava/lang/Runnable;

    .line 1152
    new-instance v0, Lcom/poverka/httpFileClient/activity/StateActivity$8;

    invoke-direct {v0, p0}, Lcom/poverka/httpFileClient/activity/StateActivity$8;-><init>(Lcom/poverka/httpFileClient/activity/StateActivity;)V

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->imageResult:Lcom/poverka/httpFileClient/activity/ImageActivity$OnImageResult;

    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 1760
    const-string v0, "StateActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 71
    invoke-static {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->Log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/poverka/httpFileClient/activity/StateActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/activity/StateActivity;->finishMode(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/poverka/httpFileClient/activity/StateActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/activity/StateActivity;->firmwareUpdateMode(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/poverka/httpFileClient/activity/StateActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/activity/StateActivity;->restoreSocketMode(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/poverka/httpFileClient/activity/StateActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/activity/StateActivity;->restoreActionMode(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/poverka/httpFileClient/activity/StateActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity;

    .line 71
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->stopActivity()V

    return-void
.end method

.method static synthetic access$1500(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity;

    .line 71
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mUIhandler:Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    return-object v0
.end method

.method static synthetic access$1600()Lcom/poverka/httpFileClient/util/RestorationHelper;
    .locals 1

    .line 71
    sget-object v0, Lcom/poverka/httpFileClient/activity/StateActivity;->restoration:Lcom/poverka/httpFileClient/util/RestorationHelper;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity;

    .line 71
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/poverka/httpFileClient/activity/StateActivity;Lorg/json/JSONObject;[Lcom/poverka/httpFileClient/util/MyJSON;)Z
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # [Lcom/poverka/httpFileClient/util/MyJSON;

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/poverka/httpFileClient/activity/StateActivity;->isJSONok(Lorg/json/JSONObject;[Lcom/poverka/httpFileClient/util/MyJSON;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/poverka/httpFileClient/activity/StateActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity;

    .line 71
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->restoreFilesMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/poverka/httpFileClient/activity/StateActivity;)Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity;

    .line 71
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->requestMode:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/util/HttpFileClient;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity;

    .line 71
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mHttpFileClient:Lcom/poverka/httpFileClient/util/HttpFileClient;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/util/MyModeQueue;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity;

    .line 71
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/poverka/httpFileClient/activity/StateActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/activity/StateActivity;->checkCurrentStateMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/poverka/httpFileClient/activity/StateActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity;

    .line 71
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->checkFirmwareUpdate()V

    return-void
.end method

.method static synthetic access$2400(Lcom/poverka/httpFileClient/activity/StateActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity;

    .line 71
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->checkApkUpdate()V

    return-void
.end method

.method static synthetic access$2500(Lcom/poverka/httpFileClient/activity/StateActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity;

    .line 71
    iget v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->threadDelay:I

    return v0
.end method

.method static synthetic access$2502(Lcom/poverka/httpFileClient/activity/StateActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity;
    .param p1, "x1"    # I

    .line 71
    iput p1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->threadDelay:I

    return p1
.end method

.method static synthetic access$2600(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/util/TcpClient;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity;

    .line 71
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mTcpClient:Lcom/poverka/httpFileClient/util/TcpClient;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/util/MySender;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity;

    .line 71
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mSender:Lcom/poverka/httpFileClient/util/MySender;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/poverka/httpFileClient/activity/StateActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity;

    .line 71
    iget v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->photoType:I

    return v0
.end method

.method static synthetic access$2900(Lcom/poverka/httpFileClient/activity/StateActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity;

    .line 71
    iget v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->writeLog:I

    return v0
.end method

.method static synthetic access$300(Lcom/poverka/httpFileClient/activity/StateActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity;

    .line 71
    iget v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->freezeSeconds:I

    return v0
.end method

.method static synthetic access$3000(Lcom/poverka/httpFileClient/activity/StateActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity;

    .line 71
    iget v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->selectedQNameIndex:I

    return v0
.end method

.method static synthetic access$3002(Lcom/poverka/httpFileClient/activity/StateActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity;
    .param p1, "x1"    # I

    .line 71
    iput p1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->selectedQNameIndex:I

    return p1
.end method

.method static synthetic access$302(Lcom/poverka/httpFileClient/activity/StateActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity;
    .param p1, "x1"    # I

    .line 71
    iput p1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->freezeSeconds:I

    return p1
.end method

.method static synthetic access$308(Lcom/poverka/httpFileClient/activity/StateActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity;

    .line 71
    iget v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->freezeSeconds:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->freezeSeconds:I

    return v0
.end method

.method static synthetic access$3102(Lcom/poverka/httpFileClient/activity/StateActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity;
    .param p1, "x1"    # I

    .line 71
    iput p1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->selectedMechanismIndex:I

    return p1
.end method

.method static synthetic access$3200(Lcom/poverka/httpFileClient/activity/StateActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity;
    .param p1, "x1"    # Z

    .line 71
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/activity/StateActivity;->setViewsClickable(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/poverka/httpFileClient/activity/StateActivity;Landroid/view/View;III)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/poverka/httpFileClient/activity/StateActivity;->updateSelectTestSpinners(Landroid/view/View;III)V

    return-void
.end method

.method static synthetic access$3400(Lcom/poverka/httpFileClient/activity/StateActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity;

    .line 71
    iget v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->selectedQValueIndex:I

    return v0
.end method

.method static synthetic access$3500(Lcom/poverka/httpFileClient/activity/StateActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity;

    .line 71
    iget v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->selectedRClassValueIndex:I

    return v0
.end method

.method static synthetic access$3700(Lcom/poverka/httpFileClient/activity/StateActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity;

    .line 71
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->checkAndAlertMobileNetwork()V

    return-void
.end method

.method static synthetic access$3900()Landroid/app/ProgressDialog;
    .locals 1

    .line 71
    sget-object v0, Lcom/poverka/httpFileClient/activity/StateActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/poverka/httpFileClient/activity/StateActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/activity/StateActivity;->readDateTimeMode(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$500(Lcom/poverka/httpFileClient/activity/StateActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/activity/StateActivity;->testPhotoMode(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$600(Lcom/poverka/httpFileClient/activity/StateActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/activity/StateActivity;->readActionMode(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$700(Lcom/poverka/httpFileClient/activity/StateActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/activity/StateActivity;->stateMode(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$800(Lcom/poverka/httpFileClient/activity/StateActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/activity/StateActivity;->testNameMode(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$900(Lcom/poverka/httpFileClient/activity/StateActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/activity/StateActivity;->prepareMeasurementMode(Lorg/json/JSONObject;)V

    return-void
.end method

.method private checkAndAlertMobileNetwork()V
    .locals 9

    .line 1627
    const-string v0, "check_firmware_update"

    const-string v1, "day_number"

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/poverka/httpFileClient/activity/StateActivity;->checkMobileDataEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1628
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1629
    .local v0, "builderSmall":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0f001e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1630
    const v1, 0x7f0f00e5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1631
    new-instance v1, Lcom/poverka/httpFileClient/activity/StateActivity$9;

    invoke-direct {v1, p0}, Lcom/poverka/httpFileClient/activity/StateActivity$9;-><init>(Lcom/poverka/httpFileClient/activity/StateActivity;)V

    const-string v2, "OK"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1636
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1637
    .local v1, "dialogSmall":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1638
    .end local v0    # "builderSmall":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialogSmall":Landroid/app/AlertDialog;
    goto/16 :goto_2

    .line 1640
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "settings.json"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1641
    .local v2, "settings":Ljava/io/File;
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1642
    .local v3, "text":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1643
    .local v4, "jsonSettings":Lorg/json/JSONObject;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 1645
    .local v5, "calendar":Ljava/util/Calendar;
    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 1646
    .local v6, "dayToday":I
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "station"

    if-eqz v7, :cond_3

    .line 1647
    :try_start_1
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 1648
    .local v7, "dayRecorded":I
    if-eq v7, v6, :cond_1

    .line 1649
    const-string v0, "NOT EQUAL"

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->Log(Ljava/lang/String;)V

    .line 1650
    invoke-virtual {v4, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1651
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getStationNumber()I

    move-result v0

    invoke-virtual {v4, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1652
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v1, v8}, Lcom/poverka/httpFileClient/util/MyFileReader;->writeInternalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->checkDisabledUpdate()V

    goto :goto_0

    .line 1656
    :cond_1
    const-string v1, "EQUAL"

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/StateActivity;->Log(Ljava/lang/String;)V

    .line 1657
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1658
    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1659
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v1, v8}, Lcom/poverka/httpFileClient/util/MyFileReader;->writeInternalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->checkDisabledUpdate()V

    .line 1664
    .end local v7    # "dayRecorded":I
    :cond_2
    :goto_0
    goto :goto_1

    .line 1665
    :cond_3
    const-string v0, "\'DAY\' DOESN\'T EXIST"

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->Log(Ljava/lang/String;)V

    .line 1666
    invoke-virtual {v4, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1667
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getStationNumber()I

    move-result v0

    invoke-virtual {v4, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1668
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v1, v7}, Lcom/poverka/httpFileClient/util/MyFileReader;->writeInternalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->checkDisabledUpdate()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1674
    .end local v2    # "settings":Ljava/io/File;
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "jsonSettings":Lorg/json/JSONObject;
    .end local v5    # "calendar":Ljava/util/Calendar;
    .end local v6    # "dayToday":I
    :goto_1
    goto :goto_2

    .line 1672
    :catch_0
    move-exception v0

    .line 1673
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1676
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2
    return-void
.end method

.method private checkApkUpdate()V
    .locals 4

    .line 1703
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getStationNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "apk/last?equipment-type=1&serial=%03d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1704
    .local v0, "apkLast":Ljava/lang/String;
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mHttpFileClient:Lcom/poverka/httpFileClient/util/HttpFileClient;

    invoke-virtual {v1, v0}, Lcom/poverka/httpFileClient/util/HttpFileClient;->headDownloadServer(Ljava/lang/String;)V

    .line 1705
    return-void
.end method

.method private checkCurrentStateMode(Ljava/lang/String;)V
    .locals 8
    .param p1, "text"    # Ljava/lang/String;

    .line 691
    const-string v0, "photo_102"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "meast_10"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 692
    const-string v0, "photo_111"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "photo_112"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "meast_11"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 693
    const-string v0, "photo_121"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "photo_122"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "meast_12"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 694
    const-string v0, "photo_131"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "photo_132"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "meast_13"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 695
    const-string v0, "photo_201"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "photo_202"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "meast_20"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 696
    const-string v0, "photo_211"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "photo_212"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "meast_21"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 697
    const-string v0, "photo_221"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "photo_222"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "meast_22"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 698
    const-string v0, "photo_231"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "photo_232"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "meast_23"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 699
    const-string v0, "photo_301"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "photo_302"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "meast_30"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 700
    const-string v0, "photo_311"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "photo_312"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "meast_31"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 701
    const-string v0, "photo_321"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "photo_322"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "meast_32"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 702
    const-string v0, "photo_331"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "photo_332"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "meast_33"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    iget v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->selectedId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setId(Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    iget-boolean v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->local:Z

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setLocal(I)V

    .line 730
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    sget-object v1, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->READ_ACTION:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/util/MyModeQueue;->add(Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;)V

    goto/16 :goto_2

    .line 703
    :cond_1
    :goto_0
    const-string v0, "verification was interrupted"

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->Log(Ljava/lang/String;)V

    .line 705
    new-instance v0, Lcom/poverka/httpFileClient/util/RestorationHelper;

    invoke-direct {v0}, Lcom/poverka/httpFileClient/util/RestorationHelper;-><init>()V

    sput-object v0, Lcom/poverka/httpFileClient/activity/StateActivity;->restoration:Lcom/poverka/httpFileClient/util/RestorationHelper;

    .line 706
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/util/RestorationHelper;->setFilesToRestore(Ljava/util/List;)Z

    move-result v0

    const-string v1, "State"

    if-eqz v0, :cond_2

    .line 707
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "restoring"

    invoke-static {v0, v1, v2}, Lcom/poverka/httpFileClient/util/MyFileReader;->appendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    sget-object v1, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->RESTORE_SOCKET:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/util/MyModeQueue;->add(Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;)V

    .line 709
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mUIhandler:Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 711
    :cond_2
    const-string v0, "StateActivity"

    const-string v2, "can\'t restore, need save"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "can\'t restore"

    invoke-static {v0, v1, v2}, Lcom/poverka/httpFileClient/util/MyFileReader;->appendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mUIhandler:Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 715
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 716
    .local v1, "bundleAlert":Landroid/os/Bundle;
    const v2, 0x7f0f012f

    invoke-virtual {p0, v2}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "alert"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 718
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mUIhandler:Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    invoke-virtual {v2, v0}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->sendMessage(Landroid/os/Message;)Z

    .line 720
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    sget-object v3, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->FINISH:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    invoke-virtual {v2, v3}, Lcom/poverka/httpFileClient/util/MyModeQueue;->add(Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;)V

    .line 723
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "bundleAlert":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/poverka/httpFileClient/util/MyFileReader;->getLogFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 724
    .local v0, "logFile":Ljava/io/File;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 725
    .local v1, "curDate":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "ddMMyyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 726
    .local v2, "format":Ljava/text/SimpleDateFormat;
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mHttpFileClient:Lcom/poverka/httpFileClient/util/HttpFileClient;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v7}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getStationNumber()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "logs/upload/1/%03d/%s"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/poverka/httpFileClient/util/HttpFileClient;->headUploadServer(Ljava/lang/String;Ljava/io/File;)V

    .line 727
    .end local v0    # "logFile":Ljava/io/File;
    .end local v1    # "curDate":Ljava/util/Date;
    .end local v2    # "format":Ljava/text/SimpleDateFormat;
    nop

    .line 732
    :goto_2
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MyModeQueue;->endMode()V

    .line 733
    return-void
.end method

.method private checkDisabledUpdate()V
    .locals 4

    .line 1693
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getStationNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "stations/state/1/%03d?ver=2"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1694
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mHttpFileClient:Lcom/poverka/httpFileClient/util/HttpFileClient;

    invoke-virtual {v1, v0}, Lcom/poverka/httpFileClient/util/HttpFileClient;->headDownloadServer(Ljava/lang/String;)V

    .line 1695
    return-void
.end method

.method private checkFirmwareUpdate()V
    .locals 4

    .line 1698
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getStationNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "firmware-version/1/Mob_ust_v2.bin?serial=%03d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1699
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mHttpFileClient:Lcom/poverka/httpFileClient/util/HttpFileClient;

    invoke-virtual {v1, v0}, Lcom/poverka/httpFileClient/util/HttpFileClient;->headDownloadServer(Ljava/lang/String;)V

    .line 1700
    return-void
.end method

.method private checkMobileDataEnabled(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 1679
    const/4 v0, 0x0

    .line 1680
    .local v0, "mobileDataEnabled":Z
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1682
    .local v1, "cm":Landroid/net/ConnectivityManager;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1683
    .local v2, "cmClass":Ljava/lang/Class;
    const-string v3, "getMobileDataEnabled"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1684
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1685
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    .line 1688
    .end local v2    # "cmClass":Ljava/lang/Class;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 1686
    :catch_0
    move-exception v2

    .line 1687
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1689
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method private checkTestsUpdate()V
    .locals 5

    .line 1709
    const-string v0, "update_tests"

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "settings.json"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1710
    .local v1, "settings":Ljava/io/File;
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1711
    .local v2, "jsonSettings":Lorg/json/JSONObject;
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1712
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1713
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/poverka/httpFileClient/util/MyFileReader;->writeInternalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    sget-object v3, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->UPDATE_TESTS:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    invoke-virtual {v0, v3}, Lcom/poverka/httpFileClient/util/MyModeQueue;->add(Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1718
    .end local v1    # "settings":Ljava/io/File;
    .end local v2    # "jsonSettings":Lorg/json/JSONObject;
    :cond_0
    goto :goto_0

    .line 1716
    :catch_0
    move-exception v0

    .line 1717
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1719
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method private connect()V
    .locals 8

    .line 1178
    new-instance v0, Lcom/poverka/httpFileClient/util/TcpClient;

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mTcpReceived:Lcom/poverka/httpFileClient/util/TcpClient$OnMessageReceived;

    invoke-direct {v0, v1}, Lcom/poverka/httpFileClient/util/TcpClient;-><init>(Lcom/poverka/httpFileClient/util/TcpClient$OnMessageReceived;)V

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mTcpClient:Lcom/poverka/httpFileClient/util/TcpClient;

    .line 1179
    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/TcpClient;->start()V

    .line 1181
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "State"

    if-eqz v0, :cond_0

    .line 1182
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "connected"

    invoke-static {v0, v2, v3}, Lcom/poverka/httpFileClient/util/MyFileReader;->appendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0f0050

    invoke-virtual {p0, v2}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1184
    const-string v0, "Connected"

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->Log(Ljava/lang/String;)V

    .line 1186
    new-instance v0, Lcom/poverka/httpFileClient/util/HttpFileClient;

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mHttpReceived:Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;

    invoke-direct {v0, v1}, Lcom/poverka/httpFileClient/util/HttpFileClient;-><init>(Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;)V

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mHttpFileClient:Lcom/poverka/httpFileClient/util/HttpFileClient;

    .line 1187
    new-instance v0, Lcom/poverka/httpFileClient/util/MySender;

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mTcpClient:Lcom/poverka/httpFileClient/util/TcpClient;

    invoke-direct {v0, v1}, Lcom/poverka/httpFileClient/util/MySender;-><init>(Lcom/poverka/httpFileClient/util/TcpClient;)V

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mSender:Lcom/poverka/httpFileClient/util/MySender;

    .line 1188
    new-instance v0, Lcom/poverka/httpFileClient/util/MyModeQueue;

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->requestMode:Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0, v1}, Lcom/poverka/httpFileClient/util/MyModeQueue;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    .line 1189
    new-instance v0, Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-direct {v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;-><init>()V

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    .line 1191
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    sget-object v1, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->READ_DATE_TIME:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/util/MyModeQueue;->add(Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;)V

    .line 1192
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->checkTestsUpdate()V

    .line 1193
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    sget-object v1, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->FLASH:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/util/MyModeQueue;->add(Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;)V

    .line 1194
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    sget-object v1, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->CHECK_CURRENT_STATE:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/util/MyModeQueue;->add(Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;)V

    .line 1196
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->freezeCheckerTimer:Ljava/util/Timer;

    .line 1197
    new-instance v3, Lcom/poverka/httpFileClient/activity/StateActivity$FreezeCheckerTask;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/poverka/httpFileClient/activity/StateActivity$FreezeCheckerTask;-><init>(Lcom/poverka/httpFileClient/activity/StateActivity;Lcom/poverka/httpFileClient/activity/StateActivity$1;)V

    const-wide/16 v4, 0x1388

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1198
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->senderRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->senderThread:Ljava/lang/Thread;

    .line 1199
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1201
    :cond_0
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "NOT connected"

    invoke-static {v0, v2, v3}, Lcom/poverka/httpFileClient/util/MyFileReader;->appendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0f00ed

    invoke-virtual {p0, v2}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1203
    const-string v0, "Not connected"

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->Log(Ljava/lang/String;)V

    .line 1204
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->stopActivity()V

    .line 1206
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/poverka/httpFileClient/activity/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1207
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1208
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1209
    const/4 v1, 0x1

    const-string v2, "EXIT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1210
    invoke-virtual {p0, v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->startActivity(Landroid/content/Intent;)V

    .line 1212
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void
.end method

.method private finishMode(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 789
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/poverka/httpFileClient/util/MyJSON;

    sget-object v2, Lcom/poverka/httpFileClient/util/MyJSON;->finish:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, p1, v1}, Lcom/poverka/httpFileClient/activity/StateActivity;->isJSONok(Lorg/json/JSONObject;[Lcom/poverka/httpFileClient/util/MyJSON;)Z

    move-result v1

    const-string v2, "StateActivity"

    if-eqz v1, :cond_2

    .line 790
    sget-object v1, Lcom/poverka/httpFileClient/util/MyJSON;->finish:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 791
    .local v1, "finish":I
    const/4 v4, 0x5

    if-ne v1, v0, :cond_0

    .line 792
    const-string v0, "FINISH!!!!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MyModeQueue;->endMode()V

    .line 795
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mUIhandler:Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    invoke-virtual {v0, v4}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 796
    :cond_0
    if-le v1, v0, :cond_1

    .line 797
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mSender:Lcom/poverka/httpFileClient/util/MySender;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MySender;->checkFinish()V

    goto :goto_0

    .line 799
    :cond_1
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v3

    const-string v3, "finish == %d"

    invoke-static {v5, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mUIhandler:Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 801
    .local v0, "msg":Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 802
    .local v2, "bundleAlert":Landroid/os/Bundle;
    const v3, 0x7f0f0073

    invoke-virtual {p0, v3}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "alert"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 804
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mUIhandler:Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    invoke-virtual {v3, v0}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->sendMessage(Landroid/os/Message;)Z

    .line 806
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/util/MyModeQueue;->endMode()V

    .line 807
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mUIhandler:Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    invoke-virtual {v3, v4}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->sendEmptyMessage(I)Z

    .line 809
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "finish":I
    .end local v2    # "bundleAlert":Landroid/os/Bundle;
    :goto_0
    goto :goto_1

    .line 811
    :cond_2
    const-string v0, "answer JSON object IS NULL!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :goto_1
    return-void
.end method

.method private firmwareUpdateMode(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 816
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/poverka/httpFileClient/util/MyJSON;

    sget-object v1, Lcom/poverka/httpFileClient/util/MyJSON;->update_soft:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->isJSONok(Lorg/json/JSONObject;[Lcom/poverka/httpFileClient/util/MyJSON;)Z

    move-result v0

    const-string v1, "StateActivity"

    if-eqz v0, :cond_1

    .line 817
    sget-object v0, Lcom/poverka/httpFileClient/util/MyJSON;->update_soft:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 818
    .local v0, "updateOk":Z
    if-eqz v0, :cond_0

    .line 819
    const-string v2, "firmware is updating"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/util/MyModeQueue;->endMode()V

    .line 822
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->checkApkUpdate()V

    goto :goto_0

    .line 825
    :cond_0
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mSender:Lcom/poverka/httpFileClient/util/MySender;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/util/MySender;->updateFirmware()V

    .line 827
    .end local v0    # "updateOk":Z
    :goto_0
    goto :goto_1

    .line 829
    :cond_1
    const-string v0, "answer JSON object IS NULL!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :goto_1
    return-void
.end method

.method private getClientInfo(I)Ljava/lang/String;
    .locals 10
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 1722
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "localTasks.json"

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1724
    .local v0, "taskString":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1725
    .local v1, "array":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const-string v4, ""

    if-ge v2, v3, :cond_9

    .line 1726
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1727
    .local v3, "currentClient":Lorg/json/JSONObject;
    const-string v5, "ID"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, p1, :cond_8

    .line 1728
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 1729
    .local v6, "clientInfo":Lorg/json/JSONObject;
    invoke-virtual {v6, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1730
    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getProtocolNumber()Ljava/lang/String;

    move-result-object v5

    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string v8, "INTERNAL_ID"

    invoke-virtual {v6, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1731
    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getProtocolNumber()Ljava/lang/String;

    move-result-object v5

    const-string v8, "PROTOCOL_NUMBER"

    invoke-virtual {v6, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1732
    const-string v5, "SURNAME"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1733
    const-string v5, "CITY"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1734
    const-string v5, "STREET"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1735
    const-string v5, "BUILDING"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1736
    const-string v5, "BUILDING_BUKVA"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "null"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v8, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-virtual {v6, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1737
    const-string v5, "BUILDING_KORPUS"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    sget-object v8, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_2

    :cond_1
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-virtual {v6, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1738
    const-string v5, "APARTMENT"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1739
    const-string v5, "APARTMENT_BUKVA"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v8, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_3

    :cond_2
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_3
    invoke-virtual {v6, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1740
    const-string v5, "FULL_ADDRESS"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1741
    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const-string v8, "SEAL_NUMBER"

    invoke-virtual {v6, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1742
    const-string v5, "PHONE_NUMBER"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    sget-object v8, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_4

    :cond_3
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_4
    invoke-virtual {v6, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1743
    const-string v5, "PHONE_NUMBER_DOP"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    sget-object v8, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_5

    :cond_4
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_5
    invoke-virtual {v6, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1744
    const-string v5, "PHONE_NUMBER_DOP2"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    sget-object v8, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_6

    :cond_5
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_6
    invoke-virtual {v6, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1745
    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const-string v8, "E_MAIL"

    invoke-virtual {v6, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1746
    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getCurrentStationTimeString()Ljava/lang/String;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    aget-object v5, v5, v9

    const-string v9, "PROTOCOL_DATE"

    invoke-virtual {v6, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1747
    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getCurrentStationTimeString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v7

    const-string v8, "PROTOCOL_TIME"

    invoke-virtual {v6, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1748
    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getCounterNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_7

    :cond_6
    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getCounterNumber()Ljava/lang/String;

    move-result-object v5

    :goto_7
    const-string v8, "COUNTER_NUMBER"

    invoke-virtual {v6, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1749
    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getWaterTemperatureRound()I

    move-result v5

    const/16 v8, 0x1e

    if-le v5, v8, :cond_7

    const/4 v7, 0x2

    :cond_7
    const-string v5, "SERVICE_TYPE"

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1750
    const-string v5, "NOTE"

    invoke-virtual {v6, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1751
    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getStationNumber()I

    move-result v4

    const-string v5, "Z_NOMER"

    invoke-virtual {v6, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1753
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1725
    .end local v3    # "currentClient":Lorg/json/JSONObject;
    .end local v6    # "clientInfo":Lorg/json/JSONObject;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1756
    .end local v2    # "i":I
    :cond_9
    return-object v4
.end method

.method private initRequestObserver()V
    .locals 2

    .line 465
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->requestMode:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/poverka/httpFileClient/activity/StateActivity$4;

    invoke-direct {v1, p0}, Lcom/poverka/httpFileClient/activity/StateActivity$4;-><init>(Lcom/poverka/httpFileClient/activity/StateActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 539
    return-void
.end method

.method private initViews()V
    .locals 15

    .line 1251
    const v0, 0x7f090199

    invoke-virtual {p0, v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1252
    .local v0, "textFileName":Landroid/widget/TextView;
    const v1, 0x7f0901b7

    invoke-virtual {p0, v1}, Lcom/poverka/httpFileClient/activity/StateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1253
    .local v1, "textTemperature":Landroid/widget/TextView;
    const v2, 0x7f090065

    invoke-virtual {p0, v2}, Lcom/poverka/httpFileClient/activity/StateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1254
    .local v2, "buttonState":Landroid/widget/Button;
    const v3, 0x7f090053

    invoke-virtual {p0, v3}, Lcom/poverka/httpFileClient/activity/StateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1255
    .local v3, "buttonPhoto":Landroid/widget/Button;
    const v4, 0x7f090056

    invoke-virtual {p0, v4}, Lcom/poverka/httpFileClient/activity/StateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1256
    .local v4, "buttonTest":Landroid/widget/Button;
    const v5, 0x7f090067

    invoke-virtual {p0, v5}, Lcom/poverka/httpFileClient/activity/StateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 1258
    .local v5, "buttonStart":Landroid/widget/Button;
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1259
    .local v6, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1261
    iget v7, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1262
    .local v7, "screenHeight":I
    int-to-float v8, v7

    const v9, 0x3e19999a    # 0.15f

    mul-float v8, v8, v9

    float-to-int v8, v8

    .line 1263
    .local v8, "buttonHeight":I
    int-to-float v9, v7

    const v10, 0x3d7df3b6    # 0.062f

    mul-float v9, v9, v10

    float-to-int v9, v9

    .line 1264
    .local v9, "textLHeight":I
    int-to-float v10, v7

    const v11, 0x3d4ccccd    # 0.05f

    mul-float v10, v10, v11

    float-to-int v10, v10

    .line 1265
    .local v10, "textSHeight":I
    int-to-float v11, v7

    const v12, 0x3cf5c28f    # 0.03f

    mul-float v11, v11, v12

    float-to-int v11, v11

    .line 1266
    .local v11, "marginHeight":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/poverka/httpFileClient/activity/StateActivity;->Log(Ljava/lang/String;)V

    .line 1272
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 1273
    .local v12, "params":Landroid/widget/LinearLayout$LayoutParams;
    iput v11, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1274
    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 1276
    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    move-object v12, v13

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 1277
    iput v8, v12, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1278
    iput v11, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1279
    invoke-virtual {v2}, Landroid/widget/Button;->requestLayout()V

    .line 1281
    invoke-virtual {v3}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    move-object v12, v13

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 1282
    iput v8, v12, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1283
    iput v11, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1284
    invoke-virtual {v3}, Landroid/widget/Button;->requestLayout()V

    .line 1286
    invoke-virtual {v4}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    move-object v12, v13

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 1287
    iput v8, v12, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1288
    iput v11, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1289
    invoke-virtual {v4}, Landroid/widget/Button;->requestLayout()V

    .line 1291
    invoke-virtual {v5}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    move-object v12, v13

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 1292
    iput v8, v12, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1293
    iput v11, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1294
    invoke-virtual {v5}, Landroid/widget/Button;->requestLayout()V

    .line 1296
    int-to-float v13, v9

    const/4 v14, 0x0

    invoke-virtual {v0, v14, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1297
    int-to-float v13, v9

    invoke-virtual {v1, v14, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1298
    int-to-float v13, v10

    invoke-virtual {v2, v14, v13}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1299
    int-to-float v13, v10

    invoke-virtual {v3, v14, v13}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1300
    int-to-float v13, v10

    invoke-virtual {v4, v14, v13}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1301
    int-to-float v13, v10

    invoke-virtual {v5, v14, v13}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1303
    invoke-direct {p0, v14}, Lcom/poverka/httpFileClient/activity/StateActivity;->setViewsClickable(Z)V

    .line 1304
    return-void
.end method

.method private isConnected()Z
    .locals 3

    .line 1216
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 1217
    :try_start_0
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mTcpClient:Lcom/poverka/httpFileClient/util/TcpClient;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/util/TcpClient;->isServerRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1218
    const/4 v1, 0x1

    return v1

    .line 1221
    :cond_0
    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1225
    .end local v0    # "i":I
    :catch_0
    move-exception v0

    .line 1226
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "StateActivity"

    const-string v2, "Sleep"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1227
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    nop

    .line 1228
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private isJSONok(Lorg/json/JSONObject;[Lcom/poverka/httpFileClient/util/MyJSON;)Z
    .locals 5
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "params"    # [Lcom/poverka/httpFileClient/util/MyJSON;

    .line 914
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 915
    :cond_0
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p2, v2

    .line 916
    .local v3, "param":Lcom/poverka/httpFileClient/util/MyJSON;
    invoke-virtual {v3}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    return v0

    .line 915
    .end local v3    # "param":Lcom/poverka/httpFileClient/util/MyJSON;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 918
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private prepareMeasurementMode(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 757
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/poverka/httpFileClient/util/MyJSON;

    sget-object v1, Lcom/poverka/httpFileClient/util/MyJSON;->action:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->isJSONok(Lorg/json/JSONObject;[Lcom/poverka/httpFileClient/util/MyJSON;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 758
    sget-object v0, Lcom/poverka/httpFileClient/util/MyJSON;->date_time:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    sget-object v1, Lcom/poverka/httpFileClient/util/MyJSON;->date_time:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setCurrentStationTime(I)V

    .line 761
    :cond_0
    sget-object v0, Lcom/poverka/httpFileClient/util/MyJSON;->action:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 762
    .local v0, "curAction":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 763
    iget v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->selectedId:I

    if-lez v1, :cond_1

    .line 765
    :try_start_0
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mHttpFileClient:Lcom/poverka/httpFileClient/util/HttpFileClient;

    const-string v4, "1/current/client.json"

    invoke-direct {p0, v1}, Lcom/poverka/httpFileClient/activity/StateActivity;->getClientInfo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/poverka/httpFileClient/util/HttpFileClient;->upload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    goto :goto_1

    .line 766
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 767
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const-string v6, "State prepareMeas"

    invoke-static {v3, v6, v4, v5}, Lcom/poverka/httpFileClient/util/MyFileReader;->appendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    .line 768
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 772
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v1, v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setAction(I)V

    .line 773
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mUIhandler:Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 774
    .local v1, "msg":Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 775
    .local v3, "bundleAction":Landroid/os/Bundle;
    const-string v4, "restoring"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 776
    invoke-virtual {v1, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 777
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mUIhandler:Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    invoke-virtual {v2, v1}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->sendMessage(Landroid/os/Message;)Z

    .line 778
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/util/MyModeQueue;->endMode()V

    .line 779
    .end local v1    # "msg":Landroid/os/Message;
    .end local v3    # "bundleAction":Landroid/os/Bundle;
    goto :goto_2

    .line 781
    :cond_2
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mSender:Lcom/poverka/httpFileClient/util/MySender;

    invoke-virtual {v2, v1}, Lcom/poverka/httpFileClient/util/MySender;->changeAction(I)V

    .line 783
    .end local v0    # "curAction":I
    :goto_2
    goto :goto_3

    .line 784
    :cond_3
    const-string v0, "StateActivity"

    const-string v1, "answer JSON object IS NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :goto_3
    return-void
.end method

.method private readActionMode(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 736
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/poverka/httpFileClient/util/MyJSON;

    sget-object v2, Lcom/poverka/httpFileClient/util/MyJSON;->action:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, p1, v1}, Lcom/poverka/httpFileClient/activity/StateActivity;->isJSONok(Lorg/json/JSONObject;[Lcom/poverka/httpFileClient/util/MyJSON;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 737
    sget-object v1, Lcom/poverka/httpFileClient/util/MyJSON;->action:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 738
    .local v1, "curAction":I
    if-nez v1, :cond_0

    .line 739
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "State"

    const-string v3, "curAction == 0"

    invoke-static {v0, v2, v3}, Lcom/poverka/httpFileClient/util/MyFileReader;->appendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 740
    :cond_0
    if-ne v1, v0, :cond_1

    .line 741
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setAction(I)V

    .line 742
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    sget-object v2, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->TEST_PHOTO:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    invoke-virtual {v0, v2}, Lcom/poverka/httpFileClient/util/MyModeQueue;->add(Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;)V

    .line 743
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    sget-object v2, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->STATE:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    invoke-virtual {v0, v2}, Lcom/poverka/httpFileClient/util/MyModeQueue;->add(Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;)V

    .line 744
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MyModeQueue;->endMode()V

    goto :goto_0

    .line 745
    :cond_1
    if-le v1, v0, :cond_2

    .line 746
    const-string v2, "current action is not 1"

    invoke-static {v2}, Lcom/poverka/httpFileClient/activity/StateActivity;->Log(Ljava/lang/String;)V

    .line 748
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mSender:Lcom/poverka/httpFileClient/util/MySender;

    invoke-virtual {v2, v0}, Lcom/poverka/httpFileClient/util/MySender;->changeAction(I)V

    .line 750
    .end local v1    # "curAction":I
    :cond_2
    :goto_0
    goto :goto_1

    .line 752
    :cond_3
    const-string v0, "StateActivity"

    const-string v1, "answer JSON object IS NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :goto_1
    return-void
.end method

.method private readDateTimeMode(Lorg/json/JSONObject;)V
    .locals 14
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 542
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/poverka/httpFileClient/util/MyJSON;

    sget-object v2, Lcom/poverka/httpFileClient/util/MyJSON;->date_time:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, p1, v1}, Lcom/poverka/httpFileClient/activity/StateActivity;->isJSONok(Lorg/json/JSONObject;[Lcom/poverka/httpFileClient/util/MyJSON;)Z

    move-result v1

    const-string v2, "StateActivity"

    if-eqz v1, :cond_4

    .line 543
    sget-object v1, Lcom/poverka/httpFileClient/util/MyJSON;->date_time:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 544
    .local v1, "stationDateTime":I
    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v4, v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setCurrentStationTime(I)V

    .line 546
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 547
    .local v4, "tabletTime":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 548
    .local v5, "stationTime":Ljava/util/Calendar;
    new-instance v6, Ljava/util/Date;

    int-to-long v7, v1

    const-wide/16 v9, 0x3e8

    mul-long v7, v7, v9

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 549
    .local v6, "stationDate":Ljava/util/Date;
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 551
    sget-object v7, Lcom/poverka/httpFileClient/util/MyJSON;->count_file_status:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v7}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 552
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MyModeQueue;->endMode()V

    goto/16 :goto_2

    .line 553
    :cond_0
    sget-object v7, Lcom/poverka/httpFileClient/util/MyJSON;->date_from_net:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v7}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x2

    if-eqz v7, :cond_3

    .line 554
    const-string v7, "date_from_net"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 555
    .local v7, "dateFromNet":Z
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v10, v0, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v3

    const-string v11, "Date from net is: %b"

    invoke-static {v9, v11, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    if-nez v7, :cond_2

    .line 558
    const/4 v9, 0x6

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-ne v10, v9, :cond_1

    .line 559
    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-eq v9, v10, :cond_2

    .line 560
    :cond_1
    const-string v9, "wrong day of year!!!"

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v9, 0x3

    new-array v10, v9, [Ljava/lang/Object;

    .line 563
    const/4 v11, 0x5

    invoke-virtual {v5, v11}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v3

    .line 564
    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v12

    add-int/2addr v12, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v0

    .line 565
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v8

    .line 562
    const-string v12, "%02d.%02d.%04d"

    invoke-static {v2, v12, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 566
    .local v2, "stationDateString":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "station: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/poverka/httpFileClient/activity/StateActivity;->Log(Ljava/lang/String;)V

    .line 568
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v9, v9, [Ljava/lang/Object;

    .line 569
    invoke-virtual {v4, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v3

    .line 570
    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v0

    .line 571
    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v8

    .line 568
    invoke-static {v10, v12, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, "tabletDateString":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tablet: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/poverka/httpFileClient/activity/StateActivity;->Log(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "State date"

    invoke-static {v3, v9, v8}, Lcom/poverka/httpFileClient/util/MyFileReader;->appendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mUIhandler:Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    const/16 v8, 0xd

    invoke-virtual {v3, v8}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 577
    .local v3, "m":Landroid/os/Message;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 578
    .local v8, "bundleAlert":Landroid/os/Bundle;
    const-string v9, "stationDate"

    invoke-virtual {v8, v9, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const-string v9, "tabletDate"

    invoke-virtual {v8, v9, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    invoke-virtual {v3, v8}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 581
    iget-object v9, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mUIhandler:Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    invoke-virtual {v9, v3}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->sendMessage(Landroid/os/Message;)Z

    .line 582
    .end local v0    # "tabletDateString":Ljava/lang/String;
    .end local v2    # "stationDateString":Ljava/lang/String;
    .end local v3    # "m":Landroid/os/Message;
    .end local v8    # "bundleAlert":Landroid/os/Bundle;
    goto :goto_0

    .line 583
    :cond_2
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MyModeQueue;->endMode()V

    .line 585
    .end local v7    # "dateFromNet":Z
    :goto_0
    goto/16 :goto_2

    .line 586
    :cond_3
    const/4 v2, 0x0

    .line 588
    .local v2, "station":I
    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    const-string v10, "settings.json"

    invoke-direct {v7, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 589
    .local v7, "settings":Ljava/io/File;
    new-instance v9, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 590
    .local v9, "jsonSettings":Lorg/json/JSONObject;
    const-string v10, "station"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v10

    .line 593
    .end local v7    # "settings":Ljava/io/File;
    .end local v9    # "jsonSettings":Lorg/json/JSONObject;
    goto :goto_1

    .line 591
    :catch_0
    move-exception v7

    .line 592
    .local v7, "e":Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    .line 595
    .end local v7    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/poverka/httpFileClient/util/MyFileReader;->getLogFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    .line 596
    .local v7, "logFile":Ljava/io/File;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    .line 597
    .local v9, "curDate":Ljava/util/Date;
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "ddMMyyyy"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 598
    .local v10, "format":Ljava/text/SimpleDateFormat;
    iget-object v11, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mHttpFileClient:Lcom/poverka/httpFileClient/util/HttpFileClient;

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v8, v3

    invoke-virtual {v10, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v0

    const-string v0, "logs/upload/1/%03d/%s"

    invoke-static {v12, v0, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0, v7}, Lcom/poverka/httpFileClient/util/HttpFileClient;->headUploadServer(Ljava/lang/String;Ljava/io/File;)V

    .line 600
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mUIhandler:Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 601
    .local v0, "m":Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 602
    .local v3, "bundleAlert":Landroid/os/Bundle;
    const v8, 0x7f0f001e

    invoke-virtual {p0, v8}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v11, "tittle"

    invoke-virtual {v3, v11, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const v8, 0x7f0f001f

    invoke-virtual {p0, v8}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v11, "message"

    invoke-virtual {v3, v11, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 605
    iget-object v8, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mUIhandler:Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    invoke-virtual {v8, v0}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->sendMessage(Landroid/os/Message;)Z

    .line 607
    .end local v0    # "m":Landroid/os/Message;
    .end local v1    # "stationDateTime":I
    .end local v2    # "station":I
    .end local v3    # "bundleAlert":Landroid/os/Bundle;
    .end local v4    # "tabletTime":Ljava/util/Calendar;
    .end local v5    # "stationTime":Ljava/util/Calendar;
    .end local v6    # "stationDate":Ljava/util/Date;
    .end local v7    # "logFile":Ljava/io/File;
    .end local v9    # "curDate":Ljava/util/Date;
    .end local v10    # "format":Ljava/text/SimpleDateFormat;
    :goto_2
    goto :goto_3

    .line 608
    :cond_4
    const-string v0, "answer JSON object HAS NO DATE_TIME!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :goto_3
    return-void
.end method

.method private restoreActionMode(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 879
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/poverka/httpFileClient/util/MyJSON;

    sget-object v1, Lcom/poverka/httpFileClient/util/MyJSON;->test_name:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/poverka/httpFileClient/util/MyJSON;->multiplier:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/poverka/httpFileClient/util/MyJSON;->meas_numb:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lcom/poverka/httpFileClient/util/MyJSON;->reit_numb:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lcom/poverka/httpFileClient/util/MyJSON;->action:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    invoke-direct {p0, p1, v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->isJSONok(Lorg/json/JSONObject;[Lcom/poverka/httpFileClient/util/MyJSON;)Z

    move-result v0

    const-string v1, "restoring"

    if-eqz v0, :cond_1

    .line 880
    sget-object v0, Lcom/poverka/httpFileClient/util/MyJSON;->action:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 881
    .local v0, "curAction":I
    if-ne v0, v4, :cond_0

    .line 882
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v2, v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setAction(I)V

    .line 883
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/util/MyModeQueue;->endMode()V

    .line 885
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mUIhandler:Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    invoke-virtual {v2, v5}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 886
    .local v2, "msg":Landroid/os/Message;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 887
    .local v4, "bundleAction":Landroid/os/Bundle;
    invoke-virtual {v4, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 888
    invoke-virtual {v2, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 889
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mUIhandler:Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    invoke-virtual {v1, v2}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->sendMessage(Landroid/os/Message;)Z

    .line 890
    .end local v2    # "msg":Landroid/os/Message;
    .end local v4    # "bundleAction":Landroid/os/Bundle;
    goto :goto_0

    .line 891
    :cond_0
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mSender:Lcom/poverka/httpFileClient/util/MySender;

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getTestName()I

    move-result v2

    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getMultiplier()I

    move-result v3

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getLastMeasNumber()I

    move-result v4

    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    .line 892
    invoke-virtual {v5}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getLastMeasNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getLastReitNumber(I)I

    move-result v5

    .line 891
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/poverka/httpFileClient/util/MySender;->restoreTestSettings(IIII)V

    .line 894
    .end local v0    # "curAction":I
    :goto_0
    goto :goto_2

    :cond_1
    new-array v0, v3, [Lcom/poverka/httpFileClient/util/MyJSON;

    sget-object v6, Lcom/poverka/httpFileClient/util/MyJSON;->action:Lcom/poverka/httpFileClient/util/MyJSON;

    aput-object v6, v0, v2

    invoke-direct {p0, p1, v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->isJSONok(Lorg/json/JSONObject;[Lcom/poverka/httpFileClient/util/MyJSON;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 895
    sget-object v0, Lcom/poverka/httpFileClient/util/MyJSON;->action:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 896
    .restart local v0    # "curAction":I
    if-ne v0, v4, :cond_2

    .line 897
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v2, v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setAction(I)V

    .line 898
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/util/MyModeQueue;->endMode()V

    .line 900
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mUIhandler:Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    invoke-virtual {v2, v5}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 901
    .restart local v2    # "msg":Landroid/os/Message;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 902
    .restart local v4    # "bundleAction":Landroid/os/Bundle;
    invoke-virtual {v4, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 903
    invoke-virtual {v2, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 904
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mUIhandler:Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    invoke-virtual {v1, v2}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->sendMessage(Landroid/os/Message;)Z

    .line 905
    .end local v2    # "msg":Landroid/os/Message;
    .end local v4    # "bundleAction":Landroid/os/Bundle;
    goto :goto_1

    .line 906
    :cond_2
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mSender:Lcom/poverka/httpFileClient/util/MySender;

    invoke-virtual {v1, v4}, Lcom/poverka/httpFileClient/util/MySender;->changeAction(I)V

    .line 908
    .end local v0    # "curAction":I
    :goto_1
    goto :goto_2

    .line 909
    :cond_3
    const-string v0, "StateActivity"

    const-string v1, "answer JSON object IS NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :goto_2
    return-void
.end method

.method private restoreFilesMode()V
    .locals 3

    .line 865
    sget-object v0, Lcom/poverka/httpFileClient/activity/StateActivity;->restoration:Lcom/poverka/httpFileClient/util/RestorationHelper;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/RestorationHelper;->getNextFilePath()Ljava/lang/String;

    move-result-object v0

    .line 866
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 867
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mHttpFileClient:Lcom/poverka/httpFileClient/util/HttpFileClient;

    invoke-virtual {v1, v0}, Lcom/poverka/httpFileClient/util/HttpFileClient;->download(Ljava/lang/String;)V

    goto :goto_0

    .line 869
    :cond_0
    const-string v1, "StateActivity"

    const-string v2, "No files to restore!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->removeExtraPhotos()V

    .line 871
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/StateActivity;->Log(Ljava/lang/String;)V

    .line 873
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    sget-object v2, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->RESTORE_ACTION:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    invoke-virtual {v1, v2}, Lcom/poverka/httpFileClient/util/MyModeQueue;->add(Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;)V

    .line 874
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/util/MyModeQueue;->endMode()V

    .line 876
    :goto_0
    return-void
.end method

.method private restoreSocketMode(Lorg/json/JSONObject;)V
    .locals 13
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 834
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/poverka/httpFileClient/util/MyJSON;

    sget-object v1, Lcom/poverka/httpFileClient/util/MyJSON;->meas_numb:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/poverka/httpFileClient/util/MyJSON;->reit_numb:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/poverka/httpFileClient/util/MyJSON;->action:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lcom/poverka/httpFileClient/util/MyJSON;->cur_verifs:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v4, 0x3

    aput-object v1, v0, v4

    sget-object v1, Lcom/poverka/httpFileClient/util/MyJSON;->charge_batt:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v4, 0x4

    aput-object v1, v0, v4

    sget-object v1, Lcom/poverka/httpFileClient/util/MyJSON;->finish:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v4, 0x5

    aput-object v1, v0, v4

    sget-object v1, Lcom/poverka/httpFileClient/util/MyJSON;->date_time:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v4, 0x6

    aput-object v1, v0, v4

    sget-object v1, Lcom/poverka/httpFileClient/util/MyJSON;->ver_soft:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v4, 0x7

    aput-object v1, v0, v4

    sget-object v1, Lcom/poverka/httpFileClient/util/MyJSON;->number_today:Lcom/poverka/httpFileClient/util/MyJSON;

    const/16 v4, 0x8

    aput-object v1, v0, v4

    invoke-direct {p0, p1, v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->isJSONok(Lorg/json/JSONObject;[Lcom/poverka/httpFileClient/util/MyJSON;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 835
    sget-object v0, Lcom/poverka/httpFileClient/util/MyJSON;->meas_numb:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 836
    .local v0, "measNumber":I
    sget-object v1, Lcom/poverka/httpFileClient/util/MyJSON;->reit_numb:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 837
    .local v1, "reitNumber":I
    sget-object v4, Lcom/poverka/httpFileClient/util/MyJSON;->action:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 838
    .local v4, "action":I
    sget-object v5, Lcom/poverka/httpFileClient/util/MyJSON;->charge_batt:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 839
    .local v5, "batteryCharge":I
    sget-object v6, Lcom/poverka/httpFileClient/util/MyJSON;->date_time:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 840
    .local v6, "dateTime":I
    sget-object v7, Lcom/poverka/httpFileClient/util/MyJSON;->ver_soft:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v7}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 841
    .local v7, "verSoft":Ljava/lang/String;
    sget-object v8, Lcom/poverka/httpFileClient/util/MyJSON;->number_today:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v8}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 843
    .local v8, "todayVerifications":I
    sget-object v9, Lcom/poverka/httpFileClient/activity/StateActivity;->restoration:Lcom/poverka/httpFileClient/util/RestorationHelper;

    invoke-virtual {v9, v0, v1}, Lcom/poverka/httpFileClient/util/RestorationHelper;->setMeasurementParams(II)V

    .line 844
    iget-object v9, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v9, v4, v8, v5, v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->loadAll(IIII)V

    .line 845
    iget-object v9, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v9, v7}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setVerStation(Ljava/lang/String;)V

    .line 847
    :try_start_0
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 848
    .local v9, "pInfo":Landroid/content/pm/PackageInfo;
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v11, "Ver_android = %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v12, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v12, v3, v2

    invoke-static {v10, v11, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/poverka/httpFileClient/activity/StateActivity;->Log(Ljava/lang/String;)V

    .line 849
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    iget-object v3, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setVerAndroid(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    .end local v9    # "pInfo":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 850
    :catch_0
    move-exception v2

    .line 851
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v10

    const-string v11, "State restoreSocket"

    invoke-static {v3, v11, v9, v10}, Lcom/poverka/httpFileClient/util/MyFileReader;->appendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    .line 852
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 854
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    sget-object v3, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->RESTORE_FILES:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    invoke-virtual {v2, v3}, Lcom/poverka/httpFileClient/util/MyModeQueue;->add(Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;)V

    .line 855
    .end local v0    # "measNumber":I
    .end local v1    # "reitNumber":I
    .end local v4    # "action":I
    .end local v5    # "batteryCharge":I
    .end local v6    # "dateTime":I
    .end local v7    # "verSoft":Ljava/lang/String;
    .end local v8    # "todayVerifications":I
    goto :goto_1

    .line 856
    :cond_0
    const-string v0, "StateActivity"

    const-string v1, "can\'t restore, need save"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f012f

    invoke-virtual {p0, v1}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 859
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    sget-object v1, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->FINISH:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/util/MyModeQueue;->add(Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;)V

    .line 861
    :goto_1
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MyModeQueue;->endMode()V

    .line 862
    return-void
.end method

.method private setViewsClickable(Z)V
    .locals 4
    .param p1, "value"    # Z

    .line 1307
    const v0, 0x7f0900e0

    invoke-virtual {p0, v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1308
    .local v0, "image":Landroid/widget/ImageView;
    const v1, 0x7f090053

    invoke-virtual {p0, v1}, Lcom/poverka/httpFileClient/activity/StateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1309
    .local v1, "buttonPhoto":Landroid/widget/Button;
    const v2, 0x7f090056

    invoke-virtual {p0, v2}, Lcom/poverka/httpFileClient/activity/StateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1310
    .local v2, "buttonTest":Landroid/widget/Button;
    const v3, 0x7f090067

    invoke-virtual {p0, v3}, Lcom/poverka/httpFileClient/activity/StateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1312
    .local v3, "buttonStart":Landroid/widget/Button;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1313
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1314
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1315
    invoke-virtual {v3, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1316
    return-void
.end method

.method private stateMode(Lorg/json/JSONObject;)V
    .locals 12
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 628
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/poverka/httpFileClient/util/MyJSON;

    sget-object v1, Lcom/poverka/httpFileClient/util/MyJSON;->cur_verifs:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/poverka/httpFileClient/util/MyJSON;->charge_batt:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/poverka/httpFileClient/util/MyJSON;->temper:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    invoke-direct {p0, p1, v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->isJSONok(Lorg/json/JSONObject;[Lcom/poverka/httpFileClient/util/MyJSON;)Z

    move-result v0

    const-string v1, "StateActivity"

    if-eqz v0, :cond_5

    .line 629
    sget-object v0, Lcom/poverka/httpFileClient/util/MyJSON;->charge_batt:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 630
    .local v0, "batteryCharge":I
    sget-object v5, Lcom/poverka/httpFileClient/util/MyJSON;->temper:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 631
    .local v5, "waterTemperature":I
    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v6, v0, v5}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setStateData(II)V

    .line 633
    const-string v6, "ver_soft"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 635
    :try_start_0
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 636
    .local v7, "pInfo":Landroid/content/pm/PackageInfo;
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v9, "Ver_android = %s"

    new-array v10, v3, [Ljava/lang/Object;

    iget-object v11, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v11, v10, v2

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/poverka/httpFileClient/activity/StateActivity;->Log(Ljava/lang/String;)V

    .line 637
    iget-object v8, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    iget-object v9, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setVerAndroid(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    .end local v7    # "pInfo":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 638
    :catch_0
    move-exception v7

    .line 639
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v10

    const-string v11, "State ver_soft"

    invoke-static {v8, v11, v9, v10}, Lcom/poverka/httpFileClient/util/MyFileReader;->appendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    .line 640
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 642
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    const-string v9, "Ver_station = %s"

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/poverka/httpFileClient/activity/StateActivity;->Log(Ljava/lang/String;)V

    .line 643
    iget-object v7, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setVerStation(Ljava/lang/String;)V

    .line 645
    :cond_0
    const-string v6, "number_today"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 646
    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    sget-object v7, Lcom/poverka/httpFileClient/util/MyJSON;->number_today:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v7}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setVerificationNumberToday(I)V

    .line 648
    :cond_1
    const-string v6, "temper_dev"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "hum_dev"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 649
    sget-object v6, Lcom/poverka/httpFileClient/util/MyJSON;->temper_dev:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v6, v6

    .line 650
    .local v6, "temperatureIn":F
    sget-object v7, Lcom/poverka/httpFileClient/util/MyJSON;->hum_dev:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v7}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-float v7, v7

    .line 651
    .local v7, "humidityIn":F
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v4, v2

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v4, v3

    const-string v9, "Temperature inside: %.1f, Humidity inside: %.1f"

    invoke-static {v8, v9, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v1, v6, v7}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setInnerInfo(FF)V

    .line 654
    .end local v6    # "temperatureIn":F
    .end local v7    # "humidityIn":F
    :cond_2
    const-string v1, "allowNoCalibration"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "ACSECC"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 655
    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v6, v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setWorkInShortMode(Z)V

    .line 657
    :cond_4
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getWorkInShortMode()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "SHORT MODE is %b"

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/StateActivity;->Log(Ljava/lang/String;)V

    .line 659
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mUIhandler:Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 660
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 661
    .local v2, "bundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getVerificationNumberNew()I

    move-result v3

    const-string v4, "count"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 662
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 663
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mUIhandler:Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    invoke-virtual {v3, v1}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->sendMessage(Landroid/os/Message;)Z

    .line 664
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mUIhandler:Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->sendEmptyMessage(I)Z

    .line 666
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/util/MyModeQueue;->endMode()V

    .line 667
    .end local v0    # "batteryCharge":I
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v5    # "waterTemperature":I
    goto :goto_2

    .line 670
    :cond_5
    const-string v0, "answer JSON object IS NULL!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :goto_2
    return-void
.end method

.method private stopActivity()V
    .locals 2

    .line 1232
    const-string v0, "\u041e\u0441\u0442\u0430\u043d\u0430\u0432\u043b\u0438\u0432\u0430\u0435\u043c \u0432\u0441\u0435 \u043f\u0440\u043e\u0446\u0435\u0441\u0441\u044b"

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->Log(Ljava/lang/String;)V

    .line 1234
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    if-eqz v0, :cond_0

    .line 1235
    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MyModeQueue;->stopAndClear()V

    .line 1237
    :cond_0
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->freezeCheckerTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 1238
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1239
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->freezeCheckerTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1241
    :cond_1
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->senderThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .line 1242
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1244
    :cond_2
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mTcpClient:Lcom/poverka/httpFileClient/util/TcpClient;

    if-eqz v0, :cond_3

    .line 1245
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/util/TcpClient;->stopClient(Z)V

    .line 1247
    :cond_3
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->requestMode:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/MutableLiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 1248
    return-void
.end method

.method private testNameMode(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 675
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/poverka/httpFileClient/util/MyJSON;

    sget-object v1, Lcom/poverka/httpFileClient/util/MyJSON;->test_name:Lcom/poverka/httpFileClient/util/MyJSON;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->isJSONok(Lorg/json/JSONObject;[Lcom/poverka/httpFileClient/util/MyJSON;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 676
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getTestName()I

    move-result v0

    sget-object v1, Lcom/poverka/httpFileClient/util/MyJSON;->test_name:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 677
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mUIhandler:Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->sendEmptyMessage(I)Z

    .line 678
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MyModeQueue;->endMode()V

    goto :goto_0

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mSender:Lcom/poverka/httpFileClient/util/MySender;

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getTestName()I

    move-result v1

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getMultiplier()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/poverka/httpFileClient/util/MySender;->writeTestName(II)V

    goto :goto_0

    .line 685
    :cond_1
    const-string v0, "StateActivity"

    const-string v1, "answer JSON object IS NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :goto_0
    return-void
.end method

.method private testPhotoMode(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 613
    sget-object v0, Lcom/poverka/httpFileClient/util/MyJSON;->test_photo:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 614
    sget-object v0, Lcom/poverka/httpFileClient/util/MyJSON;->test_photo:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mSender:Lcom/poverka/httpFileClient/util/MySender;

    const-string v1, "{\"request\":1}\n"

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/util/MySender;->createSendString(Ljava/lang/String;)V

    goto :goto_0

    .line 617
    :cond_0
    sget-object v0, Lcom/poverka/httpFileClient/util/MyJSON;->test_photo:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 618
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mHttpFileClient:Lcom/poverka/httpFileClient/util/HttpFileClient;

    const-string v1, "1/current/photo_001.jpeg"

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/util/HttpFileClient;->download(Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MyModeQueue;->endMode()V

    goto :goto_0

    .line 623
    :cond_1
    const-string v0, "StateActivity"

    const-string v1, "answer JSON object HAS NO TEST_PHOTO!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_2
    :goto_0
    return-void
.end method

.method private updateSelectTestSpinners(Landroid/view/View;III)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pos"    # I
    .param p3, "QIndex"    # I
    .param p4, "RClassIndex"    # I

    .line 1319
    const v0, 0x7f090161

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 1320
    .local v0, "spinnerQ":Landroid/widget/Spinner;
    const v1, 0x7f090163

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 1322
    .local v1, "spinnerRClass":Landroid/widget/Spinner;
    const v2, 0x7f0c005f

    if-nez p2, :cond_0

    .line 1324
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f030005

    invoke-static {v3, v4, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v3

    .line 1325
    .local v3, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1326
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x7f030000

    invoke-static {v4, v5, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    .line 1327
    .end local v3    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .local v2, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0

    .line 1329
    .end local v2    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_0
    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    .line 1331
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f030002

    invoke-static {v3, v4, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v3

    .line 1332
    .restart local v3    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1333
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f030006

    invoke-static {v4, v5, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    .line 1334
    .end local v3    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .restart local v2    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1336
    .end local v2    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_1
    :goto_0
    invoke-virtual {v0, p3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1337
    invoke-virtual {v1, p4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1338
    return-void
.end method


# virtual methods
.method public ImageClicked(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 1131
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getTestPhoto()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1132
    return-void

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->isDeviceTypeInfoEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1135
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0138

    invoke-virtual {p0, v1}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1136
    return-void

    .line 1138
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1139
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;->START:Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;

    const-string v2, "layoutType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1140
    const/4 v1, 0x0

    const-string v2, "clicked"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1141
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getTestPhoto()Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "image"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1142
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getCounterNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "number"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getInitialVolume()I

    move-result v1

    const-string v2, "volume"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1144
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getProductionYear()I

    move-result v1

    const-string v2, "year"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1145
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getDNtypeNumber()I

    move-result v1

    const-string v2, "dnType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1146
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getChar1()Ljava/lang/String;

    move-result-object v1

    const-string v2, "char1"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getChar2()Ljava/lang/String;

    move-result-object v1

    const-string v2, "char2"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    new-instance v1, Lcom/poverka/httpFileClient/activity/ImageActivity;

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->imageResult:Lcom/poverka/httpFileClient/activity/ImageActivity$OnImageResult;

    invoke-direct {v1, p0, v2, v0}, Lcom/poverka/httpFileClient/activity/ImageActivity;-><init>(Landroid/app/Activity;Lcom/poverka/httpFileClient/activity/ImageActivity$OnImageResult;Landroid/os/Bundle;)V

    .line 1149
    return-void
.end method

.method public PhotoClicked(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 934
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->setViewsClickable(Z)V

    .line 935
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    sget-object v1, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->TEST_PHOTO:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/util/MyModeQueue;->add(Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;)V

    .line 936
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    sget-object v1, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->STATE:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/util/MyModeQueue;->add(Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;)V

    .line 937
    return-void
.end method

.method public StartClicked(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 1098
    const-string v0, "State StartClick"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getTestName()I

    move-result v2

    if-nez v2, :cond_0

    .line 1099
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f00e2

    invoke-virtual {p0, v3}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1100
    return-void

    .line 1101
    :cond_0
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->isTestTemperatureOk()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1102
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f002d

    invoke-virtual {p0, v3}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1103
    return-void

    .line 1104
    :cond_1
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getChar1()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getChar2()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/poverka/httpFileClient/util/MyDeviceTypeHelper;->isTypeExist(Landroid/content/ContextWrapper;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1105
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f00ec

    invoke-virtual {p0, v3}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1106
    return-void

    .line 1111
    :cond_2
    goto :goto_0

    .line 1108
    :catch_0
    move-exception v2

    .line 1109
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-static {v3, v0, v4, v5}, Lcom/poverka/httpFileClient/util/MyFileReader;->appendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    .line 1110
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1112
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-direct {p0, v1}, Lcom/poverka/httpFileClient/activity/StateActivity;->setViewsClickable(Z)V

    .line 1115
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1116
    .local v1, "json":Lorg/json/JSONObject;
    sget-object v2, Lcom/poverka/httpFileClient/util/MyJSON;->counter_number:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getCounterNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1117
    sget-object v2, Lcom/poverka/httpFileClient/util/MyJSON;->start_volume:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getInitialVolume()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1118
    sget-object v2, Lcom/poverka/httpFileClient/util/MyJSON;->production_year:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getProductionYear()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1119
    sget-object v2, Lcom/poverka/httpFileClient/util/MyJSON;->type_id:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getDNtypeNumber()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1120
    sget-object v2, Lcom/poverka/httpFileClient/util/MyJSON;->water_temperature:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getWaterTemperature()F

    move-result v3

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float v3, v3, v4

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1121
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mHttpFileClient:Lcom/poverka/httpFileClient/util/HttpFileClient;

    const-string v3, "1/current/counter_info.json"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/poverka/httpFileClient/util/HttpFileClient;->upload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1125
    .end local v1    # "json":Lorg/json/JSONObject;
    goto :goto_1

    .line 1122
    :catch_1
    move-exception v1

    .line 1123
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-static {v2, v0, v3, v4}, Lcom/poverka/httpFileClient/util/MyFileReader;->appendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    .line 1124
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1127
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mQueue:Lcom/poverka/httpFileClient/util/MyModeQueue;

    sget-object v1, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->PREPARE_MEASUREMENT:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/util/MyModeQueue;->add(Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;)V

    .line 1128
    return-void
.end method

.method public StateClicked(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 922
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    if-nez v0, :cond_0

    .line 923
    return-void

    .line 925
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0172

    .line 926
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    .line 927
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->stateDataToString(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    .line 928
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x108009b

    .line 929
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 930
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 931
    return-void
.end method

.method public TestClicked(Landroid/view/View;)V
    .locals 17
    .param p1, "v"    # Landroid/view/View;

    .line 940
    move-object/from16 v6, p0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v7, v0

    .line 941
    .local v7, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    .line 942
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f0c0023

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 943
    .local v9, "selectTestView":Landroid/view/View;
    const v0, 0x7f0901ae

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    .line 945
    .local v10, "textWaterTemperature":Landroid/widget/TextView;
    const v0, 0x7f090162

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/Spinner;

    .line 946
    .local v11, "spinnerQName":Landroid/widget/Spinner;
    const v0, 0x7f090161

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/Spinner;

    .line 947
    .local v12, "spinnerQ":Landroid/widget/Spinner;
    const v0, 0x7f090163

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/Spinner;

    .line 948
    .local v13, "spinnerRClass":Landroid/widget/Spinner;
    const v0, 0x7f090160

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/Spinner;

    .line 950
    .local v14, "spinnerMechanismType":Landroid/widget/Spinner;
    iget-object v0, v6, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getWaterTemperature()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_3

    iget-object v0, v6, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getWaterTemperature()F

    move-result v0

    const/high16 v1, 0x42f00000    # 120.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    move-object/from16 v16, v8

    goto/16 :goto_2

    .line 955
    :cond_0
    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 957
    const v5, 0x7f0f0131

    new-instance v4, Lcom/poverka/httpFileClient/activity/StateActivity$5;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v12

    move-object v15, v4

    move-object v4, v13

    move-object/from16 v16, v8

    const v8, 0x7f0f0131

    .end local v8    # "inflater":Landroid/view/LayoutInflater;
    .local v16, "inflater":Landroid/view/LayoutInflater;
    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/poverka/httpFileClient/activity/StateActivity$5;-><init>(Lcom/poverka/httpFileClient/activity/StateActivity;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;)V

    invoke-virtual {v7, v8, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1036
    const v0, 0x7f0f0059

    new-instance v1, Lcom/poverka/httpFileClient/activity/StateActivity$6;

    invoke-direct {v1, v6}, Lcom/poverka/httpFileClient/activity/StateActivity$6;-><init>(Lcom/poverka/httpFileClient/activity/StateActivity;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1042
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1043
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1045
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/high16 v2, 0x41880000    # 17.0f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 1046
    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 1048
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const v4, 0x7f0f013a

    invoke-virtual {v6, v4}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, v6, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getWaterTemperatureRound()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "%s: %d \u00b0C"

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1050
    invoke-virtual/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f030003

    const v4, 0x7f0c005f

    invoke-static {v1, v3, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    .line 1051
    .local v1, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v11, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1053
    new-instance v3, Lcom/poverka/httpFileClient/activity/StateActivity$7;

    invoke-direct {v3, v6, v9}, Lcom/poverka/httpFileClient/activity/StateActivity$7;-><init>(Lcom/poverka/httpFileClient/activity/StateActivity;Landroid/view/View;)V

    invoke-virtual {v11, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1073
    invoke-virtual/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v8, 0x7f030001

    invoke-static {v3, v8, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    .line 1074
    invoke-virtual {v14, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1076
    iget-object v3, v6, Lcom/poverka/httpFileClient/activity/StateActivity;->mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getTestName()I

    move-result v3

    .line 1077
    .local v3, "testName":I
    if-nez v3, :cond_1

    .line 1078
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 1080
    :cond_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    .line 1081
    .local v4, "QIndex":I
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    .line 1082
    .local v2, "RClassIndex":I
    const/4 v8, 0x5

    if-ge v4, v8, :cond_2

    .line 1083
    invoke-virtual {v11, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1084
    add-int/lit8 v5, v4, -0x1

    iput v5, v6, Lcom/poverka/httpFileClient/activity/StateActivity;->selectedQValueIndex:I

    .line 1085
    add-int/lit8 v5, v2, -0x1

    iput v5, v6, Lcom/poverka/httpFileClient/activity/StateActivity;->selectedRClassValueIndex:I

    goto :goto_0

    .line 1087
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1088
    add-int/lit8 v5, v4, -0x5

    iput v5, v6, Lcom/poverka/httpFileClient/activity/StateActivity;->selectedQValueIndex:I

    .line 1089
    add-int/lit8 v5, v2, -0x7

    iput v5, v6, Lcom/poverka/httpFileClient/activity/StateActivity;->selectedRClassValueIndex:I

    .line 1092
    :goto_0
    iget v5, v6, Lcom/poverka/httpFileClient/activity/StateActivity;->selectedMechanismIndex:I

    invoke-virtual {v14, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1094
    .end local v2    # "RClassIndex":I
    .end local v4    # "QIndex":I
    :goto_1
    return-void

    .line 950
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    .end local v1    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v3    # "testName":I
    .end local v16    # "inflater":Landroid/view/LayoutInflater;
    .restart local v8    # "inflater":Landroid/view/LayoutInflater;
    :cond_3
    move-object/from16 v16, v8

    .line 951
    .end local v8    # "inflater":Landroid/view/LayoutInflater;
    .restart local v16    # "inflater":Landroid/view/LayoutInflater;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f00e1

    invoke-virtual {v6, v1}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 952
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 106
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const v0, 0x7f0c0025

    invoke-virtual {p0, v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->setContentView(I)V

    .line 109
    const-string v0, "*** Created ***"

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->Log(Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->initViews()V

    .line 113
    const/4 v0, 0x0

    sput-object v0, Lcom/poverka/httpFileClient/activity/StateActivity;->restoration:Lcom/poverka/httpFileClient/util/RestorationHelper;

    .line 114
    new-instance v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    invoke-direct {v1, p0, v0}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;-><init>(Lcom/poverka/httpFileClient/activity/StateActivity;Lcom/poverka/httpFileClient/activity/StateActivity$1;)V

    iput-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->mUIhandler:Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    .line 115
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->threadDelay:I

    .line 117
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 118
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "local"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->local:Z

    .line 119
    const-string v1, "selectedId"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->selectedId:I

    .line 120
    const-string v1, "photoType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->photoType:I

    .line 121
    const-string v1, "writeLog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity;->writeLog:I

    .line 123
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->connect()V

    .line 124
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->initRequestObserver()V

    .line 126
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/poverka/httpFileClient/activity/StateActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 127
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 143
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 144
    const-string v0, "*** Destroyed ***"

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->Log(Ljava/lang/String;)V

    .line 146
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/StateActivity;->stopActivity()V

    .line 147
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 131
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 132
    const-string v0, "*** Started ***"

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->Log(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 137
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 138
    const-string v0, "*** Stopped ***"

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->Log(Ljava/lang/String;)V

    .line 139
    return-void
.end method
