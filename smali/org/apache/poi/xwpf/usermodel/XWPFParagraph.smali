.class public Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
.super Ljava/lang/Object;
.source "XWPFParagraph.java"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/IBodyElement;
.implements Lorg/apache/poi/xwpf/usermodel/IRunBody;
.implements Lorg/apache/poi/xwpf/usermodel/ISDTContents;
.implements Lorg/apache/poi/wp/usermodel/Paragraph;


# instance fields
.field protected document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

.field private footnoteText:Ljava/lang/StringBuffer;

.field protected iruns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/IRunElement;",
            ">;"
        }
    .end annotation
.end field

.field private final paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

.field protected part:Lorg/apache/poi/xwpf/usermodel/IBody;

.field protected runs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFRun;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V
    .locals 12
    .param p1, "prgrph"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;
    .param p2, "part"    # Lorg/apache/poi/xwpf/usermodel/IBody;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->footnoteText:Ljava/lang/StringBuffer;

    .line 51
    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    .line 52
    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    .line 54
    invoke-interface {p2}, Lorg/apache/poi/xwpf/usermodel/IBody;->getXWPFDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    .line 56
    if-eqz v0, :cond_6

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    .line 63
    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->buildRunsInOrderFromXml(Lorg/apache/xmlbeans/XmlObject;)V

    .line 66
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    .line 67
    .local v1, "run":Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getCTR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v2

    .line 71
    .local v2, "r":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v3

    .line 72
    .local v3, "c":Lorg/apache/xmlbeans/XmlCursor;
    const-string v4, "child::*"

    invoke-interface {v3, v4}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    .line 73
    :goto_1
    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 74
    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v4

    .line 75
    .local v4, "o":Lorg/apache/xmlbeans/XmlObject;
    instance-of v5, v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;

    if-eqz v5, :cond_3

    .line 76
    move-object v5, v4

    check-cast v5, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;

    .line 77
    .local v5, "ftn":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;
    iget-object v6, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->footnoteText:Ljava/lang/StringBuffer;

    const-string v7, " ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface {v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;->getId()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    invoke-interface {v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "footnoteReference"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-interface {v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;->getId()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getFootnoteByID(I)Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;

    move-result-object v6

    goto :goto_2

    :cond_0
    iget-object v6, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-interface {v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;->getId()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getEndnoteByID(I)Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;

    move-result-object v6

    .line 83
    .local v6, "footnote":Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;
    :goto_2
    const/4 v7, 0x1

    .line 84
    .local v7, "first":Z
    invoke-virtual {v6}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->getParagraphs()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    .line 85
    .local v9, "p":Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    if-nez v7, :cond_1

    .line 86
    iget-object v10, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->footnoteText:Ljava/lang/StringBuffer;

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    :cond_1
    const/4 v7, 0x0

    .line 89
    iget-object v10, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->footnoteText:Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 92
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "p":Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    :cond_2
    iget-object v8, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->footnoteText:Ljava/lang/StringBuffer;

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    .end local v4    # "o":Lorg/apache/xmlbeans/XmlObject;
    .end local v5    # "ftn":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;
    .end local v6    # "footnote":Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;
    .end local v7    # "first":Z
    :cond_3
    goto/16 :goto_1

    .line 95
    :cond_4
    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 96
    .end local v1    # "run":Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    .end local v2    # "r":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
    .end local v3    # "c":Lorg/apache/xmlbeans/XmlCursor;
    goto/16 :goto_0

    .line 97
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_5
    return-void

    .line 57
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private buildRunsInOrderFromXml(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 9
    .param p1, "object"    # Lorg/apache/xmlbeans/XmlObject;

    .line 106
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlObject;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    .line 107
    .local v0, "c":Lorg/apache/xmlbeans/XmlCursor;
    const-string v1, "child::*"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    .line 108
    :goto_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 109
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    .line 110
    .local v1, "o":Lorg/apache/xmlbeans/XmlObject;
    instance-of v2, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    if-eqz v2, :cond_0

    .line 111
    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    move-object v3, v1

    check-cast v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-direct {v2, v3, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)V

    .line 112
    .local v2, "r":Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    .end local v2    # "r":Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    :cond_0
    instance-of v2, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;

    if-eqz v2, :cond_1

    .line 116
    move-object v2, v1

    check-cast v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;

    .line 117
    .local v2, "link":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;->getRArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v3

    .local v3, "arr$":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 118
    .local v6, "r":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
    new-instance v7, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;

    invoke-direct {v7, v2, v6, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    .line 119
    .local v7, "hr":Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;
    iget-object v8, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v8, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .end local v6    # "r":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
    .end local v7    # "hr":Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 123
    .end local v2    # "link":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;
    .end local v3    # "arr$":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_1
    instance-of v2, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;

    if-eqz v2, :cond_2

    .line 124
    move-object v2, v1

    check-cast v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;

    .line 125
    .local v2, "field":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;->getRArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v3

    .restart local v3    # "arr$":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
    array-length v4, v3

    .restart local v4    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_2
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 126
    .restart local v6    # "r":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
    new-instance v7, Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;

    invoke-direct {v7, v2, v6, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    .line 127
    .local v7, "fr":Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;
    iget-object v8, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v8, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    .end local v6    # "r":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
    .end local v7    # "fr":Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 131
    .end local v2    # "field":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;
    .end local v3    # "arr$":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_2
    instance-of v2, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    if-eqz v2, :cond_3

    .line 132
    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    move-object v3, v1

    check-cast v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 133
    .local v2, "cc":Lorg/apache/poi/xwpf/usermodel/XWPFSDT;
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    .end local v2    # "cc":Lorg/apache/poi/xwpf/usermodel/XWPFSDT;
    :cond_3
    instance-of v2, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;

    if-eqz v2, :cond_4

    .line 136
    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    move-object v3, v1

    check-cast v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 137
    .restart local v2    # "cc":Lorg/apache/poi/xwpf/usermodel/XWPFSDT;
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    .end local v2    # "cc":Lorg/apache/poi/xwpf/usermodel/XWPFSDT;
    :cond_4
    instance-of v2, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;

    if-eqz v2, :cond_5

    .line 140
    move-object v2, v1

    check-cast v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;->getRArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v2

    .local v2, "arr$":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_3
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 141
    .local v5, "r":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
    new-instance v6, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-direct {v6, v5, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)V

    .line 142
    .local v6, "cr":Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    iget-object v7, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v7, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    .end local v5    # "r":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
    .end local v6    # "cr":Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 146
    .end local v2    # "arr$":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_5
    instance-of v2, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSmartTagRun;

    if-eqz v2, :cond_6

    .line 149
    invoke-direct {p0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->buildRunsInOrderFromXml(Lorg/apache/xmlbeans/XmlObject;)V

    .line 151
    .end local v1    # "o":Lorg/apache/xmlbeans/XmlObject;
    :cond_6
    goto/16 :goto_0

    .line 152
    :cond_7
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 153
    return-void
.end method

.method private getCTInd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;
    .locals 2
    .param p1, "create"    # Z

    .line 1368
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    .line 1369
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->getInd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->getInd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    move-result-object v1

    .line 1370
    .local v1, "ct":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;
    :goto_0
    if-eqz p1, :cond_1

    if-nez v1, :cond_1

    .line 1371
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->addNewInd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    move-result-object v1

    .line 1373
    :cond_1
    return-object v1
.end method

.method private getCTPBrd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;
    .locals 2
    .param p1, "create"    # Z

    .line 1342
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    .line 1343
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->isSetPBdr()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->getPBdr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1344
    .local v1, "ct":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;
    :goto_0
    if-eqz p1, :cond_1

    if-nez v1, :cond_1

    .line 1345
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->addNewPBdr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;

    move-result-object v1

    .line 1347
    :cond_1
    return-object v1
.end method

.method private getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;
    .locals 1

    .line 1381
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    .line 1383
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;
    :goto_0
    return-object v0
.end method

.method private getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;
    .locals 2
    .param p1, "create"    # Z

    .line 1355
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    .line 1356
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->getSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->getSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object v1

    .line 1357
    .local v1, "ct":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;
    :goto_0
    if-eqz p1, :cond_1

    if-nez v1, :cond_1

    .line 1358
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->addNewSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object v1

    .line 1360
    :cond_1
    return-object v1
.end method

.method private static isTruelike(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;Z)Z
    .locals 1
    .param p0, "value"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;
    .param p1, "defaultValue"    # Z

    .line 829
    if-nez p0, :cond_0

    .line 830
    return p1

    .line 832
    :cond_0
    invoke-virtual {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 842
    return p1

    .line 840
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 836
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addRun(Lorg/apache/poi/xwpf/usermodel/XWPFRun;)V
    .locals 1
    .param p1, "r"    # Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    .line 1647
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1648
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1650
    :cond_0
    return-void
.end method

.method protected addRun(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;)V
    .locals 2
    .param p1, "run"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    .line 1395
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->sizeOfRArray()I

    move-result v0

    .line 1396
    .local v0, "pos":I
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    .line 1397
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v1, v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->setRArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;)V

    .line 1398
    return-void
.end method

.method public createRun()Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    .locals 2

    .line 1406
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    .line 1407
    .local v0, "xwpfRun":Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1408
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1409
    return-object v0
.end method

.method public getAlignment()Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;
    .locals 2

    .line 443
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    .line 444
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->isSetJc()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->getJc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJc;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJc;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->valueOf(I)Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->LEFT:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    :goto_1
    return-object v1
.end method

.method public getBody()Lorg/apache/poi/xwpf/usermodel/IBody;
    .locals 1

    .line 1615
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    return-object v0
.end method

.method public getBorderBetween()Lorg/apache/poi/xwpf/usermodel/Borders;
    .locals 4

    .line 759
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPBrd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;

    move-result-object v0

    .line 760
    .local v0, "border":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;
    const/4 v1, 0x0

    .line 761
    .local v1, "ct":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
    if-eqz v0, :cond_0

    .line 762
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->getBetween()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v1

    .line 764
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object v2

    goto :goto_0

    :cond_1
    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    .line 765
    .local v2, "ptrn":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;
    :goto_0
    invoke-virtual {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;->intValue()I

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/xwpf/usermodel/Borders;->valueOf(I)Lorg/apache/poi/xwpf/usermodel/Borders;

    move-result-object v3

    return-object v3
.end method

.method public getBorderBottom()Lorg/apache/poi/xwpf/usermodel/Borders;
    .locals 4

    .line 604
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPBrd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;

    move-result-object v0

    .line 605
    .local v0, "border":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;
    const/4 v1, 0x0

    .line 606
    .local v1, "ct":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
    if-eqz v0, :cond_0

    .line 607
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->getBottom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v1

    .line 609
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object v2

    goto :goto_0

    :cond_1
    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    .line 610
    .local v2, "ptrn":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;
    :goto_0
    invoke-virtual {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;->intValue()I

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/xwpf/usermodel/Borders;->valueOf(I)Lorg/apache/poi/xwpf/usermodel/Borders;

    move-result-object v3

    return-object v3
.end method

.method public getBorderLeft()Lorg/apache/poi/xwpf/usermodel/Borders;
    .locals 4

    .line 659
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPBrd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;

    move-result-object v0

    .line 660
    .local v0, "border":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;
    const/4 v1, 0x0

    .line 661
    .local v1, "ct":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
    if-eqz v0, :cond_0

    .line 662
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->getLeft()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v1

    .line 664
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object v2

    goto :goto_0

    :cond_1
    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    .line 665
    .local v2, "ptrn":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;
    :goto_0
    invoke-virtual {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;->intValue()I

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/xwpf/usermodel/Borders;->valueOf(I)Lorg/apache/poi/xwpf/usermodel/Borders;

    move-result-object v3

    return-object v3
.end method

.method public getBorderRight()Lorg/apache/poi/xwpf/usermodel/Borders;
    .locals 4

    .line 709
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPBrd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;

    move-result-object v0

    .line 710
    .local v0, "border":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;
    const/4 v1, 0x0

    .line 711
    .local v1, "ct":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
    if-eqz v0, :cond_0

    .line 712
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->getRight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v1

    .line 714
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object v2

    goto :goto_0

    :cond_1
    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    .line 715
    .local v2, "ptrn":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;
    :goto_0
    invoke-virtual {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;->intValue()I

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/xwpf/usermodel/Borders;->valueOf(I)Lorg/apache/poi/xwpf/usermodel/Borders;

    move-result-object v3

    return-object v3
.end method

.method public getBorderTop()Lorg/apache/poi/xwpf/usermodel/Borders;
    .locals 4

    .line 545
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPBrd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;

    move-result-object v0

    .line 546
    .local v0, "border":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;
    const/4 v1, 0x0

    .line 547
    .local v1, "ct":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
    if-eqz v0, :cond_0

    .line 548
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->getTop()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v1

    .line 550
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object v2

    goto :goto_0

    :cond_1
    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    .line 551
    .local v2, "ptrn":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;
    :goto_0
    invoke-virtual {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;->intValue()I

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/xwpf/usermodel/Borders;->valueOf(I)Lorg/apache/poi/xwpf/usermodel/Borders;

    move-result-object v3

    return-object v3
.end method

.method public getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 157
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    return-object v0
.end method

.method public getDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;
    .locals 1

    .line 179
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    return-object v0
.end method

.method public getElementType()Lorg/apache/poi/xwpf/usermodel/BodyElementType;
    .locals 1

    .line 1610
    sget-object v0, Lorg/apache/poi/xwpf/usermodel/BodyElementType;->PARAGRAPH:Lorg/apache/poi/xwpf/usermodel/BodyElementType;

    return-object v0
.end method

.method public getFirstLineIndent()I
    .locals 1

    .line 1260
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getIndentationFirstLine()I

    move-result v0

    return v0
.end method

.method public getFontAlignment()I
    .locals 1

    .line 474
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getAlignment()Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->getValue()I

    move-result v0

    return v0
.end method

.method public getFootnoteText()Ljava/lang/String;
    .locals 1

    .line 425
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->footnoteText:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIRuns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/IRunElement;",
            ">;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIndentFromLeft()I
    .locals 1

    .line 1240
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getIndentationLeft()I

    move-result v0

    return v0
.end method

.method public getIndentFromRight()I
    .locals 1

    .line 1250
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getIndentationRight()I

    move-result v0

    return v0
.end method

.method public getIndentationFirstLine()I
    .locals 2

    .line 1213
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTInd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    move-result-object v0

    .line 1214
    .local v0, "indentation":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->isSetFirstLine()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->getFirstLine()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public getIndentationHanging()I
    .locals 2

    .line 1173
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTInd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    move-result-object v0

    .line 1174
    .local v0, "indentation":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->isSetHanging()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->getHanging()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public getIndentationLeft()I
    .locals 2

    .line 1096
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTInd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    move-result-object v0

    .line 1097
    .local v0, "indentation":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->isSetLeft()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->getLeft()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public getIndentationRight()I
    .locals 2

    .line 1135
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTInd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    move-result-object v0

    .line 1136
    .local v0, "indentation":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->isSetRight()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->getRight()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public getNumFmt()Ljava/lang/String;
    .locals 10

    .line 281
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getNumID()Ljava/math/BigInteger;

    move-result-object v0

    .line 282
    .local v0, "numID":Ljava/math/BigInteger;
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getNumbering()Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    move-result-object v1

    .line 283
    .local v1, "numbering":Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 284
    invoke-virtual {v1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->getNum(Ljava/math/BigInteger;)Lorg/apache/poi/xwpf/usermodel/XWPFNum;

    move-result-object v2

    .line 285
    .local v2, "num":Lorg/apache/poi/xwpf/usermodel/XWPFNum;
    if-eqz v2, :cond_2

    .line 286
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getNumIlvl()Ljava/math/BigInteger;

    move-result-object v3

    .line 287
    .local v3, "ilvl":Ljava/math/BigInteger;
    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFNum;->getCTNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    move-result-object v4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->getAbstractNumId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->getVal()Ljava/math/BigInteger;

    move-result-object v4

    .line 288
    .local v4, "abstractNumId":Ljava/math/BigInteger;
    invoke-virtual {v1, v4}, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->getAbstractNum(Ljava/math/BigInteger;)Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->getAbstractNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    move-result-object v5

    .line 289
    .local v5, "anum":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;
    const/4 v6, 0x0

    .line 290
    .local v6, "level":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;->sizeOfLvlArray()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 291
    invoke-interface {v5, v7}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;->getLvlArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;

    move-result-object v8

    .line 292
    .local v8, "lvl":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;
    invoke-interface {v8}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;->getIlvl()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 293
    move-object v6, v8

    .line 294
    goto :goto_1

    .line 290
    .end local v8    # "lvl":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 297
    .end local v7    # "i":I
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;->getNumFmt()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumFmt;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;->getNumFmt()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumFmt;

    move-result-object v7

    invoke-interface {v7}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumFmt;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 299
    invoke-interface {v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;->getNumFmt()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumFmt;

    move-result-object v7

    invoke-interface {v7}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumFmt;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-result-object v7

    invoke-virtual {v7}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 303
    .end local v2    # "num":Lorg/apache/poi/xwpf/usermodel/XWPFNum;
    .end local v3    # "ilvl":Ljava/math/BigInteger;
    .end local v4    # "abstractNumId":Ljava/math/BigInteger;
    .end local v5    # "anum":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;
    .end local v6    # "level":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method public getNumID()Ljava/math/BigInteger;
    .locals 1

    .line 230
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->getNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->getNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;->getNumId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->getNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;->getNumId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->getVal()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 237
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumIlvl()Ljava/math/BigInteger;
    .locals 1

    .line 265
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->getNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->getNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;->getIlvl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->getNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;->getIlvl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->getVal()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 272
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumLevelText()Ljava/lang/String;
    .locals 14

    .line 312
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getNumID()Ljava/math/BigInteger;

    move-result-object v0

    .line 313
    .local v0, "numID":Ljava/math/BigInteger;
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getNumbering()Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    move-result-object v1

    .line 314
    .local v1, "numbering":Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;
    const/4 v2, 0x0

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    .line 315
    invoke-virtual {v1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->getNum(Ljava/math/BigInteger;)Lorg/apache/poi/xwpf/usermodel/XWPFNum;

    move-result-object v3

    .line 316
    .local v3, "num":Lorg/apache/poi/xwpf/usermodel/XWPFNum;
    if-eqz v3, :cond_7

    .line 317
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getNumIlvl()Ljava/math/BigInteger;

    move-result-object v4

    .line 318
    .local v4, "ilvl":Ljava/math/BigInteger;
    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/XWPFNum;->getCTNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    move-result-object v5

    .line 319
    .local v5, "ctNum":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;
    if-nez v5, :cond_0

    .line 320
    return-object v2

    .line 323
    :cond_0
    invoke-interface {v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->getAbstractNumId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v6

    .line 324
    .local v6, "ctDecimalNumber":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
    if-nez v6, :cond_1

    .line 325
    return-object v2

    .line 328
    :cond_1
    invoke-interface {v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->getVal()Ljava/math/BigInteger;

    move-result-object v7

    .line 329
    .local v7, "abstractNumId":Ljava/math/BigInteger;
    if-nez v7, :cond_2

    .line 330
    return-object v2

    .line 333
    :cond_2
    invoke-virtual {v1, v7}, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->getAbstractNum(Ljava/math/BigInteger;)Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;

    move-result-object v8

    .line 335
    .local v8, "xwpfAbstractNum":Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;
    if-nez v8, :cond_3

    .line 336
    return-object v2

    .line 339
    :cond_3
    invoke-virtual {v8}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->getCTAbstractNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    move-result-object v9

    .line 341
    .local v9, "anum":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;
    if-nez v9, :cond_4

    .line 342
    return-object v2

    .line 345
    :cond_4
    const/4 v10, 0x0

    .line 346
    .local v10, "level":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-interface {v9}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;->sizeOfLvlArray()I

    move-result v12

    if-ge v11, v12, :cond_6

    .line 347
    invoke-interface {v9, v11}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;->getLvlArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;

    move-result-object v12

    .line 348
    .local v12, "lvl":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;
    if-eqz v12, :cond_5

    invoke-interface {v12}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;->getIlvl()Ljava/math/BigInteger;

    move-result-object v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;->getIlvl()Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 349
    move-object v10, v12

    .line 350
    goto :goto_1

    .line 346
    .end local v12    # "lvl":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 353
    .end local v11    # "i":I
    :cond_6
    :goto_1
    if-eqz v10, :cond_7

    invoke-interface {v10}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;->getLvlText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLevelText;

    move-result-object v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;->getLvlText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLevelText;

    move-result-object v11

    invoke-interface {v11}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLevelText;->getVal()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 355
    invoke-interface {v10}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;->getLvlText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLevelText;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLevelText;->getVal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 359
    .end local v3    # "num":Lorg/apache/poi/xwpf/usermodel/XWPFNum;
    .end local v4    # "ilvl":Ljava/math/BigInteger;
    .end local v5    # "ctNum":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;
    .end local v6    # "ctDecimalNumber":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
    .end local v7    # "abstractNumId":Ljava/math/BigInteger;
    .end local v8    # "xwpfAbstractNum":Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;
    .end local v9    # "anum":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;
    .end local v10    # "level":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;
    :cond_7
    return-object v2
.end method

.method public getNumStartOverride()Ljava/math/BigInteger;
    .locals 10

    .line 368
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getNumID()Ljava/math/BigInteger;

    move-result-object v0

    .line 369
    .local v0, "numID":Ljava/math/BigInteger;
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getNumbering()Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    move-result-object v1

    .line 370
    .local v1, "numbering":Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 371
    invoke-virtual {v1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->getNum(Ljava/math/BigInteger;)Lorg/apache/poi/xwpf/usermodel/XWPFNum;

    move-result-object v3

    .line 373
    .local v3, "num":Lorg/apache/poi/xwpf/usermodel/XWPFNum;
    if-eqz v3, :cond_3

    .line 374
    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/XWPFNum;->getCTNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    move-result-object v4

    .line 375
    .local v4, "ctNum":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;
    if-nez v4, :cond_0

    .line 376
    return-object v2

    .line 378
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getNumIlvl()Ljava/math/BigInteger;

    move-result-object v5

    .line 379
    .local v5, "ilvl":Ljava/math/BigInteger;
    const/4 v6, 0x0

    .line 380
    .local v6, "level":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumLvl;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v4}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->sizeOfLvlOverrideArray()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 381
    invoke-interface {v4, v7}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->getLvlOverrideArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumLvl;

    move-result-object v8

    .line 382
    .local v8, "ctNumLvl":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumLvl;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumLvl;->getIlvl()Ljava/math/BigInteger;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumLvl;->getIlvl()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 384
    move-object v6, v8

    .line 385
    goto :goto_1

    .line 380
    .end local v8    # "ctNumLvl":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumLvl;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 388
    .end local v7    # "i":I
    :cond_2
    :goto_1
    if-eqz v6, :cond_3

    invoke-interface {v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumLvl;->getStartOverride()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 389
    invoke-interface {v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumLvl;->getStartOverride()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->getVal()Ljava/math/BigInteger;

    move-result-object v2

    return-object v2

    .line 393
    .end local v3    # "num":Lorg/apache/poi/xwpf/usermodel/XWPFNum;
    .end local v4    # "ctNum":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;
    .end local v5    # "ilvl":Ljava/math/BigInteger;
    .end local v6    # "level":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumLvl;
    :cond_3
    return-object v2
.end method

.method public getParagraphText()Ljava/lang/String;
    .locals 3

    .line 401
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 402
    .local v0, "out":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    .line 403
    .local v2, "run":Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 405
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "run":Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPart()Lorg/apache/poi/POIXMLDocumentPart;
    .locals 1

    .line 1625
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    if-eqz v0, :cond_0

    .line 1626
    invoke-interface {v0}, Lorg/apache/poi/xwpf/usermodel/IBody;->getPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    return-object v0

    .line 1628
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPartType()Lorg/apache/poi/xwpf/usermodel/BodyType;
    .locals 1

    .line 1638
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    invoke-interface {v0}, Lorg/apache/poi/xwpf/usermodel/IBody;->getPartType()Lorg/apache/poi/xwpf/usermodel/BodyType;

    move-result-object v0

    return-object v0
.end method

.method public getPictureText()Ljava/lang/String;
    .locals 4

    .line 412
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 413
    .local v0, "out":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    .line 414
    .local v2, "run":Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getPictureText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 416
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "run":Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRun(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;)Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    .locals 2
    .param p1, "r"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    .line 1658
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getRuns()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1659
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getRuns()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getCTR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 1660
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getRuns()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    return-object v1

    .line 1658
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1663
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRuns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFRun;",
            ">;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSpacingAfter()I
    .locals 2

    .line 880
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object v0

    .line 881
    .local v0, "spacing":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->isSetAfter()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->getAfter()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public getSpacingAfterLines()I
    .locals 2

    .line 913
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object v0

    .line 914
    .local v0, "spacing":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->isSetAfterLines()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->getAfterLines()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public getSpacingBefore()I
    .locals 2

    .line 948
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object v0

    .line 949
    .local v0, "spacing":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->isSetBefore()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->getBefore()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public getSpacingBeforeLines()I
    .locals 2

    .line 977
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object v0

    .line 978
    .local v0, "spacing":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->isSetBeforeLines()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->getBeforeLines()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public getSpacingBetween()D
    .locals 10

    .line 1037
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object v1

    .line 1038
    .local v1, "spacing":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->isSetLine()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1040
    :cond_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->getLineRule()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->getLineRule()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;

    move-result-object v2

    sget-object v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule;->AUTO:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;

    if-ne v2, v4, :cond_1

    goto :goto_0

    .line 1044
    :cond_1
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->getLine()Ljava/math/BigInteger;

    move-result-object v2

    const-wide/16 v4, 0x14

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v2

    .line 1045
    .local v2, "val":[Ljava/math/BigInteger;
    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v4

    aget-object v0, v2, v3

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v6

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    return-wide v4

    .line 1041
    .end local v2    # "val":[Ljava/math/BigInteger;
    :cond_2
    :goto_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->getLine()Ljava/math/BigInteger;

    move-result-object v2

    const-wide/16 v4, 0xf0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v2

    .line 1042
    .restart local v2    # "val":[Ljava/math/BigInteger;
    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v4

    aget-object v0, v2, v3

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v6

    const-wide/high16 v8, 0x406e000000000000L    # 240.0

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    return-wide v4

    .line 1039
    .end local v2    # "val":[Ljava/math/BigInteger;
    :cond_3
    :goto_1
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    return-wide v2
.end method

.method public getSpacingLineRule()Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;
    .locals 2

    .line 1009
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object v0

    .line 1010
    .local v0, "spacing":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->isSetLineRule()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->getLineRule()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;->valueOf(I)Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;->AUTO:Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;

    :goto_0
    return-object v1
.end method

.method public getStyle()Ljava/lang/String;
    .locals 3

    .line 1320
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    .line 1321
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->isSetPStyle()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->getPStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 1322
    .local v1, "style":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->getVal()Ljava/lang/String;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public getStyleID()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->getPStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->getPStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->getVal()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->getPStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->getVal()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 219
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 5

    .line 187
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 188
    .local v0, "out":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/IRunElement;

    .line 189
    .local v2, "run":Lorg/apache/poi/xwpf/usermodel/IRunElement;
    instance-of v3, v2, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    if-eqz v3, :cond_1

    .line 190
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    .line 192
    .local v3, "xRun":Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getCTR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRsidDel()Z

    move-result v4

    if-nez v4, :cond_0

    .line 193
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 195
    .end local v3    # "xRun":Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    :cond_0
    goto :goto_1

    :cond_1
    instance-of v3, v2, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    if-eqz v3, :cond_2

    .line 196
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->getContent()Lorg/apache/poi/xwpf/usermodel/ISDTContent;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/poi/xwpf/usermodel/ISDTContent;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 198
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .end local v2    # "run":Lorg/apache/poi/xwpf/usermodel/IRunElement;
    :goto_1
    goto :goto_0

    .line 201
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->footnoteText:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getText(Lorg/apache/poi/xwpf/usermodel/TextSegement;)Ljava/lang/String;
    .locals 18
    .param p1, "segment"    # Lorg/apache/poi/xwpf/usermodel/TextSegement;

    .line 1538
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/xwpf/usermodel/TextSegement;->getBeginRun()I

    move-result v0

    .line 1539
    .local v0, "runBegin":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/xwpf/usermodel/TextSegement;->getBeginText()I

    move-result v1

    .line 1540
    .local v1, "textBegin":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/xwpf/usermodel/TextSegement;->getBeginChar()I

    move-result v2

    .line 1541
    .local v2, "charBegin":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/xwpf/usermodel/TextSegement;->getEndRun()I

    move-result v3

    .line 1542
    .local v3, "runEnd":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/xwpf/usermodel/TextSegement;->getEndText()I

    move-result v4

    .line 1543
    .local v4, "textEnd":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/xwpf/usermodel/TextSegement;->getEndChar()I

    move-result v5

    .line 1544
    .local v5, "charEnd":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1545
    .local v6, "out":Ljava/lang/StringBuilder;
    move-object/from16 v7, p0

    iget-object v8, v7, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v8}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getRArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v8

    .line 1546
    .local v8, "rArray":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
    move v9, v0

    .local v9, "i":I
    :goto_0
    if-gt v9, v3, :cond_5

    .line 1547
    aget-object v10, v8, v9

    invoke-interface {v10}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getTArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    move-result-object v10

    .line 1548
    .local v10, "tArray":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;
    const/4 v11, 0x0

    .local v11, "startText":I
    array-length v12, v10

    add-int/lit8 v12, v12, -0x1

    .line 1549
    .local v12, "endText":I
    if-ne v9, v0, :cond_0

    .line 1550
    move v11, v1

    .line 1552
    :cond_0
    if-ne v9, v3, :cond_1

    .line 1553
    move v12, v4

    .line 1555
    :cond_1
    move v13, v11

    .local v13, "j":I
    :goto_1
    if-gt v13, v12, :cond_4

    .line 1556
    aget-object v14, v10, v13

    invoke-interface {v14}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;->getStringValue()Ljava/lang/String;

    move-result-object v14

    .line 1557
    .local v14, "tmpText":Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, "startChar":I
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    .line 1558
    .local v16, "endChar":I
    if-ne v13, v1, :cond_2

    if-ne v9, v0, :cond_2

    .line 1559
    move v15, v2

    .line 1561
    :cond_2
    if-ne v13, v4, :cond_3

    if-ne v9, v3, :cond_3

    .line 1562
    move/from16 v16, v5

    .line 1564
    :cond_3
    move/from16 v17, v0

    .end local v0    # "runBegin":I
    .local v17, "runBegin":I
    add-int/lit8 v0, v16, 0x1

    invoke-virtual {v14, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1555
    .end local v14    # "tmpText":Ljava/lang/String;
    .end local v15    # "startChar":I
    .end local v16    # "endChar":I
    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v17

    goto :goto_1

    .end local v17    # "runBegin":I
    .restart local v0    # "runBegin":I
    :cond_4
    move/from16 v17, v0

    .line 1546
    .end local v0    # "runBegin":I
    .end local v10    # "tArray":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;
    .end local v11    # "startText":I
    .end local v12    # "endText":I
    .end local v13    # "j":I
    .restart local v17    # "runBegin":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .end local v17    # "runBegin":I
    .restart local v0    # "runBegin":I
    :cond_5
    move/from16 v17, v0

    .line 1567
    .end local v0    # "runBegin":I
    .end local v9    # "i":I
    .restart local v17    # "runBegin":I
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVerticalAlignment()Lorg/apache/poi/xwpf/usermodel/TextAlignment;
    .locals 2

    .line 502
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    .line 503
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->isSetTextAlignment()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->getTextAlignment()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextAlignment;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextAlignment;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextAlignment$Enum;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextAlignment$Enum;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/xwpf/usermodel/TextAlignment;->valueOf(I)Lorg/apache/poi/xwpf/usermodel/TextAlignment;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/TextAlignment;->AUTO:Lorg/apache/poi/xwpf/usermodel/TextAlignment;

    :goto_1
    return-object v1
.end method

.method public insertNewRun(I)Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    .locals 7
    .param p1, "pos"    # I

    .line 1420
    if-ltz p1, :cond_3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_3

    .line 1424
    const/4 v0, 0x0

    .line 1425
    .local v0, "rPos":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 1426
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    .line 1427
    .local v2, "currRun":Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    instance-of v3, v2, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;

    if-nez v3, :cond_0

    instance-of v3, v2, Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;

    if-nez v3, :cond_0

    .line 1429
    add-int/lit8 v0, v0, 0x1

    .line 1425
    .end local v2    # "currRun":Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1433
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->insertNewR(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v1

    .line 1434
    .local v1, "ctRun":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-direct {v2, v1, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    .line 1438
    .local v2, "newRun":Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 1439
    .local v3, "iPos":I
    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p1, v4, :cond_2

    .line 1440
    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    .line 1441
    .local v4, "oldAtPos":Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 1442
    .local v5, "oldAt":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 1443
    move v3, v5

    .line 1446
    .end local v4    # "oldAtPos":Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    .end local v5    # "oldAt":I
    :cond_2
    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-interface {v4, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1449
    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v4, p1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1451
    return-object v2

    .line 1454
    .end local v0    # "rPos":I
    .end local v1    # "ctRun":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
    .end local v2    # "newRun":Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    .end local v3    # "iPos":I
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isPageBreak()Z
    .locals 4

    .line 820
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    .line 821
    .local v0, "ppr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->isSetPageBreakBefore()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->getPageBreakBefore()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 822
    .local v1, "ctPageBreak":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 823
    return v2

    .line 825
    :cond_1
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->isTruelike(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;Z)Z

    move-result v2

    return v2
.end method

.method public isWordWrap()Z
    .locals 1

    .line 1308
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->isWordWrapped()Z

    move-result v0

    return v0
.end method

.method public isWordWrapped()Z
    .locals 4

    .line 1278
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->isSetWordWrap()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->getWordWrap()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1280
    .local v0, "wordWrap":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1281
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    move-result-object v2

    sget-object v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->ON:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    if-eq v2, v3, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    move-result-object v2

    sget-object v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->TRUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    if-eq v2, v3, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    move-result-object v2

    sget-object v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->X_1:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    if-ne v2, v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    .line 1285
    :cond_3
    return v1
.end method

.method public removeRun(I)Z
    .locals 5
    .param p1, "pos"    # I

    .line 1577
    if-ltz p1, :cond_3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 1579
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    .line 1580
    .local v0, "run":Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    instance-of v1, v0, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;

    if-nez v1, :cond_2

    instance-of v1, v0, Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;

    if-nez v1, :cond_2

    .line 1586
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1587
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1590
    const/4 v1, 0x0

    .line 1591
    .local v1, "rPos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_1

    .line 1592
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    .line 1593
    .local v3, "currRun":Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    instance-of v4, v3, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;

    if-nez v4, :cond_0

    instance-of v4, v3, Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;

    if-nez v4, :cond_0

    .line 1594
    add-int/lit8 v1, v1, 0x1

    .line 1591
    .end local v3    # "currRun":Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1597
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->removeR(I)V

    .line 1598
    const/4 v2, 0x1

    return v2

    .line 1584
    .end local v1    # "rPos":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Removing Field or Hyperlink runs not yet supported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1600
    .end local v0    # "run":Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public searchText(Ljava/lang/String;Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;)Lorg/apache/poi/xwpf/usermodel/TextSegement;
    .locals 23
    .param p1, "searched"    # Ljava/lang/String;
    .param p2, "startPos"    # Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    .line 1467
    move-object/from16 v1, p1

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->getRun()I

    move-result v2

    .line 1468
    .local v2, "startRun":I
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->getText()I

    move-result v3

    .line 1469
    .local v3, "startText":I
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->getChar()I

    move-result v4

    .line 1470
    .local v4, "startChar":I
    const/4 v0, 0x0

    .local v0, "beginRunPos":I
    const/4 v5, 0x0

    .line 1471
    .local v5, "candCharPos":I
    const/4 v6, 0x0

    .line 1473
    .local v6, "newList":Z
    move-object/from16 v7, p0

    iget-object v8, v7, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v8}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getRArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v8

    .line 1474
    .local v8, "rArray":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
    move v9, v2

    .local v9, "runPos":I
    :goto_0
    array-length v10, v8

    if-ge v9, v10, :cond_b

    .line 1475
    const/4 v10, 0x0

    .local v10, "beginTextPos":I
    const/4 v11, 0x0

    .local v11, "beginCharPos":I
    const/4 v12, 0x0

    .local v12, "textPos":I
    const/4 v13, 0x0

    .line 1476
    .local v13, "charPos":I
    aget-object v14, v8, v9

    .line 1477
    .local v14, "ctRun":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
    invoke-interface {v14}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v15

    .line 1478
    .local v15, "c":Lorg/apache/xmlbeans/XmlCursor;
    move/from16 v16, v0

    .end local v0    # "beginRunPos":I
    .local v16, "beginRunPos":I
    const-string v0, "./*"

    invoke-interface {v15, v0}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    .line 1480
    :goto_1
    :try_start_0
    invoke-interface {v15}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1481
    invoke-interface {v15}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 1482
    .local v0, "o":Lorg/apache/xmlbeans/XmlObject;
    move/from16 v17, v5

    .end local v5    # "candCharPos":I
    .local v17, "candCharPos":I
    :try_start_1
    instance-of v5, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    if-eqz v5, :cond_7

    .line 1483
    if-lt v12, v3, :cond_6

    .line 1484
    move-object v5, v0

    check-cast v5, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    invoke-interface {v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;->getStringValue()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 1485
    .local v5, "candidate":Ljava/lang/String;
    if-ne v9, v2, :cond_0

    .line 1486
    move v13, v4

    move/from16 v18, v2

    move v2, v13

    move v13, v11

    move v11, v10

    move v10, v6

    move/from16 v6, v17

    goto :goto_2

    .line 1488
    :cond_0
    const/4 v13, 0x0

    move/from16 v18, v2

    move v2, v13

    move v13, v11

    move v11, v10

    move v10, v6

    move/from16 v6, v17

    .line 1491
    .end local v17    # "candCharPos":I
    .local v2, "charPos":I
    .local v6, "candCharPos":I
    .local v10, "newList":Z
    .local v11, "beginTextPos":I
    .local v13, "beginCharPos":I
    .local v18, "startRun":I
    :goto_2
    move/from16 v19, v3

    .end local v3    # "startText":I
    .local v19, "startText":I
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 1492
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move/from16 v20, v4

    .end local v4    # "startChar":I
    .local v20, "startChar":I
    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v3, v4, :cond_1

    if-nez v6, :cond_1

    .line 1493
    move v3, v12

    .line 1494
    .end local v11    # "beginTextPos":I
    .local v3, "beginTextPos":I
    move v4, v2

    .line 1495
    .end local v13    # "beginCharPos":I
    .local v4, "beginCharPos":I
    move v11, v9

    .line 1496
    .end local v16    # "beginRunPos":I
    .local v11, "beginRunPos":I
    const/4 v10, 0x1

    move v13, v4

    move/from16 v22, v11

    move v11, v3

    move/from16 v3, v22

    goto :goto_3

    .line 1498
    .end local v3    # "beginTextPos":I
    .end local v4    # "beginCharPos":I
    .local v11, "beginTextPos":I
    .restart local v13    # "beginCharPos":I
    .restart local v16    # "beginRunPos":I
    :cond_1
    move/from16 v3, v16

    .end local v16    # "beginRunPos":I
    .local v3, "beginRunPos":I
    :goto_3
    :try_start_4
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move-object/from16 v21, v5

    .end local v5    # "candidate":Ljava/lang/String;
    .local v21, "candidate":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_3

    .line 1499
    add-int/lit8 v4, v6, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1500
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1501
    :cond_2
    if-eqz v10, :cond_4

    .line 1502
    new-instance v4, Lorg/apache/poi/xwpf/usermodel/TextSegement;

    invoke-direct {v4}, Lorg/apache/poi/xwpf/usermodel/TextSegement;-><init>()V

    .line 1503
    .local v4, "segement":Lorg/apache/poi/xwpf/usermodel/TextSegement;
    invoke-virtual {v4, v3}, Lorg/apache/poi/xwpf/usermodel/TextSegement;->setBeginRun(I)V

    .line 1504
    invoke-virtual {v4, v11}, Lorg/apache/poi/xwpf/usermodel/TextSegement;->setBeginText(I)V

    .line 1505
    invoke-virtual {v4, v13}, Lorg/apache/poi/xwpf/usermodel/TextSegement;->setBeginChar(I)V

    .line 1506
    invoke-virtual {v4, v9}, Lorg/apache/poi/xwpf/usermodel/TextSegement;->setEndRun(I)V

    .line 1507
    invoke-virtual {v4, v12}, Lorg/apache/poi/xwpf/usermodel/TextSegement;->setEndText(I)V

    .line 1508
    invoke-virtual {v4, v2}, Lorg/apache/poi/xwpf/usermodel/TextSegement;->setEndChar(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1509
    nop

    .line 1526
    invoke-interface {v15}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object v4

    .line 1512
    .end local v4    # "segement":Lorg/apache/poi/xwpf/usermodel/TextSegement;
    :cond_3
    const/4 v4, 0x0

    move v6, v4

    .line 1491
    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    move/from16 v16, v3

    move/from16 v3, v19

    move/from16 v4, v20

    move-object/from16 v5, v21

    goto :goto_2

    .line 1526
    .end local v0    # "o":Lorg/apache/xmlbeans/XmlObject;
    .end local v21    # "candidate":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move/from16 v16, v3

    move v5, v6

    move v6, v10

    move v10, v11

    move v11, v13

    move v13, v2

    goto/16 :goto_8

    .end local v3    # "beginRunPos":I
    .restart local v16    # "beginRunPos":I
    :catchall_1
    move-exception v0

    move v5, v6

    move v6, v10

    move v10, v11

    move v11, v13

    move v13, v2

    goto/16 :goto_8

    .line 1491
    .end local v20    # "startChar":I
    .restart local v0    # "o":Lorg/apache/xmlbeans/XmlObject;
    .local v4, "startChar":I
    .restart local v5    # "candidate":Ljava/lang/String;
    :cond_5
    move/from16 v20, v4

    move-object/from16 v21, v5

    .end local v4    # "startChar":I
    .end local v5    # "candidate":Ljava/lang/String;
    .restart local v20    # "startChar":I
    .restart local v21    # "candidate":Ljava/lang/String;
    move v5, v6

    move v6, v10

    move v10, v11

    move v11, v13

    move v13, v2

    goto :goto_5

    .line 1526
    .end local v0    # "o":Lorg/apache/xmlbeans/XmlObject;
    .end local v20    # "startChar":I
    .end local v21    # "candidate":Ljava/lang/String;
    .restart local v4    # "startChar":I
    :catchall_2
    move-exception v0

    move/from16 v20, v4

    move v5, v6

    move v6, v10

    move v10, v11

    move v11, v13

    move v13, v2

    .end local v4    # "startChar":I
    .restart local v20    # "startChar":I
    goto/16 :goto_8

    .line 1483
    .end local v18    # "startRun":I
    .end local v19    # "startText":I
    .end local v20    # "startChar":I
    .restart local v0    # "o":Lorg/apache/xmlbeans/XmlObject;
    .local v2, "startRun":I
    .local v3, "startText":I
    .restart local v4    # "startChar":I
    .local v6, "newList":Z
    .local v10, "beginTextPos":I
    .local v11, "beginCharPos":I
    .local v13, "charPos":I
    .restart local v17    # "candCharPos":I
    :cond_6
    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    .end local v2    # "startRun":I
    .end local v3    # "startText":I
    .end local v4    # "startChar":I
    .restart local v18    # "startRun":I
    .restart local v19    # "startText":I
    .restart local v20    # "startChar":I
    move/from16 v5, v17

    .line 1516
    .end local v17    # "candCharPos":I
    .local v5, "candCharPos":I
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 1517
    .end local v5    # "candCharPos":I
    .end local v18    # "startRun":I
    .end local v19    # "startText":I
    .end local v20    # "startChar":I
    .restart local v2    # "startRun":I
    .restart local v3    # "startText":I
    .restart local v4    # "startChar":I
    .restart local v17    # "candCharPos":I
    :cond_7
    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    .end local v2    # "startRun":I
    .end local v3    # "startText":I
    .end local v4    # "startChar":I
    .restart local v18    # "startRun":I
    .restart local v19    # "startText":I
    .restart local v20    # "startChar":I
    :try_start_5
    instance-of v2, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTProofErr;

    if-eqz v2, :cond_8

    .line 1518
    invoke-interface {v15}, Lorg/apache/xmlbeans/XmlCursor;->removeXml()Z

    goto :goto_6

    .line 1519
    :cond_8
    instance-of v2, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v2, :cond_9

    .line 1524
    .end local v0    # "o":Lorg/apache/xmlbeans/XmlObject;
    :goto_6
    move/from16 v5, v17

    goto :goto_7

    .line 1522
    .restart local v0    # "o":Lorg/apache/xmlbeans/XmlObject;
    :cond_9
    const/4 v5, 0x0

    .line 1524
    .end local v0    # "o":Lorg/apache/xmlbeans/XmlObject;
    .end local v17    # "candCharPos":I
    .restart local v5    # "candCharPos":I
    :goto_7
    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    goto/16 :goto_1

    .line 1526
    .end local v5    # "candCharPos":I
    .restart local v17    # "candCharPos":I
    :catchall_3
    move-exception v0

    move/from16 v5, v17

    goto :goto_8

    .end local v18    # "startRun":I
    .end local v19    # "startText":I
    .end local v20    # "startChar":I
    .restart local v2    # "startRun":I
    .restart local v3    # "startText":I
    .restart local v4    # "startChar":I
    :catchall_4
    move-exception v0

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v5, v17

    .end local v2    # "startRun":I
    .end local v3    # "startText":I
    .end local v4    # "startChar":I
    .restart local v18    # "startRun":I
    .restart local v19    # "startText":I
    .restart local v20    # "startChar":I
    goto :goto_8

    .end local v17    # "candCharPos":I
    .end local v18    # "startRun":I
    .end local v19    # "startText":I
    .end local v20    # "startChar":I
    .restart local v2    # "startRun":I
    .restart local v3    # "startText":I
    .restart local v4    # "startChar":I
    .restart local v5    # "candCharPos":I
    :cond_a
    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v17, v5

    .end local v2    # "startRun":I
    .end local v3    # "startText":I
    .end local v4    # "startChar":I
    .end local v5    # "candCharPos":I
    .restart local v17    # "candCharPos":I
    .restart local v18    # "startRun":I
    .restart local v19    # "startText":I
    .restart local v20    # "startChar":I
    invoke-interface {v15}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 1527
    nop

    .line 1474
    .end local v10    # "beginTextPos":I
    .end local v11    # "beginCharPos":I
    .end local v12    # "textPos":I
    .end local v13    # "charPos":I
    .end local v14    # "ctRun":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
    .end local v15    # "c":Lorg/apache/xmlbeans/XmlCursor;
    add-int/lit8 v9, v9, 0x1

    move/from16 v0, v16

    move/from16 v5, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    goto/16 :goto_0

    .line 1526
    .end local v17    # "candCharPos":I
    .end local v18    # "startRun":I
    .end local v19    # "startText":I
    .end local v20    # "startChar":I
    .restart local v2    # "startRun":I
    .restart local v3    # "startText":I
    .restart local v4    # "startChar":I
    .restart local v5    # "candCharPos":I
    .restart local v10    # "beginTextPos":I
    .restart local v11    # "beginCharPos":I
    .restart local v12    # "textPos":I
    .restart local v13    # "charPos":I
    .restart local v14    # "ctRun":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
    .restart local v15    # "c":Lorg/apache/xmlbeans/XmlCursor;
    :catchall_5
    move-exception v0

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v17, v5

    .end local v2    # "startRun":I
    .end local v3    # "startText":I
    .end local v4    # "startChar":I
    .restart local v18    # "startRun":I
    .restart local v19    # "startText":I
    .restart local v20    # "startChar":I
    :goto_8
    invoke-interface {v15}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw v0

    .line 1474
    .end local v10    # "beginTextPos":I
    .end local v11    # "beginCharPos":I
    .end local v12    # "textPos":I
    .end local v13    # "charPos":I
    .end local v14    # "ctRun":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
    .end local v15    # "c":Lorg/apache/xmlbeans/XmlCursor;
    .end local v16    # "beginRunPos":I
    .end local v18    # "startRun":I
    .end local v19    # "startText":I
    .end local v20    # "startChar":I
    .local v0, "beginRunPos":I
    .restart local v2    # "startRun":I
    .restart local v3    # "startText":I
    .restart local v4    # "startChar":I
    :cond_b
    move/from16 v16, v0

    .line 1529
    .end local v0    # "beginRunPos":I
    .end local v9    # "runPos":I
    .restart local v16    # "beginRunPos":I
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAlignment(Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;)V
    .locals 3
    .param p1, "align"    # Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    .line 463
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    .line 464
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->isSetJc()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->getJc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJc;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->addNewJc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJc;

    move-result-object v1

    .line 465
    .local v1, "jc":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJc;
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->getValue()I

    move-result v2

    invoke-static {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;

    move-result-object v2

    .line 466
    .local v2, "en":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;
    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJc;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;)V

    .line 467
    return-void
.end method

.method public setBorderBetween(Lorg/apache/poi/xwpf/usermodel/Borders;)V
    .locals 4
    .param p1, "border"    # Lorg/apache/poi/xwpf/usermodel/Borders;

    .line 795
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPBrd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;

    move-result-object v0

    .line 796
    .local v0, "ct":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->isSetBetween()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->getBetween()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->addNewBetween()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v1

    .line 797
    .local v1, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result v2

    sget-object v3, Lorg/apache/poi/xwpf/usermodel/Borders;->NONE:Lorg/apache/poi/xwpf/usermodel/Borders;

    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 798
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->unsetBetween()V

    goto :goto_1

    .line 800
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result v2

    invoke-static {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;)V

    .line 802
    :goto_1
    return-void
.end method

.method public setBorderBottom(Lorg/apache/poi/xwpf/usermodel/Borders;)V
    .locals 4
    .param p1, "border"    # Lorg/apache/poi/xwpf/usermodel/Borders;

    .line 641
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPBrd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;

    move-result-object v0

    .line 642
    .local v0, "ct":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->isSetBottom()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->getBottom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->addNewBottom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v1

    .line 643
    .local v1, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result v2

    sget-object v3, Lorg/apache/poi/xwpf/usermodel/Borders;->NONE:Lorg/apache/poi/xwpf/usermodel/Borders;

    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 644
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->unsetBottom()V

    goto :goto_1

    .line 646
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result v2

    invoke-static {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;)V

    .line 648
    :goto_1
    return-void
.end method

.method public setBorderLeft(Lorg/apache/poi/xwpf/usermodel/Borders;)V
    .locals 4
    .param p1, "border"    # Lorg/apache/poi/xwpf/usermodel/Borders;

    .line 691
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPBrd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;

    move-result-object v0

    .line 692
    .local v0, "ct":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->isSetLeft()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->getLeft()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->addNewLeft()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v1

    .line 693
    .local v1, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result v2

    sget-object v3, Lorg/apache/poi/xwpf/usermodel/Borders;->NONE:Lorg/apache/poi/xwpf/usermodel/Borders;

    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 694
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->unsetLeft()V

    goto :goto_1

    .line 696
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result v2

    invoke-static {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;)V

    .line 698
    :goto_1
    return-void
.end method

.method public setBorderRight(Lorg/apache/poi/xwpf/usermodel/Borders;)V
    .locals 4
    .param p1, "border"    # Lorg/apache/poi/xwpf/usermodel/Borders;

    .line 741
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPBrd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;

    move-result-object v0

    .line 742
    .local v0, "ct":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->isSetRight()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->getRight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->addNewRight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v1

    .line 743
    .local v1, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result v2

    sget-object v3, Lorg/apache/poi/xwpf/usermodel/Borders;->NONE:Lorg/apache/poi/xwpf/usermodel/Borders;

    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 744
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->unsetRight()V

    goto :goto_1

    .line 746
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result v2

    invoke-static {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;)V

    .line 748
    :goto_1
    return-void
.end method

.method public setBorderTop(Lorg/apache/poi/xwpf/usermodel/Borders;)V
    .locals 4
    .param p1, "border"    # Lorg/apache/poi/xwpf/usermodel/Borders;

    .line 582
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPBrd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;

    move-result-object v0

    .line 583
    .local v0, "ct":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;
    if-eqz v0, :cond_2

    .line 587
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->isSetTop()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->getTop()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->addNewTop()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v1

    .line 588
    .local v1, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result v2

    sget-object v3, Lorg/apache/poi/xwpf/usermodel/Borders;->NONE:Lorg/apache/poi/xwpf/usermodel/Borders;

    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 589
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->unsetTop()V

    goto :goto_1

    .line 591
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result v2

    invoke-static {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;)V

    .line 593
    :goto_1
    return-void

    .line 584
    .end local v1    # "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "invalid paragraph state"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setFirstLineIndent(I)V
    .locals 0
    .param p1, "first"    # I

    .line 1265
    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setIndentationFirstLine(I)V

    .line 1266
    return-void
.end method

.method public setFontAlignment(I)V
    .locals 1
    .param p1, "align"    # I

    .line 479
    invoke-static {p1}, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->valueOf(I)Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    move-result-object v0

    .line 480
    .local v0, "pAlign":Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;
    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setAlignment(Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;)V

    .line 481
    return-void
.end method

.method public setIndentFromLeft(I)V
    .locals 0
    .param p1, "dxaLeft"    # I

    .line 1245
    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setIndentationLeft(I)V

    .line 1246
    return-void
.end method

.method public setIndentFromRight(I)V
    .locals 0
    .param p1, "dxaRight"    # I

    .line 1255
    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setIndentationRight(I)V

    .line 1256
    return-void
.end method

.method public setIndentationFirstLine(I)V
    .locals 4
    .param p1, "indentation"    # I

    .line 1233
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTInd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    move-result-object v0

    .line 1234
    .local v0, "indent":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;
    new-instance v1, Ljava/math/BigInteger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 1235
    .local v1, "bi":Ljava/math/BigInteger;
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->setFirstLine(Ljava/math/BigInteger;)V

    .line 1236
    return-void
.end method

.method public setIndentationHanging(I)V
    .locals 4
    .param p1, "indentation"    # I

    .line 1192
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTInd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    move-result-object v0

    .line 1193
    .local v0, "indent":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;
    new-instance v1, Ljava/math/BigInteger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 1194
    .local v1, "bi":Ljava/math/BigInteger;
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->setHanging(Ljava/math/BigInteger;)V

    .line 1195
    return-void
.end method

.method public setIndentationLeft(I)V
    .locals 4
    .param p1, "indentation"    # I

    .line 1115
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTInd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    move-result-object v0

    .line 1116
    .local v0, "indent":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;
    new-instance v1, Ljava/math/BigInteger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 1117
    .local v1, "bi":Ljava/math/BigInteger;
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->setLeft(Ljava/math/BigInteger;)V

    .line 1118
    return-void
.end method

.method public setIndentationRight(I)V
    .locals 4
    .param p1, "indentation"    # I

    .line 1154
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTInd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    move-result-object v0

    .line 1155
    .local v0, "indent":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;
    new-instance v1, Ljava/math/BigInteger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 1156
    .local v1, "bi":Ljava/math/BigInteger;
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->setRight(Ljava/math/BigInteger;)V

    .line 1157
    return-void
.end method

.method public setNumID(Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "numPos"    # Ljava/math/BigInteger;

    .line 246
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    .line 249
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->getNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    move-result-object v0

    if-nez v0, :cond_1

    .line 250
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->addNewNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    .line 252
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->getNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;->getNumId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v0

    if-nez v0, :cond_2

    .line 253
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->getNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;->addNewNumId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    .line 255
    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->getNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;->getNumId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->setVal(Ljava/math/BigInteger;)V

    .line 256
    return-void
.end method

.method public setPageBreak(Z)V
    .locals 3
    .param p1, "pageBreak"    # Z

    .line 863
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    .line 864
    .local v0, "ppr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->isSetPageBreakBefore()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->getPageBreakBefore()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->addNewPageBreakBefore()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v1

    .line 866
    .local v1, "ctPageBreak":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
    :goto_0
    if-eqz p1, :cond_1

    .line 867
    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->TRUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    goto :goto_1

    .line 869
    :cond_1
    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->FALSE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    .line 871
    :goto_1
    return-void
.end method

.method public setSpacingAfter(I)V
    .locals 4
    .param p1, "spaces"    # I

    .line 897
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object v0

    .line 898
    .local v0, "spacing":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;
    if-eqz v0, :cond_0

    .line 899
    new-instance v1, Ljava/math/BigInteger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 900
    .local v1, "bi":Ljava/math/BigInteger;
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->setAfter(Ljava/math/BigInteger;)V

    .line 903
    .end local v1    # "bi":Ljava/math/BigInteger;
    :cond_0
    return-void
.end method

.method public setSpacingAfterLines(I)V
    .locals 4
    .param p1, "spaces"    # I

    .line 935
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object v0

    .line 936
    .local v0, "spacing":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;
    new-instance v1, Ljava/math/BigInteger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 937
    .local v1, "bi":Ljava/math/BigInteger;
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->setAfterLines(Ljava/math/BigInteger;)V

    .line 938
    return-void
.end method

.method public setSpacingBefore(I)V
    .locals 4
    .param p1, "spaces"    # I

    .line 963
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object v0

    .line 964
    .local v0, "spacing":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;
    new-instance v1, Ljava/math/BigInteger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 965
    .local v1, "bi":Ljava/math/BigInteger;
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->setBefore(Ljava/math/BigInteger;)V

    .line 966
    return-void
.end method

.method public setSpacingBeforeLines(I)V
    .locals 4
    .param p1, "spaces"    # I

    .line 994
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object v0

    .line 995
    .local v0, "spacing":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;
    new-instance v1, Ljava/math/BigInteger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 996
    .local v1, "bi":Ljava/math/BigInteger;
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->setBeforeLines(Ljava/math/BigInteger;)V

    .line 997
    return-void
.end method

.method public setSpacingBetween(D)V
    .locals 1
    .param p1, "spacing"    # D

    .line 1079
    sget-object v0, Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;->AUTO:Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setSpacingBetween(DLorg/apache/poi/xwpf/usermodel/LineSpacingRule;)V

    .line 1080
    return-void
.end method

.method public setSpacingBetween(DLorg/apache/poi/xwpf/usermodel/LineSpacingRule;)V
    .locals 4
    .param p1, "spacing"    # D
    .param p3, "rule"    # Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;

    .line 1062
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object v1

    .line 1063
    .local v1, "ctSp":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;
    sget-object v2, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph$1;->$SwitchMap$org$apache$poi$xwpf$usermodel$LineSpacingRule:[I

    invoke-virtual {p3}, Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_0

    .line 1068
    new-instance v0, Ljava/math/BigInteger;

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    mul-double v2, v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->setLine(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 1065
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    const-wide/high16 v2, 0x406e000000000000L    # 240.0

    mul-double v2, v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->setLine(Ljava/math/BigInteger;)V

    .line 1066
    nop

    .line 1070
    :goto_0
    invoke-virtual {p3}, Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;->getValue()I

    move-result v0

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->setLineRule(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;)V

    .line 1071
    return-void
.end method

.method public setSpacingLineRule(Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;)V
    .locals 2
    .param p1, "rule"    # Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;

    .line 1025
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object v0

    .line 1026
    .local v0, "spacing":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;->getValue()I

    move-result v1

    invoke-static {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->setLineRule(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;)V

    .line 1027
    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 2
    .param p1, "newStyle"    # Ljava/lang/String;

    .line 1332
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    .line 1333
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->getPStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->getPStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->addNewPStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v1

    .line 1334
    .local v1, "style":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
    :goto_0
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->setVal(Ljava/lang/String;)V

    .line 1335
    return-void
.end method

.method public setVerticalAlignment(Lorg/apache/poi/xwpf/usermodel/TextAlignment;)V
    .locals 3
    .param p1, "valign"    # Lorg/apache/poi/xwpf/usermodel/TextAlignment;

    .line 528
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    .line 529
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->isSetTextAlignment()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->getTextAlignment()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextAlignment;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->addNewTextAlignment()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextAlignment;

    move-result-object v1

    .line 531
    .local v1, "textAlignment":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextAlignment;
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/TextAlignment;->getValue()I

    move-result v2

    invoke-static {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextAlignment$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextAlignment$Enum;

    move-result-object v2

    .line 533
    .local v2, "en":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextAlignment$Enum;
    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextAlignment;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextAlignment$Enum;)V

    .line 534
    return-void
.end method

.method public setWordWrap(Z)V
    .locals 0
    .param p1, "wrap"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1313
    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setWordWrapped(Z)V

    .line 1314
    return-void
.end method

.method public setWordWrapped(Z)V
    .locals 2
    .param p1, "wrap"    # Z

    .line 1298
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->isSetWordWrap()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->getWordWrap()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->addNewWordWrap()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    .line 1300
    .local v0, "wordWrap":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
    :goto_0
    if-eqz p1, :cond_1

    .line 1301
    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->TRUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    goto :goto_1

    .line 1303
    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->unsetVal()V

    .line 1305
    :goto_1
    return-void
.end method
