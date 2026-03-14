.class public Lorg/apache/poi/poifs/crypt/dsig/facets/Office2010SignatureFacet;
.super Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;
.source "Office2010SignatureFacet.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;-><init>()V

    return-void
.end method


# virtual methods
.method public postSign(Lorg/w3c/dom/Document;)V
    .locals 7
    .param p1, "document"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/crypto/MarshalException;
        }
    .end annotation

    .line 54
    const-string v0, "http://uri.etsi.org/01903/v1.3.2#"

    const-string v1, "QualifyingProperties"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 55
    .local v0, "nl":Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 61
    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    sget-object v5, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v4, v5}, Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType$Factory;->parse(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/XmlOptions;)Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;

    move-result-object v3
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .local v3, "qualProps":Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;
    nop

    .line 67
    invoke-interface {v3}, Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;->getUnsignedProperties()Lorg/etsi/uri/x01903/v13/UnsignedPropertiesType;

    move-result-object v4

    .line 68
    .local v4, "unsignedProps":Lorg/etsi/uri/x01903/v13/UnsignedPropertiesType;
    if-nez v4, :cond_0

    .line 69
    invoke-interface {v3}, Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;->addNewUnsignedProperties()Lorg/etsi/uri/x01903/v13/UnsignedPropertiesType;

    move-result-object v4

    .line 71
    :cond_0
    invoke-interface {v4}, Lorg/etsi/uri/x01903/v13/UnsignedPropertiesType;->getUnsignedSignatureProperties()Lorg/etsi/uri/x01903/v13/UnsignedSignaturePropertiesType;

    move-result-object v5

    .line 72
    .local v5, "unsignedSigProps":Lorg/etsi/uri/x01903/v13/UnsignedSignaturePropertiesType;
    if-nez v5, :cond_1

    .line 73
    invoke-interface {v4}, Lorg/etsi/uri/x01903/v13/UnsignedPropertiesType;->addNewUnsignedSignatureProperties()Lorg/etsi/uri/x01903/v13/UnsignedSignaturePropertiesType;

    .line 76
    :cond_1
    invoke-interface {v3}, Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {p1, v6, v2}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 77
    .local v2, "n":Lorg/w3c/dom/Node;
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v6, v2, v1}, Lorg/w3c/dom/Node;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 78
    return-void

    .line 62
    .end local v2    # "n":Lorg/w3c/dom/Node;
    .end local v3    # "qualProps":Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;
    .end local v4    # "unsignedProps":Lorg/etsi/uri/x01903/v13/UnsignedPropertiesType;
    .end local v5    # "unsignedSigProps":Lorg/etsi/uri/x01903/v13/UnsignedSignaturePropertiesType;
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 63
    .local v1, "e":Lorg/apache/xmlbeans/XmlException;
    .local v2, "qualProps":Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;
    new-instance v3, Ljavax/xml/crypto/MarshalException;

    invoke-direct {v3, v1}, Ljavax/xml/crypto/MarshalException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 56
    .end local v1    # "e":Lorg/apache/xmlbeans/XmlException;
    .end local v2    # "qualProps":Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;
    :cond_2
    new-instance v1, Ljavax/xml/crypto/MarshalException;

    const-string v2, "no XAdES-BES extension present"

    invoke-direct {v1, v2}, Ljavax/xml/crypto/MarshalException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
