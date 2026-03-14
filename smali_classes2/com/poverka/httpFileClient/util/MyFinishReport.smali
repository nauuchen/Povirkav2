.class public Lcom/poverka/httpFileClient/util/MyFinishReport;
.super Ljava/lang/Object;
.source "MyFinishReport.java"


# static fields
.field public static final CALIBRATION:I = 0x9

.field public static final CERTIFICATE:I = 0x7

.field public static final FAILURE:I = 0x2

.field public static final MEASUREMENT_ERROR:I = 0x8

.field public static final SUCCESS:I = 0x1

.field public static final reportsToChoose:[Ljava/lang/String;

.field public static final reportsToShow:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 16
    const-string v0, "\u0421\u043f\u0440\u0430\u0432\u043a\u0430 \u043e \u043d\u0435\u043f\u0440\u0438\u0433\u043e\u0434\u043d\u043e\u0441\u0442\u0438"

    const-string v1, "\u041e\u0448\u0438\u0431\u043a\u0430 \u0438\u0437\u043c\u0435\u0440\u0435\u043d\u0438\u044f"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/poverka/httpFileClient/util/MyFinishReport;->reportsToChoose:[Ljava/lang/String;

    .line 17
    const-string v1, "\u0423\u0441\u043f\u0435\u0448\u043d\u043e"

    const-string v2, "\u041f\u043e\u0432\u0435\u0440\u043a\u0430 \u043f\u0440\u0435\u0440\u0432\u0430\u043d\u0430. \u041f\u0440\u0438\u0447\u0438\u043d\u0430 \u043d\u0435\u0438\u0437\u0432\u0435\u0441\u0442\u043d\u0430"

    const-string v3, "\u041e\u0448\u0438\u0431\u043a\u0430. \u041d\u0435\u0442 \u0432 \u0437\u0430\u044f\u0432\u043a\u0435"

    const-string v4, "\u041e\u0442\u043a\u0430\u0437 \u0437\u0430\u043a\u0430\u0437\u0447\u0438\u043a\u0430"

    const-string v5, "\u0411\u0440\u0430\u043a. \u041d\u0430 \u0437\u0430\u043c\u0435\u043d\u0443"

    const-string v6, "\u0420\u0435\u0448\u0435\u043d\u0438\u0435 \u043e\u043f\u0435\u0440\u0430\u0442\u043e\u0440\u0430"

    const-string v7, "\u0421\u043f\u0440\u0430\u0432\u043a\u0430 \u043e \u043d\u0435\u043f\u0440\u0438\u0433\u043e\u0434\u043d\u043e\u0441\u0442\u0438"

    const-string v8, "\u041e\u0448\u0438\u0431\u043a\u0430 \u0438\u0437\u043c\u0435\u0440\u0435\u043d\u0438\u044f"

    const-string v9, "\u041a\u0430\u043b\u0438\u0431\u0440\u043e\u0432\u043a\u0430"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/poverka/httpFileClient/util/MyFinishReport;->reportsToShow:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
