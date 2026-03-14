.class public Lcom/poverka/httpFileClient/util/MySender;
.super Ljava/lang/Object;
.source "MySender.java"


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "SENDER"


# instance fields
.field private sentString:Ljava/lang/String;

.field private stringToSend:Ljava/lang/String;

.field private final tcpClient:Lcom/poverka/httpFileClient/util/TcpClient;


# direct methods
.method public constructor <init>(Lcom/poverka/httpFileClient/util/TcpClient;)V
    .locals 1
    .param p1, "tcpClient"    # Lcom/poverka/httpFileClient/util/TcpClient;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/poverka/httpFileClient/util/MySender;->tcpClient:Lcom/poverka/httpFileClient/util/TcpClient;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/poverka/httpFileClient/util/MySender;->stringToSend:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/poverka/httpFileClient/util/MySender;->sentString:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public changeAction(I)V
    .locals 4
    .param p1, "action"    # I

    .line 50
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "{\"action\":%d,\"request\":16}\n"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/poverka/httpFileClient/util/MySender;->stringToSend:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public checkFinish()V
    .locals 1

    .line 67
    const-string v0, "{\"request\":1024}\n"

    iput-object v0, p0, Lcom/poverka/httpFileClient/util/MySender;->stringToSend:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public createSendString(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .line 88
    iput-object p1, p0, Lcom/poverka/httpFileClient/util/MySender;->stringToSend:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public getAll()V
    .locals 4

    .line 79
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const v2, 0x58e71c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "{\"request\":%d}\n"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/poverka/httpFileClient/util/MySender;->stringToSend:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public getLastMessage()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/MySender;->sentString:Ljava/lang/String;

    return-object v0
.end method

.method public prepareMeasurement(II)V
    .locals 4
    .param p1, "measNumb"    # I
    .param p2, "reitNumb"    # I

    .line 54
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "{\"meas_numb\":%d,\"reit_numb\":%d,\"action\":2,\"request\":524316}\n"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/poverka/httpFileClient/util/MySender;->stringToSend:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public readAction()V
    .locals 1

    .line 46
    const-string v0, "{\"request\":16}\n"

    iput-object v0, p0, Lcom/poverka/httpFileClient/util/MySender;->stringToSend:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public readDateTime(II)V
    .locals 4
    .param p1, "photoType"    # I
    .param p2, "writeLog"    # I

    .line 27
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/high16 v2, 0x880000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "{\"phototype\":%d,\"writelog\":%d,\"request\":%d}\n"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/poverka/httpFileClient/util/MySender;->stringToSend:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public readMeasuringData()V
    .locals 1

    .line 58
    const-string v0, "{\"request\":241}\n"

    iput-object v0, p0, Lcom/poverka/httpFileClient/util/MySender;->stringToSend:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public repeatLastMessage()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/MySender;->sentString:Ljava/lang/String;

    iput-object v0, p0, Lcom/poverka/httpFileClient/util/MySender;->stringToSend:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public restoreTestSettings(IIII)V
    .locals 4
    .param p1, "testName"    # I
    .param p2, "multiplier"    # I
    .param p3, "meas"    # I
    .param p4, "reit"    # I

    .line 83
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    if-lez p3, :cond_0

    move v3, p3

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const v3, 0x1001e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 83
    const-string v2, "{\"test_name\":%d,\"multiplier\":%d,\"meas_numb\":%d,\"reit_numb\":%d,\"action\":2,\"request\":%d}\n"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/poverka/httpFileClient/util/MySender;->stringToSend:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public send()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/MySender;->stringToSend:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/MySender;->stringToSend:Ljava/lang/String;

    iput-object v0, p0, Lcom/poverka/httpFileClient/util/MySender;->sentString:Ljava/lang/String;

    .line 102
    iget-object v1, p0, Lcom/poverka/httpFileClient/util/MySender;->tcpClient:Lcom/poverka/httpFileClient/util/TcpClient;

    invoke-virtual {v1, v0}, Lcom/poverka/httpFileClient/util/TcpClient;->sendMessage(Ljava/lang/String;)V

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/poverka/httpFileClient/util/MySender;->stringToSend:Ljava/lang/String;

    .line 105
    :cond_0
    return-void
.end method

.method public sendFinish()V
    .locals 1

    .line 63
    const-string v0, "{\"finish\":1,\"request\":1024}\n"

    iput-object v0, p0, Lcom/poverka/httpFileClient/util/MySender;->stringToSend:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setDateTime()V
    .locals 6

    .line 31
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 32
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v2, v1

    .line 33
    .local v2, "currentDateUnix":I
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/high16 v4, 0x80000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "{\"date_time\":%d,\"request\":%d}\n"

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/poverka/httpFileClient/util/MySender;->stringToSend:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setSleepTimer(I)V
    .locals 4
    .param p1, "time"    # I

    .line 75
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0x1000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "{\"powerOnOff\":%d,\"request\":%d}\n"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/poverka/httpFileClient/util/MySender;->stringToSend:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public startReadingState()V
    .locals 4

    .line 37
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const v2, 0x150eb00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "{\"request\":%d}\n"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/poverka/httpFileClient/util/MySender;->stringToSend:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public startTestPhoto()V
    .locals 1

    .line 23
    const-string v0, "{\"test_photo\":1,\"request\":1}\n"

    iput-object v0, p0, Lcom/poverka/httpFileClient/util/MySender;->stringToSend:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public updateFirmware()V
    .locals 4

    .line 71
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/high16 v2, 0x200000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "{\"update_soft\":true,\"request\":%d}\n"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/poverka/httpFileClient/util/MySender;->stringToSend:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public writeTestName(II)V
    .locals 4
    .param p1, "testName"    # I
    .param p2, "multiplier"    # I

    .line 41
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x1000002

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "{\"test_name\":%d,\"multiplier\":%d,\"request\":%d}\n"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/poverka/httpFileClient/util/MySender;->stringToSend:Ljava/lang/String;

    .line 43
    return-void
.end method
