.class public Lcom/poverka/httpFileClient/containers/Task;
.super Ljava/lang/Object;
.source "Task.java"


# static fields
.field public static final DISMISSED:I = 0x1

.field public static final DONE:I = 0x2

.field public static final NEW:I


# instance fields
.field private apartment:I

.field private apartmentBuk:Ljava/lang/String;

.field private building:I

.field private buildingBuk:Ljava/lang/String;

.field private buildingCorp:Ljava/lang/String;

.field private cityId:I

.field private counterNumber:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field private dismissNote:Ljava/lang/String;

.field private etag:I

.field private fullAddress:Ljava/lang/String;

.field private geoX:F

.field private geoY:F

.field private groupId:I

.field private id:I

.field private marshrutOrder:I

.field private middleName:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private note:Ljava/lang/String;

.field private phone2:Ljava/lang/String;

.field private phone3:Ljava/lang/String;

.field private phoneMain:Ljava/lang/String;

.field private podezd:I

.field private protocolNumber:Ljava/lang/String;

.field private serviceType:I

.field private station:I

.field private statusDate:Ljava/lang/String;

.field private statusId:I

.field private streetId:I

.field private surname:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 54
    const-string v0, "PROTOCOL_DATE"

    const-string v1, "ZAJAVKA_DATE"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    :try_start_0
    const-string v2, "ID"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/poverka/httpFileClient/containers/Task;->id:I

    .line 57
    const-string v2, "ZAJAVKA_ID"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/poverka/httpFileClient/containers/Task;->groupId:I

    .line 58
    const-string v2, "SURNAME"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/poverka/httpFileClient/containers/Task;->surname:Ljava/lang/String;

    .line 59
    const-string v2, "NAME"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/poverka/httpFileClient/containers/Task;->name:Ljava/lang/String;

    .line 60
    const-string v2, "MIDDLE_NAME"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/poverka/httpFileClient/containers/Task;->middleName:Ljava/lang/String;

    .line 61
    const-string v2, "CITY"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/poverka/httpFileClient/containers/Task;->cityId:I

    .line 62
    const-string v2, "STREET"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/poverka/httpFileClient/containers/Task;->streetId:I

    .line 63
    const-string v2, "BUILDING"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/poverka/httpFileClient/containers/Task;->building:I

    .line 64
    const-string v2, "BUILDING_BUKVA"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/poverka/httpFileClient/containers/Task;->buildingBuk:Ljava/lang/String;

    .line 65
    const-string v2, "BUILDING_KORPUS"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/poverka/httpFileClient/containers/Task;->buildingCorp:Ljava/lang/String;

    .line 66
    const-string v2, "APARTMENT"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/poverka/httpFileClient/containers/Task;->apartment:I

    .line 67
    const-string v2, "APARTMENT_BUKVA"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/poverka/httpFileClient/containers/Task;->apartmentBuk:Ljava/lang/String;

    .line 68
    const-string v2, "FULL_ADDRESS"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/poverka/httpFileClient/containers/Task;->fullAddress:Ljava/lang/String;

    .line 69
    const-string v2, "PODEZD"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/poverka/httpFileClient/containers/Task;->podezd:I

    .line 70
    const-string v2, "ETAG"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/poverka/httpFileClient/containers/Task;->etag:I

    .line 71
    const-string v2, "MARSHRUT_ORDER"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/poverka/httpFileClient/containers/Task;->marshrutOrder:I

    .line 72
    const-string v2, "PHONE_NUMBER"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/poverka/httpFileClient/containers/Task;->phoneMain:Ljava/lang/String;

    .line 73
    const-string v2, "PHONE_NUMBER_DOP"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/poverka/httpFileClient/containers/Task;->phone2:Ljava/lang/String;

    .line 74
    const-string v2, "PHONE_NUMBER_DOP2"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/poverka/httpFileClient/containers/Task;->phone3:Ljava/lang/String;

    .line 75
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/poverka/httpFileClient/containers/Task;->date:Ljava/lang/String;

    .line 77
    const-string v0, "ZAJAVKA_TIME"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/poverka/httpFileClient/containers/Task;->time:Ljava/lang/String;

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/poverka/httpFileClient/containers/Task;->date:Ljava/lang/String;

    .line 80
    const-string v0, "PROTOCOL_TIME"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/poverka/httpFileClient/containers/Task;->time:Ljava/lang/String;

    .line 82
    :cond_1
    :goto_0
    const-string v0, "COUNTER_NUMBER"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/poverka/httpFileClient/containers/Task;->counterNumber:Ljava/lang/String;

    .line 83
    const-string v0, "SERVICE_TYPE"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/containers/Task;->serviceType:I

    .line 84
    const-string v0, "NOTE"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/poverka/httpFileClient/containers/Task;->note:Ljava/lang/String;

    .line 85
    const-string v0, "GEO_XX"

    const-wide v1, 0x40493a324c836651L    # 50.45466

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/poverka/httpFileClient/containers/Task;->geoX:F

    .line 86
    const-string v0, "GEO_YY"

    const-wide v1, 0x403e8617c1bda512L    # 30.5238

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/poverka/httpFileClient/containers/Task;->geoY:F

    .line 87
    const-string v0, "Z_NOMER"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/containers/Task;->station:I

    .line 88
    const-string v0, "STATUS_ID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/containers/Task;->statusId:I

    .line 89
    const-string v0, "STATUS_DATE"

    const-string v1, "01.01.1970"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/poverka/httpFileClient/containers/Task;->statusDate:Ljava/lang/String;

    .line 90
    const-string v0, "PROTOCOL"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/poverka/httpFileClient/containers/Task;->protocolNumber:Ljava/lang/String;

    .line 91
    const-string v0, "DISMISS_NOTE"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/poverka/httpFileClient/containers/Task;->dismissNote:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    goto :goto_1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "Task"

    const-string v2, "error in JSON constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method public static jsonStringToList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/poverka/httpFileClient/containers/Task;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/poverka/httpFileClient/containers/Task;>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 100
    .local v1, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 101
    new-instance v3, Lcom/poverka/httpFileClient/containers/Task;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/poverka/httpFileClient/containers/Task;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    .end local v2    # "index":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getApartment()I
    .locals 1

    .line 199
    iget v0, p0, Lcom/poverka/httpFileClient/containers/Task;->apartment:I

    return v0
