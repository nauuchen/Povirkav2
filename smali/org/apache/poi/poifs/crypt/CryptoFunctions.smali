.class public Lorg/apache/poi/poifs/crypt/CryptoFunctions;
.super Ljava/lang/Object;
.source "CryptoFunctions.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final ENCRYPTION_MATRIX:[[I

.field private static final INITIAL_CODE_ARRAY:[I

.field private static final PAD_ARRAY:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 331
    const/16 v0, 0xf

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->INITIAL_CODE_ARRAY:[I

    .line 337
    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->PAD_ARRAY:[B

    .line 343
    new-array v0, v0, [[I

    const/4 v1, 0x7

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_a

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_b

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_c

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_d

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_e

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_f

    const/16 v3, 0xd

    aput-object v2, v0, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_10

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->ENCRYPTION_MATRIX:[[I

    return-void

    :array_0
    .array-data 4
        0xe1f0
        0x1d0f
        0xcc9c
        0x84c0
        0x110c
        0xe10
        0xf1ce
        0x313e
        0x1872
        0xe139
        0xd40f
        0x84f9
        0x280c
        0xa96a
        0x4ec3
    .end array-data

    :array_1
    .array-data 1
        -0x45t
        -0x1t
        -0x1t
        -0x46t
        -0x1t
        -0x1t
        -0x47t
        -0x80t
        0x0t
        -0x42t
        0xft
        0x0t
        -0x41t
        0xft
        0x0t
    .end array-data

    :array_2
    .array-data 4
        0xaefc
        0x4dd9
        0x9bb2
        0x2745
        0x4e8a
        0x9d14
        0x2a09
    .end array-data

    :array_3
    .array-data 4
        0x7b61
        0xf6c2
        0xfda5
        0xeb6b
        0xc6f7
        0x9dcf
        0x2bbf
    .end array-data

    :array_4
    .array-data 4
        0x4563
        0x8ac6
        0x5ad
        0xb5a
        0x16b4
        0x2d68
        0x5ad0
    .end array-data

    :array_5
    .array-data 4
        0x375
        0x6ea
        0xdd4
        0x1ba8
        0x3750
        0x6ea0
        0xdd40
    .end array-data

    :array_6
    .array-data 4
        0xd849
        0xa0b3
        0x5147
        0xa28e
        0x553d
        0xaa7a
        0x44d5
    .end array-data

    :array_7
    .array-data 4
        0x6f45
        0xde8a
        0xad35
        0x4a4b
        0x9496
        0x390d
        0x721a
    .end array-data

    :array_8
    .array-data 4
        0xeb23
        0xc667
        0x9cef
        0x29ff
        0x53fe
        0xa7fc
        0x5fd9
    .end array-data

    :array_9
    .array-data 4
        0x47d3
        0x8fa6
        0xf6d
        0x1eda
        0x3db4
        0x7b68
        0xf6d0
    .end array-data

    :array_a
    .array-data 4
        0xb861
        0x60e3
        0xc1c6
        0x93ad
        0x377b
        0x6ef6
        0xddec
    .end array-data

    :array_b
    .array-data 4
        0x45a0
        0x8b40
        0x6a1
        0xd42
        0x1a84
        0x3508
        0x6a10
    .end array-data

    :array_c
    .array-data 4
        0xaa51
        0x4483
        0x8906
        0x22d
        0x45a
        0x8b4
        0x1168
    .end array-data

    :array_d
    .array-data 4
        0x76b4
        0xed68
        0xcaf1
        0x85c3
        0x1ba7
        0x374e
        0x6e9c
    .end array-data

    :array_e
    .array-data 4
        0x3730
        0x6e60
        0xdcc0
        0xa9a1
        0x4363
        0x86c6
        0x1dad
    .end array-data

    :array_f
    .array-data 4
        0x3331
        0x6662
        0xccc4
        0x89a9
        0x373
        0x6e6
        0xdcc
    .end array-data

    :array_10
    .array-data 4
        0x1021
        0x2042
        0x4084
        0x8108
        0x1231
        0x2462
        0x48c4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createXorArray1(Ljava/lang/String;)[B
    .locals 8
    .param p0, "password"    # Ljava/lang/String;

    .line 501
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 502
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 504
    :cond_0
    const-string v0, "ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 508
    .local v0, "passBytes":[B
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 509
    .local v1, "obfuscationArray":[B
    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 510
    sget-object v3, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->PAD_ARRAY:[B

    array-length v4, v0

    array-length v5, v3

    array-length v6, v0

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-static {v3, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 512
    invoke-static {p0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->createXorKey1(Ljava/lang/String;)I

    move-result v3

    .line 515
    .local v3, "xorKey":I
    const/4 v4, 0x2

    .line 517
    .local v4, "nRotateSize":I
    const/4 v5, 0x2

    new-array v5, v5, [B

    and-int/lit16 v7, v3, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v2

    ushr-int/lit8 v2, v3, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v5, v6

    move-object v2, v5

    .line 518
    .local v2, "baseKeyLE":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_1

    .line 519
    aget-byte v6, v1, v5

    and-int/lit8 v7, v5, 0x1

    aget-byte v7, v2, v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 520
    aget-byte v6, v1, v5

    invoke-static {v6, v4}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->rotateLeft(BI)B

    move-result v6

    aput-byte v6, v1, v5

    .line 518
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 523
    .end local v5    # "i":I
    :cond_1
    return-object v1
.end method

.method public static createXorKey1(Ljava/lang/String;)I
    .locals 1
    .param p0, "password"    # Ljava/lang/String;

    .line 488
    invoke-static {p0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->createXorVerifier2(Ljava/lang/String;)I

    move-result v0

    ushr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public static createXorVerifier1(Ljava/lang/String;)I
    .locals 4
    .param p0, "password"    # Ljava/lang/String;

    .line 372
    invoke-static {p0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->toAnsiPassword(Ljava/lang/String;)[B

    move-result-object v0

    .line 375
    .local v0, "arrByteChars":[B
    const/4 v1, 0x0

    .line 377
    .local v1, "verifier":S
    const-string v2, ""

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 379
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 381
    invoke-static {v1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->rotateLeftBase15Bit(S)S

    move-result v1

    .line 382
    aget-byte v3, v0, v2

    xor-int/2addr v3, v1

    int-to-short v1, v3

    .line 379
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 387
    .end local v2    # "i":I
    :cond_0
    invoke-static {v1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->rotateLeftBase15Bit(S)S

    move-result v1

    .line 388
    array-length v2, v0

    xor-int/2addr v2, v1

    int-to-short v1, v2

    .line 391
    const v2, 0xce4b

    xor-int/2addr v2, v1

    int-to-short v1, v2

    .line 394
    :cond_1
    const v2, 0xffff

    and-int/2addr v2, v1

    return v2
.end method

.method public static createXorVerifier2(Ljava/lang/String;)I
    .locals 12
    .param p0, "password"    # Ljava/lang/String;

    .line 411
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 414
    .local v0, "generatedKey":[B
    const/16 v1, 0xf

    .line 416
    .local v1, "maxPasswordLength":I
    const-string v2, ""

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 418
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xf

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 420
    invoke-static {p0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->toAnsiPassword(Ljava/lang/String;)[B

    move-result-object v2

    .line 425
    .local v2, "arrByteChars":[B
    sget-object v5, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->INITIAL_CODE_ARRAY:[I

    array-length v6, v2

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    aget v5, v5, v6

    .line 431
    .local v5, "highOrderWord":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v8, v2

    if-ge v6, v8, :cond_2

    .line 432
    array-length v8, v2

    rsub-int/lit8 v8, v8, 0xf

    add-int/2addr v8, v6

    .line 433
    .local v8, "tmp":I
    const/4 v9, 0x0

    .local v9, "intBit":I
    :goto_1
    const/4 v10, 0x7

    if-ge v9, v10, :cond_1

    .line 434
    aget-byte v10, v2, v6

    shl-int v11, v7, v9

    and-int/2addr v10, v11

    if-eqz v10, :cond_0

    .line 435
    sget-object v10, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->ENCRYPTION_MATRIX:[[I

    aget-object v10, v10, v8

    aget v10, v10, v9

    xor-int/2addr v5, v10

    .line 433
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 431
    .end local v8    # "tmp":I
    .end local v9    # "intBit":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 441
    .end local v6    # "i":I
    :cond_2
    invoke-static {p0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->createXorVerifier1(Ljava/lang/String;)I

    move-result v3

    .line 446
    .local v3, "verifier":I
    int-to-short v6, v3

    invoke-static {v0, v4, v6}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 447
    const/4 v4, 0x2

    int-to-short v6, v5

    invoke-static {v0, v4, v6}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 450
    .end local v2    # "arrByteChars":[B
    .end local v3    # "verifier":I
    .end local v5    # "highOrderWord":I
    :cond_3
    invoke-static {v0}, Lorg/apache/poi/util/LittleEndian;->getInt([B)I

    move-result v2

    return v2
.end method

.method public static generateIv(Lorg/apache/poi/poifs/crypt/HashAlgorithm;[B[BI)[B
    .locals 2
    .param p0, "hashAlgorithm"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .param p1, "salt"    # [B
    .param p2, "blockKey"    # [B
    .param p3, "blockSize"    # I

    .line 147
    move-object v0, p1

    .line 148
    .local v0, "iv":[B
    if-eqz p2, :cond_0

    .line 149
    invoke-static {p0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 150
    .local v1, "hashAlgo":Ljava/security/MessageDigest;
    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 151
    invoke-virtual {v1, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 153
    .end local v1    # "hashAlgo":Ljava/security/MessageDigest;
    :cond_0
    invoke-static {v0, p3}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock36([BI)[B

    move-result-object v1

    return-object v1
.end method

.method public static generateKey([BLorg/apache/poi/poifs/crypt/HashAlgorithm;[BI)[B
    .locals 3
    .param p0, "passwordHash"    # [B
    .param p1, "hashAlgorithm"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .param p2, "blockKey"    # [B
    .param p3, "keySize"    # I

    .line 178
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 179
    .local v0, "hashAlgo":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 180
    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 181
    .local v1, "key":[B
    invoke-static {v1, p3}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock36([BI)[B

    move-result-object v2

    return-object v2
.end method

.method public static getBlock0([BI)[B
    .locals 1
    .param p0, "hash"    # [B
    .param p1, "size"    # I

    .line 277
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlockX([BIB)[B

    move-result-object v0

    return-object v0
.end method

.method private static getBlock36([BI)[B
    .locals 1
    .param p0, "hash"    # [B
    .param p1, "size"    # I

    .line 265
    const/16 v0, 0x36

    invoke-static {p0, p1, v0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlockX([BIB)[B

    move-result-object v0

    return-object v0
.end method

.method private static getBlockX([BIB)[B
    .locals 3
    .param p0, "hash"    # [B
    .param p1, "size"    # I
    .param p2, "fill"    # B

    .line 281
    array-length v0, p0

    if-ne v0, p1, :cond_0

    return-object p0

    .line 283
    :cond_0
    new-array v0, p1, [B

    .line 284
    .local v0, "result":[B
    invoke-static {v0, p2}, Ljava/util/Arrays;->fill([BB)V

    .line 285
    array-length v1, v0

    array-length v2, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    return-object v0
.end method

.method public static getCipher(Ljava/security/Key;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BILjava/lang/String;)Ljavax/crypto/Cipher;
    .locals 4
    .param p0, "key"    # Ljava/security/Key;
    .param p1, "cipherAlgorithm"    # Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .param p2, "chain"    # Lorg/apache/poi/poifs/crypt/ChainingMode;
    .param p3, "vec"    # [B
    .param p4, "cipherMode"    # I
    .param p5, "padding"    # Ljava/lang/String;

    .line 220
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    .line 221
    .local v0, "keySizeInBytes":I
    if-nez p5, :cond_0

    const-string p5, "NoPadding"

    .line 225
    :cond_0
    :try_start_0
    iget-object v1, p1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-static {v1}, Ljavax/crypto/Cipher;->getMaxAllowedKeyLength(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v2, v0, 0x8

    if-lt v1, v2, :cond_5

    .line 230
    sget-object v1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rc4:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    if-ne p1, v1, :cond_1

    .line 231
    iget-object v1, p1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .local v1, "cipher":Ljavax/crypto/Cipher;
    goto :goto_0

    .line 232
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    :cond_1
    iget-boolean v1, p1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->needsBouncyCastle:Z
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "/"

    if-eqz v1, :cond_2

    .line 233
    :try_start_1
    invoke-static {}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->registerBouncyCastle()V

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p2, Lorg/apache/poi/poifs/crypt/ChainingMode;->jceId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BC"

    invoke-static {v1, v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .restart local v1    # "cipher":Ljavax/crypto/Cipher;
    goto :goto_0

    .line 236
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p2, Lorg/apache/poi/poifs/crypt/ChainingMode;->jceId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 239
    .restart local v1    # "cipher":Ljavax/crypto/Cipher;
    :goto_0
    if-nez p3, :cond_3

    .line 240
    invoke-virtual {v1, p4, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    goto :goto_2

    .line 243
    :cond_3
    sget-object v2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rc2:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    if-ne p1, v2, :cond_4

    .line 244
    new-instance v2, Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x8

    invoke-direct {v2, v3, p3}, Ljavax/crypto/spec/RC2ParameterSpec;-><init>(I[B)V

    .local v2, "aps":Ljava/security/spec/AlgorithmParameterSpec;
    goto :goto_1

    .line 246
    .end local v2    # "aps":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_4
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 248
    .restart local v2    # "aps":Ljava/security/spec/AlgorithmParameterSpec;
    :goto_1
    invoke-virtual {v1, p4, p0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 250
    .end local v2    # "aps":Ljava/security/spec/AlgorithmParameterSpec;
    :goto_2
    return-object v1

    .line 226
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    :cond_5
    new-instance v1, Lorg/apache/poi/EncryptedDocumentException;

    const-string v2, "Export Restrictions in place - please install JCE Unlimited Strength Jurisdiction Policy files"

    invoke-direct {v1, v2}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "keySizeInBytes":I
    .end local p0    # "key":Ljava/security/Key;
    .end local p1    # "cipherAlgorithm":Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .end local p2    # "chain":Lorg/apache/poi/poifs/crypt/ChainingMode;
    .end local p3    # "vec":[B
    .end local p4    # "cipherMode":I
    .end local p5    # "padding":Ljava/lang/String;
    throw v1
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 251
    .restart local v0    # "keySizeInBytes":I
    .restart local p0    # "key":Ljava/security/Key;
    .restart local p1    # "cipherAlgorithm":Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .restart local p2    # "chain":Lorg/apache/poi/poifs/crypt/ChainingMode;
    .restart local p3    # "vec":[B
    .restart local p4    # "cipherMode":I
    .restart local p5    # "padding":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v2, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getCipher(Ljavax/crypto/SecretKey;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BI)Ljavax/crypto/Cipher;
    .locals 6
    .param p0, "key"    # Ljavax/crypto/SecretKey;
    .param p1, "cipherAlgorithm"    # Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .param p2, "chain"    # Lorg/apache/poi/poifs/crypt/ChainingMode;
    .param p3, "vec"    # [B
    .param p4, "cipherMode"    # I

    .line 200
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljava/security/Key;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BILjava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public static getMac(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljavax/crypto/Mac;
    .locals 3
    .param p0, "hashAlgorithm"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 304
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->needsBouncyCastle:Z

    if-eqz v0, :cond_0

    .line 305
    invoke-static {}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->registerBouncyCastle()V

    .line 306
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->jceHmacId:Ljava/lang/String;

    const-string v1, "BC"

    invoke-static {v0, v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0

    .line 308
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->jceHmacId:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Lorg/apache/poi/EncryptedDocumentException;

    const-string v2, "hmac algo not supported"

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;
    .locals 3
    .param p0, "hashAlgorithm"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 291
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->needsBouncyCastle:Z

    if-eqz v0, :cond_0

    .line 292
    invoke-static {}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->registerBouncyCastle()V

    .line 293
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->jceId:Ljava/lang/String;

    const-string v1, "BC"

    invoke-static {v0, v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0

    .line 295
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->jceId:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Lorg/apache/poi/EncryptedDocumentException;

    const-string v2, "hash algo not supported"

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static hashPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;[BI)[B
    .locals 1
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "hashAlgorithm"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .param p2, "salt"    # [B
    .param p3, "spinCount"    # I

    .line 83
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->hashPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;[BIZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static hashPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;[BIZ)[B
    .locals 8
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "hashAlgorithm"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .param p2, "salt"    # [B
    .param p3, "spinCount"    # I
    .param p4, "iteratorFirst"    # Z

    .line 101
    if-nez p0, :cond_0

    .line 102
    const-string p0, "VelvetSweatshop"

    .line 105
    :cond_0
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 107
    .local v0, "hashAlg":Ljava/security/MessageDigest;
    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 108
    invoke-static {p0}, Lorg/apache/poi/util/StringUtil;->getToUnicodeLE(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 109
    .local v1, "hash":[B
    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 111
    .local v2, "iterator":[B
    if-eqz p4, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    move-object v3, v1

    .line 112
    .local v3, "first":[B
    :goto_0
    if-eqz p4, :cond_2

    move-object v4, v1

    goto :goto_1

    :cond_2
    move-object v4, v2

    .line 115
    .local v4, "second":[B
    :goto_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, p3, :cond_3

    .line 116
    const/4 v6, 0x0

    :try_start_0
    invoke-static {v2, v6, v5}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 117
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 118
    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 119
    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 120
    array-length v7, v1

    invoke-virtual {v0, v1, v6, v7}, Ljava/security/MessageDigest;->digest([BII)I
    :try_end_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 122
    .end local v5    # "i":I
    :catch_0
    move-exception v5

    .line 123
    .local v5, "e":Ljava/security/DigestException;
    new-instance v6, Lorg/apache/poi/EncryptedDocumentException;

    const-string v7, "error in password hashing"

    invoke-direct {v6, v7}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 124
    .end local v5    # "e":Ljava/security/DigestException;
    :cond_3
    nop

    .line 126
    return-object v1
.end method

.method public static registerBouncyCastle()V
    .locals 4

    .line 317
    const-string v0, "BC"

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 318
    return-void

    .line 322
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 323
    .local v0, "cl":Ljava/lang/ClassLoader;
    const-string v1, "org.bouncycastle.jce.provider.BouncyCastleProvider"

    .line 324
    .local v1, "bcProviderName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 325
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/security/Provider;>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider;

    invoke-static {v3}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    nop

    .line 329
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "bcProviderName":Ljava/lang/String;
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/security/Provider;>;"
    return-void

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/poi/EncryptedDocumentException;

    const-string v2, "Only the BouncyCastle provider supports your encryption settings - please add it to the classpath."

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static rotateLeft(BI)B
    .locals 3
    .param p0, "bits"    # B
    .param p1, "shift"    # I

    .line 553
    and-int/lit16 v0, p0, 0xff

    shl-int/2addr v0, p1

    and-int/lit16 v1, p0, 0xff

    rsub-int/lit8 v2, p1, 0x8

    ushr-int/2addr v1, v2

    or-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method private static rotateLeftBase15Bit(S)S
    .locals 3
    .param p0, "verifier"    # S

    .line 564
    and-int/lit16 v0, p0, 0x4000

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    int-to-short v0, v0

    .line 569
    .local v0, "intermediate1":S
    shl-int/lit8 v1, p0, 0x1

    and-int/lit16 v1, v1, 0x7fff

    int-to-short v1, v1

    .line 573
    .local v1, "intermediate2":S
    or-int v2, v0, v1

    int-to-short v2, v2

    .line 574
    .local v2, "intermediate3":S
    return v2
.end method

.method private static toAnsiPassword(Ljava/lang/String;)[B
    .locals 6
    .param p0, "password"    # Ljava/lang/String;

    .line 540
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    .line 542
    .local v0, "arrByteChars":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 543
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 544
    .local v2, "intTemp":I
    and-int/lit16 v3, v2, 0xff

    int-to-byte v3, v3

    .line 545
    .local v3, "lowByte":B
    ushr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 546
    .local v4, "highByte":B
    if-eqz v3, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v4

    :goto_1
    aput-byte v5, v0, v1

    .line 542
    .end local v2    # "intTemp":I
    .end local v3    # "lowByte":B
    .end local v4    # "highByte":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 549
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static xorHashPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "password"    # Ljava/lang/String;

    .line 457
    invoke-static {p0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->createXorVerifier2(Ljava/lang/String;)I

    move-result v0

    .line 458
    .local v0, "hashedPassword":I
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%1$08X"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static xorHashPasswordReversed(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "password"    # Ljava/lang/String;

    .line 466
    invoke-static {p0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->createXorVerifier2(Ljava/lang/String;)I

    move-result v0

    .line 468
    .local v0, "hashedPassword":I
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    ushr-int/lit8 v3, v0, 0x0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    ushr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    ushr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    ushr-int/lit8 v3, v0, 0x18

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const-string v3, "%1$02X%2$02X%3$02X%4$02X"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
