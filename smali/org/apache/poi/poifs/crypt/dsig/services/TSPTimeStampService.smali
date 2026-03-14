.class public Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;
.super Ljava/lang/Object;
.source "TSPTimeStampService.java"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampService;


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method


# virtual methods
.method public mapDigestAlgoToOID(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 3
    .param p1, "digestAlgo"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 90
    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService$1;->$SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm:[I

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 94
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported digest algo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0

    .line 92
    :cond_2
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0

    .line 91
    :cond_3
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public setSignatureConfig(Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)V
    .locals 0
    .param p1, "signatureConfig"    # Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    .line 259
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    .line 260
    return-void
.end method

.method public timeStamp([BLorg/apache/poi/poifs/crypt/dsig/services/RevocationData;)[B
    .locals 39
    .param p1, "data"    # [B
    .param p2, "revocationData"    # Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 104
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getTspDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 105
    .local v1, "messageDigest":Ljava/security/MessageDigest;
    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 108
    .local v3, "digest":[B
    new-instance v4, Ljava/math/BigInteger;

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    const/16 v6, 0x80

    invoke-direct {v4, v6, v5}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 109
    .local v4, "nonce":Ljava/math/BigInteger;
    new-instance v5, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;

    invoke-direct {v5}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;-><init>()V

    .line 110
    .local v5, "requestGenerator":Lorg/bouncycastle/tsp/TimeStampRequestGenerator;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->setCertReq(Z)V

    .line 111
    iget-object v7, v0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v7}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getTspRequestPolicy()Ljava/lang/String;

    move-result-object v7

    .line 112
    .local v7, "requestPolicy":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 113
    new-instance v8, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v8, v7}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->setReqPolicy(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 115
    :cond_0
    iget-object v8, v0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v8}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getTspDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->mapDigestAlgoToOID(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    .line 116
    .local v8, "digestAlgoOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v5, v8, v3, v4}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->generate(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[BLjava/math/BigInteger;)Lorg/bouncycastle/tsp/TimeStampRequest;

    move-result-object v9

    .line 117
    .local v9, "request":Lorg/bouncycastle/tsp/TimeStampRequest;
    invoke-virtual {v9}, Lorg/bouncycastle/tsp/TimeStampRequest;->getEncoded()[B

    move-result-object v10

    .line 120
    .local v10, "encodedRequest":[B
    sget-object v11, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 121
    .local v11, "proxy":Ljava/net/Proxy;
    iget-object v12, v0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v12}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getProxyUrl()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 122
    new-instance v12, Ljava/net/URL;

    iget-object v13, v0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v13}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getProxyUrl()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 123
    .local v12, "proxyUrl":Ljava/net/URL;
    invoke-virtual {v12}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v13

    .line 124
    .local v13, "host":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/net/URL;->getPort()I

    move-result v14

    .line 125
    .local v14, "port":I
    new-instance v15, Ljava/net/Proxy;

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    move-object/from16 v17, v1

    .end local v1    # "messageDigest":Ljava/security/MessageDigest;
    .local v17, "messageDigest":Ljava/security/MessageDigest;
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-static {v13}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    move-object/from16 v18, v3

    .end local v3    # "digest":[B
    .local v18, "digest":[B
    const/4 v3, -0x1

    if-ne v14, v3, :cond_1

    const/16 v3, 0x50

    goto :goto_0

    :cond_1
    move v3, v14

    :goto_0
    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v15, v6, v1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    move-object v11, v15

    goto :goto_1

    .line 121
    .end local v12    # "proxyUrl":Ljava/net/URL;
    .end local v13    # "host":Ljava/lang/String;
    .end local v14    # "port":I
    .end local v17    # "messageDigest":Ljava/security/MessageDigest;
    .end local v18    # "digest":[B
    .restart local v1    # "messageDigest":Ljava/security/MessageDigest;
    .restart local v3    # "digest":[B
    :cond_2
    move-object/from16 v17, v1

    move-object/from16 v18, v3

    .line 128
    .end local v1    # "messageDigest":Ljava/security/MessageDigest;
    .end local v3    # "digest":[B
    .restart local v17    # "messageDigest":Ljava/security/MessageDigest;
    .restart local v18    # "digest":[B
    :goto_1
    new-instance v1, Ljava/net/URL;

    iget-object v2, v0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getTspUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 130
    .local v1, "huc":Ljava/net/HttpURLConnection;
    iget-object v2, v0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getTspUser()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getTspUser()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getTspPass()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "userPassword":Ljava/lang/String;
    const-string v3, "iso-8859-1"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-static {v3}, Ljavax/xml/bind/DatatypeConverter;->printBase64Binary([B)Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "encoding":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Basic "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v12, "Authorization"

    invoke-virtual {v1, v12, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .end local v2    # "userPassword":Ljava/lang/String;
    .end local v3    # "encoding":Ljava/lang/String;
    :cond_3
    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 137
    const/16 v2, 0x4e20

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 138
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 139
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 140
    iget-object v2, v0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "User-Agent"

    invoke-virtual {v1, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v2, v0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->isTspOldProtocol()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "application/timestamp-request"

    goto :goto_2

    :cond_4
    const-string v2, "application/timestamp-query"

    :goto_2
    const-string v3, "Content-Type"

    invoke-virtual {v1, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 146
    .local v2, "hucOut":Ljava/io/OutputStream;
    invoke-virtual {v2, v10}, Ljava/io/OutputStream;->write([B)V

    .line 149
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 151
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 152
    .local v6, "statusCode":I
    const/4 v12, 0x2

    const/16 v13, 0xc8

    const/4 v14, 0x0

    if-ne v6, v13, :cond_11

    .line 160
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "contentType":Ljava/lang/String;
    if-eqz v3, :cond_10

    .line 165
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 166
    .local v15, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-static {v13, v15}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 167
    sget-object v13, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v12, v12, [Ljava/lang/Object;

    const-string v20, "response content: "

    aput-object v20, v12, v14

    move-object/from16 v20, v2

    .end local v2    # "hucOut":Ljava/io/OutputStream;
    .local v20, "hucOut":Ljava/io/OutputStream;
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    .end local v4    # "nonce":Ljava/math/BigInteger;
    .end local v5    # "requestGenerator":Lorg/bouncycastle/tsp/TimeStampRequestGenerator;
    .local v21, "nonce":Ljava/math/BigInteger;
    .local v22, "requestGenerator":Lorg/bouncycastle/tsp/TimeStampRequestGenerator;
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5, v14}, Lorg/apache/poi/util/HexDump;->dump([BJI)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v12, v4

    invoke-virtual {v13, v4, v12}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 169
    iget-object v2, v0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->isTspOldProtocol()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "application/timestamp-response"

    goto :goto_3

    :cond_5
    const-string v2, "application/timestamp-reply"

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 178
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-eqz v2, :cond_e

    .line 183
    new-instance v2, Lorg/bouncycastle/tsp/TimeStampResponse;

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/bouncycastle/tsp/TimeStampResponse;-><init>([B)V

    .line 184
    .local v2, "timeStampResponse":Lorg/bouncycastle/tsp/TimeStampResponse;
    invoke-virtual {v2, v9}, Lorg/bouncycastle/tsp/TimeStampResponse;->validate(Lorg/bouncycastle/tsp/TimeStampRequest;)V

    .line 186
    invoke-virtual {v2}, Lorg/bouncycastle/tsp/TimeStampResponse;->getStatus()I

    move-result v4

    if-eqz v4, :cond_7

    .line 187
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "status: "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/bouncycastle/tsp/TimeStampResponse;->getStatus()I

    move-result v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v14

    const/4 v4, 0x1

    invoke-virtual {v13, v4, v5}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 188
    new-array v5, v4, [Ljava/lang/Object;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "status string: "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/bouncycastle/tsp/TimeStampResponse;->getStatusString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v14

    const/4 v4, 0x1

    invoke-virtual {v13, v4, v5}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 189
    invoke-virtual {v2}, Lorg/bouncycastle/tsp/TimeStampResponse;->getFailInfo()Lorg/bouncycastle/asn1/cmp/PKIFailureInfo;

    move-result-object v5

    .line 190
    .local v5, "failInfo":Lorg/bouncycastle/asn1/cmp/PKIFailureInfo;
    if-eqz v5, :cond_6

    .line 191
    new-array v12, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fail info int value: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/cmp/PKIFailureInfo;->intValue()I

    move-result v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v14, 0x0

    aput-object v4, v12, v14

    const/4 v4, 0x1

    invoke-virtual {v13, v4, v12}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 192
    const/16 v12, 0x100

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/cmp/PKIFailureInfo;->intValue()I

    move-result v14

    if-ne v12, v14, :cond_6

    .line 193
    new-array v12, v4, [Ljava/lang/Object;

    const-string/jumbo v14, "unaccepted policy"

    const/16 v16, 0x0

    aput-object v14, v12, v16

    invoke-virtual {v13, v4, v12}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 196
    :cond_6
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "timestamp response status != 0: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lorg/bouncycastle/tsp/TimeStampResponse;->getStatus()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 199
    .end local v5    # "failInfo":Lorg/bouncycastle/asn1/cmp/PKIFailureInfo;
    :cond_7
    invoke-virtual {v2}, Lorg/bouncycastle/tsp/TimeStampResponse;->getTimeStampToken()Lorg/bouncycastle/tsp/TimeStampToken;

    move-result-object v4

    .line 200
    .local v4, "timeStampToken":Lorg/bouncycastle/tsp/TimeStampToken;
    invoke-virtual {v4}, Lorg/bouncycastle/tsp/TimeStampToken;->getSID()Lorg/bouncycastle/cms/SignerId;

    move-result-object v5

    .line 201
    .local v5, "signerId":Lorg/bouncycastle/cms/SignerId;
    invoke-virtual {v5}, Lorg/bouncycastle/cms/SignerId;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v12

    .line 202
    .local v12, "signerCertSerialNumber":Ljava/math/BigInteger;
    invoke-virtual {v5}, Lorg/bouncycastle/cms/SignerId;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v14

    .line 203
    .local v14, "signerCertIssuer":Lorg/bouncycastle/asn1/x500/X500Name;
    move-object/from16 v19, v2

    move-object/from16 v23, v5

    const/4 v2, 0x1

    .end local v2    # "timeStampResponse":Lorg/bouncycastle/tsp/TimeStampResponse;
    .end local v5    # "signerId":Lorg/bouncycastle/cms/SignerId;
    .local v19, "timeStampResponse":Lorg/bouncycastle/tsp/TimeStampResponse;
    .local v23, "signerId":Lorg/bouncycastle/cms/SignerId;
    new-array v5, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v7

    .end local v7    # "requestPolicy":Ljava/lang/String;
    .local v25, "requestPolicy":Ljava/lang/String;
    const-string v7, "signer cert serial number: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v5, v7

    const/4 v2, 0x1

    invoke-virtual {v13, v2, v5}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 204
    new-array v5, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "signer cert issuer: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v5, v7

    const/4 v2, 0x1

    invoke-virtual {v13, v2, v5}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 207
    invoke-virtual {v4}, Lorg/bouncycastle/tsp/TimeStampToken;->getCertificates()Lorg/bouncycastle/util/Store;

    move-result-object v2

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Lorg/bouncycastle/util/Store;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v2

    .line 209
    .local v2, "certificates":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    const/4 v5, 0x0

    .line 210
    .local v5, "signerCert":Lorg/bouncycastle/cert/X509CertificateHolder;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 211
    .local v7, "certificateMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v26, v2

    .end local v2    # "certificates":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    .local v26, "certificates":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    move-object/from16 v2, v24

    check-cast v2, Lorg/bouncycastle/cert/X509CertificateHolder;

    .line 212
    .local v2, "certificate":Lorg/bouncycastle/cert/X509CertificateHolder;
    move-object/from16 v27, v8

    .end local v8    # "digestAlgoOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v27, "digestAlgoOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v2}, Lorg/bouncycastle/cert/X509CertificateHolder;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v8

    invoke-virtual {v14, v8}, Lorg/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v2}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 214
    move-object v5, v2

    .line 216
    :cond_8
    invoke-virtual {v2}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubject()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v8

    invoke-interface {v7, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v26

    move-object/from16 v8, v27

    goto :goto_4

    .line 211
    .end local v26    # "certificates":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    .end local v27    # "digestAlgoOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v2, "certificates":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    .restart local v8    # "digestAlgoOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_9
    move-object/from16 v26, v2

    move-object/from16 v27, v8

    .line 220
    .end local v2    # "certificates":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    .end local v8    # "digestAlgoOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v13    # "i$":Ljava/util/Iterator;
    .restart local v26    # "certificates":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    .restart local v27    # "digestAlgoOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-eqz v5, :cond_d

    .line 223
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v2, "tspCertificateChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    new-instance v8, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

    invoke-direct {v8}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;-><init>()V

    .line 225
    .local v8, "x509converter":Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;
    const-string v13, "BC"

    invoke-virtual {v8, v13}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

    .line 226
    move-object v13, v5

    .line 228
    .local v13, "certificate":Lorg/bouncycastle/cert/X509CertificateHolder;
    :goto_5
    move-object/from16 v24, v5

    .end local v5    # "signerCert":Lorg/bouncycastle/cert/X509CertificateHolder;
    .local v24, "signerCert":Lorg/bouncycastle/cert/X509CertificateHolder;
    sget-object v5, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->LOG:Lorg/apache/poi/util/POILogger;

    move-object/from16 v28, v9

    move-object/from16 v29, v10

    const/4 v9, 0x1

    .end local v9    # "request":Lorg/bouncycastle/tsp/TimeStampRequest;
    .end local v10    # "encodedRequest":[B
    .local v28, "request":Lorg/bouncycastle/tsp/TimeStampRequest;
    .local v29, "encodedRequest":[B
    new-array v10, v9, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v30, v11

    .end local v11    # "proxy":Ljava/net/Proxy;
    .local v30, "proxy":Ljava/net/Proxy;
    const-string v11, "adding to certificate chain: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v13}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubject()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    aput-object v9, v10, v11

    const/4 v9, 0x1

    invoke-virtual {v5, v9, v10}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 229
    invoke-virtual {v8, v13}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;->getCertificate(Lorg/bouncycastle/cert/X509CertificateHolder;)Ljava/security/cert/X509Certificate;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-virtual {v13}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubject()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v9

    invoke-virtual {v13}, Lorg/bouncycastle/cert/X509CertificateHolder;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 231
    goto :goto_6

    .line 233
    :cond_a
    invoke-virtual {v13}, Lorg/bouncycastle/cert/X509CertificateHolder;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v13, v9

    check-cast v13, Lorg/bouncycastle/cert/X509CertificateHolder;

    .line 234
    if-nez v13, :cond_c

    .line 237
    :goto_6
    new-instance v9, Lorg/bouncycastle/cert/X509CertificateHolder;

    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/X509Certificate;

    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/bouncycastle/cert/X509CertificateHolder;-><init>([B)V

    .line 238
    .local v9, "holder":Lorg/bouncycastle/cert/X509CertificateHolder;
    new-instance v10, Lorg/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;

    invoke-direct {v10}, Lorg/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;-><init>()V

    .line 239
    .local v10, "nameGen":Lorg/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;
    new-instance v11, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;

    invoke-direct {v11}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;-><init>()V

    .line 240
    .local v11, "sigAlgoFinder":Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;
    new-instance v31, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct/range {v31 .. v31}, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    move-object/from16 v32, v31

    .line 241
    .local v32, "hashAlgoFinder":Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;
    new-instance v31, Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider;

    invoke-direct/range {v31 .. v31}, Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider;-><init>()V

    move-object/from16 v33, v31

    .line 242
    .local v33, "calculator":Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider;
    move-object/from16 v31, v7

    .end local v7    # "certificateMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    .local v31, "certificateMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    new-instance v7, Lorg/bouncycastle/cms/bc/BcRSASignerInfoVerifierBuilder;

    move-object/from16 v34, v8

    move-object/from16 v8, v32

    move-object/from16 v32, v12

    move-object/from16 v12, v33

    .end local v33    # "calculator":Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider;
    .local v8, "hashAlgoFinder":Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;
    .local v12, "calculator":Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider;
    .local v32, "signerCertSerialNumber":Ljava/math/BigInteger;
    .local v34, "x509converter":Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;
    invoke-direct {v7, v10, v11, v8, v12}, Lorg/bouncycastle/cms/bc/BcRSASignerInfoVerifierBuilder;-><init>(Lorg/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;Lorg/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    .line 243
    .local v7, "verifierBuilder":Lorg/bouncycastle/cms/bc/BcRSASignerInfoVerifierBuilder;
    move-object/from16 v33, v8

    .end local v8    # "hashAlgoFinder":Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;
    .local v33, "hashAlgoFinder":Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;
    invoke-virtual {v7, v9}, Lorg/bouncycastle/cms/bc/BcRSASignerInfoVerifierBuilder;->build(Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/cms/SignerInformationVerifier;

    move-result-object v8

    .line 245
    .local v8, "verifier":Lorg/bouncycastle/cms/SignerInformationVerifier;
    invoke-virtual {v4, v8}, Lorg/bouncycastle/tsp/TimeStampToken;->validate(Lorg/bouncycastle/cms/SignerInformationVerifier;)V

    .line 248
    move-object/from16 v35, v7

    .end local v7    # "verifierBuilder":Lorg/bouncycastle/cms/bc/BcRSASignerInfoVerifierBuilder;
    .local v35, "verifierBuilder":Lorg/bouncycastle/cms/bc/BcRSASignerInfoVerifierBuilder;
    iget-object v7, v0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v7}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getTspValidator()Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampServiceValidator;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 249
    iget-object v7, v0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v7}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getTspValidator()Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampServiceValidator;

    move-result-object v7

    move-object/from16 v36, v12

    move-object/from16 v12, p2

    .end local v12    # "calculator":Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider;
    .local v36, "calculator":Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider;
    invoke-interface {v7, v2, v12}, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampServiceValidator;->validate(Ljava/util/List;Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;)V

    goto :goto_7

    .line 248
    .end local v36    # "calculator":Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider;
    .restart local v12    # "calculator":Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider;
    :cond_b
    move-object/from16 v36, v12

    move-object/from16 v12, p2

    .line 252
    .end local v12    # "calculator":Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider;
    .restart local v36    # "calculator":Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider;
    :goto_7
    move-object/from16 v37, v2

    const/4 v7, 0x1

    .end local v2    # "tspCertificateChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .local v37, "tspCertificateChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    new-array v2, v7, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v38, v8

    .end local v8    # "verifier":Lorg/bouncycastle/cms/SignerInformationVerifier;
    .local v38, "verifier":Lorg/bouncycastle/cms/SignerInformationVerifier;
    const-string/jumbo v8, "time-stamp token time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getGenTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v2, v8

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 255
    invoke-virtual {v4}, Lorg/bouncycastle/tsp/TimeStampToken;->getEncoded()[B

    move-result-object v2

    return-object v2

    .line 234
    .end local v9    # "holder":Lorg/bouncycastle/cert/X509CertificateHolder;
    .end local v10    # "nameGen":Lorg/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;
    .end local v11    # "sigAlgoFinder":Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;
    .end local v31    # "certificateMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    .end local v32    # "signerCertSerialNumber":Ljava/math/BigInteger;
    .end local v33    # "hashAlgoFinder":Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;
    .end local v34    # "x509converter":Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;
    .end local v35    # "verifierBuilder":Lorg/bouncycastle/cms/bc/BcRSASignerInfoVerifierBuilder;
    .end local v36    # "calculator":Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider;
    .end local v37    # "tspCertificateChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v38    # "verifier":Lorg/bouncycastle/cms/SignerInformationVerifier;
    .restart local v2    # "tspCertificateChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .local v7, "certificateMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    .local v8, "x509converter":Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;
    .local v12, "signerCertSerialNumber":Ljava/math/BigInteger;
    :cond_c
    move-object/from16 v37, v2

    move-object/from16 v31, v7

    move-object/from16 v34, v8

    move-object/from16 v32, v12

    move-object/from16 v12, p2

    .end local v2    # "tspCertificateChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v7    # "certificateMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    .end local v8    # "x509converter":Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;
    .end local v12    # "signerCertSerialNumber":Ljava/math/BigInteger;
    .restart local v31    # "certificateMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    .restart local v32    # "signerCertSerialNumber":Ljava/math/BigInteger;
    .restart local v34    # "x509converter":Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;
    .restart local v37    # "tspCertificateChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    move-object/from16 v5, v24

    move-object/from16 v9, v28

    move-object/from16 v10, v29

    move-object/from16 v11, v30

    move-object/from16 v12, v32

    goto/16 :goto_5

    .line 221
    .end local v13    # "certificate":Lorg/bouncycastle/cert/X509CertificateHolder;
    .end local v24    # "signerCert":Lorg/bouncycastle/cert/X509CertificateHolder;
    .end local v28    # "request":Lorg/bouncycastle/tsp/TimeStampRequest;
    .end local v29    # "encodedRequest":[B
    .end local v30    # "proxy":Ljava/net/Proxy;
    .end local v31    # "certificateMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    .end local v32    # "signerCertSerialNumber":Ljava/math/BigInteger;
    .end local v34    # "x509converter":Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;
    .end local v37    # "tspCertificateChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v5    # "signerCert":Lorg/bouncycastle/cert/X509CertificateHolder;
    .restart local v7    # "certificateMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    .local v9, "request":Lorg/bouncycastle/tsp/TimeStampRequest;
    .local v10, "encodedRequest":[B
    .local v11, "proxy":Ljava/net/Proxy;
    .restart local v12    # "signerCertSerialNumber":Ljava/math/BigInteger;
    :cond_d
    move-object/from16 v24, v5

    .end local v5    # "signerCert":Lorg/bouncycastle/cert/X509CertificateHolder;
    .restart local v24    # "signerCert":Lorg/bouncycastle/cert/X509CertificateHolder;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v5, "TSP response token has no signer certificate"

    invoke-direct {v2, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 179
    .end local v4    # "timeStampToken":Lorg/bouncycastle/tsp/TimeStampToken;
    .end local v12    # "signerCertSerialNumber":Ljava/math/BigInteger;
    .end local v14    # "signerCertIssuer":Lorg/bouncycastle/asn1/x500/X500Name;
    .end local v19    # "timeStampResponse":Lorg/bouncycastle/tsp/TimeStampResponse;
    .end local v23    # "signerId":Lorg/bouncycastle/cms/SignerId;
    .end local v24    # "signerCert":Lorg/bouncycastle/cert/X509CertificateHolder;
    .end local v25    # "requestPolicy":Ljava/lang/String;
    .end local v26    # "certificates":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    .end local v27    # "digestAlgoOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v7, "requestPolicy":Ljava/lang/String;
    .local v8, "digestAlgoOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_e
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Content-Length is zero"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 173
    :cond_f
    move-object/from16 v25, v7

    move-object/from16 v28, v9

    move-object/from16 v29, v10

    .end local v7    # "requestPolicy":Ljava/lang/String;
    .end local v9    # "request":Lorg/bouncycastle/tsp/TimeStampRequest;
    .end local v10    # "encodedRequest":[B
    .restart local v25    # "requestPolicy":Ljava/lang/String;
    .restart local v28    # "request":Lorg/bouncycastle/tsp/TimeStampRequest;
    .restart local v29    # "encodedRequest":[B
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid Content-Type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const-wide/16 v7, 0x0

    const/16 v9, 0xc8

    const/4 v10, 0x0

    invoke-static {v5, v7, v8, v10, v9}, Lorg/apache/poi/util/HexDump;->dump([BJII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 162
    .end local v15    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v20    # "hucOut":Ljava/io/OutputStream;
    .end local v21    # "nonce":Ljava/math/BigInteger;
    .end local v22    # "requestGenerator":Lorg/bouncycastle/tsp/TimeStampRequestGenerator;
    .end local v25    # "requestPolicy":Ljava/lang/String;
    .end local v28    # "request":Lorg/bouncycastle/tsp/TimeStampRequest;
    .end local v29    # "encodedRequest":[B
    .local v2, "hucOut":Ljava/io/OutputStream;
    .local v4, "nonce":Ljava/math/BigInteger;
    .local v5, "requestGenerator":Lorg/bouncycastle/tsp/TimeStampRequestGenerator;
    .restart local v7    # "requestPolicy":Ljava/lang/String;
    .restart local v9    # "request":Lorg/bouncycastle/tsp/TimeStampRequest;
    .restart local v10    # "encodedRequest":[B
    :cond_10
    move-object/from16 v20, v2

    move-object/from16 v21, v4

    .end local v2    # "hucOut":Ljava/io/OutputStream;
    .end local v4    # "nonce":Ljava/math/BigInteger;
    .restart local v20    # "hucOut":Ljava/io/OutputStream;
    .restart local v21    # "nonce":Ljava/math/BigInteger;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "missing Content-Type header"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 153
    .end local v3    # "contentType":Ljava/lang/String;
    .end local v20    # "hucOut":Ljava/io/OutputStream;
    .end local v21    # "nonce":Ljava/math/BigInteger;
    .restart local v2    # "hucOut":Ljava/io/OutputStream;
    .restart local v4    # "nonce":Ljava/math/BigInteger;
    :cond_11
    move-object/from16 v20, v2

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v25, v7

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v29, v10

    const/4 v2, 0x2

    .end local v2    # "hucOut":Ljava/io/OutputStream;
    .end local v4    # "nonce":Ljava/math/BigInteger;
    .end local v5    # "requestGenerator":Lorg/bouncycastle/tsp/TimeStampRequestGenerator;
    .end local v7    # "requestPolicy":Ljava/lang/String;
    .end local v8    # "digestAlgoOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v9    # "request":Lorg/bouncycastle/tsp/TimeStampRequest;
    .end local v10    # "encodedRequest":[B
    .restart local v20    # "hucOut":Ljava/io/OutputStream;
    .restart local v21    # "nonce":Ljava/math/BigInteger;
    .restart local v22    # "requestGenerator":Lorg/bouncycastle/tsp/TimeStampRequestGenerator;
    .restart local v25    # "requestPolicy":Ljava/lang/String;
    .restart local v27    # "digestAlgoOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v28    # "request":Lorg/bouncycastle/tsp/TimeStampRequest;
    .restart local v29    # "encodedRequest":[B
    sget-object v3, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v4, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "Error contacting TSP server "

    const/4 v7, 0x0

    aput-object v5, v2, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v8}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getTspUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", had status code "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x1

    aput-object v7, v2, v10

    invoke-virtual {v3, v4, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 155
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getTspUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
