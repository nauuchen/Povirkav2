.class public Lorg/apache/poi/util/DocumentFormatException;
.super Ljava/lang/RuntimeException;
.source "DocumentFormatException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/String;
    .param p2, "thr"    # Ljava/lang/Throwable;

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "thr"    # Ljava/lang/Throwable;

    .line 37
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 38
    return-void
.end method

.method public static check(ZLjava/lang/String;)V
    .locals 1
    .param p0, "assertTrue"    # Z
    .param p1, "message"    # Ljava/lang/String;

    .line 49
    if-eqz p0, :cond_0

    .line 52
    return-void

    .line 50
    :cond_0
    new-instance v0, Lorg/apache/poi/util/DocumentFormatException;

    invoke-direct {v0, p1}, Lorg/apache/poi/util/DocumentFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
