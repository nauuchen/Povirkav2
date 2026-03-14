.class public Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;
.super Ljava/lang/Object;
.source "XSSFReader.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/eventusermodel/XSSFReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SheetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final sheetIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;",
            ">;"
        }
    .end annotation
.end field

.field private final sheetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            ">;"
        }
    .end annotation
.end field

.field xssfSheetRef:Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;


# direct methods
.method constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 9
    .param p1, "wb"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->sheetMap:Ljava/util/Map;

    .line 233
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    .line 234
    .local v0, "pkg":Lorg/apache/poi/openxml4j/opc/OPCPackage;
    invoke-virtual {p0}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->getSheetRelationships()Ljava/util/Set;

    move-result-object v1

    .line 235
    .local v1, "worksheetRels":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationships()Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 236
    .local v3, "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v4

    .line 237
    .local v4, "relType":Ljava/lang/String;
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 238
    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v5

    .line 239
    .local v5, "relName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    iget-object v6, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->sheetMap:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .end local v3    # "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .end local v4    # "relType":Ljava/lang/String;
    .end local v5    # "relName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    :cond_0
    goto :goto_0

    .line 244
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->createSheetIteratorFromWB(Lorg/apache/poi/openxml4j/opc/PackagePart;)Ljava/util/Iterator;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->sheetIterator:Ljava/util/Iterator;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .end local v0    # "pkg":Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .end local v1    # "worksheetRels":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 248
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method createSheetIteratorFromWB(Lorg/apache/poi/openxml4j/opc/PackagePart;)Ljava/util/Iterator;
    .locals 7
    .param p1, "wb"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    new-instance v0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XMLSheetRefReader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XMLSheetRefReader;-><init>(Lorg/apache/poi/xssf/eventusermodel/XSSFReader$1;)V

    .line 255
    .local v0, "xmlSheetRefReader":Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XMLSheetRefReader;
    :try_start_0
    invoke-static {}, Lorg/apache/poi/util/SAXHelper;->newXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    .line 260
    .local v1, "xmlReader":Lorg/xml/sax/XMLReader;
    nop

    .line 261
    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 263
    :try_start_1
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    .line 266
    nop

    .line 268
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v2, "validSheets":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;>;"
    invoke-virtual {v0}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XMLSheetRefReader;->getSheetRefs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;

    .line 271
    .local v4, "xssfSheetRef":Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;
    invoke-virtual {v4}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;->getId()Ljava/lang/String;

    move-result-object v5

    .line 272
    .local v5, "sheetId":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 273
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    .end local v4    # "xssfSheetRef":Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;
    .end local v5    # "sheetId":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 276
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    return-object v3

    .line 264
    .end local v2    # "validSheets":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;>;"
    :catch_0
    move-exception v2

    .line 265
    .local v2, "e":Lorg/xml/sax/SAXException;
    new-instance v3, Lorg/apache/poi/POIXMLException;

    invoke-direct {v3, v2}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 258
    .end local v1    # "xmlReader":Lorg/xml/sax/XMLReader;
    .end local v2    # "e":Lorg/xml/sax/SAXException;
    :catch_1
    move-exception v2

    .line 259
    .restart local v1    # "xmlReader":Lorg/xml/sax/XMLReader;
    .restart local v2    # "e":Lorg/xml/sax/SAXException;
    new-instance v3, Lorg/apache/poi/POIXMLException;

    invoke-direct {v3, v2}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 256
    .end local v1    # "xmlReader":Lorg/xml/sax/XMLReader;
    .end local v2    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v2

    .line 257
    .restart local v1    # "xmlReader":Lorg/xml/sax/XMLReader;
    .local v2, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v3, Lorg/apache/poi/POIXMLException;

    invoke-direct {v3, v2}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getShapes()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFShape;",
            ">;"
        }
    .end annotation

    .line 358
    invoke-virtual {p0}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->getSheetPart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    .line 359
    .local v0, "sheetPkg":Lorg/apache/poi/openxml4j/opc/PackagePart;
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 362
    .local v1, "shapes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFShape;>;"
    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->DRAWINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->getRelation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v3

    .line 363
    .local v3, "drawingsList":Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 364
    invoke-virtual {v3, v4}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v5

    .line 365
    .local v5, "drawings":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    invoke-virtual {v5}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v6

    .line 366
    .local v6, "drawingsName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v7

    .line 367
    .local v7, "drawingsPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    if-nez v7, :cond_0

    .line 369
    invoke-static {}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->access$200()Lorg/apache/poi/util/POILogger;

    move-result-object v8

    const/4 v9, 0x5

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Missing drawing: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ". Skipping it."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 370
    goto :goto_1

    .line 372
    :cond_0
    new-instance v8, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    invoke-direct {v8, v7}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 373
    .local v8, "drawing":Lorg/apache/poi/xssf/usermodel/XSSFDrawing;
    invoke-virtual {v8}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getShapes()Ljava/util/List;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    .end local v5    # "drawings":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .end local v6    # "drawingsName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .end local v7    # "drawingsPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .end local v8    # "drawing":Lorg/apache/poi/xssf/usermodel/XSSFDrawing;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 381
    .end local v3    # "drawingsList":Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    .end local v4    # "i":I
    :cond_1
    nop

    .line 382
    return-object v1

    .line 379
    :catch_0
    move-exception v3

    .line 380
    .local v3, "e":Ljava/io/IOException;
    return-object v2

    .line 377
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 378
    .local v3, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    return-object v2

    .line 375
    .end local v3    # "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    :catch_2
    move-exception v3

    .line 376
    .local v3, "e":Lorg/apache/xmlbeans/XmlException;
    return-object v2