.end method

.method public getApartmentBuk()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/poverka/httpFileClient/containers/Task;->apartmentBuk:Ljava/lang/String;

    return-object v0
.end method

.method public getBuilding()I
    .locals 1

    .line 187
    iget v0, p0, Lcom/poverka/httpFileClient/containers/Task;->building:I

    return v0
.end method

.method public getBuildingBuk()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/poverka/httpFileClient/containers/Task;->buildingBuk:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildingCorp()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/poverka/httpFileClient/containers/Task;->buildingCorp:Ljava/lang/String;

    return-object v0
.end method

.method public getCityId()I
    .locals 1

    .line 179
    iget v0, p0, Lcom/poverka/httpFileClient/containers/Task;->cityId:I

    return v0
.end method

.method public getCounterNumber()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/poverka/httpFileClient/containers/Task;->counterNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/poverka/httpFileClient/containers/Task;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDismissNote()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/poverka/httpFileClient/containers/Task;->dismissNote:Ljava/lang/String;

    return-object v0
.end method

.method public getEtag()I
    .locals 1

    .line 219
    iget v0, p0, Lcom/poverka/httpFileClient/containers/Task;->etag:I

    return v0
.end method

.method public getFullAddress()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/poverka/httpFileClient/containers/Task;->fullAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getFullApartment()Ljava/lang/String;
    .locals 4

    .line 207
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/poverka/httpFileClient/containers/Task;->apartment:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/poverka/httpFileClient/containers/Task;->apartmentBuk:Ljava/lang/String;

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/poverka/httpFileClient/containers/Task;->apartmentBuk:Ljava/lang/String;

    :goto_0
    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%d %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGeoX()F
    .locals 1

    .line 267
    iget v0, p0, Lcom/poverka/httpFileClient/containers/Task;->geoX:F

    return v0
.end method

.method public getGeoY()F
    .locals 1

    .line 271
    iget v0, p0, Lcom/poverka/httpFileClient/containers/Task;->geoY:F

    return v0
.end method

.method public getGroupId()I
    .locals 1

    .line 163
    iget v0, p0, Lcom/poverka/httpFileClient/containers/Task;->groupId:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 159
    iget v0, p0, Lcom/poverka/httpFileClient/containers/Task;->id:I

    return v0
.end method

.method public getMarshrutOrder()I
    .locals 1

    .line 223
    iget v0, p0, Lcom/poverka/httpFileClient/containers/Task;->marshrutOrder:I

    return v0
.end method

.method public getMiddleName()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/poverka/httpFileClient/containers/Task;->middleName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/poverka/httpFileClient/containers/Task;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/poverka/httpFileClient/containers/Task;->note:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone2()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/poverka/httpFileClient/containers/Task;->phone2:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone3()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/poverka/httpFileClient/containers/Task;->phone3:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneMain()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/poverka/httpFileClient/containers/Task;->phoneMain:Ljava/lang/String;

    return-object v0
.end method

