.class public Lcom/almeros/android/multitouch/MoveGestureDetector;
.super Lcom/almeros/android/multitouch/BaseGestureDetector;
.source "MoveGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/almeros/android/multitouch/MoveGestureDetector$SimpleOnMoveGestureListener;,
        Lcom/almeros/android/multitouch/MoveGestureDetector$OnMoveGestureListener;
    }
.end annotation


# static fields
.field private static final FOCUS_DELTA_ZERO:Landroid/graphics/PointF;


# instance fields
.field private mCurrFocusInternal:Landroid/graphics/PointF;

.field private mFocusDeltaExternal:Landroid/graphics/PointF;

.field private mFocusExternal:Landroid/graphics/PointF;

.field private final mListener:Lcom/almeros/android/multitouch/MoveGestureDetector$OnMoveGestureListener;

.field private mPrevFocusInternal:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lcom/almeros/android/multitouch/MoveGestureDetector;->FOCUS_DELTA_ZERO:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/almeros/android/multitouch/MoveGestureDetector$OnMoveGestureListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/almeros/android/multitouch/MoveGestureDetector$OnMoveGestureListener;

    .line 73
    invoke-direct {p0, p1}, Lcom/almeros/android/multitouch/BaseGestureDetector;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/almeros/android/multitouch/MoveGestureDetector;->mFocusExternal:Landroid/graphics/PointF;

    .line 69
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/almeros/android/multitouch/MoveGestureDetector;->mFocusDeltaExternal:Landroid/graphics/PointF;

    .line 74
    iput-object p2, p0, Lcom/almeros/android/multitouch/MoveGestureDetector;->mListener:Lcom/almeros/android/multitouch/MoveGestureDetector$OnMoveGestureListener;

    .line 75
    return-void
.end method

.method private determineFocalPoint(Landroid/view/MotionEvent;)Landroid/graphics/PointF;
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 157
    .local v0, "pCount":I
    const/4 v1, 0x0

    .line 158
    .local v1, "x":F
    const/4 v2, 0x0

    .line 160
    .local v2, "y":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 161
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    add-float/2addr v1, v4

    .line 162
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    add-float/2addr v2, v4

    .line 160
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 165
    .end local v3    # "i":I
    :cond_0
    new-instance v3, Landroid/graphics/PointF;

    int-to-float v4, v0

    div-float v4, v1, v4

    int-to-float v5, v0

    div-float v5, v2, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v3
.end method


# virtual methods
.method public getFocusDelta()Landroid/graphics/PointF;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/almeros/android/multitouch/MoveGestureDetector;->mFocusDeltaExternal:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getFocusX()F
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/almeros/android/multitouch/MoveGestureDetector;->mFocusExternal:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/almeros/android/multitouch/MoveGestureDetector;->mFocusExternal:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    return v0
.end method

.method protected handleInProgressEvent(ILandroid/view/MotionEvent;)V
    .locals 2
    .param p1, "actionCode"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 97
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/almeros/android/multitouch/MoveGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_1

    .line 109
    return-void

    .line 111
    :cond_1
    invoke-virtual {p0, p2}, Lcom/almeros/android/multitouch/MoveGestureDetector;->updateStateByEvent(Landroid/view/MotionEvent;)V

    .line 116
    iget v0, p0, Lcom/almeros/android/multitouch/MoveGestureDetector;->mCurrPressure:F

    iget v1, p0, Lcom/almeros/android/multitouch/MoveGestureDetector;->mPrevPressure:F

    div-float/2addr v0, v1

    const v1, 0x3f2b851f    # 0.67f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 117
    iget-object v0, p0, Lcom/almeros/android/multitouch/MoveGestureDetector;->mListener:Lcom/almeros/android/multitouch/MoveGestureDetector$OnMoveGestureListener;

    invoke-interface {v0, p0}, Lcom/almeros/android/multitouch/MoveGestureDetector$OnMoveGestureListener;->onMove(Lcom/almeros/android/multitouch/MoveGestureDetector;)Z

    move-result v0

    .line 118
    .local v0, "updatePrevious":Z
    if-eqz v0, :cond_3

    .line 119
    iget-object v1, p0, Lcom/almeros/android/multitouch/MoveGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 120
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/almeros/android/multitouch/MoveGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    goto :goto_0

    .line 100
    .end local v0    # "updatePrevious":Z
    :cond_2
    iget-object v0, p0, Lcom/almeros/android/multitouch/MoveGestureDetector;->mListener:Lcom/almeros/android/multitouch/MoveGestureDetector$OnMoveGestureListener;

    invoke-interface {v0, p0}, Lcom/almeros/android/multitouch/MoveGestureDetector$OnMoveGestureListener;->onMoveEnd(Lcom/almeros/android/multitouch/MoveGestureDetector;)V

    .line 101
    invoke-virtual {p0}, Lcom/almeros/android/multitouch/MoveGestureDetector;->resetState()V

    .line 102
    nop

    .line 125
    :cond_3
    :goto_0
    return-void
