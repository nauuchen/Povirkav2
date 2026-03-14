.class public Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;
.super Ljava/lang/Object;
.source "XSLFTextParagraph.java"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/TextParagraph;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/poi/sl/usermodel/TextParagraph<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextRun;",
        ">;"
    }
.end annotation


# instance fields
.field private final _p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

.field private final _runs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFTextRun;",
            ">;"
        }
    .end annotation
.end field

.field private final _shape:Lorg/apache/poi/xslf/usermodel/XSLFTextShape;


# direct methods
.method constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;Lorg/apache/poi/xslf/usermodel/XSLFTextShape;)V
    .locals 5
    .param p1, "p"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
    .param p2, "shape"    # Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    .line 73
    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_shape:Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    .line 75
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    .line 77
    .local v0, "c":Lorg/apache/xmlbeans/XmlCursor;
    :try_start_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toFirstChild()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 79
    :cond_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    .line 80
    .local v1, "r":Lorg/apache/xmlbeans/XmlObject;
    instance-of v2, v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    if-eqz v2, :cond_1

    .line 81
    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    new-instance v3, Lorg/apache/poi/xslf/usermodel/XSLFLineBreak;

    move-object v4, v1

    check-cast v4, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    invoke-direct {v3, v4, p0}, Lorg/apache/poi/xslf/usermodel/XSLFLineBreak;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 82
    :cond_1
    instance-of v2, v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    if-nez v2, :cond_2

    instance-of v2, v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    if-eqz v2, :cond_3

    .line 83
    :cond_2
    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    new-instance v3, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    invoke-direct {v3, v1, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v1    # "r":Lorg/apache/xmlbeans/XmlObject;
    :cond_3
    :goto_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toNextSibling()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 88
    :cond_4
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 89
    nop

    .line 90
    return-void

    .line 88
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw v1
.end method

.method private static doubleEquals(Ljava/lang/Double;Ljava/lang/Double;)Z
    .locals 1
    .param p0, "d1"    # Ljava/lang/Double;
    .param p1, "d2"    # Ljava/lang/Double;

    .line 925
    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher<",
            "TT;>;)Z"
        }
    .end annotation

    .line 802
    .local p1, "visitor":Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher<TT;>;"
    const/4 v0, 0x0

    .line 803
    .local v0, "ok":Z
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object v1

    .line 804
    .local v1, "shape":Lorg/apache/poi/xslf/usermodel/XSLFTextShape;
    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v2

    .line 806
    .local v2, "sheet":Lorg/apache/poi/xslf/usermodel/XSLFSheet;
    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z

    move-result v0

    .line 807
    :cond_0
    const/4 v3, 0x1

    if-eqz v0, :cond_1

    return v3

    .line 809
    :cond_1
    invoke-virtual {v1, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    move-result v0

    .line 810
    if-eqz v0, :cond_2

    return v3

    .line 813
    :cond_2
    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getCTPlaceholder()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    move-result-object v4

    .line 814
    .local v4, "ph":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;
    if-nez v4, :cond_3

    .line 817
    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSlideShow()Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    move-result-object v5

    .line 818
    .local v5, "ppt":Lorg/apache/poi/xslf/usermodel/XMLSlideShow;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getDefaultParagraphStyle(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v6

    .line 819
    .local v6, "themeProps":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    if-eqz v6, :cond_3

    invoke-virtual {p1, v6}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z

    move-result v0

    .line 821
    .end local v5    # "ppt":Lorg/apache/poi/xslf/usermodel/XMLSlideShow;
    .end local v6    # "themeProps":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    :cond_3
    if-eqz v0, :cond_4

    return v3

    .line 824
    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getDefaultMasterStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v5

    .line 826
    .local v5, "defaultProps":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    if-eqz v5, :cond_5

    invoke-virtual {p1, v5}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z

    move-result v0

    .line 827
    :cond_5
    if-eqz v0, :cond_6

    return v3

    .line 829
    :cond_6
    const/4 v3, 0x0

    return v3
.end method


# virtual methods
.method public addLineBreak()Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
    .locals 5

    .line 147
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFLineBreak;

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewBr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/xslf/usermodel/XSLFLineBreak;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;)V

    .line 148
    .local v0, "run":Lorg/apache/poi/xslf/usermodel/XSLFLineBreak;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFLineBreak;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v2

    .line 149
    .local v2, "brProps":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 151
    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    invoke-virtual {v3, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v1

    .line 152
    .local v1, "prevRun":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    invoke-interface {v2, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 154
    .end local v1    # "prevRun":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    return-object v0
.end method

.method public addNewTextRun()Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
    .locals 4

    .line 133
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewR()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    move-result-object v0

    .line 134
    .local v0, "r":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->addNewRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v1

    .line 135
    .local v1, "rPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    const-string v2, "en-US"

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setLang(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->newTextRun(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;)Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    move-result-object v2

    .line 137
    .local v2, "run":Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    return-object v2
.end method

.method public addTabStop(D)V
    .locals 4
    .param p1, "value"    # D

    .line 528
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    .line 529
    .local v0, "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetTabLst()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getTabLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewTabLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;

    move-result-object v1

    .line 530
    .local v1, "tabStops":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;
    :goto_1
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;->addNewTab()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;

    move-result-object v2

    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;->setPos(I)V

    .line 531
    return-void
.end method

.method clearButKeepProperties()V
    .locals 6

    .line 1020
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object v0

    .line 1021
    .local v0, "thisP":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->sizeOfBrArray()I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_0

    .line 1022
    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->removeBr(I)V

    .line 1021
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1024
    .end local v1    # "i":I
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->sizeOfFldArray()I

    move-result v1

    .restart local v1    # "i":I
    :goto_1
    if-lez v1, :cond_1

    .line 1025
    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->removeFld(I)V

    .line 1024
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1027
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1028
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1029
    .local v1, "size":I
    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    .line 1030
    .local v2, "lastRun":Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v3

    .line 1031
    .local v3, "cpOther":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    if-eqz v3, :cond_3

    .line 1032
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetEndParaRPr()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1033
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->unsetEndParaRPr()V

    .line 1035
    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewEndParaRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v4

    .line 1036
    .local v4, "cp":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    invoke-interface {v4, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 1038
    .end local v4    # "cp":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    :cond_3
    move v4, v1

    .local v4, "i":I
    :goto_2
    if-lez v4, :cond_4

    .line 1039
    add-int/lit8 v5, v4, -0x1

    invoke-interface {v0, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->removeR(I)V

    .line 1038
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 1041
    .end local v4    # "i":I
    :cond_4
    iget-object v4, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1043
    .end local v1    # "size":I
    .end local v2    # "lastRun":Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
    .end local v3    # "cpOther":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    :cond_5
    return-void
.end method

.method copy(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;)V
    .locals 14
    .param p1, "other"    # Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    .line 833
    if-ne p1, p0, :cond_0

    return-void

    .line 835
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object v0

    .line 836
    .local v0, "thisP":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object v1

    .line 838
    .local v1, "otherP":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->unsetPPr()V

    .line 839
    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetEndParaRPr()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->unsetEndParaRPr()V

    .line 841
    :cond_2
    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 842
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->sizeOfBrArray()I

    move-result v2

    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_3

    .line 843
    add-int/lit8 v3, v2, -0x1

    invoke-interface {v0, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->removeBr(I)V

    .line 842
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 845
    .end local v2    # "i":I
    :cond_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->sizeOfRArray()I

    move-result v2

    .restart local v2    # "i":I
    :goto_1
    if-lez v2, :cond_4

    .line 846
    add-int/lit8 v3, v2, -0x1

    invoke-interface {v0, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->removeR(I)V

    .line 845
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 848
    .end local v2    # "i":I
    :cond_4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->sizeOfFldArray()I

    move-result v2

    .restart local v2    # "i":I
    :goto_2
    if-lez v2, :cond_5

    .line 849
    add-int/lit8 v3, v2, -0x1

    invoke-interface {v0, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->removeFld(I)V

    .line 848
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 852
    .end local v2    # "i":I
    :cond_5
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v2

    .line 853
    .local v2, "thisC":Lorg/apache/xmlbeans/XmlCursor;
    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlCursor;->toEndToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    .line 854
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v3

    .line 855
    .local v3, "otherC":Lorg/apache/xmlbeans/XmlCursor;
    invoke-interface {v3, v2}, Lorg/apache/xmlbeans/XmlCursor;->copyXmlContents(Lorg/apache/xmlbeans/XmlCursor;)Z

    .line 856
    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 857
    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 859
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getTextRuns()Ljava/util/List;

    move-result-object v4

    .line 860
    .local v4, "otherRs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xslf/usermodel/XSLFTextRun;>;"
    const/4 v5, 0x0

    .line 861
    .local v5, "i":I
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getRArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    move-result-object v6

    .local v6, "arr$":[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
    array-length v7, v6

    .local v7, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_3
    if-ge v8, v7, :cond_6

    aget-object v9, v6, v8

    .line 862
    .local v9, "rtr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
    invoke-virtual {p0, v9}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->newTextRun(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;)Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    move-result-object v10

    .line 863
    .local v10, "run":Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
    add-int/lit8 v11, v5, 0x1

    .end local v5    # "i":I
    .local v11, "i":I
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    invoke-virtual {v10, v5}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->copy(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;)V

    .line 864
    iget-object v5, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 861
    .end local v9    # "rtr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
    .end local v10    # "run":Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
    add-int/lit8 v8, v8, 0x1

    move v5, v11

    goto :goto_3

    .line 870
    .end local v6    # "arr$":[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
    .end local v7    # "len$":I
    .end local v8    # "i$":I
    .end local v11    # "i":I
    .restart local v5    # "i":I
    :cond_6
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getTextAlign()Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    move-result-object v6

    .line 871
    .local v6, "srcAlign":Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getTextAlign()Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    move-result-object v7

    if-eq v6, v7, :cond_7

    .line 872
    invoke-virtual {p0, v6}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setTextAlign(Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;)V

    .line 875
    :cond_7
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->isBullet()Z

    move-result v7

    .line 876
    .local v7, "isBullet":Z
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->isBullet()Z

    move-result v8

    if-eq v7, v8, :cond_b

    .line 877
    invoke-virtual {p0, v7}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBullet(Z)V

    .line 878
    if-eqz v7, :cond_b

    .line 879
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getBulletFont()Ljava/lang/String;

    move-result-object v8

    .line 880
    .local v8, "buFont":Ljava/lang/String;
    if-eqz v8, :cond_8

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getBulletFont()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 881
    invoke-virtual {p0, v8}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBulletFont(Ljava/lang/String;)V

    .line 883
    :cond_8
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getBulletCharacter()Ljava/lang/String;

    move-result-object v9

    .line 884
    .local v9, "buChar":Ljava/lang/String;
    if-eqz v9, :cond_9

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getBulletCharacter()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 885
    invoke-virtual {p0, v9}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBulletCharacter(Ljava/lang/String;)V

    .line 887
    :cond_9
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getBulletFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v10

    .line 888
    .local v10, "buColor":Lorg/apache/poi/sl/usermodel/PaintStyle;
    if-eqz v10, :cond_a

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getBulletFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 889
    invoke-virtual {p0, v10}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBulletFontColor(Lorg/apache/poi/sl/usermodel/PaintStyle;)V

    .line 891
    :cond_a
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getBulletFontSize()Ljava/lang/Double;

    move-result-object v11

    .line 892
    .local v11, "buSize":Ljava/lang/Double;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getBulletFontSize()Ljava/lang/Double;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->doubleEquals(Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 893
    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-virtual {p0, v12, v13}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBulletFontSize(D)V

    .line 898
    .end local v8    # "buFont":Ljava/lang/String;
    .end local v9    # "buChar":Ljava/lang/String;
    .end local v10    # "buColor":Lorg/apache/poi/sl/usermodel/PaintStyle;
    .end local v11    # "buSize":Ljava/lang/Double;
    :cond_b
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getLeftMargin()Ljava/lang/Double;

    move-result-object v8

    .line 899
    .local v8, "leftMargin":Ljava/lang/Double;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getLeftMargin()Ljava/lang/Double;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->doubleEquals(Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 900
    invoke-virtual {p0, v8}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setLeftMargin(Ljava/lang/Double;)V

    .line 903
    :cond_c
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndent()Ljava/lang/Double;

    move-result-object v9

    .line 904
    .local v9, "indent":Ljava/lang/Double;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndent()Ljava/lang/Double;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->doubleEquals(Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 905
    invoke-virtual {p0, v9}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setIndent(Ljava/lang/Double;)V

    .line 908
    :cond_d
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getSpaceAfter()Ljava/lang/Double;

    move-result-object v10

    .line 909
    .local v10, "spaceAfter":Ljava/lang/Double;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getSpaceAfter()Ljava/lang/Double;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->doubleEquals(Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result v11

    if-nez v11, :cond_e

    .line 910
    invoke-virtual {p0, v10}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setSpaceAfter(Ljava/lang/Double;)V

    .line 913
    :cond_e
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getSpaceBefore()Ljava/lang/Double;

    move-result-object v11

    .line 914
    .local v11, "spaceBefore":Ljava/lang/Double;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getSpaceBefore()Ljava/lang/Double;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->doubleEquals(Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result v12

    if-nez v12, :cond_f

    .line 915
    invoke-virtual {p0, v11}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setSpaceBefore(Ljava/lang/Double;)V

    .line 918
    :cond_f
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getLineSpacing()Ljava/lang/Double;

    move-result-object v12

    .line 919
    .local v12, "lineSpacing":Ljava/lang/Double;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getLineSpacing()Ljava/lang/Double;

    move-result-object v13

    invoke-static {v12, v13}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->doubleEquals(Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result v13

    if-nez v13, :cond_10

    .line 920
    invoke-virtual {p0, v12}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setLineSpacing(Ljava/lang/Double;)V

    .line 922
    :cond_10
    return-void
.end method

.method public getAutoNumberingScheme()Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;
    .locals 2

    .line 365
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$7;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$7;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;I)V

    .line 377
    .local v0, "fetcher":Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher<Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;)Z

    .line 378
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    return-object v1
.end method

.method public getAutoNumberingStartAt()Ljava/lang/Integer;
    .locals 2

    .line 385
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$8;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$8;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;I)V

    .line 396
    .local v0, "fetcher":Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher<Ljava/lang/Integer;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;)Z

    .line 397
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    return-object v1
.end method

.method public getBulletCharacter()Ljava/lang/String;
    .locals 2

    .line 245
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$4;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$4;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;I)V

    .line 254
    .local v0, "fetcher":Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher<Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;)Z

    .line 255
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getBulletFont()Ljava/lang/String;
    .locals 2

    .line 222
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$3;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$3;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;I)V

    .line 231
    .local v0, "fetcher":Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher<Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;)Z

    .line 232
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getBulletFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 4

    .line 270
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v0

    .line 271
    .local v0, "theme":Lorg/apache/poi/xslf/usermodel/XSLFTheme;
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$5;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v2

    invoke-direct {v1, p0, v2, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$5;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;ILorg/apache/poi/xslf/usermodel/XSLFTheme;)V

    .line 281
    .local v1, "fetcher":Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher<Ljava/awt/Color;>;"
    invoke-direct {p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;)Z

    .line 282
    invoke-virtual {v1}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/awt/Color;

    .line 283
    .local v2, "col":Ljava/awt/Color;
    if-nez v2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lorg/apache/poi/sl/draw/DrawPaint;->createSolidPaint(Ljava/awt/Color;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object v3

    :goto_0
    return-object v3
.end method

.method public getBulletFontSize()Ljava/lang/Double;
    .locals 2

    .line 322
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$6;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$6;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;I)V

    .line 335
    .local v0, "fetcher":Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher<Ljava/lang/Double;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;)Z

    .line 336
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    return-object v1
.end method

.method public getBulletStyle()Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;
    .locals 1

    .line 948
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->isBullet()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 949
    :cond_0
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$18;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$18;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;)V

    return-object v0
.end method

.method public getDefaultFontFamily()Ljava/lang/String;
    .locals 2

    .line 943
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Arial"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getFontFamily()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDefaultFontSize()Ljava/lang/Double;
    .locals 5

    .line 930
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getEndParaRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    .line 931
    .local v0, "endPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSz()Z

    move-result v1

    if-nez v1, :cond_1

    .line 933
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getDefaultMasterStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v1

    .line 934
    .local v1, "masterStyle":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    if-eqz v1, :cond_1

    .line 935
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getDefRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    .line 938
    .end local v1    # "masterStyle":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    :cond_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSz()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getSz()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    goto :goto_1

    :cond_3
    :goto_0
    const-wide/high16 v1, 0x4028000000000000L    # 12.0

    :goto_1
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1
.end method

.method getDefaultMasterStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    .locals 14

    const-string v0, "http://schemas.openxmlformats.org/presentationml/2006/main"

    .line 753
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_shape:Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getCTPlaceholder()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    move-result-object v1

    .line 755
    .local v1, "ph":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;
    const/4 v2, -0x1

    if-nez v1, :cond_0

    const/4 v3, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->getType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->intValue()I

    move-result v3

    :goto_0
    const/4 v4, 0x0

    if-eq v3, v2, :cond_2

    const/4 v2, 0x1

    if-eq v3, v2, :cond_1

    const/4 v2, 0x3

    if-eq v3, v2, :cond_1

    const/4 v2, 0x5

    if-eq v3, v2, :cond_2

    const/4 v2, 0x6

    if-eq v3, v2, :cond_2

    const/4 v2, 0x7

    if-eq v3, v2, :cond_2

    move-object v2, v4

    .line 767
    .local v2, "defaultStyleSelector":Ljava/lang/String;
    const-string v2, "bodyStyle"

    goto :goto_1

    .line 758
    .end local v2    # "defaultStyleSelector":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "titleStyle"

    .line 759
    .restart local v2    # "defaultStyleSelector":Ljava/lang/String;
    goto :goto_1

    .line 755
    .end local v2    # "defaultStyleSelector":Ljava/lang/String;
    :cond_2
    move-object v2, v4

    .line 764
    .restart local v2    # "defaultStyleSelector":Ljava/lang/String;
    const-string v2, "otherStyle"

    .line 765
    nop

    .line 770
    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v3

    .line 773
    .local v3, "level":I
    const-string v5, "http://schemas.openxmlformats.org/presentationml/2006/main"

    .line 774
    .local v5, "nsPML":Ljava/lang/String;
    const-string v6, "http://schemas.openxmlformats.org/drawingml/2006/main"

    .line 775
    .local v6, "nsDML":Ljava/lang/String;
    iget-object v7, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_shape:Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    invoke-virtual {v7}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v7

    .line 776
    .local v7, "masterSheet":Lorg/apache/poi/xslf/usermodel/XSLFSheet;
    move-object v8, v7

    .local v8, "m":Lorg/apache/poi/xslf/usermodel/XSLFSheet;
    :goto_2
    if-eqz v8, :cond_7

    .line 777
    move-object v7, v8

    .line 778
    invoke-virtual {v7}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v9

    .line 779
    .local v9, "xo":Lorg/apache/xmlbeans/XmlObject;
    invoke-interface {v9}, Lorg/apache/xmlbeans/XmlObject;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v10

    .line 781
    .local v10, "cur":Lorg/apache/xmlbeans/XmlCursor;
    :try_start_0
    invoke-interface {v10}, Lorg/apache/xmlbeans/XmlCursor;->push()V

    .line 782
    const-string/jumbo v11, "txStyles"

    invoke-interface {v10, v0, v11}, Lorg/apache/xmlbeans/XmlCursor;->toChild(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10, v0, v2}, Lorg/apache/xmlbeans/XmlCursor;->toChild(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    :cond_3
    invoke-interface {v10}, Lorg/apache/xmlbeans/XmlCursor;->pop()Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "notesStyle"

    invoke-interface {v10, v0, v11}, Lorg/apache/xmlbeans/XmlCursor;->toChild(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 784
    :cond_4
    :goto_3
    if-ltz v3, :cond_6

    .line 785
    invoke-interface {v10}, Lorg/apache/xmlbeans/XmlCursor;->push()V

    .line 786
    const-string v11, "http://schemas.openxmlformats.org/drawingml/2006/main"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "lvl"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "pPr"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lorg/apache/xmlbeans/XmlCursor;->toChild(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 787
    invoke-interface {v10}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 794
    invoke-interface {v10}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object v0

    .line 789
    :cond_5
    :try_start_1
    invoke-interface {v10}, Lorg/apache/xmlbeans/XmlCursor;->pop()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 790
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 794
    :cond_6
    invoke-interface {v10}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 795
    nop

    .line 776
    .end local v9    # "xo":Lorg/apache/xmlbeans/XmlObject;
    .end local v10    # "cur":Lorg/apache/xmlbeans/XmlCursor;
    invoke-virtual {v8}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getMasterSheet()Lorg/apache/poi/sl/usermodel/MasterSheet;

    move-result-object v9

    move-object v8, v9

    check-cast v8, Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    goto :goto_2

    .line 794
    .restart local v9    # "xo":Lorg/apache/xmlbeans/XmlObject;
    .restart local v10    # "cur":Lorg/apache/xmlbeans/XmlCursor;
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw v0

    .line 798
    .end local v8    # "m":Lorg/apache/poi/xslf/usermodel/XSLFSheet;
    .end local v9    # "xo":Lorg/apache/xmlbeans/XmlObject;
    .end local v10    # "cur":Lorg/apache/xmlbeans/XmlCursor;
    :cond_7
    return-object v4
.end method

.method public getDefaultTabSize()Ljava/lang/Double;
    .locals 2

    .line 494
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$12;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$12;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;I)V

    .line 504
    .local v0, "fetcher":Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher<Ljava/lang/Double;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;)Z

    .line 505
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    return-object v1
.end method

.method public getFontAlign()Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;
    .locals 2

    .line 186
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$2;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$2;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;I)V

    .line 196
    .local v0, "fetcher":Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher<Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;)Z

    .line 197
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;

    return-object v1
.end method

.method public getIndent()Ljava/lang/Double;
    .locals 2

    .line 415
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$9;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$9;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;I)V

    .line 424
    .local v0, "fetcher":Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher<Ljava/lang/Double;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;)Z

    .line 426
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    return-object v1
.end method

.method public getIndentLevel()I
    .locals 2

    .line 675
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    .line 676
    .local v0, "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetLvl()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getLvl()I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public getLeftMargin()Ljava/lang/Double;
    .locals 2

    .line 446
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$10;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$10;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;I)V

    .line 456
    .local v0, "fetcher":Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher<Ljava/lang/Double;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;)Z

    .line 458
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    return-object v1
.end method

.method public getLineSpacing()Ljava/lang/Double;
    .locals 9

    .line 553
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$14;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$14;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;I)V

    .line 565
    .local v0, "fetcher":Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher<Ljava/lang/Double;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;)Z

    .line 567
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 568
    .local v1, "lnSpc":Ljava/lang/Double;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_0

    .line 570
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->getNormAutofit()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;

    move-result-object v2

    .line 571
    .local v2, "normAutofit":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;
    if-eqz v2, :cond_0

    .line 572
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;->getLnSpcReduction()I

    move-result v5

    int-to-double v5, v5

    const-wide v7, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v5, v7

    sub-double/2addr v3, v5

    .line 573
    .local v3, "scale":D
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    mul-double v5, v5, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 577
    .end local v2    # "normAutofit":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;
    .end local v3    # "scale":D
    :cond_0
    return-object v1
