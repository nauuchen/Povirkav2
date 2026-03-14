.class public Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
.super Lorg/apache/poi/xdgf/usermodel/XDGFSheet;
.source "XDGFStyleSheet.java"


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/StyleSheetType;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V
    .locals 0
    .param p1, "styleSheet"    # Lcom/microsoft/schemas/office/visio/x2012/main/StyleSheetType;
    .param p2, "document"    # Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    .line 27
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;-><init>(Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V

    .line 28
    return-void
.end method


# virtual methods
.method public bridge synthetic getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;->getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/StyleSheetType;

    move-result-object v0

    return-object v0
.end method

.method public getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/StyleSheetType;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 33
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;->_sheet:Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;

    check-cast v0, Lcom/microsoft/schemas/office/visio/x2012/main/StyleSheetType;

    return-object v0
.end method
