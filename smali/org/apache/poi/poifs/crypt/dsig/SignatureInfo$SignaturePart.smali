.class public Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;
.super Ljava/lang/Object;
.source "SignatureInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SignaturePart"
.end annotation


# instance fields
.field private certChain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final signaturePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

.field private signer:Ljava/security/cert/X509Certificate;

.field final synthetic this$0:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;


# direct methods
.method private constructor <init>(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0
    .param p2, "signaturePart"    # Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 183
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;->this$0:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;->signaturePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 185
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;
    .param p2, "x1"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .param p3, "x2"    # Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1;

    .line 178
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;-><init>(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-void
.end method


# virtual methods
.method public getCertChain()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;->certChain:Ljava/util/List;

    return-object v0
.end method

.method public getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 1

    .line 191
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;->signaturePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    return-object v0
.end method

.method public getSignatureDocument()Lorg/w3/x2000/x09/xmldsig/SignatureDocument;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;->signaturePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v0, v1}, Lorg/w3/x2000/x09/xmldsig/SignatureDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/w3/x2000/x09/xmldsig/SignatureDocument;

    move-result-object v0

    return-object v0
.end method

.method public getSigner()Ljava/security/cert/X509Certificate;
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;->signer:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public validate()Z
    .locals 19

    .line 227
    move-object/from16 v1, p0

    new-instance v0, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;

    invoke-direct {v0}, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;-><init>()V

    move-object v2, v0

    .line 229
    .local v2, "keySelector":Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x1

    :try_start_0
    iget-object v0, v1, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;->signaturePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/util/DocumentHelper;->readDocument(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 230
    .local v0, "doc":Lorg/w3c/dom/Document;
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v7

    .line 231
    .local v7, "xpath":Ljavax/xml/xpath/XPath;
    const-string v8, "//*[@Id]"

    invoke-interface {v7, v8}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v8

    sget-object v9, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v8, v0, v9}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/NodeList;

    .line 232
    .local v8, "nl":Lorg/w3c/dom/NodeList;
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    .line 233
    .local v9, "length":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_0

    .line 234
    invoke-interface {v8, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    const-string v12, "Id"

    invoke-interface {v11, v12, v6}, Lorg/w3c/dom/Element;->setIdAttribute(Ljava/lang/String;Z)V

    .line 233
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 237
    .end local v10    # "i":I
    :cond_0
    new-instance v10, Ljavax/xml/crypto/dsig/dom/DOMValidateContext;

    invoke-direct {v10, v2, v0}, Ljavax/xml/crypto/dsig/dom/DOMValidateContext;-><init>(Ljavax/xml/crypto/KeySelector;Lorg/w3c/dom/Node;)V

    .line 238
    .local v10, "domValidateContext":Ljavax/xml/crypto/dsig/dom/DOMValidateContext;
    const-string v11, "org.jcp.xml.dsig.validateManifests"

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v10, v11, v12}, Ljavax/xml/crypto/dsig/dom/DOMValidateContext;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v11, v1, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;->this$0:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;

    invoke-static {v11}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->access$000(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;)Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getUriDereferencer()Ljavax/xml/crypto/URIDereferencer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljavax/xml/crypto/dsig/dom/DOMValidateContext;->setURIDereferencer(Ljavax/xml/crypto/URIDereferencer;)V

    .line 240
    iget-object v11, v1, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;->this$0:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;

    invoke-static {v11, v10}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->access$100(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Ljavax/xml/crypto/dsig/XMLValidateContext;)V

    .line 242
    iget-object v11, v1, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;->this$0:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;

    invoke-static {v11}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->access$000(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;)Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    move-result-object v11

    .line 243
    .local v11, "xmlSignatureFactory":Ljavax/xml/crypto/dsig/XMLSignatureFactory;
    invoke-virtual {v11, v10}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->unmarshalXMLSignature(Ljavax/xml/crypto/dsig/XMLValidateContext;)Ljavax/xml/crypto/dsig/XMLSignature;

    move-result-object v12

    .line 247
    .local v12, "xmlSignature":Ljavax/xml/crypto/dsig/XMLSignature;
    invoke-interface {v12}, Ljavax/xml/crypto/dsig/XMLSignature;->getSignedInfo()Ljavax/xml/crypto/dsig/SignedInfo;

    move-result-object v13

    invoke-interface {v13}, Ljavax/xml/crypto/dsig/SignedInfo;->getReferences()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavax/xml/crypto/dsig/Reference;

    .line 248
    .local v14, "ref":Ljavax/xml/crypto/dsig/Reference;
    invoke-static {v14}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->brokenJvmWorkaround(Ljavax/xml/crypto/dsig/Reference;)V

    .end local v14    # "ref":Ljavax/xml/crypto/dsig/Reference;
    goto :goto_1

    .line 250
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v12}, Ljavax/xml/crypto/dsig/XMLSignature;->getObjects()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavax/xml/crypto/dsig/XMLObject;

    .line 251
    .local v14, "xo":Ljavax/xml/crypto/dsig/XMLObject;
    invoke-interface {v14}, Ljavax/xml/crypto/dsig/XMLObject;->getContent()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljavax/xml/crypto/XMLStructure;

    move-object/from16 v17, v16

    .line 252
    .local v17, "xs":Ljavax/xml/crypto/XMLStructure;
    move-object/from16 v5, v17

    .end local v17    # "xs":Ljavax/xml/crypto/XMLStructure;
    .local v5, "xs":Ljavax/xml/crypto/XMLStructure;
    instance-of v6, v5, Ljavax/xml/crypto/dsig/Manifest;

    if-eqz v6, :cond_2

    .line 253
    move-object v6, v5

    check-cast v6, Ljavax/xml/crypto/dsig/Manifest;

    invoke-interface {v6}, Ljavax/xml/crypto/dsig/Manifest;->getReferences()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljavax/xml/crypto/dsig/Reference;

    .line 254
    .local v18, "ref":Ljavax/xml/crypto/dsig/Reference;
    invoke-static/range {v18 .. v18}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->brokenJvmWorkaround(Ljavax/xml/crypto/dsig/Reference;)V

    .end local v18    # "ref":Ljavax/xml/crypto/dsig/Reference;
    goto :goto_4

    .end local v5    # "xs":Ljavax/xml/crypto/XMLStructure;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v6, 0x1

    goto :goto_3

    .end local v14    # "xo":Ljavax/xml/crypto/dsig/XMLObject;
    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_3
    const/4 v6, 0x1

    goto :goto_2

    .line 260
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v12, v10}, Ljavax/xml/crypto/dsig/XMLSignature;->validate(Ljavax/xml/crypto/dsig/XMLValidateContext;)Z

    move-result v5

    .line 262
    .local v5, "valid":Z
    if-eqz v5, :cond_5

    .line 263
    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->getSigner()Ljava/security/cert/X509Certificate;

    move-result-object v6

    iput-object v6, v1, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;->signer:Ljava/security/cert/X509Certificate;

    .line 264
    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->getCertChain()Ljava/util/List;

    move-result-object v6

    iput-object v6, v1, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;->certChain:Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/crypto/MarshalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/crypto/dsig/XMLSignatureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :cond_5
    return v5

    .line 284
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "valid":Z
    .end local v7    # "xpath":Ljavax/xml/xpath/XPath;
    .end local v8    # "nl":Lorg/w3c/dom/NodeList;
    .end local v9    # "length":I
    .end local v10    # "domValidateContext":Ljavax/xml/crypto/dsig/dom/DOMValidateContext;
    .end local v11    # "xmlSignatureFactory":Ljavax/xml/crypto/dsig/XMLSignatureFactory;
    .end local v12    # "xmlSignature":Ljavax/xml/crypto/dsig/XMLSignature;
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljavax/xml/crypto/dsig/XMLSignatureException;
    const-string v5, "error in validating the signature"

    .line 286
    .local v5, "s":Ljava/lang/String;
    invoke-static {}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->access$200()Lorg/apache/poi/util/POILogger;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v3

    const/4 v3, 0x1

    aput-object v0, v4, v3

    const/4 v3, 0x7

    invoke-virtual {v6, v3, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 287
    new-instance v3, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v3, v5, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 280
    .end local v0    # "e":Ljavax/xml/crypto/dsig/XMLSignatureException;
    .end local v5    # "s":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 281
    .local v0, "e":Ljavax/xml/crypto/MarshalException;
    const-string v5, "error in unmarshalling the signature"

    .line 282
    .restart local v5    # "s":Ljava/lang/String;
    invoke-static {}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->access$200()Lorg/apache/poi/util/POILogger;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v3

    const/4 v3, 0x1

    aput-object v0, v4, v3

    const/4 v3, 0x7

    invoke-virtual {v6, v3, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 283
    new-instance v3, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v3, v5, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 276
    .end local v0    # "e":Ljavax/xml/crypto/MarshalException;
    .end local v5    # "s":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 277
    .local v0, "e":Ljavax/xml/xpath/XPathExpressionException;
    const-string v5, "error in searching document with xpath expression"

    .line 278
    .restart local v5    # "s":Ljava/lang/String;
    invoke-static {}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->access$200()Lorg/apache/poi/util/POILogger;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v3

    const/4 v3, 0x1

    aput-object v0, v4, v3

    const/4 v3, 0x7

    invoke-virtual {v6, v3, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 279
    new-instance v3, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v3, v5, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 272
    .end local v0    # "e":Ljavax/xml/xpath/XPathExpressionException;
    .end local v5    # "s":Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 273
    .local v0, "e":Lorg/xml/sax/SAXException;
    const-string v5, "error in parsing document"

    .line 274
    .restart local v5    # "s":Ljava/lang/String;
    invoke-static {}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->access$200()Lorg/apache/poi/util/POILogger;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v3

    const/4 v3, 0x1

    aput-object v0, v4, v3

    const/4 v3, 0x7

    invoke-virtual {v6, v3, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 275
    new-instance v3, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v3, v5, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 268
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    .end local v5    # "s":Ljava/lang/String;
    :catch_4
    move-exception v0

    .line 269
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "error in reading document"

    .line 270
    .restart local v5    # "s":Ljava/lang/String;
    invoke-static {}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->access$200()Lorg/apache/poi/util/POILogger;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v3

    const/4 v3, 0x1

    aput-object v0, v4, v3

    const/4 v3, 0x7

    invoke-virtual {v6, v3, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 271
    new-instance v3, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v3, v5, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
