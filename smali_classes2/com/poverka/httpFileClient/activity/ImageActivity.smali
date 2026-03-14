.class Lcom/poverka/httpFileClient/activity/ImageActivity;
.super Ljava/lang/Object;
.source "ImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/poverka/httpFileClient/activity/ImageActivity$MoveListener;,
        Lcom/poverka/httpFileClient/activity/ImageActivity$RotateListener;,
        Lcom/poverka/httpFileClient/activity/ImageActivity$ScaleListener;,
        Lcom/poverka/httpFileClient/activity/ImageActivity$OnImageResult;,
        Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;
    }
.end annotation


# static fields
.field private static final BUTTON_HEIGHT_RATIO:F = 0.14f

.field private static final EDIT_WIDTH_RATIO:F = 0.27f

.field private static final MARGIN_HEIGHT_RATIO:F = 0.02f

.field private static final TEXT_L_HEIGHT_RATIO:F = 0.065f

.field private static final TEXT_S_HEIGHT_RATIO:F = 0.045f


# instance fields
.field private activity:Landroid/app/Activity;

.field private clicked:I

.field private dialog:Landroid/app/Dialog;

.field private layoutType:Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;

.field private mFocusX:F

.field private mFocusY:F

.field private mImageHeight:I

.field private mImageWidth:I

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMoveDetector:Lcom/almeros/android/multitouch/MoveGestureDetector;

.field private mRotateDetector:Lcom/almeros/android/multitouch/RotateGestureDetector;

.field private mRotationDegrees:F

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleFactor:F

.field private resultListener:Lcom/poverka/httpFileClient/activity/ImageActivity$OnImageResult;

.field private screenHeight:I

.field private screenWidth:I

.field private touchListener:Landroid/view/View$OnTouchListener;

