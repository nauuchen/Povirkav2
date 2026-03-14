.class public Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;
.super Lorg/apache/poi/poifs/crypt/Decryptor;
.source "CryptoAPIDecryptor.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$CryptoAPICipherInputStream;,
        Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private chunkSize:I

.field private length:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 52
    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;-><init>()V

    .line 54
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->length:J

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->chunkSize:I

    .line 69
    return-void
.end method

.method static synthetic access$000(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;

    .line 52
    iget v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->chunkSize:I

    return v0
.end method

.method protected static generateSecretKey(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)Ljavax/crypto/SecretKey;
    .locals 5
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "ver"    # Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 133
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v0

    .line 134
    .local v0, "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    invoke-static {v0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 135
    .local v1, "hashAlg":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getSalt()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 136
    invoke-static {p0}, Lorg/apache/poi/util/StringUtil;->getToUnicodeLE(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 137
    .local v2, "hash":[B
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v4

    iget-object v4, v4, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 138
    .local v3, "skey":Ljavax/crypto/SecretKey;
    return-object v3
.end method

.method protected static initCipherForBlock(Ljavax/crypto/Cipher;ILorg/apache/poi/poifs/crypt/EncryptionInfo;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;
    .locals 10
    .param p0, "cipher"    # Ljavax/crypto/Cipher;
    .param p1, "block"    # I
    .param p2, "encryptionInfo"    # Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .param p3, "skey"    # Ljavax/crypto/SecretKey;
    .param p4, "encryptMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 107
    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v0

    .line 108
    .local v0, "ver":Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v1

    .line 109
    .local v1, "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 110
    .local v2, "blockKey":[B
    int-to-long v3, p1

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v4}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    .line 111
    invoke-static {v1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 112
    .local v3, "hashAlg":Ljava/security/MessageDigest;
    invoke-interface {p3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 113
    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    .line 114
    .local v4, "encKey":[B
    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v5

    .line 115
    .local v5, "header":Lorg/apache/poi/poifs/crypt/EncryptionHeader;
    invoke-virtual {v5}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getKeySize()I

    move-result v6

    .line 116
    .local v6, "keyBits":I
    div-int/lit8 v7, v6, 0x8

    invoke-static {v4, v7}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock0([BI)[B

    move-result-object v4

    .line 117
    const/16 v7, 0x28

    if-ne v6, v7, :cond_0

    .line 118
    const/16 v7, 0x10

    invoke-static {v4, v7}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock0([BI)[B

    move-result-object v4

    .line 120
    :cond_0
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p3}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v4, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 121
    .local v7, "key":Ljavax/crypto/SecretKey;
    if-nez p0, :cond_1

    .line 122
    invoke-virtual {v5}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9, v9, p4}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljavax/crypto/SecretKey;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BI)Ljavax/crypto/Cipher;

    move-result-object p0

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p0, p4, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 126
    :goto_0
    return-object p0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->clone()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/poifs/crypt/Decryptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->clone()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 244
    invoke-super {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;->clone()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;

    return-object v0
.end method

.method public bridge synthetic getDataStream(Ljava/io/InputStream;II)Ljava/io/InputStream;
    .locals 1
    .param p1, "x0"    # Ljava/io/InputStream;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->getDataStream(Ljava/io/InputStream;II)Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/InputStream;
    .locals 1
    .param p1, "x0"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    move-result-object v0

    return-object v0
.end method

.method public getDataStream(Ljava/io/InputStream;II)Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;
    .locals 7
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "size"    # I
    .param p3, "initialPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 150
    new-instance v6, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$CryptoAPICipherInputStream;

    int-to-long v3, p2

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$CryptoAPICipherInputStream;-><init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;Ljava/io/InputStream;JI)V

    return-object v6
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;
    .locals 2
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/io/IOException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLength()J
    .locals 5

    .line 231
    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 234
    return-wide v0

    .line 232
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Decryptor.getDataStream() was not called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSummaryEntries(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .locals 19
    .param p1, "root"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .param p2, "encryptedStream"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 169
    invoke-virtual/range {p1 .. p2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    .line 170
    .local v1, "es":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v3

    .line 171
    .local v3, "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v4, v0

    .line 172
    .local v4, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-static {v3, v4}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 173
    invoke-virtual {v3}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    .line 174
    new-instance v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentInputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    move-object/from16 v6, p0

    invoke-direct {v0, v6, v5}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentInputStream;-><init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;[B)V

    move-object v5, v0

    .line 175
    .local v5, "sbis":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentInputStream;
    new-instance v0, Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-direct {v0, v5}, Lorg/apache/poi/util/LittleEndianInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v7, v0

    .line 176
    .local v7, "leis":Lorg/apache/poi/util/LittleEndianInputStream;
    const/4 v8, 0x0

    .line 178
    .local v8, "fsOut":Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    :try_start_0
    invoke-virtual {v7}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v9

    long-to-int v0, v9

    .line 179
    .local v0, "streamDescriptorArrayOffset":I
    invoke-virtual {v7}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    .line 180
    int-to-long v9, v0

    const-wide/16 v11, 0x8

    sub-long/2addr v9, v11

    .line 181
    .local v9, "skipN":J
    invoke-virtual {v5, v9, v10}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentInputStream;->skip(J)J

    move-result-wide v11

    cmp-long v13, v11, v9

    if-ltz v13, :cond_3

    .line 184
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentInputStream;->setBlock(I)V

    .line 185
    invoke-virtual {v7}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v11

    long-to-int v12, v11

    .line 186
    .local v12, "encryptedStreamDescriptorCount":I
    new-array v11, v12, [Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;

    .line 187
    .local v11, "entries":[Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v12, :cond_1

    .line 188
    new-instance v14, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;

    invoke-direct {v14}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;-><init>()V

    .line 189
    .local v14, "entry":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    aput-object v14, v11, v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    move/from16 v16, v0

    move-object v15, v1

    .end local v0    # "streamDescriptorArrayOffset":I
    .end local v1    # "es":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .local v15, "es":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .local v16, "streamDescriptorArrayOffset":I
    :try_start_1
    invoke-virtual {v7}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, v14, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamOffset:I

    .line 191
    invoke-virtual {v7}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, v14, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamSize:I

    .line 192
    invoke-virtual {v7}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result v0

    iput v0, v14, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->block:I

    .line 193
    invoke-virtual {v7}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result v0

    .line 194
    .local v0, "nameSize":I
    invoke-virtual {v7}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result v1

    iput v1, v14, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->flags:I

    .line 196
    invoke-virtual {v7}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v1

    iput v1, v14, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->reserved2:I

    .line 197
    invoke-static {v7, v0}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamName:Ljava/lang/String;

    .line 198
    invoke-virtual {v7}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    .line 199
    iget-object v1, v14, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 187
    .end local v0    # "nameSize":I
    .end local v14    # "entry":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    add-int/lit8 v13, v13, 0x1

    move-object v1, v15

    move/from16 v0, v16

    goto :goto_0

    .line 199
    .restart local v0    # "nameSize":I
    .restart local v14    # "entry":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v3    # "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "sbis":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentInputStream;
    .end local v7    # "leis":Lorg/apache/poi/util/LittleEndianInputStream;
    .end local v8    # "fsOut":Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .end local v15    # "es":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .end local p1    # "root":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .end local p2    # "encryptedStream":Ljava/lang/String;
    throw v1

    .line 187
    .end local v14    # "entry":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    .end local v16    # "streamDescriptorArrayOffset":I
    .local v0, "streamDescriptorArrayOffset":I
    .restart local v1    # "es":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .restart local v3    # "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .restart local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "sbis":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentInputStream;
    .restart local v7    # "leis":Lorg/apache/poi/util/LittleEndianInputStream;
    .restart local v8    # "fsOut":Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .restart local p1    # "root":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .restart local p2    # "encryptedStream":Ljava/lang/String;
    :cond_1
    move/from16 v16, v0

    move-object v15, v1

    .line 202
    .end local v0    # "streamDescriptorArrayOffset":I
    .end local v1    # "es":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .end local v13    # "i":I
    .restart local v15    # "es":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .restart local v16    # "streamDescriptorArrayOffset":I
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>()V

    move-object v8, v0

    .line 203
    move-object v0, v11

    .local v0, "arr$":[Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_1
    if-ge v13, v1, :cond_2

    aget-object v14, v0, v13

    .line 204
    .restart local v14    # "entry":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    move-object/from16 v17, v0

    .end local v0    # "arr$":[Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    .local v17, "arr$":[Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    iget v0, v14, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamOffset:I

    invoke-virtual {v5, v0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentInputStream;->seek(I)V

    .line 205
    iget v0, v14, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->block:I

    invoke-virtual {v5, v0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentInputStream;->setBlock(I)V

    .line 206
    new-instance v0, Lorg/apache/poi/util/BoundedInputStream;

    move/from16 v18, v1

    .end local v1    # "len$":I
    .local v18, "len$":I
    iget v1, v14, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamSize:I

    int-to-long v1, v1

    invoke-direct {v0, v5, v1, v2}, Lorg/apache/poi/util/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    .line 207
    .local v0, "is":Ljava/io/InputStream;
    iget-object v1, v14, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamName:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->createDocument(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 208
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 203
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v14    # "entry":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p1

    move-object/from16 v0, v17

    move/from16 v1, v18

    goto :goto_1

    .end local v17    # "arr$":[Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    .end local v18    # "len$":I
    .local v0, "arr$":[Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    .restart local v1    # "len$":I
    :cond_2
    move-object/from16 v17, v0

    move/from16 v18, v1

    .line 220
    .end local v0    # "arr$":[Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    .end local v1    # "len$":I
    .end local v9    # "skipN":J
    .end local v11    # "entries":[Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    .end local v12    # "encryptedStreamDescriptorCount":I
    .end local v13    # "i$":I
    .end local v16    # "streamDescriptorArrayOffset":I
    invoke-static {v7}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 221
    invoke-static {v5}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 222
    nop

    .line 223
    return-object v8

    .line 182
    .end local v15    # "es":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .local v0, "streamDescriptorArrayOffset":I
    .local v1, "es":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .restart local v9    # "skipN":J
    :cond_3
    move/from16 v16, v0

    move-object v15, v1

    .end local v0    # "streamDescriptorArrayOffset":I
    .end local v1    # "es":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .restart local v15    # "es":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .restart local v16    # "streamDescriptorArrayOffset":I
    :try_start_2
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "buffer underrun"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .end local v3    # "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "sbis":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentInputStream;
    .end local v7    # "leis":Lorg/apache/poi/util/LittleEndianInputStream;
    .end local v8    # "fsOut":Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .end local v15    # "es":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .end local p1    # "root":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .end local p2    # "encryptedStream":Ljava/lang/String;
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 210
    .end local v9    # "skipN":J
    .end local v16    # "streamDescriptorArrayOffset":I
    .restart local v3    # "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .restart local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "sbis":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentInputStream;
    .restart local v7    # "leis":Lorg/apache/poi/util/LittleEndianInputStream;
    .restart local v8    # "fsOut":Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .restart local v15    # "es":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .restart local p1    # "root":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .restart local p2    # "encryptedStream":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 220
    .end local v15    # "es":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .restart local v1    # "es":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    :catchall_0
    move-exception v0

    move-object v15, v1

    .end local v1    # "es":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .restart local v15    # "es":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    goto :goto_3

    .line 210
    .end local v15    # "es":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .restart local v1    # "es":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    :catch_1
    move-exception v0

    move-object v15, v1

    .line 211
    .end local v1    # "es":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v15    # "es":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    :goto_2
    :try_start_3
    invoke-static {v8}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 212
    instance-of v1, v0, Ljava/security/GeneralSecurityException;

    if-nez v1, :cond_5

    .line 214
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_4

    .line 215
    move-object v1, v0

    check-cast v1, Ljava/io/IOException;

    .end local v3    # "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "sbis":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentInputStream;
    .end local v7    # "leis":Lorg/apache/poi/util/LittleEndianInputStream;
    .end local v8    # "fsOut":Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .end local v15    # "es":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .end local p1    # "root":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .end local p2    # "encryptedStream":Ljava/lang/String;
    throw v1

    .line 217
    .restart local v3    # "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .restart local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "sbis":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentInputStream;
    .restart local v7    # "leis":Lorg/apache/poi/util/LittleEndianInputStream;
    .restart local v8    # "fsOut":Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .restart local v15    # "es":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .restart local p1    # "root":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .restart local p2    # "encryptedStream":Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "summary entries can\'t be read"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "sbis":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentInputStream;
    .end local v7    # "leis":Lorg/apache/poi/util/LittleEndianInputStream;
    .end local v8    # "fsOut":Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .end local v15    # "es":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .end local p1    # "root":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .end local p2    # "encryptedStream":Ljava/lang/String;
    throw v1

    .line 213
    .restart local v3    # "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .restart local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "sbis":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentInputStream;
    .restart local v7    # "leis":Lorg/apache/poi/util/LittleEndianInputStream;
    .restart local v8    # "fsOut":Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .restart local v15    # "es":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .restart local p1    # "root":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .restart local p2    # "encryptedStream":Ljava/lang/String;
    :cond_5
    move-object v1, v0

    check-cast v1, Ljava/security/GeneralSecurityException;

    .end local v3    # "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "sbis":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentInputStream;
    .end local v7    # "leis":Lorg/apache/poi/util/LittleEndianInputStream;
    .end local v8    # "fsOut":Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .end local v15    # "es":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .end local p1    # "root":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .end local p2    # "encryptedStream":Ljava/lang/String;
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 220
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .restart local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "sbis":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentInputStream;
    .restart local v7    # "leis":Lorg/apache/poi/util/LittleEndianInputStream;
    .restart local v8    # "fsOut":Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .restart local v15    # "es":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .restart local p1    # "root":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .restart local p2    # "encryptedStream":Ljava/lang/String;
    :catchall_1
    move-exception v0

    :goto_3
    invoke-static {v7}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 221
    invoke-static {v5}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;
    .locals 3
    .param p1, "cipher"    # Ljavax/crypto/Cipher;
    .param p2, "block"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    .line 100
    .local v0, "ei":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 101
    .local v1, "sk":Ljavax/crypto/SecretKey;
    const/4 v2, 0x2

    invoke-static {p1, p2, v0, v1, v2}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->initCipherForBlock(Ljavax/crypto/Cipher;ILorg/apache/poi/poifs/crypt/EncryptionInfo;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;

    move-result-object v2

    return-object v2
.end method

.method public setChunkSize(I)V
    .locals 0
    .param p1, "chunkSize"    # I

    .line 239
    iput p1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->chunkSize:I

    .line 240
    return-void
.end method

.method public verifyPassword(Ljava/lang/String;)Z
    .locals 12
    .param p1, "password"    # Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v0

    .line 74
    .local v0, "ver":Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
    invoke-static {p1, v0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->generateSecretKey(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 76
    .local v1, "skey":Ljavax/crypto/SecretKey;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v1, v4}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->initCipherForBlock(Ljavax/crypto/Cipher;ILorg/apache/poi/poifs/crypt/EncryptionInfo;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 77
    .local v2, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getEncryptedVerifier()[B

    move-result-object v3

    .line 78
    .local v3, "encryptedVerifier":[B
    array-length v4, v3

    new-array v4, v4, [B

    .line 79
    .local v4, "verifier":[B
    array-length v6, v3

    invoke-virtual {v2, v3, v5, v6, v4}, Ljavax/crypto/Cipher;->update([BII[B)I

    .line 80
    invoke-virtual {p0, v4}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->setVerifier([B)V

    .line 81
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getEncryptedVerifierHash()[B

    move-result-object v6

    .line 82
    .local v6, "encryptedVerifierHash":[B
    invoke-virtual {v2, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    .line 83
    .local v7, "verifierHash":[B
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v8

    .line 84
    .local v8, "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    invoke-static {v8}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v9

    .line 85
    .local v9, "hashAlg":Ljava/security/MessageDigest;
    invoke-virtual {v9, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v10

    .line 86
    .local v10, "calcVerifierHash":[B
    invoke-static {v10, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 87
    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->setSecretKey(Ljavax/crypto/SecretKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    const/4 v5, 0x1

    return v5

    .line 92
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "encryptedVerifier":[B
    .end local v4    # "verifier":[B
    .end local v6    # "encryptedVerifierHash":[B
    .end local v7    # "verifierHash":[B
    .end local v8    # "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .end local v9    # "hashAlg":Ljava/security/MessageDigest;
    .end local v10    # "calcVerifierHash":[B
    :cond_0
    nop

    .line 93
    return v5

    .line 90
    :catch_0
    move-exception v2

    .line 91
    .local v2, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v3, v2}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
