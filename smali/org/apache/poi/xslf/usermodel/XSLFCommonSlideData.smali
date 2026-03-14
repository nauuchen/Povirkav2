.class public Lorg/apache/poi/xslf/usermodel/XSLFCommonSlideData;
.super Ljava/lang/Object;
.source "XSLFCommonSlideData.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Removal;
    version = "3.18"
.end annotation


# instance fields
.field private final data:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;)V
    .locals 0
    .param p1, "data"    # Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFCommonSlideData;->data:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    .line 52
    return-void
.end method

.method private processShape(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;Ljava/util/List;)V
    .locals 8
    .param p1, "gs"    # Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/DrawingTextBody;",
            ">;)V"
        }
    .end annotation

    .line 108
    .local p2, "out":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xslf/usermodel/DrawingTextBody;>;"
    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->getSpArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    move-result-object v0

    .local v0, "arr$":[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 109
    .local v3, "shape":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;
    invoke-interface {v3}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v4

    .line 110
    .local v4, "ctTextBody":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
    if-nez v4, :cond_0

    .line 111
    goto :goto_2

    .line 115
    :cond_0
    invoke-interface {v3}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;->getNvSpPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShapeNonVisual;

    move-result-object v5

    invoke-interface {v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShapeNonVisual;->getNvPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;

    move-result-object v5

    .line 116
    .local v5, "nvpr":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;
    invoke-interface {v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;->isSetPh()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 117
    new-instance v6, Lorg/apache/poi/xslf/usermodel/DrawingTextPlaceholder;

    invoke-interface {v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;->getPh()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    move-result-object v7

    invoke-direct {v6, v4, v7}, Lorg/apache/poi/xslf/usermodel/DrawingTextPlaceholder;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;)V

    .local v6, "textBody":Lorg/apache/poi/xslf/usermodel/DrawingTextBody;
    goto :goto_1

    .line 119
    .end local v6    # "textBody":Lorg/apache/poi/xslf/usermodel/DrawingTextBody;
    :cond_1
    new-instance v6, Lorg/apache/poi/xslf/usermodel/DrawingTextBody;

    invoke-direct {v6, v4}, Lorg/apache/poi/xslf/usermodel/DrawingTextBody;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;)V

    .line 122
    .restart local v6    # "textBody":Lorg/apache/poi/xslf/usermodel/DrawingTextBody;
    :goto_1
    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    .end local v3    # "shape":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;
    .end local v4    # "ctTextBody":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
    .end local v5    # "nvpr":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;
    .end local v6    # "textBody":Lorg/apache/poi/xslf/usermodel/DrawingTextBody;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    .end local v0    # "arr$":[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_2
    return-void
.end method


# virtual methods
.method public getDrawingText()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/DrawingTextBody;",
            ">;"
        }
    .end annotation

    .line 55
    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/apache/poi/xslf/usermodel/XSLFCommonSlideData;->data:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;->getSpTree()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v2

    .line 57
    .local v2, "gs":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 59
    .local v3, "out":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xslf/usermodel/DrawingTextBody;>;"
    invoke-direct {v1, v2, v3}, Lorg/apache/poi/xslf/usermodel/XSLFCommonSlideData;->processShape(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;Ljava/util/List;)V

    .line 61
    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->getGrpSpArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v0

    .local v0, "arr$":[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v0, v5

    .line 62
    .local v6, "shape":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;
    invoke-direct {v1, v6, v3}, Lorg/apache/poi/xslf/usermodel/XSLFCommonSlideData;->processShape(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;Ljava/util/List;)V

    .line 61
    .end local v6    # "shape":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 65
    .end local v0    # "arr$":[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_0
    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->getGraphicFrameArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;

    move-result-object v4

    .local v4, "arr$":[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;
    array-length v5, v4

    .local v5, "len$":I
    const/4 v0, 0x0

    move v6, v0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v5, :cond_6

    aget-object v7, v4, v6

    .line 66
    .local v7, "frame":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;
    invoke-interface {v7}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;->getGraphic()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;->getGraphicData()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;

    move-result-object v8

    .line 67
    .local v8, "data":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;
    invoke-interface {v8}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v9

    .line 68
    .local v9, "c":Lorg/apache/xmlbeans/XmlCursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "declare namespace pic=\'"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v10, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v10}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "\' .//pic:tbl"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    .line 70
    :goto_2
    invoke-interface {v9}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 71
    invoke-interface {v9}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v10

    .line 73
    .local v10, "o":Lorg/apache/xmlbeans/XmlObject;
    instance-of v0, v10, Lorg/apache/xmlbeans/impl/values/XmlAnyTypeImpl;

    if-eqz v0, :cond_1

    .line 76
    :try_start_0
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v11, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v0, v11}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable$Factory;->parse(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v0

    .line 79
    goto :goto_3

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Lorg/apache/xmlbeans/XmlException;
    new-instance v11, Lorg/apache/poi/POIXMLException;

    invoke-direct {v11, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 82
    .end local v0    # "e":Lorg/apache/xmlbeans/XmlException;
    :cond_1
    :goto_3
    instance-of v0, v10, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    if-eqz v0, :cond_4

    .line 83
    new-instance v0, Lorg/apache/poi/xslf/usermodel/DrawingTable;

    move-object v11, v10

    check-cast v11, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    invoke-direct {v0, v11}, Lorg/apache/poi/xslf/usermodel/DrawingTable;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;)V

    .line 85
    .local v0, "table":Lorg/apache/poi/xslf/usermodel/DrawingTable;
    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/DrawingTable;->getRows()[Lorg/apache/poi/xslf/usermodel/DrawingTableRow;

    move-result-object v11

    .local v11, "arr$":[Lorg/apache/poi/xslf/usermodel/DrawingTableRow;
    array-length v12, v11

    .local v12, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_4
    if-ge v13, v12, :cond_3

    aget-object v14, v11, v13

    .line 86
    .local v14, "row":Lorg/apache/poi/xslf/usermodel/DrawingTableRow;
    invoke-virtual {v14}, Lorg/apache/poi/xslf/usermodel/DrawingTableRow;->getCells()[Lorg/apache/poi/xslf/usermodel/DrawingTableCell;

    move-result-object v15

    move-object/from16 v16, v0

    .end local v0    # "table":Lorg/apache/poi/xslf/usermodel/DrawingTable;
    .local v15, "arr$":[Lorg/apache/poi/xslf/usermodel/DrawingTableCell;
    .local v16, "table":Lorg/apache/poi/xslf/usermodel/DrawingTable;
    array-length v0, v15

    .local v0, "len$":I
    const/16 v17, 0x0

    move/from16 v1, v17

    .local v1, "i$":I
    :goto_5
    if-ge v1, v0, :cond_2

    aget-object v17, v15, v1

    .line 87
    .local v17, "cell":Lorg/apache/poi/xslf/usermodel/DrawingTableCell;
    move/from16 v18, v0

    .end local v0    # "len$":I
    .local v18, "len$":I
    invoke-virtual/range {v17 .. v17}, Lorg/apache/poi/xslf/usermodel/DrawingTableCell;->getTextBody()Lorg/apache/poi/xslf/usermodel/DrawingTextBody;

    move-result-object v0

    .line 88
    .local v0, "textBody":Lorg/apache/poi/xslf/usermodel/DrawingTextBody;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .end local v0    # "textBody":Lorg/apache/poi/xslf/usermodel/DrawingTextBody;
    .end local v17    # "cell":Lorg/apache/poi/xslf/usermodel/DrawingTableCell;
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v18

    goto :goto_5

    .end local v18    # "len$":I
    .local v0, "len$":I
    :cond_2
    move/from16 v18, v0

    .line 85
    .end local v0    # "len$":I
    .end local v1    # "i$":I
    .end local v14    # "row":Lorg/apache/poi/xslf/usermodel/DrawingTableRow;
    .end local v15    # "arr$":[Lorg/apache/poi/xslf/usermodel/DrawingTableCell;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v16

    goto :goto_4

    .end local v16    # "table":Lorg/apache/poi/xslf/usermodel/DrawingTable;
    .local v0, "table":Lorg/apache/poi/xslf/usermodel/DrawingTable;
    :cond_3
    move-object/from16 v16, v0

    .line 92
    .end local v0    # "table":Lorg/apache/poi/xslf/usermodel/DrawingTable;
    .end local v10    # "o":Lorg/apache/xmlbeans/XmlObject;
    .end local v11    # "arr$":[Lorg/apache/poi/xslf/usermodel/DrawingTableRow;
    .end local v12    # "len$":I
    .end local v13    # "i$":I
    :cond_4
    move-object/from16 v1, p0

    goto :goto_2

    .line 94
    :cond_5
    invoke-interface {v9}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 65
    .end local v7    # "frame":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;
    .end local v8    # "data":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;
    .end local v9    # "c":Lorg/apache/xmlbeans/XmlCursor;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_1

    .line 97
    .end local v4    # "arr$":[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_6
    return-object v3
.end method

.method public getText()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/DrawingParagraph;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v0, "paragraphs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xslf/usermodel/DrawingParagraph;>;"
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFCommonSlideData;->getDrawingText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xslf/usermodel/DrawingTextBody;

    .line 102
    .local v2, "textBody":Lorg/apache/poi/xslf/usermodel/DrawingTextBody;
    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/DrawingTextBody;->getParagraphs()[Lorg/apache/poi/xslf/usermodel/DrawingParagraph;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 104
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "textBody":Lorg/apache/poi/xslf/usermodel/DrawingTextBody;
    :cond_0
    return-object v0
.end method
