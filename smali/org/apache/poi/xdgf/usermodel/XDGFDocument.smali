.class public Lorg/apache/poi/xdgf/usermodel/XDGFDocument;
.super Ljava/lang/Object;
.source "XDGFDocument.java"


# instance fields
.field _defaultFillStyle:J

.field _defaultGuideStyle:J

.field _defaultLineStyle:J

.field _defaultTextStyle:J

.field protected _document:Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentType;

.field _styleSheets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentType;)V
    .locals 8
    .param p1, "document"    # Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentType;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_styleSheets:Ljava/util/Map;

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_defaultFillStyle:J

    .line 44
    iput-wide v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_defaultGuideStyle:J

    .line 45
    iput-wide v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_defaultLineStyle:J

    .line 46
    iput-wide v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_defaultTextStyle:J

    .line 51
    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_document:Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentType;

    .line 53
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentType;->isSetDocumentSettings()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 56
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_document:Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentType;

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentType;->getDocumentSettings()Lcom/microsoft/schemas/office/visio/x2012/main/DocumentSettingsType;

    move-result-object v0

    .line 58
    .local v0, "docSettings":Lcom/microsoft/schemas/office/visio/x2012/main/DocumentSettingsType;
    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/DocumentSettingsType;->isSetDefaultFillStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/DocumentSettingsType;->getDefaultFillStyle()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_defaultFillStyle:J

    .line 61
    :cond_0
    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/DocumentSettingsType;->isSetDefaultGuideStyle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/DocumentSettingsType;->getDefaultGuideStyle()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_defaultGuideStyle:J

    .line 64
    :cond_1
    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/DocumentSettingsType;->isSetDefaultLineStyle()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/DocumentSettingsType;->getDefaultLineStyle()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_defaultLineStyle:J

    .line 67
    :cond_2
    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/DocumentSettingsType;->isSetDefaultTextStyle()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 68
    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/DocumentSettingsType;->getDefaultTextStyle()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_defaultTextStyle:J

    .line 70
    :cond_3
    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_document:Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentType;

    invoke-interface {v1}, Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentType;->isSetStyleSheets()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 72
    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_document:Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentType;

    invoke-interface {v1}, Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentType;->getStyleSheets()Lcom/microsoft/schemas/office/visio/x2012/main/StyleSheetsType;

    move-result-object v1

    invoke-interface {v1}, Lcom/microsoft/schemas/office/visio/x2012/main/StyleSheetsType;->getStyleSheetArray()[Lcom/microsoft/schemas/office/visio/x2012/main/StyleSheetType;

    move-result-object v1

    .local v1, "arr$":[Lcom/microsoft/schemas/office/visio/x2012/main/StyleSheetType;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 73
    .local v4, "styleSheet":Lcom/microsoft/schemas/office/visio/x2012/main/StyleSheetType;
    iget-object v5, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_styleSheets:Ljava/util/Map;

    invoke-interface {v4}, Lcom/microsoft/schemas/office/visio/x2012/main/StyleSheetType;->getID()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-instance v7, Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    invoke-direct {v7, v4, p0}, Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;-><init>(Lcom/microsoft/schemas/office/visio/x2012/main/StyleSheetType;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .end local v4    # "styleSheet":Lcom/microsoft/schemas/office/visio/x2012/main/StyleSheetType;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 76
    .end local v1    # "arr$":[Lcom/microsoft/schemas/office/visio/x2012/main/StyleSheetType;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_4
    return-void

    .line 54
    .end local v0    # "docSettings":Lcom/microsoft/schemas/office/visio/x2012/main/DocumentSettingsType;
    :cond_5
    new-instance v0, Lorg/apache/poi/POIXMLException;

    const-string v1, "Document settings not found"

    invoke-direct {v0, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDefaultFillStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    .locals 3

    .line 91
    iget-wide v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_defaultFillStyle:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getStyleById(J)Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object v0

    .line 92
    .local v0, "style":Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    if-eqz v0, :cond_0

    .line 94
    return-object v0

    .line 93
    :cond_0
    new-instance v1, Lorg/apache/poi/POIXMLException;

    const-string v2, "No default fill style found!"

    invoke-direct {v1, v2}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDefaultGuideStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    .locals 3

    .line 98
    iget-wide v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_defaultGuideStyle:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getStyleById(J)Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object v0

    .line 99
    .local v0, "style":Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    if-eqz v0, :cond_0

    .line 101
    return-object v0

    .line 100
    :cond_0
    new-instance v1, Lorg/apache/poi/POIXMLException;

    const-string v2, "No default guide style found!"

    invoke-direct {v1, v2}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDefaultLineStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    .locals 3

    .line 105
    iget-wide v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_defaultLineStyle:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getStyleById(J)Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object v0

    .line 106
    .local v0, "style":Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    if-eqz v0, :cond_0

    .line 108
    return-object v0

    .line 107
    :cond_0
    new-instance v1, Lorg/apache/poi/POIXMLException;

    const-string v2, "No default line style found!"

    invoke-direct {v1, v2}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDefaultTextStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    .locals 3

    .line 112
    iget-wide v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_defaultTextStyle:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getStyleById(J)Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object v0

    .line 113
    .local v0, "style":Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    if-eqz v0, :cond_0

    .line 115
    return-object v0

    .line 114
    :cond_0
    new-instance v1, Lorg/apache/poi/POIXMLException;

    const-string v2, "No default text style found!"

    invoke-direct {v1, v2}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getStyleById(J)Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    .locals 2
    .param p1, "id"    # J

    .line 86
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_styleSheets:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    return-object v0
.end method

.method public getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentType;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_document:Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentType;

    return-object v0
.end method