.end method

.method public bridge synthetic getParentShape()Lorg/apache/poi/sl/usermodel/TextShape;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object v0

    return-object v0
.end method

.method public getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_shape:Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    return-object v0
.end method

.method getRenderableText()Ljava/lang/String;
    .locals 4

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v0, "out":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    .line 103
    .local v2, "r":Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRenderableText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 105
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRightMargin()Ljava/lang/Double;
    .locals 2

    .line 478
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$11;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$11;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;I)V

    .line 488
    .local v0, "fetcher":Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher<Ljava/lang/Double;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;)Z

    .line 489
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    return-object v1
.end method

.method public getSpaceAfter()Ljava/lang/Double;
    .locals 2

    .line 651
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$16;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$16;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;I)V

    .line 663
    .local v0, "fetcher":Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher<Ljava/lang/Double;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;)Z

    .line 664
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    return-object v1
.end method

.method public getSpaceBefore()Ljava/lang/Double;
    .locals 2

    .line 607
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$15;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$15;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;I)V

    .line 619
    .local v0, "fetcher":Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher<Ljava/lang/Double;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;)Z

    .line 621
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    return-object v1
.end method

.method public getTabStop(I)D
    .locals 3
    .param p1, "idx"    # I

    .line 509
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$13;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$13;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;II)V

    .line 523
    .local v0, "fetcher":Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher<Ljava/lang/Double;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;)Z

    .line 524
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .local v0, "out":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    .line 95
    .local v2, "r":Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRawText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 97
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTextAlign()Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;
    .locals 2

    .line 160
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$1;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$1;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;I)V

    .line 170
    .local v0, "fetcher":Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher<Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;)Z

    .line 171
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    return-object v1
.end method

