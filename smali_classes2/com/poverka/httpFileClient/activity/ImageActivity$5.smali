.class Lcom/poverka/httpFileClient/activity/ImageActivity$5;
.super Ljava/lang/Object;
.source "ImageActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/poverka/httpFileClient/activity/ImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/ImageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/ImageActivity;

    .line 629
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 633
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$1300(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/view/ScaleGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 634
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$1400(Lcom/poverka/httpFileClient/activity/ImageActivity;)Lcom/almeros/android/multitouch/RotateGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/almeros/android/multitouch/RotateGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 635
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$1500(Lcom/poverka/httpFileClient/activity/ImageActivity;)Lcom/almeros/android/multitouch/MoveGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/almeros/android/multitouch/MoveGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 637
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$1600(Lcom/poverka/httpFileClient/activity/ImageActivity;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$900(Lcom/poverka/httpFileClient/activity/ImageActivity;)F

    move-result v1

    mul-float v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 638
    .local v0, "scaledImageCenterX":F
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v2}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$1700(Lcom/poverka/httpFileClient/activity/ImageActivity;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v3}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$900(Lcom/poverka/httpFileClient/activity/ImageActivity;)F

    move-result v3

    mul-float v2, v2, v3

    div-float/2addr v2, v1

    .line 640
    .local v2, "scaledImageCenterY":F
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$1800(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 641
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$1800(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v3}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$900(Lcom/poverka/httpFileClient/activity/ImageActivity;)F

    move-result v3

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$900(Lcom/poverka/httpFileClient/activity/ImageActivity;)F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 642
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$1800(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v3}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$1000(Lcom/poverka/httpFileClient/activity/ImageActivity;)F

    move-result v3

    invoke-virtual {v1, v3, v0, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 643
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$1800(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v3}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$1100(Lcom/poverka/httpFileClient/activity/ImageActivity;)F

    move-result v3

    sub-float/2addr v3, v0

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$1200(Lcom/poverka/httpFileClient/activity/ImageActivity;)F

    move-result v4

    sub-float/2addr v4, v2

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 645
    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    .line 646
    .local v1, "view":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v3}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$1800(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 648
    const/4 v3, 0x1

    return v3
.end method
