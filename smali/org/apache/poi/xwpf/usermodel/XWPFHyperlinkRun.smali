.class public Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;
.super Lorg/apache/poi/xwpf/usermodel/XWPFRun;
.source "XWPFHyperlinkRun.java"


# instance fields
.field private hyperlink:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V
    .locals 0
    .param p1, "hyperlink"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;
    .param p2, "run"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
    .param p3, "p"    # Lorg/apache/poi/xwpf/usermodel/IRunBody;

    .line 31
    invoke-direct {p0, p2, p3}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    .line 32
    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;->hyperlink:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;

    .line 33
    return-void
.end method


# virtual methods
.method public getAnchor()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;->hyperlink:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;->getAnchor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCTHyperlink()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 37
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;->hyperlink:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;

    return-object v0
.end method

.method public getHyperlink(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;)Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;
    .locals 2
    .param p1, "document"    # Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    .line 60
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;->getHyperlinkId()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "id":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 62
    const/4 v1, 0x0

    return-object v1

    .line 64
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getHyperlinkByID(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;

    move-result-object v1

    return-object v1
.end method

.method public getHyperlinkId()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;->hyperlink:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setHyperlinkId(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;->hyperlink:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;->setId(Ljava/lang/String;)V

    .line 53
    return-void
.end method