.field private view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/poverka/httpFileClient/activity/ImageActivity$OnImageResult;Landroid/os/Bundle;)V
    .locals 20
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "resultListener"    # Lcom/poverka/httpFileClient/activity/ImageActivity$OnImageResult;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 81
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, v8, Lcom/poverka/httpFileClient/activity/ImageActivity;->mMatrix:Landroid/graphics/Matrix;

    .line 59
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v8, Lcom/poverka/httpFileClient/activity/ImageActivity;->mScaleFactor:F

    .line 60
    const/4 v0, 0x0

    iput v0, v8, Lcom/poverka/httpFileClient/activity/ImageActivity;->mRotationDegrees:F

    .line 61
    iput v0, v8, Lcom/poverka/httpFileClient/activity/ImageActivity;->mFocusX:F

    .line 62
    iput v0, v8, Lcom/poverka/httpFileClient/activity/ImageActivity;->mFocusY:F

    .line 629
    new-instance v0, Lcom/poverka/httpFileClient/activity/ImageActivity$5;

    invoke-direct {v0, v8}, Lcom/poverka/httpFileClient/activity/ImageActivity$5;-><init>(Lcom/poverka/httpFileClient/activity/ImageActivity;)V

    iput-object v0, v8, Lcom/poverka/httpFileClient/activity/ImageActivity;->touchListener:Landroid/view/View$OnTouchListener;

    .line 82
    const-string v0, ""

    .local v0, "counterNumber":Ljava/lang/String;
    const-string v1, ""

    .local v1, "char1":Ljava/lang/String;
    const-string v2, ""

    .line 83
    .local v2, "char2":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "volume":I
    const/4 v4, 0x0

    .local v4, "year":I
    const/4 v5, 0x0

    .local v5, "dnTypeID":I
    const/4 v6, 0x0

    .line 84
    .local v6, "value":I
    iput-object v9, v8, Lcom/poverka/httpFileClient/activity/ImageActivity;->activity:Landroid/app/Activity;

    .line 85
    move-object/from16 v11, p2

    iput-object v11, v8, Lcom/poverka/httpFileClient/activity/ImageActivity;->resultListener:Lcom/poverka/httpFileClient/activity/ImageActivity$OnImageResult;

    .line 86
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v12, 0x7f0c001d

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, v8, Lcom/poverka/httpFileClient/activity/ImageActivity;->view:Landroid/view/View;

    .line 88
    new-instance v7, Landroid/app/Dialog;

    const v12, 0x103012c

    invoke-direct {v7, v9, v12}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v7, v8, Lcom/poverka/httpFileClient/activity/ImageActivity;->dialog:Landroid/app/Dialog;

    .line 89
    const-string v7, "layoutType"

    invoke-virtual {v10, v7}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;

    iput-object v7, v8, Lcom/poverka/httpFileClient/activity/ImageActivity;->layoutType:Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;

    .line 90
    const-string v7, "clicked"

    invoke-virtual {v10, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v8, Lcom/poverka/httpFileClient/activity/ImageActivity;->clicked:I

    .line 91
    const-string v7, "image"

    invoke-virtual {v10, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Landroid/graphics/Bitmap;

    .line 93
    .local v12, "image":Landroid/graphics/Bitmap;
    iget-object v7, v8, Lcom/poverka/httpFileClient/activity/ImageActivity;->layoutType:Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;

    sget-object v13, Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;->START:Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;

    if-ne v7, v13, :cond_0

    .line 94
    const-string v7, "number"

    invoke-virtual {v10, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    const-string v7, "volume"

    invoke-virtual {v10, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 96
    const-string v7, "year"

    invoke-virtual {v10, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 97
    const-string v7, "dnType"

    invoke-virtual {v10, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 98
    const/4 v6, 0x0

    .line 99
    const-string v7, "char1"

    invoke-virtual {v10, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    const-string v7, "char2"

    invoke-virtual {v10, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v13, v0

    move-object v14, v1

    move-object v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    goto :goto_0

    .line 101
    :cond_0
    iget-object v7, v8, Lcom/poverka/httpFileClient/activity/ImageActivity;->layoutType:Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;

    sget-object v13, Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;->MEASUREMENT:Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;

    if-ne v7, v13, :cond_1

    .line 102
    const-string v0, ""

    .line 103
    const/4 v3, 0x0

    .line 104
    const/4 v4, 0x0

    .line 105
    const/4 v5, 0x0

    .line 106
    const-string v7, "value"

    invoke-virtual {v10, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 107
    const-string v1, ""

    .line 108
    const-string v2, ""

    move-object v13, v0

    move-object v14, v1

    move-object v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    goto :goto_0

    .line 101
    :cond_1
    move-object v13, v0

    move-object v14, v1

    move-object v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    .line 110
    .end local v0    # "counterNumber":Ljava/lang/String;
    .end local v1    # "char1":Ljava/lang/String;
    .end local v2    # "char2":Ljava/lang/String;
    .end local v3    # "volume":I
    .end local v4    # "year":I
    .end local v5    # "dnTypeID":I
    .end local v6    # "value":I
    .local v13, "counterNumber":Ljava/lang/String;
    .local v14, "char1":Ljava/lang/String;
    .local v15, "char2":Ljava/lang/String;
    .local v16, "volume":I
    .local v17, "year":I
    .local v18, "dnTypeID":I
    .local v19, "value":I
    :goto_0
    invoke-direct {v8, v12}, Lcom/poverka/httpFileClient/activity/ImageActivity;->initImage(Landroid/graphics/Bitmap;)V

    .line 111
    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move-object v6, v14

    move-object v7, v15

    invoke-direct/range {v0 .. v7}, Lcom/poverka/httpFileClient/activity/ImageActivity;->initViews(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, v8, Lcom/poverka/httpFileClient/activity/ImageActivity;->dialog:Landroid/app/Dialog;

    iget-object v1, v8, Lcom/poverka/httpFileClient/activity/ImageActivity;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 114
    iget-object v0, v8, Lcom/poverka/httpFileClient/activity/ImageActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 115
    return-void
.end method

.method static synthetic access$1000(Lcom/poverka/httpFileClient/activity/ImageActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/ImageActivity;

    .line 47
    iget v0, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->mRotationDegrees:F

    return v0
.end method

.method static synthetic access$1024(Lcom/poverka/httpFileClient/activity/ImageActivity;F)F
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/ImageActivity;
    .param p1, "x1"    # F

    .line 47
    iget v0, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->mRotationDegrees:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->mRotationDegrees:F

    return v0
.end method

.method static synthetic access$1100(Lcom/poverka/httpFileClient/activity/ImageActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/ImageActivity;

    .line 47
    iget v0, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->mFocusX:F

    return v0
.end method

.method static synthetic access$1116(Lcom/poverka/httpFileClient/activity/ImageActivity;F)F
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/ImageActivity;
    .param p1, "x1"    # F

    .line 47
    iget v0, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->mFocusX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->mFocusX:F

    return v0
.end method

.method static synthetic access$1200(Lcom/poverka/httpFileClient/activity/ImageActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/ImageActivity;

    .line 47
    iget v0, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->mFocusY:F

    return v0
.end method

.method static synthetic access$1216(Lcom/poverka/httpFileClient/activity/ImageActivity;F)F
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/ImageActivity;
    .param p1, "x1"    # F

    .line 47
    iget v0, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->mFocusY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->mFocusY:F

    return v0
.end method

.method static synthetic access$1300(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/view/ScaleGestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/ImageActivity;

    .line 47
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/poverka/httpFileClient/activity/ImageActivity;)Lcom/almeros/android/multitouch/RotateGestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/ImageActivity;

    .line 47
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->mRotateDetector:Lcom/almeros/android/multitouch/RotateGestureDetector;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/poverka/httpFileClient/activity/ImageActivity;)Lcom/almeros/android/multitouch/MoveGestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/ImageActivity;

    .line 47
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->mMoveDetector:Lcom/almeros/android/multitouch/MoveGestureDetector;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/poverka/httpFileClient/activity/ImageActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/ImageActivity;

    .line 47
    iget v0, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->mImageWidth:I

    return v0
.end method

.method static synthetic access$1700(Lcom/poverka/httpFileClient/activity/ImageActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/ImageActivity;

    .line 47
    iget v0, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->mImageHeight:I

    return v0
.end method

.method static synthetic access$1800(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/ImageActivity;

    .line 47
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$300(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/ImageActivity;

    .line 47
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/poverka/httpFileClient/activity/ImageActivity;)Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/ImageActivity;

    .line 47
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->layoutType:Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;

    return-object v0
.end method

.method static synthetic access$500(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/ImageActivity;

    .line 47
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/poverka/httpFileClient/activity/ImageActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/ImageActivity;

    .line 47
    iget v0, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->clicked:I

    return v0
.end method

.method static synthetic access$700(Lcom/poverka/httpFileClient/activity/ImageActivity;)Lcom/poverka/httpFileClient/activity/ImageActivity$OnImageResult;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/ImageActivity;

    .line 47
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->resultListener:Lcom/poverka/httpFileClient/activity/ImageActivity$OnImageResult;

    return-object v0
.end method

.method static synthetic access$800(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/ImageActivity;

    .line 47
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/poverka/httpFileClient/activity/ImageActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/ImageActivity;

    .line 47
    iget v0, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->mScaleFactor:F

    return v0
.end method

.method static synthetic access$902(Lcom/poverka/httpFileClient/activity/ImageActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/ImageActivity;
    .param p1, "x1"    # F

    .line 47
    iput p1, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->mScaleFactor:F

    return p1
.end method

.method static synthetic access$932(Lcom/poverka/httpFileClient/activity/ImageActivity;F)F
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/ImageActivity;
    .param p1, "x1"    # F

    .line 47
    iget v0, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->mScaleFactor:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->mScaleFactor:F

    return v0
.end method

.method private initImage(Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 119
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 120
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 122
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->screenWidth:I

    .line 123
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->screenHeight:I

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->screenWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->screenHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tag"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget v1, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->screenWidth:I

    int-to-float v1, v1

    const v2, 0x3f19999a    # 0.6f

    mul-float v1, v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->mFocusX:F

    .line 129
    iget v1, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->screenHeight:I

    add-int/lit8 v1, v1, -0x28

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->mFocusY:F

    .line 131
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->view:Landroid/view/View;

    const v3, 0x7f0900de

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 132
    .local v1, "image":Landroid/widget/ImageView;
    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 136
    :cond_0
    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 137
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 140
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->mImageWidth:I

    .line 141
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->mImageHeight:I

    .line 144
    iget v4, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->mImageWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->mScaleFactor:F

    mul-float v4, v4, v5

    div-float/2addr v4, v2

    .line 145
    .local v4, "scaledImageCenterX":F
    int-to-float v3, v3

    mul-float v3, v3, v5

    div-float/2addr v3, v2

    .line 147
    .local v3, "scaledImageCenterY":F
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v5, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 148
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->mMatrix:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->mFocusX:F

    sub-float/2addr v5, v4

    iget v6, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->mFocusY:F

    sub-float/2addr v6, v3

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 149
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 152
    new-instance v2, Landroid/view/ScaleGestureDetector;

    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/poverka/httpFileClient/activity/ImageActivity$ScaleListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/poverka/httpFileClient/activity/ImageActivity$ScaleListener;-><init>(Lcom/poverka/httpFileClient/activity/ImageActivity;Lcom/poverka/httpFileClient/activity/ImageActivity$1;)V

    invoke-direct {v2, v5, v6}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 153
    new-instance v2, Lcom/almeros/android/multitouch/RotateGestureDetector;

    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/poverka/httpFileClient/activity/ImageActivity$RotateListener;

    invoke-direct {v6, p0, v7}, Lcom/poverka/httpFileClient/activity/ImageActivity$RotateListener;-><init>(Lcom/poverka/httpFileClient/activity/ImageActivity;Lcom/poverka/httpFileClient/activity/ImageActivity$1;)V

    invoke-direct {v2, v5, v6}, Lcom/almeros/android/multitouch/RotateGestureDetector;-><init>(Landroid/content/Context;Lcom/almeros/android/multitouch/RotateGestureDetector$OnRotateGestureListener;)V

    iput-object v2, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->mRotateDetector:Lcom/almeros/android/multitouch/RotateGestureDetector;

    .line 154
    new-instance v2, Lcom/almeros/android/multitouch/MoveGestureDetector;

    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/poverka/httpFileClient/activity/ImageActivity$MoveListener;

    invoke-direct {v6, p0, v7}, Lcom/poverka/httpFileClient/activity/ImageActivity$MoveListener;-><init>(Lcom/poverka/httpFileClient/activity/ImageActivity;Lcom/poverka/httpFileClient/activity/ImageActivity$1;)V

    invoke-direct {v2, v5, v6}, Lcom/almeros/android/multitouch/MoveGestureDetector;-><init>(Landroid/content/Context;Lcom/almeros/android/multitouch/MoveGestureDetector$OnMoveGestureListener;)V

    iput-object v2, p0, Lcom/poverka/httpFileClient/activity/ImageActivity;->mMoveDetector:Lcom/almeros/android/multitouch/MoveGestureDetector;

    .line 155
    return-void
.end method

.method private initViews(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V
    .locals 36
    .param p1, "counterNumber"    # Ljava/lang/String;
    .param p2, "volume"    # I
    .param p3, "year"    # I
    .param p4, "dnTypeID"    # I
    .param p5, "value"    # I
    .param p6, "char1"    # Ljava/lang/String;
    .param p7, "char2"    # Ljava/lang/String;

    .line 158
    move-object/from16 v13, p0

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    iget-object v0, v13, Lcom/poverka/httpFileClient/activity/ImageActivity;->view:Landroid/view/View;

    const v1, 0x7f09019c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    .line 159
    .local v12, "textImageName":Landroid/widget/TextView;
    iget-object v0, v13, Lcom/poverka/httpFileClient/activity/ImageActivity;->view:Landroid/view/View;

    const v1, 0x7f090055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/Button;

    .line 161
    .local v11, "buttonSave":Landroid/widget/Button;
    iget v0, v13, Lcom/poverka/httpFileClient/activity/ImageActivity;->screenHeight:I

    int-to-float v1, v0

    const v2, 0x3e0f5c29    # 0.14f

    mul-float v1, v1, v2

    float-to-int v10, v1

    .line 162
    .local v10, "buttonHeight":I
    iget v1, v13, Lcom/poverka/httpFileClient/activity/ImageActivity;->screenWidth:I

    int-to-float v1, v1

    const v2, 0x3e8a3d71    # 0.27f

    mul-float v1, v1, v2

    float-to-int v9, v1

    .line 163
    .local v9, "editWidth":I
    int-to-float v1, v0

    const v2, 0x3d851eb8    # 0.065f

    mul-float v1, v1, v2

    float-to-int v8, v1

    .line 164
    .local v8, "textLHeight":I
    int-to-float v1, v0

    const v2, 0x3d3851ec    # 0.045f

    mul-float v1, v1, v2

    float-to-int v7, v1

    .line 165
    .local v7, "textSHeight":I
    int-to-float v0, v0

    const v1, 0x3ca3d70a    # 0.02f

    mul-float v0, v0, v1

    float-to-int v6, v0

    .line 167
    .local v6, "marginHeight":I
    invoke-virtual {v12}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 168
    .local v4, "paramsL":Landroid/widget/LinearLayout$LayoutParams;
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 169
    invoke-virtual {v12}, Landroid/widget/TextView;->requestLayout()V

    .line 171
    iget-object v0, v13, Lcom/poverka/httpFileClient/activity/ImageActivity;->layoutType:Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;

    sget-object v1, Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;->START:Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;

    const/16 v2, 0x8

    if-ne v0, v1, :cond_1

    .line 172
    const v0, 0x7f0f0192

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    .line 173
    iget-object v0, v13, Lcom/poverka/httpFileClient/activity/ImageActivity;->view:Landroid/view/View;

    const v1, 0x7f0900f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v0, v13, Lcom/poverka/httpFileClient/activity/ImageActivity;->view:Landroid/view/View;

    const v1, 0x7f0901a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/TextView;

    .line 175
    .local v2, "textNumber":Landroid/widget/TextView;
    iget-object v0, v13, Lcom/poverka/httpFileClient/activity/ImageActivity;->view:Landroid/view/View;

    const v1, 0x7f0900a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/EditText;

    .line 176
    .local v1, "editNumber":Landroid/widget/EditText;
    iget-object v0, v13, Lcom/poverka/httpFileClient/activity/ImageActivity;->view:Landroid/view/View;

    const v3, 0x7f0901bf

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    .line 177
    .local v3, "textVolume":Landroid/widget/TextView;
    iget-object v0, v13, Lcom/poverka/httpFileClient/activity/ImageActivity;->view:Landroid/view/View;

    const v5, 0x7f0900b4

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/EditText;

    .line 178
    .local v5, "editVolume":Landroid/widget/EditText;
    iget-object v0, v13, Lcom/poverka/httpFileClient/activity/ImageActivity;->view:Landroid/view/View;

    move-object/from16 v18, v4

    .end local v4    # "paramsL":Landroid/widget/LinearLayout$LayoutParams;
    .local v18, "paramsL":Landroid/widget/LinearLayout$LayoutParams;
    const v4, 0x7f0901c0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    .line 179
    .local v4, "textYear":Landroid/widget/TextView;
    iget-object v0, v13, Lcom/poverka/httpFileClient/activity/ImageActivity;->view:Landroid/view/View;

    move/from16 v19, v10

    .end local v10    # "buttonHeight":I
    .local v19, "buttonHeight":I
    const v10, 0x7f0900b5

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/EditText;

    .line 180
    .local v10, "editYear":Landroid/widget/EditText;
    iget-object v0, v13, Lcom/poverka/httpFileClient/activity/ImageActivity;->view:Landroid/view/View;

    move-object/from16 v20, v11

    .end local v11    # "buttonSave":Landroid/widget/Button;
    .local v20, "buttonSave":Landroid/widget/Button;
    const v11, 0x7f090193

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    .line 181
    .local v11, "textDN":Landroid/widget/TextView;
    iget-object v0, v13, Lcom/poverka/httpFileClient/activity/ImageActivity;->view:Landroid/view/View;

    move-object/from16 v21, v12

    .end local v12    # "textImageName":Landroid/widget/TextView;
    .local v21, "textImageName":Landroid/widget/TextView;
    const v12, 0x7f09015f

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/Spinner;

    .line 182
    .local v12, "spinnerDN":Landroid/widget/Spinner;
    iget-object v0, v13, Lcom/poverka/httpFileClient/activity/ImageActivity;->view:Landroid/view/View;

    move/from16 v22, v8

    .end local v8    # "textLHeight":I
    .local v22, "textLHeight":I
    const v8, 0x7f0901bb

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    .line 183
    .local v8, "textType":Landroid/widget/TextView;
    iget-object v0, v13, Lcom/poverka/httpFileClient/activity/ImageActivity;->view:Landroid/view/View;

    const v14, 0x7f090167

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/Spinner;

    .line 184
    .local v14, "spinnerName":Landroid/widget/Spinner;
    iget-object v0, v13, Lcom/poverka/httpFileClient/activity/ImageActivity;->view:Landroid/view/View;

    const v15, 0x7f090168

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/Spinner;

    .line 186
    .local v15, "spinnerVendor":Landroid/widget/Spinner;
    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 187
    .local v0, "paramsC":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 188
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    .line 189
    invoke-virtual {v1}, Landroid/widget/EditText;->requestLayout()V

    .line 191
    invoke-virtual {v5}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    move-object/from16 v0, v23

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 192
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 193
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    .line 194
    invoke-virtual {v5}, Landroid/widget/EditText;->requestLayout()V

    .line 196
    invoke-virtual {v10}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    move-object/from16 v0, v23

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 197
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 198
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    .line 199
    invoke-virtual {v10}, Landroid/widget/EditText;->requestLayout()V

    .line 201
    invoke-virtual {v12}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    move-object/from16 v0, v23

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 202
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 203
    invoke-virtual {v12}, Landroid/widget/Spinner;->requestLayout()V

    .line 205
    invoke-virtual {v14}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    move-object/from16 v24, v15

    .end local v15    # "spinnerVendor":Landroid/widget/Spinner;
    .local v24, "spinnerVendor":Landroid/widget/Spinner;
    move-object/from16 v15, v23

    check-cast v15, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 206
    .end local v0    # "paramsC":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .local v15, "paramsC":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    iput v9, v15, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 207
    invoke-virtual {v14}, Landroid/widget/Spinner;->requestLayout()V

    .line 209
    int-to-float v0, v7

    move/from16 v23, v6

    const/4 v6, 0x0

    .end local v6    # "marginHeight":I
    .local v23, "marginHeight":I
    invoke-virtual {v2, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 210
    int-to-float v0, v7

    invoke-virtual {v1, v6, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 211
    int-to-float v0, v7

    invoke-virtual {v3, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 212
    int-to-float v0, v7

    invoke-virtual {v5, v6, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 213
    int-to-float v0, v7

    invoke-virtual {v4, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 214
    int-to-float v0, v7

    invoke-virtual {v10, v6, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 215
    int-to-float v0, v7

    invoke-virtual {v11, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 216
    int-to-float v0, v7

    invoke-virtual {v8, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 218
    move-object/from16 v25, v4

    move-object/from16 v4, p1

    .end local v4    # "textYear":Landroid/widget/TextView;
    .local v25, "textYear":Landroid/widget/TextView;
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 219
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    move-object/from16 v26, v1

    const/4 v6, 0x1

    .end local v1    # "editNumber":Landroid/widget/EditText;
    .local v26, "editNumber":Landroid/widget/EditText;
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v1, v17

    const-string v6, "%05d"

    invoke-static {v0, v6, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 220
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v17

    const-string v1, "%04d"

    invoke-static {v0, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, v13, Lcom/poverka/httpFileClient/activity/ImageActivity;->activity:Landroid/app/Activity;

    move/from16 v6, p4

    invoke-static {v0, v6}, Lcom/poverka/httpFileClient/util/MyDeviceTypeHelper;->getJsonById(Landroid/content/ContextWrapper;I)Lorg/json/JSONObject;

    move-result-object v1

    .line 226
    .local v1, "deviceType":Lorg/json/JSONObject;
    :try_start_0
    iget-object v0, v13, Lcom/poverka/httpFileClient/activity/ImageActivity;->activity:Landroid/app/Activity;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_7

    move-object/from16 v4, p6

    move-object/from16 v27, v15

    move-object/from16 v15, p7

    .end local v15    # "paramsC":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .local v27, "paramsC":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    :try_start_1
    invoke-static {v0, v4, v15}, Lcom/poverka/httpFileClient/util/MyDeviceTypeHelper;->getNamesByChars(Landroid/content/ContextWrapper;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "names":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_6

    .line 228
    move-object/from16 v28, v1

    .end local v1    # "deviceType":Lorg/json/JSONObject;
    .local v28, "deviceType":Lorg/json/JSONObject;
    :try_start_2
    array-length v1, v0

    const/16 v16, 0x1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_5

    .line 229
    .local v1, "array":[Ljava/lang/String;
    move-object/from16 v29, v2

    .end local v2    # "textNumber":Landroid/widget/TextView;
    .local v29, "textNumber":Landroid/widget/TextView;
    :try_start_3
    iget-object v2, v13, Lcom/poverka/httpFileClient/activity/ImageActivity;->activity:Landroid/app/Activity;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4

    move-object/from16 v30, v3

    .end local v3    # "textVolume":Landroid/widget/TextView;
    .local v30, "textVolume":Landroid/widget/TextView;
    const v3, 0x7f0f0131

    :try_start_4
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 230
    array-length v2, v0

    const/4 v4, 0x1

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    .line 231
    move-object/from16 v16, v5

    const/4 v4, 0x0

    .end local v5    # "editVolume":Landroid/widget/EditText;
    .local v16, "editVolume":Landroid/widget/EditText;
    move-object v5, v1

    .line 233
    .end local v0    # "names":[Ljava/lang/String;
    .local v5, "names":[Ljava/lang/String;
    :try_start_5
    new-instance v0, Lcom/poverka/httpFileClient/activity/ImageActivity$1;

    iget-object v3, v13, Lcom/poverka/httpFileClient/activity/ImageActivity;->activity:Landroid/app/Activity;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    const v17, 0x7f0c005f

    move-object/from16 v2, v28

    move-object/from16 v28, v1

    .end local v1    # "array":[Ljava/lang/String;
    .local v2, "deviceType":Lorg/json/JSONObject;
    .local v28, "array":[Ljava/lang/String;
    move-object v1, v0

    move-object/from16 v31, v2

    .end local v2    # "deviceType":Lorg/json/JSONObject;
    .local v31, "deviceType":Lorg/json/JSONObject;
    move-object/from16 v2, p0

    const/4 v15, 0x0

    move/from16 v4, v17

    move v6, v7

    move/from16 v17, v7

    .end local v7    # "textSHeight":I
    .local v17, "textSHeight":I
    move/from16 v7, v22

    move/from16 v32, v22

    move-object/from16 v22, v8

    .end local v8    # "textType":Landroid/widget/TextView;
    .local v22, "textType":Landroid/widget/TextView;
    .local v32, "textLHeight":I
    move/from16 v8, v23

    move/from16 v33, v9

    .end local v9    # "editWidth":I
    .local v33, "editWidth":I
    :try_start_6
    invoke-direct/range {v1 .. v9}, Lcom/poverka/httpFileClient/activity/ImageActivity$1;-><init>(Lcom/poverka/httpFileClient/activity/ImageActivity;Landroid/content/Context;I[Ljava/lang/String;IIII)V

    .line 247
    .local v0, "adapterName":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v14, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    .line 249
    move-object/from16 v9, v31

    .end local v31    # "deviceType":Lorg/json/JSONObject;
    .local v9, "deviceType":Lorg/json/JSONObject;
    if-eqz v9, :cond_0

    .line 250
    :try_start_7
    const-string v1, "name"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v14, v1}, Landroid/widget/Spinner;->setSelection(I)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    .line 252
    .end local v0    # "adapterName":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v5    # "names":[Ljava/lang/String;
    .end local v28    # "array":[Ljava/lang/String;
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 254
    :cond_0
    :goto_0
    goto/16 :goto_2

    .line 252
    .end local v9    # "deviceType":Lorg/json/JSONObject;
    .restart local v31    # "deviceType":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object/from16 v9, v31

    .end local v31    # "deviceType":Lorg/json/JSONObject;
    .restart local v9    # "deviceType":Lorg/json/JSONObject;
    goto/16 :goto_1

    .end local v17    # "textSHeight":I
    .end local v32    # "textLHeight":I
    .end local v33    # "editWidth":I
    .restart local v7    # "textSHeight":I
    .restart local v8    # "textType":Landroid/widget/TextView;
    .local v9, "editWidth":I
    .local v22, "textLHeight":I
    .local v28, "deviceType":Lorg/json/JSONObject;
    :catch_2
    move-exception v0

    move/from16 v17, v7

    move/from16 v33, v9

    move/from16 v32, v22

    move-object/from16 v9, v28

    const/4 v15, 0x0

    move-object/from16 v22, v8

    .end local v7    # "textSHeight":I
    .end local v8    # "textType":Landroid/widget/TextView;
    .end local v28    # "deviceType":Lorg/json/JSONObject;
    .local v9, "deviceType":Lorg/json/JSONObject;
    .restart local v17    # "textSHeight":I
    .local v22, "textType":Landroid/widget/TextView;
    .restart local v32    # "textLHeight":I
    .restart local v33    # "editWidth":I
    goto/16 :goto_1

    .end local v16    # "editVolume":Landroid/widget/EditText;
    .end local v17    # "textSHeight":I
    .end local v32    # "textLHeight":I
    .end local v33    # "editWidth":I
    .local v5, "editVolume":Landroid/widget/EditText;
    .restart local v7    # "textSHeight":I
    .restart local v8    # "textType":Landroid/widget/TextView;
    .local v9, "editWidth":I
    .local v22, "textLHeight":I
    .restart local v28    # "deviceType":Lorg/json/JSONObject;
    :catch_3
    move-exception v0

    move-object/from16 v16, v5

    move/from16 v17, v7

    move/from16 v33, v9

    move/from16 v32, v22

    move-object/from16 v9, v28

    const/4 v15, 0x0

    move-object/from16 v22, v8

    .end local v5    # "editVolume":Landroid/widget/EditText;
    .end local v7    # "textSHeight":I
    .end local v8    # "textType":Landroid/widget/TextView;
    .end local v28    # "deviceType":Lorg/json/JSONObject;
    .local v9, "deviceType":Lorg/json/JSONObject;
    .restart local v16    # "editVolume":Landroid/widget/EditText;
    .restart local v17    # "textSHeight":I
    .local v22, "textType":Landroid/widget/TextView;
    .restart local v32    # "textLHeight":I
    .restart local v33    # "editWidth":I
    goto :goto_1

    .end local v16    # "editVolume":Landroid/widget/EditText;
    .end local v17    # "textSHeight":I
    .end local v30    # "textVolume":Landroid/widget/TextView;
    .end local v32    # "textLHeight":I
    .end local v33    # "editWidth":I
    .restart local v3    # "textVolume":Landroid/widget/TextView;
    .restart local v5    # "editVolume":Landroid/widget/EditText;
    .restart local v7    # "textSHeight":I
    .restart local v8    # "textType":Landroid/widget/TextView;
    .local v9, "editWidth":I
    .local v22, "textLHeight":I
    .restart local v28    # "deviceType":Lorg/json/JSONObject;
    :catch_4
    move-exception v0

    move-object/from16 v30, v3

    move-object/from16 v16, v5

    move/from16 v17, v7

    move/from16 v33, v9

    move/from16 v32, v22

    move-object/from16 v9, v28

    const/4 v15, 0x0

    move-object/from16 v22, v8

    .end local v3    # "textVolume":Landroid/widget/TextView;
    .end local v5    # "editVolume":Landroid/widget/EditText;
    .end local v7    # "textSHeight":I
    .end local v8    # "textType":Landroid/widget/TextView;
    .end local v28    # "deviceType":Lorg/json/JSONObject;
    .local v9, "deviceType":Lorg/json/JSONObject;
    .restart local v16    # "editVolume":Landroid/widget/EditText;
    .restart local v17    # "textSHeight":I
    .local v22, "textType":Landroid/widget/TextView;
    .restart local v30    # "textVolume":Landroid/widget/TextView;
    .restart local v32    # "textLHeight":I
    .restart local v33    # "editWidth":I
    goto :goto_1

    .end local v16    # "editVolume":Landroid/widget/EditText;
    .end local v17    # "textSHeight":I
    .end local v29    # "textNumber":Landroid/widget/TextView;
    .end local v30    # "textVolume":Landroid/widget/TextView;
    .end local v32    # "textLHeight":I
    .end local v33    # "editWidth":I
    .local v2, "textNumber":Landroid/widget/TextView;
    .restart local v3    # "textVolume":Landroid/widget/TextView;
    .restart local v5    # "editVolume":Landroid/widget/EditText;
    .restart local v7    # "textSHeight":I
    .restart local v8    # "textType":Landroid/widget/TextView;
    .local v9, "editWidth":I
    .local v22, "textLHeight":I
    .restart local v28    # "deviceType":Lorg/json/JSONObject;
    :catch_5
    move-exception v0

    move-object/from16 v29, v2

    move-object/from16 v30, v3

    move-object/from16 v16, v5

    move/from16 v17, v7

    move/from16 v33, v9

    move/from16 v32, v22

    move-object/from16 v9, v28

    const/4 v15, 0x0

    move-object/from16 v22, v8

    .end local v2    # "textNumber":Landroid/widget/TextView;
    .end local v3    # "textVolume":Landroid/widget/TextView;
    .end local v5    # "editVolume":Landroid/widget/EditText;
    .end local v7    # "textSHeight":I
    .end local v8    # "textType":Landroid/widget/TextView;
    .end local v28    # "deviceType":Lorg/json/JSONObject;
    .local v9, "deviceType":Lorg/json/JSONObject;
    .restart local v16    # "editVolume":Landroid/widget/EditText;
    .restart local v17    # "textSHeight":I
    .local v22, "textType":Landroid/widget/TextView;
    .restart local v29    # "textNumber":Landroid/widget/TextView;
    .restart local v30    # "textVolume":Landroid/widget/TextView;
    .restart local v32    # "textLHeight":I
    .restart local v33    # "editWidth":I
    goto :goto_1

    .end local v16    # "editVolume":Landroid/widget/EditText;
    .end local v17    # "textSHeight":I
    .end local v29    # "textNumber":Landroid/widget/TextView;
    .end local v30    # "textVolume":Landroid/widget/TextView;
    .end local v32    # "textLHeight":I
    .end local v33    # "editWidth":I
    .local v1, "deviceType":Lorg/json/JSONObject;
    .restart local v2    # "textNumber":Landroid/widget/TextView;
    .restart local v3    # "textVolume":Landroid/widget/TextView;
    .restart local v5    # "editVolume":Landroid/widget/EditText;
    .restart local v7    # "textSHeight":I
    .restart local v8    # "textType":Landroid/widget/TextView;
    .local v9, "editWidth":I
    .local v22, "textLHeight":I
    :catch_6
    move-exception v0

    move-object/from16 v29, v2

    move-object/from16 v30, v3

    move-object/from16 v16, v5

    move/from16 v17, v7

    move/from16 v33, v9

    move/from16 v32, v22

    const/4 v15, 0x0

    move-object v9, v1

    move-object/from16 v22, v8

    .end local v1    # "deviceType":Lorg/json/JSONObject;
    .end local v2    # "textNumber":Landroid/widget/TextView;
    .end local v3    # "textVolume":Landroid/widget/TextView;
    .end local v5    # "editVolume":Landroid/widget/EditText;
    .end local v7    # "textSHeight":I
    .end local v8    # "textType":Landroid/widget/TextView;
    .local v9, "deviceType":Lorg/json/JSONObject;
    .restart local v16    # "editVolume":Landroid/widget/EditText;
    .restart local v17    # "textSHeight":I
    .local v22, "textType":Landroid/widget/TextView;
    .restart local v29    # "textNumber":Landroid/widget/TextView;
    .restart local v30    # "textVolume":Landroid/widget/TextView;
    .restart local v32    # "textLHeight":I
    .restart local v33    # "editWidth":I
    goto :goto_1

    .end local v16    # "editVolume":Landroid/widget/EditText;
    .end local v17    # "textSHeight":I
    .end local v27    # "paramsC":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .end local v29    # "textNumber":Landroid/widget/TextView;
    .end local v30    # "textVolume":Landroid/widget/TextView;
    .end local v32    # "textLHeight":I
    .end local v33    # "editWidth":I
    .restart local v1    # "deviceType":Lorg/json/JSONObject;
    .restart local v2    # "textNumber":Landroid/widget/TextView;
    .restart local v3    # "textVolume":Landroid/widget/TextView;
    .restart local v5    # "editVolume":Landroid/widget/EditText;
    .restart local v7    # "textSHeight":I
    .restart local v8    # "textType":Landroid/widget/TextView;
    .local v9, "editWidth":I
    .restart local v15    # "paramsC":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .local v22, "textLHeight":I
    :catch_7
    move-exception v0

    move-object/from16 v29, v2

    move-object/from16 v30, v3

    move-object/from16 v16, v5

    move/from16 v17, v7

    move/from16 v33, v9

    move-object/from16 v27, v15

    move/from16 v32, v22

    const/4 v15, 0x0

    move-object v9, v1

    move-object/from16 v22, v8

    .line 253
    .end local v1    # "deviceType":Lorg/json/JSONObject;
    .end local v2    # "textNumber":Landroid/widget/TextView;
    .end local v3    # "textVolume":Landroid/widget/TextView;
    .end local v5    # "editVolume":Landroid/widget/EditText;
    .end local v7    # "textSHeight":I
    .end local v8    # "textType":Landroid/widget/TextView;
    .end local v15    # "paramsC":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .local v0, "e":Lorg/json/JSONException;
    .local v9, "deviceType":Lorg/json/JSONObject;
    .restart local v16    # "editVolume":Landroid/widget/EditText;
    .restart local v17    # "textSHeight":I
    .local v22, "textType":Landroid/widget/TextView;
    .restart local v27    # "paramsC":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .restart local v29    # "textNumber":Landroid/widget/TextView;
    .restart local v30    # "textVolume":Landroid/widget/TextView;
    .restart local v32    # "textLHeight":I
    .restart local v33    # "editWidth":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 256
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2
    new-instance v0, Lcom/poverka/httpFileClient/activity/ImageActivity$2;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v14

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, v17

    move/from16 v7, v32

    move/from16 v8, v23

    move-object/from16 v28, v9

    .end local v9    # "deviceType":Lorg/json/JSONObject;
    .restart local v28    # "deviceType":Lorg/json/JSONObject;
    move/from16 v9, v33

    move/from16 v34, v19

    move-object/from16 v19, v10

    .end local v10    # "editYear":Landroid/widget/EditText;
    .local v19, "editYear":Landroid/widget/EditText;
    .local v34, "buttonHeight":I
    move-object v10, v12

    move-object/from16 v31, v20

    move-object/from16 v20, v11

    .end local v11    # "textDN":Landroid/widget/TextView;
    .local v20, "textDN":Landroid/widget/TextView;
    .local v31, "buttonSave":Landroid/widget/Button;
    move-object/from16 v11, v28

    invoke-direct/range {v1 .. v11}, Lcom/poverka/httpFileClient/activity/ImageActivity$2;-><init>(Lcom/poverka/httpFileClient/activity/ImageActivity;Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;IIIILandroid/widget/Spinner;Lorg/json/JSONObject;)V

    invoke-virtual {v14, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 301
    new-instance v0, Lcom/poverka/httpFileClient/activity/ImageActivity$3;

    move-object v1, v0

    move-object v3, v12

    move-object v4, v14

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, v17

    move/from16 v8, v32

    move/from16 v9, v23

    move/from16 v10, v33

    move-object/from16 v11, v24

    move-object v15, v12

    move-object/from16 v35, v21

    .end local v12    # "spinnerDN":Landroid/widget/Spinner;
    .end local v21    # "textImageName":Landroid/widget/TextView;
    .local v15, "spinnerDN":Landroid/widget/Spinner;
    .local v35, "textImageName":Landroid/widget/TextView;
    move-object/from16 v12, v28

    invoke-direct/range {v1 .. v12}, Lcom/poverka/httpFileClient/activity/ImageActivity$3;-><init>(Lcom/poverka/httpFileClient/activity/ImageActivity;Landroid/widget/Spinner;Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;IIIILandroid/widget/Spinner;Lorg/json/JSONObject;)V

    invoke-virtual {v15, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 346
    .end local v14    # "spinnerName":Landroid/widget/Spinner;
    .end local v15    # "spinnerDN":Landroid/widget/Spinner;
    .end local v16    # "editVolume":Landroid/widget/EditText;
    .end local v19    # "editYear":Landroid/widget/EditText;
    .end local v20    # "textDN":Landroid/widget/TextView;
    .end local v22    # "textType":Landroid/widget/TextView;
    .end local v24    # "spinnerVendor":Landroid/widget/Spinner;
    .end local v25    # "textYear":Landroid/widget/TextView;
    .end local v26    # "editNumber":Landroid/widget/EditText;
    .end local v27    # "paramsC":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .end local v28    # "deviceType":Lorg/json/JSONObject;
    .end local v29    # "textNumber":Landroid/widget/TextView;
    .end local v30    # "textVolume":Landroid/widget/TextView;
    move/from16 v10, p5

    move/from16 v6, v17

    move/from16 v5, v33

    move-object/from16 v4, v35

    goto/16 :goto_4

    .end local v17    # "textSHeight":I
    .end local v18    # "paramsL":Landroid/widget/LinearLayout$LayoutParams;
    .end local v23    # "marginHeight":I
    .end local v31    # "buttonSave":Landroid/widget/Button;
    .end local v32    # "textLHeight":I
    .end local v33    # "editWidth":I
    .end local v34    # "buttonHeight":I
    .end local v35    # "textImageName":Landroid/widget/TextView;
    .local v4, "paramsL":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v6    # "marginHeight":I
    .restart local v7    # "textSHeight":I
    .local v8, "textLHeight":I
    .local v9, "editWidth":I
    .local v10, "buttonHeight":I
    .local v11, "buttonSave":Landroid/widget/Button;
    .local v12, "textImageName":Landroid/widget/TextView;
    :cond_1
    move-object/from16 v18, v4

    move/from16 v23, v6

    move/from16 v17, v7

    move/from16 v32, v8

    move/from16 v33, v9

    move/from16 v34, v10

    move-object/from16 v31, v11

    move-object/from16 v35, v12

    .end local v4    # "paramsL":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "marginHeight":I
    .end local v7    # "textSHeight":I
    .end local v8    # "textLHeight":I
    .end local v9    # "editWidth":I
    .end local v10    # "buttonHeight":I
    .end local v11    # "buttonSave":Landroid/widget/Button;
    .end local v12    # "textImageName":Landroid/widget/TextView;
    .restart local v17    # "textSHeight":I
    .restart local v18    # "paramsL":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v23    # "marginHeight":I
    .restart local v31    # "buttonSave":Landroid/widget/Button;
    .restart local v32    # "textLHeight":I
    .restart local v33    # "editWidth":I
    .restart local v34    # "buttonHeight":I
    .restart local v35    # "textImageName":Landroid/widget/TextView;
    iget-object v0, v13, Lcom/poverka/httpFileClient/activity/ImageActivity;->layoutType:Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;

    sget-object v1, Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;->MEASUREMENT:Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;

    if-ne v0, v1, :cond_3

    .line 347
    iget v0, v13, Lcom/poverka/httpFileClient/activity/ImageActivity;->clicked:I

    add-int/lit8 v1, v0, -0x1

    div-int/lit8 v1, v1, 0x2

    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 348
    .local v1, "meas":I
    sub-int/2addr v0, v3

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 349
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v4, v13, Lcom/poverka/httpFileClient/activity/ImageActivity;->activity:Landroid/app/Activity;

    const v5, 0x7f0f0163

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v4, v35

    .end local v35    # "textImageName":Landroid/widget/TextView;
    .local v4, "textImageName":Landroid/widget/TextView;
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 351
    .end local v4    # "textImageName":Landroid/widget/TextView;
    .restart local v35    # "textImageName":Landroid/widget/TextView;
    :cond_2
    move-object/from16 v4, v35

    const/4 v7, 0x0

    .end local v35    # "textImageName":Landroid/widget/TextView;
    .restart local v4    # "textImageName":Landroid/widget/TextView;
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v5, v13, Lcom/poverka/httpFileClient/activity/ImageActivity;->activity:Landroid/app/Activity;

    const v6, 0x7f0f0080

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-static {v0, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    :goto_3
    iget-object v0, v13, Lcom/poverka/httpFileClient/activity/ImageActivity;->view:Landroid/view/View;

    const v3, 0x7f090171

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 354
    iget-object v0, v13, Lcom/poverka/httpFileClient/activity/ImageActivity;->view:Landroid/view/View;

    const v2, 0x7f09019d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 355
    .local v0, "textLiter":Landroid/widget/TextView;
    iget-object v2, v13, Lcom/poverka/httpFileClient/activity/ImageActivity;->view:Landroid/view/View;

    const v3, 0x7f0900a2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 357
    .local v2, "editLiter":Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 358
    .local v3, "paramsC":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    move/from16 v5, v33

    .end local v33    # "editWidth":I
    .local v5, "editWidth":I
    iput v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 359
    invoke-virtual {v2}, Landroid/widget/EditText;->requestLayout()V

    .line 361
    move/from16 v6, v17

    .end local v17    # "textSHeight":I
    .local v6, "textSHeight":I
    int-to-float v7, v6

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 362
    int-to-float v7, v6

    invoke-virtual {v2, v8, v7}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 364
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move/from16 v10, p5

    int-to-float v11, v10

    const/high16 v12, 0x447a0000    # 1000.0f

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v8

    const-string v8, "%.2f"

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 366
    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_4

    .line 346
    .end local v0    # "textLiter":Landroid/widget/TextView;
    .end local v1    # "meas":I
    .end local v2    # "editLiter":Landroid/widget/EditText;
    .end local v3    # "paramsC":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .end local v4    # "textImageName":Landroid/widget/TextView;
    .end local v5    # "editWidth":I
    .end local v6    # "textSHeight":I
    .restart local v17    # "textSHeight":I
    .restart local v33    # "editWidth":I
    .restart local v35    # "textImageName":Landroid/widget/TextView;
    :cond_3
    move/from16 v10, p5

    move/from16 v6, v17

    move/from16 v5, v33

    move-object/from16 v4, v35

    .line 369
    .end local v17    # "textSHeight":I
    .end local v33    # "editWidth":I
    .end local v35    # "textImageName":Landroid/widget/TextView;
    .restart local v4    # "textImageName":Landroid/widget/TextView;
    .restart local v5    # "editWidth":I
    .restart local v6    # "textSHeight":I
    :goto_4
    invoke-virtual/range {v31 .. v31}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 370
    .end local v18    # "paramsL":Landroid/widget/LinearLayout$LayoutParams;
    .local v0, "paramsL":Landroid/widget/LinearLayout$LayoutParams;
    move/from16 v1, v34

    .end local v34    # "buttonHeight":I
    .local v1, "buttonHeight":I
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 371
    move/from16 v2, v23

    .end local v23    # "marginHeight":I
    .local v2, "marginHeight":I
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 372
    invoke-virtual/range {v31 .. v31}, Landroid/widget/Button;->requestLayout()V

    .line 374
    move/from16 v3, v32

    .end local v32    # "textLHeight":I
    .local v3, "textLHeight":I
    int-to-float v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 375
    int-to-float v7, v6

    move-object/from16 v9, v31

    .end local v31    # "buttonSave":Landroid/widget/Button;
    .local v9, "buttonSave":Landroid/widget/Button;
    invoke-virtual {v9, v8, v7}, Landroid/widget/Button;->setTextSize(IF)V

    .line 377
    new-instance v7, Lcom/poverka/httpFileClient/activity/ImageActivity$4;

    move-object/from16 v8, p6

    move-object/from16 v11, p7

    invoke-direct {v7, v13, v8, v11}, Lcom/poverka/httpFileClient/activity/ImageActivity$4;-><init>(Lcom/poverka/httpFileClient/activity/ImageActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    return-void
.end method
