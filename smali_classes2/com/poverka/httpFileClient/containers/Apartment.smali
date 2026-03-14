.class public Lcom/poverka/httpFileClient/containers/Apartment;
.super Ljava/lang/Object;
.source "Apartment.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/poverka/httpFileClient/containers/Apartment;",
        ">;"
    }
.end annotation


# instance fields
.field private address:Ljava/lang/String;

.field private apartment:I

.field private apartmentB:Ljava/lang/String;

.field private building:I

.field private buildingB:Ljava/lang/String;

.field private buildingK:Ljava/lang/String;

.field private cityId:I

.field private countClosed:I

.field private countTotal:I

.field private streetId:I

.field private surname:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "cityId"    # I
    .param p2, "streetId"    # I
    .param p3, "building"    # I
    .param p4, "buildingB"    # Ljava/lang/String;
    .param p5, "buildingK"    # Ljava/lang/String;
    .param p6, "apartment"    # I
    .param p7, "apartmentB"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/poverka/httpFileClient/containers/Apartment;->cityId:I

    .line 21
    iput p2, p0, Lcom/poverka/httpFileClient/containers/Apartment;->streetId:I

    .line 22
    iput p3, p0, Lcom/poverka/httpFileClient/containers/Apartment;->building:I

    .line 23
    iput-object p4, p0, Lcom/poverka/httpFileClient/containers/Apartment;->buildingB:Ljava/lang/String;

    .line 24
    iput-object p5, p0, Lcom/poverka/httpFileClient/containers/Apartment;->buildingK:Ljava/lang/String;

    .line 25
    iput p6, p0, Lcom/poverka/httpFileClient/containers/Apartment;->apartment:I

    .line 26
    iput-object p7, p0, Lcom/poverka/httpFileClient/containers/Apartment;->apartmentB:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "cityId"    # I
    .param p2, "streetId"    # I
    .param p3, "building"    # I
    .param p4, "buildingB"    # Ljava/lang/String;
    .param p5, "buildingK"    # Ljava/lang/String;
    .param p6, "apartment"    # I
    .param p7, "apartmentB"    # Ljava/lang/String;
    .param p8, "address"    # Ljava/lang/String;
    .param p9, "time"    # Ljava/lang/String;
    .param p10, "surname"    # Ljava/lang/String;
    .param p11, "countTotal"    # I
    .param p12, "countClosed"    # I

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/poverka/httpFileClient/containers/Apartment;->cityId:I

    .line 31
    iput p2, p0, Lcom/poverka/httpFileClient/containers/Apartment;->streetId:I

    .line 32
    iput p3, p0, Lcom/poverka/httpFileClient/containers/Apartment;->building:I

    .line 33
    iput-object p4, p0, Lcom/poverka/httpFileClient/containers/Apartment;->buildingB:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/poverka/httpFileClient/containers/Apartment;->buildingK:Ljava/lang/String;

    .line 35
    iput p6, p0, Lcom/poverka/httpFileClient/containers/Apartment;->apartment:I

    .line 36
    iput-object p7, p0, Lcom/poverka/httpFileClient/containers/Apartment;->apartmentB:Ljava/lang/String;

    .line 37
    iput-object p8, p0, Lcom/poverka/httpFileClient/containers/Apartment;->address:Ljava/lang/String;

    .line 38
    iput-object p9, p0, Lcom/poverka/httpFileClient/containers/Apartment;->time:Ljava/lang/String;

    .line 39
    iput-object p10, p0, Lcom/poverka/httpFileClient/containers/Apartment;->surname:Ljava/lang/String;

    .line 40
    iput p11, p0, Lcom/poverka/httpFileClient/containers/Apartment;->countTotal:I

    .line 41
    iput p12, p0, Lcom/poverka/httpFileClient/containers/Apartment;->countClosed:I

    .line 42
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/poverka/httpFileClient/containers/Apartment;)I
    .locals 12
    .param p1, "object"    # Lcom/poverka/httpFileClient/containers/Apartment;

    .line 114
    iget-object v0, p1, Lcom/poverka/httpFileClient/containers/Apartment;->time:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/poverka/httpFileClient/containers/Apartment;->time:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 117
    :cond_1
    const/4 v0, 0x0

    .local v0, "h1":I
    const/4 v3, 0x0

    .local v3, "h2":I
    const/4 v4, 0x0

    .local v4, "m1":I
    const/4 v5, 0x0

    .local v5, "m2":I
    const/4 v6, 0x0

    .local v6, "s1":I
    const/4 v7, 0x0

    .line 118
    .local v7, "s2":I
    iget-object v8, p0, Lcom/poverka/httpFileClient/containers/Apartment;->time:Ljava/lang/String;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-lt v8, v2, :cond_2

    iget-object v8, p0, Lcom/poverka/httpFileClient/containers/Apartment;->time:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 119
    :cond_2
    iget-object v8, p0, Lcom/poverka/httpFileClient/containers/Apartment;->time:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    const/4 v10, 0x2

    if-lt v8, v10, :cond_3

    iget-object v8, p0, Lcom/poverka/httpFileClient/containers/Apartment;->time:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v2

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 120
    :cond_3
    iget-object v8, p0, Lcom/poverka/httpFileClient/containers/Apartment;->time:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    const/4 v11, 0x3

    if-lt v8, v11, :cond_4

    iget-object v8, p0, Lcom/poverka/httpFileClient/containers/Apartment;->time:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v10

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 121
    :cond_4
    iget-object v8, p1, Lcom/poverka/httpFileClient/containers/Apartment;->time:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-lt v8, v2, :cond_5

    iget-object v8, p1, Lcom/poverka/httpFileClient/containers/Apartment;->time:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v1, v8, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 122
    :cond_5
    iget-object v1, p1, Lcom/poverka/httpFileClient/containers/Apartment;->time:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lt v1, v10, :cond_6

    iget-object v1, p1, Lcom/poverka/httpFileClient/containers/Apartment;->time:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 123
    :cond_6
    iget-object v1, p1, Lcom/poverka/httpFileClient/containers/Apartment;->time:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lt v1, v11, :cond_7

    iget-object v1, p1, Lcom/poverka/httpFileClient/containers/Apartment;->time:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v10

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 125
    :cond_7
    if-le v0, v3, :cond_8

    return v2

    .line 126
    :cond_8
    const/4 v1, -0x1

    if-ge v0, v3, :cond_9

    return v1

    .line 127
    :cond_9
    if-le v4, v5, :cond_a

    return v2

    .line 128
    :cond_a
    if-ge v4, v5, :cond_b

    return v1

    .line 129
    :cond_b
    invoke-static {v6, v7}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 5
    check-cast p1, Lcom/poverka/httpFileClient/containers/Apartment;

    invoke-virtual {p0, p1}, Lcom/poverka/httpFileClient/containers/Apartment;->compareTo(Lcom/poverka/httpFileClient/containers/Apartment;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 94
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 95
    return v0

    .line 98
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 99
    return v0

    .line 102
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/poverka/httpFileClient/containers/Apartment;

    .line 103
    .local v1, "other":Lcom/poverka/httpFileClient/containers/Apartment;
    iget v2, p0, Lcom/poverka/httpFileClient/containers/Apartment;->cityId:I

    iget v3, v1, Lcom/poverka/httpFileClient/containers/Apartment;->cityId:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/poverka/httpFileClient/containers/Apartment;->streetId:I

    iget v3, v1, Lcom/poverka/httpFileClient/containers/Apartment;->streetId:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/poverka/httpFileClient/containers/Apartment;->building:I

    iget v3, v1, Lcom/poverka/httpFileClient/containers/Apartment;->building:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/poverka/httpFileClient/containers/Apartment;->buildingB:Ljava/lang/String;

    iget-object v3, v1, Lcom/poverka/httpFileClient/containers/Apartment;->buildingB:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/poverka/httpFileClient/containers/Apartment;->buildingK:Ljava/lang/String;

    iget-object v3, v1, Lcom/poverka/httpFileClient/containers/Apartment;->buildingK:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/poverka/httpFileClient/containers/Apartment;->apartment:I

    iget v3, v1, Lcom/poverka/httpFileClient/containers/Apartment;->apartment:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/poverka/httpFileClient/containers/Apartment;->apartmentB:Ljava/lang/String;

    iget-object v3, v1, Lcom/poverka/httpFileClient/containers/Apartment;->apartmentB:Ljava/lang/String;

    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 103
    :goto_0
    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/poverka/httpFileClient/containers/Apartment;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getApartment()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/poverka/httpFileClient/containers/Apartment;->apartment:I

    return v0
.end method

.method public getApartmentB()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/poverka/httpFileClient/containers/Apartment;->apartmentB:Ljava/lang/String;

    return-object v0
.end method

.method public getBuilding()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/poverka/httpFileClient/containers/Apartment;->building:I

    return v0
.end method

.method public getBuildingB()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/poverka/httpFileClient/containers/Apartment;->buildingB:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildingK()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/poverka/httpFileClient/containers/Apartment;->buildingK:Ljava/lang/String;

    return-object v0
.end method

.method public getCityId()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/poverka/httpFileClient/containers/Apartment;->cityId:I

    return v0
.end method

.method public getCountClosed()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/poverka/httpFileClient/containers/Apartment;->countClosed:I

    return v0
.end method

.method public getCountTotal()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/poverka/httpFileClient/containers/Apartment;->countTotal:I

    return v0
.end method

.method public getStreetId()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/poverka/httpFileClient/containers/Apartment;->streetId:I

    return v0
.end method

.method public getSurname()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/poverka/httpFileClient/containers/Apartment;->surname:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/poverka/httpFileClient/containers/Apartment;->time:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 109
    iget v0, p0, Lcom/poverka/httpFileClient/containers/Apartment;->streetId:I

    mul-int/lit16 v0, v0, 0x3e8

    iget v1, p0, Lcom/poverka/httpFileClient/containers/Apartment;->building:I

    add-int/2addr v0, v1

    return v0
.end method
