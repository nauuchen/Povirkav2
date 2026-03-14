.class Lcom/poverka/httpFileClient/measurement/MeasurementSettings$1;
.super Ljava/lang/Object;
.source "MeasurementSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/poverka/httpFileClient/measurement/MeasurementSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/poverka/httpFileClient/measurement/MeasurementSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/poverka/httpFileClient/measurement/MeasurementSettings;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 160
    new-instance v0, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/poverka/httpFileClient/measurement/MeasurementSettings;-><init>(Landroid/os/Parcel;Lcom/poverka/httpFileClient/measurement/MeasurementSettings$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 157
    invoke-virtual {p0, p1}, Lcom/poverka/httpFileClient/measurement/MeasurementSettings$1;->createFromParcel(Landroid/os/Parcel;)Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/poverka/httpFileClient/measurement/MeasurementSettings;
    .locals 1
    .param p1, "size"    # I

    .line 165
    new-array v0, p1, [Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 157
    invoke-virtual {p0, p1}, Lcom/poverka/httpFileClient/measurement/MeasurementSettings$1;->newArray(I)[Lcom/poverka/httpFileClient/measurement/MeasurementSettings;

    move-result-object p1

    return-object p1
.end method
