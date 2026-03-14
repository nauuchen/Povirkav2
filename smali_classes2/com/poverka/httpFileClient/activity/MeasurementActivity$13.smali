.class Lcom/poverka/httpFileClient/activity/MeasurementActivity$13;
.super Ljava/lang/Object;
.source "MeasurementActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/MeasurementActivity;->initPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

.field final synthetic val$tapGestureDetector:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Landroid/view/GestureDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    .line 1048
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$13;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    iput-object p2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$13;->val$tapGestureDetector:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 1050
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$13;->val$tapGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1051
    const/4 v0, 0x0

    return v0
.end method