.method public getTextRuns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFTextRun;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    return-object v0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    return-object v0
.end method

.method public isBullet()Z
    .locals 2

    .line 683
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$17;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$17;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;I)V

    .line 696
    .local v0, "fetcher":Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher<Ljava/lang/Boolean;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;)Z

    .line 697
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1
.end method

.method public isHeaderOrFooter()Z
    .locals 3

    .line 1047
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_shape:Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getCTPlaceholder()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    move-result-object v0

    .line 1048
    .local v0, "ph":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->getType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->intValue()I

    move-result v1

    .line 1049
    .local v1, "phId":I
    :goto_0
    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 1056
    const/4 v2, 0x0

    return v2

    .line 1054
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xslf/usermodel/XSLFTextRun;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected newTextRun(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;)Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
    .locals 1
    .param p1, "r"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    .line 1070
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    invoke-direct {v0, p1, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;)V

    return-object v0
.end method

.method public setBullet(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .line 705
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->isBullet()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 707
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    .line 708
    .local v0, "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    :goto_0
    if-eqz p1, :cond_2

    .line 709
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v1

    const-string v2, "Arial"

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setTypeface(Ljava/lang/String;)V

    .line 710
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuChar()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;

    move-result-object v1

    const-string/jumbo v2, "\u2022"

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;->setChar(Ljava/lang/String;)V

    goto :goto_1

    .line 712
    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFont()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuFont()V

    .line 713
    :cond_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuChar()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuChar()V

    .line 714
    :cond_4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuAutoNum()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuAutoNum()V

    .line 715
    :cond_5
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuBlip()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuBlip()V

    .line 716
    :cond_6
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuClr()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuClr()V

    .line 717
    :cond_7
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuClrTx()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuClrTx()V

    .line 718
    :cond_8
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFont()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuFont()V

    .line 719
    :cond_9
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFontTx()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuFontTx()V

    .line 720
    :cond_a
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPct()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuSzPct()V

    .line 721
    :cond_b
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPts()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuSzPts()V

    .line 722
    :cond_c
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzTx()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuSzTx()V

    .line 723
    :cond_d
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuNone()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNoBullet;

    .line 725
    :goto_1
    return-void
.end method

.method public setBulletAutoNumber(Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;I)V
    .locals 3
    .param p1, "scheme"    # Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;
    .param p2, "startAt"    # I

    .line 735
    const/4 v0, 0x1

    if-lt p2, v0, :cond_2

    .line 736
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    .line 737
    .local v0, "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuAutoNum()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuAutoNum()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuAutoNum()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;

    move-result-object v1

    .line 738
    .local v1, "lst":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;
    :goto_1
    iget v2, p1, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->ooxmlId:I

    invoke-static {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAutonumberScheme$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAutonumberScheme$Enum;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;->setType(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAutonumberScheme$Enum;)V

    .line 739
    invoke-interface {v1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;->setStartAt(I)V

    .line 740
    return-void

    .line 735
    .end local v0    # "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    .end local v1    # "lst":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Start Number must be greater or equal that 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBulletCharacter(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    .line 260
    .local v0, "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuChar()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuChar()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuChar()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;

    move-result-object v1

    .line 261
    .local v1, "c":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;
    :goto_1
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;->setChar(Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public setBulletFont(Ljava/lang/String;)V
    .locals 2
    .param p1, "typeface"    # Ljava/lang/String;

    .line 236
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    .line 237
    .local v0, "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFont()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v1

    .line 238
    .local v1, "font":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
    :goto_1
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setTypeface(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public setBulletFontColor(Ljava/awt/Color;)V
    .locals 1
    .param p1, "color"    # Ljava/awt/Color;

    .line 287
    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawPaint;->createSolidPaint(Ljava/awt/Color;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBulletFontColor(Lorg/apache/poi/sl/usermodel/PaintStyle;)V

    .line 288
    return-void
.end method

.method public setBulletFontColor(Lorg/apache/poi/sl/usermodel/PaintStyle;)V
    .locals 8
    .param p1, "color"    # Lorg/apache/poi/sl/usermodel/PaintStyle;

    .line 297
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    if-eqz v0, :cond_3

    .line 302
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    .line 303
    .local v0, "sp":Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;
    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;->getSolidColor()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/sl/draw/DrawPaint;->applyColorTransform(Lorg/apache/poi/sl/usermodel/ColorStyle;)Ljava/awt/Color;

    move-result-object v1

    .line 305
    .local v1, "col":Ljava/awt/Color;
    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v2

    .line 306
    .local v2, "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    :goto_0
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuClr()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object v3

    .line 307
    .local v3, "c":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
    :goto_1
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->isSetSrgbClr()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->getSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object v4

    goto :goto_2

    :cond_2
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->addNewSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object v4

    .line 308
    .local v4, "clr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;
    :goto_2
    const/4 v5, 0x3

    new-array v5, v5, [B

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/awt/Color;->getRed()I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v1}, Ljava/awt/Color;->getGreen()I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v1}, Ljava/awt/Color;->getBlue()I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    invoke-interface {v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;->setVal([B)V

    .line 309
    return-void

    .line 298
    .end local v0    # "sp":Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;
    .end local v1    # "col":Ljava/awt/Color;
    .end local v2    # "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    .end local v3    # "c":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
    .end local v4    # "clr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Currently XSLF only supports SolidPaint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBulletFontSize(D)V
    .locals 6
    .param p1, "bulletSize"    # D

    .line 348
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    .line 350
    .local v0, "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    :goto_0
    const-wide/16 v1, 0x0

    cmpl-double v3, p1, v1

    if-ltz v3, :cond_3

    .line 351
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPct()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuSzPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuSzPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;

    move-result-object v1

    .line 352
    .local v1, "pt":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;
    :goto_1
    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v2, v2, p1

    double-to-int v2, v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;->setVal(I)V

    .line 353
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPts()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuSzPts()V

    .line 354
    .end local v1    # "pt":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;
    :cond_2
    goto :goto_3

    .line 355
    :cond_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPts()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuSzPts()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;

    move-result-object v1

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuSzPts()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;

    move-result-object v1

    .line 356
    .local v1, "pt":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;
    :goto_2
    neg-double v2, p1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v4

    double-to-int v2, v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;->setVal(I)V

    .line 357
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPct()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuSzPct()V

    .line 359
    .end local v1    # "pt":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;
    :cond_5
    :goto_3
    return-void
.end method

.method public varargs setBulletStyle([Ljava/lang/Object;)V
    .locals 7
    .param p1, "styles"    # [Ljava/lang/Object;

    .line 995
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 996
    invoke-virtual {p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBullet(Z)V

    goto :goto_2

    .line 998
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBullet(Z)V

    .line 999
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_6

    aget-object v4, v0, v3

    .line 1000
    .local v4, "ostyle":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/Number;

    if-eqz v5, :cond_1

    .line 1001
    move-object v5, v4

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBulletFontSize(D)V

    goto :goto_1

    .line 1002
    :cond_1
    instance-of v5, v4, Ljava/awt/Color;

    if-eqz v5, :cond_2

    .line 1003
    move-object v5, v4

    check-cast v5, Ljava/awt/Color;

    invoke-virtual {p0, v5}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBulletFontColor(Ljava/awt/Color;)V

    goto :goto_1

    .line 1004
    :cond_2
    instance-of v5, v4, Ljava/lang/Character;

    if-eqz v5, :cond_3

    .line 1005
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBulletCharacter(Ljava/lang/String;)V

    goto :goto_1

    .line 1006
    :cond_3
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 1007
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBulletFont(Ljava/lang/String;)V

    goto :goto_1

    .line 1008
    :cond_4
    instance-of v5, v4, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    if-eqz v5, :cond_5

    .line 1009
    move-object v5, v4

    check-cast v5, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    invoke-virtual {p0, v5, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBulletAutoNumber(Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;I)V

    .line 999
    .end local v4    # "ostyle":Ljava/lang/Object;
    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1013
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_6
    :goto_2
    return-void
.end method

.method public setFontAlign(Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;)V
    .locals 2
    .param p1, "align"    # Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;

    .line 208
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    .line 209
    .local v0, "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    :goto_0
    if-nez p1, :cond_1

    .line 210
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetFontAlgn()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetFontAlgn()V

    goto :goto_1

    .line 212
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setFontAlgn(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;)V

    .line 214
    :cond_2
    :goto_1
    return-void
.end method

.method public setIndent(Ljava/lang/Double;)V
    .locals 3
    .param p1, "indent"    # Ljava/lang/Double;

    .line 403
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    .line 405
    .local v0, "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    :goto_0
    if-nez p1, :cond_2

    .line 406
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetIndent()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetIndent()V

    goto :goto_1

    .line 408
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setIndent(I)V

    .line 410
    :cond_3
    :goto_1
    return-void
.end method

.method public setIndentLevel(I)V
    .locals 1
    .param p1, "level"    # I

    .line 669
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    .line 670
    .local v0, "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    :goto_0
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setLvl(I)V

    .line 671
    return-void
.end method

.method public setLeftMargin(Ljava/lang/Double;)V
    .locals 3
    .param p1, "leftMargin"    # Ljava/lang/Double;

    .line 431
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    .line 433
    .local v0, "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    :goto_0
    if-nez p1, :cond_2

    .line 434
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetMarL()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetMarL()V

    goto :goto_1

    .line 436
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setMarL(I)V

    .line 439
    :cond_3
    :goto_1
    return-void
.end method

.method public setLineSpacing(Ljava/lang/Double;)V
    .locals 7
    .param p1, "lineSpacing"    # Ljava/lang/Double;

    .line 535
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 536
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    .line 537
    .local v0, "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    :goto_0
    if-nez p1, :cond_2

    .line 538
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetLnSpc()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetLnSpc()V

    goto :goto_4

    .line 540
    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetLnSpc()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getLnSpc()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewLnSpc()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    move-result-object v1

    .line 541
    .local v1, "spc":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_5

    .line 542
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->isSetSpcPct()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->getSpcPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;

    move-result-object v2

    goto :goto_2

    :cond_4
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->addNewSpcPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;

    move-result-object v2

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double v3, v3, v5

    double-to-int v3, v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;->setVal(I)V

    .line 543
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->isSetSpcPts()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->unsetSpcPts()V

    goto :goto_4

    .line 545
    :cond_5
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->isSetSpcPts()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->getSpcPts()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;

    move-result-object v2

    goto :goto_3

    :cond_6
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->addNewSpcPts()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;

    move-result-object v2

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    neg-double v3, v3

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double v3, v3, v5

    double-to-int v3, v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;->setVal(I)V

    .line 546
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->isSetSpcPct()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->unsetSpcPct()V

    .line 549
    .end local v1    # "spc":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;
    :cond_7
    :goto_4
    return-void
.end method

.method public setRightMargin(Ljava/lang/Double;)V
    .locals 3
    .param p1, "rightMargin"    # Ljava/lang/Double;

    .line 463
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 464
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    .line 465
    .local v0, "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    :goto_0
    if-nez p1, :cond_2

    .line 466
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetMarR()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetMarR()V

    goto :goto_1

    .line 468
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setMarR(I)V

    .line 470
    :cond_3
    :goto_1
    return-void
.end method

.method public setSpaceAfter(Ljava/lang/Double;)V
    .locals 7
    .param p1, "spaceAfter"    # Ljava/lang/Double;

    .line 626
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-nez v0, :cond_0

    .line 627
    return-void

    .line 631
    :cond_0
    if-nez p1, :cond_2

    .line 632
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetSpcAft()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 633
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetSpcAft()V

    .line 635
    :cond_1
    return-void

    .line 638
    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    .line 639
    .local v0, "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    :goto_0
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    move-result-object v1

    .line 641
    .local v1, "spc":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_4

    .line 642
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->addNewSpcPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double v3, v3, v5

    double-to-int v3, v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;->setVal(I)V

    goto :goto_1

    .line 644
    :cond_4
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->addNewSpcPts()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    neg-double v3, v3

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double v3, v3, v5

    double-to-int v3, v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;->setVal(I)V

    .line 646
    :goto_1
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setSpcAft(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;)V

    .line 647
    return-void
.end method

.method public setSpaceBefore(Ljava/lang/Double;)V
    .locals 7
    .param p1, "spaceBefore"    # Ljava/lang/Double;

    .line 582
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-nez v0, :cond_0

    .line 583
    return-void

    .line 587
    :cond_0
    if-nez p1, :cond_2

    .line 588
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetSpcBef()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetSpcBef()V

    .line 591
    :cond_1
    return-void

    .line 594
    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    .line 595
    .local v0, "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    :goto_0
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    move-result-object v1

    .line 597
    .local v1, "spc":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_4

    .line 598
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->addNewSpcPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double v3, v3, v5

    double-to-int v3, v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;->setVal(I)V

    goto :goto_1

    .line 600
    :cond_4
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->addNewSpcPts()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    neg-double v3, v3

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double v3, v3, v5

    double-to-int v3, v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;->setVal(I)V

    .line 602
    :goto_1
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setSpcBef(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;)V

    .line 603
    return-void
.end method

.method public setTextAlign(Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;)V
    .locals 2
    .param p1, "align"    # Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    .line 176
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    .line 177
    .local v0, "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    :goto_0
    if-nez p1, :cond_1

    .line 178
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetAlgn()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetAlgn()V

    goto :goto_1

    .line 180
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setAlgn(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;)V

    .line 182
    :cond_2
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