.end method

.method protected handleStartProgressEvent(ILandroid/view/MotionEvent;)V
    .locals 2
    .param p1, "actionCode"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 79
    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/almeros/android/multitouch/MoveGestureDetector;->mListener:Lcom/almeros/android/multitouch/MoveGestureDetector$OnMoveGestureListener;

    invoke-interface {v0, p0}, Lcom/almeros/android/multitouch/MoveGestureDetector$OnMoveGestureListener;->onMoveBegin(Lcom/almeros/android/multitouch/MoveGestureDetector;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/almeros/android/multitouch/MoveGestureDetector;->mGestureInProgress:Z

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/almeros/android/multitouch/MoveGestureDetector;->resetState()V

    .line 83
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/almeros/android/multitouch/MoveGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/almeros/android/multitouch/MoveGestureDetector;->mTimeDelta:J

    .line 86
    invoke-virtual {p0, p2}, Lcom/almeros/android/multitouch/MoveGestureDetector;->updateStateByEvent(Landroid/view/MotionEvent;)V

    .line 87
    nop

    .line 93
    :goto_0
    return-void
.end method

.method protected updateStateByEvent(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "curr"    # Landroid/view/MotionEvent;

    .line 128
    invoke-super {p0, p1}, Lcom/almeros/android/multitouch/BaseGestureDetector;->updateStateByEvent(Landroid/view/MotionEvent;)V

    .line 130
    iget-object v0, p0, Lcom/almeros/android/multitouch/MoveGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 133
    .local v0, "prev":Landroid/view/MotionEvent;
    invoke-direct {p0, p1}, Lcom/almeros/android/multitouch/MoveGestureDetector;->determineFocalPoint(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v1

    iput-object v1, p0, Lcom/almeros/android/multitouch/MoveGestureDetector;->mCurrFocusInternal:Landroid/graphics/PointF;

    .line 134
    invoke-direct {p0, v0}, Lcom/almeros/android/multitouch/MoveGestureDetector;->determineFocalPoint(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v1

    iput-object v1, p0, Lcom/almeros/android/multitouch/MoveGestureDetector;->mPrevFocusInternal:Landroid/graphics/PointF;

    .line 138
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 139
    .local v1, "mSkipNextMoveEvent":Z
    :goto_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/almeros/android/multitouch/MoveGestureDetector;->FOCUS_DELTA_ZERO:Landroid/graphics/PointF;

    goto :goto_1

    :cond_1
    new-instance v2, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/almeros/android/multitouch/MoveGestureDetector;->mCurrFocusInternal:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/almeros/android/multitouch/MoveGestureDetector;->mPrevFocusInternal:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/almeros/android/multitouch/MoveGestureDetector;->mCurrFocusInternal:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/almeros/android/multitouch/MoveGestureDetector;->mPrevFocusInternal:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_1
    iput-object v2, p0, Lcom/almeros/android/multitouch/MoveGestureDetector;->mFocusDeltaExternal:Landroid/graphics/PointF;

    .line 143
    iget-object v2, p0, Lcom/almeros/android/multitouch/MoveGestureDetector;->mFocusExternal:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/almeros/android/multitouch/MoveGestureDetector;->mFocusDeltaExternal:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 144
    iget-object v2, p0, Lcom/almeros/android/multitouch/MoveGestureDetector;->mFocusExternal:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/almeros/android/multitouch/MoveGestureDetector;->mFocusDeltaExternal:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 145
    return-void
.end method
