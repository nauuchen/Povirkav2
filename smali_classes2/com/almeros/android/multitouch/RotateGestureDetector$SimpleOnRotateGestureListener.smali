.class public Lcom/almeros/android/multitouch/RotateGestureDetector$SimpleOnRotateGestureListener;
.super Ljava/lang/Object;
.source "RotateGestureDetector.java"

# interfaces
.implements Lcom/almeros/android/multitouch/RotateGestureDetector$OnRotateGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/almeros/android/multitouch/RotateGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnRotateGestureListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotate(Lcom/almeros/android/multitouch/RotateGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Lcom/almeros/android/multitouch/RotateGestureDetector;

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public onRotateBegin(Lcom/almeros/android/multitouch/RotateGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Lcom/almeros/android/multitouch/RotateGestureDetector;

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public onRotateEnd(Lcom/almeros/android/multitouch/RotateGestureDetector;)V
    .locals 0
    .param p1, "detector"    # Lcom/almeros/android/multitouch/RotateGestureDetector;

    .line 57
    return-void
.end method
