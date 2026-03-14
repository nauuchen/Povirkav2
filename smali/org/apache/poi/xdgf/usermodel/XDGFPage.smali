.class public Lorg/apache/poi/xdgf/usermodel/XDGFPage;
.super Ljava/lang/Object;
.source "XDGFPage.java"


# instance fields
.field protected _content:Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;

.field private _page:Lcom/microsoft/schemas/office/visio/x2012/main/PageType;

.field protected _pageSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

.field protected _pages:Lorg/apache/poi/xdgf/usermodel/XDGFPages;


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/PageType;Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;Lorg/apache/poi/xdgf/usermodel/XDGFPages;)V
    .locals 2
    .param p1, "page"    # Lcom/microsoft/schemas/office/visio/x2012/main/PageType;
    .param p2, "content"    # Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;
    .param p3, "document"    # Lorg/apache/poi/xdgf/usermodel/XDGFDocument;
    .param p4, "pages"    # Lorg/apache/poi/xdgf/usermodel/XDGFPages;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->_pageSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    .line 41
    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->_page:Lcom/microsoft/schemas/office/visio/x2012/main/PageType;

    .line 42
    iput-object p2, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->_content:Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;

    .line 43
    iput-object p4, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->_pages:Lorg/apache/poi/xdgf/usermodel/XDGFPages;

    .line 44
    invoke-virtual {p2, p0}, Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;->setPage(Lorg/apache/poi/xdgf/usermodel/XDGFPage;)V

    .line 46
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/PageType;->isSetPageSheet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Lorg/apache/poi/xdgf/usermodel/XDGFPageSheet;

    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/PageType;->getPageSheet()Lcom/microsoft/schemas/office/visio/x2012/main/PageSheetType;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lorg/apache/poi/xdgf/usermodel/XDGFPageSheet;-><init>(Lcom/microsoft/schemas/office/visio/x2012/main/PageSheetType;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->_pageSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public getBoundingBox()Ljava/awt/geom/Rectangle2D;
    .locals 12

    .line 112
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->getPageSize()Lorg/apache/poi/xdgf/geom/Dimension2dDouble;

    move-result-object v0

    .line 113
    .local v0, "sz":Lorg/apache/poi/xdgf/geom/Dimension2dDouble;
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->getPageOffset()Ljava/awt/geom/Point2D$Double;

    move-result-object v1

    .line 115
    .local v1, "offset":Ljava/awt/geom/Point2D$Double;
    new-instance v11, Ljava/awt/geom/Rectangle2D$Double;

    invoke-virtual {v1}, Ljava/awt/geom/Point2D$Double;->getX()D

    move-result-wide v2

    neg-double v3, v2

    invoke-virtual {v1}, Ljava/awt/geom/Point2D$Double;->getY()D

    move-result-wide v5

    neg-double v5, v5

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/geom/Dimension2dDouble;->getWidth()D

    move-result-wide v7

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/geom/Dimension2dDouble;->getHeight()D

    move-result-wide v9

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v11
.end method

.method public getContent()Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->_content:Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;

    return-object v0
.end method

.method public getID()J
    .locals 2

    .line 56
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->_page:Lcom/microsoft/schemas/office/visio/x2012/main/PageType;

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/PageType;->getID()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->_page:Lcom/microsoft/schemas/office/visio/x2012/main/PageType;

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/PageType;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageNumber()J
    .locals 2

    .line 72
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->_pages:Lorg/apache/poi/xdgf/usermodel/XDGFPages;

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFPages;->getPageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getPageOffset()Ljava/awt/geom/Point2D$Double;
    .locals 7

    .line 93
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->_pageSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    const-string v1, "XRulerOrigin"

    invoke-virtual {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getCell(Ljava/lang/String;)Lorg/apache/poi/xdgf/usermodel/XDGFCell;

    move-result-object v0

    .line 94
    .local v0, "xoffcell":Lorg/apache/poi/xdgf/usermodel/XDGFCell;
    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->_pageSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    const-string v2, "YRulerOrigin"

    invoke-virtual {v1, v2}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getCell(Ljava/lang/String;)Lorg/apache/poi/xdgf/usermodel/XDGFCell;

    move-result-object v1

    .line 96
    .local v1, "yoffcell":Lorg/apache/poi/xdgf/usermodel/XDGFCell;
    const-wide/16 v2, 0x0

    .line 97
    .local v2, "xoffset":D
    const-wide/16 v4, 0x0

    .line 99
    .local v4, "yoffset":D
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 102
    :cond_0
    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 105
    :cond_1
    new-instance v6, Ljava/awt/geom/Point2D$Double;

    invoke-direct {v6, v2, v3, v4, v5}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    return-object v6
.end method

.method public getPageSheet()Lorg/apache/poi/xdgf/usermodel/XDGFSheet;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->_pageSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    return-object v0
.end method

.method public getPageSize()Lorg/apache/poi/xdgf/geom/Dimension2dDouble;
    .locals 7

    .line 79
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->_pageSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    const-string v1, "PageWidth"

    invoke-virtual {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getCell(Ljava/lang/String;)Lorg/apache/poi/xdgf/usermodel/XDGFCell;

    move-result-object v0

    .line 80
    .local v0, "w":Lorg/apache/poi/xdgf/usermodel/XDGFCell;
    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->_pageSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    const-string v2, "PageHeight"

    invoke-virtual {v1, v2}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getCell(Ljava/lang/String;)Lorg/apache/poi/xdgf/usermodel/XDGFCell;

    move-result-object v1

    .line 82
    .local v1, "h":Lorg/apache/poi/xdgf/usermodel/XDGFCell;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 85
    new-instance v2, Lorg/apache/poi/xdgf/geom/Dimension2dDouble;

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/poi/xdgf/geom/Dimension2dDouble;-><init>(DD)V

    return-object v2

    .line 83
    :cond_0
    new-instance v2, Lorg/apache/poi/POIXMLException;

    const-string v3, "Cannot determine page size"

    invoke-direct {v2, v3}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/PageType;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->_page:Lcom/microsoft/schemas/office/visio/x2012/main/PageType;

    return-object v0
.end method
