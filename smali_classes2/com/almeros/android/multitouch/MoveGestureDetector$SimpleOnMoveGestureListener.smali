.class public Lcom/almeros/android/multitouch/MoveGestureDetector$SimpleOnMoveGestureListener;
.super Ljava/lang/Object;
.source "MoveGestureDetector.java"

# interfaces
.implements Lcom/almeros/android/multitouch/MoveGestureDetector$OnMoveGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/almeros/android/multitouch/MoveGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnMoveGestureListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMove(Lcom/almeros/android/multitouch/MoveGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Lcom/almeros/android/multitouch/MoveGestureDetector;

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public onMoveBegin(Lcom/almeros/android/multitouch/MoveGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Lcom/almeros/android/multitouch/MoveGestureDetector;

    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public onMoveEnd(Lcom/almeros/android/multitouch/MoveGestureDetector;)V
    .locals 0
    .param p1, "detector"    # Lcom/almeros/android/multitouch/MoveGestureDetector;

    .line 59
    return-void
.end method
