.class public final Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;
.super Ljava/lang/Object;
.source "XSSFPasswordHelper.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
    since = "3.15 beta 3"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method private static getAttrName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;
    .locals 3
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .line 130
    if-eqz p0, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    new-instance v0, Ljavax/xml/namespace/QName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 131
    :cond_1
    :goto_0
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-direct {v0, p1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static setPassword(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;Ljava/lang/String;)V
    .locals 10
    .param p0, "xobj"    # Lorg/apache/xmlbeans/XmlObject;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "hashAlgo"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .param p3, "prefix"    # Ljava/lang/String;

    .line 50
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlObject;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    .line 52
    .local v0, "cur":Lorg/apache/xmlbeans/XmlCursor;
    const-string v1, "spinCount"

    const-string v2, "saltValue"

    const-string v3, "hashValue"

    const-string v4, "algorithmName"

    const-string v5, "password"

    if-nez p1, :cond_0

    .line 53
    invoke-static {p3, v5}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/apache/xmlbeans/XmlCursor;->removeAttribute(Ljavax/xml/namespace/QName;)Z

    .line 54
    invoke-static {p3, v4}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/apache/xmlbeans/XmlCursor;->removeAttribute(Ljavax/xml/namespace/QName;)Z

    .line 55
    invoke-static {p3, v3}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/xmlbeans/XmlCursor;->removeAttribute(Ljavax/xml/namespace/QName;)Z

    .line 56
    invoke-static {p3, v2}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/xmlbeans/XmlCursor;->removeAttribute(Ljavax/xml/namespace/QName;)Z

    .line 57
    invoke-static {p3, v1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/XmlCursor;->removeAttribute(Ljavax/xml/namespace/QName;)Z

    .line 58
    return-void

    .line 61
    :cond_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toFirstContentToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    .line 62
    const/4 v6, 0x0

    if-nez p2, :cond_1

    .line 63
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->createXorVerifier1(Ljava/lang/String;)I

    move-result v1

    .line 64
    .local v1, "hash":I
    invoke-static {p3, v5}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const-string v5, "%04X"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/apache/xmlbeans/XmlCursor;->insertAttributeWithValue(Ljavax/xml/namespace/QName;Ljava/lang/String;)V

    .line 66
    .end local v1    # "hash":I
    goto :goto_0

    .line 67
    :cond_1
    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    .line 68
    .local v5, "random":Ljava/security/SecureRandom;
    const/16 v7, 0x10

    invoke-virtual {v5, v7}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v7

    .line 72
    .local v7, "salt":[B
    const v8, 0x186a0

    .line 77
    .local v8, "spinCount":I
    invoke-static {p1, p2, v7, v8, v6}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->hashPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;[BIZ)[B

    move-result-object v6

    .line 79
    .local v6, "hash":[B
    invoke-static {p3, v4}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v4

    iget-object v9, p2, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->jceId:Ljava/lang/String;

    invoke-interface {v0, v4, v9}, Lorg/apache/xmlbeans/XmlCursor;->insertAttributeWithValue(Ljavax/xml/namespace/QName;Ljava/lang/String;)V

    .line 80
    invoke-static {p3, v3}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-static {v6}, Ljavax/xml/bind/DatatypeConverter;->printBase64Binary([B)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/apache/xmlbeans/XmlCursor;->insertAttributeWithValue(Ljavax/xml/namespace/QName;Ljava/lang/String;)V

    .line 81
    invoke-static {p3, v2}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-static {v7}, Ljavax/xml/bind/DatatypeConverter;->printBase64Binary([B)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/apache/xmlbeans/XmlCursor;->insertAttributeWithValue(Ljavax/xml/namespace/QName;Ljava/lang/String;)V

    .line 82
    invoke-static {p3, v1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/xmlbeans/XmlCursor;->insertAttributeWithValue(Ljavax/xml/namespace/QName;Ljava/lang/String;)V

    .line 84
    .end local v5    # "random":Ljava/security/SecureRandom;
    .end local v6    # "hash":[B
    .end local v7    # "salt":[B
    .end local v8    # "spinCount":I
    :goto_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 85
    return-void
.end method

.method public static validatePassword(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p0, "xobj"    # Lorg/apache/xmlbeans/XmlObject;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 100
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 102
    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlObject;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v1

    .line 103
    .local v1, "cur":Lorg/apache/xmlbeans/XmlCursor;
    const-string v2, "password"

    invoke-static {p2, v2}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/XmlCursor;->getAttributeText(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "xorHashVal":Ljava/lang/String;
    const-string v3, "algorithmName"

    invoke-static {p2, v3}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/xmlbeans/XmlCursor;->getAttributeText(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "algoName":Ljava/lang/String;
    const-string v4, "hashValue"

    invoke-static {p2, v4}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/XmlCursor;->getAttributeText(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "hashVal":Ljava/lang/String;
    const-string v5, "saltValue"

    invoke-static {p2, v5}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/apache/xmlbeans/XmlCursor;->getAttributeText(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, "saltVal":Ljava/lang/String;
    const-string v6, "spinCount"

    invoke-static {p2, v6}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v6

    invoke-interface {v1, v6}, Lorg/apache/xmlbeans/XmlCursor;->getAttributeText(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v6, "spinCount":Ljava/lang/String;
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 110
    if-eqz v2, :cond_2

    .line 111
    const/16 v7, 0x10

    invoke-static {v2, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 112
    .local v7, "hash1":I
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->createXorVerifier1(Ljava/lang/String;)I

    move-result v8

    .line 113
    .local v8, "hash2":I
    if-ne v7, v8, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 115
    .end local v7    # "hash1":I
    .end local v8    # "hash2":I
    :cond_2
    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    if-eqz v5, :cond_4

    if-nez v6, :cond_3

    goto :goto_0

    .line 119
    :cond_3
    invoke-static {v4}, Ljavax/xml/bind/DatatypeConverter;->parseBase64Binary(Ljava/lang/String;)[B

    move-result-object v7

    .line 120
    .local v7, "hash1":[B
    invoke-static {v3}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->fromString(Ljava/lang/String;)Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v8

    .line 121
    .local v8, "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    invoke-static {v5}, Ljavax/xml/bind/DatatypeConverter;->parseBase64Binary(Ljava/lang/String;)[B

    move-result-object v9

    .line 122
    .local v9, "salt":[B
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 123
    .local v10, "spinCnt":I
    invoke-static {p1, v8, v9, v10, v0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->hashPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;[BIZ)[B

    move-result-object v0

    .line 124
    .local v0, "hash2":[B
    invoke-static {v7, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    return v11

    .line 116
    .end local v0    # "hash2":[B
    .end local v7    # "hash1":[B
    .end local v8    # "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .end local v9    # "salt":[B
    .end local v10    # "spinCnt":I
    :cond_4
    :goto_0
    return v0
.end method
