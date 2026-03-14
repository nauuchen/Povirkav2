.class public Lorg/apache/poi/hpsf/MarkUnsupportedException;
.super Lorg/apache/poi/hpsf/HPSFException;
.source "MarkUnsupportedException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/apache/poi/hpsf/HPSFException;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1}, Lorg/apache/poi/hpsf/HPSFException;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/Throwable;

    .line 66
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hpsf/HPSFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/Throwable;

    .line 54
    invoke-direct {p0, p1}, Lorg/apache/poi/hpsf/HPSFException;-><init>(Ljava/lang/Throwable;)V

    .line 55
    return-void
.end method
