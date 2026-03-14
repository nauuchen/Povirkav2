.class Lcom/poverka/httpFileClient/activity/MeasurementActivity$10$1;
.super Ljava/lang/Object;
.source "MeasurementActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;

    .line 824
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$10$1;->this$1:Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 827
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 832
    :cond_0
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$10$1;->this$1:Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;

    iget-object v1, v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$2102(Lcom/poverka/httpFileClient/activity/MeasurementActivity;I)I

    .line 833
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$10$1;->this$1:Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;

    iget-object v1, v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v1

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setId(Ljava/lang/String;)V

    .line 834
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$10$1;->this$1:Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;

    iget-object v1, v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setLocal(I)V

    .line 835
    sput v0, Lcom/poverka/httpFileClient/activity/MainActivity;->MARKER:I

    goto :goto_0

    .line 829
    :cond_1
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$10$1;->this$1:Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;

    iget-object v1, v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$2102(Lcom/poverka/httpFileClient/activity/MeasurementActivity;I)I

    .line 830
    nop

    .line 839
    :goto_0
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$10$1;->this$1:Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;

    iget-object v1, v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$2000(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/MyModeQueue;

    move-result-object v1

    sget-object v2, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->SLEEP_TIMER:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    invoke-virtual {v1, v2}, Lcom/poverka/httpFileClient/util/MyModeQueue;->add(Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;)V

    .line 841
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$10$1;->this$1:Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;

    iget-object v1, v1, Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const v2, 0x7f09006a

    invoke-virtual {v1, v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 842
    .local v1, "buttonStart":Landroid/widget/Button;
    const v2, 0x7f0f011e

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 843
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 844
    .local v2, "bundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$10$1;->this$1:Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;

    iget-object v3, v3, Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v3}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$10$1;->this$1:Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;

    iget-object v3, v3, Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v3}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getProtocolNumber()Ljava/lang/String;

    move-result-object v3

    const-string v4, "protocolNumber"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$10$1;->this$1:Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;

    iget-object v3, v3, Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v3}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getVerificationNumberToday()I

    move-result v3

    add-int/2addr v3, v0

    const-string v0, "todayVerificationNumber"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 847
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$10$1;->this$1:Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;

    iget-object v0, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getCounterNumber()Ljava/lang/String;

    move-result-object v0

    const-string v3, "counterNumber"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$10$1;->this$1:Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;

    iget-object v0, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getCurrentStationTimeString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "dateTime"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$10$1;->this$1:Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;

    iget-object v0, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getWaterTemperature()F

    move-result v0

    const-string v3, "waterTemperature"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 850
    new-instance v0, Lcom/poverka/httpFileClient/activity/ClientActivity;

    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$10$1;->this$1:Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;

    iget-object v3, v3, Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;->val$activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$10$1;->this$1:Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;

    iget-object v4, v4, Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$2500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/activity/ClientActivity$OnClientResult;

    move-result-object v4

    invoke-direct {v0, v3, v4, v2}, Lcom/poverka/httpFileClient/activity/ClientActivity;-><init>(Landroid/app/Activity;Lcom/poverka/httpFileClient/activity/ClientActivity$OnClientResult;Landroid/os/Bundle;)V

    .line 851
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$10$1;->this$1:Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;

    iget-object v0, v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$2200(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Z)V

    .line 852
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 853
    return-void
.end method
