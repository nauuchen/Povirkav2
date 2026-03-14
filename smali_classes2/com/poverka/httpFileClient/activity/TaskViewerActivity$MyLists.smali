.class Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;
.super Ljava/util/Observable;
.source "TaskViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/poverka/httpFileClient/activity/TaskViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyLists"
.end annotation


# instance fields
.field private apartment:I

.field private apartmentB:Ljava/lang/String;

.field private building:I

.field private buildingB:Ljava/lang/String;

.field private buildingK:Ljava/lang/String;

.field private cityId:I

.field private currentList:I

.field private date:Ljava/lang/String;

.field private streetId:I

.field private final taskList:Ljava/util/List;
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

    .line 664
    .local p1, "taskList":Ljava/util/List;, "Ljava/util/List<Lcom/poverka/httpFileClient/containers/Task;>;"
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 665
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->taskList:Ljava/util/List;

    .line 666
    return-void
.end method


# virtual methods
.method public getApartment()I
    .locals 1

    .line 697
    iget v0, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->apartment:I

    return v0
.end method

.method public getApartmentB()Ljava/lang/String;
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->apartmentB:Ljava/lang/String;

    return-object v0
.end method

.method public getBuilding()I
    .locals 1

    .line 685
    iget v0, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->building:I

    return v0
.end method

.method public getBuildingB()Ljava/lang/String;
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->buildingB:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildingK()Ljava/lang/String;
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->buildingK:Ljava/lang/String;

    return-object v0
.end method

.method public getCityId()I
    .locals 1

    .line 677
    iget v0, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->cityId:I

    return v0
.end method

.method public getCurrentList()I
    .locals 1

    .line 669
    iget v0, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->currentList:I

    return v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getStreetId()I
    .locals 1

    .line 681
    iget v0, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->streetId:I

    return v0
.end method

.method public getTasksByDay()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/poverka/httpFileClient/containers/Day;",
            ">;"
        }
    .end annotation

    .line 747
    new-instance v0, Lcom/poverka/httpFileClient/task/TaskHelper;

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->taskList:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/poverka/httpFileClient/task/TaskHelper;-><init>(Ljava/util/List;)V

    .line 748
    .local v0, "taskHelper":Lcom/poverka/httpFileClient/task/TaskHelper;
    invoke-virtual {v0}, Lcom/poverka/httpFileClient/task/TaskHelper;->getTasksByDay()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getTasksOfApartment()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/poverka/httpFileClient/containers/Task;",
            ">;"
        }
    .end annotation

    .line 757
    new-instance v0, Lcom/poverka/httpFileClient/task/TaskHelper;

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->taskList:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/poverka/httpFileClient/task/TaskHelper;-><init>(Ljava/util/List;)V

    .line 758
    .local v0, "taskHelper":Lcom/poverka/httpFileClient/task/TaskHelper;
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->date:Ljava/lang/String;

    iget v2, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->cityId:I

    iget v3, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->streetId:I

    iget v4, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->building:I

    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->buildingB:Ljava/lang/String;

    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->buildingK:Ljava/lang/String;

    iget v7, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->apartment:I

    iget-object v8, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->apartmentB:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/poverka/httpFileClient/task/TaskHelper;->getTasksOfApartment(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getTasksOfDay()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/poverka/httpFileClient/containers/Apartment;",
            ">;"
        }
    .end annotation

    .line 752
    new-instance v0, Lcom/poverka/httpFileClient/task/TaskHelper;

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->taskList:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/poverka/httpFileClient/task/TaskHelper;-><init>(Ljava/util/List;)V

    .line 753
    .local v0, "taskHelper":Lcom/poverka/httpFileClient/task/TaskHelper;
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/task/TaskHelper;->getTasksOfDay(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public setCurrentList(I)V
    .locals 0
    .param p1, "currentList"    # I

    .line 715
    iput p1, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->currentList:I

    .line 716
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->setChanged()V

    .line 717
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->notifyObservers()V

    .line 718
    return-void
.end method

.method public setData(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "cityId"    # I
    .param p3, "streetId"    # I
    .param p4, "building"    # I
    .param p5, "buildingB"    # Ljava/lang/String;
    .param p6, "buildingK"    # Ljava/lang/String;
    .param p7, "apartment"    # I
    .param p8, "apartmentB"    # Ljava/lang/String;

    .line 705
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->date:Ljava/lang/String;

    .line 706
    iput p2, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->cityId:I

    .line 707
    iput p3, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->streetId:I

    .line 708
    iput p4, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->building:I

    iput-object p5, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->buildingB:Ljava/lang/String;

    .line 709
    iput-object p6, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->buildingK:Ljava/lang/String;

    .line 710
    iput p7, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->apartment:I

    .line 711
    iput-object p8, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->apartmentB:Ljava/lang/String;

    .line 712
    return-void
.end method

.method public toApartments(Ljava/lang/String;)V
    .locals 1
    .param p1, "date"    # Ljava/lang/String;

    .line 727
    const/4 v0, 0x2

    iput v0, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->currentList:I

    .line 728
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->date:Ljava/lang/String;

    .line 729
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->setChanged()V

    .line 730
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->notifyObservers()V

    .line 731
    return-void
.end method

.method public toCounters(IIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "cityId"    # I
    .param p2, "streetId"    # I
    .param p3, "building"    # I
    .param p4, "buildingB"    # Ljava/lang/String;
    .param p5, "buildingK"    # Ljava/lang/String;
    .param p6, "apartment"    # I
    .param p7, "apartmentB"    # Ljava/lang/String;

    .line 734
    const/4 v0, 0x3

    iput v0, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->currentList:I

    .line 735
    iput p1, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->cityId:I

    .line 736
    iput p2, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->streetId:I

    .line 737
    iput p3, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->building:I

    .line 738
    iput-object p4, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->buildingB:Ljava/lang/String;

    .line 739
    iput-object p5, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->buildingK:Ljava/lang/String;

    .line 740
    iput p6, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->apartment:I

    .line 741
    iput-object p7, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->apartmentB:Ljava/lang/String;

    .line 742
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->setChanged()V

    .line 743
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->notifyObservers()V

    .line 744
    return-void
.end method

.method public toPreviousList()V
    .locals 1

    .line 721
    iget v0, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->currentList:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->currentList:I

    .line 722
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->setChanged()V

    .line 723
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->notifyObservers()V

    .line 724
    return-void
.end method
