.class public Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;
.super Ljavax/xml/crypto/dsig/TransformService;
.source "RelationshipTransformService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;

.field public static final TRANSFORM_URI:Ljava/lang/String; = "http://schemas.openxmlformats.org/package/2006/RelationshipTransform"


# instance fields
.field private final sourceIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 96
    invoke-direct {p0}, Ljavax/xml/crypto/dsig/TransformService;-><init>()V

    .line 97
    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "constructor"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->sourceIds:Ljava/util/List;

    .line 99
    return-void
.end method

.method public static declared-synchronized registerDsigProvider()V
    .locals 7

    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;

    monitor-enter v0

    .line 109
    :try_start_0
    const-string v1, "POIXmlDsigProvider"

    .line 110
    .local v1, "dsigProvider":Ljava/lang/String;
    const-string v2, "POIXmlDsigProvider"

    invoke-static {v2}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 111
    new-instance v2, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$1;

    const-string v3, "POIXmlDsigProvider"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-string v6, "POIXmlDsigProvider"

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$1;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 114
    .local v2, "p":Ljava/security/Provider;
    const-string v3, "TransformService.http://schemas.openxmlformats.org/package/2006/RelationshipTransform"

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v3, "TransformService.http://schemas.openxmlformats.org/package/2006/RelationshipTransform MechanismType"

    const-string v4, "DOM"

    invoke-virtual {v2, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-static {v2}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .end local v2    # "p":Ljava/security/Provider;
    :cond_0
    monitor-exit v0

    return-void

    .line 108
    .end local v1    # "dsigProvider":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 5

    .line 172
    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "getParameterSpec"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 173
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Ljavax/xml/crypto/XMLStructure;Ljavax/xml/crypto/XMLCryptoContext;)V
    .locals 14
    .param p1, "parent"    # Ljavax/xml/crypto/XMLStructure;
    .param p2, "context"    # Ljavax/xml/crypto/XMLCryptoContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 135
    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "init(parent,context)"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 136
    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parent java type: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 137
    move-object v2, p1

    check-cast v2, Ljavax/xml/crypto/dom/DOMStructure;

    .line 138
    .local v2, "domParent":Ljavax/xml/crypto/dom/DOMStructure;
    invoke-virtual {v2}, Ljavax/xml/crypto/dom/DOMStructure;->getNode()Lorg/w3c/dom/Node;

    move-result-object v3

    .line 141
    .local v3, "parentNode":Lorg/w3c/dom/Node;
    :try_start_0
    sget-object v5, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v3, v5}, Lorg/w3/x2000/x09/xmldsig/TransformDocument$Factory;->parse(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/XmlOptions;)Lorg/w3/x2000/x09/xmldsig/TransformDocument;

    move-result-object v5

    .line 142
    .local v5, "transDoc":Lorg/w3/x2000/x09/xmldsig/TransformDocument;
    invoke-interface {v5}, Lorg/w3/x2000/x09/xmldsig/TransformDocument;->getTransform()Lorg/w3/x2000/x09/xmldsig/TransformType;

    move-result-object v6

    sget-object v7, Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/RelationshipReferenceDocument;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v7}, Lorg/apache/xmlbeans/SchemaType;->getDocumentElementName()Ljavax/xml/namespace/QName;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/w3/x2000/x09/xmldsig/TransformType;->selectChildren(Ljavax/xml/namespace/QName;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object v6

    .line 143
    .local v6, "xoList":[Lorg/apache/xmlbeans/XmlObject;
    array-length v7, v6

    if-nez v7, :cond_0

    .line 144
    const/4 v7, 0x5

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "no RelationshipReference/@SourceId parameters present"

    aput-object v9, v8, v4

    invoke-virtual {v0, v7, v8}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 146
    :cond_0
    move-object v0, v6

    .local v0, "arr$":[Lorg/apache/xmlbeans/XmlObject;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v7, :cond_1

    aget-object v9, v0, v8

    .line 147
    .local v9, "xo":Lorg/apache/xmlbeans/XmlObject;
    move-object v10, v9

    check-cast v10, Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/CTRelationshipReference;

    invoke-interface {v10}, Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/CTRelationshipReference;->getSourceId()Ljava/lang/String;

    move-result-object v10

    .line 148
    .local v10, "sourceId":Ljava/lang/String;
    sget-object v11, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const-string v13, "sourceId: "

    aput-object v13, v12, v4

    aput-object v10, v12, v1

    invoke-virtual {v11, v1, v12}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_1

    .line 149
    move-object v11, p0

    :try_start_1
    iget-object v12, v11, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->sourceIds:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_1 .. :try_end_1} :catch_0

    .line 146
    nop

    .end local v9    # "xo":Lorg/apache/xmlbeans/XmlObject;
    .end local v10    # "sourceId":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 151
    .end local v0    # "arr$":[Lorg/apache/xmlbeans/XmlObject;
    .end local v5    # "transDoc":Lorg/w3/x2000/x09/xmldsig/TransformDocument;
    .end local v6    # "xoList":[Lorg/apache/xmlbeans/XmlObject;
    .end local v7    # "len$":I
    .end local v8    # "i$":I
    :catch_0
    move-exception v0

    goto :goto_1

    .line 146
    .restart local v0    # "arr$":[Lorg/apache/xmlbeans/XmlObject;
    .restart local v5    # "transDoc":Lorg/w3/x2000/x09/xmldsig/TransformDocument;
    .restart local v6    # "xoList":[Lorg/apache/xmlbeans/XmlObject;
    .restart local v7    # "len$":I
    .restart local v8    # "i$":I
    :cond_1
    move-object v11, p0

    .line 153
    .end local v0    # "arr$":[Lorg/apache/xmlbeans/XmlObject;
    .end local v5    # "transDoc":Lorg/w3/x2000/x09/xmldsig/TransformDocument;
    .end local v6    # "xoList":[Lorg/apache/xmlbeans/XmlObject;
    .end local v7    # "len$":I
    .end local v8    # "i$":I
    nop

    .line 154
    return-void

    .line 151
    :catch_1
    move-exception v0

    move-object v11, p0

    .line 152
    .local v0, "e":Lorg/apache/xmlbeans/XmlException;
    :goto_1
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public init(Ljavax/xml/crypto/dsig/spec/TransformParameterSpec;)V
    .locals 5
    .param p1, "params"    # Ljavax/xml/crypto/dsig/spec/TransformParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 123
    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "init(params)"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 124
    instance-of v0, p1, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;

    if-eqz v0, :cond_1

    .line 127
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;

    .line 128
    .local v0, "relParams":Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;
    iget-object v1, v0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;->sourceIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 129
    .local v2, "sourceId":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->sourceIds:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "sourceId":Ljava/lang/String;
    :cond_0
    return-void

    .line 125
    .end local v0    # "relParams":Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;
    :cond_1
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>()V

    throw v0
.end method

.method public isFeatureSupported(Ljava/lang/String;)Z
    .locals 5
    .param p1, "feature"    # Ljava/lang/String;

    .line 232
    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "isFeatureSupported(feature)"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 233
    return v4
.end method

.method public marshalParams(Ljavax/xml/crypto/XMLStructure;Ljavax/xml/crypto/XMLCryptoContext;)V
    .locals 9
    .param p1, "parent"    # Ljavax/xml/crypto/XMLStructure;
    .param p2, "context"    # Ljavax/xml/crypto/XMLCryptoContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/crypto/MarshalException;
        }
    .end annotation

    .line 158
    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "marshallParams(parent,context)"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 159
    move-object v0, p1

    check-cast v0, Ljavax/xml/crypto/dom/DOMStructure;

    .line 160
    .local v0, "domParent":Ljavax/xml/crypto/dom/DOMStructure;
    invoke-virtual {v0}, Ljavax/xml/crypto/dom/DOMStructure;->getNode()Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 161
    .local v1, "parentNode":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    .line 163
    .local v2, "doc":Lorg/w3c/dom/Document;
    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->sourceIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 164
    .local v4, "sourceId":Ljava/lang/String;
    const-string v5, "http://schemas.openxmlformats.org/package/2006/digital-signature"

    const-string v6, "mdssi:RelationshipReference"

    invoke-interface {v2, v5, v6}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 165
    .local v6, "el":Lorg/w3c/dom/Element;
    const-string v7, "http://www.w3.org/2000/xmlns/"

    const-string/jumbo v8, "xmlns:mdssi"

    invoke-interface {v6, v7, v8, v5}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v5, "SourceId"

    invoke-interface {v6, v5, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-interface {v1, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 168
    .end local v4    # "sourceId":Ljava/lang/String;
    .end local v6    # "el":Lorg/w3c/dom/Element;
    goto :goto_0

    .line 169
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public transform(Ljavax/xml/crypto/Data;Ljavax/xml/crypto/XMLCryptoContext;)Ljavax/xml/crypto/Data;
    .locals 16
    .param p1, "data"    # Ljavax/xml/crypto/Data;
    .param p2, "context"    # Ljavax/xml/crypto/XMLCryptoContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/crypto/dsig/TransformException;
        }
    .end annotation

    .line 184
    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "transform(data,context)"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 185
    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data java type: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 186
    move-object/from16 v2, p1

    check-cast v2, Ljavax/xml/crypto/OctetStreamData;

    .line 187
    .local v2, "octetStreamData":Ljavax/xml/crypto/OctetStreamData;
    new-array v3, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljavax/xml/crypto/OctetStreamData;->getURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 188
    invoke-virtual {v2}, Ljavax/xml/crypto/OctetStreamData;->getOctetStream()Ljava/io/InputStream;

    move-result-object v3

    .line 192
    .local v3, "octetStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v3}, Lorg/apache/poi/util/DocumentHelper;->readDocument(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .local v0, "doc":Lorg/w3c/dom/Document;
    nop

    .line 198
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    .line 199
    .local v5, "root":Lorg/w3c/dom/Element;
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 200
    .local v6, "nl":Lorg/w3c/dom/NodeList;
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    .line 201
    .local v7, "rsList":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lorg/w3c/dom/Element;>;"
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    sub-int/2addr v8, v1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_3

    .line 202
    invoke-interface {v6, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 203
    .local v9, "n":Lorg/w3c/dom/Node;
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Relationship"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 204
    move-object v10, v9

    check-cast v10, Lorg/w3c/dom/Element;

    .line 205
    .local v10, "el":Lorg/w3c/dom/Element;
    const-string v11, "Id"

    invoke-interface {v10, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 206
    .local v11, "id":Ljava/lang/String;
    move-object/from16 v12, p0

    iget-object v13, v12, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->sourceIds:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 207
    const-string v13, "TargetMode"

    invoke-interface {v10, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 208
    .local v14, "targetMode":Ljava/lang/String;
    const-string v15, ""

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 209
    const-string v15, "Internal"

    invoke-interface {v10, v13, v15}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_0
    invoke-virtual {v7, v11, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 203
    .end local v10    # "el":Lorg/w3c/dom/Element;
    .end local v11    # "id":Ljava/lang/String;
    .end local v14    # "targetMode":Ljava/lang/String;
    :cond_1
    move-object/from16 v12, p0

    .line 214
    :cond_2
    :goto_1
    invoke-interface {v5, v9}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 201
    .end local v9    # "n":Lorg/w3c/dom/Node;
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    :cond_3
    move-object/from16 v12, p0

    .line 217
    .end local v8    # "i":I
    invoke-virtual {v7}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    .line 218
    .local v9, "el":Lorg/w3c/dom/Element;
    invoke-interface {v5, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_2

    .line 221
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "el":Lorg/w3c/dom/Element;
    :cond_4
    sget-object v8, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "# Relationship elements: "

    aput-object v10, v9, v4

    invoke-virtual {v7}, Ljava/util/TreeMap;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v1

    invoke-virtual {v8, v1, v9}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 223
    new-instance v1, Lorg/apache/jcp/xml/dsig/internal/dom/ApacheNodeSetData;

    new-instance v4, Lorg/apache/xml/security/signature/XMLSignatureInput;

    invoke-direct {v4, v5}, Lorg/apache/xml/security/signature/XMLSignatureInput;-><init>(Lorg/w3c/dom/Node;)V

    invoke-direct {v1, v4}, Lorg/apache/jcp/xml/dsig/internal/dom/ApacheNodeSetData;-><init>(Lorg/apache/xml/security/signature/XMLSignatureInput;)V

    return-object v1

    .line 193
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "root":Lorg/w3c/dom/Element;
    .end local v6    # "nl":Lorg/w3c/dom/NodeList;
    .end local v7    # "rsList":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lorg/w3c/dom/Element;>;"
    :catch_0
    move-exception v0

    move-object/from16 v12, p0

    move-object v1, v0

    const/4 v0, 0x0

    .line 194
    .restart local v0    # "doc":Lorg/w3c/dom/Document;
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljavax/xml/crypto/dsig/TransformException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljavax/xml/crypto/dsig/TransformException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public transform(Ljavax/xml/crypto/Data;Ljavax/xml/crypto/XMLCryptoContext;Ljava/io/OutputStream;)Ljavax/xml/crypto/Data;
    .locals 5
    .param p1, "data"    # Ljavax/xml/crypto/Data;
    .param p2, "context"    # Ljavax/xml/crypto/XMLCryptoContext;
    .param p3, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/crypto/dsig/TransformException;
        }
    .end annotation

    .line 227
    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "transform(data,context,os)"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 228
    const/4 v0, 0x0

    return-object v0
.end method
