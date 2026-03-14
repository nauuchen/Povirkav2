.class public Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "XSSFPivotCacheRecords.java"


# instance fields
.field private ctPivotCacheRecords:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheRecords;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    .line 41
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheRecords$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheRecords;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;->ctPivotCacheRecords:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheRecords;

    .line 42
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1
    .param p1, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 55
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;->readFrom(Ljava/io/InputStream;)V

    .line 56
    return-void
.end method


# virtual methods
.method protected commit()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    .line 80
    .local v0, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 81
    .local v1, "out":Ljava/io/OutputStream;
    new-instance v2, Lorg/apache/xmlbeans/XmlOptions;

    sget-object v3, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v2, v3}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    .line 83
    .local v2, "xmlOptions":Lorg/apache/xmlbeans/XmlOptions;
    new-instance v3, Ljavax/xml/namespace/QName;

    sget-object v4, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheRecords;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pivotCacheRecords"

    invoke-direct {v3, v4, v5}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/XmlOptions;->setSaveSyntheticDocumentElement(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlOptions;

    .line 85
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;->ctPivotCacheRecords:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheRecords;

    invoke-interface {v3, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheRecords;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    .line 86
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 87
    return-void
.end method

.method public getCtPivotCacheRecords()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheRecords;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;->ctPivotCacheRecords:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheRecords;

    return-object v0
.end method

.method protected readFrom(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    :try_start_0
    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    .line 63
    .local v0, "options":Lorg/apache/xmlbeans/XmlOptions;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->setLoadReplaceDocumentElement(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlOptions;

    .line 64
    invoke-static {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheRecords$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheRecords;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;->ctPivotCacheRecords:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheRecords;
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v0    # "options":Lorg/apache/xmlbeans/XmlOptions;
    nop

    .line 68
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Lorg/apache/xmlbeans/XmlException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
