.class public Lorg/apache/poi/xwpf/usermodel/XWPFPicture;
.super Ljava/lang/Object;
.source "XWPFPicture.java"


# instance fields
.field private ctPic:Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;

.field private description:Ljava/lang/String;

.field private run:Lorg/apache/poi/xwpf/usermodel/XWPFRun;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;Lorg/apache/poi/xwpf/usermodel/XWPFRun;)V
    .locals 1
    .param p1, "ctPic"    # Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;
    .param p2, "run"    # Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicture;->run:Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    .line 36
    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicture;->ctPic:Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;

    .line 37
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;->getNvPicPr()Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPictureNonVisual;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPictureNonVisual;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->getDescr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicture;->description:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getCTPicture()Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicture;->ctPic:Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicture;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getPictureData()Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    .locals 6

    .line 63
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicture;->ctPic:Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v0

    .line 65
    .local v0, "blipProps":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->isSetBlip()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->getEmbed()Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "blipId":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicture;->run:Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getParent()Lorg/apache/poi/xwpf/usermodel/IRunBody;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/poi/xwpf/usermodel/IRunBody;->getPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v3

    .line 72
    .local v3, "part":Lorg/apache/poi/POIXMLDocumentPart;
    if-eqz v3, :cond_1

    .line 73
    invoke-virtual {v3, v2}, Lorg/apache/poi/POIXMLDocumentPart;->getRelationById(Ljava/lang/String;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v4

    .line 74
    .local v4, "relatedPart":Lorg/apache/poi/POIXMLDocumentPart;
    instance-of v5, v4, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    if-eqz v5, :cond_1

    .line 75
    move-object v1, v4

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    return-object v1

    .line 78
    .end local v4    # "relatedPart":Lorg/apache/poi/POIXMLDocumentPart;
    :cond_1
    return-object v1

    .line 67
    .end local v2    # "blipId":Ljava/lang/String;
    .end local v3    # "part":Lorg/apache/poi/POIXMLDocumentPart;
    :cond_2
    :goto_0
    return-object v1
.end method

.method public setPictureReference(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)V
    .locals 2
    .param p1, "rel"    # Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 46
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicture;->ctPic:Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->setEmbed(Ljava/lang/String;)V

    .line 47
    return-void
.end method
