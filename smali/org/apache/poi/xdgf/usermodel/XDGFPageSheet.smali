.class public Lorg/apache/poi/xdgf/usermodel/XDGFPageSheet;
.super Lorg/apache/poi/xdgf/usermodel/XDGFSheet;
.source "XDGFPageSheet.java"


# instance fields
.field _pageSheet:Lcom/microsoft/schemas/office/visio/x2012/main/PageSheetType;


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/PageSheetType;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V
    .locals 0
    .param p1, "sheet"    # Lcom/microsoft/schemas/office/visio/x2012/main/PageSheetType;
    .param p2, "document"    # Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    .line 27
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;-><init>(Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V

    .line 28
    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPageSheet;->_pageSheet:Lcom/microsoft/schemas/office/visio/x2012/main/PageSheetType;

    .line 29
    return-void
.end method


# virtual methods
.method getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/PageSheetType;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPageSheet;->_pageSheet:Lcom/microsoft/schemas/office/visio/x2012/main/PageSheetType;

    return-object v0
.end method

.method bridge synthetic getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFPageSheet;->getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/PageSheetType;

    move-result-object v0

    return-object v0
.end method
