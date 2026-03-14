.class public Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;
.super Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;
.source "XDGFMasterContents.java"


# instance fields
.field protected _master:Lorg/apache/poi/xdgf/usermodel/XDGFMaster;


# direct methods
.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V
    .locals 0
    .param p1, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .param p2, "document"    # Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    .line 40
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getMaster()Lorg/apache/poi/xdgf/usermodel/XDGFMaster;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;->_master:Lorg/apache/poi/xdgf/usermodel/XDGFMaster;

    return-object v0
.end method

.method protected onDocumentRead()V
    .locals 2

    .line 49
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/MasterContentsDocument$Factory;->parse(Ljava/io/InputStream;)Lcom/microsoft/schemas/office/visio/x2012/main/MasterContentsDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/MasterContentsDocument;->getMasterContents()Lcom/microsoft/schemas/office/visio/x2012/main/PageContentsType;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;->_pageContents:Lcom/microsoft/schemas/office/visio/x2012/main/PageContentsType;
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/poi/POIXMLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    nop

    .line 56
    :try_start_1
    invoke-super {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->onDocumentRead()V

    .line 60
    nop

    .line 61
    return-void

    .line 58
    :catch_0
    move-exception v0

    goto :goto_0

    .line 52
    :catch_1
    move-exception v0

    .line 53
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 50
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 51
    .local v0, "e":Lorg/apache/xmlbeans/XmlException;
    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catch Lorg/apache/poi/POIXMLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 59
    .local v0, "e":Lorg/apache/poi/POIXMLException;
    :goto_0
    invoke-static {p0, v0}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->wrap(Lorg/apache/poi/POIXMLDocumentPart;Lorg/apache/poi/POIXMLException;)Lorg/apache/poi/POIXMLException;

    move-result-object v1

    throw v1
.end method

.method protected setMaster(Lorg/apache/poi/xdgf/usermodel/XDGFMaster;)V
    .locals 0
    .param p1, "master"    # Lorg/apache/poi/xdgf/usermodel/XDGFMaster;

    .line 68
    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;->_master:Lorg/apache/poi/xdgf/usermodel/XDGFMaster;

    .line 69
    return-void
.end method
