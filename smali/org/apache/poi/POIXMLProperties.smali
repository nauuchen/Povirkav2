.class public Lorg/apache/poi/POIXMLProperties;
.super Ljava/lang/Object;
.source "POIXMLProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/POIXMLProperties$CustomProperties;,
        Lorg/apache/poi/POIXMLProperties$ExtendedProperties;,
        Lorg/apache/poi/POIXMLProperties$CoreProperties;
    }
.end annotation


# static fields
.field private static final NEW_CUST_INSTANCE:Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

.field private static final NEW_EXT_INSTANCE:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;


# instance fields
.field private core:Lorg/apache/poi/POIXMLProperties$CoreProperties;

.field private cust:Lorg/apache/poi/POIXMLProperties$CustomProperties;

.field private custPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

.field private ext:Lorg/apache/poi/POIXMLProperties$ExtendedProperties;

.field private extPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

.field private pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    invoke-static {}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument$Factory;->newInstance()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/POIXMLProperties;->NEW_EXT_INSTANCE:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    .line 61
    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->addNewProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    .line 63
    invoke-static {}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument$Factory;->newInstance()Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/POIXMLProperties;->NEW_CUST_INSTANCE:Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    .line 64
    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;->addNewProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 6
    .param p1, "docPackage"    # Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;,
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/apache/poi/POIXMLProperties;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    .line 71
    new-instance v0, Lorg/apache/poi/POIXMLProperties$CoreProperties;

    iget-object v1, p0, Lorg/apache/poi/POIXMLProperties;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPackageProperties()Lorg/apache/poi/openxml4j/opc/PackageProperties;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/POIXMLProperties$CoreProperties;-><init>(Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;Lorg/apache/poi/POIXMLProperties$1;)V

    iput-object v0, p0, Lorg/apache/poi/POIXMLProperties;->core:Lorg/apache/poi/POIXMLProperties$CoreProperties;

    .line 74
    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    const-string v1, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/extended-properties"

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v0

    .line 76
    .local v0, "extRel":Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 77
    iget-object v1, p0, Lorg/apache/poi/POIXMLProperties;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-virtual {v0, v3}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/POIXMLProperties;->extPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 78
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    sget-object v5, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v1, v5}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    move-result-object v1

    .line 81
    .local v1, "props":Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;
    new-instance v5, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;

    invoke-direct {v5, v1, v2}, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;-><init>(Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;Lorg/apache/poi/POIXMLProperties$1;)V

    iput-object v5, p0, Lorg/apache/poi/POIXMLProperties;->ext:Lorg/apache/poi/POIXMLProperties$ExtendedProperties;

    .line 82
    .end local v1    # "props":Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;
    goto :goto_0

    .line 83
    :cond_0
    iput-object v2, p0, Lorg/apache/poi/POIXMLProperties;->extPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 84
    new-instance v1, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;

    sget-object v5, Lorg/apache/poi/POIXMLProperties;->NEW_EXT_INSTANCE:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v5}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v5

    check-cast v5, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-direct {v1, v5, v2}, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;-><init>(Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;Lorg/apache/poi/POIXMLProperties$1;)V

    iput-object v1, p0, Lorg/apache/poi/POIXMLProperties;->ext:Lorg/apache/poi/POIXMLProperties$ExtendedProperties;

    .line 88
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/POIXMLProperties;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    const-string v5, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/custom-properties"

    invoke-virtual {v1, v5}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v1

    .line 90
    .local v1, "custRel":Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 91
    iget-object v4, p0, Lorg/apache/poi/POIXMLProperties;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-virtual {v1, v3}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/POIXMLProperties;->custPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 92
    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v3, v4}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    move-result-object v3

    .line 95
    .local v3, "props":Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;
    new-instance v4, Lorg/apache/poi/POIXMLProperties$CustomProperties;

    invoke-direct {v4, v3, v2}, Lorg/apache/poi/POIXMLProperties$CustomProperties;-><init>(Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;Lorg/apache/poi/POIXMLProperties$1;)V

    iput-object v4, p0, Lorg/apache/poi/POIXMLProperties;->cust:Lorg/apache/poi/POIXMLProperties$CustomProperties;

    .line 96
    .end local v3    # "props":Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;
    goto :goto_1

    .line 97
    :cond_1
    iput-object v2, p0, Lorg/apache/poi/POIXMLProperties;->custPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 98
    new-instance v3, Lorg/apache/poi/POIXMLProperties$CustomProperties;

    sget-object v4, Lorg/apache/poi/POIXMLProperties;->NEW_CUST_INSTANCE:Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    invoke-interface {v4}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v4

    check-cast v4, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    invoke-direct {v3, v4, v2}, Lorg/apache/poi/POIXMLProperties$CustomProperties;-><init>(Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;Lorg/apache/poi/POIXMLProperties$1;)V

    iput-object v3, p0, Lorg/apache/poi/POIXMLProperties;->cust:Lorg/apache/poi/POIXMLProperties$CustomProperties;

    .line 100
    :goto_1
    return-void
.end method


