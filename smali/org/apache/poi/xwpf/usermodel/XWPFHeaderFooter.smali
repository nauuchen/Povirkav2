.class public abstract Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "XWPFHeaderFooter.java"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/IBody;


# instance fields
.field bodyElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/IBodyElement;",
            ">;"
        }
    .end annotation
.end field

.field document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

.field headerFooter:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;

.field paragraphs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
            ">;"
        }
    .end annotation
.end field

.field pictures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;",
            ">;"
        }
    .end annotation
.end field

.field tables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->paragraphs:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->tables:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->pictures:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->bodyElements:Ljava/util/List;

    .line 64
    invoke-static {}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr$Factory;->newInstance()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->headerFooter:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;

    .line 65
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->readHdrFtr()V

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1
    .param p1, "parent"    # Lorg/apache/poi/POIXMLDocumentPart;
    .param p2, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->paragraphs:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->tables:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->pictures:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->bodyElements:Ljava/util/List;

    .line 73
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->getParent()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    .line 75
    if-eqz v0, :cond_0

    .line 78
    return-void

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method constructor <init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;)V
    .locals 1
    .param p1, "doc"    # Lorg/apache/poi/xwpf/usermodel/XWPFDocument;
    .param p2, "hdrFtr"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;

    .line 53
    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->paragraphs:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->tables:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->pictures:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->bodyElements:Ljava/util/List;

    .line 54
    if-eqz p1, :cond_0

    .line 58
    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    .line 59
    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->headerFooter:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;

    .line 60
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->readHdrFtr()V

    .line 61
    return-void

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private isCursorInHdrF(Lorg/apache/xmlbeans/XmlCursor;)Z
    .locals 3
    .param p1, "cursor"    # Lorg/apache/xmlbeans/XmlCursor;

    .line 477
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    .line 478
    .local v0, "verify":Lorg/apache/xmlbeans/XmlCursor;
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    .line 479
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->headerFooter:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 480
    .local v1, "result":Z
    :goto_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 481
    return v1
.end method


# virtual methods
.method public _getHdrFtr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->headerFooter:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;

    return-object v0
.end method