.end method

.method public getSheetComments()Lorg/apache/poi/xssf/model/CommentsTable;
    .locals 7

    .line 333
    invoke-virtual {p0}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->getSheetPart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    .line 337
    .local v0, "sheetPkg":Lorg/apache/poi/openxml4j/opc/PackagePart;
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SHEET_COMMENTS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->getRelation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v2

    .line 339
    .local v2, "commentsList":Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 340
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v3

    .line 341
    .local v3, "comments":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v4

    .line 342
    .local v4, "commentsName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v5

    .line 343
    .local v5, "commentsPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    new-instance v6, Lorg/apache/poi/xssf/model/CommentsTable;

    invoke-direct {v6, v5}, Lorg/apache/poi/xssf/model/CommentsTable;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 349
    .end local v2    # "commentsList":Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    .end local v3    # "comments":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .end local v4    # "commentsName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .end local v5    # "commentsPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    :cond_0
    nop

    .line 350
    return-object v1

    .line 347
    :catch_0
    move-exception v2

    .line 348
    .local v2, "e":Ljava/io/IOException;
    return-object v1

    .line 345
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 346
    .local v2, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    return-object v1
.end method

.method public getSheetName()Ljava/lang/String;
    .locals 1

    .line 325
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->xssfSheetRef:Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSheetPart()Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 2

    .line 386
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->xssfSheetRef:Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;->getId()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "sheetId":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->sheetMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/openxml4j/opc/PackagePart;

    return-object v1
.end method

.method getSheetRelationships()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 288
    invoke-static {}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->access$100()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 298
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->sheetIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/io/InputStream;
    .locals 3

    .line 308
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->sheetIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;

    iput-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->xssfSheetRef:Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;

    .line 310
    invoke-virtual {v0}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;->getId()Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "sheetId":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->sheetMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 313
    .local v1, "sheetPkg":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 314
    .end local v1    # "sheetPkg":Lorg/apache/poi/openxml4j/opc/PackagePart;
    :catch_0
    move-exception v1

    .line 315
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/apache/poi/POIXMLException;

    invoke-direct {v2, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 201
    invoke-virtual {p0}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->next()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 395
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