# virtual methods
.method public commit()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties;->extPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/POIXMLProperties;->NEW_EXT_INSTANCE:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/POIXMLProperties;->ext:Lorg/apache/poi/POIXMLProperties$ExtendedProperties;

    invoke-static {v1}, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->access$300(Lorg/apache/poi/POIXMLProperties$ExtendedProperties;)Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    :try_start_0
    const-string v0, "/docProps/app.xml"

    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0

    .line 205
    .local v0, "prtname":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    iget-object v1, p0, Lorg/apache/poi/POIXMLProperties;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    sget-object v2, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/extended-properties"

    invoke-virtual {v1, v0, v2, v3}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 206
    iget-object v1, p0, Lorg/apache/poi/POIXMLProperties;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    const-string v2, "application/vnd.openxmlformats-officedocument.extended-properties+xml"

    invoke-virtual {v1, v0, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/POIXMLProperties;->extPart:Lorg/apache/poi/openxml4j/opc/PackagePart;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v0    # "prtname":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 211
    .end local v0    # "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties;->custPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/poi/POIXMLProperties;->NEW_CUST_INSTANCE:Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/POIXMLProperties;->cust:Lorg/apache/poi/POIXMLProperties$CustomProperties;

    invoke-static {v1}, Lorg/apache/poi/POIXMLProperties$CustomProperties;->access$400(Lorg/apache/poi/POIXMLProperties$CustomProperties;)Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    :try_start_1
    const-string v0, "/docProps/custom.xml"

    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0

    .line 214
    .local v0, "prtname":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    iget-object v1, p0, Lorg/apache/poi/POIXMLProperties;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    sget-object v2, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/custom-properties"

    invoke-virtual {v1, v0, v2, v3}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 215
    iget-object v1, p0, Lorg/apache/poi/POIXMLProperties;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    const-string v2, "application/vnd.openxmlformats-officedocument.custom-properties+xml"

    invoke-virtual {v1, v0, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/POIXMLProperties;->custPart:Lorg/apache/poi/openxml4j/opc/PackagePart;
    :try_end_1
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 218
    .end local v0    # "prtname":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    goto :goto_1

    .line 216
    :catch_1
    move-exception v0

    .line 217
    .local v0, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 220
    .end local v0    # "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties;->extPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    if-eqz v0, :cond_3

    .line 221
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 222
    .local v0, "out":Ljava/io/OutputStream;
    iget-object v1, p0, Lorg/apache/poi/POIXMLProperties;->extPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getSize()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 223
    iget-object v1, p0, Lorg/apache/poi/POIXMLProperties;->extPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->clear()V

    .line 225
    :cond_2
    iget-object v1, p0, Lorg/apache/poi/POIXMLProperties;->ext:Lorg/apache/poi/POIXMLProperties$ExtendedProperties;

    invoke-static {v1}, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->access$300(Lorg/apache/poi/POIXMLProperties$ExtendedProperties;)Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-interface {v1, v0, v2}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    .line 226
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 228
    .end local v0    # "out":Ljava/io/OutputStream;
    :cond_3
    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties;->custPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    if-eqz v0, :cond_4

    .line 229
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 230
    .restart local v0    # "out":Ljava/io/OutputStream;
    iget-object v1, p0, Lorg/apache/poi/POIXMLProperties;->cust:Lorg/apache/poi/POIXMLProperties$CustomProperties;

    invoke-static {v1}, Lorg/apache/poi/POIXMLProperties$CustomProperties;->access$400(Lorg/apache/poi/POIXMLProperties$CustomProperties;)Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-interface {v1, v0, v2}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    .line 231
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 233
    .end local v0    # "out":Ljava/io/OutputStream;
    :cond_4
    return-void
.end method

.method public getCoreProperties()Lorg/apache/poi/POIXMLProperties$CoreProperties;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties;->core:Lorg/apache/poi/POIXMLProperties$CoreProperties;

    return-object v0
.end method

.method public getCustomProperties()Lorg/apache/poi/POIXMLProperties$CustomProperties;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties;->cust:Lorg/apache/poi/POIXMLProperties$CustomProperties;

    return-object v0
.end method

.method public getExtendedProperties()Lorg/apache/poi/POIXMLProperties$ExtendedProperties;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties;->ext:Lorg/apache/poi/POIXMLProperties$ExtendedProperties;

    return-object v0
.end method

.method public getThumbnailFilename()Ljava/lang/String;
    .locals 3

    .line 151
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLProperties;->getThumbnailPart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    .line 152
    .local v0, "tPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 153
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "name":Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getThumbnailImage()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLProperties;->getThumbnailPart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    .line 165
    .local v0, "tPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 166
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method protected getThumbnailPart()Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 3

    .line 136
    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    const-string v1, "http://schemas.openxmlformats.org/package/2006/relationships/metadata/thumbnail"

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v0

    .line 138
    .local v0, "rels":Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 139
    iget-object v1, p0, Lorg/apache/poi/POIXMLProperties;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    return-object v1

    .line 141
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public setThumbnail(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "imageData"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLProperties;->getThumbnailPart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    .line 179
    .local v0, "tPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    if-nez v0, :cond_0

    .line 181
    iget-object v1, p0, Lorg/apache/poi/POIXMLProperties;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-virtual {v1, p1, p2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->addThumbnail(Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0

    .line 184
    :cond_0
    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/ContentTypes;->getContentTypeFromFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "newType":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {p2, v2}, Lorg/apache/poi/openxml4j/opc/StreamHelper;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    .line 192
    .end local v1    # "newType":Ljava/lang/String;
    :goto_0
    return-void

    .line 186
    .restart local v1    # "newType":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t set a Thumbnail of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " when existing one is of a different type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
