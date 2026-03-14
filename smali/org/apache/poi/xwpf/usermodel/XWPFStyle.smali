.class public Lorg/apache/poi/xwpf/usermodel/XWPFStyle;
.super Ljava/lang/Object;
.source "XWPFStyle.java"


# instance fields
.field private ctStyle:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;

.field protected styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;)V
    .locals 1
    .param p1, "style"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;Lorg/apache/poi/xwpf/usermodel/XWPFStyles;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;Lorg/apache/poi/xwpf/usermodel/XWPFStyles;)V
    .locals 0
    .param p1, "style"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;
    .param p2, "styles"    # Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->ctStyle:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;

    .line 48
    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    .line 49
    return-void
.end method


# virtual methods
.method public getBasisStyleID()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->ctStyle:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;->getBasedOn()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->ctStyle:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;->getBasedOn()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->getVal()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 118
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCTStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->ctStyle:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;

    return-object v0
.end method

.method public getLinkStyleID()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->ctStyle:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;->getLink()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->ctStyle:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;->getLink()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->getVal()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 129
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->ctStyle:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;->isSetName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->ctStyle:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;->getName()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->getVal()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 145
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextStyleID()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->ctStyle:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;->getNext()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->ctStyle:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;->getNext()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->getVal()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 139
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStyleId()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->ctStyle:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;->getStyleId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStyles()Lorg/apache/poi/xwpf/usermodel/XWPFStyles;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    return-object v0
.end method

.method public getType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleType$Enum;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->ctStyle:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;->getType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleType$Enum;

    move-result-object v0

    return-object v0
.end method

.method public hasSameName(Lorg/apache/poi/xwpf/usermodel/XWPFStyle;)Z
    .locals 3
    .param p1, "compStyle"    # Lorg/apache/poi/xwpf/usermodel/XWPFStyle;

    .line 154
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->getCTStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;

    move-result-object v0

    .line 155
    .local v0, "ctCompStyle":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;->getName()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->getVal()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->ctStyle:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;->getName()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->getVal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public setStyle(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;)V
    .locals 0
    .param p1, "style"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;

    .line 93
    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->ctStyle:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;

    .line 94
    return-void
.end method

.method public setStyleId(Ljava/lang/String;)V
    .locals 1
    .param p1, "styleId"    # Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->ctStyle:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;->setStyleId(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public setType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleType$Enum;)V
    .locals 1
    .param p1, "type"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleType$Enum;

    .line 84
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->ctStyle:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;->setType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleType$Enum;)V

    .line 85
    return-void
.end method
