.class public Lorg/apache/poi/xssf/usermodel/XSSFTableStyle;
.super Ljava/lang/Object;
.source "XSSFTableStyle.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/TableStyle;


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final elementMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/usermodel/TableStyleType;",
            "Lorg/apache/poi/ss/usermodel/DifferentialStyleProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final index:I

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyle;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyle;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxfs;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V
    .locals 14
    .param p1, "index"    # I
    .param p2, "dxfs"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxfs;
    .param p3, "tableStyle"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;
    .param p4, "colorMap"    # Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    .line 57
    move-object v1, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/EnumMap;

    const-class v2, Lorg/apache/poi/ss/usermodel/TableStyleType;

    invoke-direct {v0, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, v1, Lorg/apache/poi/xssf/usermodel/XSSFTableStyle;->elementMap:Ljava/util/Map;

    .line 58
    invoke-interface/range {p3 .. p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/apache/poi/xssf/usermodel/XSSFTableStyle;->name:Ljava/lang/String;

    .line 59
    move v2, p1

    iput v2, v1, Lorg/apache/poi/xssf/usermodel/XSSFTableStyle;->index:I

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 64
    .local v3, "dxfList":Ljava/util/List;, "Ljava/util/List<Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;>;"
    invoke-interface/range {p2 .. p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxfs;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v4

    .line 66
    .local v4, "cur":Lorg/apache/xmlbeans/XmlCursor;
    const-string v5, "declare namespace x=\'http://schemas.openxmlformats.org/spreadsheetml/2006/main\' .//x:dxf | .//dxf"

    .line 67
    .local v5, "xquery":Ljava/lang/String;
    invoke-interface {v4, v5}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    const/4 v0, 0x0

    move-object v6, v0

    .line 68
    :goto_0
    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 69
    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v7

    .line 70
    .local v7, "obj":Lorg/apache/xmlbeans/XmlObject;
    invoke-interface {v7}, Lorg/apache/xmlbeans/XmlObject;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    .line 72
    .local v8, "parentName":Ljava/lang/String;
    const-string v0, "mc:Fallback"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "x:dxfs"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dxfs"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    :cond_0
    :try_start_0
    instance-of v0, v7, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    if-eqz v0, :cond_1

    .line 76
    move-object v0, v7

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    move-object v6, v0

    .local v0, "dxf":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;
    goto :goto_1

    .line 78
    .end local v0    # "dxf":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;
    :cond_1
    invoke-interface {v7}, Lorg/apache/xmlbeans/XmlObject;->newXMLStreamReader()Ljavax/xml/stream/XMLStreamReader;

    move-result-object v0

    new-instance v9, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v9}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    sget-object v10, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-virtual {v9, v10}, Lorg/apache/xmlbeans/XmlOptions;->setDocumentType(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v9

    invoke-static {v0, v9}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf$Factory;->parse(Ljavax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v6, v0

    .line 80
    .local v6, "dxf":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;
    :goto_1
    if-eqz v6, :cond_2

    :try_start_1
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 81
    :catch_0
    move-exception v0

    goto :goto_3

    .line 83
    :cond_2
    :goto_2
    goto :goto_4

    .line 81
    .end local v6    # "dxf":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;
    :catch_1
    move-exception v0

    .line 82
    .local v0, "e":Lorg/apache/xmlbeans/XmlException;
    .restart local v6    # "dxf":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;
    :goto_3
    sget-object v9, Lorg/apache/poi/xssf/usermodel/XSSFTableStyle;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v10, 0x5

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "Error parsing XSSFTableStyle"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v0, v11, v12

    invoke-virtual {v9, v10, v11}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 85
    .end local v0    # "e":Lorg/apache/xmlbeans/XmlException;
    .end local v6    # "dxf":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;
    .end local v7    # "obj":Lorg/apache/xmlbeans/XmlObject;
    .end local v8    # "parentName":Ljava/lang/String;
    :cond_3
    :goto_4
    goto :goto_0

    .line 87
    :cond_4
    invoke-interface/range {p3 .. p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;->getTableStyleElementList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;

    .line 88
    .local v6, "element":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;
    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;->getType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    move-result-object v7

    invoke-virtual {v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/poi/ss/usermodel/TableStyleType;->valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/TableStyleType;

    move-result-object v7

    .line 89
    .local v7, "type":Lorg/apache/poi/ss/usermodel/TableStyleType;
    const/4 v8, 0x0

    .line 90
    .local v8, "dstyle":Lorg/apache/poi/ss/usermodel/DifferentialStyleProvider;
    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;->isSetDxfId()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 91
    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;->getDxfId()J

    move-result-wide v9

    long-to-int v10, v9

    .line 93
    .local v10, "idx":I
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    .line 94
    .local v9, "dxf":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;
    const/4 v11, 0x0

    .line 95
    .local v11, "stripeSize":I
    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;->isSetSize()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;->getSize()J

    move-result-wide v12

    long-to-int v11, v12

    .line 96
    :cond_5
    if-eqz v9, :cond_6

    new-instance v12, Lorg/apache/poi/xssf/usermodel/XSSFDxfStyleProvider;

    move-object/from16 v13, p4

    invoke-direct {v12, v9, v11, v13}, Lorg/apache/poi/xssf/usermodel/XSSFDxfStyleProvider;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;ILorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    move-object v8, v12

    goto :goto_6

    :cond_6
    move-object/from16 v13, p4

    goto :goto_6

    .line 90
    .end local v9    # "dxf":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;
    .end local v10    # "idx":I
    .end local v11    # "stripeSize":I
    :cond_7
    move-object/from16 v13, p4

    .line 98
    :goto_6
    iget-object v9, v1, Lorg/apache/poi/xssf/usermodel/XSSFTableStyle;->elementMap:Ljava/util/Map;

    invoke-interface {v9, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .end local v6    # "element":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;
    .end local v7    # "type":Lorg/apache/poi/ss/usermodel/TableStyleType;
    .end local v8    # "dstyle":Lorg/apache/poi/ss/usermodel/DifferentialStyleProvider;
    goto :goto_5

    .line 87
    :cond_8
    move-object/from16 v13, p4

    .line 100
    .end local v0    # "i$":Ljava/util/Iterator;
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 107
    iget v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyle;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyle;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle(Lorg/apache/poi/ss/usermodel/TableStyleType;)Lorg/apache/poi/ss/usermodel/DifferentialStyleProvider;
    .locals 1
    .param p1, "type"    # Lorg/apache/poi/ss/usermodel/TableStyleType;

    .line 118
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyle;->elementMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/DifferentialStyleProvider;

    return-object v0
.end method

.method public isBuiltin()Z
    .locals 1

    .line 114
    const/4 v0, 0x0

    return v0
.end method
