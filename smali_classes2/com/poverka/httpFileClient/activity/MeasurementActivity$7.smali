.class Lcom/poverka/httpFileClient/activity/MeasurementActivity$7;
.super Ljava/lang/Object;
.source "MeasurementActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/MeasurementActivity;->RepeatClicked(Landroid/view/View;)V
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

    .line 732
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$7;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 735
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$7;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$2200(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Z)V

    .line 736
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$7;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1800(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v1

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getMeasurementNumber()I

    move-result v1

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$2300(Lcom/poverka/httpFileClient/activity/MeasurementActivity;I)V

    .line 737
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$7;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v1

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$7;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1800(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v2

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/measurement/MeasurementResults;->getMeasurementNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->repeatMeasurement(I)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1802(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Lcom/poverka/httpFileClient/measurement/MeasurementResults;)Lcom/poverka/httpFileClient/measurement/MeasurementResults;

    .line 738
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$7;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$2400(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)V

    .line 739
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$7;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$2000(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/MyModeQueue;

    move-result-object v0

    sget-object v1, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->PREPARE_MEASUREMENT:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/util/MyModeQueue;->add(Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;)V

    .line 740
    return-void
.end method
