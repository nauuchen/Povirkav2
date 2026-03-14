.class public Lorg/apache/poi/xdgf/usermodel/XDGFMaster;
.super Ljava/lang/Object;
.source "XDGFMaster.java"


# instance fields
.field protected _content:Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;

.field private _master:Lcom/microsoft/schemas/office/visio/x2012/main/MasterType;

.field protected _pageSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/MasterType;Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V
    .locals 2
    .param p1, "master"    # Lcom/microsoft/schemas/office/visio/x2012/main/MasterType;
    .param p2, "content"    # Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;
    .param p3, "document"    # Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;->_pageSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    .line 36
    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;->_master:Lcom/microsoft/schemas/office/visio/x2012/main/MasterType;

    .line 37
    iput-object p2, p0, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;->_content:Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;

    .line 38
    invoke-virtual {p2, p0}, Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;->setMaster(Lorg/apache/poi/xdgf/usermodel/XDGFMaster;)V

    .line 40
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/MasterType;->isSetPageSheet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Lorg/apache/poi/xdgf/usermodel/XDGFPageSheet;

    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/MasterType;->getPageSheet()Lcom/microsoft/schemas/office/visio/x2012/main/PageSheetType;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lorg/apache/poi/xdgf/usermodel/XDGFPageSheet;-><init>(Lcom/microsoft/schemas/office/visio/x2012/main/PageSheetType;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;->_pageSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method public getContent()Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;->_content:Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;

    return-object v0
.end method

.method public getID()J
    .locals 2

    .line 55
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;->_master:Lcom/microsoft/schemas/office/visio/x2012/main/MasterType;

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/MasterType;->getID()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;->_master:Lcom/microsoft/schemas/office/visio/x2012/main/MasterType;

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/MasterType;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageSheet()Lorg/apache/poi/xdgf/usermodel/XDGFSheet;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;->_pageSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    return-object v0
.end method

.method protected getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/MasterType;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 46
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;->_master:Lcom/microsoft/schemas/office/visio/x2012/main/MasterType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Master ID=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;->getID()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;->_content:Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
