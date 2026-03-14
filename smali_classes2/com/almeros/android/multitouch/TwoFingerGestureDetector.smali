.class public abstract Lcom/almeros/android/multitouch/TwoFingerGestureDetector;
.super Lcom/almeros/android/multitouch/BaseGestureDetector;
.source "TwoFingerGestureDetector.java"


# instance fields
.field private mBottomSlopEdge:F

.field protected mCurrFingerDiffX:F

.field protected mCurrFingerDiffY:F

.field private mCurrLen:F

.field private final mEdgeSlop:F

.field protected mPrevFingerDiffX:F

.field protected mPrevFingerDiffY:F

.field private mPrevLen:F

.field private mRightSlopEdge:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0, p1}, Lcom/almeros/android/multitouch/BaseGestureDetector;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 47
    .local v0, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/almeros/android/multitouch/TwoFingerGestureDetector;->mEdgeSlop:F

    .line 48
    return-void
.end method

.method protected static getRawX(Landroid/view/MotionEvent;I)F
    .locals 2
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "pointerIndex"    # I

    .line 122
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 123
    .local v0, "offset":F
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 124
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v0

    return v1

    .line 126
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method protected static getRawY(Landroid/view/MotionEvent;I)F
    .locals 2
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "pointerIndex"    # I

    .line 136
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    sub-float/2addr v0, v1

    .line 137
    .local v0, "offset":F
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 138
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v0

    return v1

    .line 140
    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public getCurrentSpan()F
    .locals 4

    .line 92
    iget v0, p0, Lcom/almeros/android/multitouch/TwoFingerGestureDetector;->mCurrLen:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 93
    iget v0, p0, Lcom/almeros/android/multitouch/TwoFingerGestureDetector;->mCurrFingerDiffX:F

    .line 94
    .local v0, "cvx":F
    iget v1, p0, Lcom/almeros/android/multitouch/TwoFingerGestureDetector;->mCurrFingerDiffY:F

    .line 95
    .local v1, "cvy":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/almeros/android/multitouch/TwoFingerGestureDetector;->mCurrLen:F

    .line 97
    .end local v0    # "cvx":F
    .end local v1    # "cvy":F
    :cond_0
    iget v0, p0, Lcom/almeros/android/multitouch/TwoFingerGestureDetector;->mCurrLen:F

    return v0
.end method

.method public getPreviousSpan()F
    .locals 4

    .line 107
    iget v0, p0, Lcom/almeros/android/multitouch/TwoFingerGestureDetector;->mPrevLen:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 108
    iget v0, p0, Lcom/almeros/android/multitouch/TwoFingerGestureDetector;->mPrevFingerDiffX:F

    .line 109
    .local v0, "pvx":F
    iget v1, p0, Lcom/almeros/android/multitouch/TwoFingerGestureDetector;->mPrevFingerDiffY:F

    .line 110
    .local v1, "pvy":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/almeros/android/multitouch/TwoFingerGestureDetector;->mPrevLen:F

    .line 112
    .end local v0    # "pvx":F
    .end local v1    # "pvy":F
    :cond_0
    iget v0, p0, Lcom/almeros/android/multitouch/TwoFingerGestureDetector;->mPrevLen:F

    return v0
.end method

.method protected abstract handleInProgressEvent(ILandroid/view/MotionEvent;)V
.end method

.method protected abstract handleStartProgressEvent(ILandroid/view/MotionEvent;)V
.end method

