.class public Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;
.super Ljava/lang/Object;
.source "PackagePropertiesMarshaller.java"

# interfaces
.implements Lorg/apache/poi/openxml4j/opc/internal/PartMarshaller;


# static fields
.field protected static final KEYWORD_CATEGORY:Ljava/lang/String; = "category"

.field protected static final KEYWORD_CONTENT_STATUS:Ljava/lang/String; = "contentStatus"

.field protected static final KEYWORD_CONTENT_TYPE:Ljava/lang/String; = "contentType"

.field protected static final KEYWORD_CREATED:Ljava/lang/String; = "created"

.field protected static final KEYWORD_CREATOR:Ljava/lang/String; = "creator"

.field protected static final KEYWORD_DESCRIPTION:Ljava/lang/String; = "description"

.field protected static final KEYWORD_IDENTIFIER:Ljava/lang/String; = "identifier"

.field protected static final KEYWORD_KEYWORDS:Ljava/lang/String; = "keywords"

.field protected static final KEYWORD_LANGUAGE:Ljava/lang/String; = "language"

.field protected static final KEYWORD_LAST_MODIFIED_BY:Ljava/lang/String; = "lastModifiedBy"

.field protected static final KEYWORD_LAST_PRINTED:Ljava/lang/String; = "lastPrinted"

.field protected static final KEYWORD_MODIFIED:Ljava/lang/String; = "modified"

.field protected static final KEYWORD_REVISION:Ljava/lang/String; = "revision"

.field protected static final KEYWORD_SUBJECT:Ljava/lang/String; = "subject"

.field protected static final KEYWORD_TITLE:Ljava/lang/String; = "title"

.field protected static final KEYWORD_VERSION:Ljava/lang/String; = "version"

.field private static final namespaceCoreProperties:Ljavax/xml/stream/events/Namespace;

.field private static final namespaceDC:Ljavax/xml/stream/events/Namespace;

.field private static final namespaceDcTerms:Ljavax/xml/stream/events/Namespace;

.field private static final namespaceXSI:Ljavax/xml/stream/events/Namespace;


# instance fields
.field propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

.field xmlDoc:Lorg/w3c/dom/Document;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    invoke-static {}, Ljavax/xml/stream/XMLEventFactory;->newInstance()Ljavax/xml/stream/XMLEventFactory;

    move-result-object v0

    .line 42
    .local v0, "f":Ljavax/xml/stream/XMLEventFactory;
    const-string v1, "dc"

    const-string v2, "http://purl.org/dc/elements/1.1/"

    invoke-virtual {v0, v1, v2}, Ljavax/xml/stream/XMLEventFactory;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/Namespace;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceDC:Ljavax/xml/stream/events/Namespace;

    .line 43
    const-string v1, "cp"

    const-string v2, "http://schemas.openxmlformats.org/package/2006/metadata/core-properties"

    invoke-virtual {v0, v1, v2}, Ljavax/xml/stream/XMLEventFactory;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/Namespace;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceCoreProperties:Ljavax/xml/stream/events/Namespace;

    .line 44
    const-string v1, "dcterms"

    const-string v2, "http://purl.org/dc/terms/"

    invoke-virtual {v0, v1, v2}, Ljavax/xml/stream/XMLEventFactory;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/Namespace;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceDcTerms:Ljavax/xml/stream/events/Namespace;

    .line 45
    const-string/jumbo v1, "xsi"

    const-string v2, "http://www.w3.org/2001/XMLSchema-instance"

    invoke-virtual {v0, v1, v2}, Ljavax/xml/stream/XMLEventFactory;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/Namespace;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceXSI:Ljavax/xml/stream/events/Namespace;

    .line 46
    .end local v0    # "f":Ljavax/xml/stream/XMLEventFactory;
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->xmlDoc:Lorg/w3c/dom/Document;

    return-void
.end method

.method private addCategory()V
    .locals 3

    .line 165
    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceCoreProperties:Ljavax/xml/stream/events/Namespace;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getCategoryProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v1

    const-string v2, "category"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Ljavax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;)Lorg/w3c/dom/Element;

    .line 166
    return-void
.end method

.method private addContentStatus()V
    .locals 3

    .line 172
    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceCoreProperties:Ljavax/xml/stream/events/Namespace;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getContentStatusProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v1

    const-string v2, "contentStatus"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Ljavax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;)Lorg/w3c/dom/Element;

    .line 173
    return-void
.end method

.method private addContentType()V
    .locals 3

    .line 179
    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceCoreProperties:Ljavax/xml/stream/events/Namespace;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getContentTypeProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v1

    const-string v2, "contentType"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Ljavax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;)Lorg/w3c/dom/Element;

    .line 180
    return-void
.end method

