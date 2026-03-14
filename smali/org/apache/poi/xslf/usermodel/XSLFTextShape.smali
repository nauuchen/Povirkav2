.class public abstract Lorg/apache/poi/xslf/usermodel/XSLFTextShape;
.super Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;
.source "XSLFTextShape.java"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/TextShape;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;",
        "Lorg/apache/poi/sl/usermodel/TextShape<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final _paragraphs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 54
    return-void
.end method

.method constructor <init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V
    .locals 7
    .param p1, "shape"    # Lorg/apache/xmlbeans/XmlObject;
    .param p2, "sheet"    # Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    .line 60
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->_paragraphs:Ljava/util/List;

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBody(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    .line 64
    .local v0, "txBody":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getPArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object v1

    .local v1, "arr$":[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 66
    .local v4, "p":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
    iget-object v5, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->_paragraphs:Ljava/util/List;

    invoke-virtual {p0, v4}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->newTextParagraph(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;)Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .end local v4    # "p":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69
    .end local v1    # "arr$":[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    return-void
.end method


# virtual methods
.method public addNewTextParagraph()Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;
    .locals 4

    .line 192
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBody(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v1

    .line 194
    .local v1, "txBody":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
    if-nez v1, :cond_0

    .line 195
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBody(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v1

    .line 196
    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getPArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object v2

    .line 197
    .local v2, "p":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
    invoke-interface {v2, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->removeR(I)V

    goto :goto_0

    .line 199
    .end local v2    # "p":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
    :cond_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->addNewP()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object v2

    .line 201
    .restart local v2    # "p":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
    :goto_0
    invoke-virtual {p0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->newTextParagraph(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;)Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    move-result-object v0

    .line 202
    .local v0, "paragraph":Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;
    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->_paragraphs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    return-object v0
.end method

.method public bridge synthetic appendText(Ljava/lang/String;Z)Lorg/apache/poi/sl/usermodel/TextRun;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Z

    .line 54
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->appendText(Ljava/lang/String;Z)Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    move-result-object v0

    return-object v0
.end method

.method public appendText(Ljava/lang/String;Z)Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
    .locals 16
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "newParagraph"    # Z

    .line 116
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    .line 117
    const/4 v2, 0x0

    return-object v2

    .line 121
    :cond_0
    const/4 v2, 0x0

    .line 122
    .local v2, "otherPPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    const/4 v3, 0x0

    .line 126
    .local v3, "otherRPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    iget-object v4, v0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->_paragraphs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 127
    const/4 v4, 0x0

    .line 128
    .local v4, "firstPara":Z
    const/4 v6, 0x0

    .local v6, "para":Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;
    goto :goto_0

    .line 130
    .end local v4    # "firstPara":Z
    .end local v6    # "para":Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;
    :cond_1
    xor-int/lit8 v4, p2, 0x1

    .line 131
    .restart local v4    # "firstPara":Z
    iget-object v6, v0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->_paragraphs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    .line 132
    .restart local v6    # "para":Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;
    invoke-virtual {v6}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object v7

    .line 133
    .local v7, "ctp":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v2

    .line 134
    invoke-virtual {v6}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getTextRuns()Ljava/util/List;

    move-result-object v8

    .line 135
    .local v8, "runs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xslf/usermodel/XSLFTextRun;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 136
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    .line 137
    .local v9, "r0":Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v3

    .line 138
    if-nez v3, :cond_2

    .line 139
    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getEndParaRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v3

    .line 147
    .end local v7    # "ctp":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
    .end local v8    # "runs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xslf/usermodel/XSLFTextRun;>;"
    .end local v9    # "r0":Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
    :cond_2
    :goto_0
    const/4 v7, 0x0

    .line 148
    .local v7, "run":Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
    const-string v8, "\\r\\n?|\\n"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .local v8, "arr$":[Ljava/lang/String;
    array-length v9, v8

    .local v9, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_1
    if-ge v10, v9, :cond_8

    aget-object v11, v8, v10

    .line 149
    .local v11, "lineTxt":Ljava/lang/String;
    if-nez v4, :cond_4

    .line 150
    if-eqz v6, :cond_3

    .line 151
    invoke-virtual {v6}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object v12

    .line 152
    .local v12, "ctp":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
    invoke-interface {v12}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getEndParaRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v13

    .line 153
    .local v13, "unexpectedRPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    if-eqz v13, :cond_3

    if-eq v13, v3, :cond_3

    .line 154
    invoke-interface {v12}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->unsetEndParaRPr()V

    .line 157
    .end local v12    # "ctp":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
    .end local v13    # "unexpectedRPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->addNewTextParagraph()Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    move-result-object v6

    .line 158
    if-eqz v2, :cond_4

    .line 159
    invoke-virtual {v6}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object v12

    invoke-interface {v12, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->setPPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V

    .line 162
    :cond_4
    const/4 v12, 0x1

    .line 163
    .local v12, "firstRun":Z
    const-string v13, "[\u000b]"

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .local v13, "arr$":[Ljava/lang/String;
    array-length v14, v13

    .local v14, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_2
    if-ge v15, v14, :cond_7

    aget-object v5, v13, v15

    .line 164
    .local v5, "runText":Ljava/lang/String;
    if-nez v12, :cond_5

    .line 165
    invoke-virtual {v6}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->addLineBreak()Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    .line 167
    :cond_5
    invoke-virtual {v6}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->addNewTextRun()Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    move-result-object v7

    .line 168
    invoke-virtual {v7, v5}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setText(Ljava/lang/String;)V

    .line 169
    if-eqz v3, :cond_6

    .line 170
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v1

    invoke-interface {v1, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    goto :goto_3

    .line 169
    :cond_6
    const/4 v0, 0x1

    .line 172
    :goto_3
    const/4 v12, 0x0

    .line 163
    .end local v5    # "runText":Ljava/lang/String;
    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_2

    :cond_7
    const/4 v0, 0x1

    .line 174
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v14    # "len$":I
    .end local v15    # "i$":I
    const/4 v4, 0x0

    .line 148
    .end local v11    # "lineTxt":Ljava/lang/String;
    .end local v12    # "firstRun":Z
    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_1

    .line 177
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v9    # "len$":I
    .end local v10    # "i$":I
    :cond_8
    if-eqz v7, :cond_9

    .line 178
    return-object v7

    .line 177
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public clearText()V
    .locals 2

    .line 92
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->_paragraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBody(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    .line 94
    .local v0, "txBody":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->setPArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;)V

    .line 95
    return-void
.end method

.method copy(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V
    .locals 16
    .param p1, "other"    # Lorg/apache/poi/xslf/usermodel/XSLFShape;

    .line 640
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->copy(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V

    .line 642
    move-object/from16 v1, p1

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    .line 643
    .local v1, "otherTS":Lorg/apache/poi/xslf/usermodel/XSLFTextShape;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBody(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v2

    .line 644
    .local v2, "otherTB":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBody(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v3

    .line 645
    .local v3, "thisTB":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
    if-nez v2, :cond_0

    .line 646
    return-void

    .line 649
    :cond_0
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v4

    check-cast v4, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->setBodyPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;)V

    .line 651
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->isSetLstStyle()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 652
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->unsetLstStyle()V

    .line 654
    :cond_1
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->isSetLstStyle()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 655
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object v4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v4

    check-cast v4, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->setLstStyle(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;)V

    .line 658
    :cond_2
    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getWordWrap()Z

    move-result v4

    .line 659
    .local v4, "srcWordWrap":Z
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getWordWrap()Z

    move-result v5

    if-eq v4, v5, :cond_3

    .line 660
    invoke-virtual {v0, v4}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->setWordWrap(Z)V

    .line 663
    :cond_3
    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getLeftInset()D

    move-result-wide v5

    .line 664
    .local v5, "leftInset":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getLeftInset()D

    move-result-wide v7

    cmpl-double v9, v5, v7

    if-eqz v9, :cond_4

    .line 665
    invoke-virtual {v0, v5, v6}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->setLeftInset(D)V

    .line 667
    :cond_4
    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getRightInset()D

    move-result-wide v7

    .line 668
    .local v7, "rightInset":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getRightInset()D

    move-result-wide v9

    cmpl-double v11, v7, v9

    if-eqz v11, :cond_5

    .line 669
    invoke-virtual {v0, v7, v8}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->setRightInset(D)V

    .line 671
    :cond_5
    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTopInset()D

    move-result-wide v9

    .line 672
    .local v9, "topInset":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTopInset()D

    move-result-wide v11

    cmpl-double v13, v9, v11

    if-eqz v13, :cond_6

    .line 673
    invoke-virtual {v0, v9, v10}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->setTopInset(D)V

    .line 675
    :cond_6
    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getBottomInset()D

    move-result-wide v11

    .line 676
    .local v11, "bottomInset":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getBottomInset()D

    move-result-wide v13

    cmpl-double v15, v11, v13

    if-eqz v15, :cond_7

    .line 677
    invoke-virtual {v0, v11, v12}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->setBottomInset(D)V

    .line 680
    :cond_7
    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getVerticalAlignment()Lorg/apache/poi/sl/usermodel/VerticalAlignment;

    move-result-object v13

    .line 681
    .local v13, "vAlign":Lorg/apache/poi/sl/usermodel/VerticalAlignment;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getVerticalAlignment()Lorg/apache/poi/sl/usermodel/VerticalAlignment;

    move-result-object v14

    if-eq v13, v14, :cond_8

    .line 682
    invoke-virtual {v0, v13}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->setVerticalAlignment(Lorg/apache/poi/sl/usermodel/VerticalAlignment;)V

    .line 685
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->clearText()V

    .line 687
    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextParagraphs()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    .line 688
    .local v15, "srcP":Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->addNewTextParagraph()Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    move-result-object v0

    .line 689
    .local v0, "tgtP":Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;
    invoke-virtual {v0, v15}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->copy(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;)V

    .line 690
    .end local v0    # "tgtP":Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;
    .end local v15    # "srcP":Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;
    move-object/from16 v0, p0

    goto :goto_0

    .line 691
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_9
    return-void
.end method

.method public getBottomInset()D
    .locals 3

    .line 331
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$3;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$3;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextShape;)V

    .line 342
    .local v0, "fetcher":Lorg/apache/poi/xslf/model/PropertyFetcher;, "Lorg/apache/poi/xslf/model/PropertyFetcher<Ljava/lang/Double;>;"
    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    .line 344
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide v1, 0x400ccccccccccccdL    # 3.6

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public getInsets()Lorg/apache/poi/sl/usermodel/Insets2D;
    .locals 10

    .line 488
    new-instance v9, Lorg/apache/poi/sl/usermodel/Insets2D;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTopInset()D

    move-result-wide v1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getLeftInset()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getBottomInset()D

    move-result-wide v5

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getRightInset()D

    move-result-wide v7

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/sl/usermodel/Insets2D;-><init>(DDDD)V

    .line 489
    .local v0, "insets":Lorg/apache/poi/sl/usermodel/Insets2D;
    return-object v0
.end method

.method public getLeftInset()D
    .locals 3

    .line 355
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$4;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$4;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextShape;)V

    .line 366
    .local v0, "fetcher":Lorg/apache/poi/xslf/model/PropertyFetcher;, "Lorg/apache/poi/xslf/model/PropertyFetcher<Ljava/lang/Double;>;"
    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    .line 368
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide v1, 0x401ccccccccccccdL    # 7.2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public getRightInset()D
    .locals 3

    .line 379
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$5;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$5;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextShape;)V

    .line 390
    .local v0, "fetcher":Lorg/apache/poi/xslf/model/PropertyFetcher;, "Lorg/apache/poi/xslf/model/PropertyFetcher<Ljava/lang/Double;>;"
    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    .line 392
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide v1, 0x401ccccccccccccdL    # 7.2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v0, "out":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->_paragraphs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    .line 80
    .local v2, "p":Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 81
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    :cond_0
    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 85
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "p":Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTextAutofit()Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;
    .locals 2

    .line 557
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    .line 558
    .local v0, "bodyPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    if-eqz v0, :cond_2

    .line 559
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetNoAutofit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 560
    sget-object v1, Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;->NONE:Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;

    return-object v1

    .line 561
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetNormAutofit()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 562
    sget-object v1, Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;->NORMAL:Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;

    return-object v1

    .line 563
    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetSpAutoFit()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 564
    sget-object v1, Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;->SHAPE:Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;

    return-object v1

    .line 567
    :cond_2
    sget-object v1, Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;->NORMAL:Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;

    return-object v1
.end method

.method protected abstract getTextBody(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
.end method

.method protected getTextBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    .locals 1

    .line 571
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBodyPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    return-object v0
.end method

.method protected getTextBodyPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    .locals 2
    .param p1, "create"    # Z

    .line 575
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBody(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    .line 576
    .local v0, "textBody":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
    if-nez v0, :cond_0

    .line 577
    const/4 v1, 0x0

    return-object v1

    .line 579
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v1

    .line 580
    .local v1, "textBodyPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 581
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->addNewBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v1

    .line 583
    :cond_1
    return-object v1
.end method

.method public getTextDirection()Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;
    .locals 3

    .line 283
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    .line 284
    .local v0, "bodyPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    if-eqz v0, :cond_0

    .line 285
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->getVert()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    move-result-object v1

    .line 286
    .local v1, "val":Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;
    if-eqz v1, :cond_0

    .line 287
    invoke-virtual {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 290
    sget-object v2, Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;->HORIZONTAL:Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;

    return-object v2

    .line 299
    :pswitch_0
    sget-object v2, Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;->STACKED:Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;

    return-object v2

    .line 296
    :pswitch_1
    sget-object v2, Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;->VERTICAL_270:Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;

    return-object v2

    .line 294
    :pswitch_2
    sget-object v2, Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;->VERTICAL:Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;

    return-object v2

    .line 303
    .end local v1    # "val":Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;
    :cond_0
    sget-object v1, Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;->HORIZONTAL:Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getTextHeight()D
    .locals 2

    .line 605
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextHeight(Ljava/awt/Graphics2D;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTextHeight(Ljava/awt/Graphics2D;)D
    .locals 4
    .param p1, "graphics"    # Ljava/awt/Graphics2D;

    .line 610
    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v0

    .line 611
    .local v0, "drawFact":Lorg/apache/poi/sl/draw/DrawFactory;
    invoke-virtual {v0, p0}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/TextShape;)Lorg/apache/poi/sl/draw/DrawTextShape;

    move-result-object v1

    .line 612
    .local v1, "dts":Lorg/apache/poi/sl/draw/DrawTextShape;
    invoke-virtual {v1, p1}, Lorg/apache/poi/sl/draw/DrawTextShape;->getTextHeight(Ljava/awt/Graphics2D;)D

    move-result-wide v2

    return-wide v2
.end method

.method public getTextParagraphs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
            ">;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->_paragraphs:Ljava/util/List;

    return-object v0
.end method

.method public getTextPlaceholder()Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;
    .locals 3

    .line 721
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextType()Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v0

    .line 722
    .local v0, "ph":Lorg/apache/poi/sl/usermodel/Placeholder;
    if-nez v0, :cond_0

    .line 723
    sget-object v1, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->BODY:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    return-object v1

    .line 725
    :cond_0
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$8;->$SwitchMap$org$apache$poi$sl$usermodel$Placeholder:[I

    invoke-virtual {v0}, Lorg/apache/poi/sl/usermodel/Placeholder;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 730
    sget-object v1, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->OTHER:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    return-object v1

    .line 728
    :cond_1
    sget-object v1, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->CENTER_TITLE:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    return-object v1

    .line 727
    :cond_2
    sget-object v1, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->TITLE:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    return-object v1

    .line 726
    :cond_3
    sget-object v1, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->BODY:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    return-object v1
.end method

.method public getTextRotation()Ljava/lang/Double;
    .locals 5

    .line 308
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    .line 309
    .local v0, "bodyPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetRot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->getRot()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 312
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTextType()Lorg/apache/poi/sl/usermodel/Placeholder;
    .locals 3

    .line 594
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getCTPlaceholder()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    move-result-object v0

    .line 595
    .local v0, "ph":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;
    if-nez v0, :cond_0

    .line 596
    const/4 v1, 0x0

    return-object v1

    .line 599
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->getType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->intValue()I

    move-result v1

    .line 600
    .local v1, "val":I
    invoke-static {v1}, Lorg/apache/poi/sl/usermodel/Placeholder;->lookupOoxml(I)Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v2

    return-object v2
.end method

.method public getTopInset()D
    .locals 3

    .line 402
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$6;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$6;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextShape;)V

    .line 413
    .local v0, "fetcher":Lorg/apache/poi/xslf/model/PropertyFetcher;, "Lorg/apache/poi/xslf/model/PropertyFetcher<Ljava/lang/Double;>;"
    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    .line 415
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide v1, 0x400ccccccccccccdL    # 3.6

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public getVerticalAlignment()Lorg/apache/poi/sl/usermodel/VerticalAlignment;
    .locals 2

    .line 222
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$1;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$1;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextShape;)V

    .line 233
    .local v0, "fetcher":Lorg/apache/poi/xslf/model/PropertyFetcher;, "Lorg/apache/poi/xslf/model/PropertyFetcher<Lorg/apache/poi/sl/usermodel/VerticalAlignment;>;"
    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    .line 234
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/apache/poi/sl/usermodel/VerticalAlignment;->TOP:Lorg/apache/poi/sl/usermodel/VerticalAlignment;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/sl/usermodel/VerticalAlignment;

    :goto_0
    return-object v1
.end method

.method public getWordWrap()Z
    .locals 2

    .line 502
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$7;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$7;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextShape;)V

    .line 512
    .local v0, "fetcher":Lorg/apache/poi/xslf/model/PropertyFetcher;, "Lorg/apache/poi/xslf/model/PropertyFetcher<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    .line 513
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1
.end method

.method public isHorizontalCentered()Z
    .locals 2

    .line 253
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$2;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$2;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextShape;)V

    .line 263
    .local v0, "fetcher":Lorg/apache/poi/xslf/model/PropertyFetcher;, "Lorg/apache/poi/xslf/model/PropertyFetcher<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    .line 264
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

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
            "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
            ">;"
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextParagraphs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected newTextParagraph(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;)Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;
    .locals 1
    .param p1, "p"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    .line 744
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-direct {v0, p1, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;Lorg/apache/poi/xslf/usermodel/XSLFTextShape;)V

    return-object v0
.end method

.method public resizeToFitText()Ljava/awt/geom/Rectangle2D;
    .locals 1

    .line 617
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->resizeToFitText(Ljava/awt/Graphics2D;)Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    return-object v0
.end method

.method public resizeToFitText(Ljava/awt/Graphics2D;)Ljava/awt/geom/Rectangle2D;
    .locals 15
    .param p1, "graphics"    # Ljava/awt/Graphics2D;

    .line 622
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v9

    .line 624
    .local v9, "anchor":Ljava/awt/geom/Rectangle2D;
    invoke-virtual {v9}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    .line 627
    invoke-virtual/range {p0 .. p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextHeight(Ljava/awt/Graphics2D;)D

    move-result-wide v0

    .line 628
    .local v0, "height":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double v10, v0, v2

    .line 630
    .end local v0    # "height":D
    .local v10, "height":D
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getInsets()Lorg/apache/poi/sl/usermodel/Insets2D;

    move-result-object v12

    .line 631
    .local v12, "insets":Lorg/apache/poi/sl/usermodel/Insets2D;
    invoke-virtual {v9}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v1

    invoke-virtual {v9}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v3

    invoke-virtual {v9}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v5

    iget-wide v7, v12, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    add-double/2addr v7, v10

    iget-wide v13, v12, Lorg/apache/poi/sl/usermodel/Insets2D;->bottom:D

    add-double/2addr v7, v13

    move-object v0, v9

    invoke-virtual/range {v0 .. v8}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    .line 632
    move-object v0, p0

    invoke-virtual {p0, v9}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    .line 634
    return-object v9

    .line 625
    .end local v10    # "height":D
    .end local v12    # "insets":Lorg/apache/poi/sl/usermodel/Insets2D;
    :cond_0
    move-object v0, p0

    new-instance v1, Lorg/apache/poi/POIXMLException;

    const-string v2, "Anchor of the shape was not set."

    invoke-direct {v1, v2}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setBottomInset(D)V
    .locals 4
    .param p1, "margin"    # D

    .line 425
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBodyPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    .line 426
    .local v0, "bodyPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    if-eqz v0, :cond_1

    .line 427
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    cmpl-double v3, p1, v1

    if-nez v3, :cond_0

    .line 428
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetBIns()V

    goto :goto_0

    .line 430
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setBIns(I)V

    .line 433
    :cond_1
    :goto_0
    return-void
.end method

.method public setHorizontalCentered(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "isCentered"    # Ljava/lang/Boolean;

    .line 239
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBodyPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    .line 240
    .local v0, "bodyPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    if-eqz v0, :cond_1

    .line 241
    if-nez p1, :cond_0

    .line 242
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetAnchorCtr()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetAnchorCtr()V

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setAnchorCtr(Z)V

    .line 249
    :cond_1
    :goto_0
    return-void
.end method

.method public setInsets(Lorg/apache/poi/sl/usermodel/Insets2D;)V
    .locals 2
    .param p1, "insets"    # Lorg/apache/poi/sl/usermodel/Insets2D;

    .line 494
    iget-wide v0, p1, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->setTopInset(D)V

    .line 495
    iget-wide v0, p1, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->setLeftInset(D)V

    .line 496
    iget-wide v0, p1, Lorg/apache/poi/sl/usermodel/Insets2D;->bottom:D

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->setBottomInset(D)V

    .line 497
    iget-wide v0, p1, Lorg/apache/poi/sl/usermodel/Insets2D;->right:D

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->setRightInset(D)V

    .line 498
    return-void
.end method

.method public setLeftInset(D)V
    .locals 4
    .param p1, "margin"    # D

    .line 442
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBodyPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    .line 443
    .local v0, "bodyPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    if-eqz v0, :cond_1

    .line 444
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    cmpl-double v3, p1, v1

    if-nez v3, :cond_0

    .line 445
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetLIns()V

    goto :goto_0

    .line 447
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setLIns(I)V

    .line 450
    :cond_1
    :goto_0
    return-void
.end method

.method public setPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)V
    .locals 0
    .param p1, "placeholder"    # Lorg/apache/poi/sl/usermodel/Placeholder;

    .line 590
    invoke-super {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)V

    .line 591
    return-void
.end method

.method public setRightInset(D)V
    .locals 4
    .param p1, "margin"    # D

    .line 459
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBodyPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    .line 460
    .local v0, "bodyPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    if-eqz v0, :cond_1

    .line 461
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    cmpl-double v3, p1, v1

    if-nez v3, :cond_0

    .line 462
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetRIns()V

    goto :goto_0

    .line 464
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setRIns(I)V

    .line 467
    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic setText(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/TextRun;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .line 54
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->setText(Ljava/lang/String;)Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/String;)Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->_paragraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 101
    invoke-virtual {p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBody(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    .line 102
    .local v0, "txBody":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->sizeOfPArray()I

    move-result v2

    .line 103
    .local v2, "cntPs":I
    move v3, v2

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 104
    add-int/lit8 v4, v3, -0x1

    invoke-interface {v0, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->removeP(I)V

    .line 105
    iget-object v4, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->_paragraphs:Ljava/util/List;

    add-int/lit8 v5, v3, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 103
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 108
    .end local v3    # "i":I
    :cond_0
    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->_paragraphs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->clearButKeepProperties()V

    .line 111
    .end local v0    # "txBody":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
    .end local v2    # "cntPs":I
    :cond_1
    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->appendText(Ljava/lang/String;Z)Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    move-result-object v0

    return-object v0
.end method

.method public setTextAutofit(Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;)V
    .locals 4
    .param p1, "value"    # Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;

    .line 532
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBodyPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v1

    .line 533
    .local v1, "bodyPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    if-eqz v1, :cond_6

    .line 534
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetSpAutoFit()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 535
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetSpAutoFit()V

    .line 537
    :cond_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetNoAutofit()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 538
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetNoAutofit()V

    .line 540
    :cond_1
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetNormAutofit()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 541
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetNormAutofit()V

    .line 544
    :cond_2
    sget-object v2, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$8;->$SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextAutofit:[I

    invoke-virtual {p1}, Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_5

    const/4 v0, 0x2

    if-eq v2, v0, :cond_4

    const/4 v0, 0x3

    if-eq v2, v0, :cond_3

    goto :goto_0

    .line 547
    :cond_3
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->addNewSpAutoFit()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextShapeAutofit;

    goto :goto_0

    .line 546
    :cond_4
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->addNewNormAutofit()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;

    goto :goto_0

    .line 545
    :cond_5
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->addNewNoAutofit()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNoAutofit;

    .line 550
    :cond_6
    :goto_0
    return-void
.end method

.method public setTextDirection(Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;)V
    .locals 3
    .param p1, "orientation"    # Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;

    .line 269
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBodyPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v1

    .line 270
    .local v1, "bodyPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    if-eqz v1, :cond_1

    .line 271
    if-nez p1, :cond_0

    .line 272
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetVert()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetVert()V

    goto :goto_0

    .line 276
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;->ordinal()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setVert(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;)V

    .line 279
    :cond_1
    :goto_0
    return-void
.end method

.method public setTextPlaceholder(Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;)V
    .locals 2
    .param p1, "placeholder"    # Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    .line 695
    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$8;->$SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextPlaceholder:[I

    invoke-virtual {p1}, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 701
    sget-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->BODY:Lorg/apache/poi/sl/usermodel/Placeholder;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->setPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)V

    .line 702
    goto :goto_0

    .line 714
    :cond_0
    sget-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->CONTENT:Lorg/apache/poi/sl/usermodel/Placeholder;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->setPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)V

    goto :goto_0

    .line 711
    :cond_1
    sget-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->CENTERED_TITLE:Lorg/apache/poi/sl/usermodel/Placeholder;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->setPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)V

    .line 712
    goto :goto_0

    .line 707
    :cond_2
    sget-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->BODY:Lorg/apache/poi/sl/usermodel/Placeholder;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->setPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)V

    .line 708
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->setHorizontalCentered(Ljava/lang/Boolean;)V

    .line 709
    goto :goto_0

    .line 704
    :cond_3
    sget-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->TITLE:Lorg/apache/poi/sl/usermodel/Placeholder;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->setPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)V

    .line 705
    nop

    .line 717
    :goto_0
    return-void
.end method

.method public setTextRotation(Ljava/lang/Double;)V
    .locals 5
    .param p1, "rotation"    # Ljava/lang/Double;

    .line 317
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBodyPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    .line 318
    .local v0, "bodyPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide v3, 0x40ed4c0000000000L    # 60000.0

    mul-double v1, v1, v3

    double-to-int v1, v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setRot(I)V

    .line 321
    :cond_0
    return-void
.end method

.method public setTopInset(D)V
    .locals 4
    .param p1, "margin"    # D

    .line 476
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBodyPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    .line 477
    .local v0, "bodyPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    if-eqz v0, :cond_1

    .line 478
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    cmpl-double v3, p1, v1

    if-nez v3, :cond_0

    .line 479
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetTIns()V

    goto :goto_0

    .line 481
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setTIns(I)V

    .line 484
    :cond_1
    :goto_0
    return-void
.end method

.method public setVerticalAlignment(Lorg/apache/poi/sl/usermodel/VerticalAlignment;)V
    .locals 3
    .param p1, "anchor"    # Lorg/apache/poi/sl/usermodel/VerticalAlignment;

    .line 208
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBodyPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v1

    .line 209
    .local v1, "bodyPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    if-eqz v1, :cond_1

    .line 210
    if-nez p1, :cond_0

    .line 211
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetAnchor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetAnchor()V

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/sl/usermodel/VerticalAlignment;->ordinal()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setAnchor(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;)V

    .line 218
    :cond_1
    :goto_0
    return-void
.end method

.method public setWordWrap(Z)V
    .locals 2
    .param p1, "wrap"    # Z

    .line 518
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBodyPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    .line 519
    .local v0, "bodyPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    if-eqz v0, :cond_1

    .line 520
    if-eqz p1, :cond_0

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextWrappingType;->SQUARE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextWrappingType$Enum;

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextWrappingType;->NONE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextWrappingType$Enum;

    :goto_0
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setWrap(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextWrappingType$Enum;)V

    .line 522
    :cond_1
    return-void
.end method
