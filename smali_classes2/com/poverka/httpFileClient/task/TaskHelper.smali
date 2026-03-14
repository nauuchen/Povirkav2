.class public Lcom/poverka/httpFileClient/task/TaskHelper;
.super Ljava/lang/Object;
.source "TaskHelper.java"


# instance fields
.field private final tasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/poverka/httpFileClient/containers/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/poverka/httpFileClient/containers/Task;",
            ">;)V"
        }
    .end annotation

    .line 18
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/poverka/httpFileClient/containers/Task;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/poverka/httpFileClient/task/TaskHelper;->tasks:Ljava/util/List;

    .line 20
    return-void
.end method


# virtual methods
.method public getTasksByDay()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/poverka/httpFileClient/containers/Day;",
            ">;"
        }
    .end annotation

    .line 23
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 24
    .local v1, "uniqueDates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, v0, Lcom/poverka/httpFileClient/task/TaskHelper;->tasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/poverka/httpFileClient/containers/Task;

    .line 25
    .local v3, "t":Lcom/poverka/httpFileClient/containers/Task;
    invoke-virtual {v3}, Lcom/poverka/httpFileClient/containers/Task;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 26
    .end local v3    # "t":Lcom/poverka/httpFileClient/containers/Task;
    goto :goto_0

    .line 28
    :cond_0
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 29
    .local v3, "dates":[Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lcom/poverka/httpFileClient/containers/Day;>;"
    array-length v5, v3

    :goto_1
    if-ge v2, v5, :cond_7

    aget-object v12, v3, v2

    .line 31
    .local v12, "date":Ljava/lang/String;
    const/4 v6, 0x0

    .line 32
    .local v6, "countNew":I
    const/4 v7, 0x0

    .line 33
    .local v7, "countDismiss":I
    const/4 v8, 0x0

    .line 34
    .local v8, "countDoneDisp":I
    const/4 v9, 0x0

    .line 35
    .local v9, "countDoneSolo":I
    iget-object v10, v0, Lcom/poverka/httpFileClient/task/TaskHelper;->tasks:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v13, v6

    move v14, v7

    move v15, v8

    move/from16 v16, v9

    .end local v6    # "countNew":I
    .end local v7    # "countDismiss":I
    .end local v8    # "countDoneDisp":I
    .end local v9    # "countDoneSolo":I
    .local v13, "countNew":I
    .local v14, "countDismiss":I
    .local v15, "countDoneDisp":I
    .local v16, "countDoneSolo":I
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/poverka/httpFileClient/containers/Task;

    .line 36
    .local v6, "t":Lcom/poverka/httpFileClient/containers/Task;
    invoke-virtual {v6}, Lcom/poverka/httpFileClient/containers/Task;->getDate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 37
    invoke-virtual {v6}, Lcom/poverka/httpFileClient/containers/Task;->getStatus()I

    move-result v7

    if-eqz v7, :cond_4

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    goto :goto_3

    .line 45
    :cond_1
    invoke-virtual {v6}, Lcom/poverka/httpFileClient/containers/Task;->getId()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 46
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 48
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 42
    :cond_3
    add-int/lit8 v14, v14, 0x1

    .line 43
    goto :goto_3

    .line 39
    :cond_4
    add-int/lit8 v13, v13, 0x1

    .line 52
    .end local v6    # "t":Lcom/poverka/httpFileClient/containers/Task;
    :cond_5
    :goto_3
    goto :goto_2

    .line 53
    :cond_6
    new-instance v11, Lcom/poverka/httpFileClient/containers/Day;

    move-object v6, v11

    move-object v7, v12

    move v8, v13

    move v9, v14

    move v10, v15

    move-object v0, v11

    move/from16 v11, v16

    invoke-direct/range {v6 .. v11}, Lcom/poverka/httpFileClient/containers/Day;-><init>(Ljava/lang/String;IIII)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    .end local v12    # "date":Ljava/lang/String;
    .end local v13    # "countNew":I
    .end local v14    # "countDismiss":I
    .end local v15    # "countDoneDisp":I
    .end local v16    # "countDoneSolo":I
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    goto :goto_1

    .line 55
    :cond_7
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 56
    return-object v4
.end method

.method public getTasksOfApartment(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "cityId"    # I
    .param p3, "streetId"    # I
    .param p4, "building"    # I
    .param p5, "buildingB"    # Ljava/lang/String;
    .param p6, "buildingK"    # Ljava/lang/String;
    .param p7, "apartment"    # I
    .param p8, "apartmentB"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/poverka/httpFileClient/containers/Task;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/poverka/httpFileClient/containers/Task;>;"
    iget-object v1, p0, Lcom/poverka/httpFileClient/task/TaskHelper;->tasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/poverka/httpFileClient/containers/Task;

    .line 97
    .local v2, "t":Lcom/poverka/httpFileClient/containers/Task;
    invoke-virtual {v2}, Lcom/poverka/httpFileClient/containers/Task;->getCityId()I

    move-result v3

    if-ne v3, p2, :cond_0

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/containers/Task;->getStreetId()I

    move-result v3

    if-ne v3, p3, :cond_0

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/containers/Task;->getBuilding()I

    move-result v3

    if-ne v3, p4, :cond_0

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/containers/Task;->getBuildingBuk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/containers/Task;->getBuildingCorp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    invoke-virtual {v2}, Lcom/poverka/httpFileClient/containers/Task;->getApartment()I

    move-result v3

    if-ne v3, p7, :cond_0

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/containers/Task;->getApartmentBuk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/containers/Task;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    .end local v2    # "t":Lcom/poverka/httpFileClient/containers/Task;
    :cond_0
    goto :goto_0

    .line 102
    :cond_1
    return-object v0
.end method

.method public getTasksOfDay(Ljava/lang/String;)Ljava/util/List;
    .locals 29
    .param p1, "date"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/poverka/httpFileClient/containers/Apartment;",
            ">;"
        }
    .end annotation

    .line 60
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 61
    .local v2, "uniqueApartments":Ljava/util/Set;, "Ljava/util/Set<Lcom/poverka/httpFileClient/containers/Apartment;>;"
    iget-object v3, v0, Lcom/poverka/httpFileClient/task/TaskHelper;->tasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/poverka/httpFileClient/containers/Task;

    .line 62
    .local v4, "t":Lcom/poverka/httpFileClient/containers/Task;
    invoke-virtual {v4}, Lcom/poverka/httpFileClient/containers/Task;->getDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 63
    new-instance v5, Lcom/poverka/httpFileClient/containers/Apartment;

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/containers/Task;->getCityId()I

    move-result v7

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/containers/Task;->getStreetId()I

    move-result v8

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/containers/Task;->getBuilding()I

    move-result v9

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/containers/Task;->getBuildingBuk()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/containers/Task;->getBuildingCorp()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/containers/Task;->getApartment()I

    move-result v12

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/containers/Task;->getApartmentBuk()Ljava/lang/String;

    move-result-object v13

    move-object v6, v5

    invoke-direct/range {v6 .. v13}, Lcom/poverka/httpFileClient/containers/Apartment;-><init>(IIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    .end local v4    # "t":Lcom/poverka/httpFileClient/containers/Task;
    :cond_0
    goto :goto_0

    .line 67
    :cond_1
    const/4 v3, 0x0

    new-array v4, v3, [Lcom/poverka/httpFileClient/containers/Apartment;

    invoke-interface {v2, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/poverka/httpFileClient/containers/Apartment;

    .line 68
    .local v4, "apartments":[Lcom/poverka/httpFileClient/containers/Apartment;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Lcom/poverka/httpFileClient/containers/Apartment;>;"
    array-length v6, v4

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_7

    aget-object v8, v4, v7

    .line 70
    .local v8, "apartment":Lcom/poverka/httpFileClient/containers/Apartment;
    const-string v9, ""

    .line 71
    .local v9, "address":Ljava/lang/String;
    const-string v10, ""

    .line 72
    .local v10, "time":Ljava/lang/String;
    const-string v11, ""

    .line 73
    .local v11, "surname":Ljava/lang/String;
    const/4 v12, 0x0

    .line 74
    .local v12, "countTotal":I
    const/4 v13, 0x0

    .line 75
    .local v13, "countClosed":I
    iget-object v14, v0, Lcom/poverka/httpFileClient/task/TaskHelper;->tasks:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/poverka/httpFileClient/containers/Task;

    .line 76
    .local v15, "t":Lcom/poverka/httpFileClient/containers/Task;
    invoke-virtual {v15}, Lcom/poverka/httpFileClient/containers/Task;->getCityId()I

    move-result v3

    invoke-virtual {v8}, Lcom/poverka/httpFileClient/containers/Apartment;->getCityId()I

    move-result v0

    if-ne v3, v0, :cond_5

    invoke-virtual {v15}, Lcom/poverka/httpFileClient/containers/Task;->getStreetId()I

    move-result v0

    invoke-virtual {v8}, Lcom/poverka/httpFileClient/containers/Apartment;->getStreetId()I

    move-result v3

    if-ne v0, v3, :cond_5

    invoke-virtual {v15}, Lcom/poverka/httpFileClient/containers/Task;->getBuilding()I

    move-result v0

    invoke-virtual {v8}, Lcom/poverka/httpFileClient/containers/Apartment;->getBuilding()I

    move-result v3

    if-ne v0, v3, :cond_5

    invoke-virtual {v15}, Lcom/poverka/httpFileClient/containers/Task;->getBuildingBuk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Lcom/poverka/httpFileClient/containers/Apartment;->getBuildingB()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 77
    invoke-virtual {v15}, Lcom/poverka/httpFileClient/containers/Task;->getBuildingCorp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Lcom/poverka/httpFileClient/containers/Apartment;->getBuildingK()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v15}, Lcom/poverka/httpFileClient/containers/Task;->getApartment()I

    move-result v0

    invoke-virtual {v8}, Lcom/poverka/httpFileClient/containers/Apartment;->getApartment()I

    move-result v3

    if-ne v0, v3, :cond_4

    invoke-virtual {v15}, Lcom/poverka/httpFileClient/containers/Task;->getApartmentBuk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Lcom/poverka/httpFileClient/containers/Apartment;->getApartmentB()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v15}, Lcom/poverka/httpFileClient/containers/Task;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 78
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v15}, Lcom/poverka/httpFileClient/containers/Task;->getFullAddress()Ljava/lang/String;

    move-result-object v16

    const/16 v28, 0x0

    aput-object v16, v3, v28

    invoke-virtual {v15}, Lcom/poverka/httpFileClient/containers/Task;->getFullApartment()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    aput-object v16, v3, v17

    const-string v1, "%s, \u043a\u0432. %s"

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .end local v9    # "address":Ljava/lang/String;
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {v15}, Lcom/poverka/httpFileClient/containers/Task;->getTime()Ljava/lang/String;

    move-result-object v1

    .line 80
    .end local v10    # "time":Ljava/lang/String;
    .local v1, "time":Ljava/lang/String;
    invoke-virtual {v15}, Lcom/poverka/httpFileClient/containers/Task;->getSurname()Ljava/lang/String;

    move-result-object v3

    .line 81
    .end local v11    # "surname":Ljava/lang/String;
    .local v3, "surname":Ljava/lang/String;
    invoke-virtual {v15}, Lcom/poverka/httpFileClient/containers/Task;->getId()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    .line 82
    add-int/lit8 v12, v12, 0x1

    .line 83
    :cond_2
    invoke-virtual {v15}, Lcom/poverka/httpFileClient/containers/Task;->getStatus()I

    move-result v9

    if-eqz v9, :cond_3

    .line 84
    add-int/lit8 v13, v13, 0x1

    move-object v9, v0

    move-object v10, v1

    move-object v11, v3

    goto :goto_3

    .line 83
    :cond_3
    move-object v9, v0

    move-object v10, v1

    move-object v11, v3

    goto :goto_3

    .line 77
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "time":Ljava/lang/String;
    .end local v3    # "surname":Ljava/lang/String;
    .restart local v9    # "address":Ljava/lang/String;
    .restart local v10    # "time":Ljava/lang/String;
    .restart local v11    # "surname":Ljava/lang/String;
    :cond_4
    const/16 v28, 0x0

    goto :goto_3

    .line 76
    :cond_5
    const/16 v28, 0x0

    .line 86
    .end local v15    # "t":Lcom/poverka/httpFileClient/containers/Task;
    :goto_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_2

    .line 87
    :cond_6
    const/16 v28, 0x0

    new-instance v0, Lcom/poverka/httpFileClient/containers/Apartment;

    invoke-virtual {v8}, Lcom/poverka/httpFileClient/containers/Apartment;->getCityId()I

    move-result v16

    invoke-virtual {v8}, Lcom/poverka/httpFileClient/containers/Apartment;->getStreetId()I

    move-result v17

    invoke-virtual {v8}, Lcom/poverka/httpFileClient/containers/Apartment;->getBuilding()I

    move-result v18

    invoke-virtual {v8}, Lcom/poverka/httpFileClient/containers/Apartment;->getBuildingB()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v8}, Lcom/poverka/httpFileClient/containers/Apartment;->getBuildingK()Ljava/lang/String;

    move-result-object v20

    .line 88
    invoke-virtual {v8}, Lcom/poverka/httpFileClient/containers/Apartment;->getApartment()I

    move-result v21

    invoke-virtual {v8}, Lcom/poverka/httpFileClient/containers/Apartment;->getApartmentB()Ljava/lang/String;

    move-result-object v22

    move-object v15, v0

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move/from16 v26, v12

    move/from16 v27, v13

    invoke-direct/range {v15 .. v27}, Lcom/poverka/httpFileClient/containers/Apartment;-><init>(IIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 87
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    .end local v8    # "apartment":Lcom/poverka/httpFileClient/containers/Apartment;
    .end local v9    # "address":Ljava/lang/String;
    .end local v10    # "time":Ljava/lang/String;
    .end local v11    # "surname":Ljava/lang/String;
    .end local v12    # "countTotal":I
    .end local v13    # "countClosed":I
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_1

    .line 90
    :cond_7
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 91
    return-object v5
.end method
