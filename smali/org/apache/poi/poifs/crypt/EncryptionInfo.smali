.class public Lorg/apache/poi/poifs/crypt/EncryptionInfo;
.super Ljava/lang/Object;
.source "EncryptionInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final flagAES:Lorg/apache/poi/util/BitField;

.field public static final flagCryptoAPI:Lorg/apache/poi/util/BitField;

.field public static final flagDocProps:Lorg/apache/poi/util/BitField;

.field public static final flagExternal:Lorg/apache/poi/util/BitField;


# instance fields
.field private decryptor:Lorg/apache/poi/poifs/crypt/Decryptor;

.field private final encryptionFlags:I

.field private final encryptionMode:Lorg/apache/poi/poifs/crypt/EncryptionMode;

.field private encryptor:Lorg/apache/poi/poifs/crypt/Encryptor;

.field private header:Lorg/apache/poi/poifs/crypt/EncryptionHeader;

.field private verifier:Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

.field private final versionMajor:I

.field private final versionMinor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagCryptoAPI:Lorg/apache/poi/util/BitField;

    .line 62
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagDocProps:Lorg/apache/poi/util/BitField;

    .line 68
    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagExternal:Lorg/apache/poi/util/BitField;

    .line 74
    const/16 v0, 0x20

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagAES:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/EncryptionMode;)V
    .locals 7
    .param p1, "encryptionMode"    # Lorg/apache/poi/poifs/crypt/EncryptionMode;

    .line 162
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionMode;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/EncryptionMode;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 8
    .param p1, "encryptionMode"    # Lorg/apache/poi/poifs/crypt/EncryptionMode;
    .param p2, "cipherAlgorithm"    # Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .param p3, "hashAlgorithm"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .param p4, "keyBits"    # I
    .param p5, "blockSize"    # I
    .param p6, "chainingMode"    # Lorg/apache/poi/poifs/crypt/ChainingMode;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionMode:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    .line 188
    iget v0, p1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMajor:I

    iput v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMajor:I

    .line 189
    iget v0, p1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMinor:I

    iput v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMinor:I

    .line 190
    iget v0, p1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->encryptionFlags:I

    iput v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionFlags:I

    .line 194
    :try_start_0
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getBuilder(Lorg/apache/poi/poifs/crypt/EncryptionMode;)Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .local v1, "eib":Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;
    nop

    .line 199
    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;->initialize(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V

    .line 200
    return-void

    .line 195
    .end local v1    # "eib":Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;
    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "eib":Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;
    new-instance v2, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v2, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 2
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    const-string v0, "EncryptionInfo"

    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;-><init>(Lorg/apache/poi/util/LittleEndianInput;Lorg/apache/poi/poifs/crypt/EncryptionMode;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 1
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;)V
    .locals 1
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 1
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;Lorg/apache/poi/poifs/crypt/EncryptionMode;)V
    .locals 4
    .param p1, "dis"    # Lorg/apache/poi/util/LittleEndianInput;
    .param p2, "preferredEncryptionMode"    # Lorg/apache/poi/poifs/crypt/EncryptionMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    sget-object v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->xor:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    if-ne p2, v0, :cond_0

    .line 107
    sget-object v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->xor:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMajor:I

    iput v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMajor:I

    .line 108
    sget-object v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->xor:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMinor:I

    iput v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMinor:I

    goto :goto_0

    .line 110
    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMajor:I

    .line 111
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMinor:I

    .line 114
    :goto_0
    iget v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMajor:I

    sget-object v1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->xor:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    iget v1, v1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMajor:I

    const/4 v2, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMinor:I

    sget-object v1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->xor:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    iget v1, v1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMinor:I

    if-ne v0, v1, :cond_1

    .line 116
    sget-object v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->xor:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionMode:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    .line 117
    iput v2, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionFlags:I

    goto :goto_3

    .line 118
    :cond_1
    iget v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMajor:I

    sget-object v1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->binaryRC4:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    iget v1, v1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMajor:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMinor:I

    sget-object v1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->binaryRC4:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    iget v1, v1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMinor:I

    if-ne v0, v1, :cond_2

    .line 120
    sget-object v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->binaryRC4:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionMode:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    .line 121
    iput v2, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionFlags:I

    goto :goto_3

    .line 122
    :cond_2
    iget v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMajor:I

    const/4 v1, 0x2

    if-gt v1, v0, :cond_5

    const/4 v2, 0x4

    if-gt v0, v2, :cond_5

    iget v2, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMinor:I

    if-ne v2, v1, :cond_5

    .line 125
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionFlags:I

    .line 126
    sget-object v1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->cryptoAPI:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    if-eq p2, v1, :cond_4

    sget-object v1, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagAES:Lorg/apache/poi/util/BitField;

    invoke-virtual {v1, v0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    sget-object v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->standard:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    goto :goto_2

    :cond_4
    :goto_1
    sget-object v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->cryptoAPI:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    :goto_2
    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionMode:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    goto :goto_3

    .line 130
    :cond_5
    sget-object v1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->agile:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    iget v1, v1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMajor:I

    if-ne v0, v1, :cond_6

    iget v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMinor:I

    sget-object v1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->agile:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    iget v1, v1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMinor:I

    if-ne v0, v1, :cond_6

    .line 133
    sget-object v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->agile:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionMode:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    .line 134
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionFlags:I

    .line 148
    :goto_3
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionMode:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    invoke-static {v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getBuilder(Lorg/apache/poi/poifs/crypt/EncryptionMode;)Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .local v0, "eib":Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;
    nop

    .line 153
    invoke-interface {v0, p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;->initialize(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/util/LittleEndianInput;)V

    .line 154
    return-void

    .line 149
    .end local v0    # "eib":Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;
    :catch_0
    move-exception v1

    .line 150
    .restart local v0    # "eib":Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 136
    .end local v0    # "eib":Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionFlags:I

    .line 137
    new-instance v1, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown encryption: version major: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMajor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / version minor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMinor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / fCrypto: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagCryptoAPI:Lorg/apache/poi/util/BitField;

    invoke-virtual {v3, v0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / fExternal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagExternal:Lorg/apache/poi/util/BitField;

    invoke-virtual {v3, v0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / fDocProps: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagDocProps:Lorg/apache/poi/util/BitField;

    invoke-virtual {v3, v0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / fAES: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagAES:Lorg/apache/poi/util/BitField;

    invoke-virtual {v3, v0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected static getBuilder(Lorg/apache/poi/poifs/crypt/EncryptionMode;)Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;
    .locals 2
    .param p0, "encryptionMode"    # Lorg/apache/poi/poifs/crypt/EncryptionMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 220
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 222
    .local v0, "cl":Ljava/lang/ClassLoader;
    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->builder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;

    .line 223
    .local v1, "eib":Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;
    return-object v1
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->clone()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 284
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    .line 285
    .local v0, "other":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->header:Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->clone()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->header:Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    .line 286
    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->verifier:Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->clone()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->verifier:Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    .line 287
    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->decryptor:Lorg/apache/poi/poifs/crypt/Decryptor;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/Decryptor;->clone()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->decryptor:Lorg/apache/poi/poifs/crypt/Decryptor;

    .line 288
    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/crypt/Decryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    .line 289
    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptor:Lorg/apache/poi/poifs/crypt/Encryptor;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/Encryptor;->clone()Lorg/apache/poi/poifs/crypt/Encryptor;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptor:Lorg/apache/poi/poifs/crypt/Encryptor;

    .line 290
    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/crypt/Encryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    .line 291
    return-object v0
.end method

.method public getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;
    .locals 1

    .line 247
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->decryptor:Lorg/apache/poi/poifs/crypt/Decryptor;

    return-object v0
.end method

.method public getEncryptionFlags()I
    .locals 1

    .line 235
    iget v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionFlags:I

    return v0
.end method

.method public getEncryptionMode()Lorg/apache/poi/poifs/crypt/EncryptionMode;
    .locals 1

    .line 271
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionMode:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    return-object v0
.end method

.method public getEncryptor()Lorg/apache/poi/poifs/crypt/Encryptor;
    .locals 1

    .line 251
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptor:Lorg/apache/poi/poifs/crypt/Encryptor;

    return-object v0
.end method

.method public getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;
    .locals 1

    .line 239
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->header:Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    return-object v0
.end method

.method public getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
    .locals 1

    .line 243
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->verifier:Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    return-object v0
.end method

.method public getVersionMajor()I
    .locals 1

    .line 227
    iget v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMajor:I

    return v0
.end method

.method public getVersionMinor()I
    .locals 1

    .line 231
    iget v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMinor:I

    return v0
.end method

.method public isDocPropsEncrypted()Z
    .locals 2

    .line 279
    sget-object v0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagDocProps:Lorg/apache/poi/util/BitField;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptionFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setDecryptor(Lorg/apache/poi/poifs/crypt/Decryptor;)V
    .locals 0
    .param p1, "decryptor"    # Lorg/apache/poi/poifs/crypt/Decryptor;

    .line 263
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->decryptor:Lorg/apache/poi/poifs/crypt/Decryptor;

    .line 264
    return-void
.end method

.method public setEncryptor(Lorg/apache/poi/poifs/crypt/Encryptor;)V
    .locals 0
    .param p1, "encryptor"    # Lorg/apache/poi/poifs/crypt/Encryptor;

    .line 267
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptor:Lorg/apache/poi/poifs/crypt/Encryptor;

    .line 268
    return-void
.end method

.method public setHeader(Lorg/apache/poi/poifs/crypt/EncryptionHeader;)V
    .locals 0
    .param p1, "header"    # Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    .line 255
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->header:Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    .line 256
    return-void
.end method

.method public setVerifier(Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)V
    .locals 0
    .param p1, "verifier"    # Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    .line 259
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->verifier:Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    .line 260
    return-void
.end method
