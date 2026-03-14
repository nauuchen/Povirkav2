.class public Lorg/apache/poi/util/RecordFormatException;
.super Ljava/lang/RuntimeException;
.source "RecordFormatException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/String;
    .param p2, "thr"    # Ljava/lang/Throwable;

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "thr"    # Ljava/lang/Throwable;

    .line 40
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 41
    return-void
.end method

.method public static check(ZLjava/lang/String;)V
    .locals 1
    .param p0, "assertTrue"    # Z
    .param p1, "message"    # Ljava/lang/String;

    .line 52
    if-eqz p0, :cond_0

    .line 55
    return-void

    .line 53
    :cond_0
    new-instance v0, Lorg/apache/poi/util/RecordFormatException;

    invoke-direct {v0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