.method private addCreated()V
    .locals 6

    .line 186
    sget-object v2, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceDcTerms:Ljavax/xml/stream/events/Namespace;

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getCreatedProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v3

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getCreatedPropertyString()Ljava/lang/String;

    move-result-object v4

    const-string v1, "created"

    const-string v5, "dcterms:W3CDTF"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Ljavax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 188
    return-void
.end method

.method private addCreator()V
    .locals 3

    .line 194
    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceDC:Ljavax/xml/stream/events/Namespace;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getCreatorProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v1

    const-string v2, "creator"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Ljavax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;)Lorg/w3c/dom/Element;

    .line 195
    return-void
.end method

.method private addDescription()V
    .locals 3

    .line 201
    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceDC:Ljavax/xml/stream/events/Namespace;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getDescriptionProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v1

    const-string v2, "description"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Ljavax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;)Lorg/w3c/dom/Element;

    .line 202
    return-void
.end method

.method private addIdentifier()V
    .locals 3

    .line 208
    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceDC:Ljavax/xml/stream/events/Namespace;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getIdentifierProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v1

    const-string v2, "identifier"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Ljavax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;)Lorg/w3c/dom/Element;

    .line 209
    return-void
.end method

.method private addKeywords()V
    .locals 3

    .line 215
    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceCoreProperties:Ljavax/xml/stream/events/Namespace;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getKeywordsProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v1

    const-string v2, "keywords"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Ljavax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;)Lorg/w3c/dom/Element;

    .line 216
    return-void
.end method

.method private addLanguage()V
    .locals 3

    .line 222
    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceDC:Ljavax/xml/stream/events/Namespace;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getLanguageProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v1

    const-string v2, "language"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Ljavax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;)Lorg/w3c/dom/Element;

    .line 223
    return-void
.end method

.method private addLastModifiedBy()V
    .locals 3

    .line 229
    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceCoreProperties:Ljavax/xml/stream/events/Namespace;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getLastModifiedByProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v1

    const-string v2, "lastModifiedBy"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Ljavax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;)Lorg/w3c/dom/Element;

    .line 230
    return-void
.end method

.method private addLastPrinted()V
    .locals 4

    .line 237
    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceCoreProperties:Ljavax/xml/stream/events/Namespace;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getLastPrintedProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getLastPrintedPropertyString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "lastPrinted"

    invoke-direct {p0, v3, v0, v1, v2}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Ljavax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 238
    return-void
.end method

.method private addModified()V
    .locals 6

    .line 244
    sget-object v2, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceDcTerms:Ljavax/xml/stream/events/Namespace;

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getModifiedProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v3

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getModifiedPropertyString()Ljava/lang/String;

    move-result-object v4

    const-string v1, "modified"

    const-string v5, "dcterms:W3CDTF"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Ljavax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 246
    return-void
.end method

.method private addRevision()V
    .locals 3

    .line 252
    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceCoreProperties:Ljavax/xml/stream/events/Namespace;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getRevisionProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v1

    const-string v2, "revision"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Ljavax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;)Lorg/w3c/dom/Element;

    .line 253
    return-void
.end method

.method private addSubject()V
    .locals 3

    .line 259
    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceDC:Ljavax/xml/stream/events/Namespace;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getSubjectProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v1

    const-string v2, "subject"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Ljavax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;)Lorg/w3c/dom/Element;

    .line 260
    return-void
.end method

.method private addTitle()V
    .locals 3

    .line 266
    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceDC:Ljavax/xml/stream/events/Namespace;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getTitleProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Ljavax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;)Lorg/w3c/dom/Element;

    .line 267
    return-void
.end method

.method private addVersion()V
    .locals 3

    .line 270
    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceCoreProperties:Ljavax/xml/stream/events/Namespace;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getVersionProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v1

    const-string/jumbo v2, "version"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Ljavax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;)Lorg/w3c/dom/Element;

    .line 271
    return-void
.end method

