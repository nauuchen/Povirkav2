.class public Lorg/apache/poi/hpsf/HPSFRuntimeException;
.super Ljava/lang/RuntimeException;
.source "HPSFRuntimeException.java"


# static fields
.field private static final serialVersionUID:J = -0x6c4e57bc3addbe77L


# instance fields
.field private reason:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/Throwable;

    .line 83
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 84
    iput-object p2, p0, Lorg/apache/poi/hpsf/HPSFRuntimeException;->reason:Ljava/lang/Throwable;

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/Throwable;

    .line 67
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/apache/poi/hpsf/HPSFRuntimeException;->reason:Ljava/lang/Throwable;

    .line 69
    return-void
.end method


# virtual methods
.method public getReason()Ljava/lang/Throwable;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/apache/poi/hpsf/HPSFRuntimeException;->reason:Ljava/lang/Throwable;

    return-object v0
.end method
