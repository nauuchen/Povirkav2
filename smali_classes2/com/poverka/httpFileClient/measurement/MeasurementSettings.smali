.class public Lcom/poverka/httpFileClient/measurement/MeasurementSettings;
.super Ljava/lang/Object;
.source "MeasurementSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/poverka/httpFileClient/measurement/MeasurementSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private consumptionImp:I

.field private consumptionLit:I

.field private error:I

.field private highLimit:I

.field private id:I

.field private lowLimit:I

.field private number:I

.field private testName:I

.field private volumeImp:I

.field private volumeLit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 157
    new-instance v0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings$1;

    invoke-direct {v0}, Lcom/poverka/httpFileClient/measurement/MeasurementSettings$1;-><init>()V

    sput-object v0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIIIIIIII)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "testName"    # I
    .param p3, "number"    # I
    .param p4, "consumptionLit"    # I
    .param p5, "volumeLit"    # I
    .param p6, "highLimit"    # I
    .param p7, "lowLimit"    # I
    .param p8, "error"    # I
    .param p9, "impLiter"    # I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->id:I

    .line 24
    iput p2, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->testName:I

    .line 25
    iput p3, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->number:I

    .line 26
    iput p4, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->consumptionLit:I

    .line 27
    mul-int v0, p4, p9

    div-int/lit16 v0, v0, 0xe10

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->consumptionImp:I

    .line 28
    iput p5, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->volumeLit:I

    .line 29
    mul-int v0, p5, p9

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->volumeImp:I

    .line 30
    iput p6, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->highLimit:I

    .line 31
    iput p7, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->lowLimit:I

    .line 32
    iput p8, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->error:I

    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->id:I

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->testName:I

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->number:I

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->consumptionLit:I

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->consumptionImp:I

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->volumeLit:I

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->volumeImp:I

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->highLimit:I

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->lowLimit:I

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->error:I

    .line 135
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/poverka/httpFileClient/measurement/MeasurementSettings$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/poverka/httpFileClient/measurement/MeasurementSettings$1;

    .line 10
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;II)V
    .locals 3
    .param p1, "setting"    # Lorg/json/JSONObject;
    .param p2, "impLiter"    # I
    .param p3, "multiplier"    # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    :try_start_0
    const-string v0, "meas_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->id:I

    .line 38
    const-string v0, "test_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->testName:I

    .line 39
    const-string v0, "meas_numb"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->number:I

    .line 40
    const-string v0, "con"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->consumptionLit:I

    .line 41
    mul-int v0, v0, p2

    div-int/lit16 v0, v0, 0xe10

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->consumptionImp:I

    .line 42
    const-string v0, "volume"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    mul-int v0, v0, p3

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->volumeLit:I

    .line 43
    mul-int v0, v0, p2

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->volumeImp:I

    .line 44
    const-string v0, "h_lim"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->highLimit:I

    .line 45
    const-string v0, "l_lim"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->lowLimit:I

    .line 46
    const-string v0, "error"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->error:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "MeasurementSettings"

    const-string v2, "error in JSON constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method getConsumptionImp()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->consumptionImp:I

    return v0
.end method

.method getConsumptionLit()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->consumptionLit:I

    return v0
.end method

.method getError()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->error:I

    return v0
.end method

.method getHighLimit()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->highLimit:I

    return v0
.end method

.method getLowLimit()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->lowLimit:I

    return v0
.end method

.method public getNumber()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->number:I

    return v0
.end method

.method getVolumeImp()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->volumeImp:I

    return v0
.end method

.method getVolumeLit()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->volumeLit:I

    return v0
.end method

.method setError(I)V
    .locals 0
    .param p1, "error"    # I

    .line 86
    iput p1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->error:I

    .line 87
    return-void
.end method

.method toJSON()Lorg/json/JSONObject;
    .locals 3

    .line 106
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 108
    .local v0, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "meas_id"

    iget v2, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->id:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 109
    const-string v1, "meas_numb"

    iget v2, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->number:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 110
    const-string v1, "test_name"

    iget v2, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->testName:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 111
    const-string v1, "con"

    iget v2, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->consumptionLit:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 112
    const-string v1, "h_lim"

    iget v2, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->highLimit:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 113
    const-string v1, "l_lim"

    iget v2, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->lowLimit:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 114
    const-string v1, "volume"

    iget v2, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->volumeLit:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 115
    const-string v1, "error"

    iget v2, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->error:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    goto :goto_0

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Lorg/json/JSONException;
    const/4 v0, 0x0

    .line 120
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MeasSettings{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", testName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->testName:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->number:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", consumptionLit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->consumptionLit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", consumptionImp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->consumptionImp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", volumeLit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->volumeLit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", volumeImp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->volumeImp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", highLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->highLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lowLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->lowLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 144
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->testName:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->number:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->consumptionLit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->consumptionImp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->volumeLit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->volumeImp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->highLimit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->lowLimit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->error:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    return-void
.end method
