.class Lorg/apache/poi/hpsf/Date;
.super Ljava/lang/Object;
.source "Date.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final SIZE:I = 0x8


# instance fields
.field private final _value:[B


# direct methods
.method constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hpsf/Date;->_value:[B

    .line 28
    return-void
.end method


# virtual methods
.method read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    .locals 1
    .param p1, "lei"    # Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    .line 31
    iget-object v0, p0, Lorg/apache/poi/hpsf/Date;->_value:[B

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readFully([B)V

    .line 32
    return-void
.end method
