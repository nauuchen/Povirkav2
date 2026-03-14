.class public abstract Lorg/apache/poi/xwpf/usermodel/AbstractXWPFSDT;
.super Ljava/lang/Object;
.source "AbstractXWPFSDT.java"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/ISDTContents;


# instance fields
.field private final part:Lorg/apache/poi/xwpf/usermodel/IBody;

.field private final tag:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;Lorg/apache/poi/xwpf/usermodel/IBody;)V
    .locals 5
    .param p1, "pr"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;
    .param p2, "part"    # Lorg/apache/poi/xwpf/usermodel/IBody;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, ""

    if-nez p1, :cond_0

    .line 37
    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/AbstractXWPFSDT;->title:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/AbstractXWPFSDT;->tag:Ljava/lang/String;

    goto :goto_1

    .line 40
    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;->getAliasArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v1

    .line 41
    .local v1, "aliases":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    .line 42
    aget-object v3, v1, v2

    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->getVal()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/xwpf/usermodel/AbstractXWPFSDT;->title:Ljava/lang/String;

    goto :goto_0

    .line 44
    :cond_1
    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/AbstractXWPFSDT;->title:Ljava/lang/String;

    .line 46
    :goto_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;->getTagArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v3

    .line 47
    .local v3, "tags":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
    if-eqz v3, :cond_2

    array-length v4, v3

    if-lez v4, :cond_2

    .line 48
    aget-object v0, v3, v2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->getVal()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/AbstractXWPFSDT;->tag:Ljava/lang/String;

    goto :goto_1

    .line 50
    :cond_2
    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/AbstractXWPFSDT;->tag:Ljava/lang/String;

    .line 53
    .end local v1    # "aliases":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
    .end local v3    # "tags":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
    :goto_1
    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/AbstractXWPFSDT;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    .line 55
    return-void
.end method


# virtual methods
.method public getBody()Lorg/apache/poi/xwpf/usermodel/IBody;
    .locals 1

    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getContent()Lorg/apache/poi/xwpf/usermodel/ISDTContent;
.end method

.method public getDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/AbstractXWPFSDT;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    invoke-interface {v0}, Lorg/apache/poi/xwpf/usermodel/IBody;->getXWPFDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object v0

    return-object v0
.end method

.method public getElementType()Lorg/apache/poi/xwpf/usermodel/BodyElementType;
    .locals 1

    .line 101
    sget-object v0, Lorg/apache/poi/xwpf/usermodel/BodyElementType;->CONTENTCONTROL:Lorg/apache/poi/xwpf/usermodel/BodyElementType;

    return-object v0
.end method

.method public getPart()Lorg/apache/poi/POIXMLDocumentPart;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/AbstractXWPFSDT;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    invoke-interface {v0}, Lorg/apache/poi/xwpf/usermodel/IBody;->getPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    return-object v0
.end method

.method public getPartType()Lorg/apache/poi/xwpf/usermodel/BodyType;
    .locals 1

    .line 94
    sget-object v0, Lorg/apache/poi/xwpf/usermodel/BodyType;->CONTENTCONTROL:Lorg/apache/poi/xwpf/usermodel/BodyType;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/AbstractXWPFSDT;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/AbstractXWPFSDT;->title:Ljava/lang/String;

    return-object v0
.end method
