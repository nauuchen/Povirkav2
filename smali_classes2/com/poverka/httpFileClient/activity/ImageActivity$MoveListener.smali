.class Lcom/poverka/httpFileClient/activity/ImageActivity$MoveListener;
.super Lcom/almeros/android/multitouch/MoveGestureDetector$SimpleOnMoveGestureListener;
.source "ImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/poverka/httpFileClient/activity/ImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoveListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;


# direct methods
.method private constructor <init>(Lcom/poverka/httpFileClient/activity/ImageActivity;)V
    .locals 0

    .line 619
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$MoveListener;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-direct {p0}, Lcom/almeros/android/multitouch/MoveGestureDetector$SimpleOnMoveGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/poverka/httpFileClient/activity/ImageActivity;Lcom/poverka/httpFileClient/activity/ImageActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/poverka/httpFileClient/activity/ImageActivity;
    .param p2, "x1"    # Lcom/poverka/httpFileClient/activity/ImageActivity$1;

    .line 619
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/activity/ImageActivity$MoveListener;-><init>(Lcom/poverka/httpFileClient/activity/ImageActivity;)V

    return-void
.end method


# virtual methods
.method public onMove(Lcom/almeros/android/multitouch/MoveGestureDetector;)Z
    .locals 3
    .param p1, "detector"    # Lcom/almeros/android/multitouch/MoveGestureDetector;

    .line 622
    invoke-virtual {p1}, Lcom/almeros/android/multitouch/MoveGestureDetector;->getFocusDelta()Landroid/graphics/PointF;

    move-result-object v0

    .line 623
    .local v0, "d":Landroid/graphics/PointF;
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$MoveListener;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v1, v2}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$1116(Lcom/poverka/httpFileClient/activity/ImageActivity;F)F

    .line 624
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$MoveListener;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    iget v2, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v2}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$1216(Lcom/poverka/httpFileClient/activity/ImageActivity;F)F

    .line 625
    const/4 v1, 0x1

    return v1
.end method
