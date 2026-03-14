.class Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;
.super Landroid/os/Handler;
.source "StateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/poverka/httpFileClient/activity/StateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIhandler"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ACTION:I = 0x3

.field private static final ALERT:I = 0x4

.field private static final ALERT_DIALOG:I = 0xb

.field private static final ALERT_RESTORING:I = 0xc

.field private static final ALERT_WRONG_DATE:I = 0xd

.field private static final APK:I = 0xa

.field private static final FILE_NAME:I = 0x6

.field private static final MOBILE_NETWORK:I = 0x7

.field private static final PROMPT_APK_UPDATE:I = 0x9

.field private static final PROMPT_FIRMWARE_UPDATE:I = 0x8

.field private static final STATE:I = 0x1

.field private static final TEST_NAME:I = 0x2

.field private static final TEST_PHOTO_DONE:I = 0x0

.field private static final VERIFICATION_DONE:I = 0x5


# instance fields
.field private final activity:Lcom/poverka/httpFileClient/activity/StateActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1354
    const-class v0, Lcom/poverka/httpFileClient/activity/StateActivity;

    return-void
.end method

.method private constructor <init>(Lcom/poverka/httpFileClient/activity/StateActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/poverka/httpFileClient/activity/StateActivity;

    .line 1372
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1373
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    .line 1374
    return-void
.end method

.method synthetic constructor <init>(Lcom/poverka/httpFileClient/activity/StateActivity;Lcom/poverka/httpFileClient/activity/StateActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity;
    .param p2, "x1"    # Lcom/poverka/httpFileClient/activity/StateActivity$1;

    .line 1354
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;-><init>(Lcom/poverka/httpFileClient/activity/StateActivity;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;)Lcom/poverka/httpFileClient/activity/StateActivity;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    .line 1354
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .line 1378
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 1380
    .local v2, "bundle":Landroid/os/Bundle;
    move-object/from16 v3, p1

    iget v0, v3, Landroid/os/Message;->what:I

    const v4, 0x7f0f0180

    const-string v5, "1 "

    const-string v6, "StateActivity"

    const/16 v7, 0xb

    const-string v8, "OK"

    const-string v9, "tittle"

    const v10, 0x7f0f001e

    const-string v11, "message"

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_9

    .line 1600
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "stationDate"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1601
    .local v0, "stationDate":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "tabletDate"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1602
    .local v4, "tabletDate":Ljava/lang/String;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1603
    .local v5, "builderWrongDate":Landroid/app/AlertDialog$Builder;
    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-virtual {v6, v10}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1604
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v7, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    const v8, 0x7f0f0020

    invoke-virtual {v7, v8}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v0, v8, v13

    aput-object v4, v8, v14

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1605
    new-instance v6, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler$7;

    invoke-direct {v6, v1}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler$7;-><init>(Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;)V

    invoke-virtual {v5, v0, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1612
    new-instance v6, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler$8;

    invoke-direct {v6, v1}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler$8;-><init>(Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;)V

    invoke-virtual {v5, v4, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1619
    invoke-virtual {v5, v13}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1620
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_9

    .line 1597
    .end local v0    # "stationDate":Ljava/lang/String;
    .end local v4    # "tabletDate":Ljava/lang/String;
    .end local v5    # "builderWrongDate":Landroid/app/AlertDialog$Builder;
    :pswitch_1
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-virtual {v0, v10}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    const v6, 0x7f0f012d

    invoke-virtual {v5, v6}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5, v14}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    .line 1598
    goto/16 :goto_9

    .line 1583
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1584
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1585
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1586
    new-instance v4, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler$6;

    invoke-direct {v4, v1}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler$6;-><init>(Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;)V

    invoke-virtual {v0, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1592
    invoke-virtual {v0, v13}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1593
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 1594
    .local v4, "stateDialog":Landroid/app/AlertDialog;
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 1595
    goto/16 :goto_9

    .line 1530
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "stateDialog":Landroid/app/AlertDialog;
    :pswitch_3
    const-string v0, "progress"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 1531
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1533
    .local v5, "progressString":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 1534
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1536
    .local v0, "progress":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Str "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " int "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$100(Ljava/lang/String;)V

    .line 1537
    const/4 v6, -0x1

    if-ne v0, v6, :cond_0

    .line 1538
    invoke-static {}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$3900()Landroid/app/ProgressDialog;

    move-result-object v6

    iget-object v7, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    const v9, 0x7f0f005c

    invoke-virtual {v7, v9}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1539
    invoke-static {}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$3900()Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v14}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1540
    invoke-static {}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$3900()Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v14}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1541
    invoke-static {}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$3900()Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1542
    invoke-static {}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$3900()Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 1544
    :cond_0
    invoke-static {}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$3900()Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1545
    invoke-static {}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$3900()Landroid/app/ProgressDialog;

    move-result-object v6

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1546
    invoke-static {}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$3900()Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1579
    .end local v0    # "progress":I
    :goto_0
    goto/16 :goto_3

    .line 1548
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1533
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v5    # "progressString":Ljava/lang/String;
    .end local p1    # "msg":Landroid/os/Message;
    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1548
    .restart local v2    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "progressString":Ljava/lang/String;
    .restart local p1    # "msg":Landroid/os/Message;
    :goto_1
    move-object v6, v0

    .line 1549
    .local v6, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$3900()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1552
    :try_start_1
    new-instance v0, Ljava/io/File;

    sget-object v7, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-direct {v0, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1554
    .local v0, "toInstall":Ljava/io/File;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x18

    if-lt v7, v9, :cond_2

    .line 1555
    iget-object v7, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    const-string v9, "com.poverka.httpFileClient.fileprovider"

    invoke-static {v7, v9, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .line 1556
    .local v7, "apkUri":Landroid/net/Uri;
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.INSTALL_PACKAGE"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1557
    .local v9, "intentUpdate":Landroid/content/Intent;
    invoke-virtual {v9, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1558
    invoke-virtual {v9, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1559
    nop

    .end local v7    # "apkUri":Landroid/net/Uri;
    goto :goto_2

    .line 1560
    .end local v9    # "intentUpdate":Landroid/content/Intent;
    :cond_2
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .line 1561
    .restart local v7    # "apkUri":Landroid/net/Uri;
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1562
    .restart local v9    # "intentUpdate":Landroid/content/Intent;
    const-string v10, "application/vnd.android.package-archive"

    invoke-virtual {v9, v7, v10}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1563
    const/high16 v10, 0x10000000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1565
    .end local v7    # "apkUri":Landroid/net/Uri;
    :goto_2
    iget-object v7, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-virtual {v7, v9}, Lcom/poverka/httpFileClient/activity/StateActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1578
    .end local v0    # "toInstall":Ljava/io/File;
    .end local v9    # "intentUpdate":Landroid/content/Intent;
    goto :goto_3

    .line 1566
    :catch_1
    move-exception v0

    .line 1567
    .local v0, "exception":Ljava/lang/Exception;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v9, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-direct {v7, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1568
    .local v7, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v9, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-virtual {v9, v4}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1569
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v9, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    const v10, 0x7f0f01a7

    invoke-virtual {v9, v10}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v14, [Ljava/lang/Object;

    aput-object v5, v10, v13

    invoke-static {v4, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1570
    new-instance v4, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler$5;

    invoke-direct {v4, v1}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler$5;-><init>(Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;)V

    invoke-virtual {v7, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1576
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 1577
    .restart local v4    # "stateDialog":Landroid/app/AlertDialog;
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 1580
    .end local v0    # "exception":Ljava/lang/Exception;
    .end local v4    # "stateDialog":Landroid/app/AlertDialog;
    .end local v5    # "progressString":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .end local v7    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_3
    goto/16 :goto_9

    .line 1498
    :pswitch_4
    const-string v0, "apk_info"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 1500
    :try_start_2
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    .line 1501
    .local v0, "apkInfo":Lorg/json/JSONObject;
    const-string v5, "id"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1502
    .local v5, "id":I
    const-string v6, "fileName"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1503
    .local v6, "apkName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v9, "cur_apk"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1504
    .local v7, "versionNameCur":Ljava/lang/String;
    const-string v9, "version"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v14

    .line 1506
    .local v9, "versionNameNew":Ljava/lang/String;
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1507
    .local v10, "builderApk":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v10, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1508
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v11, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    const v15, 0x7f0f0182

    invoke-virtual {v11, v15}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v7, v12, v13

    aput-object v9, v12, v14

    invoke-static {v4, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1509
    new-instance v4, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler$3;

    invoke-direct {v4, v1}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler$3;-><init>(Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;)V

    invoke-virtual {v10, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1515
    new-instance v4, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler$4;

    invoke-direct {v4, v1, v5, v6}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler$4;-><init>(Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;ILjava/lang/String;)V

    invoke-virtual {v10, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 1521
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 1522
    .restart local v4    # "stateDialog":Landroid/app/AlertDialog;
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v0    # "apkInfo":Lorg/json/JSONObject;
    .end local v4    # "stateDialog":Landroid/app/AlertDialog;
    .end local v5    # "id":I
    .end local v6    # "apkName":Ljava/lang/String;
    .end local v7    # "versionNameCur":Ljava/lang/String;
    .end local v9    # "versionNameNew":Ljava/lang/String;
    .end local v10    # "builderApk":Landroid/app/AlertDialog$Builder;
    goto :goto_4

    .line 1524
    :catch_2
    move-exception v0

    .line 1525
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1526
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_4
    goto/16 :goto_9

    .line 1475
    :pswitch_5
    const-string v0, "cur_firmware_version"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    const-string v4, "new_firmware_version"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 1476
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1477
    .local v0, "versionNameCur":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1478
    .local v4, "versionNameNew":Ljava/lang/String;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1479
    .local v5, "builderFirmware":Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0f0081

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1480
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v7, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    const v9, 0x7f0f0082

    invoke-virtual {v7, v9}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v0, v9, v13

    aput-object v4, v9, v14

    invoke-static {v6, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1481
    new-instance v6, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler$1;

    invoke-direct {v6, v1}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler$1;-><init>(Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;)V

    invoke-virtual {v5, v8, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1487
    new-instance v6, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler$2;

    invoke-direct {v6, v1}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler$2;-><init>(Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 1493
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 1494
    .local v6, "stateDialog":Landroid/app/AlertDialog;
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 1495
    .end local v0    # "versionNameCur":Ljava/lang/String;
    .end local v4    # "versionNameNew":Ljava/lang/String;
    .end local v5    # "builderFirmware":Landroid/app/AlertDialog$Builder;
    .end local v6    # "stateDialog":Landroid/app/AlertDialog;
    goto/16 :goto_9

    .line 1470
    :pswitch_6
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->isOnline()I

    move-result v0

    if-ne v0, v14, :cond_9

    .line 1471
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$3700(Lcom/poverka/httpFileClient/activity/StateActivity;)V

    goto/16 :goto_9

    .line 1445
    :pswitch_7
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    const v4, 0x7f090199

    invoke-virtual {v0, v4}, Lcom/poverka/httpFileClient/activity/StateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1446
    .local v0, "textFileName":Landroid/widget/TextView;
    iget-object v4, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    const v5, 0x7f0901b7

    invoke-virtual {v4, v5}, Lcom/poverka/httpFileClient/activity/StateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1448
    .local v4, "textTemperature":Landroid/widget/TextView;
    const-string v5, "count"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1449
    .local v5, "count":I
    const v6, 0x7f0f016a

    const-string v8, "%s%09d"

    if-gez v5, :cond_3

    .line 1450
    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v10, v12, [Ljava/lang/Object;

    iget-object v12, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-virtual {v12}, Lcom/poverka/httpFileClient/activity/StateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v10, v14

    invoke-static {v15, v8, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1451
    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1500(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 1452
    .local v6, "m":Landroid/os/Message;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1453
    .local v7, "bundleAlert":Landroid/os/Bundle;
    iget-object v8, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    const v10, 0x7f0f001e

    invoke-virtual {v8, v10}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v9, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    const v10, 0x7f0f0076

    invoke-virtual {v9, v10}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v14, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v13

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v11, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    invoke-virtual {v6, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1456
    iget-object v8, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v8}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1500(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->sendMessage(Landroid/os/Message;)Z

    .line 1457
    .end local v6    # "m":Landroid/os/Message;
    .end local v7    # "bundleAlert":Landroid/os/Bundle;
    goto :goto_5

    .line 1458
    :cond_3
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Object;

    iget-object v9, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-virtual {v9}, Lcom/poverka/httpFileClient/activity/StateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v13

    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v6

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getVerificationNumberNew()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v10, v14

    invoke-static {v7, v8, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1461
    :goto_5
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-virtual {v8}, Lcom/poverka/httpFileClient/activity/StateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f016b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v13

    iget-object v8, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v8}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v8

    invoke-virtual {v8}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getWaterTemperatureRound()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v14

    const-string v8, "%s %d\u00b0C"

    invoke-static {v6, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1462
    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v6

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getWaterTemperatureRound()I

    move-result v6

    const/16 v7, 0x1e

    if-le v6, v7, :cond_4

    .line 1463
    const/high16 v6, -0x10000

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    .line 1465
    :cond_4
    const v6, -0xffff01

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1467
    :goto_6
    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v6, v14}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$3200(Lcom/poverka/httpFileClient/activity/StateActivity;Z)V

    .line 1468
    goto/16 :goto_9

    .line 1436
    .end local v0    # "textFileName":Landroid/widget/TextView;
    .end local v4    # "textTemperature":Landroid/widget/TextView;
    .end local v5    # "count":I
    :pswitch_8
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1400(Lcom/poverka/httpFileClient/activity/StateActivity;)V

    .line 1438
    new-instance v0, Landroid/content/Intent;

    iget-object v4, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/poverka/httpFileClient/activity/MainActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1439
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1440
    const/high16 v4, 0x4000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1441
    const-string v4, "EXIT"

    invoke-virtual {v0, v4, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1442
    iget-object v4, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-virtual {v4, v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->startActivity(Landroid/content/Intent;)V

    .line 1443
    goto/16 :goto_9

    .line 1427
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_9
    const-string v0, "error"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1428
    iget-object v4, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1429
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1400(Lcom/poverka/httpFileClient/activity/StateActivity;)V

    .line 1431
    :cond_5
    const-string v0, "alert"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 1432
    iget-object v4, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_9

    .line 1417
    :pswitch_a
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1400(Lcom/poverka/httpFileClient/activity/StateActivity;)V

    .line 1419
    const-string v0, "restoring"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 1421
    .local v4, "restoring":Z
    new-instance v5, Landroid/content/Intent;

    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    const-class v7, Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1422
    .local v5, "measurementIntent":Landroid/content/Intent;
    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v6

    const-string v7, "verification"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1423
    invoke-virtual {v5, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1424
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-virtual {v0, v5}, Lcom/poverka/httpFileClient/activity/StateActivity;->startActivity(Landroid/content/Intent;)V

    .line 1425
    goto/16 :goto_9

    .line 1390
    .end local v4    # "restoring":Z
    .end local v5    # "measurementIntent":Landroid/content/Intent;
    :pswitch_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v4

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getTestName()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0, v14}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$3200(Lcom/poverka/httpFileClient/activity/StateActivity;Z)V

    .line 1393
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getDaysToCalibration()I

    move-result v0

    .line 1394
    .local v0, "daysToCalibration":I
    if-gez v0, :cond_7

    .line 1395
    iget-object v4, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1500(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1396
    .local v4, "m":Landroid/os/Message;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1397
    .local v5, "bundleAlert":Landroid/os/Bundle;
    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    const v7, 0x7f0f001e

    invoke-virtual {v6, v7}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v6

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getWorkInShortMode()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1400
    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    const v7, 0x7f0f0170

    invoke-virtual {v6, v7}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v11, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1402
    :cond_6
    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    const v7, 0x7f0f016e

    invoke-virtual {v6, v7}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v11, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    :goto_7
    invoke-virtual {v4, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1406
    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1500(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->sendMessage(Landroid/os/Message;)Z

    .end local v4    # "m":Landroid/os/Message;
    .end local v5    # "bundleAlert":Landroid/os/Bundle;
    goto :goto_8

    .line 1407
    :cond_7
    const/16 v4, 0xa

    if-ge v0, v4, :cond_8

    .line 1408
    iget-object v4, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1500(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1409
    .restart local v4    # "m":Landroid/os/Message;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1410
    .restart local v5    # "bundleAlert":Landroid/os/Bundle;
    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    const v7, 0x7f0f001e

    invoke-virtual {v6, v7}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    const v7, 0x7f0f016f

    invoke-virtual {v6, v7}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v11, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    invoke-virtual {v4, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1413
    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1500(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->sendMessage(Landroid/os/Message;)Z

    .line 1414
    .end local v4    # "m":Landroid/os/Message;
    .end local v5    # "bundleAlert":Landroid/os/Bundle;
    goto :goto_9

    .line 1407
    :cond_8
    :goto_8
    goto :goto_9

    .line 1387
    .end local v0    # "daysToCalibration":I
    :pswitch_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v4

    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/activity/StateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->stateDataToString(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    goto :goto_9

    .line 1382
    :pswitch_d
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    const v4, 0x7f0900e0

    invoke-virtual {v0, v4}, Lcom/poverka/httpFileClient/activity/StateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1383
    .local v0, "image":Landroid/widget/ImageView;
    iget-object v4, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v4

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getTestPhoto()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1384
    iget-object v4, v1, Lcom/poverka/httpFileClient/activity/StateActivity$UIhandler;->activity:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v4, v14}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$3200(Lcom/poverka/httpFileClient/activity/StateActivity;Z)V

    .line 1385
    nop

    .line 1623
    .end local v0    # "image":Landroid/widget/ImageView;
    :cond_9
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
