.class Lcom/poverka/httpFileClient/activity/ImageActivity$RotateListener;
.super Lcom/almeros/android/multitouch/RotateGestureDetector$SimpleOnRotateGestureListener;
.source "ImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/poverka/httpFileClient/activity/ImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RotateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;


# direct methods
.method private constructor <init>(Lcom/poverka/httpFileClient/activity/ImageActivity;)V
    .locals 0

    .line 611
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$RotateListener;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-direct {p0}, Lcom/almeros/android/multitouch/RotateGestureDetector$SimpleOnRotateGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/poverka/httpFileClient/activity/ImageActivity;Lcom/poverka/httpFileClient/activity/ImageActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/poverka/httpFileClient/activity/ImageActivity;
    .param p2, "x1"    # Lcom/poverka/httpFileClient/activity/ImageActivity$1;

    .line 611
    invoke-direct {p0, p1}, Lcom/poverka/httpFileClient/activity/ImageActivity$RotateListener;-><init>(Lcom/poverka/httpFileClient/activity/ImageActivity;)V

    return-void
.end method


# virtual methods
.method public onRotate(Lcom/almeros/android/multitouch/RotateGestureDetector;)Z
    .locals 2
    .param p1, "detector"    # Lcom/almeros/android/multitouch/RotateGestureDetector;

    .line 614
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$RotateListener;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-virtual {p1}, Lcom/almeros/android/multitouch/RotateGestureDetector;->getRotationDegreesDelta()F

    move-result v1

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$1024(Lcom/poverka/httpFileClient/activity/ImageActivity;F)F

    .line 615
    const/4 v0, 0x1

    return v0
.end method