.method public getPhones()Ljava/lang/String;
    .locals 5

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/poverka/httpFileClient/containers/Task;->phoneMain:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/poverka/httpFileClient/containers/Task;->phoneMain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/poverka/httpFileClient/containers/Task;->phone2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, ", "

    if-nez v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/poverka/httpFileClient/containers/Task;->phone2:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/poverka/httpFileClient/containers/Task;->phone3:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/poverka/httpFileClient/containers/Task;->phone3:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPodezd()I
    .locals 1

    .line 215
    iget v0, p0, Lcom/poverka/httpFileClient/containers/Task;->podezd:I

    return v0
.end method

.method public getProtocolNumber()Ljava/lang/String;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/poverka/httpFileClient/containers/Task;->protocolNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceType()I
    .locals 1

    .line 259
    iget v0, p0, Lcom/poverka/httpFileClient/containers/Task;->serviceType:I

    return v0
.end method

.method public getStation()I
    .locals 1

    .line 275
    iget v0, p0, Lcom/poverka/httpFileClient/containers/Task;->station:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 279
    iget v0, p0, Lcom/poverka/httpFileClient/containers/Task;->statusId:I

    return v0
.end method

.method public getStatusDate()Ljava/lang/String;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/poverka/httpFileClient/containers/Task;->statusDate:Ljava/lang/String;

    return-object v0
.end method

.method public getStreetId()I
    .locals 1

    .line 183
    iget v0, p0, Lcom/poverka/httpFileClient/containers/Task;->streetId:I

    return v0
.end method

