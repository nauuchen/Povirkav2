.class public abstract Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;
.super Ljava/lang/Object;
.source "ContentTypeManager.java"


# static fields
.field public static final CONTENT_TYPES_PART_NAME:Ljava/lang/String; = "[Content_Types].xml"

.field private static final CONTENT_TYPE_ATTRIBUTE_NAME:Ljava/lang/String; = "ContentType"

.field private static final DEFAULT_TAG_NAME:Ljava/lang/String; = "Default"

.field private static final EXTENSION_ATTRIBUTE_NAME:Ljava/lang/String; = "Extension"

.field private static final OVERRIDE_TAG_NAME:Ljava/lang/String; = "Override"

.field private static final PART_NAME_ATTRIBUTE_NAME:Ljava/lang/String; = "PartName"

.field public static final TYPES_NAMESPACE_URI:Ljava/lang/String; = "http://schemas.openxmlformats.org/package/2006/content-types"

.field private static final TYPES_TAG_NAME:Ljava/lang/String; = "Types"


# instance fields
.field protected container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

.field private defaultContentType:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private overrideContentType:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lorg/apache/poi/openxml4j/opc/PackagePartName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "pkg"    # Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p2, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    .line 97
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->defaultContentType:Ljava/util/TreeMap;

    .line 98
    if-eqz p1, :cond_0

    .line 100
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->parseContentTypesFile(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    new-instance v1, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    const-string v2, "Can\'t read content types part !"

    invoke-direct {v1, v2}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    .line 105
    .local v1, "ex":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    invoke-virtual {v1, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 107
    throw v1

    .line 110
    .end local v0    # "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    .end local v1    # "ex":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    :cond_0
    :goto_0
    return-void
.end method

.method private addDefaultContentType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "extension"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->defaultContentType:Ljava/util/TreeMap;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    return-void
.end method

.method private addOverrideContentType(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)V
    .locals 1
    .param p1, "partName"    # Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .param p2, "contentType"    # Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->overrideContentType:Ljava/util/TreeMap;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->overrideContentType:Ljava/util/TreeMap;

    .line 171
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->overrideContentType:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    return-void
.end method

.method private appendDefaultType(Lorg/w3c/dom/Element;Ljava/util/Map$Entry;)V
    .locals 3
    .param p1, "root"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 465
    .local p2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v1, "http://schemas.openxmlformats.org/package/2006/content-types"

    const-string v2, "Default"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 466
    .local v0, "defaultType":Lorg/w3c/dom/Element;
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Extension"

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "ContentType"

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 469
    return-void
.end method

.method private appendSpecificTypes(Lorg/w3c/dom/Element;Ljava/util/Map$Entry;)V
    .locals 3
    .param p1, "root"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Ljava/util/Map$Entry<",
            "Lorg/apache/poi/openxml4j/opc/PackagePartName;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 449
    .local p2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v1, "http://schemas.openxmlformats.org/package/2006/content-types"

    const-string v2, "Override"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 450
    .local v0, "specificType":Lorg/w3c/dom/Element;
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PartName"

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "ContentType"

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 453
    return-void
.end method

.method private parseContentTypesFile(Ljava/io/InputStream;)V
    .locals 11
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation

    .line 374
    const-string v0, "http://schemas.openxmlformats.org/package/2006/content-types"

    :try_start_0
    invoke-static {p1}, Lorg/apache/poi/util/DocumentHelper;->readDocument(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 377
    .local v1, "xmlContentTypetDoc":Lorg/w3c/dom/Document;
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    const-string v3, "Default"

    invoke-interface {v2, v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 378
    .local v2, "defaultTypes":Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    .local v3, "defaultTypeCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const-string v5, "ContentType"

    if-ge v4, v3, :cond_0

    .line 380
    :try_start_1
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 381
    .local v6, "element":Lorg/w3c/dom/Element;
    const-string v7, "Extension"

    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 382
    .local v7, "extension":Ljava/lang/String;
    invoke-interface {v6, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 383
    .local v5, "contentType":Ljava/lang/String;
    invoke-direct {p0, v7, v5}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->addDefaultContentType(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    .end local v5    # "contentType":Ljava/lang/String;
    .end local v6    # "element":Lorg/w3c/dom/Element;
    .end local v7    # "extension":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 387
    .end local v4    # "i":I
    :cond_0
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4

    const-string v6, "Override"

    invoke-interface {v4, v0, v6}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 388
    .local v0, "overrideTypes":Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    .line 389
    .local v4, "overrideTypeCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v4, :cond_1

    .line 390
    invoke-interface {v0, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 391
    .local v7, "element":Lorg/w3c/dom/Element;
    new-instance v8, Ljava/net/URI;

    const-string v9, "PartName"

    invoke-interface {v7, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 392
    .local v8, "uri":Ljava/net/URI;
    invoke-static {v8}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v9

    .line 393
    .local v9, "partName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    invoke-interface {v7, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 394
    .local v10, "contentType":Ljava/lang/String;
    invoke-direct {p0, v9, v10}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->addOverrideContentType(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 389
    .end local v7    # "element":Lorg/w3c/dom/Element;
    .end local v8    # "uri":Ljava/net/URI;
    .end local v9    # "partName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .end local v10    # "contentType":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 402
    .end local v0    # "overrideTypes":Lorg/w3c/dom/NodeList;
    .end local v1    # "xmlContentTypetDoc":Lorg/w3c/dom/Document;
    .end local v2    # "defaultTypes":Lorg/w3c/dom/NodeList;
    .end local v3    # "defaultTypeCount":I
    .end local v4    # "overrideTypeCount":I
    .end local v6    # "i":I
    :cond_1
    nop

    .line 403
    return-void

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 398
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 399
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 396
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v0

    .line 397
    .local v0, "urie":Ljava/net/URISyntaxException;
    new-instance v1, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addContentType(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)V
    .locals 3
    .param p1, "partName"    # Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .param p2, "contentType"    # Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->defaultContentType:Ljava/util/TreeMap;

    invoke-virtual {v0, p2}, Ljava/util/TreeMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    .line 151
    .local v0, "defaultCTExists":Z
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getExtension()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "extension":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->defaultContentType:Ljava/util/TreeMap;

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    if-nez v0, :cond_2

    .line 156
    invoke-direct {p0, v1, p2}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->addDefaultContentType(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 154
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->addOverrideContentType(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)V

    .line 157
    :cond_2
    :goto_1
    return-void
.end method

.method public clearAll()V
    .locals 1

    .line 350
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->defaultContentType:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 351
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->overrideContentType:Ljava/util/TreeMap;

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 353
    :cond_0
    return-void
.end method

.method public clearOverrideContentTypes()V
    .locals 1

    .line 360
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->overrideContentType:Ljava/util/TreeMap;

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 362
    :cond_0
    return-void
.end method

.method public getContentType(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Ljava/lang/String;
    .locals 3
    .param p1, "partName"    # Lorg/apache/poi/openxml4j/opc/PackagePartName;

    .line 321
    if-eqz p1, :cond_4

    .line 324
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->overrideContentType:Ljava/util/TreeMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->overrideContentType:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 328
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getExtension()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "extension":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->defaultContentType:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->defaultContentType:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 339
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 340
    :cond_2
    new-instance v1, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException;

    const-string v2, "Rule M2.4 exception : this error should NEVER happen! If you can provide the triggering file, then please raise a bug at https://bz.apache.org/bugzilla/enter_bug.cgi?product=POI and attach the file that triggers it, thanks!"

    invoke-direct {v1, v2}, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 343
    :cond_3
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 322
    .end local v0    # "extension":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "partName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isContentTypeRegister(Ljava/lang/String;)Z
    .locals 2
    .param p1, "contentType"    # Ljava/lang/String;

    .line 274
    if-eqz p1, :cond_2

    .line 277
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->defaultContentType:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->overrideContentType:Ljava/util/TreeMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 275
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "contentType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeContentType(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V
    .locals 7
    .param p1, "partName"    # Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;
        }
    .end annotation

    .line 209
    if-eqz p1, :cond_9

    .line 213
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->overrideContentType:Ljava/util/TreeMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->overrideContentType:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    return-void

    .line 221
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getExtension()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "extensionToDelete":Ljava/lang/String;
    const/4 v1, 0x1

    .line 223
    .local v1, "deleteDefaultContentTypeFlag":Z
    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    if-eqz v2, :cond_3

    .line 225
    :try_start_0
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getParts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 226
    .local v3, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getExtension()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    .line 229
    const/4 v1, 0x0

    .line 230
    goto :goto_1

    .end local v3    # "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    :cond_1
    goto :goto_0

    .line 235
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    goto :goto_2

    .line 233
    :catch_0
    move-exception v2

    .line 234
    .local v2, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    new-instance v3, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 239
    .end local v2    # "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 240
    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->defaultContentType:Ljava/util/TreeMap;

    invoke-virtual {v2, v0}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_4
    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    if-eqz v2, :cond_8

    .line 252
    :try_start_1
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getParts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 253
    .restart local v3    # "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->getContentType(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    goto :goto_4

    .line 255
    :cond_5
    new-instance v4, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rule M2.4 is not respected: Nor a default element or override element is associated with the part: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    .end local v0    # "extensionToDelete":Ljava/lang/String;
    .end local v1    # "deleteDefaultContentTypeFlag":Z
    .end local p1    # "partName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    throw v4
    :try_end_1
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v3    # "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .restart local v0    # "extensionToDelete":Ljava/lang/String;
    .restart local v1    # "deleteDefaultContentTypeFlag":Z
    .restart local p1    # "partName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    :cond_6
    :goto_4
    goto :goto_3

    .line 261
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_7
    goto :goto_5

    .line 259
    :catch_1
    move-exception v2

    .line 260
    .local v2, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    new-instance v3, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 263
    .end local v2    # "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    :cond_8
    :goto_5
    return-void

    .line 210
    .end local v0    # "extensionToDelete":Ljava/lang/String;
    .end local v1    # "deleteDefaultContentTypeFlag":Z
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "partName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public save(Ljava/io/OutputStream;)Z
    .locals 4
    .param p1, "outStream"    # Ljava/io/OutputStream;

    .line 414
    invoke-static {}, Lorg/apache/poi/util/DocumentHelper;->createDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 417
    .local v0, "xmlOutDoc":Lorg/w3c/dom/Document;
    const-string v1, "http://schemas.openxmlformats.org/package/2006/content-types"

    const-string v2, "Types"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 418
    .local v1, "typesElem":Lorg/w3c/dom/Element;
    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 421
    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->defaultContentType:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 422
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v1, v3}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->appendDefaultType(Lorg/w3c/dom/Element;Ljava/util/Map$Entry;)V

    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 426
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->overrideContentType:Ljava/util/TreeMap;

    if-eqz v2, :cond_1

    .line 427
    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 429
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;>;"
    invoke-direct {p0, v1, v3}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->appendSpecificTypes(Lorg/w3c/dom/Element;Ljava/util/Map$Entry;)V

    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;>;"
    goto :goto_1

    .line 432
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Document;->normalize()V

    .line 435
    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->saveImpl(Lorg/w3c/dom/Document;Ljava/io/OutputStream;)Z

    move-result v2

    return v2
.end method

.method public abstract saveImpl(Lorg/w3c/dom/Document;Ljava/io/OutputStream;)Z
.end method
