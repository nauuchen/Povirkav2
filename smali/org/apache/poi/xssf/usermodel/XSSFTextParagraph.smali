.class public Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;
.super Ljava/lang/Object;
.source "XSSFTextParagraph.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/poi/xssf/usermodel/XSSFTextRun;",
        ">;"
    }
.end annotation


# instance fields
.field private final _p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

.field private final _runs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFTextRun;",
            ">;"
        }
    .end annotation
.end field

.field private final _shape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;


# direct methods
.method constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)V
    .locals 8
    .param p1, "p"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
    .param p2, "ctShape"    # Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    .line 44
    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_shape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_runs:Ljava/util/List;

    .line 47
    const-string v0, "*"

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/xmlbeans/XmlObject;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 48
    .local v3, "ch":Lorg/apache/xmlbeans/XmlObject;
    instance-of v4, v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    if-eqz v4, :cond_0

    .line 49
    move-object v4, v3

    check-cast v4, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    .line 50
    .local v4, "r":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_runs:Ljava/util/List;

    new-instance v6, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;

    invoke-direct {v6, v4, p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .end local v4    # "r":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
    goto :goto_2

    :cond_0
    instance-of v4, v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    if-eqz v4, :cond_1

    .line 52
    move-object v4, v3

    check-cast v4, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    .line 53
    .local v4, "br":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    move-result-object v5

    .line 54
    .local v5, "r":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->setRPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    .line 55
    const-string v6, "\n"

    invoke-interface {v5, v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->setT(Ljava/lang/String;)V

    .line 56
    iget-object v6, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_runs:Ljava/util/List;

    new-instance v7, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;

    invoke-direct {v7, v5, p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v4    # "br":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;
    .end local v5    # "r":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
    goto :goto_1

    .line 57
    :cond_1
    instance-of v4, v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    if-eqz v4, :cond_2

    .line 58
    move-object v4, v3

    check-cast v4, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    .line 59
    .local v4, "f":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    move-result-object v5

    .line 60
    .restart local v5    # "r":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->setRPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    .line 61
    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->getT()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->setT(Ljava/lang/String;)V

    .line 62
    iget-object v6, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_runs:Ljava/util/List;

    new-instance v7, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;

    invoke-direct {v7, v5, p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 57
    .end local v4    # "f":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;
    .end local v5    # "r":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
    :cond_2
    :goto_1
    nop

    .line 47
    .end local v3    # "ch":Lorg/apache/xmlbeans/XmlObject;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    .end local v0    # "arr$":[Lorg/apache/xmlbeans/XmlObject;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_3
    return-void
.end method

.method private fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z
    .locals 2
    .param p1, "visitor"    # Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;

    .line 856
    const/4 v0, 0x0

    .line 858
    .local v0, "ok":Z
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z

    move-result v0

    .line 860
    :cond_0
    if-nez v0, :cond_1

    .line 861
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_shape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-virtual {p1, v1}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->fetch(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)Z

    move-result v0

    .line 864
    :cond_1
    return v0
.end method


# virtual methods
.method public addLineBreak()Lorg/apache/poi/xssf/usermodel/XSSFTextRun;
    .locals 5

    .line 113
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewBr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    move-result-object v0

    .line 114
    .local v0, "br":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;->addNewRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v1

    .line 115
    .local v1, "brProps":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 117
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v2

    .line 118
    .local v2, "prevRun":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 120
    .end local v2    # "prevRun":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    :cond_0
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    move-result-object v2

    .line 121
    .local v2, "r":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
    invoke-interface {v2, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->setRPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    .line 122
    const-string v3, "\n"

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->setT(Ljava/lang/String;)V

    .line 123
    new-instance v3, Lorg/apache/poi/xssf/usermodel/XSSFLineBreak;

    invoke-direct {v3, v2, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFLineBreak;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    .line 124
    .local v3, "run":Lorg/apache/poi/xssf/usermodel/XSSFTextRun;
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    return-object v3
.end method

.method public addNewTextRun()Lorg/apache/poi/xssf/usermodel/XSSFTextRun;
    .locals 4

    .line 99
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewR()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    move-result-object v0

    .line 100
    .local v0, "r":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->addNewRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v1

    .line 101
    .local v1, "rPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    const-string v2, "en-US"

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setLang(Ljava/lang/String;)V

    .line 102
    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;

    invoke-direct {v2, v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;)V

    .line 103
    .local v2, "run":Lorg/apache/poi/xssf/usermodel/XSSFTextRun;
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    return-object v2
.end method

.method public addTabStop(D)V
    .locals 4
    .param p1, "value"    # D

    .line 492
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    .line 493
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

    .line 494
    .local v1, "tabStops":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;
    :goto_1
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;->addNewTab()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;

    move-result-object v2

    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;->setPos(I)V

    .line 495
    return-void
.end method

.method public getBulletAutoNumberScheme()Lorg/apache/poi/xssf/usermodel/ListAutoNumber;
    .locals 2

    .line 838
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$18;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$18;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    .line 847
    .local v0, "fetcher":Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher<Lorg/apache/poi/xssf/usermodel/ListAutoNumber;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    .line 850
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/apache/poi/xssf/usermodel/ListAutoNumber;->ARABIC_PLAIN:Lorg/apache/poi/xssf/usermodel/ListAutoNumber;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/ListAutoNumber;

    :goto_0
    return-object v1
.end method

.method public getBulletAutoNumberStart()I
    .locals 2

    .line 821
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$17;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$17;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    .line 830
    .local v0, "fetcher":Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher<Ljava/lang/Integer;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    .line 831
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getBulletCharacter()Ljava/lang/String;
    .locals 2

    .line 231
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$4;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$4;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    .line 240
    .local v0, "fetcher":Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher<Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    .line 241
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getBulletFont()Ljava/lang/String;
    .locals 2

    .line 208
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$3;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$3;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    .line 217
    .local v0, "fetcher":Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher<Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    .line 218
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getBulletFontColor()Ljava/awt/Color;
    .locals 2

    .line 256
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$5;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$5;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    .line 269
    .local v0, "fetcher":Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher<Ljava/awt/Color;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    .line 270
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/awt/Color;

    return-object v1
.end method

.method public getBulletFontSize()D
    .locals 3

    .line 296
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$6;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$6;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    .line 309
    .local v0, "fetcher":Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher<Ljava/lang/Double;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    .line 310
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public getDefaultTabSize()D
    .locals 3

    .line 453
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$10;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$10;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    .line 463
    .local v0, "fetcher":Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher<Ljava/lang/Double;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    .line 464
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public getIndent()D
    .locals 3

    .line 358
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$7;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$7;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    .line 367
    .local v0, "fetcher":Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher<Ljava/lang/Double;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    .line 369
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public getLeftMargin()D
    .locals 3

    .line 396
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$8;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$8;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    .line 406
    .local v0, "fetcher":Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher<Ljava/lang/Double;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    .line 408
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public getLevel()I
    .locals 2

    .line 699
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    .line 700
    .local v0, "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 702
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getLvl()I

    move-result v1

    return v1
.end method

.method public getLineSpacing()D
    .locals 10

    .line 537
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$12;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$12;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    .line 549
    .local v0, "fetcher":Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher<Ljava/lang/Double;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    .line 551
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 552
    .local v1, "lnSpc":D
    :goto_0
    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_1

    .line 554
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_shape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->getNormAutofit()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;

    move-result-object v3

    .line 555
    .local v3, "normAutofit":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;
    if-eqz v3, :cond_1

    .line 556
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;->getLnSpcReduction()I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v6, v8

    sub-double/2addr v4, v6

    .line 557
    .local v4, "scale":D
    mul-double v1, v1, v4

    .line 561
    .end local v3    # "normAutofit":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;
    .end local v4    # "scale":D
    :cond_1
    return-wide v1
.end method

.method public getParentShape()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 82
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_shape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    return-object v0
.end method

.method public getRightMargin()D
    .locals 3

    .line 433
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$9;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$9;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    .line 443
    .local v0, "fetcher":Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher<Ljava/lang/Double;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    .line 445
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public getSpaceAfter()D
    .locals 3

    .line 658
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$14;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$14;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    .line 670
    .local v0, "fetcher":Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher<Ljava/lang/Double;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    .line 671
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public getSpaceBefore()D
    .locals 3

    .line 602
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$13;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$13;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    .line 614
    .local v0, "fetcher":Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher<Ljava/lang/Double;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    .line 616
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 617
    .local v1, "spcBef":D
    :goto_0
    return-wide v1
.end method

.method public getTabStop(I)D
    .locals 3
    .param p1, "idx"    # I

    .line 468
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$11;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$11;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;II)V

    .line 482
    .local v0, "fetcher":Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher<Ljava/lang/Double;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    .line 483
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v0, "out":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;

    .line 70
    .local v2, "r":Lorg/apache/poi/xssf/usermodel/XSSFTextRun;
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 72
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lorg/apache/poi/xssf/usermodel/XSSFTextRun;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTextAlign()Lorg/apache/poi/xssf/usermodel/TextAlign;
    .locals 2

    .line 135
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$1;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$1;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    .line 145
    .local v0, "fetcher":Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher<Lorg/apache/poi/xssf/usermodel/TextAlign;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    .line 146
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/apache/poi/xssf/usermodel/TextAlign;->LEFT:Lorg/apache/poi/xssf/usermodel/TextAlign;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/TextAlign;

    :goto_0
    return-object v1
.end method

.method public getTextFontAlign()Lorg/apache/poi/xssf/usermodel/TextFontAlign;
    .locals 2

    .line 173
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$2;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$2;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    .line 183
    .local v0, "fetcher":Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher<Lorg/apache/poi/xssf/usermodel/TextFontAlign;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    .line 184
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/apache/poi/xssf/usermodel/TextFontAlign;->BASELINE:Lorg/apache/poi/xssf/usermodel/TextFontAlign;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/TextFontAlign;

    :goto_0
    return-object v1
.end method

.method public getTextRuns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFTextRun;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_runs:Ljava/util/List;

    return-object v0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    return-object v0
.end method

.method public isBullet()Z
    .locals 2

    .line 710
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$15;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$15;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    .line 729
    .local v0, "fetcher":Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher<Ljava/lang/Boolean;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    .line 730
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1
.end method

.method public isBulletAutoNumber()Z
    .locals 2

    .line 804
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$16;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$16;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    .line 813
    .local v0, "fetcher":Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher<Ljava/lang/Boolean;>;"
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    .line 814
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xssf/usermodel/XSSFTextRun;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setBullet(Lorg/apache/poi/xssf/usermodel/ListAutoNumber;)V
    .locals 4
    .param p1, "scheme"    # Lorg/apache/poi/xssf/usermodel/ListAutoNumber;

    .line 789
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    .line 790
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

    .line 791
    .local v1, "lst":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;
    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/ListAutoNumber;->ordinal()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAutonumberScheme$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAutonumberScheme$Enum;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;->setType(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAutonumberScheme$Enum;)V

    .line 793
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFont()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v2

    const-string v3, "Arial"

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setTypeface(Ljava/lang/String;)V

    .line 794
    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuNone()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuNone()V

    .line 796
    :cond_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuBlip()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuBlip()V

    .line 797
    :cond_4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuChar()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuChar()V

    .line 798
    :cond_5
    return-void
.end method

.method public setBullet(Lorg/apache/poi/xssf/usermodel/ListAutoNumber;I)V
    .locals 4
    .param p1, "scheme"    # Lorg/apache/poi/xssf/usermodel/ListAutoNumber;
    .param p2, "startAt"    # I

    .line 770
    const/4 v0, 0x1

    if-lt p2, v0, :cond_6

    .line 771
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v1

    .line 772
    .local v1, "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    :goto_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuAutoNum()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuAutoNum()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuAutoNum()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;

    move-result-object v2

    .line 773
    .local v2, "lst":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;
    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/ListAutoNumber;->ordinal()I

    move-result v3

    add-int/2addr v3, v0

    invoke-static {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAutonumberScheme$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAutonumberScheme$Enum;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;->setType(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAutonumberScheme$Enum;)V

    .line 774
    invoke-interface {v2, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;->setStartAt(I)V

    .line 776
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFont()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v0

    const-string v3, "Arial"

    invoke-interface {v0, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setTypeface(Ljava/lang/String;)V

    .line 777
    :cond_2
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuNone()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuNone()V

    .line 779
    :cond_3
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuBlip()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuBlip()V

    .line 780
    :cond_4
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuChar()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuChar()V

    .line 781
    :cond_5
    return-void

    .line 770
    .end local v1    # "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    .end local v2    # "lst":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Start Number must be greater or equal that 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBullet(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .line 739
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->isBullet()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 741
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    .line 742
    .local v0, "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    :goto_0
    if-nez p1, :cond_b

    .line 743
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuNone()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNoBullet;

    .line 745
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuAutoNum()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuAutoNum()V

    .line 746
    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuBlip()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuBlip()V

    .line 747
    :cond_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuChar()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuChar()V

    .line 748
    :cond_4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuClr()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuClr()V

    .line 749
    :cond_5
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuClrTx()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuClrTx()V

    .line 750
    :cond_6
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFont()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuFont()V

    .line 751
    :cond_7
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFontTx()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuFontTx()V

    .line 752
    :cond_8
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPct()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuSzPct()V

    .line 753
    :cond_9
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPts()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuSzPts()V

    .line 754
    :cond_a
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzTx()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuSzTx()V

    goto :goto_1

    .line 756
    :cond_b
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuNone()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuNone()V

    .line 757
    :cond_c
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFont()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v1

    const-string v2, "Arial"

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setTypeface(Ljava/lang/String;)V

    .line 758
    :cond_d
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuAutoNum()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuChar()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;

    move-result-object v1

    const-string/jumbo v2, "\u2022"

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;->setChar(Ljava/lang/String;)V

    .line 760
    :cond_e
    :goto_1
    return-void
.end method

.method public setBulletCharacter(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 245
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    .line 246
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

    .line 247
    .local v1, "c":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;
    :goto_1
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;->setChar(Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public setBulletFont(Ljava/lang/String;)V
    .locals 2
    .param p1, "typeface"    # Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    .line 223
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

    .line 224
    .local v1, "font":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
    :goto_1
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setTypeface(Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public setBulletFontColor(Ljava/awt/Color;)V
    .locals 6
    .param p1, "color"    # Ljava/awt/Color;

    .line 279
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    .line 280
    .local v0, "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuClr()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object v1

    .line 281
    .local v1, "c":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
    :goto_1
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->isSetSrgbClr()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->getSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object v2

    goto :goto_2

    :cond_2
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->addNewSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object v2

    .line 282
    .local v2, "clr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;
    :goto_2
    const/4 v3, 0x3

    new-array v3, v3, [B

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/awt/Color;->getRed()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/awt/Color;->getGreen()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p1}, Ljava/awt/Color;->getBlue()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;->setVal([B)V

    .line 283
    return-void
.end method

.method public setBulletFontSize(D)V
    .locals 6
    .param p1, "bulletSize"    # D

    .line 322
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    .line 324
    .local v0, "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    :goto_0
    const-wide/16 v1, 0x0

    cmpl-double v3, p1, v1

    if-ltz v3, :cond_3

    .line 326
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPct()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuSzPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuSzPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;

    move-result-object v1

    .line 327
    .local v1, "pt":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;
    :goto_1
    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v2, v2, p1

    double-to-int v2, v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;->setVal(I)V

    .line 329
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPts()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuSzPts()V

    .line 330
    .end local v1    # "pt":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;
    :cond_2
    goto :goto_3

    .line 332
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

    .line 333
    .local v1, "pt":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;
    :goto_2
    neg-double v2, p1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v4

    double-to-int v2, v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;->setVal(I)V

    .line 335
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPct()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuSzPct()V

    .line 337
    .end local v1    # "pt":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;
    :cond_5
    :goto_3
    return-void
.end method

.method public setIndent(D)V
    .locals 4
    .param p1, "value"    # D

    .line 345
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    .line 346
    .local v0, "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    :goto_0
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    cmpl-double v3, p1, v1

    if-nez v3, :cond_1

    .line 347
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetIndent()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetIndent()V

    goto :goto_1

    .line 349
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setIndent(I)V

    .line 351
    :cond_2
    :goto_1
    return-void
.end method

.method public setLeftMargin(D)V
    .locals 4
    .param p1, "value"    # D

    .line 382
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    .line 383
    .local v0, "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    :goto_0
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    cmpl-double v3, p1, v1

    if-nez v3, :cond_1

    .line 384
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetMarL()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetMarL()V

    goto :goto_1

    .line 386
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setMarL(I)V

    .line 389
    :cond_2
    :goto_1
    return-void
.end method

.method public setLevel(I)V
    .locals 1
    .param p1, "level"    # I

    .line 688
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    .line 690
    .local v0, "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    :goto_0
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setLvl(I)V

    .line 691
    return-void
.end method

.method public setLineSpacing(D)V
    .locals 7
    .param p1, "linespacing"    # D

    .line 519
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    .line 520
    .local v0, "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    :goto_0
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    move-result-object v1

    .line 521
    .local v1, "spc":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;
    const-wide/16 v2, 0x0

    cmpl-double v4, p1, v2

    if-ltz v4, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->addNewSpcPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;

    move-result-object v2

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double v3, v3, p1

    double-to-int v3, v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;->setVal(I)V

    goto :goto_1

    .line 522
    :cond_1
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->addNewSpcPts()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;

    move-result-object v2

    neg-double v3, p1

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double v3, v3, v5

    double-to-int v3, v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;->setVal(I)V

    .line 523
    :goto_1
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setLnSpc(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;)V

    .line 524
    return-void
.end method

.method public setRightMargin(D)V
    .locals 4
    .param p1, "value"    # D

    .line 419
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    .line 420
    .local v0, "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    :goto_0
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    cmpl-double v3, p1, v1

    if-nez v3, :cond_1

    .line 421
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetMarR()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetMarR()V

    goto :goto_1

    .line 423
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setMarR(I)V

    .line 426
    :cond_2
    :goto_1
    return-void
.end method

.method public setSpaceAfter(D)V
    .locals 7
    .param p1, "spaceAfter"    # D

    .line 640
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    .line 641
    .local v0, "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    :goto_0
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    move-result-object v1

    .line 642
    .local v1, "spc":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;
    const-wide/16 v2, 0x0

    cmpl-double v4, p1, v2

    if-ltz v4, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->addNewSpcPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;

    move-result-object v2

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double v3, v3, p1

    double-to-int v3, v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;->setVal(I)V

    goto :goto_1

    .line 643
    :cond_1
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->addNewSpcPts()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;

    move-result-object v2

    neg-double v3, p1

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double v3, v3, v5

    double-to-int v3, v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;->setVal(I)V

    .line 644
    :goto_1
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setSpcAft(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;)V

    .line 645
    return-void
.end method

.method public setSpaceBefore(D)V
    .locals 7
    .param p1, "spaceBefore"    # D

    .line 584
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    .line 585
    .local v0, "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    :goto_0
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    move-result-object v1

    .line 586
    .local v1, "spc":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;
    const-wide/16 v2, 0x0

    cmpl-double v4, p1, v2

    if-ltz v4, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->addNewSpcPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;

    move-result-object v2

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double v3, v3, p1

    double-to-int v3, v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;->setVal(I)V

    goto :goto_1

    .line 587
    :cond_1
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->addNewSpcPts()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;

    move-result-object v2

    neg-double v3, p1

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double v3, v3, v5

    double-to-int v3, v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;->setVal(I)V

    .line 588
    :goto_1
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setSpcBef(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;)V

    .line 589
    return-void
.end method

.method public setTextAlign(Lorg/apache/poi/xssf/usermodel/TextAlign;)V
    .locals 2
    .param p1, "align"    # Lorg/apache/poi/xssf/usermodel/TextAlign;

    .line 157
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    .line 158
    .local v0, "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    :goto_0
    if-nez p1, :cond_1

    .line 159
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetAlgn()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetAlgn()V

    goto :goto_1

    .line 161
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/TextAlign;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setAlgn(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;)V

    .line 163
    :cond_2
    :goto_1
    return-void
.end method

.method public setTextFontAlign(Lorg/apache/poi/xssf/usermodel/TextFontAlign;)V
    .locals 2
    .param p1, "align"    # Lorg/apache/poi/xssf/usermodel/TextFontAlign;

    .line 196
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    .line 197
    .local v0, "pr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    :goto_0
    if-nez p1, :cond_1

    .line 198
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetFontAlgn()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetFontAlgn()V

    goto :goto_1

    .line 200
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/TextFontAlign;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setFontAlgn(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;)V

    .line 202
    :cond_2
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 869
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

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
