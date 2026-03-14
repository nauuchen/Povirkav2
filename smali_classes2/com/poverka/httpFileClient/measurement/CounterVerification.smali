.class public Lcom/poverka/httpFileClient/measurement/CounterVerification;
.super Ljava/lang/Object;
.source "CounterVerification.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final BATTERY_THRESHOLD_PERCENT:I = 0xa

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/poverka/httpFileClient/measurement/CounterVerification;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CounterVerification"


# instance fields
.field private DNtypeNumber:I

.field private action:I

.field private batteryCharge:F

.field private char1:Ljava/lang/String;

.field private char2:Ljava/lang/String;

.field private counterNumber:Ljava/lang/String;

.field private currentStationTime:I

.field private dueDate:I

.field private environmentH:I

.field private environmentP:I

.field private environmentT:I

.field private id:Ljava/lang/String;

.field private impulsesPerLiter:I

.field private initialVolume:I

.field private innerHumidity:F

.field private innerTemperature:F

.field private isOnline:I

.field private latitude:D

.field private local:I

.field private longitude:D

.field private measResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/poverka/httpFileClient/measurement/MeasurementResults;",
            ">;"
        }
    .end annotation
.end field

.field private measSettings:[Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

.field private multiplier:I

.field private paymentAccount:I

.field private personalAccount:Ljava/lang/String;

.field private productionDate:I

.field private productionYear:I

.field private serviceType:I

.field private stationNumber:I

.field private testName:I

.field private testPhoto:[B

.field private verAndroid:Ljava/lang/String;

.field private verStation:Ljava/lang/String;

.field private verificationDate:I

.field private verificationNumberNew:I

.field private verificationNumberToday:I

.field private waterTemperature:F

.field private workInShortMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 846
    new-instance v0, Lcom/poverka/httpFileClient/measurement/CounterVerification$1;

    invoke-direct {v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification$1;-><init>()V

    sput-object v0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-direct {p0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->initValues()V

    .line 84
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 750
    const/4 v0, 0x3

    new-array v1, v0, [Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

    iput-object v1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->measSettings:[Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

    .line 751
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 752
    iget-object v2, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->measSettings:[Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

    const-class v3, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

    aput-object v3, v2, v1

    .line 751
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 754
    .end local v1    # "i":I
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->measResults:Ljava/util/ArrayList;

    .line 755
    const-class v1, Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 756
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->verificationNumberToday:I

    .line 757
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->verificationNumberNew:I

    .line 758
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->paymentAccount:I

    .line 759
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->action:I

    .line 760
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->impulsesPerLiter:I

    .line 761
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->stationNumber:I

    .line 762
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->batteryCharge:F

    .line 763
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->testName:I

    .line 764
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->multiplier:I

    .line 765
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->verificationDate:I

    .line 766
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->productionDate:I

    .line 767
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->dueDate:I

    .line 768
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->currentStationTime:I

    .line 769
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->isOnline:I

    .line 770
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->serviceType:I

    .line 771
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->char1:Ljava/lang/String;

    .line 772
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->char2:Ljava/lang/String;

    .line 773
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->testPhoto:[B

    .line 774
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 775
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->counterNumber:Ljava/lang/String;

    .line 776
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->initialVolume:I

    .line 777
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->productionYear:I

    .line 778
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->DNtypeNumber:I

    .line 779
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->waterTemperature:F

    .line 780
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->verStation:Ljava/lang/String;

    .line 781
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->verAndroid:Ljava/lang/String;

    .line 782
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->workInShortMode:Z

    .line 783
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->id:Ljava/lang/String;

    .line 784
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->personalAccount:Ljava/lang/String;

    .line 785
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->local:I

    .line 786
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->environmentT:I

    .line 787
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->environmentH:I

    .line 788
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->environmentP:I

    .line 789
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->latitude:D

    .line 790
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->longitude:D

    .line 791
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->innerTemperature:F

    .line 792
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->innerHumidity:F

    .line 793
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/poverka/httpFileClient/measurement/CounterVerification$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/poverka/httpFileClient/measurement/CounterVerification$1;

    .line 30
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private getMeasurementByNumber(I)Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    .locals 3
    .param p1, "number"    # I

    .line 295
    add-int/lit8 v0, p1, 0x1

    div-int/lit8 v0, v0, 0x2

    .line 296
    .local v0, "selectedMeasurementNumber":I
    invoke-virtual {p0, v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getLastReitNumber(I)I

    move-result v1

    .line 297
    .local v1, "selectedReiterationNumber":I
    invoke-virtual {p0, v0, v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getMeasurement(II)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v2

    return-object v2
.end method

.method private getSettingsForTest(Landroid/content/ContextWrapper;II)[Lcom/poverka/httpFileClient/measurement/MeasurementSettings;
    .locals 7
    .param p1, "context"    # Landroid/content/ContextWrapper;
    .param p2, "testName"    # I
    .param p3, "multiplier"    # I

    .line 166
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "tests.json"

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/util/MyFileReader;->readAndroidFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "testsString":Ljava/lang/String;
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

    .line 169
    .local v1, "measSettings":[Lcom/poverka/httpFileClient/measurement/MeasurementSettings;
    if-eqz v0, :cond_3

    .line 170
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 171
    .local v2, "testsArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 172
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 173
    .local v4, "setting":Lorg/json/JSONObject;
    sget-object v5, Lcom/poverka/httpFileClient/util/MyJSON;->test_name:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, p2, :cond_0

    .line 174
    new-instance v5, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

    iget v6, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->impulsesPerLiter:I

    invoke-direct {v5, v4, v6, p3}, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;-><init>(Lorg/json/JSONObject;II)V

    .line 175
    .local v5, "measurementSettings":Lcom/poverka/httpFileClient/measurement/MeasurementSettings;
    invoke-virtual {v5}, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->getNumber()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    aput-object v5, v1, v6

    .line 171
    .end local v4    # "setting":Lorg/json/JSONObject;
    .end local v5    # "measurementSettings":Lcom/poverka/httpFileClient/measurement/MeasurementSettings;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 178
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    aget-object v3, v1, v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_2

    .line 179
    const/4 v1, 0x0

    .line 181
    .end local v2    # "testsArray":Lorg/json/JSONArray;
    :cond_2
    goto :goto_1

    .line 186
    :catch_0
    move-exception v2

    .line 187
    .local v2, "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    goto :goto_2

    .line 183
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_3
    const/4 v1, 0x0

    .line 188
    :goto_1
    nop

    .line 189
    :goto_2
    return-object v1
.end method

.method private initValues()V
    .locals 2

    .line 87
    const-string v0, "0"

    iput-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->id:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->personalAccount:Ljava/lang/String;

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->measResults:Ljava/util/ArrayList;

    .line 90
    iput-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->counterNumber:Ljava/lang/String;

    .line 91
    const/4 v1, 0x1

    iput v1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->serviceType:I

    .line 92
    iput-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->char1:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->char2:Ljava/lang/String;

    .line 94
    const-string v0, "-"

    iput-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->verStation:Ljava/lang/String;

    .line 95
    iput-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->verAndroid:Ljava/lang/String;

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->workInShortMode:Z

    .line 97
    return-void
.end method

.method private setVerificationNumberNew()V
    .locals 6

    .line 506
    new-instance v0, Ljava/util/Date;

    iget v1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->currentStationTime:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 507
    .local v0, "curDate":Ljava/util/Date;
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v5, "yyMMdd"

    invoke-direct {v3, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 508
    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->verificationNumberToday:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 507
    const-string v3, "%s%03d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->verificationNumberNew:I

    .line 509
    return-void
.end method


# virtual methods
.method public calculateAverageTemperature()V
    .locals 5

    .line 425
    const/4 v0, 0x0

    .line 426
    .local v0, "buff":F
    const/4 v1, 0x0

    .line 428
    .local v1, "count":I
    const/4 v2, 0x1

    .local v2, "meas":I
    :goto_0
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getLastMeasNumber()I

    move-result v3

    if-gt v2, v3, :cond_1

    .line 429
    invoke-virtual {p0, v2}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getRequiredMeasurement(I)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v3

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getWaterTemperature()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 430
    invoke-virtual {p0, v2}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getRequiredMeasurement(I)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v3

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getWaterTemperature()F

    move-result v3

    add-float/2addr v0, v3

    .line 431
    add-int/lit8 v1, v1, 0x1

    .line 428
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 434
    .end local v2    # "meas":I
    :cond_1
    if-lez v1, :cond_2

    .line 435
    int-to-float v2, v1

    div-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setWaterTemperature(F)V

    .line 437
    :cond_2
    return-void
.end method

.method public createMeasurement(II)Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    .locals 3
    .param p1, "meas"    # I
    .param p2, "reit"    # I

    .line 140
    new-instance v0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    iget-object v1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->measSettings:[Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    iget v2, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->impulsesPerLiter:I

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;-><init>(IILcom/poverka/httpFileClient/measurement/MeasurementSettings;I)V

    .line 141
    .local v0, "mRes":Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    iget-object v1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->measResults:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .line 797
    const/4 v0, 0x0

    return v0
.end method

.method public getAction()I
    .locals 1

    .line 260
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->action:I

    return v0
.end method

.method public getAvrgConRange(I)I
    .locals 1
    .param p1, "number"    # I

    .line 364
    invoke-virtual {p0, p1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getLastReitNumber(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getMeasurement(II)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v0

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->avrgConRange()I

    move-result v0

    return v0
.end method

.method public getAvrgConsumption(I)F
    .locals 1
    .param p1, "number"    # I

    .line 325
    invoke-virtual {p0, p1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getLastReitNumber(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getMeasurement(II)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v0

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getConsumptionAvrgLit()F

    move-result v0

    return v0
.end method

.method public getBitmapByNumber(I)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "number"    # I

    .line 288
    add-int/lit8 v0, p1, 0x1

    div-int/lit8 v0, v0, 0x2

    .line 289
    .local v0, "selectedMeasurementNumber":I
    invoke-virtual {p0, v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getLastReitNumber(I)I

    move-result v1

    .line 290
    .local v1, "selectedReiterationNumber":I
    invoke-virtual {p0, v0, v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getMeasurement(II)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v2

    .line 291
    .local v2, "measurement":Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    add-int/lit8 v3, p1, -0x1

    rem-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method

.method public getChar1()Ljava/lang/String;
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->char1:Ljava/lang/String;

    return-object v0
.end method

.method public getChar2()Ljava/lang/String;
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->char2:Ljava/lang/String;

    return-object v0
.end method

.method public getCounterNumber()Ljava/lang/String;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->counterNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentStationTime()I
    .locals 1

    .line 567
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->currentStationTime:I

    return v0
.end method

.method public getCurrentStationTimeString()Ljava/lang/String;
    .locals 5

    .line 560
    new-instance v0, Ljava/util/Date;

    iget v1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->currentStationTime:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 561
    .local v0, "curDate":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd.MM.yyyy HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 563
    .local v1, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getDNtypeNumber()I
    .locals 1

    .line 380
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->DNtypeNumber:I

    return v0
.end method

.method public getDaysToCalibration()I
    .locals 8

    .line 216
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 217
    .local v1, "calibrationDate":Ljava/util/Calendar;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd.MM.yyyy HH:mm:ss"

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 218
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v4, "%s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getVerificationDate()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v6, 0x1

    const-string v7, "12:00:00"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 219
    const/4 v3, 0x6

    iget v4, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->dueDate:I

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 221
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    iget v5, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->currentStationTime:I

    int-to-long v5, v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x15180

    div-long/2addr v3, v5
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, v3

    return v0

    .line 222
    .end local v1    # "calibrationDate":Ljava/util/Calendar;
    .end local v2    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Ljava/text/ParseException;
    return v0
.end method

.method public getEnvironmentH()I
    .locals 1

    .line 682
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->environmentH:I

    return v0
.end method

.method public getEnvironmentT()I
    .locals 1

    .line 678
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->environmentT:I

    return v0
.end method

.method public getError(I)I
    .locals 1
    .param p1, "number"    # I

    .line 337
    invoke-virtual {p0, p1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getLastReitNumber(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getMeasurement(II)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v0

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getError()I

    move-result v0

    return v0
.end method

.method public getFileNameByNumber(I)Ljava/lang/String;
    .locals 5
    .param p1, "number"    # I

    .line 301
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getMeasurementByNumber(I)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v0

    .line 302
    .local v0, "measurement":Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getMeasurementNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getReiterationNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "1/current/meast_%d%d.json"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 632
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImpLiter()I
    .locals 1

    .line 474
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->impulsesPerLiter:I

    return v0
.end method

.method public getInitialVolume()I
    .locals 1

    .line 372
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->initialVolume:I

    return v0
.end method

.method public getInnerHumidity()F
    .locals 1

    .line 708
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->innerHumidity:F

    return v0
.end method

.method public getInnerTemperature()F
    .locals 1

    .line 704
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->innerTemperature:F

    return v0
.end method

.method public getLastMeasNumber()I
    .locals 4

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "last":I
    iget-object v1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->measResults:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    .line 112
    .local v2, "mRes":Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getMeasurementNumber()I

    move-result v3

    if-le v3, v0, :cond_0

    .line 113
    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getMeasurementNumber()I

    move-result v0

    .line 115
    .end local v2    # "mRes":Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    :cond_0
    goto :goto_0

    .line 116
    :cond_1
    return v0
.end method

.method public getLastReitNumber(I)I
    .locals 4
    .param p1, "meas"    # I

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "last":I
    iget-object v1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->measResults:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    .line 122
    .local v2, "mRes":Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getMeasurementNumber()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getReiterationNumber()I

    move-result v3

    if-le v3, v0, :cond_0

    .line 123
    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getReiterationNumber()I

    move-result v0

    .line 125
    .end local v2    # "mRes":Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    :cond_0
    goto :goto_0

    .line 126
    :cond_1
    return v0
.end method

.method public getLocal()I
    .locals 1

    .line 648
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->local:I

    return v0
.end method

.method public getMeasurement(II)Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    .locals 3
    .param p1, "measNumb"    # I
    .param p2, "reitNumb"    # I

    .line 146
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->measResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    .line 147
    .local v1, "res":Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    invoke-virtual {v1}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getMeasurementNumber()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getReiterationNumber()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 148
    return-object v1

    .line 150
    .end local v1    # "res":Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    :cond_0
    goto :goto_0

    .line 151
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMultiplier()I
    .locals 1

    .line 471
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->multiplier:I

    return v0
.end method

.method public getPaymentAccount()I
    .locals 1

    .line 512
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->paymentAccount:I

    return v0
.end method

.method public getPersonalAccount()Ljava/lang/String;
    .locals 1

    .line 640
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->personalAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getProductionDate()Ljava/lang/String;
    .locals 7

    .line 545
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 546
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v1, Ljava/util/Date;

    iget v2, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->productionDate:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 547
    .local v1, "prodDate":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 548
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "%02d.%02d.%02d"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getProductionDateUnix()I
    .locals 1

    .line 541
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->productionDate:I

    return v0
.end method

.method public getProductionYear()I
    .locals 1

    .line 376
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->productionYear:I

    return v0
.end method

.method public getProtocolNumber()Ljava/lang/String;
    .locals 4

    .line 522
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getStationNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getVerificationNumberNew()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%03d-%09d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequiredConsumption(I)I
    .locals 1
    .param p1, "measNumb"    # I

    .line 256
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->measSettings:[Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->getConsumptionLit()I

    move-result v0

    return v0
.end method

.method public getRequiredMeasurement(I)Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    .locals 1
    .param p1, "measNumber"    # I

    .line 155
    invoke-virtual {p0, p1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getLastReitNumber(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getMeasurement(II)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v0

    return-object v0
.end method

.method public getRequiredVolume(I)I
    .locals 1
    .param p1, "number"    # I

    .line 333
    invoke-virtual {p0, p1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getLastReitNumber(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getMeasurement(II)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v0

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getRequiredVolumeLit()I

    move-result v0

    return v0
.end method

.method public getResultInt(I)I
    .locals 1
    .param p1, "number"    # I

    .line 346
    invoke-virtual {p0, p1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getLastReitNumber(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getMeasurement(II)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v0

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getResult()I

    move-result v0

    return v0
.end method

.method public getResultString(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "number"    # I

    .line 341
    const v0, 0x7f03000a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "results":[Ljava/lang/String;
    invoke-virtual {p0, p2}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getLastReitNumber(I)I

    move-result v1

    invoke-virtual {p0, p2, v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getMeasurement(II)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v1

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getResult()I

    move-result v1

    aget-object v1, v0, v1

    return-object v1
.end method

.method public getServiceType()I
    .locals 1

    .line 583
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->serviceType:I

    return v0
.end method

.method public getStationNumber()I
    .locals 1

    .line 519
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->stationNumber:I

    return v0
.end method

.method public getTemperatureByNumber(I)F
    .locals 1
    .param p1, "number"    # I

    .line 329
    invoke-virtual {p0, p1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getLastReitNumber(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getMeasurement(II)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v0

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getWaterTemperature()F

    move-result v0

    return v0
.end method

.method public getTestName()I
    .locals 1

    .line 462
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->testName:I

    return v0
.end method

.method public getTestPhoto()Landroid/graphics/Bitmap;
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->testPhoto:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getTotalReitNumber()I
    .locals 4

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "count":I
    iget-object v1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->measResults:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    .line 132
    .local v2, "mRes":Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getReiterationNumber()I

    move-result v3

    if-lez v3, :cond_0

    .line 133
    add-int/lit8 v0, v0, 0x1

    .line 135
    .end local v2    # "mRes":Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    :cond_0
    goto :goto_0

    .line 136
    :cond_1
    return v0
.end method

.method public getValueByNumber(I)I
    .locals 2
    .param p1, "number"    # I

    .line 306
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getMeasurementByNumber(I)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v0

    .line 307
    .local v0, "measurement":Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    add-int/lit8 v1, p1, -0x1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 308
    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getValStart()I

    move-result v1

    return v1

    .line 310
    :cond_0
    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getValEnd()I

    move-result v1

    return v1
.end method

.method public getVerAndroid()Ljava/lang/String;
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->verAndroid:Ljava/lang/String;

    return-object v0
.end method

.method public getVerStation()Ljava/lang/String;
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->verStation:Ljava/lang/String;

    return-object v0
.end method

.method public getVerificationDate()Ljava/lang/String;
    .locals 7

    .line 530
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 531
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v1, Ljava/util/Date;

    iget v2, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->verificationDate:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 532
    .local v1, "prodDate":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 533
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "%02d.%02d.%02d"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getVerificationDateUnix()I
    .locals 1

    .line 526
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->verificationDate:I

    return v0
.end method

.method public getVerificationNumberNew()I
    .locals 1

    .line 502
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->verificationNumberNew:I

    return v0
.end method

.method public getVerificationNumberToday()I
    .locals 1

    .line 493
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->verificationNumberToday:I

    return v0
.end method

.method public getWaterTemperature()F
    .locals 1

    .line 481
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->waterTemperature:F

    return v0
.end method

.method public getWaterTemperatureRound()I
    .locals 1

    .line 485
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->waterTemperature:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getWorkInShortMode()Z
    .locals 1

    .line 607
    iget-boolean v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->workInShortMode:Z

    return v0
.end method

.method public hasEndPhoto(I)Z
    .locals 3
    .param p1, "measNumber"    # I

    .line 282
    invoke-virtual {p0, p1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getLastReitNumber(I)I

    move-result v0

    .line 283
    .local v0, "lastReiterationNumber":I
    invoke-virtual {p0, p1, v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getMeasurement(II)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v1

    .line 284
    .local v1, "measurement":Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    invoke-virtual {v1}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->hasPhotoEnd()Z

    move-result v2

    return v2
.end method

.method public hasStartPhoto(I)Z
    .locals 3
    .param p1, "measNumber"    # I

    .line 276
    invoke-virtual {p0, p1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getLastReitNumber(I)I

    move-result v0

    .line 277
    .local v0, "lastReiterationNumber":I
    invoke-virtual {p0, p1, v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getMeasurement(II)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v1

    .line 278
    .local v1, "measurement":Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    invoke-virtual {v1}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->hasPhotoStart()Z

    move-result v2

    return v2
.end method

.method isBatteryOK()Z
    .locals 2

    .line 489
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->batteryCharge:F

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCounterInfoOK()Z
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->counterNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->productionYear:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->DNtypeNumber:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDeltaTemperatureOK()Z
    .locals 7

    .line 408
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 410
    .local v0, "array":[F
    const/4 v1, 0x1

    .local v1, "meas":I
    :goto_0
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getLastMeasNumber()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 411
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getRequiredMeasurement(I)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v3

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getWaterTemperature()F

    move-result v3

    aput v3, v0, v2

    .line 410
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 414
    .end local v1    # "meas":I
    :cond_0
    const/4 v1, 0x0

    aget v2, v0, v1

    const/high16 v3, 0x40a00000    # 5.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    aget v2, v0, v5

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    .line 415
    aget v2, v0, v1

    aget v6, v0, v5

    sub-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    return v1

    .line 417
    :cond_1
    aget v2, v0, v5

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    const/4 v2, 0x2

    aget v6, v0, v2

    cmpl-float v4, v6, v4

    if-lez v4, :cond_2

    .line 418
    aget v4, v0, v5

    aget v2, v0, v2

    sub-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    return v1

    .line 421
    :cond_2
    return v5
.end method

.method public isDeviceTypeInfoEmpty()Z
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->char1:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->char2:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isGlobalTemperatureOK()Z
    .locals 6

    .line 395
    const/4 v0, 0x0

    .line 396
    .local v0, "waterHot":Z
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getWaterTemperatureRound()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41f00000    # 30.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 397
    const/4 v0, 0x1

    .line 399
    :cond_0
    const/4 v1, 0x1

    .local v1, "meas":I
    :goto_0
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getLastMeasNumber()I

    move-result v3

    const/4 v4, 0x1

    if-gt v1, v3, :cond_3

    .line 400
    invoke-virtual {p0, v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getRequiredMeasurement(I)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v3

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getWaterTemperature()F

    move-result v3

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_2

    invoke-virtual {p0, v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getRequiredMeasurement(I)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v3

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getWaterTemperature()F

    move-result v3

    const/4 v5, 0x0

    cmpl-float v3, v3, v2

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eq v4, v0, :cond_2

    .line 401
    return v5

    .line 399
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 404
    .end local v1    # "meas":I
    :cond_3
    return v4
.end method

.method public isOnline()I
    .locals 1

    .line 575
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->isOnline:I

    return v0
.end method

.method public isResultDefined()Z
    .locals 4

    .line 350
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getLastMeasNumber()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 351
    const/4 v0, 0x1

    .line 352
    .local v0, "resultDefined":Z
    const/4 v2, 0x1

    .local v2, "meas":I
    :goto_0
    if-gt v2, v1, :cond_2

    .line 353
    invoke-virtual {p0, v2}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getLastReitNumber(I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getMeasurement(II)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v3

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getResult()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getLastReitNumber(I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getMeasurement(II)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v3

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->hasPhotoEnd()Z

    move-result v3

    if-nez v3, :cond_1

    .line 354
    :cond_0
    const/4 v0, 0x0

    .line 352
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 357
    .end local v2    # "meas":I
    :cond_2
    return v0

    .line 359
    .end local v0    # "resultDefined":Z
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public isTestTemperatureOk()Z
    .locals 5

    .line 466
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->testName:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v2, 0x1

    const/16 v3, 0x1e

    const/16 v4, 0x31

    if-ne v0, v4, :cond_0

    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->waterTemperature:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-gt v0, v3, :cond_0

    return v2

    .line 467
    :cond_0
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->testName:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x32

    if-ne v0, v4, :cond_1

    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->waterTemperature:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-le v0, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public loadAll(IIII)V
    .locals 2
    .param p1, "action"    # I
    .param p2, "todayVerifications"    # I
    .param p3, "batteryCharge"    # I
    .param p4, "dateTime"    # I

    .line 656
    iput p1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->action:I

    .line 657
    iput p2, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->verificationNumberToday:I

    .line 658
    int-to-float v0, p3

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->batteryCharge:F

    .line 659
    iput p4, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->currentStationTime:I

    .line 660
    invoke-direct {p0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setVerificationNumberNew()V

    .line 661
    return-void
.end method

.method public loadMeasurementSettings(Landroid/content/ContextWrapper;II)Z
    .locals 1
    .param p1, "context"    # Landroid/content/ContextWrapper;
    .param p2, "testName"    # I
    .param p3, "multiplier"    # I

    .line 159
    iput p2, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->testName:I

    .line 160
    iput p3, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->multiplier:I

    .line 161
    invoke-direct {p0, p1, p2, p3}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getSettingsForTest(Landroid/content/ContextWrapper;II)[Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->measSettings:[Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

    .line 162
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public measureEnvironment(IIII)I
    .locals 4
    .param p1, "fromVal"    # I
    .param p2, "toVal"    # I
    .param p3, "oldVal"    # I
    .param p4, "gap"    # I

    .line 691
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 692
    .local v0, "random":Ljava/util/Random;
    sub-int v1, p2, p1

    .line 693
    .local v1, "n":I
    const/4 v2, 0x0

    .line 694
    .local v2, "newVal":I
    if-lt p3, p1, :cond_2

    if-lt p3, p2, :cond_0

    goto :goto_1

    .line 697
    :cond_0
    :goto_0
    sub-int v3, p3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, p4, :cond_1

    .line 698
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v2, v3, p1

    goto :goto_0

    .line 700
    :cond_1
    return v2

    .line 695
    :cond_2
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v3, p1

    return v3
.end method

.method public newMeasurement()Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    .locals 3

    .line 100
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getLastMeasNumber()I

    move-result v0

    .line 101
    .local v0, "meas":I
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->createMeasurement(II)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v1

    return-object v1
.end method

.method public printMeasurementSettings(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 9
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 230
    .local v1, "index":I
    iget-object v2, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->measSettings:[Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 231
    .local v5, "settings":Lcom/poverka/httpFileClient/measurement/MeasurementSettings;
    invoke-virtual {v5}, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CounterVerification"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v7, v1, 0x1

    .end local v1    # "index":I
    .local v7, "index":I
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ". Q = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 233
    invoke-virtual {v5}, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->getConsumptionLit()I

    move-result v6

    int-to-float v6, v6

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v6, v8

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v6, 0x7f0f0054

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", V = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 234
    invoke-virtual {v5}, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->getVolumeLit()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " \u043b;\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .end local v5    # "settings":Lcom/poverka/httpFileClient/measurement/MeasurementSettings;
    add-int/lit8 v4, v4, 0x1

    move v1, v7

    goto :goto_0

    .line 236
    .end local v7    # "index":I
    .restart local v1    # "index":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public removeExtraPhotos()V
    .locals 6

    .line 664
    const/4 v0, 0x1

    .local v0, "meas":I
    :goto_0
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getLastMeasNumber()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 665
    invoke-virtual {p0, v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getLastReitNumber(I)I

    move-result v1

    .line 666
    .local v1, "lastReit":I
    if-lez v1, :cond_1

    .line 667
    iget-object v2, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->measResults:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    .line 668
    .local v3, "res":Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    invoke-virtual {v3}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getMeasurementNumber()I

    move-result v4

    if-ne v4, v0, :cond_0

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getReiterationNumber()I

    move-result v4

    if-eq v4, v1, :cond_0

    .line 669
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->setPhoto([BI)V

    .line 670
    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->setPhoto([BI)V

    .line 672
    .end local v3    # "res":Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    :cond_0
    goto :goto_1

    .line 664
    .end local v1    # "lastReit":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 675
    .end local v0    # "meas":I
    :cond_2
    return-void
.end method

.method public repeatMeasurement(I)Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    .locals 2
    .param p1, "meas"    # I

    .line 105
    invoke-virtual {p0, p1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getLastReitNumber(I)I

    move-result v0

    .line 106
    .local v0, "reit":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->createMeasurement(II)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v1

    return-object v1
.end method

.method public setAction(I)V
    .locals 0
    .param p1, "action"    # I

    .line 264
    iput p1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->action:I

    .line 265
    return-void
.end method

.method public setCounterInfo(Ljava/lang/String;III)V
    .locals 0
    .param p1, "counterNumber"    # Ljava/lang/String;
    .param p2, "initialVolume"    # I
    .param p3, "productionYear"    # I
    .param p4, "DNtypeNumber"    # I

    .line 384
    iput-object p1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->counterNumber:Ljava/lang/String;

    .line 385
    iput p2, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->initialVolume:I

    .line 386
    iput p3, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->productionYear:I

    .line 387
    iput p4, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->DNtypeNumber:I

    .line 388
    return-void
.end method

.method public setCurrentStationTime(I)V
    .locals 0
    .param p1, "currentStationTime"    # I

    .line 571
    iput p1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->currentStationTime:I

    .line 572
    return-void
.end method

.method public setDeviceTypeInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "char1"    # Ljava/lang/String;
    .param p2, "char2"    # Ljava/lang/String;

    .line 627
    iput-object p1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->char1:Ljava/lang/String;

    .line 628
    iput-object p2, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->char2:Ljava/lang/String;

    .line 629
    return-void
.end method

.method public setDueDate(I)V
    .locals 0
    .param p1, "dueDate"    # I

    .line 556
    iput p1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->dueDate:I

    .line 557
    return-void
.end method

.method public setEnvironment(II)V
    .locals 0
    .param p1, "environmentT"    # I
    .param p2, "environmentH"    # I

    .line 686
    iput p1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->environmentT:I

    .line 687
    iput p2, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->environmentH:I

    .line 688
    return-void
.end method

.method public setFlashData(II)V
    .locals 0
    .param p1, "impulsesPerLiter"    # I
    .param p2, "stationNumber"    # I

    .line 193
    iput p1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->impulsesPerLiter:I

    .line 194
    iput p2, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->stationNumber:I

    .line 195
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 636
    iput-object p1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->id:Ljava/lang/String;

    .line 637
    return-void
.end method

.method public setInnerInfo(FF)V
    .locals 0
    .param p1, "innerT"    # F
    .param p2, "innerH"    # F

    .line 712
    iput p1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->innerTemperature:F

    .line 713
    iput p2, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->innerHumidity:F

    .line 714
    return-void
.end method

.method public setLocal(I)V
    .locals 0
    .param p1, "local"    # I

    .line 652
    iput p1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->local:I

    .line 653
    return-void
.end method

.method public setOnline(I)V
    .locals 0
    .param p1, "online"    # I

    .line 579
    iput p1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->isOnline:I

    .line 580
    return-void
.end method

.method public setPaymentAccount(I)V
    .locals 0
    .param p1, "paymentAccount"    # I

    .line 516
    iput p1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->paymentAccount:I

    .line 517
    return-void
.end method

.method public setPersonalAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "personalAccount"    # Ljava/lang/String;

    .line 644
    iput-object p1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->personalAccount:Ljava/lang/String;

    .line 645
    return-void
.end method

.method public setProductionDate(I)V
    .locals 0
    .param p1, "productionDate"    # I

    .line 552
    iput p1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->productionDate:I

    .line 553
    return-void
.end method

.method public setServiceType(I)V
    .locals 0
    .param p1, "serviceType"    # I

    .line 587
    iput p1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->serviceType:I

    .line 588
    return-void
.end method

.method public setStateData(II)V
    .locals 2
    .param p1, "batteryCharge"    # I
    .param p2, "waterTemperature"    # I

    .line 198
    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->batteryCharge:F

    .line 199
    int-to-float v0, p2

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->waterTemperature:F

    .line 200
    return-void
.end method

.method public setTestPhoto([B)V
    .locals 0
    .param p1, "testPhoto"    # [B

    .line 272
    iput-object p1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->testPhoto:[B

    .line 273
    return-void
.end method

.method public setValueByNumber(II)Z
    .locals 2
    .param p1, "number"    # I
    .param p2, "value"    # I

    .line 315
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getMeasurementByNumber(I)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v0

    .line 316
    .local v0, "measurement":Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    add-int/lit8 v1, p1, -0x1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 317
    invoke-virtual {v0, p2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->setValStart(I)V

    goto :goto_0

    .line 319
    :cond_0
    invoke-virtual {v0, p2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->setValEnd(I)V

    .line 321
    :goto_0
    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->calculate()Z

    move-result v1

    return v1
.end method

.method public setVerAndroid(Ljava/lang/String;)V
    .locals 0
    .param p1, "verAndroid"    # Ljava/lang/String;

    .line 603
    iput-object p1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->verAndroid:Ljava/lang/String;

    .line 604
    return-void
.end method

.method public setVerStation(Ljava/lang/String;)V
    .locals 0
    .param p1, "verStation"    # Ljava/lang/String;

    .line 595
    iput-object p1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->verStation:Ljava/lang/String;

    .line 596
    return-void
.end method

.method public setVerificationDate(I)V
    .locals 0
    .param p1, "verificationDate"    # I

    .line 537
    iput p1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->verificationDate:I

    .line 538
    return-void
.end method

.method public setVerificationNumberToday(I)V
    .locals 0
    .param p1, "verificationNumberToday"    # I

    .line 497
    iput p1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->verificationNumberToday:I

    .line 498
    invoke-direct {p0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setVerificationNumberNew()V

    .line 499
    return-void
.end method

.method public setWaterTemperature(F)V
    .locals 0
    .param p1, "waterTemperature"    # F

    .line 477
    iput p1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->waterTemperature:F

    .line 478
    return-void
.end method

.method public setWorkInShortMode(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 611
    iput-boolean p1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->workInShortMode:Z

    .line 612
    return-void
.end method

.method public stateDataToString(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 7
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const v2, 0x7f0f0171

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->stationNumber:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 204
    const v2, 0x7f0f00b8

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->isOnline:I

    if-nez v5, :cond_0

    const v5, 0x7f0f00a0

    goto :goto_0

    :cond_0
    const v5, 0x7f0f00ef

    :goto_0
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const v2, 0x7f0f0025

    .line 205
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->batteryCharge:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const v2, 0x7f0f018f

    .line 206
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->waterTemperature:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const v2, 0x7f0f011b

    .line 207
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->verificationNumberToday:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 208
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getDaysToCalibration()I

    move-result v4

    if-ltz v4, :cond_1

    const v4, 0x7f0f019f

    goto :goto_1

    :cond_1
    const v4, 0x7f0f00f3

    :goto_1
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getDaysToCalibration()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v4, "%s: %d \n"

    invoke-static {v1, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const v2, 0x7f0f0027

    .line 209
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getVerificationDate()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const v2, 0x7f0f0113

    .line 210
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getProductionDate()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    return-object v0
.end method

.method public testNameToText(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 9
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 240
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->testName:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x1

    aget-char v0, v0, v1

    add-int/lit8 v0, v0, -0x30

    .line 241
    .local v0, "Q":I
    iget v2, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->testName:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x2

    aget-char v2, v2, v3

    add-int/lit8 v2, v2, -0x30

    .line 244
    .local v2, "RClass":I
    const/4 v4, 0x0

    const/4 v5, 0x4

    if-gt v0, v5, :cond_0

    .line 245
    const v5, 0x7f030002

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 246
    .local v5, "QArray":[Ljava/lang/String;
    const v6, 0x7f030006

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 247
    .local v6, "RClassArray":[Ljava/lang/String;
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    add-int/lit8 v8, v0, -0x1

    aget-object v8, v5, v8

    aput-object v8, v3, v4

    add-int/lit8 v4, v2, -0x1

    aget-object v4, v6, v4

    aput-object v4, v3, v1

    const-string v1, "Q3 %s %s"

    invoke-static {v7, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 249
    .end local v5    # "QArray":[Ljava/lang/String;
    .end local v6    # "RClassArray":[Ljava/lang/String;
    :cond_0
    const v5, 0x7f030005

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 250
    .restart local v5    # "QArray":[Ljava/lang/String;
    const/high16 v6, 0x7f030000

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 251
    .restart local v6    # "RClassArray":[Ljava/lang/String;
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    add-int/lit8 v8, v0, -0x5

    aget-object v8, v5, v8

    aput-object v8, v3, v4

    add-int/lit8 v4, v2, -0x7

    aget-object v4, v6, v4

    aput-object v4, v3, v1

    const-string v1, "Qn %s %s"

    invoke-static {v7, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CounterVerification{measSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->measSettings:[Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

    .line 719
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", measResults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->measResults:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", local="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->local:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", verificationNumberToday="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->verificationNumberToday:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", verificationNumberNew="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->verificationNumberNew:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", action="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->action:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", impulsesPerLiter="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->impulsesPerLiter:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", stationNumber="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->stationNumber:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", batteryCharge="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->batteryCharge:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", testName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->testName:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", multiplier="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->multiplier:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", verificationDate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->verificationDate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", currentStationTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->currentStationTime:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isOnline="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->isOnline:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", serviceType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->serviceType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", verStation=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->verStation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", verAndroid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->verAndroid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", char1=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->char1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", char2=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->char2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", counterNumber=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->counterNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", initialVolume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->initialVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productionYear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->productionYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", DNtypeNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->DNtypeNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", waterTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->waterTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", testPhoto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->testPhoto:[B

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 718
    return-object v0
.end method

.method public updateResults(Landroid/content/ContextWrapper;)V
    .locals 7
    .param p1, "context"    # Landroid/content/ContextWrapper;

    .line 443
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->testName:I

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    .line 444
    add-int/lit8 v0, v0, -0x64

    .line 445
    .local v0, "testName":I
    const/4 v1, 0x1

    .local v1, "updateToCold":Z
    goto :goto_0

    .line 447
    .end local v0    # "testName":I
    .end local v1    # "updateToCold":Z
    :cond_0
    add-int/lit8 v0, v0, 0x64

    .line 448
    .restart local v0    # "testName":I
    const/4 v1, 0x0

    .line 450
    .restart local v1    # "updateToCold":Z
    :goto_0
    iget v2, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->multiplier:I

    invoke-virtual {p0, p1, v0, v2}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->loadMeasurementSettings(Landroid/content/ContextWrapper;II)Z

    .line 452
    if-eqz v1, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :cond_1
    const/4 v2, 0x6

    .line 453
    .local v2, "newRequiredError":I
    :goto_1
    iget-object v3, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->measResults:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    .line 454
    .local v4, "res":Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getMeasurementNumber()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    .line 455
    invoke-virtual {v4, v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->setRequiredError(I)V

    .line 456
    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->calculate()Z

    .line 458
    .end local v4    # "res":Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    :cond_2
    goto :goto_2

    .line 459
    :cond_3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 802
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->measSettings:[Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 803
    .local v3, "mSetting":Lcom/poverka/httpFileClient/measurement/MeasurementSettings;
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 802
    .end local v3    # "mSetting":Lcom/poverka/httpFileClient/measurement/MeasurementSettings;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->measResults:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 806
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->verificationNumberToday:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 807
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->verificationNumberNew:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 808
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->paymentAccount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 809
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->action:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 810
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->impulsesPerLiter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 811
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->stationNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 812
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->batteryCharge:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 813
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->testName:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 814
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->multiplier:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 815
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->verificationDate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 816
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->productionDate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 817
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->dueDate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 818
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->currentStationTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 819
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->isOnline:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 820
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->serviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 821
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->char1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 822
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->char2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 823
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->testPhoto:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 824
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->testPhoto:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 825
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->counterNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 826
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->initialVolume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 827
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->productionYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 828
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->DNtypeNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 829
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->waterTemperature:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 830
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->verStation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 831
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->verAndroid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 832
    iget-boolean v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->workInShortMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 833
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 834
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->personalAccount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 835
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->local:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 836
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->environmentT:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 837
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->environmentH:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 838
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->environmentP:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 839
    iget-wide v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->latitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 840
    iget-wide v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->longitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 841
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->innerTemperature:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 842
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/CounterVerification;->innerHumidity:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 843
    return-void
.end method
