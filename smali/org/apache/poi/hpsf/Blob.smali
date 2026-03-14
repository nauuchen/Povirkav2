.class Lorg/apache/poi/hpsf/Blob;
.super Ljava/lang/Object;
.source "Blob.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private _value:[B


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method read(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 2
    .param p1, "lei"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 29
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    .line 30
    .local v0, "size":I
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/poi/hpsf/Blob;->_value:[B

    .line 31
    if-lez v0, :cond_0

    .line 32
    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    .line 34
    :cond_0
    return-void
.end method
