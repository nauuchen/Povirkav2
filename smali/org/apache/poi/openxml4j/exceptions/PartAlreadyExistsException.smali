.class public final Lorg/apache/poi/openxml4j/exceptions/PartAlreadyExistsException;
.super Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;
.source "PartAlreadyExistsException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method
