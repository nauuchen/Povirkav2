.class Lcom/poverka/httpFileClient/activity/SettingsActivity;
.super Ljava/lang/Object;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;
    }
.end annotation


# static fields
.field private static final BUTTON_HEIGHT_RATIO:F = 0.11f

.field private static final BUTTON_WIDTH_RATIO:F = 0.4f

.field private static final MARGIN_HEIGHT_RATIO:F = 0.02f

.field private static final TAG:Ljava/lang/String; = "SettingsActivity"

.field private static final TEXT_L_HEIGHT_RATIO:F = 0.06f

.field private static final TEXT_S_HEIGHT_RATIO:F = 0.035f

.field private static httpFileClient:Lcom/poverka/httpFileClient/util/HttpFileClient;

.field private static mProgressDialog:Landroid/app/ProgressDialog;

.field private static townID:I

.field private static townName:Ljava/lang/String;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final dialog:Landroid/app/Dialog;

.field private final mHttpReceived:Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;

.field private final myHandler:Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

.field private final view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 925
    new-instance v0, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;

    invoke-direct {v0, p0}, Lcom/poverka/httpFileClient/activity/SettingsActivity$25;-><init>(Lcom/poverka/httpFileClient/activity/SettingsActivity;)V

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->mHttpReceived:Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;

    .line 91
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    .line 92
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0024

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->view:Landroid/view/View;

    .line 93
    new-instance v2, Landroid/app/Dialog;

    const v4, 0x103012c

    invoke-direct {v2, p1, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->dialog:Landroid/app/Dialog;

    .line 94
    new-instance v4, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    invoke-direct {v4, p1, v3}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;-><init>(Landroid/app/Activity;Lcom/poverka/httpFileClient/activity/SettingsActivity$1;)V

    iput-object v4, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->myHandler:Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    .line 95
    new-instance v3, Lcom/poverka/httpFileClient/util/HttpFileClient;

    invoke-direct {v3, v0}, Lcom/poverka/httpFileClient/util/HttpFileClient;-><init>(Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;)V

    sput-object v3, Lcom/poverka/httpFileClient/activity/SettingsActivity;->httpFileClient:Lcom/poverka/httpFileClient/util/HttpFileClient;

    .line 96
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 98
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->initViews()V

    .line 100
    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 101
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 102
    return-void
.end method

.method private CheckApkUpdates()V
    .locals 6

    .line 736
    const-string v0, "station"

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "settings.json"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 738
    .local v1, "settings":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 739
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    const v2, 0x7f0f00ea

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 740
    return-void

    .line 743
    :cond_0
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 744
    .local v2, "text":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 746
    .local v3, "jsonSettings":Lorg/json/JSONObject;
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 747
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 748
    .local v0, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0f001e

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 749
    const v4, 0x7f0f00e4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 750
    const-string v4, "OK"

    new-instance v5, Lcom/poverka/httpFileClient/activity/SettingsActivity$20;

    invoke-direct {v5, p0}, Lcom/poverka/httpFileClient/activity/SettingsActivity$20;-><init>(Lcom/poverka/httpFileClient/activity/SettingsActivity;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 756
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 757
    .end local v0    # "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    goto :goto_0

    .line 758
    :cond_1
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->checkDisabledUpdate(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    .end local v1    # "settings":Ljava/io/File;
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "jsonSettings":Lorg/json/JSONObject;
    :goto_0
    goto :goto_1

    .line 760
    :catch_0
    move-exception v0

    .line 761
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 763
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method private DispatcherSwitched(Z)V
    .locals 10
    .param p1, "isChecked"    # Z

    .line 347
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->view:Landroid/view/View;

    const v1, 0x7f09005c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 349
    .local v0, "buttonLoadAddress":Landroid/widget/Button;
    if-eqz p1, :cond_2

    .line 350
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 353
    const v2, 0x7f0f0063

    const/4 v3, 0x1

    :try_start_0
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "localTasks.json"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 355
    .local v4, "localTasks":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 356
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-nez v5, :cond_0

    .line 357
    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v7, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v7, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    const/16 v9, 0x12d

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 359
    :cond_0
    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 360
    .local v5, "writer":Ljava/io/FileWriter;
    const-string v6, "[]"

    invoke-virtual {v5, v6}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v5}, Ljava/io/FileWriter;->flush()V

    .line 362
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 365
    .end local v4    # "localTasks":Ljava/io/File;
    .end local v5    # "writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v4

    .line 366
    .local v4, "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v7, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v7, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v7, v3, [Ljava/lang/Object;

    const/16 v8, 0x12f

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v6, v2, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 367
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    goto :goto_1

    .line 369
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 370
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "address.json"

    invoke-static {v1, v2}, Lcom/poverka/httpFileClient/util/MyFileReader;->removeInternalFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 372
    :goto_1
    return-void
.end method

.method private LoadAddress()V
    .locals 13

    .line 685
    const-string v0, "station"

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "settings.json"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 687
    .local v1, "settings":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 688
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    const v2, 0x7f0f00ea

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 689
    return-void

    .line 692
    :cond_0
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 693
    .local v2, "text":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 695
    .local v4, "jsonSettings":Lorg/json/JSONObject;
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 696
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 697
    .local v0, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0f001e

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 698
    const v3, 0x7f0f00e4

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 699
    const-string v3, "OK"

    new-instance v5, Lcom/poverka/httpFileClient/activity/SettingsActivity$19;

    invoke-direct {v5, p0}, Lcom/poverka/httpFileClient/activity/SettingsActivity$19;-><init>(Lcom/poverka/httpFileClient/activity/SettingsActivity;)V

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 705
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 706
    .end local v0    # "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    goto :goto_0

    .line 707
    :cond_1
    const-string v5, "station_head1"

    .line 708
    .local v5, "user":Ljava/lang/String;
    const-string v6, "I8X_V..oe%OX"

    .line 709
    .local v6, "password":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 710
    .local v7, "auth":Ljava/lang/String;
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v8

    .line 711
    .local v8, "encodedAuth":[B
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Basic "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 713
    .local v10, "authHeaderValue":Ljava/lang/String;
    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v12, "getsprtown?equipmentType=1&serial=%03d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-static {v11, v12, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 715
    .local v0, "addressPath":Ljava/lang/String;
    sget-object v3, Lcom/poverka/httpFileClient/activity/SettingsActivity;->httpFileClient:Lcom/poverka/httpFileClient/util/HttpFileClient;

    invoke-virtual {v3, v0, v10}, Lcom/poverka/httpFileClient/util/HttpFileClient;->downloadServer(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    .end local v0    # "addressPath":Ljava/lang/String;
    .end local v1    # "settings":Ljava/io/File;
    .end local v2    # "text":Ljava/lang/String;
    .end local v4    # "jsonSettings":Lorg/json/JSONObject;
    .end local v5    # "user":Ljava/lang/String;
    .end local v6    # "password":Ljava/lang/String;
    .end local v7    # "auth":Ljava/lang/String;
    .end local v8    # "encodedAuth":[B
    .end local v10    # "authHeaderValue":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 717
    :catch_0
    move-exception v0

    .line 718
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 720
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method private LoadFiles()V
    .locals 15

    .line 638
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 639
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "types.json"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 640
    .local v1, "type":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "tests.json"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 642
    .local v2, "test":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v4, "absolute path is \'%s\'"

    const-string v5, "can not delete file \'%s\' from \'Downloads\'"

    const v6, 0x7f0f007d

    const-string v7, "SettingsActivity"

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v3, :cond_1

    .line 643
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 644
    .local v3, "typeString":Ljava/lang/String;
    iget-object v10, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Lcom/poverka/httpFileClient/util/MyFileReader;->writeInternalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v10

    if-nez v10, :cond_0

    .line 647
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v11, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v10, v5, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v11, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v10, v4, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_0
    new-instance v10, Lcom/poverka/httpFileClient/util/MyFileReader$UpdateStorage;

    iget-object v11, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-direct {v10, v11, v1}, Lcom/poverka/httpFileClient/util/MyFileReader$UpdateStorage;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 651
    iget-object v10, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v12, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v12, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-array v13, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v8

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 653
    .end local v3    # "typeString":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 654
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 655
    .local v3, "testString":Ljava/lang/String;
    iget-object v10, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Lcom/poverka/httpFileClient/util/MyFileReader;->writeInternalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v10

    if-nez v10, :cond_2

    .line 658
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v11, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v10, v5, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v10, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v5, v4, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_2
    new-instance v4, Lcom/poverka/httpFileClient/util/MyFileReader$UpdateStorage;

    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-direct {v4, v5, v2}, Lcom/poverka/httpFileClient/util/MyFileReader$UpdateStorage;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 662
    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v7, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v7, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 665
    .end local v3    # "testString":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->view:Landroid/view/View;

    const v4, 0x7f09005d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 666
    .local v3, "buttonLoadLocal":Landroid/widget/Button;
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 667
    return-void
.end method

.method private LoadServer()V
    .locals 8

    .line 670
    const-string v0, "station_head1"

    .line 671
    .local v0, "user":Ljava/lang/String;
    const-string v1, "I8X_V..oe%OX"

    .line 672
    .local v1, "password":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 673
    .local v2, "auth":Ljava/lang/String;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    .line 674
    .local v3, "encodedAuth":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Basic "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 676
    .local v4, "authHeaderValue":Ljava/lang/String;
    const-string v5, "device-types/download-simple?device-class=8"

    .line 677
    .local v5, "deviceTypePath":Ljava/lang/String;
    const-string v6, "ver-tests/download?equipment-type=1"

    .line 679
    .local v6, "testTypePath":Ljava/lang/String;
    sget-object v7, Lcom/poverka/httpFileClient/activity/SettingsActivity;->httpFileClient:Lcom/poverka/httpFileClient/util/HttpFileClient;

    invoke-virtual {v7, v5, v4}, Lcom/poverka/httpFileClient/util/HttpFileClient;->downloadServer(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    sget-object v7, Lcom/poverka/httpFileClient/activity/SettingsActivity;->httpFileClient:Lcom/poverka/httpFileClient/util/HttpFileClient;

    invoke-virtual {v7, v6, v4}, Lcom/poverka/httpFileClient/util/HttpFileClient;->downloadServer(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    return-void
.end method

.method private LoadSettings()V
    .locals 9

    .line 573
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->view:Landroid/view/View;

    const v1, 0x7f09005c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 574
    .local v0, "buttonLoadAddress":Landroid/widget/Button;
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->view:Landroid/view/View;

    const v2, 0x7f090058

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 575
    .local v1, "buttonSetIP":Landroid/widget/Button;
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->view:Landroid/view/View;

    const v3, 0x7f090177

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    .line 577
    .local v2, "switchDispatcher":Landroid/widget/Switch;
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "settings.json"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 578
    .local v3, "settings":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 580
    :try_start_0
    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 581
    .local v4, "text":Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 582
    .local v6, "jsonSettings":Lorg/json/JSONObject;
    const-string v7, "ip"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 583
    const-string v7, "local"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v2, v8}, Landroid/widget/Switch;->setChecked(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "text":Ljava/lang/String;
    .end local v6    # "jsonSettings":Lorg/json/JSONObject;
    goto :goto_1

    .line 584
    :catch_0
    move-exception v4

    .line 585
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 586
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_1
    goto :goto_2

    .line 588
    :cond_1
    sget-object v4, Lcom/poverka/httpFileClient/activity/MainActivity;->IP:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 589
    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 591
    :goto_2
    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 592
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    .line 594
    :cond_2
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 596
    :goto_3
    return-void
.end method

.method private static LoadStreets(II)V
    .locals 9
    .param p0, "id"    # I
    .param p1, "station"    # I

    .line 723
    const-string v0, "station_head1"

    .line 724
    .local v0, "user":Ljava/lang/String;
    const-string v1, "I8X_V..oe%OX"

    .line 725
    .local v1, "password":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 726
    .local v2, "auth":Ljava/lang/String;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    .line 727
    .local v3, "encodedAuth":[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Basic "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 729
    .local v5, "authHeaderValue":Ljava/lang/String;
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v8, 0x1

    aput-object v4, v7, v8

    const-string v4, "getsprstreet?townId=%d&equipmentType=1&serial=%03d"

    invoke-static {v6, v4, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 731
    .local v4, "streetPath":Ljava/lang/String;
    sget-object v6, Lcom/poverka/httpFileClient/activity/SettingsActivity;->httpFileClient:Lcom/poverka/httpFileClient/util/HttpFileClient;

    invoke-virtual {v6, v4, v5}, Lcom/poverka/httpFileClient/util/HttpFileClient;->downloadServer(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 1415
    const-string v0, "SettingsActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    return-void
.end method

.method private MetrologistNameClicked()V
    .locals 7

    .line 785
    const-string v0, "metrologist"

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "settings.json"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 787
    .local v1, "settings":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 788
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    const v2, 0x7f0f00ea

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 789
    return-void

    .line 792
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 793
    .local v2, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0f005e

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 794
    new-instance v4, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 795
    .local v4, "editName":Landroid/widget/EditText;
    const/high16 v5, 0x2000000

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 796
    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 797
    const/4 v3, 0x4

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setTextAlignment(I)V

    .line 799
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 800
    new-instance v3, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 801
    .local v3, "jsonSettings":Lorg/json/JSONObject;
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 802
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    .end local v3    # "jsonSettings":Lorg/json/JSONObject;
    :cond_1
    goto :goto_0

    .line 805
    :catch_0
    move-exception v0

    .line 806
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 809
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 810
    new-instance v0, Lcom/poverka/httpFileClient/activity/SettingsActivity$22;

    invoke-direct {v0, p0, v4, v1}, Lcom/poverka/httpFileClient/activity/SettingsActivity$22;-><init>(Lcom/poverka/httpFileClient/activity/SettingsActivity;Landroid/widget/EditText;Ljava/io/File;)V

    const-string v3, "OK"

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 829
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 830
    return-void
.end method

.method private PaymentAccount()V
    .locals 15

    .line 854
    new-instance v5, Ljava/io/File;

    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "settings.json"

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 856
    .local v5, "settings":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    const v2, 0x7f0f00e3

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c0059

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 860
    .local v7, "paymentView":Landroid/view/View;
    const v0, 0x7f0901b3

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    .line 861
    .local v8, "textStation":Landroid/widget/TextView;
    const v0, 0x7f0900a6

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/EditText;

    .line 862
    .local v9, "editPaymentAccountCurrent":Landroid/widget/EditText;
    const v0, 0x7f090178

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/Switch;

    .line 865
    .local v10, "switchPaymentAccountGenerate":Landroid/widget/Switch;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    .line 866
    .local v11, "jsonSettings":Lorg/json/JSONObject;
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "%03d"

    new-array v4, v1, [Ljava/lang/Object;

    const-string v6, "station"

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v12, 0x0

    aput-object v6, v4, v12

    invoke-static {v0, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 867
    const-string v0, "paymentAccountCurrent"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    move v13, v0

    .line 868
    .local v13, "paymentAccountCurrent":I
    if-eqz v13, :cond_1

    .line 869
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "%05d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v12

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 870
    const-string v0, "paymentAccountGenerate"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v10, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 873
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 874
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f0158

    .line 875
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    .line 876
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f0059

    .line 877
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 878
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    move-object v12, v0

    .line 879
    .local v12, "dialogNew":Landroid/app/AlertDialog;
    new-instance v14, Lcom/poverka/httpFileClient/activity/SettingsActivity$24;

    move-object v0, v14

    move-object v1, p0

    move-object v2, v12

    move-object v3, v9

    move-object v4, v11

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/poverka/httpFileClient/activity/SettingsActivity$24;-><init>(Lcom/poverka/httpFileClient/activity/SettingsActivity;Landroid/app/AlertDialog;Landroid/widget/EditText;Lorg/json/JSONObject;Ljava/io/File;Landroid/widget/Switch;)V

    invoke-virtual {v12, v14}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 916
    invoke-virtual {v12}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 920
    .end local v11    # "jsonSettings":Lorg/json/JSONObject;
    .end local v12    # "dialogNew":Landroid/app/AlertDialog;
    .end local v13    # "paymentAccountCurrent":I
    goto :goto_0

    .line 918
    :catch_0
    move-exception v0

    .line 919
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 922
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v7    # "paymentView":Landroid/view/View;
    .end local v8    # "textStation":Landroid/widget/TextView;
    .end local v9    # "editPaymentAccountCurrent":Landroid/widget/EditText;
    .end local v10    # "switchPaymentAccountGenerate":Landroid/widget/Switch;
    :goto_0
    return-void
.end method

.method private ReSendProtocol()V
    .locals 4

    .line 833
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->checkMobileDataEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 834
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 835
    .local v0, "builderSmall":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0f001e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 836
    const v1, 0x7f0f00e5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 837
    new-instance v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$23;

    invoke-direct {v1, p0}, Lcom/poverka/httpFileClient/activity/SettingsActivity$23;-><init>(Lcom/poverka/httpFileClient/activity/SettingsActivity;)V

    const-string v2, "OK"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 842
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 843
    .local v1, "dialogSmall":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 844
    .end local v0    # "builderSmall":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialogSmall":Landroid/app/AlertDialog;
    goto :goto_0

    .line 845
    :cond_0
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->view:Landroid/view/View;

    const v1, 0x7f090058

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 846
    .local v0, "buttonSetIP":Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/poverka/httpFileClient/activity/MainActivity;->IP:Ljava/lang/String;

    .line 848
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    const-class v3, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 849
    .local v1, "reSendIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 851
    .end local v0    # "buttonSetIP":Landroid/widget/Button;
    .end local v1    # "reSendIntent":Landroid/content/Intent;
    :goto_0
    return-void
.end method

.method private SelectLanguage()V
    .locals 4

    .line 599
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 600
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    const v2, 0x7f0f0155

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 602
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    const v3, 0x7f0f0156

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    const v3, 0x7f0f0154

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 603
    .local v1, "languages":[Ljava/lang/String;
    new-instance v2, Lcom/poverka/httpFileClient/activity/SettingsActivity$18;

    invoke-direct {v2, p0}, Lcom/poverka/httpFileClient/activity/SettingsActivity$18;-><init>(Lcom/poverka/httpFileClient/activity/SettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 614
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 615
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 616
    return-void
.end method

.method private SetEnvironment()V
    .locals 17

    .line 508
    move-object/from16 v7, p0

    const-string v0, "0123456789"

    new-instance v6, Ljava/io/File;

    iget-object v1, v7, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "settings.json"

    invoke-direct {v6, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 511
    .local v6, "settings":Ljava/io/File;
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 512
    new-instance v1, Lorg/json/JSONObject;

    iget-object v3, v7, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v8, v1

    .line 513
    .local v8, "jsonSettings":Lorg/json/JSONObject;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, v7, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v9, v1

    .line 514
    .local v9, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0f005f

    invoke-virtual {v9, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 515
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v10, v1

    .line 516
    .local v10, "layout":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v11, v1

    .line 517
    .local v11, "textT":Landroid/widget/TextView;
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v12, v1

    .line 518
    .local v12, "textH":Landroid/widget/TextView;
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object v13, v1

    .line 519
    .local v13, "editT":Landroid/widget/EditText;
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object v14, v1

    .line 521
    .local v14, "editH":Landroid/widget/EditText;
    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 523
    const v1, 0x7f0f018e

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(I)V

    .line 524
    const v1, 0x7f0f008b

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(I)V

    .line 526
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v15, v1

    .line 527
    .local v15, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v15, v2, v1, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 529
    const/16 v1, 0x64

    invoke-virtual {v13, v1}, Landroid/widget/EditText;->setWidth(I)V

    .line 530
    invoke-virtual {v13, v15}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 531
    const/high16 v2, 0x2000000

    invoke-virtual {v13, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 532
    const/4 v3, 0x2

    invoke-virtual {v13, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 533
    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 534
    const/4 v4, 0x4

    invoke-virtual {v13, v4}, Landroid/widget/EditText;->setTextAlignment(I)V

    .line 535
    const-string v5, "environmentT"

    const/16 v4, 0x16

    invoke-virtual {v8, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 537
    invoke-virtual {v14, v1}, Landroid/widget/EditText;->setWidth(I)V

    .line 538
    invoke-virtual {v13, v15}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 539
    invoke-virtual {v14, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 540
    invoke-virtual {v14, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 541
    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 542
    const/4 v0, 0x4

    invoke-virtual {v14, v0}, Landroid/widget/EditText;->setTextAlignment(I)V

    .line 543
    const-string v0, "environmentH"

    const/16 v1, 0x3c

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 545
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 546
    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 547
    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 548
    invoke-virtual {v10, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 550
    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 551
    const-string v0, "OK"

    new-instance v5, Lcom/poverka/httpFileClient/activity/SettingsActivity$17;

    move-object v1, v5

    move-object/from16 v2, p0

    move-object v3, v8

    move-object v4, v13

    move-object/from16 v16, v8

    move-object v8, v5

    .end local v8    # "jsonSettings":Lorg/json/JSONObject;
    .local v16, "jsonSettings":Lorg/json/JSONObject;
    move-object v5, v14

    invoke-direct/range {v1 .. v6}, Lcom/poverka/httpFileClient/activity/SettingsActivity$17;-><init>(Lcom/poverka/httpFileClient/activity/SettingsActivity;Lorg/json/JSONObject;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/io/File;)V

    invoke-virtual {v9, v0, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 563
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 564
    .end local v9    # "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    .end local v10    # "layout":Landroid/widget/LinearLayout;
    .end local v11    # "textT":Landroid/widget/TextView;
    .end local v12    # "textH":Landroid/widget/TextView;
    .end local v13    # "editT":Landroid/widget/EditText;
    .end local v14    # "editH":Landroid/widget/EditText;
    .end local v15    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v16    # "jsonSettings":Lorg/json/JSONObject;
    goto :goto_0

    .line 565
    :cond_0
    iget-object v0, v7, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    const v1, 0x7f0f00e3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    :goto_0
    goto :goto_1

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 570
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method private SetIP()V
    .locals 18

    .line 427
    move-object/from16 v8, p0

    new-instance v4, Ljava/io/File;

    iget-object v0, v8, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "settings.json"

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 428
    .local v4, "settings":Ljava/io/File;
    iget-object v0, v8, Lcom/poverka/httpFileClient/activity/SettingsActivity;->view:Landroid/view/View;

    const v1, 0x7f090058

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/Button;

    .line 429
    .local v9, "buttonSetIP":Landroid/widget/Button;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, v8, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v10, v0

    .line 430
    .local v10, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v0, 0x7f0f005d

    invoke-virtual {v10, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 431
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v11, v0

    .line 432
    .local v11, "layout":Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object v12, v0

    .line 433
    .local v12, "editIP":Landroid/widget/EditText;
    new-instance v0, Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;)V

    move-object v13, v0

    .line 434
    .local v13, "switchCamera":Landroidx/appcompat/widget/SwitchCompat;
    new-instance v0, Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;)V

    move-object v14, v0

    .line 436
    .local v14, "switchLogging":Landroidx/appcompat/widget/SwitchCompat;
    const/4 v1, 0x0

    .line 437
    .local v1, "cameraChecked":Z
    const/4 v2, 0x0

    .line 439
    .local v2, "loggingChecked":Z
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    new-instance v0, Lorg/json/JSONObject;

    iget-object v3, v8, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 441
    .local v0, "jsonSettings":Lorg/json/JSONObject;
    const-string v3, "photoType"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    move v1, v3

    .line 442
    const-string v3, "writeLog"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 446
    .end local v0    # "jsonSettings":Lorg/json/JSONObject;
    :cond_0
    move v0, v1

    move v15, v2

    goto :goto_0

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v0, v1

    move v15, v2

    .line 448
    .end local v1    # "cameraChecked":Z
    .end local v2    # "loggingChecked":Z
    .local v0, "cameraChecked":Z
    .local v15, "loggingChecked":Z
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 449
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 451
    const/high16 v1, 0x2000000

    invoke-virtual {v12, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 452
    iget-object v1, v8, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0146

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 453
    const/4 v1, 0x2

    invoke-virtual {v12, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 454
    const-string v1, "0123456789."

    invoke-static {v1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 455
    const/4 v1, 0x4

    invoke-virtual {v12, v1}, Landroid/widget/EditText;->setTextAlignment(I)V

    .line 456
    invoke-virtual {v9}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 458
    const v1, 0x7f0f017e

    invoke-virtual {v13, v1}, Landroidx/appcompat/widget/SwitchCompat;->setText(I)V

    .line 459
    const v1, 0x7f0f017f

    invoke-virtual {v14, v1}, Landroidx/appcompat/widget/SwitchCompat;->setText(I)V

    .line 461
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v7, v1

    .line 462
    .local v7, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v1, 0x19

    const/16 v2, 0xa

    invoke-virtual {v7, v1, v2, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 464
    invoke-virtual {v13, v7}, Landroidx/appcompat/widget/SwitchCompat;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 465
    invoke-virtual {v13, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 466
    invoke-virtual {v14, v7}, Landroidx/appcompat/widget/SwitchCompat;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    invoke-virtual {v14, v15}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 469
    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 470
    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 471
    invoke-virtual {v11, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 473
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 475
    new-instance v6, Lcom/poverka/httpFileClient/activity/SettingsActivity$16;

    move-object v1, v6

    move-object/from16 v2, p0

    move-object v3, v12

    move-object v5, v13

    move/from16 v16, v0

    move-object v0, v6

    .end local v0    # "cameraChecked":Z
    .local v16, "cameraChecked":Z
    move-object v6, v14

    move-object/from16 v17, v7

    .end local v7    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .local v17, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object v7, v9

    invoke-direct/range {v1 .. v7}, Lcom/poverka/httpFileClient/activity/SettingsActivity$16;-><init>(Lcom/poverka/httpFileClient/activity/SettingsActivity;Landroid/widget/EditText;Ljava/io/File;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/Button;)V

    const-string v1, "OK"

    invoke-virtual {v10, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 504
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 505
    return-void
.end method

.method private Support()V
    .locals 13

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/util/MyFileReader;->getLogFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 377
    .local v0, "logFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "settings.json"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 379
    .local v1, "settings":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 380
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 381
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    const v4, 0x7f0f00ea

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 382
    return-void

    .line 385
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 386
    .local v2, "curDate":Ljava/util/Date;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "ddMMyyyy"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 388
    .local v4, "format":Ljava/text/SimpleDateFormat;
    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 389
    .local v5, "text":Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 391
    .local v6, "jsonSettings":Lorg/json/JSONObject;
    sget-object v7, Lcom/poverka/httpFileClient/activity/SettingsActivity;->httpFileClient:Lcom/poverka/httpFileClient/util/HttpFileClient;

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v9, "logs/upload/1/%03d/%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "station"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v3

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3, v0}, Lcom/poverka/httpFileClient/util/HttpFileClient;->headUploadServer(Ljava/lang/String;Ljava/io/File;)V

    .line 392
    .end local v2    # "curDate":Ljava/util/Date;
    .end local v4    # "format":Ljava/text/SimpleDateFormat;
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "jsonSettings":Lorg/json/JSONObject;
    goto :goto_0

    .line 393
    :cond_1
    const-string v2, "SettingsActivity"

    const-string v3, "no log"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    .end local v0    # "logFile":Ljava/io/File;
    .end local v1    # "settings":Ljava/io/File;
    :goto_0
    goto :goto_1

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 399
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 400
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f017b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 402
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/poverka/httpFileClient/activity/SettingsActivity$15;

    invoke-direct {v2, p0}, Lcom/poverka/httpFileClient/activity/SettingsActivity$15;-><init>(Lcom/poverka/httpFileClient/activity/SettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 422
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 423
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 424
    return-void
.end method

.method private VersionInfoClicked()V
    .locals 8

    .line 767
    :try_start_0
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 769
    .local v0, "pInfo":Landroid/content/pm/PackageInfo;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 770
    .local v1, "builderSmall":Landroid/app/AlertDialog$Builder;
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f01ad

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v6, v5, v2

    const/4 v2, 0x1

    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f00a2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 771
    const v2, 0x7f0f01b2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 772
    const-string v2, "OK"

    new-instance v3, Lcom/poverka/httpFileClient/activity/SettingsActivity$21;

    invoke-direct {v3, p0}, Lcom/poverka/httpFileClient/activity/SettingsActivity$21;-><init>(Lcom/poverka/httpFileClient/activity/SettingsActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 777
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 778
    .local v2, "dialogSmall":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 781
    .end local v0    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "builderSmall":Landroid/app/AlertDialog$Builder;
    .end local v2    # "dialogSmall":Landroid/app/AlertDialog;
    goto :goto_0

    .line 779
    :catch_0
    move-exception v0

    .line 780
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 782
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return-void
.end method

.method static synthetic access$100(Lcom/poverka/httpFileClient/activity/SettingsActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/SettingsActivity;
    .param p1, "x1"    # Z

    .line 71
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->DispatcherSwitched(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/poverka/httpFileClient/activity/SettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/SettingsActivity;

    .line 71
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->VersionInfoClicked()V

    return-void
.end method

.method static synthetic access$1100(Lcom/poverka/httpFileClient/activity/SettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/SettingsActivity;

    .line 71
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->MetrologistNameClicked()V

    return-void
.end method

.method static synthetic access$1200(Lcom/poverka/httpFileClient/activity/SettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/SettingsActivity;

    .line 71
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->ReSendProtocol()V

    return-void
.end method

.method static synthetic access$1300(Lcom/poverka/httpFileClient/activity/SettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/SettingsActivity;

    .line 71
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->PaymentAccount()V

    return-void
.end method

.method static synthetic access$1400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/SettingsActivity;

    .line 71
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/SettingsActivity;

    .line 71
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/SettingsActivity;

    .line 71
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->myHandler:Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/poverka/httpFileClient/activity/SettingsActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/SettingsActivity;

    .line 71
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1800(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 71
    invoke-static {p0}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->Log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/poverka/httpFileClient/activity/SettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/SettingsActivity;

    .line 71
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->checkApkUpdate()V

    return-void
.end method

.method static synthetic access$200(Lcom/poverka/httpFileClient/activity/SettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/SettingsActivity;

    .line 71
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->SetIP()V

    return-void
.end method

.method static synthetic access$2000()Lcom/poverka/httpFileClient/util/HttpFileClient;
    .locals 1

    .line 71
    sget-object v0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->httpFileClient:Lcom/poverka/httpFileClient/util/HttpFileClient;

    return-object v0
.end method

.method static synthetic access$2100()I
    .locals 1

    .line 71
    sget v0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->townID:I

    return v0
.end method

.method static synthetic access$2102(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 71
    sput p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->townID:I

    return p0
.end method

.method static synthetic access$2200()Ljava/lang/String;
    .locals 1

    .line 71
    sget-object v0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->townName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 71
    sput-object p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->townName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2300()Landroid/app/ProgressDialog;
    .locals 1

    .line 71
    sget-object v0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2500(II)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 71
    invoke-static {p0, p1}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->LoadStreets(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/poverka/httpFileClient/activity/SettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/SettingsActivity;

    .line 71
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->SetEnvironment()V

    return-void
.end method

.method static synthetic access$400(Lcom/poverka/httpFileClient/activity/SettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/SettingsActivity;

    .line 71
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->SelectLanguage()V

    return-void
.end method

.method static synthetic access$500(Lcom/poverka/httpFileClient/activity/SettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/SettingsActivity;

    .line 71
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->LoadFiles()V

    return-void
.end method

.method static synthetic access$600(Lcom/poverka/httpFileClient/activity/SettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/SettingsActivity;

    .line 71
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->LoadServer()V

    return-void
.end method

.method static synthetic access$700(Lcom/poverka/httpFileClient/activity/SettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/SettingsActivity;

    .line 71
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->LoadAddress()V

    return-void
.end method

.method static synthetic access$800(Lcom/poverka/httpFileClient/activity/SettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/SettingsActivity;

    .line 71
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->CheckApkUpdates()V

    return-void
.end method

.method static synthetic access$900(Lcom/poverka/httpFileClient/activity/SettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/SettingsActivity;

    .line 71
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->Support()V

    return-void
.end method

.method private checkApkUpdate()V
    .locals 8

    .line 1401
    const-string v0, "station"

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "settings.json"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1402
    .local v1, "settings":Ljava/io/File;
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1403
    .local v2, "text":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1405
    .local v3, "jsonSettings":Lorg/json/JSONObject;
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1406
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v5, "apk/last?equipment-type=1&serial=%03d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1407
    .local v0, "apkLast":Ljava/lang/String;
    sget-object v4, Lcom/poverka/httpFileClient/activity/SettingsActivity;->httpFileClient:Lcom/poverka/httpFileClient/util/HttpFileClient;

    invoke-virtual {v4, v0}, Lcom/poverka/httpFileClient/util/HttpFileClient;->headDownloadServer(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1411
    .end local v0    # "apkLast":Ljava/lang/String;
    .end local v1    # "settings":Ljava/io/File;
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "jsonSettings":Lorg/json/JSONObject;
    :cond_0
    goto :goto_0

    .line 1409
    :catch_0
    move-exception v0

    .line 1410
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1412
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method private checkDisabledUpdate(I)V
    .locals 4
    .param p1, "station"    # I

    .line 1395
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "stations/state/1/%03d?ver=2"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1396
    .local v0, "path":Ljava/lang/String;
    sget-object v1, Lcom/poverka/httpFileClient/activity/SettingsActivity;->httpFileClient:Lcom/poverka/httpFileClient/util/HttpFileClient;

    invoke-virtual {v1, v0}, Lcom/poverka/httpFileClient/util/HttpFileClient;->headDownloadServer(Ljava/lang/String;)V

    .line 1397
    return-void
.end method

.method private checkMobileDataEnabled(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 1381
    const/4 v0, 0x0

    .line 1382
    .local v0, "mobileDataEnabled":Z
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1384
    .local v1, "cm":Landroid/net/ConnectivityManager;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1385
    .local v2, "cmClass":Ljava/lang/Class;
    const-string v3, "getMobileDataEnabled"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1386
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1387
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    .line 1390
    .end local v2    # "cmClass":Ljava/lang/Class;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 1388
    :catch_0
    move-exception v2

    .line 1389
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1391
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method private initViews()V
    .locals 29

    .line 105
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->view:Landroid/view/View;

    const v2, 0x7f090177

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    .line 106
    .local v1, "switchDispatcher":Landroid/widget/Switch;
    iget-object v2, v0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->view:Landroid/view/View;

    const v3, 0x7f090058

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 107
    .local v2, "buttonSetIP":Landroid/widget/Button;
    iget-object v3, v0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->view:Landroid/view/View;

    const v4, 0x7f090057

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 108
    .local v3, "buttonSetEnvironment":Landroid/widget/Button;
    iget-object v4, v0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->view:Landroid/view/View;

    const v5, 0x7f09005b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 109
    .local v4, "buttonLanguage":Landroid/widget/Button;
    iget-object v5, v0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->view:Landroid/view/View;

    const v6, 0x7f09005d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 110
    .local v5, "buttonLoadLocal":Landroid/widget/Button;
    iget-object v6, v0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->view:Landroid/view/View;

    const v7, 0x7f09005e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 111
    .local v6, "buttonLoadServer":Landroid/widget/Button;
    iget-object v7, v0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->view:Landroid/view/View;

    const v8, 0x7f09005c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 112
    .local v7, "buttonLoadAddress":Landroid/widget/Button;
    iget-object v8, v0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->view:Landroid/view/View;

    const v9, 0x7f09005a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 113
    .local v8, "buttonCheckApkUpdate":Landroid/widget/Button;
    iget-object v9, v0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->view:Landroid/view/View;

    const v10, 0x7f090062

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 114
    .local v9, "buttonSupport":Landroid/widget/Button;
    iget-object v10, v0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->view:Landroid/view/View;

    const v11, 0x7f090063

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 115
    .local v10, "buttonVersionInfo":Landroid/widget/Button;
    iget-object v11, v0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->view:Landroid/view/View;

    const v12, 0x7f09005f

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 116
    .local v11, "buttonMetrologistName":Landroid/widget/Button;
    iget-object v12, v0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->view:Landroid/view/View;

    const v13, 0x7f090061

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 117
    .local v12, "buttonReSendProtocol":Landroid/widget/Button;
    iget-object v13, v0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->view:Landroid/view/View;

    const v14, 0x7f090060

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 119
    .local v13, "buttonPaymentAccount":Landroid/widget/Button;
    new-instance v14, Landroid/util/DisplayMetrics;

    invoke-direct {v14}, Landroid/util/DisplayMetrics;-><init>()V

    .line 120
    .local v14, "metrics":Landroid/util/DisplayMetrics;
    iget-object v15, v0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v15}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v15

    invoke-interface {v15}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v15

    invoke-virtual {v15, v14}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 121
    iget v15, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 122
    .local v15, "screenHeight":I
    iget v0, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 124
    .local v0, "screenWidth":I
    move-object/from16 v16, v14

    .end local v14    # "metrics":Landroid/util/DisplayMetrics;
    .local v16, "metrics":Landroid/util/DisplayMetrics;
    int-to-float v14, v15

    const v17, 0x3de147ae    # 0.11f

    mul-float v14, v14, v17

    float-to-int v14, v14

    .line 125
    .local v14, "buttonHeight":I
    move-object/from16 v17, v4

    .end local v4    # "buttonLanguage":Landroid/widget/Button;
    .local v17, "buttonLanguage":Landroid/widget/Button;
    int-to-float v4, v0

    const v18, 0x3ecccccd    # 0.4f

    mul-float v4, v4, v18

    float-to-int v4, v4

    .line 126
    .local v4, "buttonWidth":I
    move/from16 v18, v0

    .end local v0    # "screenWidth":I
    .local v18, "screenWidth":I
    int-to-float v0, v15

    const v19, 0x3d0f5c29    # 0.035f

    mul-float v0, v0, v19

    float-to-int v0, v0

    .line 128
    .local v0, "textSHeight":I
    move/from16 v19, v0

    .end local v0    # "textSHeight":I
    .local v19, "textSHeight":I
    int-to-float v0, v15

    const v20, 0x3ca3d70a    # 0.02f

    mul-float v0, v0, v20

    float-to-int v0, v0

    .line 130
    .local v0, "marginHeight":I
    invoke-virtual {v1}, Landroid/widget/Switch;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    move/from16 v21, v15

    .end local v15    # "screenHeight":I
    .local v21, "screenHeight":I
    move-object/from16 v15, v20

    check-cast v15, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 131
    .local v15, "paramsC":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    move-object/from16 v20, v13

    .end local v13    # "buttonPaymentAccount":Landroid/widget/Button;
    .local v20, "buttonPaymentAccount":Landroid/widget/Button;
    add-int/lit8 v13, v4, -0x14

    iput v13, v15, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 132
    mul-int/lit8 v13, v0, 0x2

    iput v13, v15, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 133
    invoke-virtual {v1}, Landroid/widget/Switch;->requestLayout()V

    .line 135
    invoke-virtual {v7}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 136
    .end local v15    # "paramsC":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .local v13, "paramsC":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    iput v4, v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 137
    iput v14, v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 138
    mul-int/lit8 v15, v0, 0x2

    iput v15, v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 139
    invoke-virtual {v7}, Landroid/widget/Button;->requestLayout()V

    .line 141
    invoke-virtual {v5}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    move-object v13, v15

    check-cast v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 142
    iput v4, v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 143
    iput v14, v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 144
    iput v0, v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 145
    invoke-virtual {v5}, Landroid/widget/Button;->requestLayout()V

    .line 147
    invoke-virtual {v6}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    move-object v13, v15

    check-cast v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 148
    iput v4, v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 149
    iput v14, v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 150
    iput v0, v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 151
    invoke-virtual {v6}, Landroid/widget/Button;->requestLayout()V

    .line 153
    invoke-virtual {v8}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    move-object v13, v15

    check-cast v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 154
    iput v4, v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 155
    iput v14, v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 156
    iput v0, v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 157
    invoke-virtual {v8}, Landroid/widget/Button;->requestLayout()V

    .line 159
    invoke-virtual {v9}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    move-object v13, v15

    check-cast v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 160
    iput v4, v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 161
    iput v14, v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 162
    iput v0, v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 163
    invoke-virtual {v9}, Landroid/widget/Button;->requestLayout()V

    .line 165
    invoke-virtual {v10}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    move-object v13, v15

    check-cast v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 166
    iput v4, v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 167
    iput v14, v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 168
    iput v0, v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 169
    invoke-virtual {v10}, Landroid/widget/Button;->requestLayout()V

    .line 171
    invoke-virtual {v11}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    move-object v13, v15

    check-cast v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 172
    iput v4, v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 173
    iput v14, v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 174
    iput v0, v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 175
    invoke-virtual {v11}, Landroid/widget/Button;->requestLayout()V

    .line 177
    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    move-object v13, v15

    check-cast v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 178
    iput v4, v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 179
    iput v14, v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 180
    iput v0, v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 181
    invoke-virtual {v2}, Landroid/widget/Button;->requestLayout()V

    .line 183
    invoke-virtual {v3}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    move-object v13, v15

    check-cast v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 184
    iput v4, v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 185
    iput v14, v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 186
    iput v0, v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 187
    invoke-virtual {v3}, Landroid/widget/Button;->requestLayout()V

    .line 189
    invoke-virtual {v12}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    move-object v13, v15

    check-cast v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 190
    iput v4, v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 191
    iput v14, v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 192
    iput v0, v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 193
    invoke-virtual {v12}, Landroid/widget/Button;->requestLayout()V

    .line 195
    invoke-virtual/range {v20 .. v20}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    move-object v13, v15

    check-cast v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 196
    iput v4, v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 197
    iput v14, v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 198
    iput v0, v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 199
    invoke-virtual/range {v20 .. v20}, Landroid/widget/Button;->requestLayout()V

    .line 201
    invoke-direct/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->LoadSettings()V

    .line 203
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/widget/Button;->setEnabled(Z)V

    .line 205
    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v19, v4

    .end local v4    # "buttonWidth":I
    .local v0, "textSHeight":I
    .local v19, "buttonWidth":I
    .local v22, "marginHeight":I
    int-to-float v4, v0

    invoke-virtual {v1, v15, v4}, Landroid/widget/Switch;->setTextSize(IF)V

    .line 206
    int-to-float v4, v0

    invoke-virtual {v2, v15, v4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 207
    int-to-float v4, v0

    invoke-virtual {v3, v15, v4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 208
    int-to-float v4, v0

    move-object/from16 v23, v13

    move-object/from16 v13, v17

    .end local v17    # "buttonLanguage":Landroid/widget/Button;
    .local v13, "buttonLanguage":Landroid/widget/Button;
    .local v23, "paramsC":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    invoke-virtual {v13, v15, v4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 209
    int-to-float v4, v0

    invoke-virtual {v5, v15, v4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 210
    int-to-float v4, v0

    invoke-virtual {v6, v15, v4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 211
    int-to-float v4, v0

    invoke-virtual {v7, v15, v4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 212
    int-to-float v4, v0

    invoke-virtual {v8, v15, v4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 213
    int-to-float v4, v0

    invoke-virtual {v9, v15, v4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 214
    int-to-float v4, v0

    invoke-virtual {v10, v15, v4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 215
    int-to-float v4, v0

    invoke-virtual {v11, v15, v4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 216
    int-to-float v4, v0

    invoke-virtual {v12, v15, v4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 217
    int-to-float v4, v0

    move/from16 v17, v0

    move-object/from16 v0, v20

    .end local v20    # "buttonPaymentAccount":Landroid/widget/Button;
    .local v0, "buttonPaymentAccount":Landroid/widget/Button;
    .local v17, "textSHeight":I
    invoke-virtual {v0, v15, v4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 219
    new-instance v4, Lcom/poverka/httpFileClient/activity/SettingsActivity$1;

    move-object/from16 v15, p0

    invoke-direct {v4, v15}, Lcom/poverka/httpFileClient/activity/SettingsActivity$1;-><init>(Lcom/poverka/httpFileClient/activity/SettingsActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 225
    new-instance v4, Lcom/poverka/httpFileClient/activity/SettingsActivity$2;

    invoke-direct {v4, v15}, Lcom/poverka/httpFileClient/activity/SettingsActivity$2;-><init>(Lcom/poverka/httpFileClient/activity/SettingsActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    new-instance v4, Lcom/poverka/httpFileClient/activity/SettingsActivity$3;

    invoke-direct {v4, v15}, Lcom/poverka/httpFileClient/activity/SettingsActivity$3;-><init>(Lcom/poverka/httpFileClient/activity/SettingsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    new-instance v4, Lcom/poverka/httpFileClient/activity/SettingsActivity$4;

    invoke-direct {v4, v15}, Lcom/poverka/httpFileClient/activity/SettingsActivity$4;-><init>(Lcom/poverka/httpFileClient/activity/SettingsActivity;)V

    invoke-virtual {v13, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    new-instance v4, Lcom/poverka/httpFileClient/activity/SettingsActivity$5;

    invoke-direct {v4, v15}, Lcom/poverka/httpFileClient/activity/SettingsActivity$5;-><init>(Lcom/poverka/httpFileClient/activity/SettingsActivity;)V

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    new-instance v4, Lcom/poverka/httpFileClient/activity/SettingsActivity$6;

    invoke-direct {v4, v15}, Lcom/poverka/httpFileClient/activity/SettingsActivity$6;-><init>(Lcom/poverka/httpFileClient/activity/SettingsActivity;)V

    invoke-virtual {v6, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    new-instance v4, Lcom/poverka/httpFileClient/activity/SettingsActivity$7;

    invoke-direct {v4, v15}, Lcom/poverka/httpFileClient/activity/SettingsActivity$7;-><init>(Lcom/poverka/httpFileClient/activity/SettingsActivity;)V

    invoke-virtual {v7, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    new-instance v4, Lcom/poverka/httpFileClient/activity/SettingsActivity$8;

    invoke-direct {v4, v15}, Lcom/poverka/httpFileClient/activity/SettingsActivity$8;-><init>(Lcom/poverka/httpFileClient/activity/SettingsActivity;)V

    invoke-virtual {v8, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    new-instance v4, Lcom/poverka/httpFileClient/activity/SettingsActivity$9;

    invoke-direct {v4, v15}, Lcom/poverka/httpFileClient/activity/SettingsActivity$9;-><init>(Lcom/poverka/httpFileClient/activity/SettingsActivity;)V

    invoke-virtual {v9, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    new-instance v4, Lcom/poverka/httpFileClient/activity/SettingsActivity$10;

    invoke-direct {v4, v15}, Lcom/poverka/httpFileClient/activity/SettingsActivity$10;-><init>(Lcom/poverka/httpFileClient/activity/SettingsActivity;)V

    invoke-virtual {v10, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    new-instance v4, Lcom/poverka/httpFileClient/activity/SettingsActivity$11;

    invoke-direct {v4, v15}, Lcom/poverka/httpFileClient/activity/SettingsActivity$11;-><init>(Lcom/poverka/httpFileClient/activity/SettingsActivity;)V

    invoke-virtual {v11, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    new-instance v4, Lcom/poverka/httpFileClient/activity/SettingsActivity$12;

    invoke-direct {v4, v15}, Lcom/poverka/httpFileClient/activity/SettingsActivity$12;-><init>(Lcom/poverka/httpFileClient/activity/SettingsActivity;)V

    invoke-virtual {v12, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    new-instance v4, Lcom/poverka/httpFileClient/activity/SettingsActivity$13;

    invoke-direct {v4, v15}, Lcom/poverka/httpFileClient/activity/SettingsActivity$13;-><init>(Lcom/poverka/httpFileClient/activity/SettingsActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 299
    .local v4, "downloads":Ljava/io/File;
    move-object/from16 v24, v0

    .end local v0    # "buttonPaymentAccount":Landroid/widget/Button;
    .local v24, "buttonPaymentAccount":Landroid/widget/Button;
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    move-object/from16 v25, v1

    .end local v1    # "switchDispatcher":Landroid/widget/Switch;
    .local v25, "switchDispatcher":Landroid/widget/Switch;
    array-length v1, v0

    move-object/from16 v26, v2

    const/4 v2, 0x0

    .end local v2    # "buttonSetIP":Landroid/widget/Button;
    .local v26, "buttonSetIP":Landroid/widget/Button;
    :goto_0
    if-ge v2, v1, :cond_2

    move/from16 v20, v1

    aget-object v1, v0, v2

    .line 300
    .local v1, "file":Ljava/lang/String;
    move-object/from16 v27, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    move-object/from16 v28, v3

    .end local v3    # "buttonSetEnvironment":Landroid/widget/Button;
    .local v28, "buttonSetEnvironment":Landroid/widget/Button;
    const/4 v3, 0x6

    if-le v0, v3, :cond_1

    .line 301
    const-string v0, "types.json"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tests.json"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 303
    goto :goto_1

    .line 299
    .end local v1    # "file":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v20

    move-object/from16 v0, v27

    move-object/from16 v3, v28

    goto :goto_0

    .end local v28    # "buttonSetEnvironment":Landroid/widget/Button;
    .restart local v3    # "buttonSetEnvironment":Landroid/widget/Button;
    :cond_2
    move-object/from16 v28, v3

    .line 308
    .end local v3    # "buttonSetEnvironment":Landroid/widget/Button;
    .restart local v28    # "buttonSetEnvironment":Landroid/widget/Button;
    :goto_1
    iget-object v0, v15, Lcom/poverka/httpFileClient/activity/SettingsActivity;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$14;

    invoke-direct {v1, v15}, Lcom/poverka/httpFileClient/activity/SettingsActivity$14;-><init>(Lcom/poverka/httpFileClient/activity/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 344
    return-void
.end method


# virtual methods
.method public setLocale(Ljava/lang/String;)V
    .locals 5
    .param p1, "language"    # Ljava/lang/String;

    .line 619
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "settings.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 622
    .local v0, "settings":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 623
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 624
    .local v1, "jsonSettings":Lorg/json/JSONObject;
    const-string v2, "language"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 625
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/poverka/httpFileClient/util/MyFileReader;->writeInternalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    .end local v1    # "jsonSettings":Lorg/json/JSONObject;
    :cond_0
    goto :goto_0

    .line 627
    :catch_0
    move-exception v1

    .line 628
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 631
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    const-class v3, Lcom/poverka/httpFileClient/activity/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 632
    .local v1, "refresh":Landroid/content/Intent;
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 633
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 634
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 635
    return-void
.end method
