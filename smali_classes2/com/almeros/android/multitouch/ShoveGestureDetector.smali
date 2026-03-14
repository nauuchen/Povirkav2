.class public Lcom/almeros/android/multitouch/ShoveGestureDetector;
.super Lcom/almeros/android/multitouch/TwoFingerGestureDetector;
.source "ShoveGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/almeros/android/multitouch/ShoveGestureDetector$SimpleOnShoveGestureListener;,
        Lcom/almeros/android/multitouch/ShoveGestureDetector$OnShoveGestureListener;
    }
.end annotation


# instance fields
.field private mCurrAverageY:F

.field private final mListener:Lcom/almeros/android/multitouch/ShoveGestureDetector$OnShoveGestureListener;

.field private mPrevAverageY:F

.field private mSloppyGesture:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/almeros/android/multitouch/ShoveGestureDetector$OnShoveGestureListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/almeros/android/multitouch/ShoveGestureDetector$OnShoveGestureListener;

    .line 68
    invoke-direct {p0, p1}, Lcom/almeros/android/multitouch/TwoFingerGestureDetector;-><init>(Landroid/content/Context;)V

    .line 69
    iput-object p2, p0, Lcom/almeros/android/multitouch/ShoveGestureDetector;->mListener:Lcom/almeros/android/multitouch/ShoveGestureDetector$OnShoveGestureListener;

    .line 70
    return-void
.end method


# virtual methods
.method public getShovePixelsDelta()F
    .locals 2

    .line 200
    iget v0, p0, Lcom/almeros/android/multitouch/ShoveGestureDetector;->mCurrAverageY:F

    iget v1, p0, Lcom/almeros/android/multitouch/ShoveGestureDetector;->mPrevAverageY:F

    sub-float/2addr v0, v1

    return v0
.end method

.method protected handleInProgressEvent(ILandroid/view/MotionEvent;)V
    .locals 2
    .param p1, "actionCode"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 118
    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0, p2}, Lcom/almeros/android/multitouch/ShoveGestureDetector;->updateStateByEvent(Landroid/view/MotionEvent;)V

    .line 123
    iget-boolean v0, p0, Lcom/almeros/android/multitouch/ShoveGestureDetector;->mSloppyGesture:Z

    if-nez v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/almeros/android/multitouch/ShoveGestureDetector;->mListener:Lcom/almeros/android/multitouch/ShoveGestureDetector$OnShoveGestureListener;

    invoke-interface {v0, p0}, Lcom/almeros/android/multitouch/ShoveGestureDetector$OnShoveGestureListener;->onShoveEnd(Lcom/almeros/android/multitouch/ShoveGestureDetector;)V

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/almeros/android/multitouch/ShoveGestureDetector;->resetState()V

    .line 128
    goto :goto_0

    .line 131
    :cond_2
    iget-boolean v0, p0, Lcom/almeros/android/multitouch/ShoveGestureDetector;->mSloppyGesture:Z

    if-nez v0, :cond_3

    .line 132
    iget-object v0, p0, Lcom/almeros/android/multitouch/ShoveGestureDetector;->mListener:Lcom/almeros/android/multitouch/ShoveGestureDetector$OnShoveGestureListener;

    invoke-interface {v0, p0}, Lcom/almeros/android/multitouch/ShoveGestureDetector$OnShoveGestureListener;->onShoveEnd(Lcom/almeros/android/multitouch/ShoveGestureDetector;)V

    .line 135
    :cond_3
    invoke-virtual {p0}, Lcom/almeros/android/multitouch/ShoveGestureDetector;->resetState()V

    .line 136
    goto :goto_0

    .line 139
    :cond_4
    invoke-virtual {p0, p2}, Lcom/almeros/android/multitouch/ShoveGestureDetector;->updateStateByEvent(Landroid/view/MotionEvent;)V

    .line 144
    iget v0, p0, Lcom/almeros/android/multitouch/ShoveGestureDetector;->mCurrPressure:F

    iget v1, p0, Lcom/almeros/android/multitouch/ShoveGestureDetector;->mPrevPressure:F

    div-float/2addr v0, v1

    const v1, 0x3f2b851f    # 0.67f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 145
    invoke-virtual {p0}, Lcom/almeros/android/multitouch/ShoveGestureDetector;->getShovePixelsDelta()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 146
    iget-object v0, p0, Lcom/almeros/android/multitouch/ShoveGestureDetector;->mListener:Lcom/almeros/android/multitouch/ShoveGestureDetector$OnShoveGestureListener;

    invoke-interface {v0, p0}, Lcom/almeros/android/multitouch/ShoveGestureDetector$OnShoveGestureListener;->onShove(Lcom/almeros/android/multitouch/ShoveGestureDetector;)Z

    move-result v0

    .line 147
    .local v0, "updatePrevious":Z
    if-eqz v0, :cond_5

    .line 148
    iget-object v1, p0, Lcom/almeros/android/multitouch/ShoveGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 149
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/almeros/android/multitouch/ShoveGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 154
    .end local v0    # "updatePrevious":Z
    :cond_5
    :goto_0
    return-void
.end method