.method protected isSloppyGesture(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 152
    iget-object v0, p0, Lcom/almeros/android/multitouch/TwoFingerGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 153
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, p0, Lcom/almeros/android/multitouch/TwoFingerGestureDetector;->mEdgeSlop:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/almeros/android/multitouch/TwoFingerGestureDetector;->mRightSlopEdge:F

    .line 154
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v2, p0, Lcom/almeros/android/multitouch/TwoFingerGestureDetector;->mEdgeSlop:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/almeros/android/multitouch/TwoFingerGestureDetector;->mBottomSlopEdge:F

    .line 156
    iget v1, p0, Lcom/almeros/android/multitouch/TwoFingerGestureDetector;->mEdgeSlop:F

    .line 157
    .local v1, "edgeSlop":F
    iget v2, p0, Lcom/almeros/android/multitouch/TwoFingerGestureDetector;->mRightSlopEdge:F

    .line 158
    .local v2, "rightSlop":F
    iget v3, p0, Lcom/almeros/android/multitouch/TwoFingerGestureDetector;->mBottomSlopEdge:F

    .line 160
    .local v3, "bottomSlop":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    .line 161
    .local v4, "x0":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    .line 162
    .local v5, "y0":F
    const/4 v6, 0x1

    invoke-static {p1, v6}, Lcom/almeros/android/multitouch/TwoFingerGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v7

    .line 163
    .local v7, "x1":F
    invoke-static {p1, v6}, Lcom/almeros/android/multitouch/TwoFingerGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 165
    .local v8, "y1":F
    const/4 v9, 0x0

    cmpg-float v10, v4, v1

    if-ltz v10, :cond_1

    cmpg-float v10, v5, v1

    if-ltz v10, :cond_1

    cmpl-float v10, v4, v2

    if-gtz v10, :cond_1

    cmpl-float v10, v5, v3

    if-lez v10, :cond_0

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v10, 0x1

    .line 167
    .local v10, "p0sloppy":Z
    :goto_1
    cmpg-float v11, v7, v1

    if-ltz v11, :cond_3

    cmpg-float v11, v8, v1

    if-ltz v11, :cond_3

    cmpl-float v11, v7, v2

    if-gtz v11, :cond_3

    cmpl-float v11, v8, v3

    if-lez v11, :cond_2

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v11, 0x1

    .line 170
    .local v11, "p1sloppy":Z
    :goto_3
    if-eqz v10, :cond_4

    if-eqz v11, :cond_4

    .line 171
    return v6

    .line 172
    :cond_4
    if-eqz v10, :cond_5

    .line 173
    return v6

    .line 174
    :cond_5
    if-eqz v11, :cond_6

    .line 175
    return v6

    .line 177
    :cond_6
    return v9
.end method

.method protected updateStateByEvent(Landroid/view/MotionEvent;)V
    .locals 13
    .param p1, "curr"    # Landroid/view/MotionEvent;

    .line 57
    invoke-super {p0, p1}, Lcom/almeros/android/multitouch/BaseGestureDetector;->updateStateByEvent(Landroid/view/MotionEvent;)V

    .line 59
    iget-object v0, p0, Lcom/almeros/android/multitouch/TwoFingerGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 61
    .local v0, "prev":Landroid/view/MotionEvent;
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/almeros/android/multitouch/TwoFingerGestureDetector;->mCurrLen:F

    .line 62
    iput v1, p0, Lcom/almeros/android/multitouch/TwoFingerGestureDetector;->mPrevLen:F

    .line 65
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 66
    .local v2, "px0":F
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 67
    .local v3, "py0":F
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 68
    .local v5, "px1":F
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 69
    .local v6, "py1":F
    sub-float v7, v5, v2

    .line 70
    .local v7, "pvx":F
    sub-float v8, v6, v3

    .line 71
    .local v8, "pvy":F
    iput v7, p0, Lcom/almeros/android/multitouch/TwoFingerGestureDetector;->mPrevFingerDiffX:F

    .line 72
    iput v8, p0, Lcom/almeros/android/multitouch/TwoFingerGestureDetector;->mPrevFingerDiffY:F

    .line 75
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    .line 76
    .local v9, "cx0":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 77
    .local v1, "cy0":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    .line 78
    .local v10, "cx1":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 79
    .local v4, "cy1":F
    sub-float v11, v10, v9

    .line 80
    .local v11, "cvx":F
    sub-float v12, v4, v1

    .line 81
    .local v12, "cvy":F
    iput v11, p0, Lcom/almeros/android/multitouch/TwoFingerGestureDetector;->mCurrFingerDiffX:F

    .line 82
    iput v12, p0, Lcom/almeros/android/multitouch/TwoFingerGestureDetector;->mCurrFingerDiffY:F

    .line 83
    return-void
.end method
