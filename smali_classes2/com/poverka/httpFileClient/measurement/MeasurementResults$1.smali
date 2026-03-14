.class Lcom/poverka/httpFileClient/measurement/MeasurementResults$1;
.super Ljava/lang/Object;
.source "MeasurementResults.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/poverka/httpFileClient/measurement/MeasurementResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/poverka/httpFileClient/measurement/MeasurementResults;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 368
    new-instance v0, Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;-><init>(Landroid/os/Parcel;Lcom/poverka/httpFileClient/measurement/MeasurementResults$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 365
    invoke-virtual {p0, p1}, Lcom/poverka/httpFileClient/measurement/MeasurementResults$1;->createFromParcel(Landroid/os/Parcel;)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/poverka/httpFileClient/measurement/MeasurementResults;
    .locals 1
    .param p1, "size"    # I

    .line 373
    new-array v0, p1, [Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 365
    invoke-virtual {p0, p1}, Lcom/poverka/httpFileClient/measurement/MeasurementResults$1;->newArray(I)[Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object p1

    return-object p1
.end method