.method protected handleStartProgressEvent(ILandroid/view/MotionEvent;)V
    .locals 2
    .param p1, "actionCode"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 74
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/almeros/android/multitouch/ShoveGestureDetector;->resetState()V

    .line 79
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/almeros/android/multitouch/ShoveGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/almeros/android/multitouch/ShoveGestureDetector;->mTimeDelta:J

    .line 82
    invoke-virtual {p0, p2}, Lcom/almeros/android/multitouch/ShoveGestureDetector;->updateStateByEvent(Landroid/view/MotionEvent;)V

    .line 85
    invoke-virtual {p0, p2}, Lcom/almeros/android/multitouch/ShoveGestureDetector;->isSloppyGesture(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/almeros/android/multitouch/ShoveGestureDetector;->mSloppyGesture:Z

    .line 86
    if-nez v0, :cond_3

    .line 88
    iget-object v0, p0, Lcom/almeros/android/multitouch/ShoveGestureDetector;->mListener:Lcom/almeros/android/multitouch/ShoveGestureDetector$OnShoveGestureListener;

    invoke-interface {v0, p0}, Lcom/almeros/android/multitouch/ShoveGestureDetector$OnShoveGestureListener;->onShoveBegin(Lcom/almeros/android/multitouch/ShoveGestureDetector;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/almeros/android/multitouch/ShoveGestureDetector;->mGestureInProgress:Z

    goto :goto_0

    .line 93
    :cond_1
    iget-boolean v0, p0, Lcom/almeros/android/multitouch/ShoveGestureDetector;->mSloppyGesture:Z

    if-nez v0, :cond_2

    .line 94
    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {p0, p2}, Lcom/almeros/android/multitouch/ShoveGestureDetector;->isSloppyGesture(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/almeros/android/multitouch/ShoveGestureDetector;->mSloppyGesture:Z

    .line 99
    if-nez v0, :cond_3

    .line 101
    iget-object v0, p0, Lcom/almeros/android/multitouch/ShoveGestureDetector;->mListener:Lcom/almeros/android/multitouch/ShoveGestureDetector$OnShoveGestureListener;

    invoke-interface {v0, p0}, Lcom/almeros/android/multitouch/ShoveGestureDetector$OnShoveGestureListener;->onShoveBegin(Lcom/almeros/android/multitouch/ShoveGestureDetector;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/almeros/android/multitouch/ShoveGestureDetector;->mGestureInProgress:Z

    .line 113
    :cond_3
    :goto_0
    return-void
.end method

.method protected isSloppyGesture(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 180
    invoke-super {p0, p1}, Lcom/almeros/android/multitouch/TwoFingerGestureDetector;->isSloppyGesture(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 181
    .local v0, "sloppy":Z
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 182
    return v1

    .line 186
    :cond_0
    iget v2, p0, Lcom/almeros/android/multitouch/ShoveGestureDetector;->mCurrFingerDiffY:F

    float-to-double v2, v2

    iget v4, p0, Lcom/almeros/android/multitouch/ShoveGestureDetector;->mCurrFingerDiffX:F

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 188
    .local v2, "angle":D
    const-wide/16 v4, 0x0

    cmpg-double v6, v4, v2

    if-gez v6, :cond_1

    const-wide v4, 0x3fd6666660000000L    # 0.3499999940395355

    cmpg-double v6, v2, v4

    if-ltz v6, :cond_2

    :cond_1
    const-wide v4, 0x400651eb80000000L    # 2.7899999618530273

    cmpg-double v6, v4, v2

    if-gez v6, :cond_3

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    cmpg-double v6, v2, v4

    if-ltz v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method protected resetState()V
    .locals 1

    .line 158
    invoke-super {p0}, Lcom/almeros/android/multitouch/TwoFingerGestureDetector;->resetState()V

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/almeros/android/multitouch/ShoveGestureDetector;->mSloppyGesture:Z

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lcom/almeros/android/multitouch/ShoveGestureDetector;->mPrevAverageY:F

    .line 161
    iput v0, p0, Lcom/almeros/android/multitouch/ShoveGestureDetector;->mCurrAverageY:F

    .line 162
    return-void
.end method

.method protected updateStateByEvent(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "curr"    # Landroid/view/MotionEvent;

    .line 166
    invoke-super {p0, p1}, Lcom/almeros/android/multitouch/TwoFingerGestureDetector;->updateStateByEvent(Landroid/view/MotionEvent;)V

    .line 168
    iget-object v0, p0, Lcom/almeros/android/multitouch/ShoveGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 169
    .local v0, "prev":Landroid/view/MotionEvent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 170
    .local v2, "py0":F
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 171
    .local v4, "py1":F
    add-float v5, v2, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iput v5, p0, Lcom/almeros/android/multitouch/ShoveGestureDetector;->mPrevAverageY:F

    .line 173
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 174
    .local v1, "cy0":F
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 175
    .local v3, "cy1":F
    add-float v5, v1, v3

    div-float/2addr v5, v6

    iput v5, p0, Lcom/almeros/android/multitouch/ShoveGestureDetector;->mCurrAverageY:F

    .line 176
    return-void
.end method