.method public addPictureData(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 297
    .local v0, "data":[B
    invoke-virtual {p0, v0, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->addPictureData([BI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public addPictureData([BI)Ljava/lang/String;
    .locals 7
    .param p1, "pictureData"    # [B
    .param p2, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->findPackagePictureData([BI)Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    move-result-object v0

    .line 245
    .local v0, "xwpfPicData":Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->RELATIONS:[Lorg/apache/poi/POIXMLRelation;

    aget-object v1, v1, p2

    .line 247
    .local v1, "relDesc":Lorg/apache/poi/POIXMLRelation;
    if-nez v0, :cond_2

    .line 249
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v2, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getNextPicNameNumber(I)I

    move-result v2

    .line 250
    .local v2, "idx":I
    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/XWPFFactory;->getInstance()Lorg/apache/poi/xwpf/usermodel/XWPFFactory;

    move-result-object v3

    invoke-virtual {p0, v1, v3, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;I)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    .line 252
    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    .line 253
    .local v3, "picDataPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    const/4 v4, 0x0

    .line 255
    .local v4, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    move-object v4, v5

    .line 256
    invoke-virtual {v4, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    if-eqz v4, :cond_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v5

    .line 265
    goto :goto_1

    .line 264
    :cond_0
    :goto_0
    nop

    .line 267
    :goto_1
    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v5, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->registerPackagePictureData(Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;)V

    .line 268
    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->pictures:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->getRelationId(Lorg/apache/poi/POIXMLDocumentPart;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 260
    :catchall_0
    move-exception v5

    goto :goto_2

    .line 257
    :catch_1
    move-exception v5

    .line 258
    .local v5, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v6, Lorg/apache/poi/POIXMLException;

    invoke-direct {v6, v5}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "xwpfPicData":Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    .end local v1    # "relDesc":Lorg/apache/poi/POIXMLRelation;
    .end local v2    # "idx":I
    .end local v3    # "picDataPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local p1    # "pictureData":[B
    .end local p2    # "format":I
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v0    # "xwpfPicData":Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    .restart local v1    # "relDesc":Lorg/apache/poi/POIXMLRelation;
    .restart local v2    # "idx":I
    .restart local v3    # "picDataPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .restart local v4    # "out":Ljava/io/OutputStream;
    .restart local p1    # "pictureData":[B
    .restart local p2    # "format":I
    :goto_2
    if-eqz v4, :cond_1

    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 262
    :catch_2
    move-exception v6

    goto :goto_4

    .line 264
    :cond_1
    :goto_3
    nop

    :goto_4
    throw v5

    .line 270
    .end local v2    # "idx":I
    .end local v3    # "picDataPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .end local v4    # "out":Ljava/io/OutputStream;
    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->getRelations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 277
    const/4 v2, 0x0

    sget-object v3, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGES:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {p0, v2, v3, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->addRelation(Ljava/lang/String;Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLDocumentPart;)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    move-result-object v2

    .line 278
    .local v2, "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->pictures:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-virtual {v2}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 282
    .end local v2    # "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    :cond_3
    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->getRelationId(Lorg/apache/poi/POIXMLDocumentPart;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public clearHeaderFooter()V
    .locals 2

    .line 377
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->headerFooter:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    .line 378
    .local v0, "c":Lorg/apache/xmlbeans/XmlCursor;
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->removeXmlContents()Z

    .line 379
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 380
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->paragraphs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 381
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->tables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 382
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->bodyElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 383
    return-void
.end method

.method public createParagraph()Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 2

    .line 321
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->headerFooter:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;->addNewP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 322
    .local v0, "paragraph":Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->paragraphs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->bodyElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    return-object v0
.end method

.method public createTable(II)Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 2
    .param p1, "rows"    # I
    .param p2, "cols"    # I

    .line 335
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->headerFooter:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;->addNewTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;II)V

    .line 336
    .local v0, "table":Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->tables:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->bodyElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    return-object v0
.end method

.method public getAllPackagePictures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;",
            ">;"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getAllPackagePictures()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllPictures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;",
            ">;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->pictures:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBodyElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/IBodyElement;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->bodyElements:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getListParagraph()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
            ">;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->paragraphs:Ljava/util/List;

    return-object v0
.end method

.method public getOwner()Lorg/apache/poi/POIXMLDocumentPart;
    .locals 0

    .line 486
    return-object p0
.end method

.method public getParagraph(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 3
    .param p1, "p"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    .line 193
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->paragraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    .line 194
    .local v1, "paragraph":Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    return-object v1

    .end local v1    # "paragraph":Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    :cond_0
    goto :goto_0

    .line 197
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParagraphArray(I)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 1
    .param p1, "pos"    # I

    .line 206
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->paragraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 207
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->paragraphs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    return-object v0

    .line 209
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParagraphs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->paragraphs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPart()Lorg/apache/poi/POIXMLDocumentPart;
    .locals 0

    .line 591
    return-object p0
.end method

.method public getPictureDataByID(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    .locals 2
    .param p1, "blipID"    # Ljava/lang/String;

    .line 308
    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->getRelationById(Ljava/lang/String;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    .line 309
    .local v0, "relatedPart":Lorg/apache/poi/POIXMLDocumentPart;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    if-eqz v1, :cond_0

    .line 310
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    return-object v1

    .line 312
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTable(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 3
    .param p1, "ctTable"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    .line 174
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->tables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    .line 175
    .local v1, "table":Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    if-nez v1, :cond_0

    .line 176
    return-object v2

    .line 177
    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getCTTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    return-object v1

    .end local v1    # "table":Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    :cond_1
    goto :goto_0

    .line 180
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    return-object v2
.end method

.method public getTableArray(I)Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 1
    .param p1, "pos"    # I

    .line 495
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->tables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 496
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->tables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    return-object v0

    .line 498
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTableCell(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;)Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;
    .locals 7
    .param p1, "cell"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    .line 550
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    .line 551
    .local v0, "cursor":Lorg/apache/xmlbeans/XmlCursor;
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    .line 552
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    .line 553
    .local v1, "o":Lorg/apache/xmlbeans/XmlObject;
    instance-of v2, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 554
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 555
    return-object v3

    .line 557
    :cond_0
    move-object v2, v1

    check-cast v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    .line 558
    .local v2, "row":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    .line 559
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    .line 560
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 561
    instance-of v4, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-nez v4, :cond_1

    .line 562
    return-object v3

    .line 564
    :cond_1
    move-object v4, v1

    check-cast v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    .line 565
    .local v4, "tbl":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;
    invoke-virtual {p0, v4}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->getTable(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    move-result-object v5

    .line 566
    .local v5, "table":Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    if-nez v5, :cond_2

    .line 567
    return-object v3

    .line 569
    :cond_2
    invoke-virtual {v5, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getRow(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;)Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    move-result-object v3

    .line 570
    .local v3, "tableRow":Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;
    invoke-virtual {v3, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getTableCell(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;)Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    move-result-object v6

    return-object v6
.end method

.method public getTables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->tables:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 6

    .line 130
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 132
    .local v0, "t":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->paragraphs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xa

    if-ge v1, v2, :cond_1

    .line 133
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->paragraphs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 134
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->paragraphs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getText()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "text":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 136
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 132
    .end local v2    # "text":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->tables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 143
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->tables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getText()Ljava/lang/String;

    move-result-object v2

    .line 144
    .restart local v2    # "text":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 142
    .end local v2    # "text":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 150
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->getBodyElements()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/IBodyElement;

    .line 151
    .local v2, "bodyElement":Lorg/apache/poi/xwpf/usermodel/IBodyElement;
    instance-of v4, v2, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    if-eqz v4, :cond_4

    .line 152
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v2

    check-cast v5, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    invoke-virtual {v5}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->getContent()Lorg/apache/poi/xwpf/usermodel/ISDTContent;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/poi/xwpf/usermodel/ISDTContent;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .end local v2    # "bodyElement":Lorg/apache/poi/xwpf/usermodel/IBodyElement;
    :cond_4
    goto :goto_2

    .line 155
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getXWPFDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;
    .locals 1

    .line 574
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    if-eqz v0, :cond_0

    .line 575
    return-object v0

    .line 577
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->getParent()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    return-object v0
.end method

.method public insertNewParagraph(Lorg/apache/xmlbeans/XmlCursor;)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 8
    .param p1, "cursor"    # Lorg/apache/xmlbeans/XmlCursor;

    .line 392
    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->isCursorInHdrF(Lorg/apache/xmlbeans/XmlCursor;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 393
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "uri":Ljava/lang/String;
    const-string v1, "p"

    .line 395
    .local v1, "localPart":Ljava/lang/String;
    invoke-interface {p1, v1, v0}, Lorg/apache/xmlbeans/XmlCursor;->beginElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    .line 397
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    .line 398
    .local v2, "p":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;
    new-instance v3, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-direct {v3, v2, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 399
    .local v3, "newP":Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    const/4 v4, 0x0

    .line 400
    .local v4, "o":Lorg/apache/xmlbeans/XmlObject;
    :goto_0
    instance-of v5, v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-nez v5, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toPrevSibling()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 401
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v4

    goto :goto_0

    .line 403
    :cond_0
    instance-of v5, v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-eqz v5, :cond_2

    move-object v5, v4

    check-cast v5, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-ne v5, v2, :cond_1

    goto :goto_1

    .line 406
    :cond_1
    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->paragraphs:Ljava/util/List;

    move-object v6, v4

    check-cast v6, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-virtual {p0, v6}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->getParagraph(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 407
    .local v5, "pos":I
    iget-object v6, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->paragraphs:Ljava/util/List;

    invoke-interface {v6, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 404
    .end local v5    # "pos":I
    :cond_2
    :goto_1
    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->paragraphs:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 409
    :goto_2
    const/4 v5, 0x0

    .line 410
    .local v5, "i":I
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v6

    .line 411
    .local v6, "p2":Lorg/apache/xmlbeans/XmlCursor;
    invoke-interface {p1, v6}, Lorg/apache/xmlbeans/XmlCursor;->toCursor(Lorg/apache/xmlbeans/XmlCursor;)Z

    .line 412
    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 413
    :cond_3
    :goto_3
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toPrevSibling()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 414
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v4

    .line 415
    instance-of v7, v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-nez v7, :cond_4

    instance-of v7, v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-eqz v7, :cond_3

    .line 416
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 418
    :cond_5
    iget-object v7, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->bodyElements:Ljava/util/List;

    invoke-interface {v7, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 419
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v6

    .line 420
    invoke-interface {p1, v6}, Lorg/apache/xmlbeans/XmlCursor;->toCursor(Lorg/apache/xmlbeans/XmlCursor;)Z

    .line 421
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toEndToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    .line 422
    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 423
    return-object v3

    .line 425
    .end local v0    # "uri":Ljava/lang/String;
    .end local v1    # "localPart":Ljava/lang/String;
    .end local v2    # "p":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;
    .end local v3    # "newP":Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .end local v4    # "o":Lorg/apache/xmlbeans/XmlObject;
    .end local v5    # "i":I
    .end local v6    # "p2":Lorg/apache/xmlbeans/XmlCursor;
    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method

.method public insertNewTbl(Lorg/apache/xmlbeans/XmlCursor;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 8
    .param p1, "cursor"    # Lorg/apache/xmlbeans/XmlCursor;

    .line 434
    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->isCursorInHdrF(Lorg/apache/xmlbeans/XmlCursor;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 435
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, "uri":Ljava/lang/String;
    const-string/jumbo v1, "tbl"

    .line 437
    .local v1, "localPart":Ljava/lang/String;
    invoke-interface {p1, v1, v0}, Lorg/apache/xmlbeans/XmlCursor;->beginElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    .line 439
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    .line 440
    .local v2, "t":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;
    new-instance v3, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-direct {v3, v2, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 441
    .local v3, "newT":Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->removeXmlContents()Z

    .line 442
    const/4 v4, 0x0

    .line 443
    .local v4, "o":Lorg/apache/xmlbeans/XmlObject;
    :goto_0
    instance-of v5, v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-nez v5, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toPrevSibling()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 444
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v4

    goto :goto_0

    .line 446
    :cond_0
    instance-of v5, v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-nez v5, :cond_1

    .line 447
    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->tables:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 449
    :cond_1
    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->tables:Ljava/util/List;

    move-object v6, v4

    check-cast v6, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-virtual {p0, v6}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->getTable(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 450
    .local v5, "pos":I
    iget-object v6, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->tables:Ljava/util/List;

    invoke-interface {v6, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 452
    .end local v5    # "pos":I
    :goto_1
    const/4 v5, 0x0

    .line 453
    .local v5, "i":I
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v6

    .line 454
    .local v6, "cursor2":Lorg/apache/xmlbeans/XmlCursor;
    :cond_2
    :goto_2
    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlCursor;->toPrevSibling()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 455
    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v4

    .line 456
    instance-of v7, v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-nez v7, :cond_3

    instance-of v7, v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-eqz v7, :cond_2

    .line 457
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 460
    :cond_4
    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 461
    iget-object v7, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->bodyElements:Ljava/util/List;

    invoke-interface {v7, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 462
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v6

    .line 463
    invoke-interface {p1, v6}, Lorg/apache/xmlbeans/XmlCursor;->toCursor(Lorg/apache/xmlbeans/XmlCursor;)Z

    .line 464
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toEndToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    .line 465
    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 466
    return-object v3

    .line 468
    .end local v0    # "uri":Ljava/lang/String;
    .end local v1    # "localPart":Ljava/lang/String;
    .end local v2    # "t":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;
    .end local v3    # "newT":Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .end local v4    # "o":Lorg/apache/xmlbeans/XmlObject;
    .end local v5    # "i":I
    .end local v6    # "cursor2":Lorg/apache/xmlbeans/XmlCursor;
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public insertTable(ILorg/apache/poi/xwpf/usermodel/XWPFTable;)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "table"    # Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    .line 508
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->bodyElements:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 509
    const/4 v0, 0x0

    .line 510
    .local v0, "i":I
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->headerFooter:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;->getTblArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object v1

    .local v1, "arr$":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 511
    .local v4, "tbl":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getCTTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 512
    goto :goto_1

    .line 514
    :cond_0
    nop

    .end local v4    # "tbl":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;
    add-int/lit8 v0, v0, 0x1

    .line 510
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 516
    .end local v1    # "arr$":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->tables:Ljava/util/List;

    invoke-interface {v1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 518
    return-void
.end method

.method protected onDocumentRead()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->getRelations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/POIXMLDocumentPart;

    .line 83
    .local v1, "poixmlDocumentPart":Lorg/apache/poi/POIXMLDocumentPart;
    instance-of v2, v1, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    if-eqz v2, :cond_0

    .line 84
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    .line 85
    .local v2, "xwpfPicData":Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->pictures:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v3, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->registerPackagePictureData(Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;)V

    .line 87
    .end local v1    # "poixmlDocumentPart":Lorg/apache/poi/POIXMLDocumentPart;
    .end local v2    # "xwpfPicData":Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    :cond_0
    goto :goto_0

    .line 89
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method protected prepareForCommit()V
    .locals 7

    .line 597
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->bodyElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 598
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->createParagraph()Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    .line 602
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->tables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    .line 603
    .local v1, "tbl":Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    iget-object v2, v1, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->tableRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    .line 604
    .local v3, "row":Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;
    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getTableCells()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    .line 605
    .local v5, "cell":Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;
    invoke-virtual {v5}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->getBodyElements()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 606
    invoke-virtual {v5}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->addParagraph()Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    .end local v5    # "cell":Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;
    :cond_1
    goto :goto_2

    .end local v3    # "row":Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    goto :goto_1

    .end local v1    # "tbl":Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    goto :goto_0

    .line 611
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-super {p0}, Lorg/apache/poi/POIXMLDocumentPart;->prepareForCommit()V

    .line 613
    return-void
.end method

.method public readHdrFtr()V
    .locals 4

    .line 521
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->bodyElements:Ljava/util/List;

    .line 522
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->paragraphs:Ljava/util/List;

    .line 523
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->tables:Ljava/util/List;

    .line 526
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->headerFooter:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    .line 527
    .local v0, "cursor":Lorg/apache/xmlbeans/XmlCursor;
    const-string v1, "./*"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    .line 528
    :goto_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 529
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    .line 530
    .local v1, "o":Lorg/apache/xmlbeans/XmlObject;
    instance-of v2, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-eqz v2, :cond_0

    .line 531
    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-object v3, v1

    check-cast v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-direct {v2, v3, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 532
    .local v2, "p":Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->paragraphs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->bodyElements:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    .end local v2    # "p":Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    :cond_0
    instance-of v2, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-eqz v2, :cond_1

    .line 536
    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    move-object v3, v1

    check-cast v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-direct {v2, v3, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 537
    .local v2, "t":Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->tables:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->bodyElements:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    .end local v1    # "o":Lorg/apache/xmlbeans/XmlObject;
    .end local v2    # "t":Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    :cond_1
    goto :goto_0

    .line 541
    :cond_2
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 542
    return-void
.end method

.method public removeParagraph(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)V
    .locals 3
    .param p1, "paragraph"    # Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    .line 347
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->paragraphs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v0

    .line 349
    .local v0, "ctP":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v1

    .line 350
    .local v1, "c":Lorg/apache/xmlbeans/XmlCursor;
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->removeXml()Z

    .line 351
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 352
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->paragraphs:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 353
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->bodyElements:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 355
    .end local v0    # "ctP":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;
    .end local v1    # "c":Lorg/apache/xmlbeans/XmlCursor;
    :cond_0
    return-void
.end method

.method public removeTable(Lorg/apache/poi/xwpf/usermodel/XWPFTable;)V
    .locals 3
    .param p1, "table"    # Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    .line 363
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->tables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getCTTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object v0

    .line 365
    .local v0, "ctTbl":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v1

    .line 366
    .local v1, "c":Lorg/apache/xmlbeans/XmlCursor;
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->removeXml()Z

    .line 367
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 368
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->tables:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 369
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->bodyElements:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 371
    .end local v0    # "ctTbl":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;
    .end local v1    # "c":Lorg/apache/xmlbeans/XmlCursor;
    :cond_0
    return-void
.end method

.method public setHeaderFooter(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;)V
    .locals 0
    .param p1, "headerFooter"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;

    .line 162
    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->headerFooter:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;

    .line 163
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->readHdrFtr()V

    .line 164
    return-void
.end method

.method public setXWPFDocument(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;)V
    .locals 0
    .param p1, "doc"    # Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    .line 582
    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    .line 583
    return-void
.end method
