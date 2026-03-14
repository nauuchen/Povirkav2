.class public Lorg/apache/poi/xssf/model/CalculationChain;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "CalculationChain.java"


# instance fields
.field private chain:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    .line 43
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/model/CalculationChain;->chain:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;

    .line 44
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

    .line 50
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 51
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/model/CalculationChain;->readFrom(Ljava/io/InputStream;)V

    .line 52
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

    .line 70
    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/CalculationChain;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    .line 71
    .local v0, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 72
    .local v1, "out":Ljava/io/OutputStream;
    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/model/CalculationChain;->writeTo(Ljava/io/OutputStream;)V

    .line 73
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 74
    return-void
.end method

.method public getCTCalcChain()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/apache/poi/xssf/model/CalculationChain;->chain:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;

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

    .line 56
    :try_start_0
    sget-object v0, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CalcChainDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CalcChainDocument;

    move-result-object v0

    .line 57
    .local v0, "doc":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CalcChainDocument;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CalcChainDocument;->getCalcChain()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xssf/model/CalculationChain;->chain:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v0    # "doc":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CalcChainDocument;
    nop

    .line 61
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Lorg/apache/xmlbeans/XmlException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeItem(ILjava/lang/String;)V
    .locals 4
    .param p1, "sheetId"    # I
    .param p2, "ref"    # Ljava/lang/String;

    .line 89
    const/4 v0, -0x1

    .line 90
    .local v0, "id":I
    iget-object v1, p0, Lorg/apache/poi/xssf/model/CalculationChain;->chain:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;->getCArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcCell;

    move-result-object v1

    .line 92
    .local v1, "c":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcCell;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 94
    aget-object v3, v1, v2

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcCell;->isSetI()Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v1, v2

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcCell;->getI()I

    move-result v0

    .line 96
    :cond_0
    if-ne v0, p1, :cond_2

    aget-object v3, v1, v2

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcCell;->getR()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 97
    aget-object v3, v1, v2

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcCell;->isSetI()Z

    move-result v3

    if-eqz v3, :cond_1

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    aget-object v3, v1, v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcCell;->isSetI()Z

    move-result v3

    if-nez v3, :cond_1

    .line 98
    add-int/lit8 v3, v2, 0x1

    aget-object v3, v1, v3

    invoke-interface {v3, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcCell;->setI(I)V

    .line 100
    :cond_1
    iget-object v3, p0, Lorg/apache/poi/xssf/model/CalculationChain;->chain:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;

    invoke-interface {v3, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;->removeC(I)V

    .line 101
    goto :goto_1

    .line 92
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .end local v2    # "i":I
    :cond_3
    :goto_1
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CalcChainDocument$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CalcChainDocument;

    move-result-object v0

    .line 64
    .local v0, "doc":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CalcChainDocument;
    iget-object v1, p0, Lorg/apache/poi/xssf/model/CalculationChain;->chain:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CalcChainDocument;->setCalcChain(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;)V

    .line 65
    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-interface {v0, p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CalcChainDocument;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    .line 66
    return-void
.end method