.method private getQName(Ljava/lang/String;Ljavax/xml/stream/events/Namespace;)Ljava/lang/String;
    .locals 2
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljavax/xml/stream/events/Namespace;

    .line 134
    invoke-interface {p2}, Ljavax/xml/stream/events/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljavax/xml/stream/events/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private setElementTextContent(Ljava/lang/String;Ljavax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;)Lorg/w3c/dom/Element;
    .locals 1
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljavax/xml/stream/events/Namespace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljavax/xml/stream/events/Namespace;",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/w3c/dom/Element;"
        }
    .end annotation

    .line 130
    .local p3, "property":Lorg/apache/poi/openxml4j/util/Nullable;, "Lorg/apache/poi/openxml4j/util/Nullable<Ljava/lang/String;>;"
    invoke-virtual {p3}, Lorg/apache/poi/openxml4j/util/Nullable;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Ljavax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method private setElementTextContent(Ljava/lang/String;Ljavax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 5
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljavax/xml/stream/events/Namespace;
    .param p4, "propertyValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljavax/xml/stream/events/Namespace;",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/w3c/dom/Element;"
        }
    .end annotation

    .line 138
    .local p3, "property":Lorg/apache/poi/openxml4j/util/Nullable;, "Lorg/apache/poi/openxml4j/util/Nullable<*>;"
    invoke-virtual {p3}, Lorg/apache/poi/openxml4j/util/Nullable;->hasValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x0

    return-object v0

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->xmlDoc:Lorg/w3c/dom/Document;

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 142
    .local v0, "root":Lorg/w3c/dom/Element;
    invoke-interface {p2}, Ljavax/xml/stream/events/Namespace;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 143
    .local v1, "elem":Lorg/w3c/dom/Element;
    if-nez v1, :cond_1

    .line 145
    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->xmlDoc:Lorg/w3c/dom/Document;

    invoke-interface {p2}, Ljavax/xml/stream/events/Namespace;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->getQName(Ljava/lang/String;Ljavax/xml/stream/events/Namespace;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 146
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 148
    :cond_1
    invoke-interface {v1, p4}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 149
    return-object v1
.end method

.method private setElementTextContent(Ljava/lang/String;Ljavax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 4
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljavax/xml/stream/events/Namespace;
    .param p4, "propertyValue"    # Ljava/lang/String;
    .param p5, "xsiType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljavax/xml/stream/events/Namespace;",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/w3c/dom/Element;"
        }
    .end annotation

    .line 153
    .local p3, "property":Lorg/apache/poi/openxml4j/util/Nullable;, "Lorg/apache/poi/openxml4j/util/Nullable<*>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Ljavax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 154
    .local v0, "element":Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    .line 155
    sget-object v1, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceXSI:Ljavax/xml/stream/events/Namespace;

    invoke-interface {v1}, Ljavax/xml/stream/events/Namespace;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "type"

    invoke-direct {p0, v3, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->getQName(Ljava/lang/String;Ljavax/xml/stream/events/Namespace;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1, p5}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_0
    return-object v0
.end method


# virtual methods
.method public marshall(Lorg/apache/poi/openxml4j/opc/PackagePart;Ljava/io/OutputStream;)Z
    .locals 4
    .param p1, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;
        }
    .end annotation

    .line 92
    instance-of v0, p1, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    if-eqz v0, :cond_0

    .line 95
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    .line 98
    invoke-static {}, Lorg/apache/poi/util/DocumentHelper;->createDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->xmlDoc:Lorg/w3c/dom/Document;

    .line 99
    sget-object v1, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceCoreProperties:Ljavax/xml/stream/events/Namespace;

    invoke-interface {v1}, Ljavax/xml/stream/events/Namespace;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "coreProperties"

    invoke-direct {p0, v3, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->getQName(Ljava/lang/String;Ljavax/xml/stream/events/Namespace;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 101
    .local v0, "rootElem":Lorg/w3c/dom/Element;
    invoke-static {v0, v1}, Lorg/apache/poi/util/DocumentHelper;->addNamespaceDeclaration(Lorg/w3c/dom/Element;Ljavax/xml/stream/events/Namespace;)V

    .line 102
    sget-object v1, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceDC:Ljavax/xml/stream/events/Namespace;

    invoke-static {v0, v1}, Lorg/apache/poi/util/DocumentHelper;->addNamespaceDeclaration(Lorg/w3c/dom/Element;Ljavax/xml/stream/events/Namespace;)V

    .line 103
    sget-object v1, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceDcTerms:Ljavax/xml/stream/events/Namespace;

    invoke-static {v0, v1}, Lorg/apache/poi/util/DocumentHelper;->addNamespaceDeclaration(Lorg/w3c/dom/Element;Ljavax/xml/stream/events/Namespace;)V

    .line 104
    sget-object v1, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceXSI:Ljavax/xml/stream/events/Namespace;

    invoke-static {v0, v1}, Lorg/apache/poi/util/DocumentHelper;->addNamespaceDeclaration(Lorg/w3c/dom/Element;Ljavax/xml/stream/events/Namespace;)V

    .line 105
    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->xmlDoc:Lorg/w3c/dom/Document;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 107
    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addCategory()V

    .line 108
    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addContentStatus()V

    .line 109
    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addContentType()V

    .line 110
    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addCreated()V

    .line 111
    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addCreator()V

    .line 112
    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addDescription()V

    .line 113
    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addIdentifier()V

    .line 114
    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addKeywords()V

    .line 115
    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addLanguage()V

    .line 116
    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addLastModifiedBy()V

    .line 117
    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addLastPrinted()V

    .line 118
    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addModified()V

    .line 119
    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addRevision()V

    .line 120
    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addSubject()V

    .line 121
    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addTitle()V

    .line 122
    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addVersion()V

    .line 123
    const/4 v1, 0x1

    return v1

    .line 93
    .end local v0    # "rootElem":Lorg/w3c/dom/Element;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'part\' must be a PackagePropertiesPart instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
