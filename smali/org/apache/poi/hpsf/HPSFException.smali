.class public Lorg/apache/poi/hpsf/HPSFException;
.super Ljava/lang/Exception;
.source "HPSFException.java"


# instance fields
.field private reason:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/Throwable;

    .line 82
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 83
    iput-object p2, p0, Lorg/apache/poi/hpsf/HPSFException;->reason:Ljava/lang/Throwable;

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/Throwable;

    .line 66
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/apache/poi/hpsf/HPSFException;->reason:Ljava/lang/Throwable;

    .line 68
    return-void
.end method


# virtual methods
.method public getReason()Ljava/lang/Throwable;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/apache/poi/hpsf/HPSFException;->reason:Ljava/lang/Throwable;

    return-object v0
.end method
