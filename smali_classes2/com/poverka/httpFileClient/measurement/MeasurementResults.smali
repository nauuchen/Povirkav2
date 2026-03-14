.class public Lcom/poverka/httpFileClient/measurement/MeasurementResults;
.super Ljava/lang/Object;
.source "MeasurementResults.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/poverka/httpFileClient/measurement/MeasurementResults;",
            ">;"
        }
    .end annotation
.end field

.field private static final MEASUREMENT_RESULT_INVALID:I = 0x2

.field private static final MEASUREMENT_RESULT_UNKNOWN:I = 0x0

.field private static final MEASUREMENT_RESULT_VALID:I = 0x1


# instance fields
.field private consumptionAvrgImp:I

.field private consumptionAvrgLit:F

.field private consumptionCurImp:I

.field private consumptionCurLit:F

.field private duration:I

.field private error:I

.field private final impLiter:I

.field private final measSettings:Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

.field private final measurementNumber:I

.field private photoEnd:[B

.field private photoStart:[B

.field private final reiterationNumber:I

.field private result:I

.field private valEnd:I

.field private valStart:I

.field private volumeCurImp:I

.field private volumeCurLit:F

.field private waterTemperature:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 365
    new-instance v0, Lcom/poverka/httpFileClient/measurement/MeasurementResults$1;

    invoke-direct {v0}, Lcom/poverka/httpFileClient/measurement/MeasurementResults$1;-><init>()V

    sput-object v0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILcom/poverka/httpFileClient/measurement/MeasurementSettings;I)V
    .locals 0
    .param p1, "measurementNumber"    # I
    .param p2, "reiterationNumber"    # I
    .param p3, "measSettings"    # Lcom/poverka/httpFileClient/measurement/MeasurementSettings;
    .param p4, "impLiter"    # I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->measurementNumber:I

    .line 36
    iput p2, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->reiterationNumber:I

    .line 37
    iput-object p3, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->measSettings:Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

    .line 38
    iput p4, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->impLiter:I

    .line 40
    invoke-direct {p0}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->initValues()V

    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->measurementNumber:I

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->reiterationNumber:I

    .line 299
    const-class v0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

    iput-object v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->measSettings:Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->impLiter:I

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->consumptionCurImp:I

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->consumptionCurLit:F

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->consumptionAvrgImp:I

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->consumptionAvrgLit:F

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->volumeCurImp:I

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->volumeCurLit:F

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->photoStart:[B

    .line 309
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 311
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->photoEnd:[B

    .line 313
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 315
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->duration:I

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->error:I

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->valStart:I

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->valEnd:I

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->result:I

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->waterTemperature:F

    .line 321
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/poverka/httpFileClient/measurement/MeasurementResults$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/poverka/httpFileClient/measurement/MeasurementResults$1;

    .line 10
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private initValues()V
    .locals 2

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->consumptionCurImp:I

    .line 45
    const/4 v1, 0x0

    iput v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->consumptionCurLit:F

    .line 46
    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->consumptionAvrgImp:I

    .line 47
    iput v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->consumptionAvrgLit:F

    .line 48
    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->volumeCurImp:I

    .line 49
    iput v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->volumeCurLit:F

    .line 50
    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->duration:I

    .line 51
    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->error:I

    .line 52
    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->valStart:I

    .line 53
    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->valEnd:I

    .line 54
    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->result:I

    .line 55
    return-void
.end method


# virtual methods
.method public avrgConRange()I
    .locals 4

    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "res":I
    iget v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->consumptionAvrgLit:F

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float v1, v1, v2

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getRequiredLowLimit()F

    move-result v3

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->consumptionAvrgLit:F

    mul-float v1, v1, v2

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getRequiredHighLimit()F

    move-result v3

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_0

    .line 209
    const/4 v0, 0x0

    goto :goto_0

    .line 211
    :cond_0
    iget v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->consumptionAvrgLit:F

    mul-float v1, v1, v2

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getRequiredLowLimit()F

    move-result v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    .line 212
    const/4 v0, -0x1

    goto :goto_0

    .line 214
    :cond_1
    iget v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->consumptionAvrgLit:F

    mul-float v1, v1, v2

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getRequiredHighLimit()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 215
    const/4 v0, 0x1

    .line 217
    :cond_2
    :goto_0
    return v0
.end method

.method public calculate()Z
    .locals 4

    .line 172
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->valStart:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_2

    iget v3, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->valEnd:I

    if-lez v3, :cond_2

    .line 173
    if-lt v3, v0, :cond_1

    .line 174
    sub-int/2addr v3, v0

    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->measSettings:Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->getVolumeLit()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    sub-int/2addr v3, v0

    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->measSettings:Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->getVolumeLit()I

    move-result v0

    div-int/2addr v3, v0

    iput v3, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->error:I

    .line 175
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->measSettings:Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->getError()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    iget v2, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->error:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 176
    iput v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->result:I

    goto :goto_0

    .line 178
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->result:I

    goto :goto_0

    .line 181
    :cond_1
    iput v2, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->error:I

    .line 182
    iput v2, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->result:I

    .line 183
    return v2

    .line 186
    :cond_2
    iput v2, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->error:I

    .line 187
    iput v2, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->result:I

    .line 189
    :goto_0
    return v1
.end method

.method public clearData()V
    .locals 1

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->photoStart:[B

    .line 154
    iput-object v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->photoEnd:[B

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->valStart:I

    .line 156
    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->valEnd:I

    .line 157
    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->result:I

    .line 158
    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->error:I

    .line 159
    return-void
.end method

.method public curConRange()I
    .locals 4

    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "res":I
    iget v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->consumptionCurLit:F

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float v1, v1, v2

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getRequiredLowLimit()F

    move-result v3

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->consumptionCurLit:F

    mul-float v1, v1, v2

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getRequiredHighLimit()F

    move-result v3

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_0

    .line 195
    const/4 v0, 0x0

    goto :goto_0

    .line 197
    :cond_0
    iget v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->consumptionCurLit:F

    mul-float v1, v1, v2

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getRequiredLowLimit()F

    move-result v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    .line 198
    const/4 v0, -0x1

    goto :goto_0

    .line 200
    :cond_1
    iget v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->consumptionCurLit:F

    mul-float v1, v1, v2

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getRequiredHighLimit()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 201
    const/4 v0, 0x1

    .line 203
    :cond_2
    :goto_0
    return v0
.end method

.method public describeContents()I
    .locals 1

    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public getBitmap(I)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "numb"    # I

    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->photoStart:[B

    array-length v3, v2

    invoke-static {v2, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 165
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 166
    iget-object v2, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->photoEnd:[B

    array-length v3, v2

    invoke-static {v2, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 168
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getConsumptionAvrgImp()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->consumptionAvrgImp:I

    return v0
.end method

.method public getConsumptionAvrgLit()F
    .locals 1

    .line 74
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->consumptionAvrgLit:F

    return v0
.end method

.method public getConsumptionCurLit()F
    .locals 1

    .line 66
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->consumptionCurLit:F

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 241
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->duration:I

    return v0
.end method

.method public getError()I
    .locals 1

    .line 237
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->error:I

    return v0
.end method

.method public getMeasurementNumber()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->measurementNumber:I

    return v0
.end method

.method public getPhotoName(I)Ljava/lang/String;
    .locals 4
    .param p1, "numb"    # I

    .line 141
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->measurementNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->reiterationNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "1/current/photo_%d%d%d.jpeg"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReiterationNumber()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->reiterationNumber:I

    return v0
.end method

.method public getRequiredConsumptionLit()I
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->measSettings:Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->getConsumptionLit()I

    move-result v0

    return v0
.end method

.method public getRequiredError()I
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->measSettings:Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->getError()I

    move-result v0

    return v0
.end method

.method public getRequiredHighLimit()F
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->measSettings:Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->getConsumptionLit()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->measSettings:Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->getConsumptionLit()I

    move-result v1

    iget-object v2, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->measSettings:Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->getHighLimit()I

    move-result v2

    mul-int v1, v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getRequiredLowLimit()F
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->measSettings:Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->getConsumptionLit()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->measSettings:Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->getConsumptionLit()I

    move-result v1

    iget-object v2, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->measSettings:Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->getLowLimit()I

    move-result v2

    mul-int v1, v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public getRequiredVolumeImp()I
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->measSettings:Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->getVolumeImp()I

    move-result v0

    return v0
.end method

.method public getRequiredVolumeLit()I
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->measSettings:Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->getVolumeLit()I

    move-result v0

    return v0
.end method

.method public getResult()I
    .locals 1

    .line 249
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->result:I

    return v0
.end method

.method public getTimeLeft()Ljava/lang/String;
    .locals 3

    .line 125
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->consumptionCurLit:F

    const-string v1, ">999"

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    return-object v1

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->measSettings:Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->getVolumeLit()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->volumeCurLit:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->consumptionCurLit:F

    div-float/2addr v0, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v0, v2

    const/high16 v2, 0x45610000    # 3600.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 127
    .local v0, "timeLeft":I
    const/16 v2, 0x3e7

    if-le v0, v2, :cond_1

    return-object v1

    .line 128
    :cond_1
    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    const-string v1, "0"

    return-object v1

    .line 129
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getValEnd()I
    .locals 1

    .line 229
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->valEnd:I

    return v0
.end method

.method public getValStart()I
    .locals 1

    .line 221
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->valStart:I

    return v0
.end method

.method public getVolumeCurImp()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->volumeCurImp:I

    return v0
.end method

.method public getWaterTemperature()F
    .locals 1

    .line 253
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->waterTemperature:F

    return v0
.end method

.method public hasPhotoEnd()Z
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->photoEnd:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPhotoStart()Z
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->photoStart:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public measurementData()Ljava/lang/String;
    .locals 2

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Measurement Data{ consumptionCurImp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->consumptionCurImp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", consumptionCurLit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->consumptionCurLit:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", consumptionAvrgImp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->consumptionAvrgImp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", consumptionAvrgLit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->consumptionAvrgLit:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", volumeCurImp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->volumeCurImp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", volumeCurLit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->volumeCurLit:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAverageConsumption(I)V
    .locals 2
    .param p1, "consumptionAvrgImp"    # I

    .line 120
    iput p1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->consumptionAvrgImp:I

    .line 121
    int-to-float v0, p1

    const v1, 0x40666666    # 3.6f

    mul-float v0, v0, v1

    iget v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->impLiter:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->consumptionAvrgLit:F

    .line 122
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .line 245
    iput p1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->duration:I

    .line 246
    return-void
.end method

.method public setPhoto([BI)V
    .locals 1
    .param p1, "photo"    # [B
    .param p2, "photoNumber"    # I

    .line 145
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 146
    iput-object p1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->photoStart:[B

    goto :goto_0

    .line 147
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 148
    iput-object p1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->photoEnd:[B

    .line 150
    :cond_1
    :goto_0
    return-void
.end method

.method public setRequiredError(I)V
    .locals 1
    .param p1, "error"    # I

    .line 106
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->measSettings:Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

    invoke-virtual {v0, p1}, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->setError(I)V

    .line 107
    return-void
.end method

.method public setValEnd(I)V
    .locals 0
    .param p1, "valEnd"    # I

    .line 233
    iput p1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->valEnd:I

    .line 234
    return-void
.end method

.method public setValStart(I)V
    .locals 0
    .param p1, "valStart"    # I

    .line 225
    iput p1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->valStart:I

    .line 226
    return-void
.end method

.method public setWaterTemperature(I)V
    .locals 2
    .param p1, "waterTemperature"    # I

    .line 257
    int-to-float v0, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->waterTemperature:F

    .line 258
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MeasurementResults{measurementNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->measurementNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reiterationNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->reiterationNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", measurementSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->measSettings:Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

    .line 276
    invoke-virtual {v1}, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", impLiter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->impLiter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", consumptionCurImp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->consumptionCurImp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", consumptionCurLit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->consumptionCurLit:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", consumptionAvrgImp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->consumptionAvrgImp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", consumptionAvrgLit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->consumptionAvrgLit:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", volumeCurImp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->volumeCurImp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", volumeCurLit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->volumeCurLit:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", valStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->valStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", valEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->valEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", waterTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->waterTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", photoStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->photoStart:[B

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", photoEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->photoEnd:[B

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    return-object v0
.end method

.method public updateValues(III)V
    .locals 4
    .param p1, "consumptionCurImp"    # I
    .param p2, "consumptionAvrgImp"    # I
    .param p3, "volumeCurImp"    # I

    .line 110
    iput p1, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->consumptionCurImp:I

    .line 111
    iput p2, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->consumptionAvrgImp:I

    .line 112
    iput p3, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->volumeCurImp:I

    .line 114
    int-to-float v0, p1

    const v1, 0x40666666    # 3.6f

    mul-float v0, v0, v1

    iget v2, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->impLiter:I

    int-to-float v3, v2

    div-float/2addr v0, v3

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->consumptionCurLit:F

    .line 115
    int-to-float v0, p2

    mul-float v0, v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->consumptionAvrgLit:F

    .line 116
    int-to-float v0, p3

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->volumeCurLit:F

    .line 117
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 330
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->measurementNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->reiterationNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->measSettings:Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 333
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->impLiter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->consumptionCurImp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->consumptionCurLit:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 336
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->consumptionAvrgImp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->consumptionAvrgLit:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 338
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->volumeCurImp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->volumeCurLit:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 340
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->photoStart:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 341
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 344
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->photoStart:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->photoStart:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 348
    :goto_0
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->photoEnd:[B

    if-nez v0, :cond_1

    .line 349
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 352
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->photoEnd:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    iget-object v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->photoEnd:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 356
    :goto_1
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->duration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->error:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->valStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->valEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->result:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    iget v0, p0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->waterTemperature:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 362
    return-void
.end method
