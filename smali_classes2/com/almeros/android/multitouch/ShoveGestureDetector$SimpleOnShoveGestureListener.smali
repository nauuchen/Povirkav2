.class public Lcom/almeros/android/multitouch/ShoveGestureDetector$SimpleOnShoveGestureListener;
.super Ljava/lang/Object;
.source "ShoveGestureDetector.java"

# interfaces
.implements Lcom/almeros/android/multitouch/ShoveGestureDetector$OnShoveGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/almeros/android/multitouch/ShoveGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnShoveGestureListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShove(Lcom/almeros/android/multitouch/ShoveGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Lcom/almeros/android/multitouch/ShoveGestureDetector;

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public onShoveBegin(Lcom/almeros/android/multitouch/ShoveGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Lcom/almeros/android/multitouch/ShoveGestureDetector;

    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public onShoveEnd(Lcom/almeros/android/multitouch/ShoveGestureDetector;)V
    .locals 0
    .param p1, "detector"    # Lcom/almeros/android/multitouch/ShoveGestureDetector;

    .line 58
    return-void
.end method
