.class public final enum Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
.super Ljava/lang/Enum;
.source "CipherAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/poifs/crypt/CipherAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field public static final enum aes128:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field public static final enum aes192:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field public static final enum aes256:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field public static final enum des:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field public static final enum des3:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field public static final enum des3_112:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field public static final enum rc2:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field public static final enum rc4:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field public static final enum rsa:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;


# instance fields
.field public final allowedKeySize:[I

.field public final blockSize:I

.field public final defaultKeySize:I

.field public final ecmaId:I

.field public final encryptedVerifierHashLength:I

.field public final jceId:Ljava/lang/String;

.field public final needsBouncyCastle:Z

.field public final provider:Lorg/apache/poi/poifs/crypt/CipherProvider;

.field public final xmlId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 38

    .line 25
    new-instance v12, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    sget-object v3, Lorg/apache/poi/poifs/crypt/CipherProvider;->rc4:Lorg/apache/poi/poifs/crypt/CipherProvider;

    const/16 v13, 0xc

    new-array v7, v13, [I

    fill-array-data v7, :array_0

    const-string v1, "rc4"

    const/4 v2, 0x0

    const-string v4, "RC4"

    const/16 v5, 0x6801

    const/16 v6, 0x40

    const/4 v8, -0x1

    const/16 v9, 0x14

    const-string v10, "RC4"

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/crypt/CipherProvider;Ljava/lang/String;II[IIILjava/lang/String;Z)V

    sput-object v12, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rc4:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 27
    new-instance v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    sget-object v17, Lorg/apache/poi/poifs/crypt/CipherProvider;->aes:Lorg/apache/poi/poifs/crypt/CipherProvider;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/16 v4, 0x80

    aput v4, v2, v3

    const-string v15, "aes128"

    const/16 v16, 0x1

    const-string v18, "AES"

    const/16 v19, 0x660e

    const/16 v20, 0x80

    const/16 v22, 0x10

    const/16 v23, 0x20

    const-string v24, "AES"

    const/16 v25, 0x0

    move-object v14, v0

    move-object/from16 v21, v2

    invoke-direct/range {v14 .. v25}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/crypt/CipherProvider;Ljava/lang/String;II[IIILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes128:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 28
    new-instance v2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    sget-object v29, Lorg/apache/poi/poifs/crypt/CipherProvider;->aes:Lorg/apache/poi/poifs/crypt/CipherProvider;

    new-array v5, v1, [I

    const/16 v6, 0xc0

    aput v6, v5, v3

    const-string v27, "aes192"

    const/16 v28, 0x2

    const-string v30, "AES"

    const/16 v31, 0x660f

    const/16 v32, 0xc0

    const/16 v34, 0x10

    const/16 v35, 0x20

    const-string v36, "AES"

    const/16 v37, 0x0

    move-object/from16 v26, v2

    move-object/from16 v33, v5

    invoke-direct/range {v26 .. v37}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/crypt/CipherProvider;Ljava/lang/String;II[IIILjava/lang/String;Z)V

    sput-object v2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes192:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 29
    new-instance v5, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    sget-object v17, Lorg/apache/poi/poifs/crypt/CipherProvider;->aes:Lorg/apache/poi/poifs/crypt/CipherProvider;

    new-array v7, v1, [I

    const/16 v8, 0x100

    aput v8, v7, v3

    const-string v15, "aes256"

    const/16 v16, 0x3

    const-string v18, "AES"

    const/16 v19, 0x6610

    const/16 v20, 0x100

    const-string v24, "AES"

    move-object v14, v5

    move-object/from16 v21, v7

    invoke-direct/range {v14 .. v25}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/crypt/CipherProvider;Ljava/lang/String;II[IIILjava/lang/String;Z)V

    sput-object v5, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes256:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 30
    new-instance v7, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    new-array v8, v13, [I

    fill-array-data v8, :array_1

    const-string v27, "rc2"

    const/16 v28, 0x4

    const/16 v29, 0x0

    const-string v30, "RC2"

    const/16 v31, -0x1

    const/16 v32, 0x80

    const/16 v34, 0x8

    const/16 v35, 0x14

    const-string v36, "RC2"

    move-object/from16 v26, v7

    move-object/from16 v33, v8

    invoke-direct/range {v26 .. v37}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/crypt/CipherProvider;Ljava/lang/String;II[IIILjava/lang/String;Z)V

    sput-object v7, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rc2:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 31
    new-instance v8, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    new-array v9, v1, [I

    const/16 v10, 0x40

    aput v10, v9, v3

    const-string v14, "des"

    const/4 v15, 0x5

    const/16 v16, 0x0

    const-string v17, "DES"

    const/16 v18, -0x1

    const/16 v19, 0x40

    const/16 v21, 0x8

    const/16 v22, 0x20

    const-string v23, "DES"

    const/16 v24, 0x0

    move-object v13, v8

    move-object/from16 v20, v9

    invoke-direct/range {v13 .. v24}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/crypt/CipherProvider;Ljava/lang/String;II[IIILjava/lang/String;Z)V

    sput-object v8, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->des:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 33
    new-instance v9, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    new-array v10, v1, [I

    aput v6, v10, v3

    const-string v26, "des3"

    const/16 v27, 0x6

    const/16 v28, 0x0

    const-string v29, "DESede"

    const/16 v30, -0x1

    const/16 v31, 0xc0

    const/16 v33, 0x8

    const/16 v34, 0x20

    const-string v35, "3DES"

    const/16 v36, 0x0

    move-object/from16 v25, v9

    move-object/from16 v32, v10

    invoke-direct/range {v25 .. v36}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/crypt/CipherProvider;Ljava/lang/String;II[IIILjava/lang/String;Z)V

    sput-object v9, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->des3:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 36
    new-instance v6, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    new-array v10, v1, [I

    aput v4, v10, v3

    const-string v14, "des3_112"

    const/4 v15, 0x7

    const-string v17, "DESede"

    const/16 v19, 0x80

    const-string v23, "3DES_112"

    const/16 v24, 0x1

    move-object v13, v6

    move-object/from16 v20, v10

    invoke-direct/range {v13 .. v24}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/crypt/CipherProvider;Ljava/lang/String;II[IIILjava/lang/String;Z)V

    sput-object v6, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->des3_112:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 38
    new-instance v4, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    const/4 v10, 0x4

    new-array v11, v10, [I

    fill-array-data v11, :array_2

    const-string v26, "rsa"

    const/16 v27, 0x8

    const-string v29, "RSA"

    const/16 v31, 0x400

    const/16 v33, -0x1

    const/16 v34, -0x1

    const-string v35, ""

    move-object/from16 v25, v4

    move-object/from16 v32, v11

    invoke-direct/range {v25 .. v36}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/crypt/CipherProvider;Ljava/lang/String;II[IIILjava/lang/String;Z)V

    sput-object v4, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rsa:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 22
    const/16 v11, 0x9

    new-array v11, v11, [Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    aput-object v12, v11, v3

    aput-object v0, v11, v1

    const/4 v0, 0x2

    aput-object v2, v11, v0

    const/4 v0, 0x3

    aput-object v5, v11, v0

    aput-object v7, v11, v10

    const/4 v0, 0x5

    aput-object v8, v11, v0

    const/4 v0, 0x6

    aput-object v9, v11, v0

    const/4 v0, 0x7

    aput-object v6, v11, v0

    const/16 v0, 0x8

    aput-object v4, v11, v0

    sput-object v11, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->$VALUES:[Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    return-void

    nop

    :array_0
    .array-data 4
        0x28
        0x30
        0x38
        0x40
        0x48
        0x50
        0x58
        0x60
        0x68
        0x70
        0x78
        0x80
    .end array-data

    :array_1
    .array-data 4
        0x28
        0x30
        0x38
        0x40
        0x48
        0x50
        0x58
        0x60
        0x68
        0x70
        0x78
        0x80
    .end array-data

    :array_2
    .array-data 4
        0x400
        0x800
        0xc00
        0x1000
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/apache/poi/poifs/crypt/CipherProvider;Ljava/lang/String;II[IIILjava/lang/String;Z)V
    .locals 0
    .param p3, "provider"    # Lorg/apache/poi/poifs/crypt/CipherProvider;
    .param p4, "jceId"    # Ljava/lang/String;
    .param p5, "ecmaId"    # I
    .param p6, "defaultKeySize"    # I
    .param p7, "allowedKeySize"    # [I
    .param p8, "blockSize"    # I
    .param p9, "encryptedVerifierHashLength"    # I
    .param p10, "xmlId"    # Ljava/lang/String;
    .param p11, "needsBouncyCastle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/crypt/CipherProvider;",
            "Ljava/lang/String;",
            "II[III",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput-object p3, p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->provider:Lorg/apache/poi/poifs/crypt/CipherProvider;

    .line 52
    iput-object p4, p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    .line 53
    iput p5, p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->ecmaId:I

    .line 54
    iput p6, p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->defaultKeySize:I

    .line 55
    invoke-virtual {p7}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->allowedKeySize:[I

    .line 56
    iput p8, p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->blockSize:I

    .line 57
    iput p9, p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->encryptedVerifierHashLength:I

    .line 58
    iput-object p10, p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->xmlId:Ljava/lang/String;

    .line 59
    iput-boolean p11, p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->needsBouncyCastle:Z

    .line 60
    return-void
.end method

.method public static fromEcmaId(I)Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .locals 5
    .param p0, "ecmaId"    # I

    .line 63
    invoke-static {}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->values()[Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 64
    .local v3, "ca":Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    iget v4, v3, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->ecmaId:I

    if-ne v4, p0, :cond_0

    return-object v3

    .line 63
    .end local v3    # "ca":Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    .end local v0    # "arr$":[Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cipher algorithm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromXmlId(Ljava/lang/String;I)Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .locals 8
    .param p0, "xmlId"    # Ljava/lang/String;
    .param p1, "keySize"    # I

    .line 70
    invoke-static {}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->values()[Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 71
    .local v3, "ca":Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    iget-object v4, v3, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->xmlId:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 72
    :cond_0
    iget-object v4, v3, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->allowedKeySize:[I

    .local v4, "arr$":[I
    array-length v5, v4

    .local v5, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v5, :cond_2

    aget v7, v4, v6

    .line 73
    .local v7, "ks":I
    if-ne v7, p1, :cond_1

    return-object v3

    .line 72
    .end local v7    # "ks":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 70
    .end local v3    # "ca":Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .end local v4    # "arr$":[I
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    .end local v0    # "arr$":[Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_3
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cipher algorithm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .locals 1

    .line 22
    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->$VALUES:[Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    invoke-virtual {v0}, [Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    return-object v0
.end method
