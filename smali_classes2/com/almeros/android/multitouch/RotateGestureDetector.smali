.class public Lcom/almeros/android/multitouch/RotateGestureDetector;
.super Lcom/almeros/android/multitouch/TwoFingerGestureDetector;
.source "RotateGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/almeros/android/multitouch/RotateGestureDetector$SimpleOnRotateGestureListener;,
        Lcom/almeros/android/multitouch/RotateGestureDetector$OnRotateGestureListener;
    }
.end annotation


# instance fields
.field private final mListener:Lcom/almeros/android/multitouch/RotateGestureDetector$OnRotateGestureListener;

.field private mSloppyGesture:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/almeros/android/multitouch/RotateGestureDetector$OnRotateGestureListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/almeros/android/multitouch/RotateGestureDetector$OnRotateGestureListener;

    .line 65
    invoke-direct {p0, p1}, Lcom/almeros/android/multitouch/TwoFingerGestureDetector;-><init>(Landroid/content/Context;)V

    .line 66
    iput-object p2, p0, Lcom/almeros/android/multitouch/RotateGestureDetector;->mListener:Lcom/almeros/android/multitouch/RotateGestureDetector$OnRotateGestureListener;

    .line 67
    return-void
.end method


# virtual methods
.method public getRotationDegreesDelta()F
    .locals 6

    .line 166
    iget v0, p0, Lcom/almeros/android/multitouch/RotateGestureDetector;->mPrevFingerDiffY:F

    float-to-double v0, v0

    iget v2, p0, Lcom/almeros/android/multitouch/RotateGestureDetector;->mPrevFingerDiffX:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    iget v2, p0, Lcom/almeros/android/multitouch/RotateGestureDetector;->mCurrFingerDiffY:F

    float-to-double v2, v2

    iget v4, p0, Lcom/almeros/android/multitouch/RotateGestureDetector;->mCurrFingerDiffX:F

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 167
    .local v0, "diffRadians":D
    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double v2, v2, v0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    double-to-float v2, v2

    return v2
.end method

.method protected handleInProgressEvent(ILandroid/view/MotionEvent;)V
    .locals 2
    .param p1, "actionCode"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 115
    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {p0, p2}, Lcom/almeros/android/multitouch/RotateGestureDetector;->updateStateByEvent(Landroid/view/MotionEvent;)V

    .line 120
    iget-boolean v0, p0, Lcom/almeros/android/multitouch/RotateGestureDetector;->mSloppyGesture:Z

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/almeros/android/multitouch/RotateGestureDetector;->mListener:Lcom/almeros/android/multitouch/RotateGestureDetector$OnRotateGestureListener;

    invoke-interface {v0, p0}, Lcom/almeros/android/multitouch/RotateGestureDetector$OnRotateGestureListener;->onRotateEnd(Lcom/almeros/android/multitouch/RotateGestureDetector;)V

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/almeros/android/multitouch/RotateGestureDetector;->resetState()V

    .line 125
    goto :goto_0

    .line 128
    :cond_2
    iget-boolean v0, p0, Lcom/almeros/android/multitouch/RotateGestureDetector;->mSloppyGesture:Z

    if-nez v0, :cond_3

    .line 129
    iget-object v0, p0, Lcom/almeros/android/multitouch/RotateGestureDetector;->mListener:Lcom/almeros/android/multitouch/RotateGestureDetector$OnRotateGestureListener;

    invoke-interface {v0, p0}, Lcom/almeros/android/multitouch/RotateGestureDetector$OnRotateGestureListener;->onRotateEnd(Lcom/almeros/android/multitouch/RotateGestureDetector;)V

    .line 132
    :cond_3
    invoke-virtual {p0}, Lcom/almeros/android/multitouch/RotateGestureDetector;->resetState()V

    .line 133
    goto :goto_0

    .line 136
    :cond_4
    invoke-virtual {p0, p2}, Lcom/almeros/android/multitouch/RotateGestureDetector;->updateStateByEvent(Landroid/view/MotionEvent;)V

    .line 141
    iget v0, p0, Lcom/almeros/android/multitouch/RotateGestureDetector;->mCurrPressure:F

    iget v1, p0, Lcom/almeros/android/multitouch/RotateGestureDetector;->mPrevPressure:F

    div-float/2addr v0, v1

    const v1, 0x3f2b851f    # 0.67f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 142
    iget-object v0, p0, Lcom/almeros/android/multitouch/RotateGestureDetector;->mListener:Lcom/almeros/android/multitouch/RotateGestureDetector$OnRotateGestureListener;

    invoke-interface {v0, p0}, Lcom/almeros/android/multitouch/RotateGestureDetector$OnRotateGestureListener;->onRotate(Lcom/almeros/android/multitouch/RotateGestureDetector;)Z

    move-result v0

    .line 143
    .local v0, "updatePrevious":Z
    if-eqz v0, :cond_5

    .line 144
    iget-object v1, p0, Lcom/almeros/android/multitouch/RotateGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 145
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/almeros/android/multitouch/RotateGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 150
    .end local v0    # "updatePrevious":Z
    :cond_5
    :goto_0
    return-void
