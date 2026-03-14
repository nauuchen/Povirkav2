.class public Lorg/apache/poi/xssf/extractor/XSSFExportToXml;
.super Ljava/lang/Object;
.source "XSSFExportToXml.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private map:Lorg/apache/poi/xssf/usermodel/XSSFMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    const-class v0, Lorg/apache/poi/xssf/extractor/XSSFExportToXml;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/extractor/XSSFExportToXml;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFMap;)V
    .locals 0
    .param p1, "map"    # Lorg/apache/poi/xssf/usermodel/XSSFMap;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lorg/apache/poi/xssf/extractor/XSSFExportToXml;->map:Lorg/apache/poi/xssf/usermodel/XSSFMap;

    .line 94
    return-void
.end method

.method private createAttribute(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 4
    .param p1, "doc"    # Lorg/w3c/dom/Document;
    .param p2, "currentNode"    # Lorg/w3c/dom/Node;
    .param p3, "axisName"    # Ljava/lang/String;

    .line 350
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "attributeName":Ljava/lang/String;
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 352
    .local v1, "attributesMap":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 353
    .local v2, "attribute":Lorg/w3c/dom/Node;
    if-nez v2, :cond_0

    .line 354
    const-string v3, ""

    invoke-interface {p1, v3, v0}, Lorg/w3c/dom/Document;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v2

    .line 355
    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 357
    :cond_0
    return-object v2
.end method

.method private createElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "doc"    # Lorg/w3c/dom/Document;
    .param p2, "currentNode"    # Lorg/w3c/dom/Node;
    .param p3, "axisName"    # Ljava/lang/String;

    .line 362
    invoke-direct {p0}, Lorg/apache/poi/xssf/extractor/XSSFExportToXml;->isNamespaceDeclared()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    invoke-direct {p0}, Lorg/apache/poi/xssf/extractor/XSSFExportToXml;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .local v0, "selectedNode":Lorg/w3c/dom/Node;
    goto :goto_0

    .line 365
    .end local v0    # "selectedNode":Lorg/w3c/dom/Node;
    :cond_0
    const-string v0, ""

    invoke-interface {p1, v0, p3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 367
    .restart local v0    # "selectedNode":Lorg/w3c/dom/Node;
    :goto_0
    invoke-interface {p2, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 368
    return-object v0
.end method

.method private getComplexTypeForElement(Ljava/lang/String;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 4
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "xmlSchema"    # Lorg/w3c/dom/Node;
    .param p3, "localComplexTypeRootNode"    # Lorg/w3c/dom/Node;

    .line 468
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/extractor/XSSFExportToXml;->removeNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, "elementNameWithoutNamespace":Ljava/lang/String;
    invoke-direct {p0, p3, v0}, Lorg/apache/poi/xssf/extractor/XSSFExportToXml;->getComplexTypeNameFromChildren(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 473
    .local v1, "complexTypeName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 474
    .local v2, "complexTypeNode":Lorg/w3c/dom/Node;
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 475
    const/4 v3, 0x0

    invoke-direct {p0, p2, v3, v1}, Lorg/apache/poi/xssf/extractor/XSSFExportToXml;->getComplexTypeNodeFromSchemaChildren(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 478
    :cond_0
    return-object v2
.end method

.method private getComplexTypeNameFromChildren(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "localComplexTypeRootNode"    # Lorg/w3c/dom/Node;
    .param p2, "elementNameWithoutNamespace"    # Ljava/lang/String;

    .line 483
    if-nez p1, :cond_0

    .line 484
    const-string v0, ""

    return-object v0

    .line 487
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 488
    .local v0, "list":Lorg/w3c/dom/NodeList;
    const-string v1, ""

    .line 490
    .local v1, "complexTypeName":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 491
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 492
    .local v3, "node":Lorg/w3c/dom/Node;
    instance-of v4, v3, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_1

    .line 493
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "element"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 494
    invoke-direct {p0, v3}, Lorg/apache/poi/xssf/extractor/XSSFExportToXml;->getNameOrRefElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 495
    .local v4, "nameAttribute":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 496
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    const-string/jumbo v6, "type"

    invoke-interface {v5, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 497
    .local v5, "complexTypeAttribute":Lorg/w3c/dom/Node;
    if-eqz v5, :cond_1

    .line 498
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 499
    goto :goto_1

    .line 490
    .end local v3    # "node":Lorg/w3c/dom/Node;
    .end local v4    # "nameAttribute":Lorg/w3c/dom/Node;
    .end local v5    # "complexTypeAttribute":Lorg/w3c/dom/Node;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 505
    .end local v2    # "i":I
    :cond_2
    :goto_1
    return-object v1
.end method

.method private getComplexTypeNodeFromSchemaChildren(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 9
    .param p1, "xmlSchema"    # Lorg/w3c/dom/Node;
    .param p2, "complexTypeNode"    # Lorg/w3c/dom/Node;
    .param p3, "complexTypeName"    # Ljava/lang/String;

    .line 510
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 511
    .local v0, "complexTypeList":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 512
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 513
    .local v2, "node":Lorg/w3c/dom/Node;
    instance-of v3, v2, Lorg/w3c/dom/Element;

    if-eqz v3, :cond_3

    .line 514
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "complexType"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 515
    invoke-direct {p0, v2}, Lorg/apache/poi/xssf/extractor/XSSFExportToXml;->getNameOrRefElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 516
    .local v3, "nameAttribute":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 518
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 519
    .local v4, "complexTypeChildList":Lorg/w3c/dom/NodeList;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 520
    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 522
    .local v6, "sequence":Lorg/w3c/dom/Node;
    instance-of v7, v6, Lorg/w3c/dom/Element;

    if-eqz v7, :cond_1

    .line 523
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "sequence"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "all"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 524
    :cond_0
    move-object p2, v6

    .line 525
    goto :goto_2

    .line 519
    .end local v6    # "sequence":Lorg/w3c/dom/Node;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 529
    .end local v5    # "j":I
    :cond_2
    :goto_2
    if-eqz p2, :cond_3

    .line 530
    goto :goto_3

    .line 511
    .end local v2    # "node":Lorg/w3c/dom/Node;
    .end local v3    # "nameAttribute":Lorg/w3c/dom/Node;
    .end local v4    # "complexTypeChildList":Lorg/w3c/dom/NodeList;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 537
    .end local v1    # "i":I
    :cond_4
    :goto_3
    return-object p2
.end method

.method private getFormattedDate(Lorg/apache/poi/xssf/usermodel/XSSFCell;)Ljava/lang/String;
    .locals 3
    .param p1, "cell"    # Lorg/apache/poi/xssf/usermodel/XSSFCell;

    .line 313
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 314
    .local v0, "sdf":Ljava/text/DateFormat;
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 315
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getDateCellValue()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getNameOrRefElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .line 459
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string v1, "name"

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 460
    .local v0, "returnNode":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    .line 461
    return-object v0

    .line 464
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "ref"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    return-object v1
.end method

.method private getNamespace()Ljava/lang/String;
    .locals 1

    .line 390
    iget-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFExportToXml;->map:Lorg/apache/poi/xssf/usermodel/XSSFMap;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFMap;->getCTSchema()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSchema;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSchema;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNodeByXPath(Ljava/lang/String;Lorg/w3c/dom/Node;Lorg/w3c/dom/Document;Z)Lorg/w3c/dom/Node;
    .locals 7
    .param p1, "xpath"    # Ljava/lang/String;
    .param p2, "rootNode"    # Lorg/w3c/dom/Node;
    .param p3, "doc"    # Lorg/w3c/dom/Document;
    .param p4, "createMultipleInstances"    # Z

    .line 319
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "xpathTokens":[Ljava/lang/String;
    move-object v1, p2

    .line 324
    .local v1, "currentNode":Lorg/w3c/dom/Node;
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_4

    .line 326
    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lorg/apache/poi/xssf/extractor/XSSFExportToXml;->removeNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 329
    .local v3, "axisName":Ljava/lang/String;
    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 331
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 333
    .local v4, "list":Lorg/w3c/dom/NodeList;
    const/4 v5, 0x0

    .line 334
    .local v5, "selectedNode":Lorg/w3c/dom/Node;
    if-eqz p4, :cond_0

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    if-eq v2, v6, :cond_1

    .line 336
    :cond_0
    invoke-direct {p0, v3, v4}, Lorg/apache/poi/xssf/extractor/XSSFExportToXml;->selectNode(Ljava/lang/String;Lorg/w3c/dom/NodeList;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 338
    :cond_1
    if-nez v5, :cond_2

    .line 339
    invoke-direct {p0, p3, v1, v3}, Lorg/apache/poi/xssf/extractor/XSSFExportToXml;->createElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 341
    :cond_2
    move-object v1, v5

    .line 342
    .end local v4    # "list":Lorg/w3c/dom/NodeList;
    .end local v5    # "selectedNode":Lorg/w3c/dom/Node;
    goto :goto_1

    .line 343
    :cond_3
    invoke-direct {p0, p3, v1, v3}, Lorg/apache/poi/xssf/extractor/XSSFExportToXml;->createAttribute(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 324
    .end local v3    # "axisName":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 346
    .end local v2    # "i":I
    :cond_4
    return-object v1
.end method

.method private indexOfElementInComplexType(Ljava/lang/String;Lorg/w3c/dom/Node;)I
    .locals 7
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "complexType"    # Lorg/w3c/dom/Node;

    .line 435
    if-nez p2, :cond_0

    .line 436
    const/4 v0, -0x1

    return v0

    .line 439
    :cond_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 440
    .local v0, "list":Lorg/w3c/dom/NodeList;
    const/4 v1, -0x1

    .line 442
    .local v1, "indexOf":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 443
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 444
    .local v3, "node":Lorg/w3c/dom/Node;
    instance-of v4, v3, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_1

    .line 445
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "element"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 446
    invoke-direct {p0, v3}, Lorg/apache/poi/xssf/extractor/XSSFExportToXml;->getNameOrRefElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 447
    .local v4, "element":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/extractor/XSSFExportToXml;->removeNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 448
    move v1, v2

    .line 449
    goto :goto_1

    .line 442
    .end local v3    # "node":Lorg/w3c/dom/Node;
    .end local v4    # "element":Lorg/w3c/dom/Node;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 455
    .end local v2    # "i":I
    :cond_2
    :goto_1
    return v1
.end method

.method private isNamespaceDeclared()Z
    .locals 2

    .line 385
    invoke-direct {p0}, Lorg/apache/poi/xssf/extractor/XSSFExportToXml;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "schemaNamespace":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isValid(Lorg/w3c/dom/Document;)Z
    .locals 7
    .param p1, "xml"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 251
    const/4 v0, 0x1

    :try_start_0
    const-string v1, "http://www.w3.org/2001/XMLSchema"

    .line 252
    .local v1, "language":Ljava/lang/String;
    invoke-static {v1}, Ljavax/xml/validation/SchemaFactory;->newInstance(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;

    move-result-object v2

    .line 254
    .local v2, "factory":Ljavax/xml/validation/SchemaFactory;
    new-instance v3, Ljavax/xml/transform/dom/DOMSource;

    iget-object v4, p0, Lorg/apache/poi/xssf/extractor/XSSFExportToXml;->map:Lorg/apache/poi/xssf/usermodel/XSSFMap;

    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFMap;->getSchema()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 255
    .local v3, "source":Ljavax/xml/transform/Source;
    invoke-virtual {v2, v3}, Ljavax/xml/validation/SchemaFactory;->newSchema(Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;

    move-result-object v4

    .line 256
    .local v4, "schema":Ljavax/xml/validation/Schema;
    invoke-virtual {v4}, Ljavax/xml/validation/Schema;->newValidator()Ljavax/xml/validation/Validator;

    move-result-object v5

    .line 257
    .local v5, "validator":Ljavax/xml/validation/Validator;
    new-instance v6, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v6, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {v5, v6}, Ljavax/xml/validation/Validator;->validate(Ljavax/xml/transform/Source;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    return v0

    .line 261
    .end local v1    # "language":Ljava/lang/String;
    .end local v2    # "factory":Ljavax/xml/validation/SchemaFactory;
    .end local v3    # "source":Ljavax/xml/transform/Source;
    .end local v4    # "schema":Ljavax/xml/validation/Schema;
    .end local v5    # "validator":Ljavax/xml/validation/Validator;
    :catch_0
    move-exception v1

    .line 262
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lorg/apache/poi/xssf/extractor/XSSFExportToXml;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v3, 0x7

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "document is not valid"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    aput-object v1, v4, v0

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 265
    .end local v1    # "e":Ljava/io/IOException;
    return v6
.end method

.method private mapCellOnNode(Lorg/apache/poi/xssf/usermodel/XSSFCell;Lorg/w3c/dom/Node;)V
    .locals 4
    .param p1, "cell"    # Lorg/apache/poi/xssf/usermodel/XSSFCell;
    .param p2, "node"    # Lorg/w3c/dom/Node;

    .line 271
    const-string v0, ""

    .line 272
    .local v0, "value":Ljava/lang/String;
    sget-object v1, Lorg/apache/poi/xssf/extractor/XSSFExportToXml$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    .line 290
    :cond_0
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/DateUtil;->isCellDateFormatted(Lorg/apache/poi/ss/usermodel/Cell;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/extractor/XSSFExportToXml;->getFormattedDate(Lorg/apache/poi/xssf/usermodel/XSSFCell;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 293
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRawValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    goto :goto_0

    .line 278
    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v1, v2, :cond_3

    .line 279
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getStringCellValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 281
    :cond_3
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/DateUtil;->isCellDateFormatted(Lorg/apache/poi/ss/usermodel/Cell;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 282
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/extractor/XSSFExportToXml;->getFormattedDate(Lorg/apache/poi/xssf/usermodel/XSSFCell;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 284
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getNumericCellValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    goto :goto_0

    .line 276
    :cond_5
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getErrorCellString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 275
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getBooleanCellValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 274
    :cond_7
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getStringCellValue()Ljava/lang/String;

    move-result-object v0

    .line 300
    :goto_0
    instance-of v1, p2, Lorg/w3c/dom/Element;

    if-eqz v1, :cond_8

    .line 301
    move-object v1, p2

    check-cast v1, Lorg/w3c/dom/Element;

    .line 302
    .local v1, "currentElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 303
    .end local v1    # "currentElement":Lorg/w3c/dom/Element;
    goto :goto_1

    .line 304
    :cond_8
    invoke-interface {p2, v0}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    .line 306
    :goto_1
    return-void
.end method

.method private removeNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "elementName"    # Ljava/lang/String;

    .line 309
    const-string v0, ".*:.*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method private selectNode(Ljava/lang/String;Lorg/w3c/dom/NodeList;)Lorg/w3c/dom/Node;
    .locals 4
    .param p1, "axisName"    # Ljava/lang/String;
    .param p2, "list"    # Lorg/w3c/dom/NodeList;

    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, "selectedNode":Lorg/w3c/dom/Node;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 374
    invoke-interface {p2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 375
    .local v2, "node":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 376
    move-object v0, v2

    .line 377
    goto :goto_1

    .line 373
    .end local v2    # "node":Lorg/w3c/dom/Node;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 380
    .end local v1    # "j":I
    :cond_1
    :goto_1
    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 82
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xssf/extractor/XSSFExportToXml;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p1, "leftXpath"    # Ljava/lang/String;
    .param p2, "rightXpath"    # Ljava/lang/String;

    .line 400
    iget-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFExportToXml;->map:Lorg/apache/poi/xssf/usermodel/XSSFMap;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFMap;->getSchema()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 402
    .local v0, "xmlSchema":Lorg/w3c/dom/Node;
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 403
    .local v2, "leftTokens":[Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, "rightTokens":[Ljava/lang/String;
    array-length v3, v2

    array-length v4, v1

    if-ge v3, v4, :cond_0

    array-length v3, v2

    goto :goto_0

    :cond_0
    array-length v3, v1

    .line 407
    .local v3, "minLength":I
    :goto_0
    move-object v4, v0

    .line 409
    .local v4, "localComplexTypeRootNode":Lorg/w3c/dom/Node;
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_4

    .line 411
    aget-object v6, v2, v5

    .line 412
    .local v6, "leftElementName":Ljava/lang/String;
    aget-object v7, v1, v5

    .line 414
    .local v7, "rightElementName":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 415
    invoke-direct {p0, v6, v0, v4}, Lorg/apache/poi/xssf/extractor/XSSFExportToXml;->getComplexTypeForElement(Ljava/lang/String;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    goto :goto_2

    .line 417
    :cond_1
    invoke-direct {p0, v6, v4}, Lorg/apache/poi/xssf/extractor/XSSFExportToXml;->indexOfElementInComplexType(Ljava/lang/String;Lorg/w3c/dom/Node;)I

    move-result v8

    .line 418
    .local v8, "leftIndex":I
    invoke-direct {p0, v7, v4}, Lorg/apache/poi/xssf/extractor/XSSFExportToXml;->indexOfElementInComplexType(Ljava/lang/String;Lorg/w3c/dom/Node;)I

    move-result v9

    .line 419
    .local v9, "rightIndex":I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_3

    if-eq v9, v10, :cond_3

    .line 420
    if-ge v8, v9, :cond_2

    .line 421
    return v10

    .line 422
    :cond_2
    if-le v8, v9, :cond_3

    .line 423
    const/4 v10, 0x1

    return v10

    .line 409
    .end local v6    # "leftElementName":Ljava/lang/String;
    .end local v7    # "rightElementName":Ljava/lang/String;
    .end local v8    # "leftIndex":I
    .end local v9    # "rightIndex":I
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 431
    .end local v5    # "i":I
    :cond_4
    const/4 v5, 0x0

    return v5
.end method

.method public exportToXML(Ljava/io/OutputStream;Ljava/lang/String;Z)V
    .locals 30
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "validate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 119
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/poi/xssf/extractor/XSSFExportToXml;->map:Lorg/apache/poi/xssf/usermodel/XSSFMap;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFMap;->getRelatedSingleXMLCell()Ljava/util/List;

    move-result-object v1

    .line 120
    .local v1, "singleXMLCells":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    iget-object v2, v0, Lorg/apache/poi/xssf/extractor/XSSFExportToXml;->map:Lorg/apache/poi/xssf/usermodel/XSSFMap;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFMap;->getRelatedTables()Ljava/util/List;

    move-result-object v2

    .line 122
    .local v2, "tables":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFTable;>;"
    iget-object v3, v0, Lorg/apache/poi/xssf/extractor/XSSFExportToXml;->map:Lorg/apache/poi/xssf/usermodel/XSSFMap;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFMap;->getCtMap()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;->getRootElement()Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, "rootElement":Ljava/lang/String;
    invoke-static {}, Lorg/apache/poi/util/DocumentHelper;->createDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    .line 128
    .local v4, "doc":Lorg/w3c/dom/Document;
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/xssf/extractor/XSSFExportToXml;->isNamespaceDeclared()Z

    move-result v5

    const-string v6, ""

    if-eqz v5, :cond_0

    .line 129
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/xssf/extractor/XSSFExportToXml;->getNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .local v5, "root":Lorg/w3c/dom/Element;
    goto :goto_0

    .line 131
    .end local v5    # "root":Lorg/w3c/dom/Element;
    :cond_0
    invoke-interface {v4, v6, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 133
    .restart local v5    # "root":Lorg/w3c/dom/Element;
    :goto_0
    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 136
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 137
    .local v7, "xpaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 138
    .local v8, "singleXmlCellsMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 140
    .local v9, "tableMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/XSSFTable;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;

    .line 141
    .local v11, "simpleXmlCell":Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;
    invoke-virtual {v11}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;->getXpath()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-virtual {v11}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;->getXpath()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 144
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "simpleXmlCell":Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    .line 145
    .local v11, "table":Lorg/apache/poi/xssf/usermodel/XSSFTable;
    invoke-virtual {v11}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getCommonXpath()Ljava/lang/String;

    move-result-object v12

    .line 146
    .local v12, "commonXPath":Ljava/lang/String;
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-interface {v9, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .end local v11    # "table":Lorg/apache/poi/xssf/usermodel/XSSFTable;
    .end local v12    # "commonXPath":Ljava/lang/String;
    goto :goto_2

    .line 150
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 152
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 154
    .local v11, "xpath":Ljava/lang/String;
    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;

    .line 155
    .local v12, "simpleXmlCell":Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;
    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    .line 157
    .local v13, "table":Lorg/apache/poi/xssf/usermodel/XSSFTable;
    const-string v14, ".*\\[.*"

    invoke-virtual {v11, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_c

    .line 160
    const/4 v14, 0x0

    if-eqz v12, :cond_4

    .line 161
    invoke-virtual {v12}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;->getReferencedCell()Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v15

    .line 162
    .local v15, "cell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    if-eqz v15, :cond_3

    .line 163
    move-object/from16 v16, v1

    .end local v1    # "singleXMLCells":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    .local v16, "singleXMLCells":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-direct {v0, v11, v1, v4, v14}, Lorg/apache/poi/xssf/extractor/XSSFExportToXml;->getNodeByXPath(Ljava/lang/String;Lorg/w3c/dom/Node;Lorg/w3c/dom/Document;Z)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 164
    .local v1, "currentNode":Lorg/w3c/dom/Node;
    invoke-direct {v0, v15, v1}, Lorg/apache/poi/xssf/extractor/XSSFExportToXml;->mapCellOnNode(Lorg/apache/poi/xssf/usermodel/XSSFCell;Lorg/w3c/dom/Node;)V

    .line 167
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 168
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_4

    .line 162
    .end local v16    # "singleXMLCells":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    .local v1, "singleXMLCells":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    :cond_3
    move-object/from16 v16, v1

    .end local v1    # "singleXMLCells":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    .restart local v16    # "singleXMLCells":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    goto :goto_4

    .line 160
    .end local v15    # "cell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    .end local v16    # "singleXMLCells":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    .restart local v1    # "singleXMLCells":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    :cond_4
    move-object/from16 v16, v1

    .line 174
    .end local v1    # "singleXMLCells":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    .restart local v16    # "singleXMLCells":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    :cond_5
    :goto_4
    if-eqz v13, :cond_b

    .line 176
    invoke-virtual {v13}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getCTTable()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTableColumns()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;->getTableColumnList()Ljava/util/List;

    move-result-object v1

    .line 178
    .local v1, "tableColumns":Ljava/util/List;, "Ljava/util/List<Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;>;"
    invoke-virtual {v13}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getXSSFSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v14

    .line 180
    .local v14, "sheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    invoke-virtual {v13}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v15

    invoke-virtual {v15}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v15

    .line 182
    .local v15, "startRow":I
    move-object/from16 v18, v2

    .end local v2    # "tables":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFTable;>;"
    .local v18, "tables":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFTable;>;"
    const/4 v2, 0x1

    add-int/2addr v15, v2

    .line 184
    invoke-virtual {v13}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getEndCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v2

    .line 186
    .local v2, "endRow":I
    move/from16 v19, v15

    move-object/from16 v21, v3

    move/from16 v3, v19

    .local v3, "i":I
    .local v21, "rootElement":Ljava/lang/String;
    :goto_5
    if-gt v3, v2, :cond_a

    .line 187
    move/from16 v19, v2

    .end local v2    # "endRow":I
    .local v19, "endRow":I
    invoke-virtual {v14, v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v2

    .line 189
    .local v2, "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    move-object/from16 v22, v5

    .end local v5    # "root":Lorg/w3c/dom/Element;
    .local v22, "root":Lorg/w3c/dom/Element;
    invoke-virtual {v13}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getCommonXpath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v23, v6

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    move-object/from16 v24, v7

    const/4 v7, 0x1

    .end local v7    # "xpaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v24, "xpaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0, v5, v6, v4, v7}, Lorg/apache/poi/xssf/extractor/XSSFExportToXml;->getNodeByXPath(Ljava/lang/String;Lorg/w3c/dom/Node;Lorg/w3c/dom/Document;Z)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 191
    .local v5, "tableRootNode":Lorg/w3c/dom/Node;
    invoke-virtual {v13}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v6

    .line 192
    .local v6, "startColumnIndex":S
    move/from16 v20, v6

    move/from16 v7, v20

    .local v7, "j":I
    :goto_6
    invoke-virtual {v13}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getEndCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v20

    move-object/from16 v25, v8

    .end local v8    # "singleXmlCellsMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    .local v25, "singleXmlCellsMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    invoke-virtual/range {v20 .. v20}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v8

    if-gt v7, v8, :cond_9

    .line 193
    invoke-virtual {v2, v7}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v8

    .line 194
    .local v8, "cell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    if-eqz v8, :cond_8

    .line 195
    move-object/from16 v20, v2

    .end local v2    # "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .local v20, "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    sub-int v2, v7, v6

    .line 196
    .local v2, "tableColumnIndex":I
    move/from16 v26, v6

    .end local v6    # "startColumnIndex":S
    .local v26, "startColumnIndex":S
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_7

    .line 197
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    .line 198
    .local v6, "ctTableColumn":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;
    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->getXmlColumnPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;

    move-result-object v27

    if-eqz v27, :cond_6

    .line 199
    move-object/from16 v27, v1

    .end local v1    # "tableColumns":Ljava/util/List;, "Ljava/util/List<Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;>;"
    .local v27, "tableColumns":Ljava/util/List;, "Ljava/util/List<Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;>;"
    new-instance v1, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;

    move/from16 v28, v2

    .end local v2    # "tableColumnIndex":I
    .local v28, "tableColumnIndex":I
    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->getXmlColumnPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;

    move-result-object v2

    invoke-direct {v1, v13, v6, v2}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTable;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;)V

    .line 201
    .local v1, "pointer":Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;->getLocalXPath()Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "localXPath":Ljava/lang/String;
    move-object/from16 v29, v1

    move-object/from16 v17, v6

    const/4 v1, 0x0

    .end local v1    # "pointer":Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;
    .end local v6    # "ctTableColumn":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;
    .local v17, "ctTableColumn":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;
    .local v29, "pointer":Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;
    invoke-direct {v0, v2, v5, v4, v1}, Lorg/apache/poi/xssf/extractor/XSSFExportToXml;->getNodeByXPath(Ljava/lang/String;Lorg/w3c/dom/Node;Lorg/w3c/dom/Document;Z)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 203
    .local v6, "currentNode":Lorg/w3c/dom/Node;
    invoke-direct {v0, v8, v6}, Lorg/apache/poi/xssf/extractor/XSSFExportToXml;->mapCellOnNode(Lorg/apache/poi/xssf/usermodel/XSSFCell;Lorg/w3c/dom/Node;)V

    goto :goto_7

    .line 198
    .end local v17    # "ctTableColumn":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;
    .end local v27    # "tableColumns":Ljava/util/List;, "Ljava/util/List<Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;>;"
    .end local v28    # "tableColumnIndex":I
    .end local v29    # "pointer":Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;
    .local v1, "tableColumns":Ljava/util/List;, "Ljava/util/List<Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;>;"
    .local v2, "tableColumnIndex":I
    .local v6, "ctTableColumn":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;
    :cond_6
    move-object/from16 v27, v1

    move/from16 v28, v2

    move-object/from16 v17, v6

    const/4 v1, 0x0

    .end local v1    # "tableColumns":Ljava/util/List;, "Ljava/util/List<Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;>;"
    .end local v2    # "tableColumnIndex":I
    .end local v6    # "ctTableColumn":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;
    .restart local v17    # "ctTableColumn":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;
    .restart local v27    # "tableColumns":Ljava/util/List;, "Ljava/util/List<Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;>;"
    .restart local v28    # "tableColumnIndex":I
    goto :goto_7

    .line 196
    .end local v17    # "ctTableColumn":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;
    .end local v27    # "tableColumns":Ljava/util/List;, "Ljava/util/List<Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;>;"
    .end local v28    # "tableColumnIndex":I
    .restart local v1    # "tableColumns":Ljava/util/List;, "Ljava/util/List<Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;>;"
    .restart local v2    # "tableColumnIndex":I
    :cond_7
    move-object/from16 v27, v1

    move/from16 v28, v2

    const/4 v1, 0x0

    .end local v1    # "tableColumns":Ljava/util/List;, "Ljava/util/List<Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;>;"
    .end local v2    # "tableColumnIndex":I
    .restart local v27    # "tableColumns":Ljava/util/List;, "Ljava/util/List<Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;>;"
    .restart local v28    # "tableColumnIndex":I
    goto :goto_7

    .line 194
    .end local v20    # "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .end local v26    # "startColumnIndex":S
    .end local v27    # "tableColumns":Ljava/util/List;, "Ljava/util/List<Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;>;"
    .end local v28    # "tableColumnIndex":I
    .restart local v1    # "tableColumns":Ljava/util/List;, "Ljava/util/List<Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;>;"
    .local v2, "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .local v6, "startColumnIndex":S
    :cond_8
    move-object/from16 v27, v1

    move-object/from16 v20, v2

    move/from16 v26, v6

    const/4 v1, 0x0

    .line 192
    .end local v1    # "tableColumns":Ljava/util/List;, "Ljava/util/List<Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;>;"
    .end local v2    # "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .end local v6    # "startColumnIndex":S
    .end local v8    # "cell":Lorg/apache/poi/xssf/usermodel/XSSFCell;
    .restart local v20    # "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .restart local v26    # "startColumnIndex":S
    .restart local v27    # "tableColumns":Ljava/util/List;, "Ljava/util/List<Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;>;"
    :goto_7
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, v20

    move-object/from16 v8, v25

    move/from16 v6, v26

    move-object/from16 v1, v27

    goto :goto_6

    .end local v20    # "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .end local v26    # "startColumnIndex":S
    .end local v27    # "tableColumns":Ljava/util/List;, "Ljava/util/List<Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;>;"
    .restart local v1    # "tableColumns":Ljava/util/List;, "Ljava/util/List<Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;>;"
    .restart local v2    # "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .restart local v6    # "startColumnIndex":S
    :cond_9
    move-object/from16 v27, v1

    move-object/from16 v20, v2

    move/from16 v26, v6

    const/4 v1, 0x0

    .line 186
    .end local v1    # "tableColumns":Ljava/util/List;, "Ljava/util/List<Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;>;"
    .end local v2    # "row":Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .end local v5    # "tableRootNode":Lorg/w3c/dom/Node;
    .end local v6    # "startColumnIndex":S
    .end local v7    # "j":I
    .restart local v27    # "tableColumns":Ljava/util/List;, "Ljava/util/List<Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;>;"
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v19

    move-object/from16 v5, v22

    move-object/from16 v6, v23

    move-object/from16 v7, v24

    move-object/from16 v8, v25

    move-object/from16 v1, v27

    goto/16 :goto_5

    .end local v19    # "endRow":I
    .end local v22    # "root":Lorg/w3c/dom/Element;
    .end local v24    # "xpaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "singleXmlCellsMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    .end local v27    # "tableColumns":Ljava/util/List;, "Ljava/util/List<Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;>;"
    .restart local v1    # "tableColumns":Ljava/util/List;, "Ljava/util/List<Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;>;"
    .local v2, "endRow":I
    .local v5, "root":Lorg/w3c/dom/Element;
    .local v7, "xpaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v8, "singleXmlCellsMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    :cond_a
    move-object/from16 v27, v1

    move/from16 v19, v2

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    .end local v1    # "tableColumns":Ljava/util/List;, "Ljava/util/List<Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;>;"
    .end local v2    # "endRow":I
    .end local v5    # "root":Lorg/w3c/dom/Element;
    .end local v7    # "xpaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "singleXmlCellsMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    .restart local v19    # "endRow":I
    .restart local v22    # "root":Lorg/w3c/dom/Element;
    .restart local v24    # "xpaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "singleXmlCellsMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    .restart local v27    # "tableColumns":Ljava/util/List;, "Ljava/util/List<Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;>;"
    goto :goto_8

    .line 174
    .end local v14    # "sheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .end local v15    # "startRow":I
    .end local v18    # "tables":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFTable;>;"
    .end local v19    # "endRow":I
    .end local v21    # "rootElement":Ljava/lang/String;
    .end local v22    # "root":Lorg/w3c/dom/Element;
    .end local v24    # "xpaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "singleXmlCellsMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    .end local v27    # "tableColumns":Ljava/util/List;, "Ljava/util/List<Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;>;"
    .local v2, "tables":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFTable;>;"
    .local v3, "rootElement":Ljava/lang/String;
    .restart local v5    # "root":Lorg/w3c/dom/Element;
    .restart local v7    # "xpaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "singleXmlCellsMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    :cond_b
    move-object/from16 v18, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    .end local v2    # "tables":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFTable;>;"
    .end local v3    # "rootElement":Ljava/lang/String;
    .end local v5    # "root":Lorg/w3c/dom/Element;
    .end local v7    # "xpaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "singleXmlCellsMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    .restart local v18    # "tables":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFTable;>;"
    .restart local v21    # "rootElement":Ljava/lang/String;
    .restart local v22    # "root":Lorg/w3c/dom/Element;
    .restart local v24    # "xpaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "singleXmlCellsMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    goto :goto_8

    .line 157
    .end local v16    # "singleXMLCells":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    .end local v18    # "tables":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFTable;>;"
    .end local v21    # "rootElement":Ljava/lang/String;
    .end local v22    # "root":Lorg/w3c/dom/Element;
    .end local v24    # "xpaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "singleXmlCellsMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    .local v1, "singleXMLCells":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    .restart local v2    # "tables":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFTable;>;"
    .restart local v3    # "rootElement":Ljava/lang/String;
    .restart local v5    # "root":Lorg/w3c/dom/Element;
    .restart local v7    # "xpaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "singleXmlCellsMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    :cond_c
    move-object/from16 v16, v1

    move-object/from16 v18, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    .line 213
    .end local v1    # "singleXMLCells":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    .end local v2    # "tables":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFTable;>;"
    .end local v3    # "rootElement":Ljava/lang/String;
    .end local v5    # "root":Lorg/w3c/dom/Element;
    .end local v7    # "xpaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "singleXmlCellsMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    .end local v11    # "xpath":Ljava/lang/String;
    .end local v12    # "simpleXmlCell":Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;
    .end local v13    # "table":Lorg/apache/poi/xssf/usermodel/XSSFTable;
    .restart local v16    # "singleXMLCells":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    .restart local v18    # "tables":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFTable;>;"
    .restart local v21    # "rootElement":Ljava/lang/String;
    .restart local v22    # "root":Lorg/w3c/dom/Element;
    .restart local v24    # "xpaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "singleXmlCellsMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    :goto_8
    move-object/from16 v1, v16

    move-object/from16 v2, v18

    move-object/from16 v3, v21

    move-object/from16 v5, v22

    move-object/from16 v6, v23

    move-object/from16 v7, v24

    move-object/from16 v8, v25

    goto/16 :goto_3

    .line 152
    .end local v16    # "singleXMLCells":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    .end local v18    # "tables":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFTable;>;"
    .end local v21    # "rootElement":Ljava/lang/String;
    .end local v22    # "root":Lorg/w3c/dom/Element;
    .end local v24    # "xpaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "singleXmlCellsMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    .restart local v1    # "singleXMLCells":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    .restart local v2    # "tables":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFTable;>;"
    .restart local v3    # "rootElement":Ljava/lang/String;
    .restart local v5    # "root":Lorg/w3c/dom/Element;
    .restart local v7    # "xpaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "singleXmlCellsMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    :cond_d
    move-object/from16 v16, v1

    move-object/from16 v18, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v5

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    .line 215
    .end local v1    # "singleXMLCells":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    .end local v2    # "tables":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFTable;>;"
    .end local v3    # "rootElement":Ljava/lang/String;
    .end local v5    # "root":Lorg/w3c/dom/Element;
    .end local v7    # "xpaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "singleXmlCellsMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .restart local v16    # "singleXMLCells":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    .restart local v18    # "tables":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/usermodel/XSSFTable;>;"
    .restart local v21    # "rootElement":Ljava/lang/String;
    .restart local v22    # "root":Lorg/w3c/dom/Element;
    .restart local v24    # "xpaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "singleXmlCellsMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;>;"
    const/4 v1, 0x1

    .line 216
    .local v1, "isValid":Z
    if-eqz p3, :cond_e

    .line 217
    invoke-direct {v0, v4}, Lorg/apache/poi/xssf/extractor/XSSFExportToXml;->isValid(Lorg/w3c/dom/Document;)Z

    move-result v1

    .line 220
    :cond_e
    if-eqz v1, :cond_f

    .line 226
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v2

    .line 227
    .local v2, "transfac":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v2}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v3

    .line 228
    .local v3, "trans":Ljavax/xml/transform/Transformer;
    const-string v5, "omit-xml-declaration"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v5, v6}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v5, "indent"

    invoke-virtual {v3, v5, v6}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v5, "encoding"

    move-object/from16 v6, p2

    invoke-virtual {v3, v5, v6}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    new-instance v5, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v7, p1

    invoke-direct {v5, v7}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    .line 235
    .local v5, "result":Ljavax/xml/transform/stream/StreamResult;
    new-instance v8, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v8, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 236
    .local v8, "source":Ljavax/xml/transform/dom/DOMSource;
    invoke-virtual {v3, v8, v5}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    goto :goto_9

    .line 220
    .end local v2    # "transfac":Ljavax/xml/transform/TransformerFactory;
    .end local v3    # "trans":Ljavax/xml/transform/Transformer;
    .end local v5    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v8    # "source":Ljavax/xml/transform/dom/DOMSource;
    :cond_f
    move-object/from16 v7, p1

    move-object/from16 v6, p2

    .line 239
    :goto_9
    return-void
.end method

.method public exportToXML(Ljava/io/OutputStream;Z)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "validate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 106
    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/poi/xssf/extractor/XSSFExportToXml;->exportToXML(Ljava/io/OutputStream;Ljava/lang/String;Z)V

    .line 107
    return-void
.end method
