.class Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;
.super Landroid/os/Handler;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/poverka/httpFileClient/activity/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ALERT:I = 0x1

.field private static final ALERT_DIALOG:I = 0x2

.field private static final APK:I = 0x4

.field private static final PROMPT_APK_UPDATE:I = 0x3

.field private static final SELECT_TOWN:I = 0x5


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1168
    const-class v0, Lcom/poverka/httpFileClient/activity/SettingsActivity;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1177
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1178
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->activity:Landroid/app/Activity;

    .line 1179
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Lcom/poverka/httpFileClient/activity/SettingsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/Activity;
    .param p2, "x1"    # Lcom/poverka/httpFileClient/activity/SettingsActivity$1;

    .line 1168
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    .line 1168
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->activity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .line 1183
    move-object/from16 v9, p0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    .line 1185
    .local v10, "bundle":Landroid/os/Bundle;
    move-object/from16 v11, p1

    iget v0, v11, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v2, 0x2

    const-string v3, "OK"

    if-eq v0, v2, :cond_7

    const/4 v2, 0x3

    const v4, 0x7f0f0180

    if-eq v0, v2, :cond_6

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto/16 :goto_6

    .line 1292
    :cond_0
    :try_start_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1293
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, v9, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1294
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move v13, v1

    .line 1296
    .local v13, "screenHeight":I
    int-to-float v1, v13

    const v2, 0x3d0f5c29    # 0.035f

    mul-float v1, v1, v2

    float-to-int v14, v1

    .line 1297
    .local v14, "textSHeight":I
    int-to-float v1, v13

    const v2, 0x3d75c28f    # 0.06f

    mul-float v1, v1, v2

    float-to-int v15, v1

    .line 1298
    .local v15, "textLHeight":I
    int-to-float v1, v13

    const v2, 0x3ca3d70a    # 0.02f

    mul-float v1, v1, v2

    float-to-int v8, v1

    .line 1300
    .local v8, "marginHeight":I
    iget-object v1, v9, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->activity:Landroid/app/Activity;

    const v2, 0x7f0f019d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    .line 1301
    .local v7, "NO_TOWN":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONArray;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "townsJSON"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object v6, v1

    .line 1302
    .local v6, "townsJSON":Lorg/json/JSONArray;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v1

    .line 1304
    .local v4, "townList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/poverka/httpFileClient/containers/Address;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1305
    new-instance v2, Lcom/poverka/httpFileClient/containers/Address;

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v12, "ID"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v5, "TOWN_NAME"

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lcom/poverka/httpFileClient/containers/Address;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1304
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1308
    .end local v1    # "i":I
    :cond_1
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1309
    new-instance v1, Lcom/poverka/httpFileClient/containers/Town;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v7}, Lcom/poverka/httpFileClient/containers/Town;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v4, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1311
    new-instance v12, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler$5;

    iget-object v3, v9, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->activity:Landroid/app/Activity;

    const v5, 0x7f0c005f

    move-object v1, v12

    move-object/from16 v2, p0

    move-object/from16 v16, v4

    .end local v4    # "townList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/poverka/httpFileClient/containers/Address;>;"
    .local v16, "townList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/poverka/httpFileClient/containers/Address;>;"
    move v4, v5

    move-object/from16 v5, v16

    move-object/from16 v17, v6

    .end local v6    # "townsJSON":Lorg/json/JSONArray;
    .local v17, "townsJSON":Lorg/json/JSONArray;
    move v6, v14

    move-object/from16 v18, v7

    .end local v7    # "NO_TOWN":Ljava/lang/String;
    .local v18, "NO_TOWN":Ljava/lang/String;
    move v7, v15

    move/from16 v19, v8

    .end local v8    # "marginHeight":I
    .local v19, "marginHeight":I
    invoke-direct/range {v1 .. v8}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler$5;-><init>(Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;Landroid/content/Context;ILjava/util/ArrayList;III)V

    move-object v1, v12

    .line 1327
    .local v1, "adapterTown":Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, v9, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1328
    .local v2, "builderTownSelector":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0f0132

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1329
    new-instance v4, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;-><init>(Landroid/content/Context;)V

    .line 1330
    .local v4, "spinnerTown":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    const/16 v5, 0x14

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v5, v6, v6}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->setPadding(IIII)V

    .line 1331
    iget-object v5, v9, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v5, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->setTitle(Ljava/lang/String;)V

    .line 1332
    const-string v3, ""

    invoke-virtual {v4, v3}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->setPositiveButton(Ljava/lang/String;)V

    .line 1333
    invoke-virtual {v4, v1}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1334
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1336
    const v3, 0x7f0f0131

    new-instance v5, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler$6;

    invoke-direct {v5, v9, v4}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler$6;-><init>(Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;)V

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1363
    const v3, 0x7f0f0059

    new-instance v5, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler$7;

    invoke-direct {v5, v9}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler$7;-><init>(Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;)V

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1369
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1372
    nop

    .end local v0    # "metrics":Landroid/util/DisplayMetrics;
    .end local v1    # "adapterTown":Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;
    .end local v2    # "builderTownSelector":Landroid/app/AlertDialog$Builder;
    .end local v4    # "spinnerTown":Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
    .end local v13    # "screenHeight":I
    .end local v14    # "textSHeight":I
    .end local v15    # "textLHeight":I
    .end local v16    # "townList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/poverka/httpFileClient/containers/Address;>;"
    .end local v17    # "townsJSON":Lorg/json/JSONArray;
    .end local v18    # "NO_TOWN":Ljava/lang/String;
    .end local v19    # "marginHeight":I
    goto/16 :goto_6

    .line 1370
    :catch_0
    move-exception v0

    .line 1371
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1373
    .end local v0    # "e":Lorg/json/JSONException;
    goto/16 :goto_6

    .line 1238
    :cond_2
    const-string v0, "progress"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 1239
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1241
    .local v2, "progressString":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 1242
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1244
    .local v0, "progress":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Str "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " int "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$1800(Ljava/lang/String;)V

    .line 1245
    const/4 v5, -0x1

    if-ne v0, v5, :cond_3

    .line 1246
    invoke-static {}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$2300()Landroid/app/ProgressDialog;

    move-result-object v5

    iget-object v6, v9, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->activity:Landroid/app/Activity;

    const v7, 0x7f0f005c

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1247
    invoke-static {}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$2300()Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1248
    invoke-static {}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$2300()Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1249
    invoke-static {}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$2300()Landroid/app/ProgressDialog;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1250
    invoke-static {}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$2300()Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->show()V

    goto :goto_1

    .line 1252
    :cond_3
    invoke-static {}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$2300()Landroid/app/ProgressDialog;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1253
    invoke-static {}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$2300()Landroid/app/ProgressDialog;

    move-result-object v5

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1254
    invoke-static {}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$2300()Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1287
    .end local v0    # "progress":I
    :goto_1
    goto/16 :goto_4

    .line 1256
    :catch_1
    move-exception v0

    goto :goto_2

    .line 1241
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v2    # "progressString":Ljava/lang/String;
    .end local v10    # "bundle":Landroid/os/Bundle;
    .end local p1    # "msg":Landroid/os/Message;
    throw v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1256
    .restart local v2    # "progressString":Ljava/lang/String;
    .restart local v10    # "bundle":Landroid/os/Bundle;
    .restart local p1    # "msg":Landroid/os/Message;
    :goto_2
    move-object v5, v0

    .line 1257
    .local v5, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$2300()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1260
    :try_start_2
    new-instance v0, Ljava/io/File;

    sget-object v6, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v6}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-direct {v0, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1262
    .local v0, "toInstall":Ljava/io/File;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_5

    .line 1263
    iget-object v6, v9, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->activity:Landroid/app/Activity;

    const-string v7, "com.poverka.httpFileClient.fileprovider"

    invoke-static {v6, v7, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 1264
    .local v6, "apkUri":Landroid/net/Uri;
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.INSTALL_PACKAGE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1265
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {v7, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1266
    invoke-virtual {v7, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1267
    nop

    .end local v6    # "apkUri":Landroid/net/Uri;
    goto :goto_3

    .line 1268
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 1269
    .restart local v6    # "apkUri":Landroid/net/Uri;
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1270
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v8, "application/vnd.android.package-archive"

    invoke-virtual {v7, v6, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1271
    const/high16 v8, 0x10000000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1273
    .end local v6    # "apkUri":Landroid/net/Uri;
    :goto_3
    iget-object v6, v9, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1286
    .end local v0    # "toInstall":Ljava/io/File;
    .end local v7    # "intent":Landroid/content/Intent;
    goto :goto_4

    .line 1274
    :catch_2
    move-exception v0

    .line 1275
    .local v0, "exception":Ljava/lang/Exception;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, v9, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->activity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1276
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1277
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v7, v9, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->activity:Landroid/app/Activity;

    const v8, 0x7f0f01a7

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v1, v8

    invoke-static {v4, v7, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1278
    new-instance v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler$4;

    invoke-direct {v1, v9}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler$4;-><init>(Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;)V

    invoke-virtual {v6, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1284
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1285
    .local v1, "stateDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1288
    .end local v0    # "exception":Ljava/lang/Exception;
    .end local v1    # "stateDialog":Landroid/app/AlertDialog;
    .end local v2    # "progressString":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_4
    goto/16 :goto_6

    .line 1207
    :cond_6
    const-string v0, "apk_info"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 1209
    :try_start_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 1210
    .local v0, "apkInfo":Lorg/json/JSONObject;
    const-string v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1211
    .local v2, "id":I
    const-string v3, "fileName"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1212
    .local v3, "apkName":Ljava/lang/String;
    const-string v5, "version"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    .line 1214
    .local v5, "versionNameNew":Ljava/lang/String;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, v9, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->activity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1215
    .restart local v6    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1216
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v7, v9, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->activity:Landroid/app/Activity;

    const v8, 0x7f0f0181

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v1, v8

    invoke-static {v4, v7, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1217
    const v1, 0x7f0f01a5

    new-instance v4, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler$2;

    invoke-direct {v4, v9, v2, v3}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler$2;-><init>(Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;ILjava/lang/String;)V

    invoke-virtual {v6, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1223
    const v1, 0x7f0f0112

    new-instance v4, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler$3;

    invoke-direct {v4, v9}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler$3;-><init>(Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;)V

    invoke-virtual {v6, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1229
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1230
    .restart local v1    # "stateDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .end local v0    # "apkInfo":Lorg/json/JSONObject;
    .end local v1    # "stateDialog":Landroid/app/AlertDialog;
    .end local v2    # "id":I
    .end local v3    # "apkName":Ljava/lang/String;
    .end local v5    # "versionNameNew":Ljava/lang/String;
    .end local v6    # "builder":Landroid/app/AlertDialog$Builder;
    goto :goto_5

    .line 1232
    :catch_3
    move-exception v0

    .line 1233
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1234
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_5
    goto :goto_6

    .line 1195
    :cond_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, v9, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1196
    .local v0, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "tittle"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1197
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1198
    new-instance v1, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler$1;

    invoke-direct {v1, v9}, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler$1;-><init>(Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1204
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1205
    goto :goto_6

    .line 1187
    .end local v0    # "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    :cond_8
    const-string v0, "error"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 1188
    iget-object v2, v9, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1190
    :cond_9
    const-string v0, "alert"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 1191
    iget-object v2, v9, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1377
    :cond_a
    :goto_6
    return-void
.end method
