.class public Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;
.super Ljava/lang/Object;
.source "XWPFSDTContent.java"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/ISDTContent;


# instance fields
.field private bodyElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/ISDTContents;",
            ">;"
        }
    .end annotation
.end field

.field private contentControls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFSDT;",
            ">;"
        }
    .end annotation
.end field

.field private paragraphs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
            ">;"
        }
    .end annotation
.end field

.field private runs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFRun;",
            ">;"
        }
    .end annotation
.end field

.field private tables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentBlock;Lorg/apache/poi/xwpf/usermodel/IBody;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V
    .locals 4
    .param p1, "block"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentBlock;
    .param p2, "part"    # Lorg/apache/poi/xwpf/usermodel/IBody;
    .param p3, "parent"    # Lorg/apache/poi/xwpf/usermodel/IRunBody;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->paragraphs:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->tables:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->runs:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->contentControls:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    .line 58
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentBlock;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    .line 59
    .local v0, "cursor":Lorg/apache/xmlbeans/XmlCursor;
    const-string v1, "./*"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    .line 60
    :goto_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 61
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    .line 62
    .local v1, "o":Lorg/apache/xmlbeans/XmlObject;
    instance-of v2, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-eqz v2, :cond_0

    .line 63
    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-object v3, v1

    check-cast v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-direct {v2, v3, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 64
    .local v2, "p":Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->paragraphs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .end local v2    # "p":Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    goto :goto_2

    :cond_0
    instance-of v2, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-eqz v2, :cond_1

    .line 67
    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    move-object v3, v1

    check-cast v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-direct {v2, v3, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 68
    .local v2, "t":Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->tables:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    .end local v2    # "t":Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    goto :goto_2

    :cond_1
    instance-of v2, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    if-eqz v2, :cond_2

    .line 71
    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    move-object v3, v1

    check-cast v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    invoke-direct {v2, v3, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 72
    .local v2, "c":Lorg/apache/poi/xwpf/usermodel/XWPFSDT;
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->contentControls:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v2    # "c":Lorg/apache/poi/xwpf/usermodel/XWPFSDT;
    goto :goto_1

    .line 74
    :cond_2
    instance-of v2, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    if-eqz v2, :cond_3

    .line 75
    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    move-object v3, v1

    check-cast v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-direct {v2, v3, p3}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    .line 76
    .local v2, "run":Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->runs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 74
    .end local v2    # "run":Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    :cond_3
    :goto_1
    nop

    .line 79
    .end local v1    # "o":Lorg/apache/xmlbeans/XmlObject;
    :goto_2
    goto :goto_0

    .line 80
    :cond_4
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentRun;Lorg/apache/poi/xwpf/usermodel/IBody;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V
    .locals 6
    .param p1, "sdtRun"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentRun;
    .param p2, "part"    # Lorg/apache/poi/xwpf/usermodel/IBody;
    .param p3, "parent"    # Lorg/apache/poi/xwpf/usermodel/IRunBody;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->paragraphs:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->tables:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->runs:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->contentControls:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    .line 50
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentRun;->getRArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v0

    .local v0, "arr$":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 51
    .local v3, "ctr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
    new-instance v4, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-direct {v4, v3, p3}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    .line 52
    .local v4, "run":Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->runs:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .end local v3    # "ctr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
    .end local v4    # "run":Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    .end local v0    # "arr$":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method

.method private appendParagraph(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "paragraph"    # Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .param p2, "text"    # Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getRuns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    .line 129
    .local v1, "run":Lorg/apache/poi/xwpf/usermodel/IRunElement;
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 131
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "run":Lorg/apache/poi/xwpf/usermodel/IRunElement;
    :cond_0
    return-void
.end method

.method private appendTable(Lorg/apache/poi/xwpf/usermodel/XWPFTable;Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "table"    # Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .param p2, "text"    # Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getRows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    .line 111
    .local v1, "row":Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;
    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getTableICells()Ljava/util/List;

    move-result-object v2

    .line 112
    .local v2, "cells":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xwpf/usermodel/ICell;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 113
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xwpf/usermodel/ICell;

    .line 114
    .local v4, "cell":Lorg/apache/poi/xwpf/usermodel/ICell;
    instance-of v5, v4, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    if-eqz v5, :cond_0

    .line 115
    move-object v5, v4

    check-cast v5, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    invoke-virtual {v5}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->getTextRecursively()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 116
    :cond_0
    instance-of v5, v4, Lorg/apache/poi/xwpf/usermodel/XWPFSDTCell;

    if-eqz v5, :cond_1

    .line 117
    move-object v5, v4

    check-cast v5, Lorg/apache/poi/xwpf/usermodel/XWPFSDTCell;

    invoke-virtual {v5}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTCell;->getContent()Lorg/apache/poi/xwpf/usermodel/ISDTContent;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/poi/xwpf/usermodel/ISDTContent;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_2

    .line 120
    const-string v5, "\t"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .end local v4    # "cell":Lorg/apache/poi/xwpf/usermodel/ICell;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 123
    .end local v3    # "i":I
    :cond_3
    const/16 v3, 0xa

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    .end local v1    # "row":Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;
    .end local v2    # "cells":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xwpf/usermodel/ICell;>;"
    goto :goto_0

    .line 125
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_4
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 6

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v0, "text":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 86
    .local v1, "addNewLine":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 87
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 88
    .local v3, "o":Ljava/lang/Object;
    instance-of v4, v3, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    if-eqz v4, :cond_0

    .line 89
    move-object v4, v3

    check-cast v4, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-direct {p0, v4, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->appendParagraph(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Ljava/lang/StringBuilder;)V

    .line 90
    const/4 v1, 0x1

    goto :goto_1

    .line 91
    :cond_0
    instance-of v4, v3, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    if-eqz v4, :cond_1

    .line 92
    move-object v4, v3

    check-cast v4, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-direct {p0, v4, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->appendTable(Lorg/apache/poi/xwpf/usermodel/XWPFTable;Ljava/lang/StringBuilder;)V

    .line 93
    const/4 v1, 0x1

    goto :goto_1

    .line 94
    :cond_1
    instance-of v4, v3, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    if-eqz v4, :cond_2

    .line 95
    move-object v4, v3

    check-cast v4, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    invoke-virtual {v4}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->getContent()Lorg/apache/poi/xwpf/usermodel/ISDTContent;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/poi/xwpf/usermodel/ISDTContent;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const/4 v1, 0x1

    goto :goto_1

    .line 97
    :cond_2
    instance-of v4, v3, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    if-eqz v4, :cond_3

    .line 98
    move-object v4, v3

    check-cast v4, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    const/4 v1, 0x0

    .line 101
    :cond_3
    :goto_1
    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    if-ge v2, v5, :cond_4

    .line 102
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .end local v3    # "o":Ljava/lang/Object;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 134
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
