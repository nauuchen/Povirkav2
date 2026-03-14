.class public Lorg/apache/poi/xssf/model/SingleXmlCells;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "SingleXmlCells.java"


# instance fields
.field private singleXMLCells:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCells;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    .line 53
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCells$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCells;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/model/SingleXmlCells;->singleXMLCells:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCells;

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1
    .param p1, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 62
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/model/SingleXmlCells;->readFrom(Ljava/io/InputStream;)V

    .line 63
    return-void
.end method


# virtual methods
.method protected commit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/SingleXmlCells;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    .line 87
    .local v0, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 88
    .local v1, "out":Ljava/io/OutputStream;
    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/model/SingleXmlCells;->writeTo(Ljava/io/OutputStream;)V

    .line 89
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 90
    return-void
.end method

.method public getAllSimpleXmlCell()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 103
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    iget-object v1, p0, Lorg/apache/poi/xssf/model/SingleXmlCells;->singleXMLCells:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCells;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCells;->getSingleXmlCellArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCell;

    move-result-object v1

    .local v1, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCell;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 104
    .local v4, "singleXmlCell":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCell;
    new-instance v5, Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;

    invoke-direct {v5, v4, p0}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCell;Lorg/apache/poi/xssf/model/SingleXmlCells;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .end local v4    # "singleXmlCell":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCell;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 106
    .end local v1    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCell;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    return-object v0
.end method

.method public getCTSingleXMLCells()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCells;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/apache/poi/xssf/model/SingleXmlCells;->singleXMLCells:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCells;

    return-object v0
.end method

.method public getXSSFSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/SingleXmlCells;->getParent()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    return-object v0
.end method

.method public readFrom(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    :try_start_0
    sget-object v0, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SingleXmlCellsDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SingleXmlCellsDocument;

    move-result-object v0

    .line 68
    .local v0, "doc":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SingleXmlCellsDocument;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SingleXmlCellsDocument;->getSingleXmlCells()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCells;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xssf/model/SingleXmlCells;->singleXMLCells:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCells;
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v0    # "doc":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SingleXmlCellsDocument;
    nop

    .line 72
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Lorg/apache/xmlbeans/XmlException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SingleXmlCellsDocument$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SingleXmlCellsDocument;

    move-result-object v0

    .line 80
    .local v0, "doc":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SingleXmlCellsDocument;
    iget-object v1, p0, Lorg/apache/poi/xssf/model/SingleXmlCells;->singleXMLCells:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCells;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SingleXmlCellsDocument;->setSingleXmlCells(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCells;)V

    .line 81
    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-interface {v0, p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SingleXmlCellsDocument;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    .line 82
    return-void
.end method
