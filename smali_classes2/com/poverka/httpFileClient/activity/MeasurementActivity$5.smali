.class Lcom/poverka/httpFileClient/activity/MeasurementActivity$5;
.super Ljava/lang/Object;
.source "MeasurementActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/MeasurementActivity;->initRequestObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    .line 433
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;)V
    .locals 3
    .param p1, "rMode"    # Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    .line 436
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "RequestMode changed to %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$300(Ljava/lang/String;)V

    .line 437
    sget-object v0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$16;->$SwitchMap$com$poverka$httpFileClient$util$MyModeQueue$RequestMode:[I

    invoke-virtual {p1}, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 456
    :pswitch_0
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v0, v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1400(Lcom/poverka/httpFileClient/activity/MeasurementActivity;I)V

    goto :goto_0

    .line 453
    :pswitch_1
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/MySender;

    move-result-object v0

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/util/MySender;->setSleepTimer(I)V

    .line 454
    goto :goto_0

    .line 450
    :pswitch_2
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/MySender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MySender;->sendFinish()V

    .line 451
    goto :goto_0

    .line 446
    :pswitch_3
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1902(Lcom/poverka/httpFileClient/activity/MeasurementActivity;I)I

    .line 447
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/MySender;

    move-result-object v0

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1800(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v1

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getMeasurementNumber()I

    move-result v1

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1800(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v2

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getReiterationNumber()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/poverka/httpFileClient/util/MySender;->prepareMeasurement(II)V

    .line 448
    goto :goto_0

    .line 442
    :pswitch_4
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1902(Lcom/poverka/httpFileClient/activity/MeasurementActivity;I)I

    .line 443
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/MySender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/util/MySender;->readMeasuringData()V

    .line 444
    goto :goto_0

    .line 439
    :pswitch_5
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/MySender;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/util/MySender;->changeAction(I)V

    .line 440
    nop

    .line 459
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 433
    check-cast p1, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    invoke-virtual {p0, p1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$5;->onChanged(Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;)V

    return-void
.end method