.method public getSurname()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/poverka/httpFileClient/containers/Task;->surname:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/poverka/httpFileClient/containers/Task;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setDismiss(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "dismissNote"    # Ljava/lang/String;

    .line 302
    const/4 v0, 0x1

    iput v0, p0, Lcom/poverka/httpFileClient/containers/Task;->statusId:I

    .line 303
    iput-object p1, p0, Lcom/poverka/httpFileClient/containers/Task;->statusDate:Ljava/lang/String;

    .line 304
    iput-object p2, p0, Lcom/poverka/httpFileClient/containers/Task;->dismissNote:Ljava/lang/String;

    .line 305
    return-void
.end method

.method public setNew()V
    .locals 1

    .line 308
    const/4 v0, 0x0

    iput v0, p0, Lcom/poverka/httpFileClient/containers/Task;->statusId:I

    .line 309
    const-string v0, "01.01.1970"

    iput-object v0, p0, Lcom/poverka/httpFileClient/containers/Task;->statusDate:Ljava/lang/String;

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/poverka/httpFileClient/containers/Task;->protocolNumber:Ljava/lang/String;

    .line 311
    iput-object v0, p0, Lcom/poverka/httpFileClient/containers/Task;->dismissNote:Ljava/lang/String;

    .line 312
    return-void
.end method

.method public setProtocol(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "protocolNumber"    # Ljava/lang/String;
    .param p3, "counterNumber"    # Ljava/lang/String;

    .line 295
    const/4 v0, 0x2

    iput v0, p0, Lcom/poverka/httpFileClient/containers/Task;->statusId:I

    .line 296
    iput-object p1, p0, Lcom/poverka/httpFileClient/containers/Task;->statusDate:Ljava/lang/String;

    .line 297
    iput-object p2, p0, Lcom/poverka/httpFileClient/containers/Task;->protocolNumber:Ljava/lang/String;

    .line 298
    iput-object p3, p0, Lcom/poverka/httpFileClient/containers/Task;->counterNumber:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 107
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 108
    .local v0, "json":Lorg/json/JSONObject;
    iget v1, p0, Lcom/poverka/httpFileClient/containers/Task;->id:I

    const-string v2, "ID"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 109
    iget v1, p0, Lcom/poverka/httpFileClient/containers/Task;->groupId:I

    const-string v2, "ZAJAVKA_ID"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 110
    iget-object v1, p0, Lcom/poverka/httpFileClient/containers/Task;->surname:Ljava/lang/String;

    const-string v2, "SURNAME"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    iget-object v1, p0, Lcom/poverka/httpFileClient/containers/Task;->name:Ljava/lang/String;

    const-string v2, "NAME"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    iget-object v1, p0, Lcom/poverka/httpFileClient/containers/Task;->middleName:Ljava/lang/String;

    const-string v2, "MIDDLE_NAME"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    iget v1, p0, Lcom/poverka/httpFileClient/containers/Task;->cityId:I

    const-string v2, "CITY"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 114
    iget v1, p0, Lcom/poverka/httpFileClient/containers/Task;->streetId:I

    const-string v2, "STREET"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 115
    iget v1, p0, Lcom/poverka/httpFileClient/containers/Task;->building:I

    const-string v2, "BUILDING"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 116
    iget-object v1, p0, Lcom/poverka/httpFileClient/containers/Task;->buildingBuk:Ljava/lang/String;

    const-string v2, "BUILDING_BUKVA"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    iget-object v1, p0, Lcom/poverka/httpFileClient/containers/Task;->buildingCorp:Ljava/lang/String;

    const-string v2, "BUILDING_KORPUS"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    iget v1, p0, Lcom/poverka/httpFileClient/containers/Task;->apartment:I

    const-string v2, "APARTMENT"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 119
    iget-object v1, p0, Lcom/poverka/httpFileClient/containers/Task;->apartmentBuk:Ljava/lang/String;

    const-string v2, "APARTMENT_BUKVA"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    iget-object v1, p0, Lcom/poverka/httpFileClient/containers/Task;->fullAddress:Ljava/lang/String;

    const-string v2, "FULL_ADDRESS"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    iget v1, p0, Lcom/poverka/httpFileClient/containers/Task;->podezd:I

    const-string v2, "PODEZD"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 122
    iget v1, p0, Lcom/poverka/httpFileClient/containers/Task;->etag:I

    const-string v2, "ETAG"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 123
    iget v1, p0, Lcom/poverka/httpFileClient/containers/Task;->marshrutOrder:I

    const-string v2, "MARSHRUT_ORDER"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 124
    iget-object v1, p0, Lcom/poverka/httpFileClient/containers/Task;->phoneMain:Ljava/lang/String;

    const-string v2, "PHONE_NUMBER"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    iget-object v1, p0, Lcom/poverka/httpFileClient/containers/Task;->phone2:Ljava/lang/String;

    const-string v2, "PHONE_NUMBER_DOP"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    iget-object v1, p0, Lcom/poverka/httpFileClient/containers/Task;->phone3:Ljava/lang/String;

    const-string v2, "PHONE_NUMBER_DOP2"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    iget-object v1, p0, Lcom/poverka/httpFileClient/containers/Task;->date:Ljava/lang/String;

    const-string v2, "ZAJAVKA_DATE"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    iget-object v1, p0, Lcom/poverka/httpFileClient/containers/Task;->time:Ljava/lang/String;

    const-string v2, "ZAJAVKA_TIME"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    iget-object v1, p0, Lcom/poverka/httpFileClient/containers/Task;->counterNumber:Ljava/lang/String;

    const-string v2, "COUNTER_NUMBER"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    iget v1, p0, Lcom/poverka/httpFileClient/containers/Task;->serviceType:I

    const-string v2, "SERVICE_TYPE"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 131
    iget-object v1, p0, Lcom/poverka/httpFileClient/containers/Task;->note:Ljava/lang/String;

    const-string v2, "NOTE"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    iget v1, p0, Lcom/poverka/httpFileClient/containers/Task;->geoX:F

    float-to-double v1, v1

    const-string v3, "GEO_XX"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 133
    iget v1, p0, Lcom/poverka/httpFileClient/containers/Task;->geoY:F

    float-to-double v1, v1

    const-string v3, "GEO_YY"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 134
    iget v1, p0, Lcom/poverka/httpFileClient/containers/Task;->station:I

    const-string v2, "Z_NOMER"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 135
    iget v1, p0, Lcom/poverka/httpFileClient/containers/Task;->statusId:I

    const-string v2, "STATUS_ID"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 136
    iget-object v1, p0, Lcom/poverka/httpFileClient/containers/Task;->statusDate:Ljava/lang/String;

    const-string v2, "STATUS_DATE"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    iget-object v1, p0, Lcom/poverka/httpFileClient/containers/Task;->protocolNumber:Ljava/lang/String;

    const-string v2, "PROTOCOL"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    iget-object v1, p0, Lcom/poverka/httpFileClient/containers/Task;->dismissNote:Ljava/lang/String;

    const-string v2, "DISMISS_NOTE"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2116"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/poverka/httpFileClient/containers/Task;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \u041f\u0406\u0411 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/poverka/httpFileClient/containers/Task;->surname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \u0430\u0434\u0440\u0435\u0441\u0430 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/poverka/httpFileClient/containers/Task;->fullAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \u043a\u0432. = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 147
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/containers/Task;->getFullApartment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \u0442\u0435\u043b = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 148
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/containers/Task;->getPhones()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \u0447\u0430\u0441 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/poverka/httpFileClient/containers/Task;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \u0442\u0438\u043f \u043f\u043e\u0441\u043b\u0443\u0433\u0438 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 150
    iget v1, p0, Lcom/poverka/httpFileClient/containers/Task;->serviceType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "\u0425\u0412"

    goto :goto_0

    :cond_0
    const-string v1, "\u0413\u0412"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \u043a\u043e\u043c\u0435\u043d\u0442\u0430\u0440 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/poverka/httpFileClient/containers/Task;->note:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    return-object v0
.end method
