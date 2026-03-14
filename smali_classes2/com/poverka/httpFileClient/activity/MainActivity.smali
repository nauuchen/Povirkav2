.class public Lcom/poverka/httpFileClient/activity/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;


# static fields
.field private static final BUTTON_HEIGHT_RATIO:F = 0.17f

.field private static final BUTTON_WIDTH_RATIO:F = 0.4f

.field public static final D:Z = true

.field public static IP:Ljava/lang/String; = null

.field private static final MARGIN_HEIGHT_RATIO:F = 0.03f

.field private static final MARGIN_WIDTH_RATIO:F = 0.03f

.field public static MARKER:I = 0x0

.field public static final MARKER_DISPATCHER:I = 0x0

.field public static final MARKER_LOCAL:I = 0x1

.field private static final PERMISSIONS_STORAGE:[Ljava/lang/String;

.field public static final REQUEST_DELAY:I = 0x1f4

.field private static final REQUEST_EXTERNAL_STORAGE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MainActivity"

.field private static final TEXT_L_HEIGHT_RATIO:F = 0.065f

.field private static final TEXT_S_HEIGHT_RATIO:F = 0.03f


# instance fields
.field private station:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    const-string v0, "192.168.43.140"

    sput-object v0, Lcom/poverka/httpFileClient/activity/MainActivity;->IP:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    sput v0, Lcom/poverka/httpFileClient/activity/MainActivity;->MARKER:I

    .line 66
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/poverka/httpFileClient/activity/MainActivity;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 529
    const-string v0, "MainActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return-void
.end method

.method private checkStationCity()V
    .locals 4

    .line 474
    iget v0, p0, Lcom/poverka/httpFileClient/activity/MainActivity;->station:I

    if-lez v0, :cond_0

    .line 475
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/poverka/httpFileClient/activity/MainActivity;->station:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "stations/city/1/%03d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Lcom/poverka/httpFileClient/util/HttpFileClient;

    invoke-direct {v1, p0}, Lcom/poverka/httpFileClient/util/HttpFileClient;-><init>(Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;)V

    .line 477
    .local v1, "httpFileClient":Lcom/poverka/httpFileClient/util/HttpFileClient;
    invoke-virtual {v1, v0}, Lcom/poverka/httpFileClient/util/HttpFileClient;->headDownloadServer(Ljava/lang/String;)V

    .line 479
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "httpFileClient":Lcom/poverka/httpFileClient/util/HttpFileClient;
    :cond_0
    return-void
.end method

.method private static disableCertificateVerification()V
    .locals 4

    .line 497
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lcom/poverka/httpFileClient/activity/MainActivity$3;

    invoke-direct {v1}, Lcom/poverka/httpFileClient/activity/MainActivity$3;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 510
    .local v0, "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    :try_start_0
    const-string v1, "SSL"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 511
    .local v1, "sc":Ljavax/net/ssl/SSLContext;
    const/4 v2, 0x0

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 512
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-static {v2}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 515
    new-instance v2, Lcom/poverka/httpFileClient/activity/MainActivity$4;

    invoke-direct {v2}, Lcom/poverka/httpFileClient/activity/MainActivity$4;-><init>()V

    .line 522
    .local v2, "allHostsValid":Ljavax/net/ssl/HostnameVerifier;
    invoke-static {v2}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    .end local v1    # "sc":Ljavax/net/ssl/SSLContext;
    .end local v2    # "allHostsValid":Ljavax/net/ssl/HostnameVerifier;
    goto :goto_0

    .line 523
    :catch_0
    move-exception v1

    .line 524
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 526
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private initViews()V
    .locals 21

    .line 327
    move-object/from16 v1, p0

    const v0, 0x7f090059

    invoke-virtual {v1, v0}, Lcom/poverka/httpFileClient/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/ImageButton;

    .line 328
    .local v2, "buttonSettings":Landroid/widget/ImageButton;
    const v0, 0x7f09004d

    invoke-virtual {v1, v0}, Lcom/poverka/httpFileClient/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/Button;

    .line 329
    .local v3, "buttonStart":Landroid/widget/Button;
    const v0, 0x7f09004e

    invoke-virtual {v1, v0}, Lcom/poverka/httpFileClient/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/Button;

    .line 330
    .local v4, "buttonTasks":Landroid/widget/Button;
    const v0, 0x7f090195

    invoke-virtual {v1, v0}, Lcom/poverka/httpFileClient/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    .line 331
    .local v5, "textDispatcher":Landroid/widget/TextView;
    const v0, 0x7f09019e

    invoke-virtual {v1, v0}, Lcom/poverka/httpFileClient/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    .line 332
    .local v6, "textLoadedCity":Landroid/widget/TextView;
    const v0, 0x7f090198

    invoke-virtual {v1, v0}, Lcom/poverka/httpFileClient/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    .line 333
    .local v7, "textEnvironment":Landroid/widget/TextView;
    const v0, 0x7f0901bc

    invoke-virtual {v1, v0}, Lcom/poverka/httpFileClient/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    .line 334
    .local v8, "textVersion":Landroid/widget/TextView;
    const v0, 0x7f0901b4

    invoke-virtual {v1, v0}, Lcom/poverka/httpFileClient/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    .line 336
    .local v9, "textStationCity":Landroid/widget/TextView;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v10, v0

    .line 337
    .local v10, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 339
    iget v11, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 340
    .local v11, "screenHeight":I
    iget v12, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 341
    .local v12, "screenWidth":I
    int-to-float v0, v11

    const v13, 0x3e2e147b    # 0.17f

    mul-float v0, v0, v13

    float-to-int v13, v0

    .line 342
    .local v13, "buttonHeight":I
    int-to-float v0, v12

    const v14, 0x3ecccccd    # 0.4f

    mul-float v0, v0, v14

    float-to-int v14, v0

    .line 343
    .local v14, "buttonWidth":I
    int-to-float v0, v11

    const v15, 0x3d851eb8    # 0.065f

    mul-float v0, v0, v15

    float-to-int v15, v0

    .line 344
    .local v15, "textLHeight":I
    int-to-float v0, v11

    const v16, 0x3cf5c28f    # 0.03f

    mul-float v0, v0, v16

    move-object/from16 v17, v10

    .end local v10    # "metrics":Landroid/util/DisplayMetrics;
    .local v17, "metrics":Landroid/util/DisplayMetrics;
    float-to-int v10, v0

    .line 345
    .local v10, "textSHeight":I
    int-to-float v0, v11

    mul-float v0, v0, v16

    move/from16 v18, v11

    .end local v11    # "screenHeight":I
    .local v18, "screenHeight":I
    float-to-int v11, v0

    .line 346
    .local v11, "marginHeight":I
    int-to-float v0, v12

    mul-float v0, v0, v16

    move/from16 v16, v12

    .end local v12    # "screenWidth":I
    .local v16, "screenWidth":I
    float-to-int v12, v0

    .line 348
    .local v12, "marginWidth":I
    invoke-virtual {v3}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 349
    .local v0, "paramsC":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    iput v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 350
    iput v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    .line 351
    iput v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 352
    iput v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 353
    invoke-virtual {v3}, Landroid/widget/Button;->requestLayout()V

    .line 355
    invoke-virtual {v4}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 356
    iput v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 357
    iput v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 358
    iput v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 359
    iput v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 360
    invoke-virtual {v4}, Landroid/widget/Button;->requestLayout()V

    .line 362
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    move/from16 v20, v11

    .end local v11    # "marginHeight":I
    .local v20, "marginHeight":I
    move-object/from16 v11, v19

    check-cast v11, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 363
    .end local v0    # "paramsC":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .local v11, "paramsC":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    iput v13, v11, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 364
    iput v13, v11, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 365
    invoke-virtual {v2}, Landroid/widget/ImageButton;->requestLayout()V

    .line 367
    int-to-float v0, v10

    move-object/from16 v19, v2

    .end local v2    # "buttonSettings":Landroid/widget/ImageButton;
    .local v19, "buttonSettings":Landroid/widget/ImageButton;
    const/4 v2, 0x0

    invoke-virtual {v5, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 368
    int-to-float v0, v10

    invoke-virtual {v6, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 369
    int-to-float v0, v10

    invoke-virtual {v7, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 370
    int-to-float v0, v10

    invoke-virtual {v8, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 371
    int-to-float v0, v15

    invoke-virtual {v9, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 372
    int-to-float v0, v15

    invoke-virtual {v3, v2, v0}, Landroid/widget/Button;->setTextSize(IF)V

    .line 373
    int-to-float v0, v15

    invoke-virtual {v4, v2, v0}, Landroid/widget/Button;->setTextSize(IF)V

    .line 375
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    .line 376
    const v0, 0x7f06002d

    invoke-virtual {v1, v0}, Lcom/poverka/httpFileClient/activity/MainActivity;->getColor(I)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 380
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 381
    .local v0, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    .end local v0    # "pInfo":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 385
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return-void
.end method

.method private setLanguage()V
    .locals 6

    .line 300
    const-string v0, "language"

    const-string v1, "en"

    .line 301
    .local v1, "language":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "settings.json"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 302
    .local v2, "settingsFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 304
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 305
    .local v3, "settingsJSON":Lorg/json/JSONObject;
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 306
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 310
    .end local v3    # "settingsJSON":Lorg/json/JSONObject;
    :cond_0
    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 313
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 319
    .local v0, "locale":Ljava/util/Locale;
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 320
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 321
    .local v4, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 322
    .local v5, "conf":Landroid/content/res/Configuration;
    iput-object v0, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 323
    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 324
    return-void
.end method

.method private showChanges()V
    .locals 14

    .line 389
    const-string v0, "version"

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "settings.json"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 390
    .local v1, "settings":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 391
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 392
    .local v2, "text":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 395
    .local v3, "jsonSettings":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "station"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/poverka/httpFileClient/activity/MainActivity;->station:I

    .line 397
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 398
    .local v4, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 399
    .local v5, "curVersion":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v3, v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 400
    .local v7, "writtenVersion":Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 401
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 402
    .local v8, "builderSmall":Landroid/app/AlertDialog$Builder;
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f01ad

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    iget-object v12, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v12, v11, v6

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f00a2

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 403
    const v6, 0x7f0f01b2

    invoke-virtual {v8, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 404
    const-string v6, "OK"

    new-instance v9, Lcom/poverka/httpFileClient/activity/MainActivity$2;

    invoke-direct {v9, p0}, Lcom/poverka/httpFileClient/activity/MainActivity$2;-><init>(Lcom/poverka/httpFileClient/activity/MainActivity;)V

    invoke-virtual {v8, v6, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 409
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 410
    .local v6, "dialogSmall":Landroid/app/AlertDialog;
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 412
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 413
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v9, v10}, Lcom/poverka/httpFileClient/util/MyFileReader;->writeInternalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 417
    .end local v4    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "curVersion":Ljava/lang/String;
    .end local v6    # "dialogSmall":Landroid/app/AlertDialog;
    .end local v7    # "writtenVersion":Ljava/lang/String;
    .end local v8    # "builderSmall":Landroid/app/AlertDialog$Builder;
    :cond_0
    goto :goto_0

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 421
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "settings":Ljava/io/File;
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "jsonSettings":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    goto :goto_1

    .line 419
    :catch_1
    move-exception v0

    .line 420
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 422
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method public static verifyStoragePermissions(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 483
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 485
    .local v0, "permission":I
    if-eqz v0, :cond_0

    .line 487
    sget-object v1, Lcom/poverka/httpFileClient/activity/MainActivity;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 493
    :cond_0
    return-void
.end method


# virtual methods
.method public SettingsClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 103
    new-instance v0, Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-direct {v0, p0}, Lcom/poverka/httpFileClient/activity/SettingsActivity;-><init>(Landroid/app/Activity;)V

    .line 104
    return-void
.end method

.method public StartClicked(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .line 107
    const-string v0, "writeLog"

    const-string v1, "photoType"

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "settings.json"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    .local v2, "settings":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "tests.json"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    .local v3, "tests":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "types.json"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    .local v4, "types":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 112
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f019c

    invoke-virtual {p0, v1}, Lcom/poverka/httpFileClient/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 114
    return-void

    .line 116
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f01a3

    invoke-virtual {p0, v1}, Lcom/poverka/httpFileClient/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 118
    return-void

    .line 122
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v7, "Main"

    const-string v8, "Start click"

    invoke-static {v5, v7, v8}, Lcom/poverka/httpFileClient/util/MyFileReader;->appendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, "text":Ljava/lang/String;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 126
    .local v7, "jsonSettings":Lorg/json/JSONObject;
    const-string v8, "ip"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/poverka/httpFileClient/activity/MainActivity;->IP:Ljava/lang/String;

    .line 127
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    .line 128
    .local v8, "photoType":I
    :goto_0
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v9, 0x1

    .line 130
    .local v9, "writeLog":I
    :cond_3
    new-instance v10, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-class v12, Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    .local v10, "myIntent":Landroid/content/Intent;
    const-string v11, "local"

    invoke-virtual {v10, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 132
    const-string v6, "selectedId"

    const/4 v11, -0x1

    invoke-virtual {v10, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    invoke-virtual {v10, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    invoke-virtual {v10, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0, v10}, Lcom/poverka/httpFileClient/activity/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "text":Ljava/lang/String;
    .end local v7    # "jsonSettings":Lorg/json/JSONObject;
    .end local v8    # "photoType":I
    .end local v9    # "writeLog":I
    .end local v10    # "myIntent":Landroid/content/Intent;
    goto :goto_1

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 138
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    goto :goto_2

    .line 140
    :cond_4
    new-instance v0, Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-direct {v0, p0}, Lcom/poverka/httpFileClient/activity/SettingsActivity;-><init>(Landroid/app/Activity;)V

    .line 142
    :goto_2
    return-void
.end method

.method public TasksClicked(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .line 146
    const-string v0, "writeLog"

    const-string v1, "photoType"

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "settings.json"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 147
    .local v2, "settings":Ljava/io/File;
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "text":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 149
    .local v4, "jsonSettings":Lorg/json/JSONObject;
    const-string v5, "ip"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/poverka/httpFileClient/activity/MainActivity;->IP:Ljava/lang/String;

    .line 150
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 151
    .local v5, "photoType":I
    :goto_0
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 153
    .local v6, "writeLog":I
    :goto_1
    const-string v7, "station"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 154
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 155
    .local v0, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0f001e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 156
    const v1, 0x7f0f00e4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 157
    const-string v1, "OK"

    new-instance v7, Lcom/poverka/httpFileClient/activity/MainActivity$1;

    invoke-direct {v7, p0}, Lcom/poverka/httpFileClient/activity/MainActivity$1;-><init>(Lcom/poverka/httpFileClient/activity/MainActivity;)V

    invoke-virtual {v0, v1, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 163
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 164
    .end local v0    # "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    goto :goto_2

    .line 165
    :cond_2
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    .local v7, "taskViewerActivity":Landroid/content/Intent;
    invoke-virtual {v7, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0, v7}, Lcom/poverka/httpFileClient/activity/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v2    # "settings":Ljava/io/File;
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "jsonSettings":Lorg/json/JSONObject;
    .end local v5    # "photoType":I
    .end local v6    # "writeLog":I
    .end local v7    # "taskViewerActivity":Landroid/content/Intent;
    :goto_2
    goto :goto_3

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 173
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_3
    return-void
.end method

.method public TempButtonClicked(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 273
    return-void
.end method

.method public messageReceived(Lcom/poverka/httpFileClient/util/HttpFileClient$Type;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 8
    .param p1, "type"    # Lcom/poverka/httpFileClient/util/HttpFileClient$Type;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "stream"    # Ljava/io/InputStream;

    .line 278
    :try_start_0
    const-string v0, "stations/city"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/poverka/httpFileClient/util/HttpFileClient$Type;->SERVER:Lcom/poverka/httpFileClient/util/HttpFileClient$Type;

    if-ne p1, v0, :cond_1

    if-eqz p3, :cond_1

    .line 279
    invoke-static {p3}, Lcom/poverka/httpFileClient/util/HttpFileClient;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "serverString":Ljava/lang/String;
    const-string v1, ""

    .line 282
    .local v1, "stationCity":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 283
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 284
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 286
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/MainActivity;->Log(Ljava/lang/String;)V

    .line 288
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "settings.json"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 289
    .local v2, "settingsFile":Ljava/io/File;
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, "text":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 291
    .local v4, "jsonSettings":Lorg/json/JSONObject;
    const-string v5, "stationCity"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 292
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/poverka/httpFileClient/util/MyFileReader;->writeInternalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .end local v0    # "serverString":Ljava/lang/String;
    .end local v1    # "stationCity":Ljava/lang/String;
    .end local v2    # "settingsFile":Ljava/io/File;
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "jsonSettings":Lorg/json/JSONObject;
    :cond_1
    goto :goto_1

    .line 294
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 297
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 75
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->setLanguage()V

    .line 77
    const v0, 0x7f0c001f

    invoke-virtual {p0, v0}, Lcom/poverka/httpFileClient/activity/MainActivity;->setContentView(I)V

    .line 80
    invoke-static {p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->verifyStoragePermissions(Landroid/app/Activity;)V

    .line 82
    const v0, 0x7f0900f7

    invoke-virtual {p0, v0}, Lcom/poverka/httpFileClient/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, "backgroundImage":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 85
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->initViews()V

    .line 86
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->showChanges()V

    .line 87
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->checkStationCity()V

    .line 89
    const v1, 0x7f090049

    invoke-virtual {p0, v1}, Lcom/poverka/httpFileClient/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 90
    .local v1, "b":Landroid/widget/Button;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 91
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .line 95
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onWindowFocusChanged(Z)V

    .line 97
    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->updateTextViews()V

    .line 100
    :cond_0
    return-void
.end method

.method public updateTextViews()V
    .locals 16

    move-object/from16 v1, p0

    .line 426
    const v0, 0x7f09004d

    :try_start_0
    invoke-virtual {v1, v0}, Lcom/poverka/httpFileClient/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 427
    .local v0, "buttonStart":Landroid/widget/Button;
    const v2, 0x7f09004e

    invoke-virtual {v1, v2}, Lcom/poverka/httpFileClient/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 428
    .local v2, "buttonTasks":Landroid/widget/Button;
    const v3, 0x7f090195

    invoke-virtual {v1, v3}, Lcom/poverka/httpFileClient/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 429
    .local v3, "textDispatcher":Landroid/widget/TextView;
    const v4, 0x7f09019e

    invoke-virtual {v1, v4}, Lcom/poverka/httpFileClient/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 430
    .local v4, "textLoadedCity":Landroid/widget/TextView;
    const v5, 0x7f090198

    invoke-virtual {v1, v5}, Lcom/poverka/httpFileClient/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 431
    .local v5, "textEnvironment":Landroid/widget/TextView;
    const v6, 0x7f0901b4

    invoke-virtual {v1, v6}, Lcom/poverka/httpFileClient/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 432
    .local v6, "textStationCity":Landroid/widget/TextView;
    new-instance v7, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v8

    const-string v9, "settings.json"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 433
    .local v7, "settingsFile":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v9

    const-string v10, "address.json"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 434
    .local v8, "addressFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v14, "%s %d\u00b0C, %d%%"

    const v15, 0x7f0f00a6

    const-string v12, ""

    const/4 v10, 0x1

    if-eqz v9, :cond_1

    .line 435
    :try_start_1
    new-instance v9, Lorg/json/JSONObject;

    invoke-virtual/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 437
    .local v9, "settingsJSON":Lorg/json/JSONObject;
    const-string v11, "local"

    invoke-virtual {v9, v11, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v10, :cond_0

    .line 438
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    sput v10, Lcom/poverka/httpFileClient/activity/MainActivity;->MARKER:I

    .line 440
    invoke-virtual/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 441
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 443
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0f00ac

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    const/4 v11, 0x0

    sput v11, Lcom/poverka/httpFileClient/activity/MainActivity;->MARKER:I

    .line 445
    invoke-virtual/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0f00a5

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 446
    invoke-virtual {v2, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 449
    :goto_0
    const-string v11, "environmentT"

    const/16 v12, 0x16

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 450
    .local v11, "temperature":I
    const-string v12, "environmentH"

    const/16 v13, 0x3c

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    .line 451
    .local v12, "humidity":I
    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v1, 0x7f0f00ad

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x0

    aput-object v1, v15, v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v10, 0x1

    aput-object v1, v15, v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v10, 0x2

    aput-object v1, v15, v10

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    const-string v1, "stationCity"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    .end local v9    # "settingsJSON":Lorg/json/JSONObject;
    .end local v11    # "temperature":I
    .end local v12    # "humidity":I
    goto :goto_1

    .line 454
    :cond_1
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    const/4 v1, 0x1

    sput v1, Lcom/poverka/httpFileClient/activity/MainActivity;->MARKER:I

    .line 456
    invoke-virtual/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 457
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 459
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f00ad

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/16 v10, 0x16

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const/16 v10, 0x3c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    invoke-static {v1, v14, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    :goto_1
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const v9, 0x7f0f00ae

    const-string v10, "%s %s"

    if-eqz v1, :cond_2

    .line 462
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 464
    .local v1, "addressJSON":Lorg/json/JSONObject;
    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x0

    aput-object v9, v12, v13

    const-string v9, "city_name"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x1

    aput-object v9, v12, v13

    invoke-static {v11, v10, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    .end local v1    # "addressJSON":Lorg/json/JSONObject;
    goto :goto_2

    .line 466
    :cond_2
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    aput-object v9, v11, v12

    invoke-virtual/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f0f019d

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x1

    aput-object v9, v11, v12

    invoke-static {v1, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 470
    .end local v0    # "buttonStart":Landroid/widget/Button;
    .end local v2    # "buttonTasks":Landroid/widget/Button;
    .end local v3    # "textDispatcher":Landroid/widget/TextView;
    .end local v4    # "textLoadedCity":Landroid/widget/TextView;
    .end local v5    # "textEnvironment":Landroid/widget/TextView;
    .end local v6    # "textStationCity":Landroid/widget/TextView;
    .end local v7    # "settingsFile":Ljava/io/File;
    .end local v8    # "addressFile":Ljava/io/File;
    :goto_2
    goto :goto_3

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 471
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_3
    return-void
.end method
