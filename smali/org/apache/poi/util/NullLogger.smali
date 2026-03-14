.class public Lorg/apache/poi/util/NullLogger;
.super Lorg/apache/poi/util/POILogger;
.source "NullLogger.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/apache/poi/util/POILogger;-><init>()V

    return-void
.end method


# virtual methods
.method protected _log(ILjava/lang/Object;)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "obj1"    # Ljava/lang/Object;

    .line 43
    return-void
.end method

.method protected _log(ILjava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "obj1"    # Ljava/lang/Object;
    .param p3, "exception"    # Ljava/lang/Throwable;

    .line 55
    return-void
.end method

.method public check(I)Z
    .locals 1
    .param p1, "level"    # I

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Ljava/lang/String;)V
    .locals 0
    .param p1, "cat"    # Ljava/lang/String;

    .line 31
    return-void
.end method

.method public varargs log(I[Ljava/lang/Object;)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "objs"    # [Ljava/lang/Object;

    .line 67
    return-void
.end method
