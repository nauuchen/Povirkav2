.class public abstract Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ChunkedCipherOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream$EncryptedPackageWriter;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;

.field private static final STREAMING:I = -0x1


# instance fields
.field private final chunk:[B

.field private final chunkBits:I

.field private final chunkSize:I

.field private cipher:Ljavax/crypto/Cipher;

.field private final dir:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

.field private final fileOut:Ljava/io/File;

.field private isClosed:Z

.field private final plainByteFlags:Ljava/util/BitSet;

.field private pos:J

.field private totalPos:J

.field private written:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 3
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "chunkSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->isClosed:Z

    .line 85
    iput p2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunkSize:I

    .line 86
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    const/16 v1, 0x1000

    goto :goto_0

    :cond_0
    move v1, p2

    .line 87
    .local v1, "cs":I
    :goto_0
    new-array v2, v1, [B

    iput-object v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunk:[B

    .line 88
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->plainByteFlags:Ljava/util/BitSet;

    .line 89
    add-int/lit8 v2, v1, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    iput v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunkBits:I

    .line 90
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->fileOut:Ljava/io/File;

    .line 91
    iput-object v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->dir:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 92
    invoke-virtual {p0, v2, v0, v0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->initCipherForBlock(Ljavax/crypto/Cipher;IZ)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    .line 93
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;I)V
    .locals 5
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .param p2, "chunkSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 67
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->isClosed:Z

    .line 71
    iput p2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunkSize:I

    .line 72
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    const/16 v2, 0x1000

    goto :goto_0

    :cond_0
    move v2, p2

    .line 73
    .local v2, "cs":I
    :goto_0
    new-array v3, v2, [B

    iput-object v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunk:[B

    .line 74
    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3, v2}, Ljava/util/BitSet;-><init>(I)V

    iput-object v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->plainByteFlags:Ljava/util/BitSet;

    .line 75
    add-int/lit8 v3, v2, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    iput v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunkBits:I

    .line 76
    const-string v3, "encrypted_package"

    const-string v4, "crypt"

    invoke-static {v3, v4}, Lorg/apache/poi/util/TempFile;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->fileOut:Ljava/io/File;

    .line 77
    invoke-virtual {v3}, Ljava/io/File;->deleteOnExit()V

    .line 78
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->out:Ljava/io/OutputStream;

    .line 79
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->dir:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 80
    invoke-virtual {p0, v0, v1, v1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->initCipherForBlock(Ljavax/crypto/Cipher;IZ)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    .line 81
    return-void
.end method

.method static synthetic access$100(Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;

    .line 48
    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->pos:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;

    .line 48
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->fileOut:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$300()Lorg/apache/poi/util/POILogger;
    .locals 1

    .line 48
    sget-object v0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->LOG:Lorg/apache/poi/util/POILogger;

    return-object v0
.end method


# virtual methods
.method protected abstract calculateChecksum(Ljava/io/File;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    iget-boolean v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->isClosed:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 229
    sget-object v0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "ChunkedCipherOutputStream was already closed - ignoring"

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 230
    return-void

    .line 233
    :cond_0
    iput-boolean v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->isClosed:Z

    .line 236
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->writeChunk(Z)V

    .line 238
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 240
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->fileOut:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 241
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    long-to-int v1, v0

    .line 242
    .local v1, "oleStreamSize":I
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->fileOut:Ljava/io/File;

    iget-wide v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->pos:J

    long-to-int v3, v2

    invoke-virtual {p0, v0, v3}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->calculateChecksum(Ljava/io/File;I)V

    .line 243
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->dir:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    const-string v2, "EncryptedPackage"

    new-instance v3, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream$EncryptedPackageWriter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream$EncryptedPackageWriter;-><init>(Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream$1;)V

    invoke-virtual {v0, v2, v1, v3}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/POIFSWriterListener;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 244
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->dir:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->fileOut:Ljava/io/File;

    invoke-virtual {p0, v0, v2}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .end local v1    # "oleStreamSize":I
    :cond_1
    nop

    .line 249
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected abstract createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method protected getChunk()[B
    .locals 1

    .line 252
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunk:[B

    return-object v0
.end method

.method protected getChunkMask()I
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunk:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected getPlainByteFlags()Ljava/util/BitSet;
    .locals 1

    .line 256
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->plainByteFlags:Ljava/util/BitSet;

    return-object v0
.end method

.method protected getPos()J
    .locals 2

    .line 260
    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->pos:J

    return-wide v0
.end method

.method protected getTotalPos()J
    .locals 2

    .line 264
    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->totalPos:J

    return-wide v0
.end method

.method public final initCipherForBlock(IZ)Ljavax/crypto/Cipher;
    .locals 1
    .param p1, "block"    # I
    .param p2, "lastChunk"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->initCipherForBlock(Ljavax/crypto/Cipher;IZ)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method protected abstract initCipherForBlock(Ljavax/crypto/Cipher;IZ)Ljavax/crypto/Cipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method protected invokeCipher(IZ)I
    .locals 5
    .param p1, "posInChunk"    # I
    .param p2, "doFinal"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->plainByteFlags:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunk:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 215
    .local v0, "plain":[B
    :goto_0
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunk:[B

    if-eqz p2, :cond_1

    invoke-virtual {v2, v3, v1, p1, v3}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v3, v1, p1, v3}, Ljavax/crypto/Cipher;->update([BII[B)I

    move-result v2

    .line 219
    .local v2, "ciLen":I
    :goto_1
    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->plainByteFlags:Ljava/util/BitSet;

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_2

    if-ge v1, p1, :cond_2

    .line 220
    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunk:[B

    aget-byte v4, v0, v1

    aput-byte v4, v3, v1

    .line 219
    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->plainByteFlags:Ljava/util/BitSet;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_2

    .line 223
    .end local v1    # "i":I
    :cond_2
    return v2
.end method

.method public setNextRecordSize(IZ)V
    .locals 0
    .param p1, "recordSize"    # I
    .param p2, "isPlain"    # Z

    .line 275
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->write([B)V

    .line 111
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->write([BII)V

    .line 116
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->write([BIIZ)V

    .line 121
    return-void
.end method

.method protected write([BIIZ)V
    .locals 9
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "writePlain"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    if-nez p3, :cond_0

    .line 129
    return-void

    .line 132
    :cond_0
    if-ltz p3, :cond_5

    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_5

    .line 136
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->getChunkMask()I

    move-result v0

    .line 137
    .local v0, "chunkMask":I
    :goto_0
    if-lez p3, :cond_4

    .line 138
    iget-wide v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->pos:J

    int-to-long v3, v0

    and-long/2addr v1, v3

    long-to-int v2, v1

    .line 139
    .local v2, "posInChunk":I
    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunk:[B

    array-length v1, v1

    sub-int/2addr v1, v2

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 140
    .local v1, "nextLen":I
    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunk:[B

    invoke-static {p1, p2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    if-eqz p4, :cond_1

    .line 142
    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->plainByteFlags:Ljava/util/BitSet;

    add-int v4, v2, v1

    invoke-virtual {v3, v2, v4}, Ljava/util/BitSet;->set(II)V

    .line 144
    :cond_1
    iget-wide v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->pos:J

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->pos:J

    .line 145
    iget-wide v5, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->totalPos:J

    int-to-long v7, v1

    add-long/2addr v5, v7

    iput-wide v5, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->totalPos:J

    .line 146
    add-int/2addr p2, v1

    .line 147
    sub-int/2addr p3, v1

    .line 148
    int-to-long v5, v0

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    .line 149
    if-lez p3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0, v3}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->writeChunk(Z)V

    .line 151
    .end local v1    # "nextLen":I
    .end local v2    # "posInChunk":I
    :cond_3
    goto :goto_0

    .line 152
    :cond_4
    return-void

    .line 133
    .end local v0    # "chunkMask":I
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "not enough bytes in your input buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected writeChunk(Z)V
    .locals 9
    .param p1, "continued"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->pos:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    iget-wide v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->totalPos:J

    iget-wide v6, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->written:J

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    goto :goto_2

    .line 163
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->getChunkMask()I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v0, v4

    long-to-int v1, v0

    .line 167
    .local v1, "posInChunk":I
    iget-wide v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->pos:J

    iget v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunkBits:I

    shr-long v6, v4, v0

    long-to-int v0, v6

    .line 169
    .local v0, "index":I
    if-nez v1, :cond_1

    .line 170
    add-int/lit8 v0, v0, -0x1

    .line 171
    iget-object v6, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunk:[B

    array-length v1, v6

    .line 172
    const/4 v6, 0x0

    .local v6, "lastChunk":Z
    goto :goto_0

    .line 175
    .end local v6    # "lastChunk":Z
    :cond_1
    const/4 v6, 0x1

    .line 180
    .restart local v6    # "lastChunk":Z
    :goto_0
    const/4 v7, 0x1

    .line 181
    .local v7, "doFinal":Z
    nop

    .line 184
    .local v4, "oldPos":J
    const/4 v8, 0x0

    :try_start_0
    iput-wide v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->pos:J

    .line 185
    iget v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunkSize:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 186
    if-eqz p1, :cond_3

    .line 187
    const/4 v7, 0x0

    goto :goto_1

    .line 190
    :cond_2
    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0, v2, v0, v6}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->initCipherForBlock(Ljavax/crypto/Cipher;IZ)Ljavax/crypto/Cipher;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    .line 192
    iput-wide v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->pos:J

    .line 194
    :cond_3
    :goto_1
    invoke-virtual {p0, v1, v7}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->invokeCipher(IZ)I

    move-result v2
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v4    # "oldPos":J
    .end local v7    # "doFinal":Z
    .local v2, "ciLen":I
    nop

    .line 199
    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunk:[B

    invoke-virtual {v3, v4, v8, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 200
    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->plainByteFlags:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->clear()V

    .line 201
    iget-wide v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->written:J

    int-to-long v7, v2

    add-long/2addr v3, v7

    iput-wide v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->written:J

    .line 202
    return-void

    .line 195
    .end local v2    # "ciLen":I
    :catch_0
    move-exception v2

    move v3, v8

    .line 196
    .local v2, "e":Ljava/security/GeneralSecurityException;
    .local v3, "ciLen":I
    new-instance v4, Ljava/io/IOException;

    const-string v5, "can\'t re-/initialize cipher"

    invoke-direct {v4, v5, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 160
    .end local v0    # "index":I
    .end local v1    # "posInChunk":I
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    .end local v3    # "ciLen":I
    .end local v6    # "lastChunk":Z
    :cond_4
    :goto_2
    return-void
.end method

.method public writePlain([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->write([BIIZ)V

    .line 125
    return-void
.end method
