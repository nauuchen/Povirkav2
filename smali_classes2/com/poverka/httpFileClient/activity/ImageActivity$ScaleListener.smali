.class Lcom/poverka/httpFileClient/activity/ImageActivity$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "ImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/poverka/httpFileClient/activity/ImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;


# direct methods
.method private constructor <init>(Lcom/poverka/httpFileClient/activity/ImageActivity;)V
    .locals 0

    .line 600
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$ScaleListener;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/poverka/httpFileClient/activity/ImageActivity;Lcom/poverka/httpFileClient/activity/ImageActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/poverka/httpFileClient/activity/ImageActivity;
    .param p2, "x1"    # Lcom/poverka/httpFileClient/activity/ImageActivity$1;

    .line 600
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/activity/ImageActivity$ScaleListener;-><init>(Lcom/poverka/httpFileClient/activity/ImageActivity;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .line 603
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$ScaleListener;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$932(Lcom/poverka/httpFileClient/activity/ImageActivity;F)F

    .line 606
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$ScaleListener;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$900(Lcom/poverka/httpFileClient/activity/ImageActivity;)F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$902(Lcom/poverka/httpFileClient/activity/ImageActivity;F)F

    .line 607
    const/4 v0, 0x1

    return v0
.end method
