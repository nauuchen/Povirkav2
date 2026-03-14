.class public Lorg/apache/poi/xwpf/usermodel/XWPFSDT;
.super Lorg/apache/poi/xwpf/usermodel/AbstractXWPFSDT;
.source "XWPFSDT.java"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/IBodyElement;
.implements Lorg/apache/poi/xwpf/usermodel/IRunBody;
.implements Lorg/apache/poi/xwpf/usermodel/ISDTContents;
.implements Lorg/apache/poi/xwpf/usermodel/IRunElement;


# instance fields
.field private final content:Lorg/apache/poi/xwpf/usermodel/ISDTContent;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;Lorg/apache/poi/xwpf/usermodel/IBody;)V
    .locals 2
    .param p1, "block"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;
    .param p2, "part"    # Lorg/apache/poi/xwpf/usermodel/IBody;

    .line 38
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;->getSdtPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/xwpf/usermodel/AbstractXWPFSDT;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 39
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;->getSdtContent()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentBlock;

    move-result-object v1

    invoke-direct {v0, v1, p2, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentBlock;Lorg/apache/poi/xwpf/usermodel/IBody;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->content:Lorg/apache/poi/xwpf/usermodel/ISDTContent;

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;Lorg/apache/poi/xwpf/usermodel/IBody;)V
    .locals 2
    .param p1, "sdtRun"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;
    .param p2, "part"    # Lorg/apache/poi/xwpf/usermodel/IBody;

    .line 33
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;->getSdtPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/xwpf/usermodel/AbstractXWPFSDT;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 34
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;->getSdtContent()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentRun;

    move-result-object v1

    invoke-direct {v0, v1, p2, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentRun;Lorg/apache/poi/xwpf/usermodel/IBody;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->content:Lorg/apache/poi/xwpf/usermodel/ISDTContent;

    .line 35
    return-void
.end method


# virtual methods
.method public getContent()Lorg/apache/poi/xwpf/usermodel/ISDTContent;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->content:Lorg/apache/poi/xwpf/usermodel/ISDTContent;

    return-object v0
.end method
