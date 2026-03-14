.class public abstract Lorg/apache/poi/POIXMLTextExtractor;
.super Lorg/apache/poi/POITextExtractor;
.source "POIXMLTextExtractor.java"


# instance fields
.field private final _document:Lorg/apache/poi/POIXMLDocument;


# direct methods
.method public constructor <init>(Lorg/apache/poi/POIXMLDocument;)V
    .locals 0
    .param p1, "document"    # Lorg/apache/poi/POIXMLDocument;

    .line 37
    invoke-direct {p0}, Lorg/apache/poi/POITextExtractor;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/apache/poi/POIXMLTextExtractor;->_document:Lorg/apache/poi/POIXMLDocument;

    .line 39
    return-void
.end method


# virtual methods
.method protected checkMaxTextSize(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/StringBuffer;
    .param p2, "string"    # Ljava/lang/String;

    .line 108
    if-nez p2, :cond_0

    .line 109
    return-void

    .line 112
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 113
    .local v0, "size":I
    int-to-long v1, v0

    invoke-static {}, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->getMaxTextSize()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    .line 119
    return-void

    .line 114
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The text would exceed the max allowed overall size of extracted text. By default this is prevented as some documents may exhaust available memory and it may indicate that the file is used to inflate memory usage and thus could pose a security risk. You can adjust this limit via ZipSecureFile.setMaxTextSize() if you need to work with files which have a lot of text. Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", limit: MAX_TEXT_SIZE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->getMaxTextSize()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/apache/poi/POIXMLTextExtractor;->_document:Lorg/apache/poi/POIXMLDocument;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocument;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    .line 99
    .local v0, "pkg":Lorg/apache/poi/openxml4j/opc/OPCPackage;
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->revert()V

    .line 104
    .end local v0    # "pkg":Lorg/apache/poi/openxml4j/opc/OPCPackage;
    :cond_0
    invoke-super {p0}, Lorg/apache/poi/POITextExtractor;->close()V

    .line 105
    return-void
.end method

.method public getCoreProperties()Lorg/apache/poi/POIXMLProperties$CoreProperties;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/apache/poi/POIXMLTextExtractor;->_document:Lorg/apache/poi/POIXMLDocument;

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocument;->getProperties()Lorg/apache/poi/POIXMLProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLProperties;->getCoreProperties()Lorg/apache/poi/POIXMLProperties$CoreProperties;

    move-result-object v0

    return-object v0
.end method

.method public getCustomProperties()Lorg/apache/poi/POIXMLProperties$CustomProperties;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/poi/POIXMLTextExtractor;->_document:Lorg/apache/poi/POIXMLDocument;

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocument;->getProperties()Lorg/apache/poi/POIXMLProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLProperties;->getCustomProperties()Lorg/apache/poi/POIXMLProperties$CustomProperties;

    move-result-object v0

    return-object v0
.end method

.method public final getDocument()Lorg/apache/poi/POIXMLDocument;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/apache/poi/POIXMLTextExtractor;->_document:Lorg/apache/poi/POIXMLDocument;

    return-object v0
.end method

.method public getExtendedProperties()Lorg/apache/poi/POIXMLProperties$ExtendedProperties;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/apache/poi/POIXMLTextExtractor;->_document:Lorg/apache/poi/POIXMLDocument;

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocument;->getProperties()Lorg/apache/poi/POIXMLProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLProperties;->getExtendedProperties()Lorg/apache/poi/POIXMLProperties$ExtendedProperties;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetadataTextExtractor()Lorg/apache/poi/POITextExtractor;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLTextExtractor;->getMetadataTextExtractor()Lorg/apache/poi/POIXMLPropertiesTextExtractor;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataTextExtractor()Lorg/apache/poi/POIXMLPropertiesTextExtractor;
    .locals 2

    .line 90
    new-instance v0, Lorg/apache/poi/POIXMLPropertiesTextExtractor;

    iget-object v1, p0, Lorg/apache/poi/POIXMLTextExtractor;->_document:Lorg/apache/poi/POIXMLDocument;

    invoke-direct {v0, v1}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;-><init>(Lorg/apache/poi/POIXMLDocument;)V

    return-object v0
.end method

.method public getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/apache/poi/POIXMLTextExtractor;->_document:Lorg/apache/poi/POIXMLDocument;

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocument;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    return-object v0
.end method
