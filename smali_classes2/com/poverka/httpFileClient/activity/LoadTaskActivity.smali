.class public Lcom/poverka/httpFileClient/activity/LoadTaskActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LoadTaskActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/poverka/httpFileClient/activity/LoadTaskActivity$MyHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LoadTaskActivity"


# instance fields
.field private activity:Landroid/app/Activity;

.field public mHttpReceived:Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;

.field private myHandler:Lcom/poverka/httpFileClient/activity/LoadTaskActivity$MyHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 79
    new-instance v0, Lcom/poverka/httpFileClient/activity/LoadTaskActivity$1;

    invoke-direct {v0, p0}, Lcom/poverka/httpFileClient/activity/LoadTaskActivity$1;-><init>(Lcom/poverka/httpFileClient/activity/LoadTaskActivity;)V

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/LoadTaskActivity;->mHttpReceived:Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;

    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 280
    const-string v0, "LoadTaskActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void
.end method

.method static synthetic access$100(Lcom/poverka/httpFileClient/activity/LoadTaskActivity;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/LoadTaskActivity;

    .line 42
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/LoadTaskActivity;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/poverka/httpFileClient/activity/LoadTaskActivity;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/LoadTaskActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/json/JSONArray;

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/poverka/httpFileClient/activity/LoadTaskActivity;->saveTasksToFile(Ljava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$300(Lcom/poverka/httpFileClient/activity/LoadTaskActivity;)Lcom/poverka/httpFileClient/activity/LoadTaskActivity$MyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/LoadTaskActivity;

    .line 42
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/LoadTaskActivity;->myHandler:Lcom/poverka/httpFileClient/activity/LoadTaskActivity$MyHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/poverka/httpFileClient/activity/LoadTaskActivity;Ljava/util/Calendar;)V
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/LoadTaskActivity;
    .param p1, "x1"    # Ljava/util/Calendar;

    .line 42
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/activity/LoadTaskActivity;->updateDateLabel(Ljava/util/Calendar;)V

    return-void
.end method

.method private initEditDate()V
    .locals 8

    .line 217
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 218
    .local v0, "today":Ljava/util/Calendar;
    new-instance v1, Lcom/poverka/httpFileClient/activity/LoadTaskActivity$2;

    invoke-direct {v1, p0}, Lcom/poverka/httpFileClient/activity/LoadTaskActivity$2;-><init>(Lcom/poverka/httpFileClient/activity/LoadTaskActivity;)V

    .line 228
    .local v1, "dateSend":Landroid/app/DatePickerDialog$OnDateSetListener;
    const v2, 0x7f09009e

    invoke-virtual {p0, v2}, Lcom/poverka/httpFileClient/activity/LoadTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 229
    .local v2, "editSendDate":Landroid/widget/EditText;
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "%02d.%02d.%04d"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 230
    new-instance v3, Lcom/poverka/httpFileClient/activity/LoadTaskActivity$3;

    invoke-direct {v3, p0, v2, v1}, Lcom/poverka/httpFileClient/activity/LoadTaskActivity$3;-><init>(Lcom/poverka/httpFileClient/activity/LoadTaskActivity;Landroid/widget/EditText;Landroid/app/DatePickerDialog$OnDateSetListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    return-void
.end method

.method private initEditStation(I)V
    .locals 5
    .param p1, "station"    # I

    .line 210
    const v0, 0x7f0900b1

    invoke-virtual {p0, v0}, Lcom/poverka/httpFileClient/activity/LoadTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 212
    .local v0, "editStation":Landroid/widget/EditText;
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%03d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 213
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 214
    return-void
.end method

.method private saveTasksToFile(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 8
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "tasksJSON"    # Lorg/json/JSONArray;

    .line 259
    invoke-static {}, Lcom/poverka/httpFileClient/util/MyFileReader;->createPoverkaFolder()Ljava/io/File;

    move-result-object v0

    .line 260
    .local v0, "folder":Ljava/io/File;
    invoke-static {p1}, Lcom/poverka/httpFileClient/util/MyFileReader;->createFolderInPoverkaFolder(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 263
    .local v1, "dayFolder":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .local v2, "strBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/poverka/httpFileClient/containers/Task;->jsonStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 265
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/poverka/httpFileClient/containers/Task;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/poverka/httpFileClient/containers/Task;

    .line 266
    .local v5, "task":Lcom/poverka/httpFileClient/containers/Task;
    invoke-virtual {v5}, Lcom/poverka/httpFileClient/containers/Task;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    nop

    .end local v5    # "task":Lcom/poverka/httpFileClient/containers/Task;
    goto :goto_0

    .line 268
    :cond_0
    new-instance v4, Ljava/io/File;

    const-string v5, "\u0417\u0430\u044f\u0432\u043a\u0438.txt"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 269
    .local v4, "taskFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v5

    .line 270
    .local v5, "bool":Z
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 271
    .local v6, "writer":Ljava/io/FileWriter;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v6}, Ljava/io/FileWriter;->flush()V

    .line 273
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .end local v2    # "strBuilder":Ljava/lang/StringBuilder;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/poverka/httpFileClient/containers/Task;>;"
    .end local v4    # "taskFile":Ljava/io/File;
    .end local v5    # "bool":Z
    .end local v6    # "writer":Ljava/io/FileWriter;
    goto :goto_2

    .line 274
    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    .line 275
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 277
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private updateDateLabel(Ljava/util/Calendar;)V
    .locals 4
    .param p1, "calendar"    # Ljava/util/Calendar;

    .line 251
    const-string v0, "dd.MM.yyyy"

    .line 252
    .local v0, "myFormat":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 254
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/LoadTaskActivity;->activity:Landroid/app/Activity;

    const v3, 0x7f09009e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 255
    .local v2, "edittext":Landroid/widget/EditText;
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 256
    return-void
.end method


# virtual methods
.method public LoadClicked(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .line 152
    const v0, 0x7f0900b1

    invoke-virtual {p0, v0}, Lcom/poverka/httpFileClient/activity/LoadTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 153
    .local v0, "editStation":Landroid/widget/EditText;
    const v1, 0x7f09009e

    invoke-virtual {p0, v1}, Lcom/poverka/httpFileClient/activity/LoadTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 155
    .local v1, "editDate":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "station":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "date":Ljava/lang/String;
    const-string v4, "station_head1"

    .line 159
    .local v4, "user":Ljava/lang/String;
    const-string v5, "I8X_V..oe%OX"

    .line 160
    .local v5, "password":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 161
    .local v6, "auth":Ljava/lang/String;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v7

    .line 162
    .local v7, "encodedAuth":[B
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Basic "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 164
    .local v9, "authHeaderValue":Ljava/lang/String;
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v2, v11, v8

    const/4 v8, 0x1

    aput-object v3, v11, v8

    const-string v8, "getmarshrut?equipmentType=1&serial=%s&date=%s"

    invoke-static {v10, v8, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 166
    .local v8, "path":Ljava/lang/String;
    new-instance v10, Lcom/poverka/httpFileClient/util/HttpFileClient;

    iget-object v11, p0, Lcom/poverka/httpFileClient/activity/LoadTaskActivity;->mHttpReceived:Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;

    invoke-direct {v10, v11}, Lcom/poverka/httpFileClient/util/HttpFileClient;-><init>(Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;)V

    .line 167
    .local v10, "mHttpFileClient":Lcom/poverka/httpFileClient/util/HttpFileClient;
    invoke-virtual {v10, v8, v9}, Lcom/poverka/httpFileClient/util/HttpFileClient;->downloadServer(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 49
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Lcom/poverka/httpFileClient/activity/LoadTaskActivity;->setContentView(I)V

    .line 52
    iput-object p0, p0, Lcom/poverka/httpFileClient/activity/LoadTaskActivity;->activity:Landroid/app/Activity;

    .line 53
    new-instance v0, Lcom/poverka/httpFileClient/activity/LoadTaskActivity$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/poverka/httpFileClient/activity/LoadTaskActivity$MyHandler;-><init>(Landroid/app/Activity;Lcom/poverka/httpFileClient/activity/LoadTaskActivity$1;)V

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/LoadTaskActivity;->myHandler:Lcom/poverka/httpFileClient/activity/LoadTaskActivity$MyHandler;

    .line 55
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/LoadTaskActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "station"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/poverka/httpFileClient/activity/LoadTaskActivity;->initEditStation(I)V

    .line 58
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/LoadTaskActivity;->initEditDate()V

    .line 61
    const v1, 0x7f0f0063

    const/4 v3, 0x1

    :try_start_0
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/LoadTaskActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "localTasks.json"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    .local v4, "localTasks":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 64
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-nez v5, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/LoadTaskActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v7, p0, Lcom/poverka/httpFileClient/activity/LoadTaskActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v7, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    const/16 v9, 0x12d

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 67
    :cond_0
    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 68
    .local v5, "writer":Ljava/io/FileWriter;
    const-string v6, "[]"

    invoke-virtual {v5, v6}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v5}, Ljava/io/FileWriter;->flush()V

    .line 70
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v4    # "localTasks":Ljava/io/File;
    .end local v5    # "writer":Ljava/io/FileWriter;
    :cond_1
    :goto_0
    goto :goto_1

    .line 73
    :catch_0
    move-exception v4

    .line 74
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/LoadTaskActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v7, p0, Lcom/poverka/httpFileClient/activity/LoadTaskActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v7, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v7, v3, [Ljava/lang/Object;

    const/16 v8, 0x12f

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v6, v1, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 76
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method
