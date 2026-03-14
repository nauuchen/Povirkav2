.class public Lorg/apache/poi/xslf/usermodel/XSLFMetroShape;
.super Ljava/lang/Object;
.source "XSLFMetroShape.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseShape([B)Lorg/apache/poi/sl/usermodel/Shape;
    .locals 7
    .param p0, "metroBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lorg/apache/poi/sl/usermodel/Shape<",
            "**>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;,
            Ljava/io/IOException;,
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    .line 48
    const-string v0, "/drs/shapexml.xml"

    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0

    .line 49
    .local v0, "shapePN":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    const/4 v1, 0x0

    .line 51
    .local v1, "pkg":Lorg/apache/poi/openxml4j/opc/OPCPackage;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v2

    move-object v1, v2

    .line 52
    invoke-virtual {v1, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    .line 53
    .local v2, "shapePart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v3, v4}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v3

    .line 54
    .local v3, "gs":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;
    new-instance v4, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    .line 55
    .local v4, "xgs":Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;
    invoke-virtual {v4}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getShapes()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/sl/usermodel/Shape;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->close()V

    :cond_0
    return-object v5

    .line 57
    .end local v2    # "shapePart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .end local v3    # "gs":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;
    .end local v4    # "xgs":Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 58
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->close()V

    :cond_1
    throw v2
.end method
