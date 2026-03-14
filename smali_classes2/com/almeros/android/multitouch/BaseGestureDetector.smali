.class public abstract Lcom/almeros/android/multitouch/BaseGestureDetector;
.super Ljava/lang/Object;
.source "BaseGestureDetector.java"


# static fields
.field protected static final PRESSURE_THRESHOLD:F = 0.67f


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mCurrEvent:Landroid/view/MotionEvent;

.field protected mCurrPressure:F

.field protected mGestureInProgress:Z

.field protected mPrevEvent:Landroid/view/MotionEvent;

.field protected mPrevPressure:F

.field protected mTimeDelta:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/almeros/android/multitouch/BaseGestureDetector;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method


# virtual methods
.method public getEventTime()J
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/almeros/android/multitouch/BaseGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeDelta()J
    .locals 2

    .line 137
    iget-wide v0, p0, Lcom/almeros/android/multitouch/BaseGestureDetector;->mTimeDelta:J

    return-wide v0
.end method

.method protected abstract handleInProgressEvent(ILandroid/view/MotionEvent;)V
.end method

.method protected abstract handleStartProgressEvent(ILandroid/view/MotionEvent;)V
.end method

.method public isInProgress()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/almeros/android/multitouch/BaseGestureDetector;->mGestureInProgress:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 63
    .local v0, "actionCode":I
    iget-boolean v1, p0, Lcom/almeros/android/multitouch/BaseGestureDetector;->mGestureInProgress:Z

    if-nez v1, :cond_0

    .line 64
    invoke-virtual {p0, v0, p1}, Lcom/almeros/android/multitouch/BaseGestureDetector;->handleStartProgressEvent(ILandroid/view/MotionEvent;)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/almeros/android/multitouch/BaseGestureDetector;->handleInProgressEvent(ILandroid/view/MotionEvent;)V

    .line 68
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method protected resetState()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/almeros/android/multitouch/BaseGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 112
    iput-object v1, p0, Lcom/almeros/android/multitouch/BaseGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/almeros/android/multitouch/BaseGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 116
    iput-object v1, p0, Lcom/almeros/android/multitouch/BaseGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 118
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/almeros/android/multitouch/BaseGestureDetector;->mGestureInProgress:Z

    .line 119
    return-void
.end method

.method protected updateStateByEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "curr"    # Landroid/view/MotionEvent;

    .line 91
    iget-object v0, p0, Lcom/almeros/android/multitouch/BaseGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 94
    .local v0, "prev":Landroid/view/MotionEvent;
    iget-object v1, p0, Lcom/almeros/android/multitouch/BaseGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 96
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/almeros/android/multitouch/BaseGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 98
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/almeros/android/multitouch/BaseGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/almeros/android/multitouch/BaseGestureDetector;->mTimeDelta:J

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    iput v1, p0, Lcom/almeros/android/multitouch/BaseGestureDetector;->mCurrPressure:F

    .line 106
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    iput v1, p0, Lcom/almeros/android/multitouch/BaseGestureDetector;->mPrevPressure:F

    .line 107
    return-void
.end method
