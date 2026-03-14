.class public Lcom/poverka/httpFileClient/activity/ClientActivity;
.super Ljava/lang/Object;
.source "ClientActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/poverka/httpFileClient/activity/ClientActivity$OnClientResult;,
        Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClientActivity"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final dialog:Landroid/app/Dialog;

.field private final resultListener:Lcom/poverka/httpFileClient/activity/ClientActivity$OnClientResult;

.field private showSpinnerAddress:Z

.field private sleepSeconds:I

.field private final sleepTimer:Ljava/util/Timer;

.field private final todayVerificationNumber:I

.field private final view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/poverka/httpFileClient/activity/ClientActivity$OnClientResult;Landroid/os/Bundle;)V
    .locals 18
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "resultListener"    # Lcom/poverka/httpFileClient/activity/ClientActivity$OnClientResult;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 62
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v7, v6, Lcom/poverka/httpFileClient/activity/ClientActivity;->activity:Landroid/app/Activity;

    .line 66
    move-object/from16 v9, p2

    iput-object v9, v6, Lcom/poverka/httpFileClient/activity/ClientActivity;->resultListener:Lcom/poverka/httpFileClient/activity/ClientActivity$OnClientResult;

    .line 67
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c001c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    iput-object v10, v6, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    .line 68
    new-instance v11, Landroid/app/Dialog;

    const v0, 0x103012c

    invoke-direct {v11, v7, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v11, v6, Lcom/poverka/httpFileClient/activity/ClientActivity;->dialog:Landroid/app/Dialog;

    .line 70
    const/4 v0, 0x0

    iput v0, v6, Lcom/poverka/httpFileClient/activity/ClientActivity;->sleepSeconds:I

    .line 71
    new-instance v12, Ljava/util/Timer;

    invoke-direct {v12}, Ljava/util/Timer;-><init>()V

    iput-object v12, v6, Lcom/poverka/httpFileClient/activity/ClientActivity;->sleepTimer:Ljava/util/Timer;

    .line 72
    new-instance v13, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask;

    invoke-direct {v13, v6}, Lcom/poverka/httpFileClient/activity/ClientActivity$SleepTimerTask;-><init>(Lcom/poverka/httpFileClient/activity/ClientActivity;)V

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x3e8

    invoke-virtual/range {v12 .. v17}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 74
    const-string v0, "id"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 75
    .local v12, "id":Ljava/lang/String;
    const-string v0, "protocolNumber"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 76
    .local v13, "protocolNumber":Ljava/lang/String;
    const-string v0, "todayVerificationNumber"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/poverka/httpFileClient/activity/ClientActivity;->todayVerificationNumber:I

    .line 77
    const-string v0, "counterNumber"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 78
    .local v14, "counterNumber":Ljava/lang/String;
    const-string v0, "dateTime"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 79
    .local v15, "dateTime":Ljava/lang/String;
    const-string v0, "waterTemperature"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v16

    .line 81
    .local v16, "waterTemperature":F
    invoke-direct {v6, v12}, Lcom/poverka/httpFileClient/activity/ClientActivity;->uiStuff(Ljava/lang/String;)V

    .line 82
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/poverka/httpFileClient/activity/ClientActivity;->initViews(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V

    .line 84
    invoke-virtual {v11, v10}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 85
    invoke-virtual {v11}, Landroid/app/Dialog;->show()V

    .line 86
    return-void
.end method

.method private ImageQrClicked()V
    .locals 8

    .line 482
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v1, 0x7f0900ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 483
    .local v0, "editProtocolNumber":Landroid/widget/EditText;
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "https://serrp.info/search?id=101%s"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 485
    .local v1, "inputValue":Ljava/lang/String;
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/ClientActivity;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 486
    .local v2, "image":Landroid/widget/ImageView;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 487
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/ClientActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 489
    new-instance v4, Landroidmads/library/qrgenearator/QRGEncoder;

    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    const v6, 0x3ee66666    # 0.45f

    mul-float v5, v5, v6

    float-to-int v5, v5

    const/4 v6, 0x0

    const-string v7, "TEXT_TYPE"

    invoke-direct {v4, v1, v6, v7, v5}, Landroidmads/library/qrgenearator/QRGEncoder;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 490
    .local v4, "qrgEncoder":Landroidmads/library/qrgenearator/QRGEncoder;
    invoke-virtual {v4}, Landroidmads/library/qrgenearator/QRGEncoder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 492
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/ClientActivity;->activity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 493
    .local v5, "builder":Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0f01ab

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 494
    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 495
    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 496
    new-instance v6, Lcom/poverka/httpFileClient/activity/ClientActivity$9;

    invoke-direct {v6, p0}, Lcom/poverka/httpFileClient/activity/ClientActivity$9;-><init>(Lcom/poverka/httpFileClient/activity/ClientActivity;)V

    const-string v7, "OK"

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 502
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 503
    return-void
.end method

.method private RepeatClicked()V
    .locals 33

    .line 598
    move-object/from16 v1, p0

    const-string v0, "E_MAIL"

    const-string v2, "PHONE_NUMBER_DOP2"

    const-string v3, "PHONE_NUMBER_DOP"

    const-string v4, "PHONE_NUMBER"

    const-string v5, "APARTMENT_BUKVA"

    const-string v6, "APARTMENT"

    const-string v7, "BUILDING_KORPUS"

    const-string v8, "BUILDING_BUKVA"

    const-string v9, "0"

    const-string v10, "BUILDING"

    const-string v11, "null"

    iget-object v12, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v13, 0x7f0900b3

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    .line 599
    .local v12, "editSurname":Landroid/widget/EditText;
    iget-object v13, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v14, 0x7f09015e

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Spinner;

    .line 600
    .local v13, "spinnerCity":Landroid/widget/Spinner;
    iget-object v14, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v15, 0x7f090165

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;

    .line 601
    .local v14, "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    iget-object v15, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v16, v13

    .end local v13    # "spinnerCity":Landroid/widget/Spinner;
    .local v16, "spinnerCity":Landroid/widget/Spinner;
    const v13, 0x7f09009c

    invoke-virtual {v15, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    .line 602
    .local v13, "editCity":Landroid/widget/EditText;
    iget-object v15, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v17, v14

    .end local v14    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .local v17, "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    const v14, 0x7f0900b2

    invoke-virtual {v15, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    .line 603
    .local v14, "editStreet":Landroid/widget/EditText;
    iget-object v15, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v18, v14

    .end local v14    # "editStreet":Landroid/widget/EditText;
    .local v18, "editStreet":Landroid/widget/EditText;
    const v14, 0x7f090099

    invoke-virtual {v15, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    .line 604
    .local v14, "editBuilding":Landroid/widget/EditText;
    iget-object v15, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v19, v13

    .end local v13    # "editCity":Landroid/widget/EditText;
    .local v19, "editCity":Landroid/widget/EditText;
    const v13, 0x7f09009a

    invoke-virtual {v15, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    .line 605
    .local v13, "editBuildingBukva":Landroid/widget/EditText;
    iget-object v15, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v20, v0

    const v0, 0x7f09009b

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/EditText;

    .line 606
    .local v15, "editBuildingKorpus":Landroid/widget/EditText;
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v21, v2

    const v2, 0x7f090097

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/EditText;

    .line 607
    .local v2, "editApartment":Landroid/widget/EditText;
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v22, v3

    const v3, 0x7f090098

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/EditText;

    .line 608
    .local v3, "editApartmentBukva":Landroid/widget/EditText;
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v23, v4

    const v4, 0x7f0900b0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/EditText;

    .line 609
    .local v4, "editSeal":Landroid/widget/EditText;
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v24, v4

    .end local v4    # "editSeal":Landroid/widget/EditText;
    .local v24, "editSeal":Landroid/widget/EditText;
    const v4, 0x7f0900a8

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/EditText;

    .line 610
    .local v4, "editPhoneNumber":Landroid/widget/EditText;
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v25, v4

    .end local v4    # "editPhoneNumber":Landroid/widget/EditText;
    .local v25, "editPhoneNumber":Landroid/widget/EditText;
    const v4, 0x7f0900a9

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/EditText;

    .line 611
    .local v4, "editPhoneNumberDop":Landroid/widget/EditText;
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v26, v4

    .end local v4    # "editPhoneNumberDop":Landroid/widget/EditText;
    .local v26, "editPhoneNumberDop":Landroid/widget/EditText;
    const v4, 0x7f0900aa

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/EditText;

    .line 612
    .local v4, "editPhoneNumberDop2":Landroid/widget/EditText;
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v27, v4

    .end local v4    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .local v27, "editPhoneNumberDop2":Landroid/widget/EditText;
    const v4, 0x7f0900a0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/EditText;

    .line 613
    .local v4, "editEmail":Landroid/widget/EditText;
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v28, v4

    .end local v4    # "editEmail":Landroid/widget/EditText;
    .local v28, "editEmail":Landroid/widget/EditText;
    const v4, 0x7f090052

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/Button;

    .line 615
    .local v4, "buttonRepeat":Landroid/widget/Button;
    invoke-virtual {v4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v29, v4

    .end local v4    # "buttonRepeat":Landroid/widget/Button;
    .local v29, "buttonRepeat":Landroid/widget/Button;
    iget-object v4, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->activity:Landroid/app/Activity;

    move-object/from16 v30, v3

    .end local v3    # "editApartmentBukva":Landroid/widget/EditText;
    .local v30, "editApartmentBukva":Landroid/widget/EditText;
    const v3, 0x7f0f007e

    invoke-virtual {v4, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, ""

    if-eqz v0, :cond_b

    .line 616
    new-instance v0, Ljava/io/File;

    iget-object v4, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    move-object/from16 v32, v3

    const-string v3, "client.json"

    invoke-direct {v0, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v0

    .line 618
    .local v3, "client":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 620
    :try_start_0
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 621
    .local v0, "text":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 622
    .local v4, "clientInfo":Lorg/json/JSONObject;
    move-object/from16 v31, v0

    .end local v0    # "text":Ljava/lang/String;
    .local v31, "text":Ljava/lang/String;
    const-string v0, "SURNAME"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 623
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v0, v32

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v14, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 624
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object/from16 v0, v32

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v13, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 625
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v0, v32

    goto :goto_2

    :cond_2
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v15, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 626
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v0, v32

    goto :goto_3

    :cond_3
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 627
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v0, v32

    goto :goto_4

    :cond_4
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_5

    :goto_4
    move-object/from16 v5, v30

    .end local v30    # "editApartmentBukva":Landroid/widget/EditText;
    .local v5, "editApartmentBukva":Landroid/widget/EditText;
    :try_start_1
    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 628
    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object/from16 v0, v32

    goto :goto_5

    :cond_5
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4

    :goto_5
    move-object/from16 v6, v25

    .end local v25    # "editPhoneNumber":Landroid/widget/EditText;
    .local v6, "editPhoneNumber":Landroid/widget/EditText;
    :try_start_2
    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 629
    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move-object/from16 v0, v32

    goto :goto_6

    :cond_6
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_6
    move-object/from16 v7, v26

    .end local v26    # "editPhoneNumberDop":Landroid/widget/EditText;
    .local v7, "editPhoneNumberDop":Landroid/widget/EditText;
    :try_start_3
    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 630
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    move-object/from16 v0, v32

    goto :goto_7

    :cond_7
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_7
    move-object/from16 v8, v27

    .end local v27    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .local v8, "editPhoneNumberDop2":Landroid/widget/EditText;
    :try_start_4
    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 631
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    move-object/from16 v0, v32

    goto :goto_8

    :cond_8
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_8
    move-object/from16 v9, v28

    .end local v28    # "editEmail":Landroid/widget/EditText;
    .local v9, "editEmail":Landroid/widget/EditText;
    :try_start_5
    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    .line 652
    .end local v31    # "text":Ljava/lang/String;
    goto :goto_a

    .line 650
    .end local v4    # "clientInfo":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    goto :goto_9

    .end local v9    # "editEmail":Landroid/widget/EditText;
    .restart local v28    # "editEmail":Landroid/widget/EditText;
    :catch_1
    move-exception v0

    move-object/from16 v9, v28

    .end local v28    # "editEmail":Landroid/widget/EditText;
    .restart local v9    # "editEmail":Landroid/widget/EditText;
    goto :goto_9

    .end local v8    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .end local v9    # "editEmail":Landroid/widget/EditText;
    .restart local v27    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .restart local v28    # "editEmail":Landroid/widget/EditText;
    :catch_2
    move-exception v0

    move-object/from16 v8, v27

    move-object/from16 v9, v28

    .end local v27    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .end local v28    # "editEmail":Landroid/widget/EditText;
    .restart local v8    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .restart local v9    # "editEmail":Landroid/widget/EditText;
    goto :goto_9

    .end local v7    # "editPhoneNumberDop":Landroid/widget/EditText;
    .end local v8    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .end local v9    # "editEmail":Landroid/widget/EditText;
    .restart local v26    # "editPhoneNumberDop":Landroid/widget/EditText;
    .restart local v27    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .restart local v28    # "editEmail":Landroid/widget/EditText;
    :catch_3
    move-exception v0

    move-object/from16 v7, v26

    move-object/from16 v8, v27

    move-object/from16 v9, v28

    .end local v26    # "editPhoneNumberDop":Landroid/widget/EditText;
    .end local v27    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .end local v28    # "editEmail":Landroid/widget/EditText;
    .restart local v7    # "editPhoneNumberDop":Landroid/widget/EditText;
    .restart local v8    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .restart local v9    # "editEmail":Landroid/widget/EditText;
    goto :goto_9

    .end local v6    # "editPhoneNumber":Landroid/widget/EditText;
    .end local v7    # "editPhoneNumberDop":Landroid/widget/EditText;
    .end local v8    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .end local v9    # "editEmail":Landroid/widget/EditText;
    .restart local v25    # "editPhoneNumber":Landroid/widget/EditText;
    .restart local v26    # "editPhoneNumberDop":Landroid/widget/EditText;
    .restart local v27    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .restart local v28    # "editEmail":Landroid/widget/EditText;
    :catch_4
    move-exception v0

    move-object/from16 v6, v25

    move-object/from16 v7, v26

    move-object/from16 v8, v27

    move-object/from16 v9, v28

    .end local v25    # "editPhoneNumber":Landroid/widget/EditText;
    .end local v26    # "editPhoneNumberDop":Landroid/widget/EditText;
    .end local v27    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .end local v28    # "editEmail":Landroid/widget/EditText;
    .restart local v6    # "editPhoneNumber":Landroid/widget/EditText;
    .restart local v7    # "editPhoneNumberDop":Landroid/widget/EditText;
    .restart local v8    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .restart local v9    # "editEmail":Landroid/widget/EditText;
    goto :goto_9

    .end local v5    # "editApartmentBukva":Landroid/widget/EditText;
    .end local v6    # "editPhoneNumber":Landroid/widget/EditText;
    .end local v7    # "editPhoneNumberDop":Landroid/widget/EditText;
    .end local v8    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .end local v9    # "editEmail":Landroid/widget/EditText;
    .restart local v25    # "editPhoneNumber":Landroid/widget/EditText;
    .restart local v26    # "editPhoneNumberDop":Landroid/widget/EditText;
    .restart local v27    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .restart local v28    # "editEmail":Landroid/widget/EditText;
    .restart local v30    # "editApartmentBukva":Landroid/widget/EditText;
    :catch_5
    move-exception v0

    move-object/from16 v6, v25

    move-object/from16 v7, v26

    move-object/from16 v8, v27

    move-object/from16 v9, v28

    move-object/from16 v5, v30

    .line 651
    .end local v25    # "editPhoneNumber":Landroid/widget/EditText;
    .end local v26    # "editPhoneNumberDop":Landroid/widget/EditText;
    .end local v27    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .end local v28    # "editEmail":Landroid/widget/EditText;
    .end local v30    # "editApartmentBukva":Landroid/widget/EditText;
    .local v0, "e":Lorg/json/JSONException;
    .restart local v5    # "editApartmentBukva":Landroid/widget/EditText;
    .restart local v6    # "editPhoneNumber":Landroid/widget/EditText;
    .restart local v7    # "editPhoneNumberDop":Landroid/widget/EditText;
    .restart local v8    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .restart local v9    # "editEmail":Landroid/widget/EditText;
    :goto_9
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_a

    .line 618
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v5    # "editApartmentBukva":Landroid/widget/EditText;
    .end local v6    # "editPhoneNumber":Landroid/widget/EditText;
    .end local v7    # "editPhoneNumberDop":Landroid/widget/EditText;
    .end local v8    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .end local v9    # "editEmail":Landroid/widget/EditText;
    .restart local v25    # "editPhoneNumber":Landroid/widget/EditText;
    .restart local v26    # "editPhoneNumberDop":Landroid/widget/EditText;
    .restart local v27    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .restart local v28    # "editEmail":Landroid/widget/EditText;
    .restart local v30    # "editApartmentBukva":Landroid/widget/EditText;
    :cond_9
    move-object/from16 v6, v25

    move-object/from16 v7, v26

    move-object/from16 v8, v27

    move-object/from16 v9, v28

    move-object/from16 v5, v30

    .line 655
    .end local v25    # "editPhoneNumber":Landroid/widget/EditText;
    .end local v26    # "editPhoneNumberDop":Landroid/widget/EditText;
    .end local v27    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .end local v28    # "editEmail":Landroid/widget/EditText;
    .end local v30    # "editApartmentBukva":Landroid/widget/EditText;
    .restart local v5    # "editApartmentBukva":Landroid/widget/EditText;
    .restart local v6    # "editPhoneNumber":Landroid/widget/EditText;
    .restart local v7    # "editPhoneNumberDop":Landroid/widget/EditText;
    .restart local v8    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .restart local v9    # "editEmail":Landroid/widget/EditText;
    :goto_a
    invoke-virtual {v12}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_a

    .line 656
    invoke-direct/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/ClientActivity;->ShowMoreClicked()V

    .line 658
    :cond_a
    move-object/from16 v4, v29

    const v10, 0x7f0f0031

    .end local v29    # "buttonRepeat":Landroid/widget/Button;
    .local v4, "buttonRepeat":Landroid/widget/Button;
    invoke-virtual {v4, v10}, Landroid/widget/Button;->setText(I)V

    .line 659
    .end local v3    # "client":Ljava/io/File;
    move-object/from16 v10, v18

    move-object/from16 v3, v19

    move-object/from16 v11, v24

    goto :goto_b

    .end local v4    # "buttonRepeat":Landroid/widget/Button;
    .end local v5    # "editApartmentBukva":Landroid/widget/EditText;
    .end local v6    # "editPhoneNumber":Landroid/widget/EditText;
    .end local v7    # "editPhoneNumberDop":Landroid/widget/EditText;
    .end local v8    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .end local v9    # "editEmail":Landroid/widget/EditText;
    .restart local v25    # "editPhoneNumber":Landroid/widget/EditText;
    .restart local v26    # "editPhoneNumberDop":Landroid/widget/EditText;
    .restart local v27    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .restart local v28    # "editEmail":Landroid/widget/EditText;
    .restart local v29    # "buttonRepeat":Landroid/widget/Button;
    .restart local v30    # "editApartmentBukva":Landroid/widget/EditText;
    :cond_b
    move-object/from16 v32, v3

    move-object/from16 v6, v25

    move-object/from16 v7, v26

    move-object/from16 v8, v27

    move-object/from16 v9, v28

    move-object/from16 v4, v29

    move-object/from16 v5, v30

    const v10, 0x7f0f0031

    .end local v25    # "editPhoneNumber":Landroid/widget/EditText;
    .end local v26    # "editPhoneNumberDop":Landroid/widget/EditText;
    .end local v27    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .end local v28    # "editEmail":Landroid/widget/EditText;
    .end local v29    # "buttonRepeat":Landroid/widget/Button;
    .end local v30    # "editApartmentBukva":Landroid/widget/EditText;
    .restart local v4    # "buttonRepeat":Landroid/widget/Button;
    .restart local v5    # "editApartmentBukva":Landroid/widget/EditText;
    .restart local v6    # "editPhoneNumber":Landroid/widget/EditText;
    .restart local v7    # "editPhoneNumberDop":Landroid/widget/EditText;
    .restart local v8    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .restart local v9    # "editEmail":Landroid/widget/EditText;
    invoke-virtual {v4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 660
    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 661
    move-object/from16 v3, v19

    .end local v19    # "editCity":Landroid/widget/EditText;
    .local v3, "editCity":Landroid/widget/EditText;
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 662
    move-object/from16 v10, v18

    .end local v18    # "editStreet":Landroid/widget/EditText;
    .local v10, "editStreet":Landroid/widget/EditText;
    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 663
    invoke-virtual {v14, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 664
    invoke-virtual {v13, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 665
    invoke-virtual {v15, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 666
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 667
    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 668
    move-object/from16 v11, v24

    .end local v24    # "editSeal":Landroid/widget/EditText;
    .local v11, "editSeal":Landroid/widget/EditText;
    invoke-virtual {v11, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 669
    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 670
    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 671
    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 672
    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 674
    const v0, 0x7f0f007e

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_b

    .line 659
    .end local v3    # "editCity":Landroid/widget/EditText;
    .end local v10    # "editStreet":Landroid/widget/EditText;
    .end local v11    # "editSeal":Landroid/widget/EditText;
    .restart local v18    # "editStreet":Landroid/widget/EditText;
    .restart local v19    # "editCity":Landroid/widget/EditText;
    .restart local v24    # "editSeal":Landroid/widget/EditText;
    :cond_c
    move-object/from16 v10, v18

    move-object/from16 v3, v19

    move-object/from16 v11, v24

    .line 676
    .end local v18    # "editStreet":Landroid/widget/EditText;
    .end local v19    # "editCity":Landroid/widget/EditText;
    .end local v24    # "editSeal":Landroid/widget/EditText;
    .restart local v3    # "editCity":Landroid/widget/EditText;
    .restart local v10    # "editStreet":Landroid/widget/EditText;
    .restart local v11    # "editSeal":Landroid/widget/EditText;
    :goto_b
    return-void
.end method

.method private SaveClicked()V
    .locals 13

    .line 679
    const-string v0, "\u041e\u041a"

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v2, 0x7f0900a5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 680
    .local v1, "editPaymentAccount":Landroid/widget/EditText;
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v3, 0x7f0900a1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 681
    .local v2, "editIdNumber":Landroid/widget/EditText;
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v4, 0x7f090099

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 682
    .local v3, "editBuilding":Landroid/widget/EditText;
    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v5, 0x7f090097

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 683
    .local v4, "editApartment":Landroid/widget/EditText;
    const-string v5, ""

    .line 684
    .local v5, "message":Ljava/lang/String;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/poverka/httpFileClient/activity/ClientActivity;->activity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 685
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0f001e

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 687
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 688
    .local v7, "paymentAccountCurrent":Ljava/lang/String;
    const/4 v8, 0x0

    .line 690
    .local v8, "paymentAccountNumber":I
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move v8, v9

    .line 691
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x5

    if-eq v9, v10, :cond_0

    .line 692
    const v9, 0x7f0f0087

    invoke-virtual {v6, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 693
    new-instance v9, Lcom/poverka/httpFileClient/activity/ClientActivity$10;

    invoke-direct {v9, p0}, Lcom/poverka/httpFileClient/activity/ClientActivity$10;-><init>(Lcom/poverka/httpFileClient/activity/ClientActivity;)V

    invoke-virtual {v6, v0, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 699
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 700
    .local v9, "stateDialog":Landroid/app/AlertDialog;
    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 701
    return-void

    .line 702
    .end local v9    # "stateDialog":Landroid/app/AlertDialog;
    :cond_0
    const/4 v9, 0x1

    if-lt v8, v9, :cond_2

    const v9, 0x1869f

    if-le v8, v9, :cond_1

    goto :goto_0

    .line 727
    :cond_1
    goto :goto_1

    .line 703
    :cond_2
    :goto_0
    const v9, 0x7f0f0086

    invoke-virtual {v6, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 704
    new-instance v9, Lcom/poverka/httpFileClient/activity/ClientActivity$11;

    invoke-direct {v9, p0}, Lcom/poverka/httpFileClient/activity/ClientActivity$11;-><init>(Lcom/poverka/httpFileClient/activity/ClientActivity;)V

    invoke-virtual {v6, v0, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 710
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 711
    .restart local v9    # "stateDialog":Landroid/app/AlertDialog;
    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    return-void

    .line 714
    .end local v9    # "stateDialog":Landroid/app/AlertDialog;
    :catch_0
    move-exception v9

    .line 715
    .local v9, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_3

    .line 716
    const v10, 0x7f0f0088

    invoke-virtual {v6, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 717
    new-instance v10, Lcom/poverka/httpFileClient/activity/ClientActivity$12;

    invoke-direct {v10, p0}, Lcom/poverka/httpFileClient/activity/ClientActivity$12;-><init>(Lcom/poverka/httpFileClient/activity/ClientActivity;)V

    invoke-virtual {v6, v0, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 723
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 724
    .local v0, "stateDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 725
    return-void

    .line 729
    .end local v0    # "stateDialog":Landroid/app/AlertDialog;
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    :goto_1
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 731
    :try_start_1
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 743
    goto :goto_2

    .line 732
    :catch_1
    move-exception v9

    .line 733
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    const v10, 0x7f0f0061

    invoke-virtual {v6, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 734
    new-instance v10, Lcom/poverka/httpFileClient/activity/ClientActivity$13;

    invoke-direct {v10, p0}, Lcom/poverka/httpFileClient/activity/ClientActivity$13;-><init>(Lcom/poverka/httpFileClient/activity/ClientActivity;)V

    invoke-virtual {v6, v0, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 740
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 741
    .restart local v0    # "stateDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 742
    return-void

    .line 745
    .end local v0    # "stateDialog":Landroid/app/AlertDialog;
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    :goto_2
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 747
    :try_start_2
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 759
    goto :goto_3

    .line 748
    :catch_2
    move-exception v9

    .line 749
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    const v10, 0x7f0f0060

    invoke-virtual {v6, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 750
    new-instance v10, Lcom/poverka/httpFileClient/activity/ClientActivity$14;

    invoke-direct {v10, p0}, Lcom/poverka/httpFileClient/activity/ClientActivity$14;-><init>(Lcom/poverka/httpFileClient/activity/ClientActivity;)V

    invoke-virtual {v6, v0, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 756
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 757
    .restart local v0    # "stateDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 758
    return-void

    .line 762
    .end local v0    # "stateDialog":Landroid/app/AlertDialog;
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    :goto_3
    move v9, v8

    .line 763
    .local v9, "paymentAccountNumberFinal":I
    sget v10, Lcom/poverka/httpFileClient/activity/MainActivity;->MARKER:I

    const v11, 0x7f0f0059

    if-nez v10, :cond_6

    invoke-virtual {v2}, Landroid/widget/EditText;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 764
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ClientActivity;->activity:Landroid/app/Activity;

    const v10, 0x7f0f01af

    invoke-virtual {v0, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 766
    const v0, 0x7f0f01b9

    new-instance v10, Lcom/poverka/httpFileClient/activity/ClientActivity$15;

    invoke-direct {v10, p0, v9}, Lcom/poverka/httpFileClient/activity/ClientActivity$15;-><init>(Lcom/poverka/httpFileClient/activity/ClientActivity;I)V

    invoke-virtual {v6, v0, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 773
    const v0, 0x7f0f00e8

    new-instance v10, Lcom/poverka/httpFileClient/activity/ClientActivity$16;

    invoke-direct {v10, p0, v9}, Lcom/poverka/httpFileClient/activity/ClientActivity$16;-><init>(Lcom/poverka/httpFileClient/activity/ClientActivity;I)V

    invoke-virtual {v6, v0, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 780
    new-instance v0, Lcom/poverka/httpFileClient/activity/ClientActivity$17;

    invoke-direct {v0, p0}, Lcom/poverka/httpFileClient/activity/ClientActivity$17;-><init>(Lcom/poverka/httpFileClient/activity/ClientActivity;)V

    invoke-virtual {v6, v11, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 786
    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 787
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 788
    .restart local v0    # "stateDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 789
    .end local v0    # "stateDialog":Landroid/app/AlertDialog;
    goto :goto_4

    :cond_6
    sget v10, Lcom/poverka/httpFileClient/activity/MainActivity;->MARKER:I

    if-nez v10, :cond_7

    invoke-virtual {v2}, Landroid/widget/EditText;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 790
    iget-object v10, p0, Lcom/poverka/httpFileClient/activity/ClientActivity;->activity:Landroid/app/Activity;

    const v12, 0x7f0f011a

    invoke-virtual {v10, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 792
    new-instance v10, Lcom/poverka/httpFileClient/activity/ClientActivity$18;

    invoke-direct {v10, p0, v9}, Lcom/poverka/httpFileClient/activity/ClientActivity$18;-><init>(Lcom/poverka/httpFileClient/activity/ClientActivity;I)V

    invoke-virtual {v6, v0, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 799
    new-instance v0, Lcom/poverka/httpFileClient/activity/ClientActivity$19;

    invoke-direct {v0, p0}, Lcom/poverka/httpFileClient/activity/ClientActivity$19;-><init>(Lcom/poverka/httpFileClient/activity/ClientActivity;)V

    invoke-virtual {v6, v11, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 805
    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 806
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 807
    .restart local v0    # "stateDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 808
    .end local v0    # "stateDialog":Landroid/app/AlertDialog;
    goto :goto_4

    :cond_7
    sget v0, Lcom/poverka/httpFileClient/activity/MainActivity;->MARKER:I

    const/4 v10, 0x0

    const-string v11, "ClientActivity"

    if-nez v0, :cond_8

    invoke-virtual {v2}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 809
    const-string v0, "\u0414\u0438\u0441\u043f\u0435\u0442\u0447\u0435\u0440\u0443"

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    invoke-direct {p0, v10, v9}, Lcom/poverka/httpFileClient/activity/ClientActivity;->saveClient(II)V

    goto :goto_4

    .line 812
    :cond_8
    const-string v0, "\u041c\u0435\u0442\u0440\u043e\u043b\u043e\u0433\u0443"

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    invoke-direct {p0, v10, v9}, Lcom/poverka/httpFileClient/activity/ClientActivity;->saveClient(II)V

    .line 815
    :goto_4
    return-void
.end method

.method private ShowMoreClicked()V
    .locals 29

    .line 506
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v2, 0x7f090064

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 507
    .local v1, "buttonShowMore":Landroid/widget/Button;
    iget-object v2, v0, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v3, 0x7f0900dd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 508
    .local v2, "imageQr":Landroid/widget/ImageButton;
    iget-object v3, v0, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v4, 0x7f0900ab

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 509
    .local v3, "editProtocolNumber":Landroid/widget/EditText;
    iget-object v4, v0, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v5, 0x7f09009f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 510
    .local v4, "editDateTime":Landroid/widget/EditText;
    iget-object v5, v0, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v6, 0x7f09009d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 511
    .local v5, "editCounterNumber":Landroid/widget/EditText;
    iget-object v6, v0, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v7, 0x7f0900b3

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 512
    .local v6, "editSurname":Landroid/widget/EditText;
    iget-object v7, v0, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v8, 0x7f09009c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 513
    .local v7, "editCity":Landroid/widget/EditText;
    iget-object v8, v0, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v9, 0x7f09015e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    .line 514
    .local v8, "spinnerCity":Landroid/widget/Spinner;
    iget-object v9, v0, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v10, 0x7f0900b2

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 515
    .local v9, "editStreet":Landroid/widget/EditText;
    iget-object v10, v0, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v11, 0x7f090165

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;

    .line 516
    .local v10, "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    iget-object v11, v0, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v12, 0x7f0900e8

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 517
    .local v11, "layoutBuilding":Landroid/widget/LinearLayout;
    iget-object v12, v0, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v13, 0x7f0900e7

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 518
    .local v12, "layoutApartment":Landroid/widget/LinearLayout;
    iget-object v13, v0, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v14, 0x7f0900a8

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    .line 519
    .local v13, "editPhoneNumber":Landroid/widget/EditText;
    iget-object v14, v0, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v15, 0x7f0900a9

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    .line 520
    .local v14, "editPhoneNumberDop":Landroid/widget/EditText;
    iget-object v15, v0, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v16, v14

    .end local v14    # "editPhoneNumberDop":Landroid/widget/EditText;
    .local v16, "editPhoneNumberDop":Landroid/widget/EditText;
    const v14, 0x7f0900aa

    invoke-virtual {v15, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    .line 521
    .local v14, "editPhoneNumberDop2":Landroid/widget/EditText;
    iget-object v15, v0, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v17, v14

    .end local v14    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .local v17, "editPhoneNumberDop2":Landroid/widget/EditText;
    const v14, 0x7f0900a0

    invoke-virtual {v15, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    .line 522
    .local v14, "editEmail":Landroid/widget/EditText;
    iget-object v15, v0, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v18, v14

    .end local v14    # "editEmail":Landroid/widget/EditText;
    .local v18, "editEmail":Landroid/widget/EditText;
    const v14, 0x7f0901a6

    invoke-virtual {v15, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 523
    .local v14, "textProtocolNumber":Landroid/widget/TextView;
    iget-object v15, v0, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v19, v14

    .end local v14    # "textProtocolNumber":Landroid/widget/TextView;
    .local v19, "textProtocolNumber":Landroid/widget/TextView;
    const v14, 0x7f090194

    invoke-virtual {v15, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 524
    .local v14, "textDateTime":Landroid/widget/TextView;
    iget-object v15, v0, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v20, v14

    .end local v14    # "textDateTime":Landroid/widget/TextView;
    .local v20, "textDateTime":Landroid/widget/TextView;
    const v14, 0x7f090191

    invoke-virtual {v15, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 525
    .local v14, "textCounterNumber":Landroid/widget/TextView;
    iget-object v15, v0, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v21, v14

    .end local v14    # "textCounterNumber":Landroid/widget/TextView;
    .local v21, "textCounterNumber":Landroid/widget/TextView;
    const v14, 0x7f0901b6

    invoke-virtual {v15, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 526
    .local v14, "textSurname":Landroid/widget/TextView;
    iget-object v15, v0, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v22, v14

    .end local v14    # "textSurname":Landroid/widget/TextView;
    .local v22, "textSurname":Landroid/widget/TextView;
    const v14, 0x7f0901b4

    invoke-virtual {v15, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 527
    .local v14, "textCity":Landroid/widget/TextView;
    iget-object v15, v0, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v23, v14

    .end local v14    # "textCity":Landroid/widget/TextView;
    .local v23, "textCity":Landroid/widget/TextView;
    const v14, 0x7f0901b5

    invoke-virtual {v15, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 528
    .local v14, "textStreet":Landroid/widget/TextView;
    iget-object v15, v0, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v24, v14

    .end local v14    # "textStreet":Landroid/widget/TextView;
    .local v24, "textStreet":Landroid/widget/TextView;
    const v14, 0x7f090190

    invoke-virtual {v15, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 529
    .local v14, "textBuilding":Landroid/widget/TextView;
    iget-object v15, v0, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v25, v14

    .end local v14    # "textBuilding":Landroid/widget/TextView;
    .local v25, "textBuilding":Landroid/widget/TextView;
    const v14, 0x7f09018e

    invoke-virtual {v15, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 530
    .local v14, "textApartment":Landroid/widget/TextView;
    iget-object v15, v0, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v26, v14

    .end local v14    # "textApartment":Landroid/widget/TextView;
    .local v26, "textApartment":Landroid/widget/TextView;
    const v14, 0x7f0901a5

    invoke-virtual {v15, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 531
    .local v14, "textPhoneNumber":Landroid/widget/TextView;
    iget-object v15, v0, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v0, 0x7f090196

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 533
    .local v0, "textEmail":Landroid/widget/TextView;
    invoke-virtual {v6}, Landroid/widget/EditText;->getVisibility()I

    move-result v15

    move-object/from16 v27, v0

    .end local v0    # "textEmail":Landroid/widget/TextView;
    .local v27, "textEmail":Landroid/widget/TextView;
    const/16 v0, 0x8

    if-nez v15, :cond_0

    .line 534
    const v15, 0x7f0f0160

    invoke-virtual {v1, v15}, Landroid/widget/Button;->setText(I)V

    .line 536
    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 537
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 538
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 539
    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 540
    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 541
    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 542
    invoke-virtual {v8, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 543
    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 544
    invoke-virtual {v10, v0}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->setVisibility(I)V

    .line 545
    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 546
    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 547
    invoke-virtual {v13, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 548
    move-object/from16 v15, v16

    .end local v16    # "editPhoneNumberDop":Landroid/widget/EditText;
    .local v15, "editPhoneNumberDop":Landroid/widget/EditText;
    invoke-virtual {v15, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 549
    move-object/from16 v15, v17

    .end local v17    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .local v15, "editPhoneNumberDop2":Landroid/widget/EditText;
    .restart local v16    # "editPhoneNumberDop":Landroid/widget/EditText;
    invoke-virtual {v15, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 550
    move-object/from16 v15, v18

    .end local v18    # "editEmail":Landroid/widget/EditText;
    .local v15, "editEmail":Landroid/widget/EditText;
    .restart local v17    # "editPhoneNumberDop2":Landroid/widget/EditText;
    invoke-virtual {v15, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 552
    move-object/from16 v15, v19

    .end local v19    # "textProtocolNumber":Landroid/widget/TextView;
    .local v15, "textProtocolNumber":Landroid/widget/TextView;
    .restart local v18    # "editEmail":Landroid/widget/EditText;
    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 553
    move-object/from16 v15, v20

    .end local v20    # "textDateTime":Landroid/widget/TextView;
    .local v15, "textDateTime":Landroid/widget/TextView;
    .restart local v19    # "textProtocolNumber":Landroid/widget/TextView;
    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 554
    move-object/from16 v15, v21

    .end local v21    # "textCounterNumber":Landroid/widget/TextView;
    .local v15, "textCounterNumber":Landroid/widget/TextView;
    .restart local v20    # "textDateTime":Landroid/widget/TextView;
    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 555
    move-object/from16 v15, v22

    .end local v22    # "textSurname":Landroid/widget/TextView;
    .local v15, "textSurname":Landroid/widget/TextView;
    .restart local v21    # "textCounterNumber":Landroid/widget/TextView;
    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 556
    move-object/from16 v15, v23

    .end local v23    # "textCity":Landroid/widget/TextView;
    .local v15, "textCity":Landroid/widget/TextView;
    .restart local v22    # "textSurname":Landroid/widget/TextView;
    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 557
    move-object/from16 v15, v24

    .end local v24    # "textStreet":Landroid/widget/TextView;
    .local v15, "textStreet":Landroid/widget/TextView;
    .restart local v23    # "textCity":Landroid/widget/TextView;
    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 558
    move-object/from16 v15, v25

    .end local v25    # "textBuilding":Landroid/widget/TextView;
    .local v15, "textBuilding":Landroid/widget/TextView;
    .restart local v24    # "textStreet":Landroid/widget/TextView;
    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 559
    move-object/from16 v15, v26

    .end local v26    # "textApartment":Landroid/widget/TextView;
    .local v15, "textApartment":Landroid/widget/TextView;
    .restart local v25    # "textBuilding":Landroid/widget/TextView;
    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 560
    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 561
    move-object/from16 v26, v14

    move-object/from16 v14, v27

    .end local v27    # "textEmail":Landroid/widget/TextView;
    .local v14, "textEmail":Landroid/widget/TextView;
    .local v26, "textPhoneNumber":Landroid/widget/TextView;
    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v28, v1

    move-object v1, v14

    move-object/from16 v14, p0

    goto/16 :goto_1

    .line 562
    .end local v15    # "textApartment":Landroid/widget/TextView;
    .local v14, "textPhoneNumber":Landroid/widget/TextView;
    .local v26, "textApartment":Landroid/widget/TextView;
    .restart local v27    # "textEmail":Landroid/widget/TextView;
    :cond_0
    move-object/from16 v15, v26

    move-object/from16 v26, v14

    move-object/from16 v14, v27

    .end local v14    # "textPhoneNumber":Landroid/widget/TextView;
    .restart local v15    # "textApartment":Landroid/widget/TextView;
    .local v26, "textPhoneNumber":Landroid/widget/TextView;
    invoke-virtual {v6}, Landroid/widget/EditText;->getVisibility()I

    move-result v14

    if-ne v14, v0, :cond_2

    .line 563
    const v0, 0x7f0f008a

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 565
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 566
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 567
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 568
    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 569
    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 570
    move-object/from16 v14, p0

    iget-boolean v0, v14, Lcom/poverka/httpFileClient/activity/ClientActivity;->showSpinnerAddress:Z

    if-eqz v0, :cond_1

    .line 571
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 572
    invoke-virtual {v10, v0}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->setVisibility(I)V

    goto :goto_0

    .line 574
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 575
    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 577
    :goto_0
    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 578
    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 579
    invoke-virtual {v13, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 580
    move-object/from16 v28, v1

    move-object/from16 v1, v16

    .end local v16    # "editPhoneNumberDop":Landroid/widget/EditText;
    .local v1, "editPhoneNumberDop":Landroid/widget/EditText;
    .local v28, "buttonShowMore":Landroid/widget/Button;
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 581
    move-object/from16 v1, v17

    .end local v17    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .local v1, "editPhoneNumberDop2":Landroid/widget/EditText;
    .restart local v16    # "editPhoneNumberDop":Landroid/widget/EditText;
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 582
    move-object/from16 v1, v18

    .end local v18    # "editEmail":Landroid/widget/EditText;
    .local v1, "editEmail":Landroid/widget/EditText;
    .restart local v17    # "editPhoneNumberDop2":Landroid/widget/EditText;
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 584
    move-object/from16 v1, v19

    .end local v19    # "textProtocolNumber":Landroid/widget/TextView;
    .local v1, "textProtocolNumber":Landroid/widget/TextView;
    .restart local v18    # "editEmail":Landroid/widget/EditText;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 585
    move-object/from16 v1, v20

    .end local v20    # "textDateTime":Landroid/widget/TextView;
    .local v1, "textDateTime":Landroid/widget/TextView;
    .restart local v19    # "textProtocolNumber":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 586
    move-object/from16 v1, v21

    .end local v21    # "textCounterNumber":Landroid/widget/TextView;
    .local v1, "textCounterNumber":Landroid/widget/TextView;
    .restart local v20    # "textDateTime":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 587
    move-object/from16 v1, v22

    .end local v22    # "textSurname":Landroid/widget/TextView;
    .local v1, "textSurname":Landroid/widget/TextView;
    .restart local v21    # "textCounterNumber":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 588
    move-object/from16 v1, v23

    .end local v23    # "textCity":Landroid/widget/TextView;
    .local v1, "textCity":Landroid/widget/TextView;
    .restart local v22    # "textSurname":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 589
    move-object/from16 v1, v24

    .end local v24    # "textStreet":Landroid/widget/TextView;
    .local v1, "textStreet":Landroid/widget/TextView;
    .restart local v23    # "textCity":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 590
    move-object/from16 v1, v25

    .end local v25    # "textBuilding":Landroid/widget/TextView;
    .local v1, "textBuilding":Landroid/widget/TextView;
    .restart local v24    # "textStreet":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 591
    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 592
    move-object/from16 v1, v26

    .end local v26    # "textPhoneNumber":Landroid/widget/TextView;
    .local v1, "textPhoneNumber":Landroid/widget/TextView;
    .restart local v25    # "textBuilding":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 593
    move-object/from16 v1, v27

    .end local v27    # "textEmail":Landroid/widget/TextView;
    .local v1, "textEmail":Landroid/widget/TextView;
    .restart local v26    # "textPhoneNumber":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 562
    .end local v28    # "buttonShowMore":Landroid/widget/Button;
    .local v1, "buttonShowMore":Landroid/widget/Button;
    .restart local v27    # "textEmail":Landroid/widget/TextView;
    :cond_2
    move-object/from16 v14, p0

    move-object/from16 v28, v1

    move-object/from16 v1, v27

    .line 595
    .end local v27    # "textEmail":Landroid/widget/TextView;
    .local v1, "textEmail":Landroid/widget/TextView;
    .restart local v28    # "buttonShowMore":Landroid/widget/Button;
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/poverka/httpFileClient/activity/ClientActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/ClientActivity;

    .line 48
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/ClientActivity;->ImageQrClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/poverka/httpFileClient/activity/ClientActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/ClientActivity;

    .line 48
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/ClientActivity;->ShowMoreClicked()V

    return-void
.end method

.method static synthetic access$200(Lcom/poverka/httpFileClient/activity/ClientActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/ClientActivity;

    .line 48
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/ClientActivity;->RepeatClicked()V

    return-void
.end method

.method static synthetic access$300(Lcom/poverka/httpFileClient/activity/ClientActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/ClientActivity;

    .line 48
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/ClientActivity;->SaveClicked()V

    return-void
.end method

.method static synthetic access$400(Lcom/poverka/httpFileClient/activity/ClientActivity;II)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/ClientActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/poverka/httpFileClient/activity/ClientActivity;->saveClient(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/poverka/httpFileClient/activity/ClientActivity;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/ClientActivity;

    .line 48
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ClientActivity;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/poverka/httpFileClient/activity/ClientActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/ClientActivity;

    .line 48
    iget v0, p0, Lcom/poverka/httpFileClient/activity/ClientActivity;->sleepSeconds:I

    return v0
.end method

.method static synthetic access$602(Lcom/poverka/httpFileClient/activity/ClientActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/ClientActivity;
    .param p1, "x1"    # I

    .line 48
    iput p1, p0, Lcom/poverka/httpFileClient/activity/ClientActivity;->sleepSeconds:I

    return p1
.end method

.method static synthetic access$608(Lcom/poverka/httpFileClient/activity/ClientActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/ClientActivity;

    .line 48
    iget v0, p0, Lcom/poverka/httpFileClient/activity/ClientActivity;->sleepSeconds:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/poverka/httpFileClient/activity/ClientActivity;->sleepSeconds:I

    return v0
.end method

.method static synthetic access$700(Lcom/poverka/httpFileClient/activity/ClientActivity;)Lcom/poverka/httpFileClient/activity/ClientActivity$OnClientResult;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/ClientActivity;

    .line 48
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ClientActivity;->resultListener:Lcom/poverka/httpFileClient/activity/ClientActivity$OnClientResult;

    return-object v0
.end method

.method static synthetic access$800(Lcom/poverka/httpFileClient/activity/ClientActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/ClientActivity;

    .line 48
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/ClientActivity;->stopSleepTimer()V

    return-void
.end method

.method static synthetic access$900(Lcom/poverka/httpFileClient/activity/ClientActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/ClientActivity;

    .line 48
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ClientActivity;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private getClientInfoById(I)Lorg/json/JSONObject;
    .locals 6
    .param p1, "id"    # I

    .line 983
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ClientActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "localTasks.json"

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 985
    .local v0, "taskString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 987
    .local v1, "clientInfo":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 988
    .local v2, "array":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 989
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 990
    .local v4, "currentClient":Lorg/json/JSONObject;
    const-string v5, "ID"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, p1, :cond_0

    .line 991
    move-object v1, v4

    .line 988
    .end local v4    # "currentClient":Lorg/json/JSONObject;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 996
    .end local v2    # "array":Lorg/json/JSONArray;
    .end local v3    # "i":I
    :cond_1
    goto :goto_2

    .line 994
    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    .line 995
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 998
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v1
.end method

.method private initAddress(III)V
    .locals 17
    .param p1, "textSHeight"    # I
    .param p2, "textLHeight"    # I
    .param p3, "marginHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 429
    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v1, 0x7f09015e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/Spinner;

    .line 430
    .local v9, "spinnerCity":Landroid/widget/Spinner;
    iget-object v0, v8, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v1, 0x7f090165

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;

    .line 432
    .local v10, "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, v8, Lcom/poverka/httpFileClient/activity/ClientActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "address.json"

    invoke-static {v1, v2}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    .line 433
    .local v11, "addressJSON":Lorg/json/JSONObject;
    const-string v0, "streets"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 435
    .local v12, "streetsJSON":Lorg/json/JSONArray;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 436
    .local v13, "cityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/poverka/httpFileClient/containers/Town;>;"
    new-instance v0, Lcom/poverka/httpFileClient/containers/Town;

    const-string v1, "city_id"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "city_name"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/poverka/httpFileClient/containers/Town;-><init>(ILjava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 439
    .local v14, "streetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/poverka/httpFileClient/containers/Address;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 440
    new-instance v1, Lcom/poverka/httpFileClient/containers/Address;

    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "ID"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "STREET_NAME"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/poverka/httpFileClient/containers/Address;-><init>(ILjava/lang/String;)V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 443
    .end local v0    # "i":I
    :cond_0
    new-instance v15, Lcom/poverka/httpFileClient/activity/ClientActivity$7;

    iget-object v2, v8, Lcom/poverka/httpFileClient/activity/ClientActivity;->activity:Landroid/app/Activity;

    const v3, 0x7f0c005f

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v4, v13

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/poverka/httpFileClient/activity/ClientActivity$7;-><init>(Lcom/poverka/httpFileClient/activity/ClientActivity;Landroid/content/Context;ILjava/util/List;III)V

    .line 458
    .local v15, "adapterCity":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/poverka/httpFileClient/containers/Town;>;"
    new-instance v16, Lcom/poverka/httpFileClient/activity/ClientActivity$8;

    iget-object v2, v8, Lcom/poverka/httpFileClient/activity/ClientActivity;->activity:Landroid/app/Activity;

    move-object/from16 v0, v16

    move-object v4, v14

    invoke-direct/range {v0 .. v7}, Lcom/poverka/httpFileClient/activity/ClientActivity$8;-><init>(Lcom/poverka/httpFileClient/activity/ClientActivity;Landroid/content/Context;ILjava/util/ArrayList;III)V

    .line 474
    .local v0, "adapterStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;
    invoke-virtual {v9, v15}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 476
    iget-object v1, v8, Lcom/poverka/httpFileClient/activity/ClientActivity;->activity:Landroid/app/Activity;

    const v2, 0x7f0f0135

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->setTitle(Ljava/lang/String;)V

    .line 477
    const-string v1, ""

    invoke-virtual {v10, v1}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->setPositiveButton(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v10, v0}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 479
    return-void
.end method

.method private initViews(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 41
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "protocolNumber"    # Ljava/lang/String;
    .param p3, "counterNumber"    # Ljava/lang/String;
    .param p4, "dateTime"    # Ljava/lang/String;
    .param p5, "waterTemperature"    # F

    .line 293
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "PHONE_NUMBER_DOP2"

    const-string v4, "PHONE_NUMBER_DOP"

    const-string v5, "PHONE_NUMBER"

    const-string v6, "APARTMENT_BUKVA"

    const-string v7, "BUILDING_KORPUS"

    const-string v8, "BUILDING_BUKVA"

    const-string v9, "address.json"

    const-string v10, "null"

    iget-object v11, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v12, 0x7f0900a1

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 294
    .local v11, "editIdNumber":Landroid/widget/EditText;
    iget-object v12, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v13, 0x7f0901b3

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 295
    .local v12, "textStation":Landroid/widget/TextView;
    iget-object v13, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v14, 0x7f0900a5

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    .line 296
    .local v13, "editPaymentAccount":Landroid/widget/EditText;
    iget-object v14, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v15, 0x7f0900ab

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    .line 297
    .local v14, "editProtocolNumber":Landroid/widget/EditText;
    iget-object v15, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v16, v12

    .end local v12    # "textStation":Landroid/widget/TextView;
    .local v16, "textStation":Landroid/widget/TextView;
    const v12, 0x7f09009d

    invoke-virtual {v15, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    .line 298
    .local v12, "editCounterNumber":Landroid/widget/EditText;
    iget-object v15, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v17, v13

    .end local v13    # "editPaymentAccount":Landroid/widget/EditText;
    .local v17, "editPaymentAccount":Landroid/widget/EditText;
    const v13, 0x7f09009f

    invoke-virtual {v15, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    .line 299
    .local v13, "editDateTime":Landroid/widget/EditText;
    iget-object v15, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v18, v0

    const v0, 0x7f090164

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/Spinner;

    .line 301
    .local v15, "spinnerServiceType":Landroid/widget/Spinner;
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v19, v4

    const v4, 0x7f0900b3

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/EditText;

    .line 302
    .local v4, "editSurname":Landroid/widget/EditText;
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v20, v5

    const v5, 0x7f09015e

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/Spinner;

    .line 303
    .local v5, "spinnerCity":Landroid/widget/Spinner;
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v21, v5

    .end local v5    # "spinnerCity":Landroid/widget/Spinner;
    .local v21, "spinnerCity":Landroid/widget/Spinner;
    const v5, 0x7f090165

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;

    .line 304
    .local v5, "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v22, v5

    .end local v5    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .local v22, "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    const v5, 0x7f09009c

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/EditText;

    .line 305
    .local v5, "editCity":Landroid/widget/EditText;
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v23, v5

    .end local v5    # "editCity":Landroid/widget/EditText;
    .local v23, "editCity":Landroid/widget/EditText;
    const v5, 0x7f0900b2

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/EditText;

    .line 306
    .local v5, "editStreet":Landroid/widget/EditText;
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v24, v5

    .end local v5    # "editStreet":Landroid/widget/EditText;
    .local v24, "editStreet":Landroid/widget/EditText;
    const v5, 0x7f090099

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/EditText;

    .line 307
    .local v5, "editBuilding":Landroid/widget/EditText;
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v25, v6

    const v6, 0x7f09009a

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/EditText;

    .line 308
    .local v6, "editBuildingBukva":Landroid/widget/EditText;
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v26, v7

    const v7, 0x7f09009b

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/EditText;

    .line 309
    .local v7, "editBuildingKorpus":Landroid/widget/EditText;
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v27, v7

    .end local v7    # "editBuildingKorpus":Landroid/widget/EditText;
    .local v27, "editBuildingKorpus":Landroid/widget/EditText;
    const v7, 0x7f090097

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/EditText;

    .line 310
    .local v7, "editApartment":Landroid/widget/EditText;
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v28, v7

    .end local v7    # "editApartment":Landroid/widget/EditText;
    .local v28, "editApartment":Landroid/widget/EditText;
    const v7, 0x7f090098

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/EditText;

    .line 311
    .local v7, "editApartmentBukva":Landroid/widget/EditText;
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v29, v7

    .end local v7    # "editApartmentBukva":Landroid/widget/EditText;
    .local v29, "editApartmentBukva":Landroid/widget/EditText;
    const v7, 0x7f0900a8

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/EditText;

    .line 312
    .local v7, "editPhoneNumber":Landroid/widget/EditText;
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v30, v7

    .end local v7    # "editPhoneNumber":Landroid/widget/EditText;
    .local v30, "editPhoneNumber":Landroid/widget/EditText;
    const v7, 0x7f0900a9

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/EditText;

    .line 313
    .local v7, "editPhoneNumberDop":Landroid/widget/EditText;
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v31, v7

    .end local v7    # "editPhoneNumberDop":Landroid/widget/EditText;
    .local v31, "editPhoneNumberDop":Landroid/widget/EditText;
    const v7, 0x7f0900aa

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/EditText;

    .line 315
    .local v7, "editPhoneNumberDop2":Landroid/widget/EditText;
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v32, v7

    .end local v7    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .local v32, "editPhoneNumberDop2":Landroid/widget/EditText;
    const v7, 0x7f0900dd

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageButton;

    .line 316
    .local v7, "imageQr":Landroid/widget/ImageButton;
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v33, v7

    .end local v7    # "imageQr":Landroid/widget/ImageButton;
    .local v33, "imageQr":Landroid/widget/ImageButton;
    const v7, 0x7f090064

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/Button;

    .line 317
    .local v7, "buttonShowMore":Landroid/widget/Button;
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v34, v7

    .end local v7    # "buttonShowMore":Landroid/widget/Button;
    .local v34, "buttonShowMore":Landroid/widget/Button;
    const v7, 0x7f090052

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/Button;

    .line 318
    .local v7, "buttonRepeat":Landroid/widget/Button;
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v35, v7

    .end local v7    # "buttonRepeat":Landroid/widget/Button;
    .local v35, "buttonRepeat":Landroid/widget/Button;
    const v7, 0x7f090055

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/Button;

    .line 320
    .local v7, "buttonSave":Landroid/widget/Button;
    const-string v0, "-1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    move-object/from16 v37, v7

    .end local v7    # "buttonSave":Landroid/widget/Button;
    .local v37, "buttonSave":Landroid/widget/Button;
    const-string v7, ""

    if-eqz v36, :cond_0

    .line 321
    invoke-virtual {v11, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 323
    :cond_0
    invoke-virtual {v11, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 326
    :goto_0
    invoke-virtual {v14, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 327
    move-object/from16 v36, v11

    move-object/from16 v11, p3

    .end local v11    # "editIdNumber":Landroid/widget/EditText;
    .local v36, "editIdNumber":Landroid/widget/EditText;
    invoke-virtual {v12, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 328
    move-object/from16 v11, p4

    invoke-virtual {v13, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 330
    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->round(F)I

    move-result v11

    int-to-float v11, v11

    const/high16 v38, 0x41f00000    # 30.0f

    move-object/from16 v39, v12

    .end local v12    # "editCounterNumber":Landroid/widget/EditText;
    .local v39, "editCounterNumber":Landroid/widget/EditText;
    const/4 v12, 0x0

    cmpl-float v11, v11, v38

    if-lez v11, :cond_1

    .line 331
    const/4 v11, 0x1

    invoke-virtual {v15, v11}, Landroid/widget/Spinner;->setSelection(I)V

    .line 332
    invoke-virtual {v15, v12}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 336
    :cond_1
    :try_start_0
    new-instance v11, Ljava/io/File;

    iget-object v12, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v12

    invoke-direct {v11, v12, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 337
    .local v11, "addressFile":Ljava/io/File;
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-direct {v1, v12}, Lcom/poverka/httpFileClient/activity/ClientActivity;->getClientInfoById(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 338
    .local v12, "taskJSON":Lorg/json/JSONObject;
    sget v40, Lcom/poverka/httpFileClient/activity/MainActivity;->MARKER:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_16

    if-nez v40, :cond_d

    .line 339
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 340
    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->round(F)I

    move-result v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_e

    int-to-float v0, v0

    cmpg-float v0, v0, v38

    if-gtz v0, :cond_2

    .line 341
    :try_start_2
    const-string v0, "SERVICE_TYPE"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {v15, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 342
    invoke-virtual {v15, v2}, Landroid/widget/Spinner;->setEnabled(Z)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 381
    .end local v11    # "addressFile":Ljava/io/File;
    .end local v12    # "taskJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    move-object/from16 v25, v4

    move-object/from16 v18, v5

    move-object/from16 v5, v16

    move-object/from16 v2, v17

    move-object/from16 v10, v23

    move-object/from16 v7, v24

    move-object/from16 v8, v27

    move-object/from16 v9, v28

    goto/16 :goto_c

    .line 345
    .restart local v11    # "addressFile":Ljava/io/File;
    .restart local v12    # "taskJSON":Lorg/json/JSONObject;
    :cond_2
    :goto_1
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v9}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 346
    .local v0, "addressJSON":Lorg/json/JSONObject;
    const-string v2, "SURNAME"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 347
    const-string v2, "BUILDING"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 348
    invoke-virtual {v12, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v7

    goto :goto_2

    :cond_3
    invoke-virtual {v12, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 349
    move-object/from16 v2, v26

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v2, v7

    goto :goto_3

    :cond_4
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_e

    :goto_3
    move-object/from16 v8, v27

    .end local v27    # "editBuildingKorpus":Landroid/widget/EditText;
    .local v8, "editBuildingKorpus":Landroid/widget/EditText;
    :try_start_4
    invoke-virtual {v8, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 350
    const-string v2, "APARTMENT"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_d

    move-object/from16 v9, v28

    .end local v28    # "editApartment":Landroid/widget/EditText;
    .local v9, "editApartment":Landroid/widget/EditText;
    :try_start_5
    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_c

    .line 351
    move-object/from16 v2, v25

    move-object/from16 v25, v4

    .end local v4    # "editSurname":Landroid/widget/EditText;
    .local v25, "editSurname":Landroid/widget/EditText;
    :try_start_6
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v2, v7

    goto :goto_4

    :cond_5
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_b

    :goto_4
    move-object/from16 v4, v29

    .end local v29    # "editApartmentBukva":Landroid/widget/EditText;
    .local v4, "editApartmentBukva":Landroid/widget/EditText;
    :try_start_7
    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_a

    .line 352
    move-object/from16 v29, v4

    move-object/from16 v2, v20

    .end local v4    # "editApartmentBukva":Landroid/widget/EditText;
    .restart local v29    # "editApartmentBukva":Landroid/widget/EditText;
    :try_start_8
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v2, v7

    goto :goto_5

    :cond_6
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_b

    :goto_5
    move-object/from16 v4, v30

    .end local v30    # "editPhoneNumber":Landroid/widget/EditText;
    .local v4, "editPhoneNumber":Landroid/widget/EditText;
    :try_start_9
    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_9

    .line 353
    move-object/from16 v30, v4

    move-object/from16 v2, v19

    .end local v4    # "editPhoneNumber":Landroid/widget/EditText;
    .restart local v30    # "editPhoneNumber":Landroid/widget/EditText;
    :try_start_a
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v2, v7

    goto :goto_6

    :cond_7
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_b

    :goto_6
    move-object/from16 v4, v31

    .end local v31    # "editPhoneNumberDop":Landroid/widget/EditText;
    .local v4, "editPhoneNumberDop":Landroid/widget/EditText;
    :try_start_b
    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_8

    .line 354
    move-object/from16 v31, v4

    move-object/from16 v2, v18

    .end local v4    # "editPhoneNumberDop":Landroid/widget/EditText;
    .restart local v31    # "editPhoneNumberDop":Landroid/widget/EditText;
    :try_start_c
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v2, v7

    goto :goto_7

    :cond_8
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_b

    :goto_7
    move-object/from16 v4, v32

    .end local v32    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .local v4, "editPhoneNumberDop2":Landroid/widget/EditText;
    :try_start_d
    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 356
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_7

    if-eqz v2, :cond_b

    :try_start_e
    const-string v2, "city_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v10, "CITY"

    invoke-virtual {v12, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_3

    if-ne v2, v10, :cond_b

    .line 357
    move-object/from16 v2, v21

    const/4 v7, 0x0

    .end local v21    # "spinnerCity":Landroid/widget/Spinner;
    .local v2, "spinnerCity":Landroid/widget/Spinner;
    :try_start_f
    invoke-virtual {v2, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 358
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_8
    invoke-virtual/range {v22 .. v22}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v10

    invoke-interface {v10}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v10

    if-ge v7, v10, :cond_a

    .line 359
    invoke-virtual/range {v22 .. v22}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v10

    invoke-interface {v10, v7}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/poverka/httpFileClient/containers/Address;

    .line 360
    .local v10, "street":Lcom/poverka/httpFileClient/containers/Address;
    move-object/from16 v18, v0

    .end local v0    # "addressJSON":Lorg/json/JSONObject;
    .local v18, "addressJSON":Lorg/json/JSONObject;
    invoke-virtual {v10}, Lcom/poverka/httpFileClient/containers/Address;->getId()I

    move-result v0
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_2

    move-object/from16 v21, v2

    .end local v2    # "spinnerCity":Landroid/widget/Spinner;
    .restart local v21    # "spinnerCity":Landroid/widget/Spinner;
    :try_start_10
    const-string v2, "STREET"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_3

    if-ne v0, v2, :cond_9

    .line 361
    move-object/from16 v2, v22

    .end local v22    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .local v2, "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    :try_start_11
    invoke-virtual {v2, v7}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->setSelection(I)V

    .line 362
    invoke-virtual {v2}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_1

    move v7, v0

    goto :goto_9

    .line 381
    .end local v7    # "index":I
    .end local v10    # "street":Lcom/poverka/httpFileClient/containers/Address;
    .end local v11    # "addressFile":Ljava/io/File;
    .end local v12    # "taskJSON":Lorg/json/JSONObject;
    .end local v18    # "addressJSON":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v32, v4

    move-object/from16 v18, v5

    move-object/from16 v5, v16

    move-object/from16 v2, v17

    move-object/from16 v10, v23

    move-object/from16 v7, v24

    goto/16 :goto_c

    .line 360
    .end local v2    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .restart local v7    # "index":I
    .restart local v10    # "street":Lcom/poverka/httpFileClient/containers/Address;
    .restart local v11    # "addressFile":Ljava/io/File;
    .restart local v12    # "taskJSON":Lorg/json/JSONObject;
    .restart local v18    # "addressJSON":Lorg/json/JSONObject;
    .restart local v22    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    :cond_9
    move-object/from16 v2, v22

    .line 358
    .end local v10    # "street":Lcom/poverka/httpFileClient/containers/Address;
    .end local v22    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .restart local v2    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    :goto_9
    const/4 v0, 0x1

    add-int/2addr v7, v0

    move-object/from16 v22, v2

    move-object/from16 v0, v18

    move-object/from16 v2, v21

    goto :goto_8

    .end local v18    # "addressJSON":Lorg/json/JSONObject;
    .end local v21    # "spinnerCity":Landroid/widget/Spinner;
    .restart local v0    # "addressJSON":Lorg/json/JSONObject;
    .local v2, "spinnerCity":Landroid/widget/Spinner;
    .restart local v22    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    :cond_a
    move-object/from16 v18, v0

    move-object/from16 v21, v2

    move-object/from16 v2, v22

    .end local v0    # "addressJSON":Lorg/json/JSONObject;
    .end local v22    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .local v2, "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .restart local v18    # "addressJSON":Lorg/json/JSONObject;
    .restart local v21    # "spinnerCity":Landroid/widget/Spinner;
    move-object/from16 v10, v23

    move-object/from16 v7, v24

    .end local v7    # "index":I
    goto/16 :goto_a

    .line 381
    .end local v11    # "addressFile":Ljava/io/File;
    .end local v12    # "taskJSON":Lorg/json/JSONObject;
    .end local v18    # "addressJSON":Lorg/json/JSONObject;
    .end local v21    # "spinnerCity":Landroid/widget/Spinner;
    .local v2, "spinnerCity":Landroid/widget/Spinner;
    .restart local v22    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    :catch_2
    move-exception v0

    move-object/from16 v21, v2

    move-object/from16 v32, v4

    move-object/from16 v18, v5

    move-object/from16 v5, v16

    move-object/from16 v2, v17

    move-object/from16 v10, v23

    move-object/from16 v7, v24

    .end local v22    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .local v2, "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .restart local v21    # "spinnerCity":Landroid/widget/Spinner;
    goto/16 :goto_c

    .end local v2    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .restart local v22    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    :catch_3
    move-exception v0

    move-object/from16 v32, v4

    move-object/from16 v18, v5

    move-object/from16 v5, v16

    move-object/from16 v2, v17

    move-object/from16 v10, v23

    move-object/from16 v7, v24

    .end local v22    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .restart local v2    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    goto/16 :goto_c

    .line 356
    .end local v2    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .restart local v0    # "addressJSON":Lorg/json/JSONObject;
    .restart local v11    # "addressFile":Ljava/io/File;
    .restart local v12    # "taskJSON":Lorg/json/JSONObject;
    .restart local v22    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    :cond_b
    move-object/from16 v18, v0

    move-object/from16 v2, v22

    .line 366
    .end local v0    # "addressJSON":Lorg/json/JSONObject;
    .end local v22    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .restart local v2    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .restart local v18    # "addressJSON":Lorg/json/JSONObject;
    move-object/from16 v10, v23

    .end local v23    # "editCity":Landroid/widget/EditText;
    .local v10, "editCity":Landroid/widget/EditText;
    :try_start_12
    invoke-virtual {v10, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 367
    const-string v0, "FULL_ADDRESS"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_6

    move-object/from16 v7, v24

    .end local v24    # "editStreet":Landroid/widget/EditText;
    .local v7, "editStreet":Landroid/widget/EditText;
    :try_start_13
    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_5

    .line 368
    move-object/from16 v22, v2

    const/4 v2, 0x0

    .end local v2    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .restart local v22    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    :try_start_14
    invoke-virtual {v10, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 369
    invoke-virtual {v7, v2}, Landroid/widget/EditText;->setEnabled(Z)V
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_4

    goto/16 :goto_a

    .line 381
    .end local v11    # "addressFile":Ljava/io/File;
    .end local v12    # "taskJSON":Lorg/json/JSONObject;
    .end local v18    # "addressJSON":Lorg/json/JSONObject;
    :catch_4
    move-exception v0

    move-object/from16 v32, v4

    move-object/from16 v18, v5

    move-object/from16 v5, v16

    move-object/from16 v2, v17

    goto/16 :goto_c

    .end local v22    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .restart local v2    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    :catch_5
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v32, v4

    move-object/from16 v18, v5

    move-object/from16 v5, v16

    move-object/from16 v2, v17

    .end local v2    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .restart local v22    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    goto/16 :goto_c

    .end local v7    # "editStreet":Landroid/widget/EditText;
    .end local v22    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .restart local v2    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .restart local v24    # "editStreet":Landroid/widget/EditText;
    :catch_6
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v7, v24

    move-object/from16 v32, v4

    move-object/from16 v18, v5

    move-object/from16 v5, v16

    move-object/from16 v2, v17

    .end local v2    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .end local v24    # "editStreet":Landroid/widget/EditText;
    .restart local v7    # "editStreet":Landroid/widget/EditText;
    .restart local v22    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    goto/16 :goto_c

    .end local v7    # "editStreet":Landroid/widget/EditText;
    .end local v10    # "editCity":Landroid/widget/EditText;
    .restart local v23    # "editCity":Landroid/widget/EditText;
    .restart local v24    # "editStreet":Landroid/widget/EditText;
    :catch_7
    move-exception v0

    move-object/from16 v10, v23

    move-object/from16 v7, v24

    move-object/from16 v32, v4

    move-object/from16 v18, v5

    move-object/from16 v5, v16

    move-object/from16 v2, v17

    .end local v23    # "editCity":Landroid/widget/EditText;
    .end local v24    # "editStreet":Landroid/widget/EditText;
    .restart local v7    # "editStreet":Landroid/widget/EditText;
    .restart local v10    # "editCity":Landroid/widget/EditText;
    goto/16 :goto_c

    .end local v7    # "editStreet":Landroid/widget/EditText;
    .end local v10    # "editCity":Landroid/widget/EditText;
    .end local v31    # "editPhoneNumberDop":Landroid/widget/EditText;
    .local v4, "editPhoneNumberDop":Landroid/widget/EditText;
    .restart local v23    # "editCity":Landroid/widget/EditText;
    .restart local v24    # "editStreet":Landroid/widget/EditText;
    .restart local v32    # "editPhoneNumberDop2":Landroid/widget/EditText;
    :catch_8
    move-exception v0

    move-object/from16 v31, v4

    move-object/from16 v10, v23

    move-object/from16 v7, v24

    move-object/from16 v18, v5

    move-object/from16 v5, v16

    move-object/from16 v2, v17

    .end local v23    # "editCity":Landroid/widget/EditText;
    .end local v24    # "editStreet":Landroid/widget/EditText;
    .end local v32    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .local v4, "editPhoneNumberDop2":Landroid/widget/EditText;
    .restart local v7    # "editStreet":Landroid/widget/EditText;
    .restart local v10    # "editCity":Landroid/widget/EditText;
    .restart local v31    # "editPhoneNumberDop":Landroid/widget/EditText;
    goto/16 :goto_c

    .end local v7    # "editStreet":Landroid/widget/EditText;
    .end local v10    # "editCity":Landroid/widget/EditText;
    .end local v30    # "editPhoneNumber":Landroid/widget/EditText;
    .local v4, "editPhoneNumber":Landroid/widget/EditText;
    .restart local v23    # "editCity":Landroid/widget/EditText;
    .restart local v24    # "editStreet":Landroid/widget/EditText;
    .restart local v32    # "editPhoneNumberDop2":Landroid/widget/EditText;
    :catch_9
    move-exception v0

    move-object/from16 v30, v4

    move-object/from16 v10, v23

    move-object/from16 v7, v24

    move-object/from16 v18, v5

    move-object/from16 v5, v16

    move-object/from16 v2, v17

    .end local v23    # "editCity":Landroid/widget/EditText;
    .end local v24    # "editStreet":Landroid/widget/EditText;
    .end local v32    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .local v4, "editPhoneNumberDop2":Landroid/widget/EditText;
    .restart local v7    # "editStreet":Landroid/widget/EditText;
    .restart local v10    # "editCity":Landroid/widget/EditText;
    .restart local v30    # "editPhoneNumber":Landroid/widget/EditText;
    goto/16 :goto_c

    .end local v7    # "editStreet":Landroid/widget/EditText;
    .end local v10    # "editCity":Landroid/widget/EditText;
    .end local v29    # "editApartmentBukva":Landroid/widget/EditText;
    .local v4, "editApartmentBukva":Landroid/widget/EditText;
    .restart local v23    # "editCity":Landroid/widget/EditText;
    .restart local v24    # "editStreet":Landroid/widget/EditText;
    .restart local v32    # "editPhoneNumberDop2":Landroid/widget/EditText;
    :catch_a
    move-exception v0

    move-object/from16 v29, v4

    move-object/from16 v10, v23

    move-object/from16 v7, v24

    move-object/from16 v18, v5

    move-object/from16 v5, v16

    move-object/from16 v2, v17

    .end local v23    # "editCity":Landroid/widget/EditText;
    .end local v24    # "editStreet":Landroid/widget/EditText;
    .end local v32    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .local v4, "editPhoneNumberDop2":Landroid/widget/EditText;
    .restart local v7    # "editStreet":Landroid/widget/EditText;
    .restart local v10    # "editCity":Landroid/widget/EditText;
    .restart local v29    # "editApartmentBukva":Landroid/widget/EditText;
    goto/16 :goto_c

    .end local v4    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .end local v7    # "editStreet":Landroid/widget/EditText;
    .end local v10    # "editCity":Landroid/widget/EditText;
    .restart local v23    # "editCity":Landroid/widget/EditText;
    .restart local v24    # "editStreet":Landroid/widget/EditText;
    .restart local v32    # "editPhoneNumberDop2":Landroid/widget/EditText;
    :catch_b
    move-exception v0

    move-object/from16 v10, v23

    move-object/from16 v7, v24

    move-object/from16 v18, v5

    move-object/from16 v5, v16

    move-object/from16 v2, v17

    .end local v23    # "editCity":Landroid/widget/EditText;
    .end local v24    # "editStreet":Landroid/widget/EditText;
    .end local v32    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .restart local v4    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .restart local v7    # "editStreet":Landroid/widget/EditText;
    .restart local v10    # "editCity":Landroid/widget/EditText;
    goto/16 :goto_c

    .end local v7    # "editStreet":Landroid/widget/EditText;
    .end local v10    # "editCity":Landroid/widget/EditText;
    .end local v25    # "editSurname":Landroid/widget/EditText;
    .local v4, "editSurname":Landroid/widget/EditText;
    .restart local v23    # "editCity":Landroid/widget/EditText;
    .restart local v24    # "editStreet":Landroid/widget/EditText;
    .restart local v32    # "editPhoneNumberDop2":Landroid/widget/EditText;
    :catch_c
    move-exception v0

    move-object/from16 v25, v4

    move-object/from16 v10, v23

    move-object/from16 v7, v24

    move-object/from16 v18, v5

    move-object/from16 v5, v16

    move-object/from16 v2, v17

    .end local v23    # "editCity":Landroid/widget/EditText;
    .end local v24    # "editStreet":Landroid/widget/EditText;
    .end local v32    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .local v4, "editPhoneNumberDop2":Landroid/widget/EditText;
    .restart local v7    # "editStreet":Landroid/widget/EditText;
    .restart local v10    # "editCity":Landroid/widget/EditText;
    .restart local v25    # "editSurname":Landroid/widget/EditText;
    goto/16 :goto_c

    .end local v7    # "editStreet":Landroid/widget/EditText;
    .end local v9    # "editApartment":Landroid/widget/EditText;
    .end local v10    # "editCity":Landroid/widget/EditText;
    .end local v25    # "editSurname":Landroid/widget/EditText;
    .local v4, "editSurname":Landroid/widget/EditText;
    .restart local v23    # "editCity":Landroid/widget/EditText;
    .restart local v24    # "editStreet":Landroid/widget/EditText;
    .restart local v28    # "editApartment":Landroid/widget/EditText;
    .restart local v32    # "editPhoneNumberDop2":Landroid/widget/EditText;
    :catch_d
    move-exception v0

    move-object/from16 v25, v4

    move-object/from16 v10, v23

    move-object/from16 v7, v24

    move-object/from16 v9, v28

    move-object/from16 v18, v5

    move-object/from16 v5, v16

    move-object/from16 v2, v17

    .end local v23    # "editCity":Landroid/widget/EditText;
    .end local v24    # "editStreet":Landroid/widget/EditText;
    .end local v28    # "editApartment":Landroid/widget/EditText;
    .end local v32    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .local v4, "editPhoneNumberDop2":Landroid/widget/EditText;
    .restart local v7    # "editStreet":Landroid/widget/EditText;
    .restart local v9    # "editApartment":Landroid/widget/EditText;
    .restart local v10    # "editCity":Landroid/widget/EditText;
    .restart local v25    # "editSurname":Landroid/widget/EditText;
    goto/16 :goto_c

    .line 339
    .end local v7    # "editStreet":Landroid/widget/EditText;
    .end local v8    # "editBuildingKorpus":Landroid/widget/EditText;
    .end local v9    # "editApartment":Landroid/widget/EditText;
    .end local v10    # "editCity":Landroid/widget/EditText;
    .end local v25    # "editSurname":Landroid/widget/EditText;
    .local v4, "editSurname":Landroid/widget/EditText;
    .restart local v11    # "addressFile":Ljava/io/File;
    .restart local v12    # "taskJSON":Lorg/json/JSONObject;
    .restart local v23    # "editCity":Landroid/widget/EditText;
    .restart local v24    # "editStreet":Landroid/widget/EditText;
    .restart local v27    # "editBuildingKorpus":Landroid/widget/EditText;
    .restart local v28    # "editApartment":Landroid/widget/EditText;
    .restart local v32    # "editPhoneNumberDop2":Landroid/widget/EditText;
    :cond_c
    move-object/from16 v25, v4

    move-object/from16 v10, v23

    move-object/from16 v7, v24

    move-object/from16 v8, v27

    move-object/from16 v9, v28

    move-object/from16 v4, v32

    .end local v23    # "editCity":Landroid/widget/EditText;
    .end local v24    # "editStreet":Landroid/widget/EditText;
    .end local v27    # "editBuildingKorpus":Landroid/widget/EditText;
    .end local v28    # "editApartment":Landroid/widget/EditText;
    .end local v32    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .local v4, "editPhoneNumberDop2":Landroid/widget/EditText;
    .restart local v7    # "editStreet":Landroid/widget/EditText;
    .restart local v8    # "editBuildingKorpus":Landroid/widget/EditText;
    .restart local v9    # "editApartment":Landroid/widget/EditText;
    .restart local v10    # "editCity":Landroid/widget/EditText;
    .restart local v25    # "editSurname":Landroid/widget/EditText;
    goto :goto_a

    .line 381
    .end local v7    # "editStreet":Landroid/widget/EditText;
    .end local v8    # "editBuildingKorpus":Landroid/widget/EditText;
    .end local v9    # "editApartment":Landroid/widget/EditText;
    .end local v10    # "editCity":Landroid/widget/EditText;
    .end local v11    # "addressFile":Ljava/io/File;
    .end local v12    # "taskJSON":Lorg/json/JSONObject;
    .end local v25    # "editSurname":Landroid/widget/EditText;
    .local v4, "editSurname":Landroid/widget/EditText;
    .restart local v23    # "editCity":Landroid/widget/EditText;
    .restart local v24    # "editStreet":Landroid/widget/EditText;
    .restart local v27    # "editBuildingKorpus":Landroid/widget/EditText;
    .restart local v28    # "editApartment":Landroid/widget/EditText;
    .restart local v32    # "editPhoneNumberDop2":Landroid/widget/EditText;
    :catch_e
    move-exception v0

    move-object/from16 v25, v4

    move-object/from16 v10, v23

    move-object/from16 v7, v24

    move-object/from16 v8, v27

    move-object/from16 v9, v28

    move-object/from16 v18, v5

    move-object/from16 v5, v16

    move-object/from16 v2, v17

    .end local v23    # "editCity":Landroid/widget/EditText;
    .end local v24    # "editStreet":Landroid/widget/EditText;
    .end local v27    # "editBuildingKorpus":Landroid/widget/EditText;
    .end local v28    # "editApartment":Landroid/widget/EditText;
    .end local v32    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .local v4, "editPhoneNumberDop2":Landroid/widget/EditText;
    .restart local v7    # "editStreet":Landroid/widget/EditText;
    .restart local v8    # "editBuildingKorpus":Landroid/widget/EditText;
    .restart local v9    # "editApartment":Landroid/widget/EditText;
    .restart local v10    # "editCity":Landroid/widget/EditText;
    .restart local v25    # "editSurname":Landroid/widget/EditText;
    goto/16 :goto_c

    .line 338
    .end local v7    # "editStreet":Landroid/widget/EditText;
    .end local v8    # "editBuildingKorpus":Landroid/widget/EditText;
    .end local v9    # "editApartment":Landroid/widget/EditText;
    .end local v10    # "editCity":Landroid/widget/EditText;
    .end local v25    # "editSurname":Landroid/widget/EditText;
    .local v4, "editSurname":Landroid/widget/EditText;
    .restart local v11    # "addressFile":Ljava/io/File;
    .restart local v12    # "taskJSON":Lorg/json/JSONObject;
    .restart local v23    # "editCity":Landroid/widget/EditText;
    .restart local v24    # "editStreet":Landroid/widget/EditText;
    .restart local v27    # "editBuildingKorpus":Landroid/widget/EditText;
    .restart local v28    # "editApartment":Landroid/widget/EditText;
    .restart local v32    # "editPhoneNumberDop2":Landroid/widget/EditText;
    :cond_d
    move-object/from16 v25, v4

    move-object/from16 v10, v23

    move-object/from16 v7, v24

    move-object/from16 v8, v27

    move-object/from16 v9, v28

    move-object/from16 v4, v32

    .line 374
    .end local v23    # "editCity":Landroid/widget/EditText;
    .end local v24    # "editStreet":Landroid/widget/EditText;
    .end local v27    # "editBuildingKorpus":Landroid/widget/EditText;
    .end local v28    # "editApartment":Landroid/widget/EditText;
    .end local v32    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .local v4, "editPhoneNumberDop2":Landroid/widget/EditText;
    .restart local v7    # "editStreet":Landroid/widget/EditText;
    .restart local v8    # "editBuildingKorpus":Landroid/widget/EditText;
    .restart local v9    # "editApartment":Landroid/widget/EditText;
    .restart local v10    # "editCity":Landroid/widget/EditText;
    .restart local v25    # "editSurname":Landroid/widget/EditText;
    :goto_a
    :try_start_15
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_15

    move-object/from16 v32, v4

    .end local v4    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .restart local v32    # "editPhoneNumberDop2":Landroid/widget/EditText;
    :try_start_16
    const-string v4, "settings.json"

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 375
    .local v0, "settings":Ljava/io/File;
    new-instance v2, Lorg/json/JSONObject;

    iget-object v4, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v4
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_14

    move-object/from16 v18, v5

    .end local v5    # "editBuilding":Landroid/widget/EditText;
    .local v18, "editBuilding":Landroid/widget/EditText;
    :try_start_17
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 376
    .local v2, "jsonSettings":Lorg/json/JSONObject;
    const-string v4, "paymentAccountCurrent"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_17} :catch_13

    .line 377
    .local v4, "paymentAccountCurrent":I
    if-eqz v4, :cond_e

    .line 378
    :try_start_18
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    move-object/from16 v19, v0

    .end local v0    # "settings":Ljava/io/File;
    .local v19, "settings":Ljava/io/File;
    const-string v0, "%05d"

    move-object/from16 v20, v2

    const/4 v2, 0x1

    .end local v2    # "jsonSettings":Lorg/json/JSONObject;
    .local v20, "jsonSettings":Lorg/json/JSONObject;
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x0

    aput-object v23, v2, v24

    invoke-static {v5, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_18} :catch_10

    move-object/from16 v2, v17

    .end local v17    # "editPaymentAccount":Landroid/widget/EditText;
    .local v2, "editPaymentAccount":Landroid/widget/EditText;
    :try_start_19
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_19} :catch_f

    goto :goto_b

    .line 381
    .end local v4    # "paymentAccountCurrent":I
    .end local v11    # "addressFile":Ljava/io/File;
    .end local v12    # "taskJSON":Lorg/json/JSONObject;
    .end local v19    # "settings":Ljava/io/File;
    .end local v20    # "jsonSettings":Lorg/json/JSONObject;
    :catch_f
    move-exception v0

    move-object/from16 v5, v16

    goto :goto_c

    .end local v2    # "editPaymentAccount":Landroid/widget/EditText;
    .restart local v17    # "editPaymentAccount":Landroid/widget/EditText;
    :catch_10
    move-exception v0

    move-object/from16 v2, v17

    move-object/from16 v5, v16

    .end local v17    # "editPaymentAccount":Landroid/widget/EditText;
    .restart local v2    # "editPaymentAccount":Landroid/widget/EditText;
    goto :goto_c

    .line 377
    .restart local v0    # "settings":Ljava/io/File;
    .local v2, "jsonSettings":Lorg/json/JSONObject;
    .restart local v4    # "paymentAccountCurrent":I
    .restart local v11    # "addressFile":Ljava/io/File;
    .restart local v12    # "taskJSON":Lorg/json/JSONObject;
    .restart local v17    # "editPaymentAccount":Landroid/widget/EditText;
    :cond_e
    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v2, v17

    .line 380
    .end local v0    # "settings":Ljava/io/File;
    .end local v17    # "editPaymentAccount":Landroid/widget/EditText;
    .local v2, "editPaymentAccount":Landroid/widget/EditText;
    .restart local v19    # "settings":Ljava/io/File;
    .restart local v20    # "jsonSettings":Lorg/json/JSONObject;
    :goto_b
    const/4 v0, 0x3

    const/4 v5, 0x0

    :try_start_1a
    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_1a} :catch_12

    move-object/from16 v5, v16

    .end local v16    # "textStation":Landroid/widget/TextView;
    .local v5, "textStation":Landroid/widget/TextView;
    :try_start_1b
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_1b} :catch_11

    .line 383
    .end local v4    # "paymentAccountCurrent":I
    .end local v11    # "addressFile":Ljava/io/File;
    .end local v12    # "taskJSON":Lorg/json/JSONObject;
    .end local v19    # "settings":Ljava/io/File;
    .end local v20    # "jsonSettings":Lorg/json/JSONObject;
    goto :goto_d

    .line 381
    :catch_11
    move-exception v0

    goto :goto_c

    .end local v5    # "textStation":Landroid/widget/TextView;
    .restart local v16    # "textStation":Landroid/widget/TextView;
    :catch_12
    move-exception v0

    move-object/from16 v5, v16

    .end local v16    # "textStation":Landroid/widget/TextView;
    .restart local v5    # "textStation":Landroid/widget/TextView;
    goto :goto_c

    .end local v2    # "editPaymentAccount":Landroid/widget/EditText;
    .end local v5    # "textStation":Landroid/widget/TextView;
    .restart local v16    # "textStation":Landroid/widget/TextView;
    .restart local v17    # "editPaymentAccount":Landroid/widget/EditText;
    :catch_13
    move-exception v0

    move-object/from16 v5, v16

    move-object/from16 v2, v17

    .end local v16    # "textStation":Landroid/widget/TextView;
    .end local v17    # "editPaymentAccount":Landroid/widget/EditText;
    .restart local v2    # "editPaymentAccount":Landroid/widget/EditText;
    .restart local v5    # "textStation":Landroid/widget/TextView;
    goto :goto_c

    .end local v2    # "editPaymentAccount":Landroid/widget/EditText;
    .end local v18    # "editBuilding":Landroid/widget/EditText;
    .local v5, "editBuilding":Landroid/widget/EditText;
    .restart local v16    # "textStation":Landroid/widget/TextView;
    .restart local v17    # "editPaymentAccount":Landroid/widget/EditText;
    :catch_14
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v5, v16

    move-object/from16 v2, v17

    .end local v16    # "textStation":Landroid/widget/TextView;
    .end local v17    # "editPaymentAccount":Landroid/widget/EditText;
    .restart local v2    # "editPaymentAccount":Landroid/widget/EditText;
    .local v5, "textStation":Landroid/widget/TextView;
    .restart local v18    # "editBuilding":Landroid/widget/EditText;
    goto :goto_c

    .end local v2    # "editPaymentAccount":Landroid/widget/EditText;
    .end local v18    # "editBuilding":Landroid/widget/EditText;
    .end local v32    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .local v4, "editPhoneNumberDop2":Landroid/widget/EditText;
    .local v5, "editBuilding":Landroid/widget/EditText;
    .restart local v16    # "textStation":Landroid/widget/TextView;
    .restart local v17    # "editPaymentAccount":Landroid/widget/EditText;
    :catch_15
    move-exception v0

    move-object/from16 v32, v4

    move-object/from16 v18, v5

    move-object/from16 v5, v16

    move-object/from16 v2, v17

    .end local v4    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .end local v16    # "textStation":Landroid/widget/TextView;
    .end local v17    # "editPaymentAccount":Landroid/widget/EditText;
    .restart local v2    # "editPaymentAccount":Landroid/widget/EditText;
    .local v5, "textStation":Landroid/widget/TextView;
    .restart local v18    # "editBuilding":Landroid/widget/EditText;
    .restart local v32    # "editPhoneNumberDop2":Landroid/widget/EditText;
    goto :goto_c

    .end local v2    # "editPaymentAccount":Landroid/widget/EditText;
    .end local v7    # "editStreet":Landroid/widget/EditText;
    .end local v8    # "editBuildingKorpus":Landroid/widget/EditText;
    .end local v9    # "editApartment":Landroid/widget/EditText;
    .end local v10    # "editCity":Landroid/widget/EditText;
    .end local v18    # "editBuilding":Landroid/widget/EditText;
    .end local v25    # "editSurname":Landroid/widget/EditText;
    .local v4, "editSurname":Landroid/widget/EditText;
    .local v5, "editBuilding":Landroid/widget/EditText;
    .restart local v16    # "textStation":Landroid/widget/TextView;
    .restart local v17    # "editPaymentAccount":Landroid/widget/EditText;
    .restart local v23    # "editCity":Landroid/widget/EditText;
    .restart local v24    # "editStreet":Landroid/widget/EditText;
    .restart local v27    # "editBuildingKorpus":Landroid/widget/EditText;
    .restart local v28    # "editApartment":Landroid/widget/EditText;
    :catch_16
    move-exception v0

    move-object/from16 v25, v4

    move-object/from16 v18, v5

    move-object/from16 v5, v16

    move-object/from16 v2, v17

    move-object/from16 v10, v23

    move-object/from16 v7, v24

    move-object/from16 v8, v27

    move-object/from16 v9, v28

    .line 382
    .end local v4    # "editSurname":Landroid/widget/EditText;
    .end local v16    # "textStation":Landroid/widget/TextView;
    .end local v17    # "editPaymentAccount":Landroid/widget/EditText;
    .end local v23    # "editCity":Landroid/widget/EditText;
    .end local v24    # "editStreet":Landroid/widget/EditText;
    .end local v27    # "editBuildingKorpus":Landroid/widget/EditText;
    .end local v28    # "editApartment":Landroid/widget/EditText;
    .local v0, "e":Lorg/json/JSONException;
    .restart local v2    # "editPaymentAccount":Landroid/widget/EditText;
    .local v5, "textStation":Landroid/widget/TextView;
    .restart local v7    # "editStreet":Landroid/widget/EditText;
    .restart local v8    # "editBuildingKorpus":Landroid/widget/EditText;
    .restart local v9    # "editApartment":Landroid/widget/EditText;
    .restart local v10    # "editCity":Landroid/widget/EditText;
    .restart local v18    # "editBuilding":Landroid/widget/EditText;
    .restart local v25    # "editSurname":Landroid/widget/EditText;
    :goto_c
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 385
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_d
    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 386
    invoke-virtual {v13, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 387
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_f

    .line 388
    move-object/from16 v11, v39

    .end local v39    # "editCounterNumber":Landroid/widget/EditText;
    .local v11, "editCounterNumber":Landroid/widget/EditText;
    invoke-virtual {v11, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_e

    .line 387
    .end local v11    # "editCounterNumber":Landroid/widget/EditText;
    .restart local v39    # "editCounterNumber":Landroid/widget/EditText;
    :cond_f
    move-object/from16 v11, v39

    .line 391
    .end local v39    # "editCounterNumber":Landroid/widget/EditText;
    .restart local v11    # "editCounterNumber":Landroid/widget/EditText;
    :goto_e
    new-instance v0, Lcom/poverka/httpFileClient/activity/ClientActivity$2;

    invoke-direct {v0, v1}, Lcom/poverka/httpFileClient/activity/ClientActivity$2;-><init>(Lcom/poverka/httpFileClient/activity/ClientActivity;)V

    move-object/from16 v4, v33

    .end local v33    # "imageQr":Landroid/widget/ImageButton;
    .local v4, "imageQr":Landroid/widget/ImageButton;
    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    new-instance v0, Lcom/poverka/httpFileClient/activity/ClientActivity$3;

    invoke-direct {v0, v1}, Lcom/poverka/httpFileClient/activity/ClientActivity$3;-><init>(Lcom/poverka/httpFileClient/activity/ClientActivity;)V

    move-object/from16 v12, v34

    .end local v34    # "buttonShowMore":Landroid/widget/Button;
    .local v12, "buttonShowMore":Landroid/widget/Button;
    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    new-instance v0, Lcom/poverka/httpFileClient/activity/ClientActivity$4;

    invoke-direct {v0, v1}, Lcom/poverka/httpFileClient/activity/ClientActivity$4;-><init>(Lcom/poverka/httpFileClient/activity/ClientActivity;)V

    move-object/from16 v17, v2

    move-object/from16 v2, v35

    .end local v35    # "buttonRepeat":Landroid/widget/Button;
    .local v2, "buttonRepeat":Landroid/widget/Button;
    .restart local v17    # "editPaymentAccount":Landroid/widget/EditText;
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    new-instance v0, Lcom/poverka/httpFileClient/activity/ClientActivity$5;

    invoke-direct {v0, v1}, Lcom/poverka/httpFileClient/activity/ClientActivity$5;-><init>(Lcom/poverka/httpFileClient/activity/ClientActivity;)V

    move-object/from16 v2, v37

    .end local v37    # "buttonSave":Landroid/widget/Button;
    .local v2, "buttonSave":Landroid/widget/Button;
    .restart local v35    # "buttonRepeat":Landroid/widget/Button;
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->dialog:Landroid/app/Dialog;

    .end local v2    # "buttonSave":Landroid/widget/Button;
    .restart local v37    # "buttonSave":Landroid/widget/Button;
    new-instance v2, Lcom/poverka/httpFileClient/activity/ClientActivity$6;

    invoke-direct {v2, v1}, Lcom/poverka/httpFileClient/activity/ClientActivity$6;-><init>(Lcom/poverka/httpFileClient/activity/ClientActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 425
    invoke-direct/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/ClientActivity;->ShowMoreClicked()V

    .line 426
    return-void
.end method

.method private saveClient(II)V
    .locals 41
    .param p1, "localChoice"    # I
    .param p2, "paymentAccountCurrent"    # I

    .line 818
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, "FULL_ADDRESS"

    const-string v4, "-"

    const-string v0, "address.json"

    const-string v5, " "

    const-string v6, "STREET"

    const-string v7, "CITY"

    const-string v8, ""

    iget-object v9, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v10, 0x7f0900a1

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 819
    .local v9, "editIdNumber":Landroid/widget/EditText;
    iget-object v10, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v11, 0x7f0900ab

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 820
    .local v10, "editProtocolNumber":Landroid/widget/EditText;
    iget-object v11, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v12, 0x7f0900b3

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 821
    .local v11, "editSurname":Landroid/widget/EditText;
    iget-object v12, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v13, 0x7f09009c

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    .line 822
    .local v12, "editCity":Landroid/widget/EditText;
    iget-object v13, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v14, 0x7f09015e

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Spinner;

    .line 823
    .local v13, "spinnerCity":Landroid/widget/Spinner;
    iget-object v14, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v15, 0x7f0900b2

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    .line 824
    .local v14, "editStreet":Landroid/widget/EditText;
    iget-object v15, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v16, v5

    const v5, 0x7f090165

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;

    .line 825
    .local v5, "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    iget-object v15, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v17, v8

    const v8, 0x7f090099

    invoke-virtual {v15, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 826
    .local v8, "editBuilding":Landroid/widget/EditText;
    iget-object v15, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v18, v11

    .end local v11    # "editSurname":Landroid/widget/EditText;
    .local v18, "editSurname":Landroid/widget/EditText;
    const v11, 0x7f09009a

    invoke-virtual {v15, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 827
    .local v11, "editBuildingBukva":Landroid/widget/EditText;
    iget-object v15, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v19, v11

    .end local v11    # "editBuildingBukva":Landroid/widget/EditText;
    .local v19, "editBuildingBukva":Landroid/widget/EditText;
    const v11, 0x7f09009b

    invoke-virtual {v15, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 828
    .local v11, "editBuildingKorpus":Landroid/widget/EditText;
    iget-object v15, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v20, v11

    .end local v11    # "editBuildingKorpus":Landroid/widget/EditText;
    .local v20, "editBuildingKorpus":Landroid/widget/EditText;
    const v11, 0x7f090097

    invoke-virtual {v15, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 829
    .local v11, "editApartment":Landroid/widget/EditText;
    iget-object v15, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v21, v11

    .end local v11    # "editApartment":Landroid/widget/EditText;
    .local v21, "editApartment":Landroid/widget/EditText;
    const v11, 0x7f090098

    invoke-virtual {v15, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 830
    .local v11, "editApartmentBukva":Landroid/widget/EditText;
    iget-object v15, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v22, v11

    .end local v11    # "editApartmentBukva":Landroid/widget/EditText;
    .local v22, "editApartmentBukva":Landroid/widget/EditText;
    const v11, 0x7f0900a7

    invoke-virtual {v15, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 831
    .local v11, "editPersonalAccount":Landroid/widget/EditText;
    iget-object v15, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v23, v11

    .end local v11    # "editPersonalAccount":Landroid/widget/EditText;
    .local v23, "editPersonalAccount":Landroid/widget/EditText;
    const v11, 0x7f0900b0

    invoke-virtual {v15, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 832
    .local v11, "editSeal":Landroid/widget/EditText;
    iget-object v15, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v24, v11

    .end local v11    # "editSeal":Landroid/widget/EditText;
    .local v24, "editSeal":Landroid/widget/EditText;
    const v11, 0x7f0900a8

    invoke-virtual {v15, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 833
    .local v11, "editPhoneNumber":Landroid/widget/EditText;
    iget-object v15, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v25, v11

    .end local v11    # "editPhoneNumber":Landroid/widget/EditText;
    .local v25, "editPhoneNumber":Landroid/widget/EditText;
    const v11, 0x7f0900a9

    invoke-virtual {v15, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 834
    .local v11, "editPhoneNumberDop":Landroid/widget/EditText;
    iget-object v15, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v26, v11

    .end local v11    # "editPhoneNumberDop":Landroid/widget/EditText;
    .local v26, "editPhoneNumberDop":Landroid/widget/EditText;
    const v11, 0x7f0900aa

    invoke-virtual {v15, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 835
    .local v11, "editPhoneNumberDop2":Landroid/widget/EditText;
    iget-object v15, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v27, v11

    .end local v11    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .local v27, "editPhoneNumberDop2":Landroid/widget/EditText;
    const v11, 0x7f0900a0

    invoke-virtual {v15, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 836
    .local v11, "editEmail":Landroid/widget/EditText;
    iget-object v15, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v28, v11

    .end local v11    # "editEmail":Landroid/widget/EditText;
    .local v28, "editEmail":Landroid/widget/EditText;
    const v11, 0x7f09009f

    invoke-virtual {v15, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 837
    .local v11, "editDateTime":Landroid/widget/EditText;
    iget-object v15, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v29, v11

    .end local v11    # "editDateTime":Landroid/widget/EditText;
    .local v29, "editDateTime":Landroid/widget/EditText;
    const v11, 0x7f09009d

    invoke-virtual {v15, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 838
    .local v11, "editCounterNumber":Landroid/widget/EditText;
    iget-object v15, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v30, v11

    .end local v11    # "editCounterNumber":Landroid/widget/EditText;
    .local v30, "editCounterNumber":Landroid/widget/EditText;
    const v11, 0x7f090164

    invoke-virtual {v15, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Spinner;

    .line 839
    .local v11, "spinnerServiceType":Landroid/widget/Spinner;
    iget-object v15, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v31, v11

    .end local v11    # "spinnerServiceType":Landroid/widget/Spinner;
    .local v31, "spinnerServiceType":Landroid/widget/Spinner;
    const v11, 0x7f0900a3

    invoke-virtual {v15, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 841
    .local v11, "editNote":Landroid/widget/EditText;
    const-string v15, ""

    .line 842
    .local v15, "city":Ljava/lang/String;
    const-string v32, ""

    .line 843
    .local v32, "street":Ljava/lang/String;
    const-string v33, ""

    .line 846
    .local v33, "fullAddress":Ljava/lang/String;
    move-object/from16 v34, v15

    .end local v15    # "city":Ljava/lang/String;
    .local v34, "city":Ljava/lang/String;
    :try_start_0
    new-instance v15, Ljava/io/File;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_5

    move-object/from16 v37, v11

    .end local v11    # "editNote":Landroid/widget/EditText;
    .local v37, "editNote":Landroid/widget/EditText;
    :try_start_1
    iget-object v11, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-direct {v15, v11, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v11, v15

    .line 848
    .local v11, "addressFile":Ljava/io/File;
    sget v15, Lcom/poverka/httpFileClient/activity/MainActivity;->MARKER:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4

    move-object/from16 v38, v4

    const-string v4, "%s, %s"

    if-nez v15, :cond_4

    .line 849
    :try_start_2
    invoke-virtual {v9}, Landroid/widget/EditText;->isEnabled()Z

    move-result v15

    if-nez v15, :cond_2

    .line 850
    new-instance v15, Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v39, v10

    .end local v10    # "editProtocolNumber":Landroid/widget/EditText;
    .local v39, "editProtocolNumber":Landroid/widget/EditText;
    :try_start_3
    iget-object v10, v1, Lcom/poverka/httpFileClient/activity/ClientActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-static {v10, v0}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v15

    .line 851
    .local v0, "addressJSON":Lorg/json/JSONObject;
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v1, v10}, Lcom/poverka/httpFileClient/activity/ClientActivity;->getClientInfoById(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 852
    .local v10, "taskJSON":Lorg/json/JSONObject;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_0

    const-string v15, "city_id"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v40, v0

    .end local v0    # "addressJSON":Lorg/json/JSONObject;
    .local v40, "addressJSON":Lorg/json/JSONObject;
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v15, v0, :cond_1

    .line 853
    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/poverka/httpFileClient/containers/Town;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/containers/Town;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v15, v0

    .line 854
    .end local v34    # "city":Ljava/lang/String;
    .restart local v15    # "city":Ljava/lang/String;
    :try_start_4
    invoke-virtual {v5}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/poverka/httpFileClient/containers/Address;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/containers/Address;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v32, v0

    .line 855
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    move-object/from16 v34, v15

    const/4 v15, 0x2

    .end local v15    # "city":Ljava/lang/String;
    .restart local v34    # "city":Ljava/lang/String;
    :try_start_5
    new-array v1, v15, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/poverka/httpFileClient/containers/Address;

    invoke-virtual {v15}, Lcom/poverka/httpFileClient/containers/Address;->getName()Ljava/lang/String;

    move-result-object v15

    const/16 v35, 0x0

    aput-object v15, v1, v35

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v36, 0x1

    aput-object v15, v1, v36

    invoke-static {v0, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v33, v0

    move-object/from16 v15, v34

    .end local v33    # "fullAddress":Ljava/lang/String;
    .local v0, "fullAddress":Ljava/lang/String;
    goto :goto_0

    .line 887
    .end local v0    # "fullAddress":Ljava/lang/String;
    .end local v10    # "taskJSON":Lorg/json/JSONObject;
    .end local v11    # "addressFile":Ljava/io/File;
    .end local v34    # "city":Ljava/lang/String;
    .end local v40    # "addressJSON":Lorg/json/JSONObject;
    .restart local v15    # "city":Ljava/lang/String;
    .restart local v33    # "fullAddress":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v34, v15

    .end local v15    # "city":Ljava/lang/String;
    .restart local v34    # "city":Ljava/lang/String;
    goto/16 :goto_4

    .line 852
    .local v0, "addressJSON":Lorg/json/JSONObject;
    .restart local v10    # "taskJSON":Lorg/json/JSONObject;
    .restart local v11    # "addressFile":Ljava/io/File;
    :cond_0
    move-object/from16 v40, v0

    .line 857
    .end local v0    # "addressJSON":Lorg/json/JSONObject;
    .restart local v40    # "addressJSON":Lorg/json/JSONObject;
    :cond_1
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    move-object v15, v0

    .line 858
    .end local v34    # "city":Ljava/lang/String;
    .restart local v15    # "city":Ljava/lang/String;
    :try_start_6
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v32, v0

    .line 859
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2

    move-object/from16 v33, v0

    .line 861
    .end local v10    # "taskJSON":Lorg/json/JSONObject;
    .end local v40    # "addressJSON":Lorg/json/JSONObject;
    :goto_0
    goto/16 :goto_2

    .line 862
    .end local v15    # "city":Ljava/lang/String;
    .end local v39    # "editProtocolNumber":Landroid/widget/EditText;
    .local v10, "editProtocolNumber":Landroid/widget/EditText;
    .restart local v34    # "city":Ljava/lang/String;
    :cond_2
    move-object/from16 v39, v10

    .end local v10    # "editProtocolNumber":Landroid/widget/EditText;
    .restart local v39    # "editProtocolNumber":Landroid/widget/EditText;
    const/4 v1, 0x1

    if-ne v2, v1, :cond_3

    .line 863
    const/4 v1, 0x0

    :try_start_7
    sput v1, Lcom/poverka/httpFileClient/activity/MainActivity;->MARKER:I

    .line 864
    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/poverka/httpFileClient/containers/Town;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/containers/Town;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3

    move-object v15, v0

    .line 865
    .end local v34    # "city":Ljava/lang/String;
    .restart local v15    # "city":Ljava/lang/String;
    :try_start_8
    invoke-virtual {v5}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/poverka/httpFileClient/containers/Address;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/containers/Address;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v32, v0

    .line 866
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v10, v1, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/poverka/httpFileClient/containers/Address;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/containers/Address;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v34, 0x0

    aput-object v1, v10, v34

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v34, 0x1

    aput-object v1, v10, v34

    invoke-static {v0, v4, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_2

    move-object/from16 v33, v0

    goto/16 :goto_2

    .line 867
    .end local v15    # "city":Ljava/lang/String;
    .restart local v34    # "city":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x2

    if-ne v2, v1, :cond_6

    .line 868
    const/4 v1, 0x1

    :try_start_9
    sput v1, Lcom/poverka/httpFileClient/activity/MainActivity;->MARKER:I

    .line 872
    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/poverka/httpFileClient/containers/Town;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/containers/Town;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_3

    move-object v15, v0

    .line 873
    .end local v34    # "city":Ljava/lang/String;
    .restart local v15    # "city":Ljava/lang/String;
    :try_start_a
    invoke-virtual {v5}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/poverka/httpFileClient/containers/Address;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/containers/Address;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v32, v0

    .line 874
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v10, v1, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/poverka/httpFileClient/containers/Address;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/containers/Address;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v34, 0x0

    aput-object v1, v10, v34

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v34, 0x1

    aput-object v1, v10, v34

    invoke-static {v0, v4, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_2

    move-object/from16 v33, v0

    goto :goto_2

    .line 887
    .end local v11    # "addressFile":Ljava/io/File;
    .end local v15    # "city":Ljava/lang/String;
    .end local v39    # "editProtocolNumber":Landroid/widget/EditText;
    .restart local v10    # "editProtocolNumber":Landroid/widget/EditText;
    .restart local v34    # "city":Ljava/lang/String;
    :catch_1
    move-exception v0

    goto :goto_3

    .line 877
    .restart local v11    # "addressFile":Ljava/io/File;
    :cond_4
    move-object/from16 v39, v10

    .end local v10    # "editProtocolNumber":Landroid/widget/EditText;
    .restart local v39    # "editProtocolNumber":Landroid/widget/EditText;
    :try_start_b
    sget v0, Lcom/poverka/httpFileClient/activity/MainActivity;->MARKER:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 878
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 879
    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/poverka/httpFileClient/containers/Town;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/containers/Town;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_3

    move-object v15, v0

    .line 880
    .end local v34    # "city":Ljava/lang/String;
    .restart local v15    # "city":Ljava/lang/String;
    :try_start_c
    invoke-virtual {v5}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/poverka/httpFileClient/containers/Address;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/containers/Address;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_2

    move-object/from16 v32, v0

    .end local v32    # "street":Ljava/lang/String;
    .local v0, "street":Ljava/lang/String;
    goto :goto_1

    .line 882
    .end local v0    # "street":Ljava/lang/String;
    .end local v15    # "city":Ljava/lang/String;
    .restart local v32    # "street":Ljava/lang/String;
    .restart local v34    # "city":Ljava/lang/String;
    :cond_5
    :try_start_d
    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_3

    move-object v15, v0

    .line 883
    .end local v34    # "city":Ljava/lang/String;
    .restart local v15    # "city":Ljava/lang/String;
    :try_start_e
    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v32    # "street":Ljava/lang/String;
    .restart local v0    # "street":Ljava/lang/String;
    move-object/from16 v32, v0

    .line 885
    .end local v0    # "street":Ljava/lang/String;
    .restart local v32    # "street":Ljava/lang/String;
    :goto_1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v10, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v32, v10, v1

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v34, 0x1

    aput-object v1, v10, v34

    invoke-static {v0, v4, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_2

    move-object/from16 v33, v0

    goto :goto_2

    .line 887
    .end local v11    # "addressFile":Ljava/io/File;
    :catch_2
    move-exception v0

    goto :goto_4

    .line 889
    .end local v15    # "city":Ljava/lang/String;
    .restart local v34    # "city":Ljava/lang/String;
    :cond_6
    move-object/from16 v15, v34

    .end local v34    # "city":Ljava/lang/String;
    .restart local v15    # "city":Ljava/lang/String;
    :goto_2
    move-object/from16 v1, v32

    move-object/from16 v4, v33

    goto :goto_5

    .line 887
    .end local v15    # "city":Ljava/lang/String;
    .restart local v34    # "city":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object/from16 v15, v34

    goto :goto_4

    .end local v39    # "editProtocolNumber":Landroid/widget/EditText;
    .restart local v10    # "editProtocolNumber":Landroid/widget/EditText;
    :catch_4
    move-exception v0

    move-object/from16 v38, v4

    :goto_3
    move-object/from16 v39, v10

    move-object/from16 v15, v34

    .end local v10    # "editProtocolNumber":Landroid/widget/EditText;
    .restart local v39    # "editProtocolNumber":Landroid/widget/EditText;
    goto :goto_4

    .end local v37    # "editNote":Landroid/widget/EditText;
    .end local v39    # "editProtocolNumber":Landroid/widget/EditText;
    .restart local v10    # "editProtocolNumber":Landroid/widget/EditText;
    .local v11, "editNote":Landroid/widget/EditText;
    :catch_5
    move-exception v0

    move-object/from16 v38, v4

    move-object/from16 v39, v10

    move-object/from16 v37, v11

    move-object/from16 v15, v34

    .line 888
    .end local v10    # "editProtocolNumber":Landroid/widget/EditText;
    .end local v11    # "editNote":Landroid/widget/EditText;
    .end local v34    # "city":Ljava/lang/String;
    .local v0, "e":Lorg/json/JSONException;
    .restart local v15    # "city":Ljava/lang/String;
    .restart local v37    # "editNote":Landroid/widget/EditText;
    .restart local v39    # "editProtocolNumber":Landroid/widget/EditText;
    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object/from16 v1, v32

    move-object/from16 v4, v33

    .line 892
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v32    # "street":Ljava/lang/String;
    .end local v33    # "fullAddress":Ljava/lang/String;
    .local v1, "street":Ljava/lang/String;
    .local v4, "fullAddress":Ljava/lang/String;
    :goto_5
    :try_start_f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v10, v0

    .line 893
    .local v10, "clientInfo":Lorg/json/JSONObject;
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_f

    const-string v11, "ID"

    if-eqz v0, :cond_7

    .line 894
    const/4 v0, -0x1

    :try_start_10
    invoke-virtual {v10, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_6

    goto :goto_6

    .line 976
    .end local v10    # "clientInfo":Lorg/json/JSONObject;
    :catch_6
    move-exception v0

    move-object/from16 v2, p0

    move/from16 v3, p2

    move-object/from16 v17, v1

    move-object/from16 v34, v4

    move-object/from16 v32, v5

    goto/16 :goto_19

    .line 896
    .restart local v10    # "clientInfo":Lorg/json/JSONObject;
    :cond_7
    :try_start_11
    sget v0, Lcom/poverka/httpFileClient/activity/MainActivity;->MARKER:I
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_f

    if-nez v0, :cond_8

    .line 897
    :try_start_12
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_6

    goto :goto_6

    .line 898
    :cond_8
    :try_start_13
    sget v0, Lcom/poverka/httpFileClient/activity/MainActivity;->MARKER:I
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_f

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    .line 899
    :try_start_14
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_6

    .line 902
    :cond_9
    :goto_6
    :try_start_15
    const-string v0, "INTERNAL_ID"

    invoke-virtual/range {v39 .. v39}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_f

    move-object/from16 v32, v5

    move-object/from16 v5, v38

    .end local v5    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .local v32, "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    :try_start_16
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/16 v33, 0x1

    aget-object v2, v2, v33

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 903
    const-string v0, "PROTOCOL_NUMBER"

    invoke-virtual/range {v39 .. v39}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 904
    const-string v0, "SURNAME"

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_e

    .line 907
    :try_start_17
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 908
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_8
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_17} :catch_7

    .line 912
    goto :goto_7

    .line 976
    .end local v10    # "clientInfo":Lorg/json/JSONObject;
    :catch_7
    move-exception v0

    move-object/from16 v2, p0

    move/from16 v3, p2

    move-object/from16 v17, v1

    move-object/from16 v34, v4

    goto/16 :goto_19

    .line 909
    .restart local v10    # "clientInfo":Lorg/json/JSONObject;
    :catch_8
    move-exception v0

    .line 910
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_18
    invoke-virtual {v10, v7, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 911
    invoke-virtual {v10, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 914
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_7
    const-string v0, "BUILDING"

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v6, v17

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_18} :catch_e

    if-eqz v2, :cond_a

    :try_start_19
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_19} :catch_7

    goto :goto_8

    :cond_a
    :try_start_1a
    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_8
    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 915
    const-string v0, "BUILDING_BUKVA"

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_1a} :catch_e

    if-eqz v2, :cond_b

    :try_start_1b
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_1b} :catch_7

    goto :goto_9

    :cond_b
    :try_start_1c
    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_9
    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 916
    const-string v0, "BUILDING_KORPUS"

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_1c} :catch_e

    if-eqz v2, :cond_c

    :try_start_1d
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_1d} :catch_7

    goto :goto_a

    :cond_c
    :try_start_1e
    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_a
    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 917
    const-string v0, "APARTMENT"

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_1e} :catch_e

    if-eqz v2, :cond_d

    :try_start_1f
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_1f} :catch_7

    goto :goto_b

    :cond_d
    :try_start_20
    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_b
    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 918
    const-string v0, "APARTMENT_BUKVA"

    invoke-virtual/range {v22 .. v22}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_20} :catch_e

    if-eqz v2, :cond_e

    :try_start_21
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_21} :catch_7

    goto :goto_c

    :cond_e
    :try_start_22
    invoke-virtual/range {v22 .. v22}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_c
    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 919
    invoke-virtual {v10, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 922
    const-string v0, "SEAL_NUMBER"

    invoke-virtual/range {v24 .. v24}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_22} :catch_e

    if-eqz v2, :cond_f

    :try_start_23
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_23} :catch_7

    goto :goto_d

    :cond_f
    :try_start_24
    invoke-virtual/range {v24 .. v24}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_d
    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 923
    const-string v0, "PHONE_NUMBER"

    invoke-virtual/range {v25 .. v25}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_24} :catch_e

    if-eqz v2, :cond_10

    :try_start_25
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_25} :catch_7

    goto :goto_e

    :cond_10
    :try_start_26
    invoke-virtual/range {v25 .. v25}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_e
    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 924
    const-string v0, "PHONE_NUMBER_DOP"

    invoke-virtual/range {v26 .. v26}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_26} :catch_e

    if-eqz v2, :cond_11

    :try_start_27
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_27} :catch_7

    goto :goto_f

    :cond_11
    :try_start_28
    invoke-virtual/range {v26 .. v26}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_f
    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 925
    const-string v0, "PHONE_NUMBER_DOP2"

    invoke-virtual/range {v27 .. v27}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_28} :catch_e

    if-eqz v2, :cond_12

    :try_start_29
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_29} :catch_7

    goto :goto_10

    :cond_12
    :try_start_2a
    invoke-virtual/range {v27 .. v27}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_10
    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 926
    const-string v0, "E_MAIL"

    invoke-virtual/range {v28 .. v28}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_2a} :catch_e

    if-eqz v2, :cond_13

    :try_start_2b
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_2b} :catch_7

    goto :goto_11

    :cond_13
    :try_start_2c
    invoke-virtual/range {v28 .. v28}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_11
    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 927
    const-string v0, "PROTOCOL_DATE"

    invoke-virtual/range {v29 .. v29}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v16

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    aget-object v2, v2, v6

    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 928
    const-string v0, "PROTOCOL_TIME"

    invoke-virtual/range {v29 .. v29}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    aget-object v2, v2, v6

    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 929
    const-string v0, "COUNTER_NUMBER"

    invoke-virtual/range {v30 .. v30}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 930
    const-string v0, "SERVICE_TYPE"

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v6, 0x1

    add-int/2addr v2, v6

    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 931
    const-string v0, "NOTE"

    invoke-virtual/range {v37 .. v37}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 932
    const-string v0, "Z_NOMER"

    invoke-virtual/range {v39 .. v39}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    aget-object v2, v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 934
    new-instance v0, Ljava/io/File;
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_2c .. :try_end_2c} :catch_e

    move-object/from16 v2, p0

    :try_start_2d
    iget-object v5, v2, Lcom/poverka/httpFileClient/activity/ClientActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "client.json"

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 935
    .local v0, "client":Ljava/io/File;
    iget-object v5, v2, Lcom/poverka/httpFileClient/activity/ClientActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/poverka/httpFileClient/util/MyFileReader;->writeInternalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    sget v5, Lcom/poverka/httpFileClient/activity/MainActivity;->MARKER:I
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_2d} :catch_d

    if-nez v5, :cond_18

    .line 938
    const/4 v5, 0x0

    .line 939
    .local v5, "task":Lcom/poverka/httpFileClient/containers/Task;
    :try_start_2e
    new-instance v6, Ljava/io/File;

    iget-object v7, v2, Lcom/poverka/httpFileClient/activity/ClientActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v7

    move-object/from16 v16, v0

    .end local v0    # "client":Ljava/io/File;
    .local v16, "client":Ljava/io/File;
    const-string v0, "localTasks.json"

    invoke-direct {v6, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v6

    .line 940
    .local v0, "localTasks":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_17

    .line 941
    new-instance v6, Lorg/json/JSONArray;

    iget-object v7, v2, Lcom/poverka/httpFileClient/activity/ClientActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v7
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_2e} :catch_a

    move-object/from16 v17, v1

    .end local v1    # "street":Ljava/lang/String;
    .local v17, "street":Ljava/lang/String;
    :try_start_2f
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object v1, v6

    .line 942
    .local v1, "localTasksJSON":Lorg/json/JSONArray;
    invoke-virtual {v9}, Landroid/widget/EditText;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_16

    .line 943
    const/4 v6, 0x0

    .local v6, "localInd":I
    :goto_12
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_15

    .line 944
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v33
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_2f} :catch_9

    move-object/from16 v34, v4

    .end local v4    # "fullAddress":Ljava/lang/String;
    .local v34, "fullAddress":Ljava/lang/String;
    :try_start_30
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v7, v4, :cond_14

    .line 945
    new-instance v4, Lcom/poverka/httpFileClient/containers/Task;

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/poverka/httpFileClient/containers/Task;-><init>(Lorg/json/JSONObject;)V

    .line 946
    .end local v5    # "task":Lcom/poverka/httpFileClient/containers/Task;
    .local v4, "task":Lcom/poverka/httpFileClient/containers/Task;
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    .line 947
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v6, v5

    move-object v5, v4

    .line 943
    .end local v4    # "task":Lcom/poverka/httpFileClient/containers/Task;
    .restart local v5    # "task":Lcom/poverka/httpFileClient/containers/Task;
    :cond_14
    const/4 v4, 0x1

    add-int/2addr v6, v4

    move-object/from16 v4, v34

    goto :goto_12

    .end local v34    # "fullAddress":Ljava/lang/String;
    .local v4, "fullAddress":Ljava/lang/String;
    :cond_15
    move-object/from16 v34, v4

    .end local v4    # "fullAddress":Ljava/lang/String;
    .end local v6    # "localInd":I
    .restart local v34    # "fullAddress":Ljava/lang/String;
    goto :goto_13

    .line 951
    .end local v34    # "fullAddress":Ljava/lang/String;
    .restart local v4    # "fullAddress":Ljava/lang/String;
    :cond_16
    move-object/from16 v34, v4

    .end local v4    # "fullAddress":Ljava/lang/String;
    .restart local v34    # "fullAddress":Ljava/lang/String;
    new-instance v4, Lcom/poverka/httpFileClient/containers/Task;

    invoke-direct {v4, v10}, Lcom/poverka/httpFileClient/containers/Task;-><init>(Lorg/json/JSONObject;)V

    move-object v5, v4

    .line 954
    :goto_13
    invoke-virtual/range {v29 .. v29}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v6, "%s-%02d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual/range {v39 .. v39}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v33, 0x0

    aput-object v11, v7, v33

    iget v11, v2, Lcom/poverka/httpFileClient/activity/ClientActivity;->todayVerificationNumber:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v33, 0x1

    aput-object v11, v7, v33

    invoke-static {v4, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 955
    invoke-virtual/range {v30 .. v30}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 954
    invoke-virtual {v5, v3, v4, v6}, Lcom/poverka/httpFileClient/containers/Task;->setProtocol(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    invoke-virtual {v5}, Lcom/poverka/httpFileClient/containers/Task;->toJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 957
    iget-object v3, v2, Lcom/poverka/httpFileClient/activity/ClientActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v6}, Lcom/poverka/httpFileClient/util/MyFileReader;->writeInternalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 976
    .end local v0    # "localTasks":Ljava/io/File;
    .end local v1    # "localTasksJSON":Lorg/json/JSONArray;
    .end local v5    # "task":Lcom/poverka/httpFileClient/containers/Task;
    .end local v10    # "clientInfo":Lorg/json/JSONObject;
    .end local v16    # "client":Ljava/io/File;
    .end local v34    # "fullAddress":Ljava/lang/String;
    .restart local v4    # "fullAddress":Ljava/lang/String;
    :catch_9
    move-exception v0

    move-object/from16 v34, v4

    move/from16 v3, p2

    .end local v4    # "fullAddress":Ljava/lang/String;
    .restart local v34    # "fullAddress":Ljava/lang/String;
    goto/16 :goto_19

    .line 940
    .end local v17    # "street":Ljava/lang/String;
    .end local v34    # "fullAddress":Ljava/lang/String;
    .restart local v0    # "localTasks":Ljava/io/File;
    .local v1, "street":Ljava/lang/String;
    .restart local v4    # "fullAddress":Ljava/lang/String;
    .restart local v5    # "task":Lcom/poverka/httpFileClient/containers/Task;
    .restart local v10    # "clientInfo":Lorg/json/JSONObject;
    .restart local v16    # "client":Ljava/io/File;
    :cond_17
    move-object/from16 v17, v1

    move-object/from16 v34, v4

    .end local v1    # "street":Ljava/lang/String;
    .end local v4    # "fullAddress":Ljava/lang/String;
    .restart local v17    # "street":Ljava/lang/String;
    .restart local v34    # "fullAddress":Ljava/lang/String;
    goto :goto_14

    .line 976
    .end local v0    # "localTasks":Ljava/io/File;
    .end local v5    # "task":Lcom/poverka/httpFileClient/containers/Task;
    .end local v10    # "clientInfo":Lorg/json/JSONObject;
    .end local v16    # "client":Ljava/io/File;
    .end local v17    # "street":Ljava/lang/String;
    .end local v34    # "fullAddress":Ljava/lang/String;
    .restart local v1    # "street":Ljava/lang/String;
    .restart local v4    # "fullAddress":Ljava/lang/String;
    :catch_a
    move-exception v0

    move-object/from16 v17, v1

    move-object/from16 v34, v4

    move/from16 v3, p2

    goto/16 :goto_18

    .line 937
    .local v0, "client":Ljava/io/File;
    .restart local v10    # "clientInfo":Lorg/json/JSONObject;
    :cond_18
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v34, v4

    .line 961
    .end local v0    # "client":Ljava/io/File;
    .end local v1    # "street":Ljava/lang/String;
    .end local v4    # "fullAddress":Ljava/lang/String;
    .restart local v16    # "client":Ljava/io/File;
    .restart local v17    # "street":Ljava/lang/String;
    .restart local v34    # "fullAddress":Ljava/lang/String;
    :goto_14
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 962
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "delay_sleep"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 963
    const-string v1, "clientInfo"

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    sget v1, Lcom/poverka/httpFileClient/activity/MainActivity;->MARKER:I
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_30} :catch_c

    const-string v3, "id"

    if-nez v1, :cond_1a

    .line 965
    :try_start_31
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "-1"

    goto :goto_15

    :cond_19
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_15
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 967
    :cond_1a
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    :goto_16
    const-string v1, "service_type"

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 970
    const-string v1, "personal_account"

    invoke-virtual/range {v23 .. v23}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    const-string v1, "payment_account"
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_31} :catch_c

    move/from16 v3, p2

    :try_start_32
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 972
    iget-object v1, v2, Lcom/poverka/httpFileClient/activity/ClientActivity;->resultListener:Lcom/poverka/httpFileClient/activity/ClientActivity$OnClientResult;

    invoke-interface {v1, v0}, Lcom/poverka/httpFileClient/activity/ClientActivity$OnClientResult;->clientResult(Landroid/os/Bundle;)V

    .line 973
    invoke-direct/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/ClientActivity;->stopSleepTimer()V

    .line 974
    iget-object v1, v2, Lcom/poverka/httpFileClient/activity/ClientActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_32 .. :try_end_32} :catch_b

    .line 979
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v10    # "clientInfo":Lorg/json/JSONObject;
    .end local v16    # "client":Ljava/io/File;
    goto :goto_1a

    .line 976
    :catch_b
    move-exception v0

    goto :goto_19

    :catch_c
    move-exception v0

    move/from16 v3, p2

    goto :goto_19

    .end local v17    # "street":Ljava/lang/String;
    .end local v34    # "fullAddress":Ljava/lang/String;
    .restart local v1    # "street":Ljava/lang/String;
    .restart local v4    # "fullAddress":Ljava/lang/String;
    :catch_d
    move-exception v0

    goto :goto_17

    :catch_e
    move-exception v0

    move-object/from16 v2, p0

    :goto_17
    move/from16 v3, p2

    move-object/from16 v17, v1

    move-object/from16 v34, v4

    .end local v1    # "street":Ljava/lang/String;
    .end local v4    # "fullAddress":Ljava/lang/String;
    .restart local v17    # "street":Ljava/lang/String;
    .restart local v34    # "fullAddress":Ljava/lang/String;
    :goto_18
    goto :goto_19

    .end local v17    # "street":Ljava/lang/String;
    .end local v32    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .end local v34    # "fullAddress":Ljava/lang/String;
    .restart local v1    # "street":Ljava/lang/String;
    .restart local v4    # "fullAddress":Ljava/lang/String;
    .local v5, "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    :catch_f
    move-exception v0

    move-object/from16 v2, p0

    move/from16 v3, p2

    move-object/from16 v17, v1

    move-object/from16 v34, v4

    move-object/from16 v32, v5

    .line 977
    .end local v1    # "street":Ljava/lang/String;
    .end local v4    # "fullAddress":Ljava/lang/String;
    .end local v5    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .local v0, "e":Lorg/json/JSONException;
    .restart local v17    # "street":Ljava/lang/String;
    .restart local v32    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .restart local v34    # "fullAddress":Ljava/lang/String;
    :goto_19
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 978
    iget-object v1, v2, Lcom/poverka/httpFileClient/activity/ClientActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const-string v6, "Client save"

    invoke-static {v1, v6, v4, v5}, Lcom/poverka/httpFileClient/util/MyFileReader;->appendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    .line 980
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1a
    return-void
.end method

.method private stopSleepTimer()V
    .locals 1

    .line 1020
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ClientActivity;->sleepTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1021
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1022
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ClientActivity;->sleepTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1024
    :cond_0
    return-void
.end method

.method private uiStuff(Ljava/lang/String;)V
    .locals 103
    .param p1, "id"    # Ljava/lang/String;

    .line 89
    move-object/from16 v9, p0

    const-string v0, "address.json"

    const v10, 0x3e0f5c29    # 0.14f

    .line 90
    .local v10, "BUTTON_HEIGHT_RATIO":F
    const v11, 0x3ecccccd    # 0.4f

    .line 91
    .local v11, "BUTTON_WIDTH_RATIO":F
    const v12, 0x3d8f5c29    # 0.07f

    .line 92
    .local v12, "TEXT_L_HEIGHT_RATIO":F
    const v13, 0x3d4ccccd    # 0.05f

    .line 93
    .local v13, "TEXT_S_HEIGHT_RATIO":F
    const v14, 0x3ca3d70a    # 0.02f

    .line 95
    .local v14, "MARGIN_HEIGHT_RATIO":F
    iget-object v1, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v2, 0x7f0900a1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/widget/EditText;

    .line 96
    .local v15, "editIdNumber":Landroid/widget/EditText;
    iget-object v1, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v2, 0x7f0900a5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/EditText;

    .line 97
    .local v8, "editPaymentAccount":Landroid/widget/EditText;
    iget-object v1, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v2, 0x7f0900ab

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/EditText;

    .line 98
    .local v7, "editProtocolNumber":Landroid/widget/EditText;
    iget-object v1, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v2, 0x7f09009d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/EditText;

    .line 99
    .local v6, "editCounterNumber":Landroid/widget/EditText;
    iget-object v1, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v2, 0x7f09009f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/EditText;

    .line 100
    .local v4, "editDateTime":Landroid/widget/EditText;
    iget-object v1, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v2, 0x7f090164

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/Spinner;

    .line 101
    .local v3, "spinnerServiceType":Landroid/widget/Spinner;
    iget-object v1, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v2, 0x7f0900b3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/widget/EditText;

    .line 102
    .local v2, "editSurname":Landroid/widget/EditText;
    iget-object v1, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v5, 0x7f09009c

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 103
    .local v1, "editCity":Landroid/widget/EditText;
    iget-object v5, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v16, v1

    .end local v1    # "editCity":Landroid/widget/EditText;
    .local v16, "editCity":Landroid/widget/EditText;
    const v1, 0x7f09015e

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 104
    .local v1, "spinnerCity":Landroid/widget/Spinner;
    iget-object v5, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v17, v1

    .end local v1    # "spinnerCity":Landroid/widget/Spinner;
    .local v17, "spinnerCity":Landroid/widget/Spinner;
    const v1, 0x7f0900b2

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 105
    .local v1, "editStreet":Landroid/widget/EditText;
    iget-object v5, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v18, v1

    .end local v1    # "editStreet":Landroid/widget/EditText;
    .local v18, "editStreet":Landroid/widget/EditText;
    const v1, 0x7f090165

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;

    .line 106
    .local v1, "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    iget-object v5, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v19, v1

    .end local v1    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .local v19, "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    const v1, 0x7f090099

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 107
    .local v1, "editBuilding":Landroid/widget/EditText;
    iget-object v5, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v20, v1

    .end local v1    # "editBuilding":Landroid/widget/EditText;
    .local v20, "editBuilding":Landroid/widget/EditText;
    const v1, 0x7f09009a

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 108
    .local v1, "editBuildingBukva":Landroid/widget/EditText;
    iget-object v5, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v21, v1

    .end local v1    # "editBuildingBukva":Landroid/widget/EditText;
    .local v21, "editBuildingBukva":Landroid/widget/EditText;
    const v1, 0x7f09009b

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 109
    .local v1, "editBuildingKorpus":Landroid/widget/EditText;
    iget-object v5, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v22, v1

    .end local v1    # "editBuildingKorpus":Landroid/widget/EditText;
    .local v22, "editBuildingKorpus":Landroid/widget/EditText;
    const v1, 0x7f090097

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 110
    .local v1, "editApartment":Landroid/widget/EditText;
    iget-object v5, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v23, v1

    .end local v1    # "editApartment":Landroid/widget/EditText;
    .local v23, "editApartment":Landroid/widget/EditText;
    const v1, 0x7f090098

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 111
    .local v1, "editApartmentBukva":Landroid/widget/EditText;
    iget-object v5, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v24, v1

    .end local v1    # "editApartmentBukva":Landroid/widget/EditText;
    .local v24, "editApartmentBukva":Landroid/widget/EditText;
    const v1, 0x7f0900a7

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 112
    .local v1, "editPersonalAccount":Landroid/widget/EditText;
    iget-object v5, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v25, v1

    .end local v1    # "editPersonalAccount":Landroid/widget/EditText;
    .local v25, "editPersonalAccount":Landroid/widget/EditText;
    const v1, 0x7f0900b0

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 113
    .local v1, "editSeal":Landroid/widget/EditText;
    iget-object v5, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v26, v1

    .end local v1    # "editSeal":Landroid/widget/EditText;
    .local v26, "editSeal":Landroid/widget/EditText;
    const v1, 0x7f0900a8

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 114
    .local v1, "editPhoneNumber":Landroid/widget/EditText;
    iget-object v5, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v27, v1

    .end local v1    # "editPhoneNumber":Landroid/widget/EditText;
    .local v27, "editPhoneNumber":Landroid/widget/EditText;
    const v1, 0x7f0900a9

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 115
    .local v1, "editPhoneNumberDop":Landroid/widget/EditText;
    iget-object v5, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v28, v1

    .end local v1    # "editPhoneNumberDop":Landroid/widget/EditText;
    .local v28, "editPhoneNumberDop":Landroid/widget/EditText;
    const v1, 0x7f0900aa

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 116
    .local v1, "editPhoneNumberDop2":Landroid/widget/EditText;
    iget-object v5, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v29, v1

    .end local v1    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .local v29, "editPhoneNumberDop2":Landroid/widget/EditText;
    const v1, 0x7f0900a0

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 117
    .local v1, "editEmail":Landroid/widget/EditText;
    iget-object v5, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v30, v1

    .end local v1    # "editEmail":Landroid/widget/EditText;
    .local v30, "editEmail":Landroid/widget/EditText;
    const v1, 0x7f0900a3

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 119
    .local v1, "editNote":Landroid/widget/EditText;
    iget-object v5, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v31, v1

    .end local v1    # "editNote":Landroid/widget/EditText;
    .local v31, "editNote":Landroid/widget/EditText;
    const v1, 0x7f09019b

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 120
    .local v1, "textIdNumber":Landroid/widget/TextView;
    iget-object v5, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v32, v1

    .end local v1    # "textIdNumber":Landroid/widget/TextView;
    .local v32, "textIdNumber":Landroid/widget/TextView;
    const v1, 0x7f0901a2

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 121
    .local v1, "textPaymentAccount":Landroid/widget/TextView;
    iget-object v5, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v33, v1

    .end local v1    # "textPaymentAccount":Landroid/widget/TextView;
    .local v33, "textPaymentAccount":Landroid/widget/TextView;
    const v1, 0x7f0901a6

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 122
    .local v1, "textProtocolNumber":Landroid/widget/TextView;
    iget-object v5, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v34, v1

    .end local v1    # "textProtocolNumber":Landroid/widget/TextView;
    .local v34, "textProtocolNumber":Landroid/widget/TextView;
    const v1, 0x7f090191

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 123
    .local v1, "textCounterNumber":Landroid/widget/TextView;
    iget-object v5, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v35, v1

    .end local v1    # "textCounterNumber":Landroid/widget/TextView;
    .local v35, "textCounterNumber":Landroid/widget/TextView;
    const v1, 0x7f090194

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 124
    .local v1, "textDateTime":Landroid/widget/TextView;
    iget-object v5, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v36, v1

    .end local v1    # "textDateTime":Landroid/widget/TextView;
    .local v36, "textDateTime":Landroid/widget/TextView;
    const v1, 0x7f0901af

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 125
    .local v1, "textServiceType":Landroid/widget/TextView;
    iget-object v5, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v37, v1

    .end local v1    # "textServiceType":Landroid/widget/TextView;
    .local v37, "textServiceType":Landroid/widget/TextView;
    const v1, 0x7f0901b6

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 126
    .local v1, "textSurname":Landroid/widget/TextView;
    iget-object v5, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v38, v1

    .end local v1    # "textSurname":Landroid/widget/TextView;
    .local v38, "textSurname":Landroid/widget/TextView;
    const v1, 0x7f0901b4

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 127
    .local v1, "textCity":Landroid/widget/TextView;
    iget-object v5, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v39, v1

    .end local v1    # "textCity":Landroid/widget/TextView;
    .local v39, "textCity":Landroid/widget/TextView;
    const v1, 0x7f0901b5

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 128
    .local v1, "textStreet":Landroid/widget/TextView;
    iget-object v5, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v40, v1

    .end local v1    # "textStreet":Landroid/widget/TextView;
    .local v40, "textStreet":Landroid/widget/TextView;
    const v1, 0x7f090190

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 129
    .local v1, "textBuilding":Landroid/widget/TextView;
    iget-object v5, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v41, v1

    .end local v1    # "textBuilding":Landroid/widget/TextView;
    .local v41, "textBuilding":Landroid/widget/TextView;
    const v1, 0x7f09018e

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 130
    .local v1, "textApartment":Landroid/widget/TextView;
    iget-object v5, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v42, v1

    .end local v1    # "textApartment":Landroid/widget/TextView;
    .local v42, "textApartment":Landroid/widget/TextView;
    const v1, 0x7f0901a4

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 131
    .local v1, "textPersonalAccount":Landroid/widget/TextView;
    iget-object v5, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v43, v1

    .end local v1    # "textPersonalAccount":Landroid/widget/TextView;
    .local v43, "textPersonalAccount":Landroid/widget/TextView;
    const v1, 0x7f0901aa

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 132
    .local v1, "textSeal":Landroid/widget/TextView;
    iget-object v5, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v44, v1

    .end local v1    # "textSeal":Landroid/widget/TextView;
    .local v44, "textSeal":Landroid/widget/TextView;
    const v1, 0x7f0901a5

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 133
    .local v1, "textPhoneNumber":Landroid/widget/TextView;
    iget-object v5, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v45, v1

    .end local v1    # "textPhoneNumber":Landroid/widget/TextView;
    .local v45, "textPhoneNumber":Landroid/widget/TextView;
    const v1, 0x7f090196

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 134
    .local v1, "textEmail":Landroid/widget/TextView;
    iget-object v5, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v46, v1

    .end local v1    # "textEmail":Landroid/widget/TextView;
    .local v46, "textEmail":Landroid/widget/TextView;
    const v1, 0x7f0901a0

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 136
    .local v1, "textNote":Landroid/widget/TextView;
    iget-object v5, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v47, v1

    .end local v1    # "textNote":Landroid/widget/TextView;
    .local v47, "textNote":Landroid/widget/TextView;
    const v1, 0x7f0900dd

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v48, v1

    check-cast v48, Landroid/widget/ImageButton;

    .line 137
    .local v48, "imageQR":Landroid/widget/ImageButton;
    iget-object v1, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v5, 0x7f090064

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 138
    .local v1, "buttonShowMore":Landroid/widget/Button;
    iget-object v5, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v49, v1

    .end local v1    # "buttonShowMore":Landroid/widget/Button;
    .local v49, "buttonShowMore":Landroid/widget/Button;
    const v1, 0x7f090052

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 139
    .local v1, "buttonRepeat":Landroid/widget/Button;
    iget-object v5, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    move-object/from16 v50, v1

    .end local v1    # "buttonRepeat":Landroid/widget/Button;
    .local v50, "buttonRepeat":Landroid/widget/Button;
    const v1, 0x7f090055

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 141
    .local v1, "buttonSave":Landroid/widget/Button;
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 142
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v51, v1

    .end local v1    # "buttonSave":Landroid/widget/Button;
    .local v51, "buttonSave":Landroid/widget/Button;
    iget-object v1, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 144
    iget v1, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 145
    .local v1, "screenHeight":I
    move-object/from16 v52, v4

    .end local v4    # "editDateTime":Landroid/widget/EditText;
    .local v52, "editDateTime":Landroid/widget/EditText;
    iget v4, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 146
    .local v4, "screenWidth":I
    move-object/from16 v53, v2

    .end local v2    # "editSurname":Landroid/widget/EditText;
    .local v53, "editSurname":Landroid/widget/EditText;
    int-to-float v2, v1

    const v54, 0x3e0f5c29    # 0.14f

    mul-float v2, v2, v54

    float-to-int v2, v2

    .line 147
    .local v2, "buttonHeight":I
    move/from16 v54, v2

    .end local v2    # "buttonHeight":I
    .local v54, "buttonHeight":I
    int-to-float v2, v4

    const v55, 0x3ecccccd    # 0.4f

    mul-float v2, v2, v55

    float-to-int v2, v2

    .line 148
    .local v2, "buttonWidth":I
    move/from16 v55, v2

    .end local v2    # "buttonWidth":I
    .local v55, "buttonWidth":I
    int-to-float v2, v1

    const v56, 0x3d8f5c29    # 0.07f

    mul-float v2, v2, v56

    float-to-int v2, v2

    .line 149
    .local v2, "textLHeight":I
    move/from16 v56, v2

    .end local v2    # "textLHeight":I
    .local v56, "textLHeight":I
    int-to-float v2, v1

    const v57, 0x3d4ccccd    # 0.05f

    mul-float v2, v2, v57

    float-to-int v2, v2

    .line 150
    .local v2, "textSHeight":I
    move/from16 v57, v2

    .end local v2    # "textSHeight":I
    .local v57, "textSHeight":I
    int-to-float v2, v1

    const v58, 0x3ca3d70a    # 0.02f

    mul-float v2, v2, v58

    float-to-int v2, v2

    .line 152
    .local v2, "marginHeight":I
    move/from16 v58, v1

    .end local v1    # "screenHeight":I
    .local v58, "screenHeight":I
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    move/from16 v59, v2

    .end local v2    # "marginHeight":I
    .local v59, "marginHeight":I
    iget-object v2, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->activity:Landroid/app/Activity;

    move-object/from16 v60, v3

    .end local v3    # "spinnerServiceType":Landroid/widget/Spinner;
    .local v60, "spinnerServiceType":Landroid/widget/Spinner;
    const v3, 0x7f0f01b0

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->activity:Landroid/app/Activity;

    const v3, 0x7f0f01b1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    move-object/from16 v61, v5

    .end local v5    # "metrics":Landroid/util/DisplayMetrics;
    .local v61, "metrics":Landroid/util/DisplayMetrics;
    move-object v5, v1

    .line 153
    .local v5, "types":[Ljava/lang/String;
    new-instance v62, Lcom/poverka/httpFileClient/activity/ClientActivity$1;

    iget-object v2, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->activity:Landroid/app/Activity;

    const v63, 0x7f0c005f

    move-object/from16 v64, v16

    move-object/from16 v65, v17

    move-object/from16 v66, v18

    move-object/from16 v67, v19

    move-object/from16 v68, v20

    move-object/from16 v69, v21

    move-object/from16 v70, v22

    move-object/from16 v71, v23

    move-object/from16 v72, v24

    move-object/from16 v73, v25

    move-object/from16 v74, v26

    move-object/from16 v75, v27

    move-object/from16 v76, v28

    move-object/from16 v77, v29

    move-object/from16 v78, v30

    move-object/from16 v79, v31

    move-object/from16 v80, v32

    move-object/from16 v81, v33

    move-object/from16 v82, v34

    move-object/from16 v83, v35

    move-object/from16 v84, v36

    move-object/from16 v85, v37

    move-object/from16 v86, v38

    move-object/from16 v87, v39

    move-object/from16 v88, v40

    move-object/from16 v89, v41

    move-object/from16 v90, v42

    move-object/from16 v91, v43

    move-object/from16 v92, v44

    move-object/from16 v93, v45

    move-object/from16 v94, v46

    move-object/from16 v95, v47

    move/from16 v16, v58

    .end local v17    # "spinnerCity":Landroid/widget/Spinner;
    .end local v18    # "editStreet":Landroid/widget/EditText;
    .end local v19    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .end local v20    # "editBuilding":Landroid/widget/EditText;
    .end local v21    # "editBuildingBukva":Landroid/widget/EditText;
    .end local v22    # "editBuildingKorpus":Landroid/widget/EditText;
    .end local v23    # "editApartment":Landroid/widget/EditText;
    .end local v24    # "editApartmentBukva":Landroid/widget/EditText;
    .end local v25    # "editPersonalAccount":Landroid/widget/EditText;
    .end local v26    # "editSeal":Landroid/widget/EditText;
    .end local v27    # "editPhoneNumber":Landroid/widget/EditText;
    .end local v28    # "editPhoneNumberDop":Landroid/widget/EditText;
    .end local v29    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .end local v30    # "editEmail":Landroid/widget/EditText;
    .end local v31    # "editNote":Landroid/widget/EditText;
    .end local v32    # "textIdNumber":Landroid/widget/TextView;
    .end local v33    # "textPaymentAccount":Landroid/widget/TextView;
    .end local v34    # "textProtocolNumber":Landroid/widget/TextView;
    .end local v35    # "textCounterNumber":Landroid/widget/TextView;
    .end local v36    # "textDateTime":Landroid/widget/TextView;
    .end local v37    # "textServiceType":Landroid/widget/TextView;
    .end local v38    # "textSurname":Landroid/widget/TextView;
    .end local v39    # "textCity":Landroid/widget/TextView;
    .end local v40    # "textStreet":Landroid/widget/TextView;
    .end local v41    # "textBuilding":Landroid/widget/TextView;
    .end local v42    # "textApartment":Landroid/widget/TextView;
    .end local v43    # "textPersonalAccount":Landroid/widget/TextView;
    .end local v44    # "textSeal":Landroid/widget/TextView;
    .end local v45    # "textPhoneNumber":Landroid/widget/TextView;
    .end local v46    # "textEmail":Landroid/widget/TextView;
    .end local v47    # "textNote":Landroid/widget/TextView;
    .end local v58    # "screenHeight":I
    .local v16, "screenHeight":I
    .local v64, "editCity":Landroid/widget/EditText;
    .local v65, "spinnerCity":Landroid/widget/Spinner;
    .local v66, "editStreet":Landroid/widget/EditText;
    .local v67, "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .local v68, "editBuilding":Landroid/widget/EditText;
    .local v69, "editBuildingBukva":Landroid/widget/EditText;
    .local v70, "editBuildingKorpus":Landroid/widget/EditText;
    .local v71, "editApartment":Landroid/widget/EditText;
    .local v72, "editApartmentBukva":Landroid/widget/EditText;
    .local v73, "editPersonalAccount":Landroid/widget/EditText;
    .local v74, "editSeal":Landroid/widget/EditText;
    .local v75, "editPhoneNumber":Landroid/widget/EditText;
    .local v76, "editPhoneNumberDop":Landroid/widget/EditText;
    .local v77, "editPhoneNumberDop2":Landroid/widget/EditText;
    .local v78, "editEmail":Landroid/widget/EditText;
    .local v79, "editNote":Landroid/widget/EditText;
    .local v80, "textIdNumber":Landroid/widget/TextView;
    .local v81, "textPaymentAccount":Landroid/widget/TextView;
    .local v82, "textProtocolNumber":Landroid/widget/TextView;
    .local v83, "textCounterNumber":Landroid/widget/TextView;
    .local v84, "textDateTime":Landroid/widget/TextView;
    .local v85, "textServiceType":Landroid/widget/TextView;
    .local v86, "textSurname":Landroid/widget/TextView;
    .local v87, "textCity":Landroid/widget/TextView;
    .local v88, "textStreet":Landroid/widget/TextView;
    .local v89, "textBuilding":Landroid/widget/TextView;
    .local v90, "textApartment":Landroid/widget/TextView;
    .local v91, "textPersonalAccount":Landroid/widget/TextView;
    .local v92, "textSeal":Landroid/widget/TextView;
    .local v93, "textPhoneNumber":Landroid/widget/TextView;
    .local v94, "textEmail":Landroid/widget/TextView;
    .local v95, "textNote":Landroid/widget/TextView;
    move-object/from16 v1, v62

    move-object/from16 v17, v2

    move-object/from16 v96, v53

    move/from16 v97, v54

    move/from16 v98, v55

    .end local v53    # "editSurname":Landroid/widget/EditText;
    .end local v54    # "buttonHeight":I
    .end local v55    # "buttonWidth":I
    .local v96, "editSurname":Landroid/widget/EditText;
    .local v97, "buttonHeight":I
    .local v98, "buttonWidth":I
    move-object/from16 v2, p0

    move/from16 v18, v10

    move/from16 v19, v11

    move-object/from16 v10, v60

    const/4 v11, 0x0

    .end local v11    # "BUTTON_WIDTH_RATIO":F
    .end local v60    # "spinnerServiceType":Landroid/widget/Spinner;
    .local v10, "spinnerServiceType":Landroid/widget/Spinner;
    .local v18, "BUTTON_HEIGHT_RATIO":F
    .local v19, "BUTTON_WIDTH_RATIO":F
    move-object/from16 v3, v17

    move/from16 v17, v4

    move-object/from16 v99, v52

    .end local v4    # "screenWidth":I
    .end local v52    # "editDateTime":Landroid/widget/EditText;
    .local v17, "screenWidth":I
    .local v99, "editDateTime":Landroid/widget/EditText;
    move/from16 v4, v63

    move-object/from16 v100, v6

    .end local v6    # "editCounterNumber":Landroid/widget/EditText;
    .local v100, "editCounterNumber":Landroid/widget/EditText;
    move/from16 v6, v57

    move-object/from16 v101, v7

    .end local v7    # "editProtocolNumber":Landroid/widget/EditText;
    .local v101, "editProtocolNumber":Landroid/widget/EditText;
    move/from16 v7, v56

    move-object/from16 v102, v8

    .end local v8    # "editPaymentAccount":Landroid/widget/EditText;
    .local v102, "editPaymentAccount":Landroid/widget/EditText;
    move/from16 v8, v59

    invoke-direct/range {v1 .. v8}, Lcom/poverka/httpFileClient/activity/ClientActivity$1;-><init>(Lcom/poverka/httpFileClient/activity/ClientActivity;Landroid/content/Context;I[Ljava/lang/String;III)V

    .line 168
    .local v1, "adapterName":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v10, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 171
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 172
    .local v2, "addressFile":Ljava/io/File;
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v9, v3}, Lcom/poverka/httpFileClient/activity/ClientActivity;->getClientInfoById(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 174
    .local v3, "taskJSON":Lorg/json/JSONObject;
    sget v4, Lcom/poverka/httpFileClient/activity/MainActivity;->MARKER:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_7

    if-nez v4, :cond_2

    .line 175
    move/from16 v4, v56

    move/from16 v7, v57

    move/from16 v8, v59

    .end local v56    # "textLHeight":I
    .end local v57    # "textSHeight":I
    .end local v59    # "marginHeight":I
    .local v4, "textLHeight":I
    .local v7, "textSHeight":I
    .local v8, "marginHeight":I
    :try_start_1
    invoke-direct {v9, v7, v4, v8}, Lcom/poverka/httpFileClient/activity/ClientActivity;->initAddress(III)V

    .line 177
    const-string v6, "-1"

    move-object/from16 v11, p1

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 178
    const/4 v6, 0x0

    invoke-virtual {v15, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 179
    new-instance v6, Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5

    move-object/from16 v22, v1

    .end local v1    # "adapterName":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .local v22, "adapterName":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :try_start_2
    iget-object v1, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    .line 180
    .local v0, "addressJSON":Lorg/json/JSONObject;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4

    if-eqz v1, :cond_0

    :try_start_3
    const-string v1, "city_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v6, "CITY"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    if-ne v1, v6, :cond_0

    .line 181
    move-object/from16 v1, v64

    const/16 v6, 0x8

    .end local v64    # "editCity":Landroid/widget/EditText;
    .local v1, "editCity":Landroid/widget/EditText;
    :try_start_4
    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setVisibility(I)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    .line 182
    move-object/from16 v23, v3

    move-object/from16 v3, v66

    .end local v66    # "editStreet":Landroid/widget/EditText;
    .local v3, "editStreet":Landroid/widget/EditText;
    .local v23, "taskJSON":Lorg/json/JSONObject;
    :try_start_5
    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 183
    const/4 v6, 0x1

    iput-boolean v6, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->showSpinnerAddress:Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    move-object/from16 v24, v5

    move-object/from16 v6, v65

    move-object/from16 v5, v67

    goto :goto_0

    .line 209
    .end local v0    # "addressJSON":Lorg/json/JSONObject;
    .end local v2    # "addressFile":Ljava/io/File;
    .end local v23    # "taskJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    move-object/from16 v24, v5

    move-object/from16 v6, v65

    move-object/from16 v5, v67

    goto/16 :goto_2

    .end local v3    # "editStreet":Landroid/widget/EditText;
    .restart local v66    # "editStreet":Landroid/widget/EditText;
    :catch_1
    move-exception v0

    move-object/from16 v3, v66

    move-object/from16 v24, v5

    move-object/from16 v6, v65

    move-object/from16 v5, v67

    .end local v66    # "editStreet":Landroid/widget/EditText;
    .restart local v3    # "editStreet":Landroid/widget/EditText;
    goto/16 :goto_2

    .end local v1    # "editCity":Landroid/widget/EditText;
    .end local v3    # "editStreet":Landroid/widget/EditText;
    .restart local v64    # "editCity":Landroid/widget/EditText;
    .restart local v66    # "editStreet":Landroid/widget/EditText;
    :catch_2
    move-exception v0

    move-object/from16 v1, v64

    move-object/from16 v3, v66

    move-object/from16 v24, v5

    move-object/from16 v6, v65

    move-object/from16 v5, v67

    .end local v64    # "editCity":Landroid/widget/EditText;
    .end local v66    # "editStreet":Landroid/widget/EditText;
    .restart local v1    # "editCity":Landroid/widget/EditText;
    .restart local v3    # "editStreet":Landroid/widget/EditText;
    goto/16 :goto_2

    .line 180
    .end local v1    # "editCity":Landroid/widget/EditText;
    .restart local v0    # "addressJSON":Lorg/json/JSONObject;
    .restart local v2    # "addressFile":Ljava/io/File;
    .local v3, "taskJSON":Lorg/json/JSONObject;
    .restart local v64    # "editCity":Landroid/widget/EditText;
    .restart local v66    # "editStreet":Landroid/widget/EditText;
    :cond_0
    move-object/from16 v23, v3

    move-object/from16 v1, v64

    move-object/from16 v3, v66

    .line 185
    .end local v64    # "editCity":Landroid/widget/EditText;
    .end local v66    # "editStreet":Landroid/widget/EditText;
    .restart local v1    # "editCity":Landroid/widget/EditText;
    .local v3, "editStreet":Landroid/widget/EditText;
    .restart local v23    # "taskJSON":Lorg/json/JSONObject;
    move-object/from16 v20, v0

    move-object/from16 v6, v65

    const/16 v0, 0x8

    .end local v0    # "addressJSON":Lorg/json/JSONObject;
    .end local v65    # "spinnerCity":Landroid/widget/Spinner;
    .local v6, "spinnerCity":Landroid/widget/Spinner;
    .local v20, "addressJSON":Lorg/json/JSONObject;
    :try_start_6
    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setVisibility(I)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3

    .line 186
    move-object/from16 v24, v5

    move-object/from16 v5, v67

    .end local v67    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .local v5, "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .local v24, "types":[Ljava/lang/String;
    :try_start_7
    invoke-virtual {v5, v0}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->setVisibility(I)V

    .line 187
    const/4 v11, 0x0

    iput-boolean v11, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->showSpinnerAddress:Z

    .line 189
    .end local v20    # "addressJSON":Lorg/json/JSONObject;
    :goto_0
    goto/16 :goto_1

    .line 209
    .end local v2    # "addressFile":Ljava/io/File;
    .end local v23    # "taskJSON":Lorg/json/JSONObject;
    .end local v24    # "types":[Ljava/lang/String;
    .local v5, "types":[Ljava/lang/String;
    .restart local v67    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    :catch_3
    move-exception v0

    move-object/from16 v24, v5

    move-object/from16 v5, v67

    .end local v67    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .local v5, "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .restart local v24    # "types":[Ljava/lang/String;
    goto/16 :goto_2

    .end local v1    # "editCity":Landroid/widget/EditText;
    .end local v3    # "editStreet":Landroid/widget/EditText;
    .end local v6    # "spinnerCity":Landroid/widget/Spinner;
    .end local v24    # "types":[Ljava/lang/String;
    .local v5, "types":[Ljava/lang/String;
    .restart local v64    # "editCity":Landroid/widget/EditText;
    .restart local v65    # "spinnerCity":Landroid/widget/Spinner;
    .restart local v66    # "editStreet":Landroid/widget/EditText;
    .restart local v67    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    :catch_4
    move-exception v0

    move-object/from16 v24, v5

    move-object/from16 v1, v64

    move-object/from16 v6, v65

    move-object/from16 v3, v66

    move-object/from16 v5, v67

    .end local v64    # "editCity":Landroid/widget/EditText;
    .end local v65    # "spinnerCity":Landroid/widget/Spinner;
    .end local v66    # "editStreet":Landroid/widget/EditText;
    .end local v67    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .restart local v1    # "editCity":Landroid/widget/EditText;
    .restart local v3    # "editStreet":Landroid/widget/EditText;
    .local v5, "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .restart local v6    # "spinnerCity":Landroid/widget/Spinner;
    .restart local v24    # "types":[Ljava/lang/String;
    goto/16 :goto_2

    .line 190
    .end local v6    # "spinnerCity":Landroid/widget/Spinner;
    .end local v22    # "adapterName":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v24    # "types":[Ljava/lang/String;
    .local v1, "adapterName":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v2    # "addressFile":Ljava/io/File;
    .local v3, "taskJSON":Lorg/json/JSONObject;
    .local v5, "types":[Ljava/lang/String;
    .restart local v64    # "editCity":Landroid/widget/EditText;
    .restart local v65    # "spinnerCity":Landroid/widget/Spinner;
    .restart local v66    # "editStreet":Landroid/widget/EditText;
    .restart local v67    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    :cond_1
    move-object/from16 v22, v1

    move-object/from16 v23, v3

    move-object/from16 v24, v5

    move-object/from16 v1, v64

    move-object/from16 v6, v65

    move-object/from16 v3, v66

    move-object/from16 v5, v67

    .end local v64    # "editCity":Landroid/widget/EditText;
    .end local v65    # "spinnerCity":Landroid/widget/Spinner;
    .end local v66    # "editStreet":Landroid/widget/EditText;
    .end local v67    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .local v1, "editCity":Landroid/widget/EditText;
    .local v3, "editStreet":Landroid/widget/EditText;
    .local v5, "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .restart local v6    # "spinnerCity":Landroid/widget/Spinner;
    .restart local v22    # "adapterName":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v23    # "taskJSON":Lorg/json/JSONObject;
    .restart local v24    # "types":[Ljava/lang/String;
    const/4 v0, 0x1

    invoke-virtual {v15, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 191
    const/16 v11, 0x8

    invoke-virtual {v1, v11}, Landroid/widget/EditText;->setVisibility(I)V

    .line 192
    invoke-virtual {v3, v11}, Landroid/widget/EditText;->setVisibility(I)V

    .line 193
    iput-boolean v0, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->showSpinnerAddress:Z

    goto :goto_1

    .line 209
    .end local v2    # "addressFile":Ljava/io/File;
    .end local v3    # "editStreet":Landroid/widget/EditText;
    .end local v6    # "spinnerCity":Landroid/widget/Spinner;
    .end local v22    # "adapterName":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v23    # "taskJSON":Lorg/json/JSONObject;
    .end local v24    # "types":[Ljava/lang/String;
    .local v1, "adapterName":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .local v5, "types":[Ljava/lang/String;
    .restart local v64    # "editCity":Landroid/widget/EditText;
    .restart local v65    # "spinnerCity":Landroid/widget/Spinner;
    .restart local v66    # "editStreet":Landroid/widget/EditText;
    .restart local v67    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    :catch_5
    move-exception v0

    move-object/from16 v22, v1

    move-object/from16 v24, v5

    move-object/from16 v1, v64

    move-object/from16 v6, v65

    move-object/from16 v3, v66

    move-object/from16 v5, v67

    .end local v64    # "editCity":Landroid/widget/EditText;
    .end local v65    # "spinnerCity":Landroid/widget/Spinner;
    .end local v66    # "editStreet":Landroid/widget/EditText;
    .end local v67    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .local v1, "editCity":Landroid/widget/EditText;
    .restart local v3    # "editStreet":Landroid/widget/EditText;
    .local v5, "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .restart local v6    # "spinnerCity":Landroid/widget/Spinner;
    .restart local v22    # "adapterName":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v24    # "types":[Ljava/lang/String;
    goto :goto_2

    .line 195
    .end local v4    # "textLHeight":I
    .end local v6    # "spinnerCity":Landroid/widget/Spinner;
    .end local v7    # "textSHeight":I
    .end local v8    # "marginHeight":I
    .end local v22    # "adapterName":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v24    # "types":[Ljava/lang/String;
    .local v1, "adapterName":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v2    # "addressFile":Ljava/io/File;
    .local v3, "taskJSON":Lorg/json/JSONObject;
    .local v5, "types":[Ljava/lang/String;
    .restart local v56    # "textLHeight":I
    .restart local v57    # "textSHeight":I
    .restart local v59    # "marginHeight":I
    .restart local v64    # "editCity":Landroid/widget/EditText;
    .restart local v65    # "spinnerCity":Landroid/widget/Spinner;
    .restart local v66    # "editStreet":Landroid/widget/EditText;
    .restart local v67    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    :cond_2
    move-object/from16 v22, v1

    move-object/from16 v23, v3

    move-object/from16 v24, v5

    move/from16 v4, v56

    move/from16 v7, v57

    move/from16 v8, v59

    move-object/from16 v1, v64

    move-object/from16 v6, v65

    move-object/from16 v3, v66

    move-object/from16 v5, v67

    .end local v56    # "textLHeight":I
    .end local v57    # "textSHeight":I
    .end local v59    # "marginHeight":I
    .end local v64    # "editCity":Landroid/widget/EditText;
    .end local v65    # "spinnerCity":Landroid/widget/Spinner;
    .end local v66    # "editStreet":Landroid/widget/EditText;
    .end local v67    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .local v1, "editCity":Landroid/widget/EditText;
    .local v3, "editStreet":Landroid/widget/EditText;
    .restart local v4    # "textLHeight":I
    .local v5, "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .restart local v6    # "spinnerCity":Landroid/widget/Spinner;
    .restart local v7    # "textSHeight":I
    .restart local v8    # "marginHeight":I
    .restart local v22    # "adapterName":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v23    # "taskJSON":Lorg/json/JSONObject;
    .restart local v24    # "types":[Ljava/lang/String;
    sget v0, Lcom/poverka/httpFileClient/activity/MainActivity;->MARKER:I

    const/4 v11, 0x1

    if-ne v0, v11, :cond_4

    .line 196
    invoke-virtual {v15, v11}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 197
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 198
    invoke-direct {v9, v7, v4, v8}, Lcom/poverka/httpFileClient/activity/ClientActivity;->initAddress(III)V

    .line 200
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 201
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->showSpinnerAddress:Z

    goto :goto_1

    .line 204
    :cond_3
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 205
    invoke-virtual {v5, v0}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->setVisibility(I)V

    .line 206
    const/4 v11, 0x0

    iput-boolean v11, v9, Lcom/poverka/httpFileClient/activity/ClientActivity;->showSpinnerAddress:Z
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_6

    .line 211
    .end local v2    # "addressFile":Ljava/io/File;
    .end local v23    # "taskJSON":Lorg/json/JSONObject;
    :cond_4
    :goto_1
    goto :goto_3

    .line 209
    :catch_6
    move-exception v0

    goto :goto_2

    .end local v3    # "editStreet":Landroid/widget/EditText;
    .end local v4    # "textLHeight":I
    .end local v6    # "spinnerCity":Landroid/widget/Spinner;
    .end local v7    # "textSHeight":I
    .end local v8    # "marginHeight":I
    .end local v22    # "adapterName":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v24    # "types":[Ljava/lang/String;
    .local v1, "adapterName":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .local v5, "types":[Ljava/lang/String;
    .restart local v56    # "textLHeight":I
    .restart local v57    # "textSHeight":I
    .restart local v59    # "marginHeight":I
    .restart local v64    # "editCity":Landroid/widget/EditText;
    .restart local v65    # "spinnerCity":Landroid/widget/Spinner;
    .restart local v66    # "editStreet":Landroid/widget/EditText;
    .restart local v67    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    :catch_7
    move-exception v0

    move-object/from16 v22, v1

    move-object/from16 v24, v5

    move/from16 v4, v56

    move/from16 v7, v57

    move/from16 v8, v59

    move-object/from16 v1, v64

    move-object/from16 v6, v65

    move-object/from16 v3, v66

    move-object/from16 v5, v67

    .line 210
    .end local v56    # "textLHeight":I
    .end local v57    # "textSHeight":I
    .end local v59    # "marginHeight":I
    .end local v64    # "editCity":Landroid/widget/EditText;
    .end local v65    # "spinnerCity":Landroid/widget/Spinner;
    .end local v66    # "editStreet":Landroid/widget/EditText;
    .end local v67    # "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .local v0, "e":Lorg/json/JSONException;
    .local v1, "editCity":Landroid/widget/EditText;
    .restart local v3    # "editStreet":Landroid/widget/EditText;
    .restart local v4    # "textLHeight":I
    .local v5, "spinnerStreet":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .restart local v6    # "spinnerCity":Landroid/widget/Spinner;
    .restart local v7    # "textSHeight":I
    .restart local v8    # "marginHeight":I
    .restart local v22    # "adapterName":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v24    # "types":[Ljava/lang/String;
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 213
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_3
    invoke-virtual {v10}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 215
    .local v0, "paramsC":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    const/4 v2, 0x0

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    .line 216
    invoke-virtual {v10}, Landroid/widget/Spinner;->requestLayout()V

    .line 218
    invoke-virtual {v6}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 219
    .local v11, "paramsL":Landroid/widget/LinearLayout$LayoutParams;
    mul-int/lit8 v2, v8, 0x2

    iput v2, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 220
    const/4 v2, 0x0

    iput v2, v11, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 221
    invoke-virtual {v6}, Landroid/widget/Spinner;->requestLayout()V

    .line 223
    invoke-virtual {v5}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    move-object/from16 v11, v20

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 224
    mul-int/lit8 v2, v8, 0x2

    iput v2, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 225
    const/4 v2, 0x0

    iput v2, v11, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 226
    invoke-virtual {v5}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->requestLayout()V

    .line 228
    invoke-virtual/range {v48 .. v48}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 229
    move/from16 v2, v97

    .end local v97    # "buttonHeight":I
    .local v2, "buttonHeight":I
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 230
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 231
    invoke-virtual/range {v48 .. v48}, Landroid/widget/ImageButton;->requestLayout()V

    .line 233
    invoke-virtual/range {v49 .. v49}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 234
    move/from16 v56, v4

    .end local v4    # "textLHeight":I
    .restart local v56    # "textLHeight":I
    add-int/lit8 v4, v2, -0xf

    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 235
    move/from16 v4, v98

    .end local v98    # "buttonWidth":I
    .local v4, "buttonWidth":I
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 236
    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 237
    invoke-virtual/range {v49 .. v49}, Landroid/widget/Button;->requestLayout()V

    .line 239
    invoke-virtual/range {v50 .. v50}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    move-object/from16 v11, v20

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 240
    iput v2, v11, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 241
    iput v4, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 242
    invoke-virtual/range {v50 .. v50}, Landroid/widget/Button;->requestLayout()V

    .line 244
    invoke-virtual/range {v51 .. v51}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    move-object/from16 v11, v20

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 245
    iput v2, v11, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 246
    iput v4, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 247
    invoke-virtual/range {v51 .. v51}, Landroid/widget/Button;->requestLayout()V

    .line 249
    move-object/from16 v20, v0

    .end local v0    # "paramsC":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .local v20, "paramsC":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    int-to-float v0, v7

    const/4 v2, 0x0

    .end local v2    # "buttonHeight":I
    .restart local v97    # "buttonHeight":I
    invoke-virtual {v15, v2, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 250
    int-to-float v0, v7

    move-object/from16 v4, v102

    .end local v102    # "editPaymentAccount":Landroid/widget/EditText;
    .local v4, "editPaymentAccount":Landroid/widget/EditText;
    .restart local v98    # "buttonWidth":I
    invoke-virtual {v4, v2, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 251
    int-to-float v0, v7

    move-object/from16 v4, v101

    .end local v101    # "editProtocolNumber":Landroid/widget/EditText;
    .local v4, "editProtocolNumber":Landroid/widget/EditText;
    .restart local v102    # "editPaymentAccount":Landroid/widget/EditText;
    invoke-virtual {v4, v2, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 252
    int-to-float v0, v7

    move-object/from16 v4, v100

    .end local v100    # "editCounterNumber":Landroid/widget/EditText;
    .local v4, "editCounterNumber":Landroid/widget/EditText;
    .restart local v101    # "editProtocolNumber":Landroid/widget/EditText;
    invoke-virtual {v4, v2, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 253
    int-to-float v0, v7

    move-object/from16 v4, v99

    .end local v99    # "editDateTime":Landroid/widget/EditText;
    .local v4, "editDateTime":Landroid/widget/EditText;
    .restart local v100    # "editCounterNumber":Landroid/widget/EditText;
    invoke-virtual {v4, v2, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 254
    int-to-float v0, v7

    move-object/from16 v4, v96

    .end local v96    # "editSurname":Landroid/widget/EditText;
    .local v4, "editSurname":Landroid/widget/EditText;
    .restart local v99    # "editDateTime":Landroid/widget/EditText;
    invoke-virtual {v4, v2, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 255
    int-to-float v0, v7

    invoke-virtual {v1, v2, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 256
    int-to-float v0, v7

    invoke-virtual {v3, v2, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 257
    int-to-float v0, v7

    move-object/from16 v64, v1

    move-object/from16 v1, v68

    .end local v68    # "editBuilding":Landroid/widget/EditText;
    .local v1, "editBuilding":Landroid/widget/EditText;
    .restart local v64    # "editCity":Landroid/widget/EditText;
    invoke-virtual {v1, v2, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 258
    int-to-float v0, v7

    move-object/from16 v1, v69

    .end local v69    # "editBuildingBukva":Landroid/widget/EditText;
    .local v1, "editBuildingBukva":Landroid/widget/EditText;
    .restart local v68    # "editBuilding":Landroid/widget/EditText;
    invoke-virtual {v1, v2, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 259
    int-to-float v0, v7

    move-object/from16 v1, v70

    .end local v70    # "editBuildingKorpus":Landroid/widget/EditText;
    .local v1, "editBuildingKorpus":Landroid/widget/EditText;
    .restart local v69    # "editBuildingBukva":Landroid/widget/EditText;
    invoke-virtual {v1, v2, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 260
    int-to-float v0, v7

    move-object/from16 v1, v71

    .end local v71    # "editApartment":Landroid/widget/EditText;
    .local v1, "editApartment":Landroid/widget/EditText;
    .restart local v70    # "editBuildingKorpus":Landroid/widget/EditText;
    invoke-virtual {v1, v2, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 261
    int-to-float v0, v7

    move-object/from16 v1, v72

    .end local v72    # "editApartmentBukva":Landroid/widget/EditText;
    .local v1, "editApartmentBukva":Landroid/widget/EditText;
    .restart local v71    # "editApartment":Landroid/widget/EditText;
    invoke-virtual {v1, v2, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 262
    int-to-float v0, v7

    move-object/from16 v1, v73

    .end local v73    # "editPersonalAccount":Landroid/widget/EditText;
    .local v1, "editPersonalAccount":Landroid/widget/EditText;
    .restart local v72    # "editApartmentBukva":Landroid/widget/EditText;
    invoke-virtual {v1, v2, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 263
    int-to-float v0, v7

    move-object/from16 v1, v74

    .end local v74    # "editSeal":Landroid/widget/EditText;
    .local v1, "editSeal":Landroid/widget/EditText;
    .restart local v73    # "editPersonalAccount":Landroid/widget/EditText;
    invoke-virtual {v1, v2, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 264
    int-to-float v0, v7

    move-object/from16 v1, v75

    .end local v75    # "editPhoneNumber":Landroid/widget/EditText;
    .local v1, "editPhoneNumber":Landroid/widget/EditText;
    .restart local v74    # "editSeal":Landroid/widget/EditText;
    invoke-virtual {v1, v2, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 265
    int-to-float v0, v7

    move-object/from16 v1, v76

    .end local v76    # "editPhoneNumberDop":Landroid/widget/EditText;
    .local v1, "editPhoneNumberDop":Landroid/widget/EditText;
    .restart local v75    # "editPhoneNumber":Landroid/widget/EditText;
    invoke-virtual {v1, v2, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 266
    int-to-float v0, v7

    move-object/from16 v1, v77

    .end local v77    # "editPhoneNumberDop2":Landroid/widget/EditText;
    .local v1, "editPhoneNumberDop2":Landroid/widget/EditText;
    .restart local v76    # "editPhoneNumberDop":Landroid/widget/EditText;
    invoke-virtual {v1, v2, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 267
    int-to-float v0, v7

    move-object/from16 v1, v78

    .end local v78    # "editEmail":Landroid/widget/EditText;
    .local v1, "editEmail":Landroid/widget/EditText;
    .restart local v77    # "editPhoneNumberDop2":Landroid/widget/EditText;
    invoke-virtual {v1, v2, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 268
    int-to-float v0, v7

    move-object/from16 v1, v79

    .end local v79    # "editNote":Landroid/widget/EditText;
    .local v1, "editNote":Landroid/widget/EditText;
    .restart local v78    # "editEmail":Landroid/widget/EditText;
    invoke-virtual {v1, v2, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 270
    int-to-float v0, v7

    move-object/from16 v1, v80

    .end local v80    # "textIdNumber":Landroid/widget/TextView;
    .local v1, "textIdNumber":Landroid/widget/TextView;
    .restart local v79    # "editNote":Landroid/widget/EditText;
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 271
    int-to-float v0, v7

    move-object/from16 v1, v81

    .end local v81    # "textPaymentAccount":Landroid/widget/TextView;
    .local v1, "textPaymentAccount":Landroid/widget/TextView;
    .restart local v80    # "textIdNumber":Landroid/widget/TextView;
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 272
    int-to-float v0, v7

    move-object/from16 v1, v82

    .end local v82    # "textProtocolNumber":Landroid/widget/TextView;
    .local v1, "textProtocolNumber":Landroid/widget/TextView;
    .restart local v81    # "textPaymentAccount":Landroid/widget/TextView;
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 273
    int-to-float v0, v7

    move-object/from16 v1, v83

    .end local v83    # "textCounterNumber":Landroid/widget/TextView;
    .local v1, "textCounterNumber":Landroid/widget/TextView;
    .restart local v82    # "textProtocolNumber":Landroid/widget/TextView;
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 274
    int-to-float v0, v7

    move-object/from16 v1, v84

    .end local v84    # "textDateTime":Landroid/widget/TextView;
    .local v1, "textDateTime":Landroid/widget/TextView;
    .restart local v83    # "textCounterNumber":Landroid/widget/TextView;
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 275
    int-to-float v0, v7

    move-object/from16 v1, v85

    .end local v85    # "textServiceType":Landroid/widget/TextView;
    .local v1, "textServiceType":Landroid/widget/TextView;
    .restart local v84    # "textDateTime":Landroid/widget/TextView;
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 276
    int-to-float v0, v7

    move-object/from16 v1, v86

    .end local v86    # "textSurname":Landroid/widget/TextView;
    .local v1, "textSurname":Landroid/widget/TextView;
    .restart local v85    # "textServiceType":Landroid/widget/TextView;
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 277
    int-to-float v0, v7

    move-object/from16 v1, v87

    .end local v87    # "textCity":Landroid/widget/TextView;
    .local v1, "textCity":Landroid/widget/TextView;
    .restart local v86    # "textSurname":Landroid/widget/TextView;
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 278
    int-to-float v0, v7

    move-object/from16 v1, v88

    .end local v88    # "textStreet":Landroid/widget/TextView;
    .local v1, "textStreet":Landroid/widget/TextView;
    .restart local v87    # "textCity":Landroid/widget/TextView;
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 279
    int-to-float v0, v7

    move-object/from16 v1, v89

    .end local v89    # "textBuilding":Landroid/widget/TextView;
    .local v1, "textBuilding":Landroid/widget/TextView;
    .restart local v88    # "textStreet":Landroid/widget/TextView;
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 280
    int-to-float v0, v7

    move-object/from16 v1, v90

    .end local v90    # "textApartment":Landroid/widget/TextView;
    .local v1, "textApartment":Landroid/widget/TextView;
    .restart local v89    # "textBuilding":Landroid/widget/TextView;
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 281
    int-to-float v0, v7

    move-object/from16 v1, v91

    .end local v91    # "textPersonalAccount":Landroid/widget/TextView;
    .local v1, "textPersonalAccount":Landroid/widget/TextView;
    .restart local v90    # "textApartment":Landroid/widget/TextView;
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 282
    int-to-float v0, v7

    move-object/from16 v1, v92

    .end local v92    # "textSeal":Landroid/widget/TextView;
    .local v1, "textSeal":Landroid/widget/TextView;
    .restart local v91    # "textPersonalAccount":Landroid/widget/TextView;
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 283
    int-to-float v0, v7

    move-object/from16 v1, v93

    .end local v93    # "textPhoneNumber":Landroid/widget/TextView;
    .local v1, "textPhoneNumber":Landroid/widget/TextView;
    .restart local v92    # "textSeal":Landroid/widget/TextView;
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 284
    int-to-float v0, v7

    move-object/from16 v1, v94

    .end local v94    # "textEmail":Landroid/widget/TextView;
    .local v1, "textEmail":Landroid/widget/TextView;
    .restart local v93    # "textPhoneNumber":Landroid/widget/TextView;
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 285
    int-to-float v0, v7

    move-object/from16 v1, v95

    .end local v95    # "textNote":Landroid/widget/TextView;
    .local v1, "textNote":Landroid/widget/TextView;
    .restart local v94    # "textEmail":Landroid/widget/TextView;
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 287
    add-int/lit8 v0, v7, -0x2

    int-to-float v0, v0

    move-object/from16 v1, v49

    .end local v49    # "buttonShowMore":Landroid/widget/Button;
    .local v1, "buttonShowMore":Landroid/widget/Button;
    .restart local v95    # "textNote":Landroid/widget/TextView;
    invoke-virtual {v1, v2, v0}, Landroid/widget/Button;->setTextSize(IF)V

    .line 288
    int-to-float v0, v7

    move-object/from16 v1, v50

    .end local v50    # "buttonRepeat":Landroid/widget/Button;
    .local v1, "buttonRepeat":Landroid/widget/Button;
    .restart local v49    # "buttonShowMore":Landroid/widget/Button;
    invoke-virtual {v1, v2, v0}, Landroid/widget/Button;->setTextSize(IF)V

    .line 289
    int-to-float v0, v7

    move-object/from16 v1, v51

    .end local v51    # "buttonSave":Landroid/widget/Button;
    .local v1, "buttonSave":Landroid/widget/Button;
    .restart local v50    # "buttonRepeat":Landroid/widget/Button;
    invoke-virtual {v1, v2, v0}, Landroid/widget/Button;->setTextSize(IF)V

    .line 290
    return-void
.end method

.method private updateClientInfo(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "clientInfo"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1002
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v1, 0x7f0900b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1003
    .local v0, "editSurname":Landroid/widget/EditText;
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v2, 0x7f09009c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1004
    .local v1, "editCity":Landroid/widget/EditText;
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v3, 0x7f0900b2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 1005
    .local v2, "editStreet":Landroid/widget/EditText;
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v4, 0x7f090099

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 1006
    .local v3, "editBuilding":Landroid/widget/EditText;
    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v5, 0x7f090097

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 1007
    .local v4, "editApartment":Landroid/widget/EditText;
    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v6, 0x7f0900a8

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 1008
    .local v5, "editPhoneNumber":Landroid/widget/EditText;
    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/ClientActivity;->view:Landroid/view/View;

    const v7, 0x7f0900a0

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 1010
    .local v6, "editEmail":Landroid/widget/EditText;
    const-string v7, "SURNAME"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1011
    const-string v7, "CITY"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1012
    const-string v7, "STREET"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1013
    const-string v7, "BUILDING"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1014
    const-string v7, "APARTMENT"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1015
    const-string v7, "PHONE_NUMBER"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1016
    const-string v7, "E-MAIL"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1017
    return-void
.end method
