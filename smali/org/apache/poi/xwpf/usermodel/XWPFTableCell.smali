.class public Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;
.super Ljava/lang/Object;
.source "XWPFTableCell.java"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/IBody;
.implements Lorg/apache/poi/xwpf/usermodel/ICell;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;
    }
.end annotation


# static fields
.field private static alignMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc$Enum;",
            ">;"
        }
    .end annotation
.end field

.field private static stVertAlignTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected bodyElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/IBodyElement;",
            ">;"
        }
    .end annotation
.end field

.field private final ctTc:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

.field protected paragraphs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
            ">;"
        }
    .end annotation
.end field

.field protected part:Lorg/apache/poi/xwpf/usermodel/IBody;

.field private tableRow:Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

.field protected tables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 52
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->alignMap:Ljava/util/EnumMap;

    .line 53
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;->TOP:Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;

    const/4 v2, 0x1

    invoke-static {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc$Enum;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->alignMap:Ljava/util/EnumMap;

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;->CENTER:Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;

    const/4 v3, 0x2

    invoke-static {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc$Enum;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->alignMap:Ljava/util/EnumMap;

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;->BOTH:Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;

    const/4 v4, 0x3

    invoke-static {v4}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc$Enum;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->alignMap:Ljava/util/EnumMap;

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;->BOTTOM:Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;

    const/4 v5, 0x4

    invoke-static {v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc$Enum;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->stVertAlignTypeMap:Ljava/util/HashMap;

    .line 59
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;->TOP:Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->stVertAlignTypeMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;->CENTER:Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->stVertAlignTypeMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;->BOTH:Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->stVertAlignTypeMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;->BOTTOM:Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;Lorg/apache/poi/xwpf/usermodel/IBody;)V
    .locals 5
    .param p1, "cell"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;
    .param p2, "tableRow"    # Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;
    .param p3, "part"    # Lorg/apache/poi/xwpf/usermodel/IBody;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->paragraphs:Ljava/util/List;

    .line 68
    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->tables:Ljava/util/List;

    .line 69
    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->bodyElements:Ljava/util/List;

    .line 72
    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->tableRow:Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    .line 78
    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->ctTc:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    .line 79
    iput-object p3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    .line 80
    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->tableRow:Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    .line 82
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->sizeOfPArray()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 83
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->addNewP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    .line 84
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->bodyElements:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->paragraphs:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->tables:Ljava/util/List;

    .line 88
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    .line 89
    .local v0, "cursor":Lorg/apache/xmlbeans/XmlCursor;
    const-string v1, "./*"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    .line 90
    :goto_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 91
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    .line 92
    .local v1, "o":Lorg/apache/xmlbeans/XmlObject;
    instance-of v2, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-eqz v2, :cond_1

    .line 93
    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-object v3, v1

    check-cast v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-direct {v2, v3, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 94
    .local v2, "p":Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->paragraphs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->bodyElements:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .end local v2    # "p":Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    :cond_1
    instance-of v2, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-eqz v2, :cond_2

    .line 98
    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    move-object v3, v1

    check-cast v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-direct {v2, v3, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 99
    .local v2, "t":Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->tables:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->bodyElements:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .end local v2    # "t":Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    :cond_2
    instance-of v2, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    if-eqz v2, :cond_3

    .line 103
    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    move-object v3, v1

    check-cast v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    invoke-direct {v2, v3, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 104
    .local v2, "c":Lorg/apache/poi/xwpf/usermodel/XWPFSDT;
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->bodyElements:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    .end local v2    # "c":Lorg/apache/poi/xwpf/usermodel/XWPFSDT;
    :cond_3
    instance-of v2, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;

    if-eqz v2, :cond_4

    .line 107
    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    move-object v3, v1

    check-cast v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;

    invoke-direct {v2, v3, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 108
    .restart local v2    # "c":Lorg/apache/poi/xwpf/usermodel/XWPFSDT;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->getContent()Lorg/apache/poi/xwpf/usermodel/ISDTContent;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/poi/xwpf/usermodel/ISDTContent;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 109
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->bodyElements:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .end local v1    # "o":Lorg/apache/xmlbeans/XmlObject;
    .end local v2    # "c":Lorg/apache/poi/xwpf/usermodel/XWPFSDT;
    :cond_4
    goto :goto_0

    .line 112
    :cond_5
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 113
    return-void
.end method

.method private appendBodyElementText(Ljava/lang/StringBuffer;Lorg/apache/poi/xwpf/usermodel/IBodyElement;Z)V
    .locals 9
    .param p1, "text"    # Ljava/lang/StringBuffer;
    .param p2, "e"    # Lorg/apache/poi/xwpf/usermodel/IBodyElement;
    .param p3, "isLast"    # Z

    .line 448
    instance-of v0, p2, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    const/16 v1, 0x9

    if-eqz v0, :cond_0

    .line 449
    move-object v0, p2

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 450
    if-nez p3, :cond_7

    .line 451
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 453
    :cond_0
    instance-of v0, p2, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    if-eqz v0, :cond_5

    .line 454
    move-object v0, p2

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    .line 455
    .local v0, "eTable":Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getRows()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    .line 456
    .local v2, "row":Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;
    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getTableCells()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    .line 457
    .local v4, "cell":Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;
    invoke-virtual {v4}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->getBodyElements()Ljava/util/List;

    move-result-object v5

    .line 458
    .local v5, "localBodyElements":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xwpf/usermodel/IBodyElement;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 459
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-ne v6, v7, :cond_1

    goto :goto_3

    :cond_1
    const/4 v8, 0x0

    :goto_3
    move v7, v8

    .line 460
    .local v7, "localIsLast":Z
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/xwpf/usermodel/IBodyElement;

    invoke-direct {p0, p1, v8, v7}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->appendBodyElementText(Ljava/lang/StringBuffer;Lorg/apache/poi/xwpf/usermodel/IBodyElement;Z)V

    .line 458
    .end local v7    # "localIsLast":Z
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 462
    .end local v4    # "cell":Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;
    .end local v5    # "localBodyElements":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xwpf/usermodel/IBodyElement;>;"
    .end local v6    # "i":I
    :cond_2
    goto :goto_1

    .end local v2    # "row":Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    goto :goto_0

    .line 465
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    if-nez p3, :cond_6

    .line 466
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 468
    .end local v0    # "eTable":Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    :cond_5
    instance-of v0, p2, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    if-eqz v0, :cond_6

    .line 469
    move-object v0, p2

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->getContent()Lorg/apache/poi/xwpf/usermodel/ISDTContent;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/xwpf/usermodel/ISDTContent;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 470
    if-nez p3, :cond_7

    .line 471
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 468
    :cond_6
    :goto_4
    nop

    .line 474
    :cond_7
    :goto_5
    return-void
.end method

.method private isCursorInTableCell(Lorg/apache/xmlbeans/XmlCursor;)Z
    .locals 3
    .param p1, "cursor"    # Lorg/apache/xmlbeans/XmlCursor;

    .line 340
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    .line 341
    .local v0, "verify":Lorg/apache/xmlbeans/XmlCursor;
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    .line 342
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->ctTc:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 343
    .local v1, "result":Z
    :goto_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 344
    return v1
.end method


# virtual methods
.method public addParagraph()Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 2

    .line 149
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->ctTc:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->addNewP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 150
    .local v0, "p":Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->addParagraph(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)V

    .line 151
    return-object v0
.end method

.method public addParagraph(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)V
    .locals 1
    .param p1, "p"    # Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    .line 160
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->paragraphs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    return-void
.end method

.method public getBodyElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/IBodyElement;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->bodyElements:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCTTc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 117
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->ctTc:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    return-object v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 4

    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "color":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->ctTc:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->getTcPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPr;

    move-result-object v1

    .line 203
    .local v1, "tcpr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPr;
    if-eqz v1, :cond_0

    .line 204
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPr;->getShd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;

    move-result-object v2

    .line 205
    .local v2, "ctshd":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;
    if-eqz v2, :cond_0

    .line 206
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;->xgetFill()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHexColor;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHexColor;->getStringValue()Ljava/lang/String;

    move-result-object v0

    .line 209
    .end local v2    # "ctshd":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;
    :cond_0
    return-object v0
.end method

.method public getParagraph(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 3
    .param p1, "p"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    .line 183
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->paragraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    .line 184
    .local v1, "paragraph":Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    return-object v1

    .end local v1    # "paragraph":Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    :cond_0
    goto :goto_0

    .line 188
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParagraphArray(I)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 1
    .param p1, "pos"    # I

    .line 351
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->paragraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 352
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->paragraphs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    return-object v0

    .line 354
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParagraphs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->paragraphs:Ljava/util/List;

    return-object v0
.end method

.method public getPart()Lorg/apache/poi/POIXMLDocumentPart;
    .locals 1

    .line 363
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->tableRow:Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getTable()Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    return-object v0
.end method

.method public getPartType()Lorg/apache/poi/xwpf/usermodel/BodyType;
    .locals 1

    .line 370
    sget-object v0, Lorg/apache/poi/xwpf/usermodel/BodyType;->TABLECELL:Lorg/apache/poi/xwpf/usermodel/BodyType;

    return-object v0
.end method

.method public getTable(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 2
    .param p1, "ctTable"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    .line 379
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->tables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 380
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->getTables()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getCTTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object v1

    if-ne v1, p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->getTables()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    return-object v1

    .line 379
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTableArray(I)Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 1
    .param p1, "pos"    # I

    .line 389
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->tables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 390
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->tables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    return-object v0

    .line 392
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTableCell(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;)Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;
    .locals 7
    .param p1, "cell"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    .line 480
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    .line 481
    .local v0, "cursor":Lorg/apache/xmlbeans/XmlCursor;
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    .line 482
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    .line 483
    .local v1, "o":Lorg/apache/xmlbeans/XmlObject;
    instance-of v2, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 484
    return-object v3

    .line 486
    :cond_0
    move-object v2, v1

    check-cast v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    .line 487
    .local v2, "row":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    .line 488
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    .line 489
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 490
    instance-of v4, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-nez v4, :cond_1

    .line 491
    return-object v3

    .line 493
    :cond_1
    move-object v4, v1

    check-cast v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    .line 494
    .local v4, "tbl":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;
    invoke-virtual {p0, v4}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->getTable(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    move-result-object v5

    .line 495
    .local v5, "table":Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    if-nez v5, :cond_2

    .line 496
    return-object v3

    .line 498
    :cond_2
    invoke-virtual {v5, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getRow(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;)Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    move-result-object v6

    .line 499
    .local v6, "tr":Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;
    if-nez v6, :cond_3

    .line 500
    return-object v3

    .line 502
    :cond_3
    invoke-virtual {v6, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getTableCell(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;)Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    move-result-object v3

    return-object v3
.end method

.method public getTableRow()Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;
    .locals 1

    .line 192
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->tableRow:Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    return-object v0
.end method

.method public getTables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTable;",
            ">;"
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->tables:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    .local v0, "text":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->paragraphs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    .line 422
    .local v2, "p":Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 424
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "p":Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTextRecursively()Ljava/lang/String;
    .locals 4

    .line 438
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 439
    .local v0, "text":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->bodyElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 440
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->bodyElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    move v2, v3

    .line 441
    .local v2, "isLast":Z
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->bodyElements:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xwpf/usermodel/IBodyElement;

    invoke-direct {p0, v0, v3, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->appendBodyElementText(Ljava/lang/StringBuffer;Lorg/apache/poi/xwpf/usermodel/IBodyElement;Z)V

    .line 439
    .end local v2    # "isLast":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 444
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getVerticalAlignment()Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;
    .locals 5

    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "vAlign":Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->ctTc:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->getTcPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPr;

    move-result-object v1

    .line 235
    .local v1, "tcpr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPr;
    if-eqz v1, :cond_0

    .line 236
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPr;->getVAlign()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalJc;

    move-result-object v2

    .line 237
    .local v2, "va":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalJc;
    if-eqz v2, :cond_0

    .line 238
    sget-object v3, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->stVertAlignTypeMap:Ljava/util/HashMap;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalJc;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc$Enum;

    move-result-object v4

    invoke-virtual {v4}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc$Enum;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;

    .line 241
    .end local v2    # "va":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalJc;
    :cond_0
    return-object v0
.end method

.method public getXWPFDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;
    .locals 1

    .line 506
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    invoke-interface {v0}, Lorg/apache/poi/xwpf/usermodel/IBody;->getXWPFDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object v0

    return-object v0
.end method

.method public insertNewParagraph(Lorg/apache/xmlbeans/XmlCursor;)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 8
    .param p1, "cursor"    # Lorg/apache/xmlbeans/XmlCursor;

    .line 262
    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->isCursorInTableCell(Lorg/apache/xmlbeans/XmlCursor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    const/4 v0, 0x0

    return-object v0

    .line 266
    :cond_0
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "uri":Ljava/lang/String;
    const-string v1, "p"

    .line 268
    .local v1, "localPart":Ljava/lang/String;
    invoke-interface {p1, v1, v0}, Lorg/apache/xmlbeans/XmlCursor;->beginElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    .line 270
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    .line 271
    .local v2, "p":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;
    new-instance v3, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-direct {v3, v2, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 272
    .local v3, "newP":Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    const/4 v4, 0x0

    .line 273
    .local v4, "o":Lorg/apache/xmlbeans/XmlObject;
    :goto_0
    instance-of v5, v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-nez v5, :cond_1

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toPrevSibling()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 274
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v4

    goto :goto_0

    .line 276
    :cond_1
    instance-of v5, v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-eqz v5, :cond_3

    move-object v5, v4

    check-cast v5, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-ne v5, v2, :cond_2

    goto :goto_1

    .line 279
    :cond_2
    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->paragraphs:Ljava/util/List;

    move-object v6, v4

    check-cast v6, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-virtual {p0, v6}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->getParagraph(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 280
    .local v5, "pos":I
    iget-object v6, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->paragraphs:Ljava/util/List;

    invoke-interface {v6, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 277
    .end local v5    # "pos":I
    :cond_3
    :goto_1
    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->paragraphs:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 282
    :goto_2
    const/4 v5, 0x0

    .line 283
    .local v5, "i":I
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v6

    .line 284
    .local v6, "p2":Lorg/apache/xmlbeans/XmlCursor;
    invoke-interface {p1, v6}, Lorg/apache/xmlbeans/XmlCursor;->toCursor(Lorg/apache/xmlbeans/XmlCursor;)Z

    .line 285
    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 286
    :cond_4
    :goto_3
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toPrevSibling()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 287
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v4

    .line 288
    instance-of v7, v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-nez v7, :cond_5

    instance-of v7, v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-eqz v7, :cond_4

    .line 289
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 291
    :cond_6
    iget-object v7, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->bodyElements:Ljava/util/List;

    invoke-interface {v7, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 292
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v6

    .line 293
    invoke-interface {p1, v6}, Lorg/apache/xmlbeans/XmlCursor;->toCursor(Lorg/apache/xmlbeans/XmlCursor;)Z

    .line 294
    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 295
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toEndToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    .line 296
    return-object v3
.end method

.method public insertNewTbl(Lorg/apache/xmlbeans/XmlCursor;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 8
    .param p1, "cursor"    # Lorg/apache/xmlbeans/XmlCursor;

    .line 300
    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->isCursorInTableCell(Lorg/apache/xmlbeans/XmlCursor;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 301
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "uri":Ljava/lang/String;
    const-string/jumbo v1, "tbl"

    .line 303
    .local v1, "localPart":Ljava/lang/String;
    invoke-interface {p1, v1, v0}, Lorg/apache/xmlbeans/XmlCursor;->beginElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    .line 305
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    .line 306
    .local v2, "t":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;
    new-instance v3, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-direct {v3, v2, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 307
    .local v3, "newT":Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->removeXmlContents()Z

    .line 308
    const/4 v4, 0x0

    .line 309
    .local v4, "o":Lorg/apache/xmlbeans/XmlObject;
    :goto_0
    instance-of v5, v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-nez v5, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toPrevSibling()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 310
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v4

    goto :goto_0

    .line 312
    :cond_0
    instance-of v5, v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-nez v5, :cond_1

    .line 313
    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->tables:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 315
    :cond_1
    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->tables:Ljava/util/List;

    move-object v6, v4

    check-cast v6, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-virtual {p0, v6}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->getTable(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 316
    .local v5, "pos":I
    iget-object v6, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->tables:Ljava/util/List;

    invoke-interface {v6, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 318
    .end local v5    # "pos":I
    :goto_1
    const/4 v5, 0x0

    .line 319
    .local v5, "i":I
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v6

    .line 320
    .local v6, "cursor2":Lorg/apache/xmlbeans/XmlCursor;
    :cond_2
    :goto_2
    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlCursor;->toPrevSibling()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 321
    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v4

    .line 322
    instance-of v7, v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-nez v7, :cond_3

    instance-of v7, v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-eqz v7, :cond_2

    .line 323
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 325
    :cond_4
    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 326
    iget-object v7, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->bodyElements:Ljava/util/List;

    invoke-interface {v7, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 327
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v6

    .line 328
    invoke-interface {p1, v6}, Lorg/apache/xmlbeans/XmlCursor;->toCursor(Lorg/apache/xmlbeans/XmlCursor;)Z

    .line 329
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toEndToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    .line 330
    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 331
    return-object v3

    .line 333
    .end local v0    # "uri":Ljava/lang/String;
    .end local v1    # "localPart":Ljava/lang/String;
    .end local v2    # "t":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;
    .end local v3    # "newT":Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .end local v4    # "o":Lorg/apache/xmlbeans/XmlObject;
    .end local v5    # "i":I
    .end local v6    # "cursor2":Lorg/apache/xmlbeans/XmlCursor;
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public insertTable(ILorg/apache/poi/xwpf/usermodel/XWPFTable;)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "table"    # Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    .line 408
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->bodyElements:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 409
    const/4 v0, 0x0

    .line 410
    .local v0, "i":I
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->ctTc:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->getTblArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object v1

    .local v1, "arr$":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 411
    .local v4, "tbl":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getCTTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 412
    goto :goto_1

    .line 414
    :cond_0
    nop

    .end local v4    # "tbl":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;
    add-int/lit8 v0, v0, 0x1

    .line 410
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 416
    .end local v1    # "arr$":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->tables:Ljava/util/List;

    invoke-interface {v1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 417
    return-void
.end method

.method public removeParagraph(I)V
    .locals 1
    .param p1, "pos"    # I

    .line 169
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->paragraphs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->ctTc:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->removeP(I)V

    .line 171
    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 3
    .param p1, "rgbStr"    # Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->ctTc:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->isSetTcPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->ctTc:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->getTcPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->ctTc:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->addNewTcPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPr;

    move-result-object v0

    .line 220
    .local v0, "tcpr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPr;
    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPr;->isSetShd()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPr;->getShd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPr;->addNewShd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;

    move-result-object v1

    .line 221
    .local v1, "ctshd":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;
    :goto_1
    const-string v2, "auto"

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;->setColor(Ljava/lang/Object;)V

    .line 222
    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd;->CLEAR:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;)V

    .line 223
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;->setFill(Ljava/lang/Object;)V

    .line 224
    return-void
.end method

.method public setParagraph(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)V
    .locals 3
    .param p1, "p"    # Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    .line 130
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->ctTc:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->sizeOfPArray()I

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->ctTc:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->addNewP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    .line 133
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->ctTc:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->setPArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;)V

    .line 134
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .line 428
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->ctTc:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->sizeOfPArray()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->ctTc:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->addNewP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->ctTc:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->getPArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v0

    .line 429
    .local v0, "ctP":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;
    :goto_0
    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 430
    .local v1, "par":Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->createRun()Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->setText(Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method public setVerticalAlignment(Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;)V
    .locals 3
    .param p1, "vAlign"    # Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;

    .line 250
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->ctTc:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->isSetTcPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->ctTc:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->getTcPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->ctTc:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->addNewTcPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPr;

    move-result-object v0

    .line 251
    .local v0, "tcpr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPr;
    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPr;->addNewVAlign()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalJc;

    move-result-object v1

    .line 252
    .local v1, "va":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalJc;
    sget-object v2, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->alignMap:Ljava/util/EnumMap;

    invoke-virtual {v2, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc$Enum;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalJc;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc$Enum;)V

    .line 253
    return-void
.end method