.end method

.method protected handleStartProgressEvent(ILandroid/view/MotionEvent;)V
    .locals 2
    .param p1, "actionCode"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 71
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/almeros/android/multitouch/RotateGestureDetector;->resetState()V

    .line 76
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/almeros/android/multitouch/RotateGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 77
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/almeros/android/multitouch/RotateGestureDetector;->mTimeDelta:J

    .line 79
    invoke-virtual {p0, p2}, Lcom/almeros/android/multitouch/RotateGestureDetector;->updateStateByEvent(Landroid/view/MotionEvent;)V

    .line 82
    invoke-virtual {p0, p2}, Lcom/almeros/android/multitouch/RotateGestureDetector;->isSloppyGesture(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/almeros/android/multitouch/RotateGestureDetector;->mSloppyGesture:Z

    .line 83
    if-nez v0, :cond_3

    .line 85
    iget-object v0, p0, Lcom/almeros/android/multitouch/RotateGestureDetector;->mListener:Lcom/almeros/android/multitouch/RotateGestureDetector$OnRotateGestureListener;

    invoke-interface {v0, p0}, Lcom/almeros/android/multitouch/RotateGestureDetector$OnRotateGestureListener;->onRotateBegin(Lcom/almeros/android/multitouch/RotateGestureDetector;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/almeros/android/multitouch/RotateGestureDetector;->mGestureInProgress:Z

    goto :goto_0

    .line 90
    :cond_1
    iget-boolean v0, p0, Lcom/almeros/android/multitouch/RotateGestureDetector;->mSloppyGesture:Z

    if-nez v0, :cond_2

    .line 91
    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p0, p2}, Lcom/almeros/android/multitouch/RotateGestureDetector;->isSloppyGesture(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/almeros/android/multitouch/RotateGestureDetector;->mSloppyGesture:Z

    .line 96
    if-nez v0, :cond_3

    .line 98
    iget-object v0, p0, Lcom/almeros/android/multitouch/RotateGestureDetector;->mListener:Lcom/almeros/android/multitouch/RotateGestureDetector$OnRotateGestureListener;

    invoke-interface {v0, p0}, Lcom/almeros/android/multitouch/RotateGestureDetector$OnRotateGestureListener;->onRotateBegin(Lcom/almeros/android/multitouch/RotateGestureDetector;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/almeros/android/multitouch/RotateGestureDetector;->mGestureInProgress:Z

    .line 110
    :cond_3
    :goto_0
    return-void
.end method

.method protected resetState()V
    .locals 1

    .line 154
    invoke-super {p0}, Lcom/almeros/android/multitouch/TwoFingerGestureDetector;->resetState()V

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/almeros/android/multitouch/RotateGestureDetector;->mSloppyGesture:Z

    .line 156
    return-void
.end method
