.class public final Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePartOutputStream;
.super Ljava/io/OutputStream;
.source "MemoryPackagePartOutputStream.java"


# instance fields
.field private _buff:Ljava/io/ByteArrayOutputStream;

.field private _part:Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;


# direct methods
.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;)V
    .locals 1
    .param p1, "part"    # Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;

    .line 35
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePartOutputStream;->_part:Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;

    .line 37
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePartOutputStream;->_buff:Ljava/io/ByteArrayOutputStream;

    .line 38
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePartOutputStream;->flush()V

    .line 52
    return-void
.end method

.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePartOutputStream;->_buff:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 62
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePartOutputStream;->_part:Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;

    iget-object v0, v0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;->data:[B

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePartOutputStream;->_part:Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;

    iget-object v0, v0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;->data:[B

    array-length v0, v0

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePartOutputStream;->_buff:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 65
    .local v0, "newArray":[B
    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePartOutputStream;->_part:Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;

    iget-object v1, v1, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;->data:[B

    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePartOutputStream;->_part:Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;

    iget-object v2, v2, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;->data:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePartOutputStream;->_buff:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 69
    .local v1, "buffArr":[B
    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePartOutputStream;->_part:Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;

    iget-object v2, v2, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;->data:[B

    array-length v2, v2

    array-length v4, v1

    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePartOutputStream;->_part:Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;

    iput-object v0, v2, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;->data:[B

    .line 74
    .end local v0    # "newArray":[B
    .end local v1    # "buffArr":[B
    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePartOutputStream;->_part:Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePartOutputStream;->_buff:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;->data:[B

    .line 83
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePartOutputStream;->_buff:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 84
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I

    .line 42
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePartOutputStream;->_buff:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 43
    return-void
.end method

.method public write([B)V
    .locals 1
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePartOutputStream;->_buff:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 94
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 88
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePartOutputStream;->_buff:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 89
    return-void
.end method
