.class Lcom/poverka/httpFileClient/activity/MeasurementActivity$9;
.super Ljava/lang/Object;
.source "MeasurementActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/MeasurementActivity;->RepeatAfterMeasurements(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    .line 781
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$9;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 784
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$9;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const v1, 0x7f09006a

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 785
    .local v0, "buttonStart":Landroid/widget/Button;
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$9;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$700(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->NONE:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$9;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const v3, 0x7f0f011e

    invoke-virtual {v2, v3}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 786
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$9;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getTotalReitNumber()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 787
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 788
    .local v1, "id":I
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$9;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v3

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$9;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getLastReitNumber(I)I

    move-result v4

    invoke-virtual {v3, v1, v4}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getMeasurement(II)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1802(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Lcom/poverka/httpFileClient/measurement/MeasurementResults;)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    .line 789
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$9;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->RepeatClicked(Landroid/view/View;)V

    .line 790
    .end local v1    # "id":I
    goto :goto_0

    .line 791
    :cond_0
    const-string v1, "MeasurementActivity"

    const-string v2, "can not repeat measurements more than 3 times"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$9;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1600(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 793
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 794
    .local v2, "bundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$9;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const v4, 0x7f0f011f

    invoke-virtual {v3, v4}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "alert"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 796
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$9;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v3}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1600(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->sendMessage(Landroid/os/Message;)Z

    .line 799
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void
.end method
