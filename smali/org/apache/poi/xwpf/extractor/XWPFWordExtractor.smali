.class public Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;
.super Lorg/apache/poi/POIXMLTextExtractor;
.source "XWPFWordExtractor.java"


# static fields
.field public static final SUPPORTED_TYPES:[Lorg/apache/poi/xwpf/usermodel/XWPFRelation;


# instance fields
.field private concatenatePhoneticRuns:Z

.field private document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

.field private fetchHyperlinks:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->TEMPLATE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->MACRO_DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->MACRO_TEMPLATE_DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->SUPPORTED_TYPES:[Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 1
    .param p1, "container"    # Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;,
            Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-direct {v0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;)V
    .locals 1
    .param p1, "document"    # Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    .line 64
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLTextExtractor;-><init>(Lorg/apache/poi/POIXMLDocument;)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->fetchHyperlinks:Z

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->concatenatePhoneticRuns:Z

    .line 65
    iput-object p1, p0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    .line 66
    return-void
.end method

.method private appendTableText(Ljava/lang/StringBuffer;Lorg/apache/poi/xwpf/usermodel/XWPFTable;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/StringBuffer;
    .param p2, "table"    # Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    .line 175
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getRows()Ljava/util/List;

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

    .line 176
    .local v1, "row":Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;
    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getTableICells()Ljava/util/List;

    move-result-object v2

    .line 177
    .local v2, "cells":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xwpf/usermodel/ICell;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 178
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xwpf/usermodel/ICell;

    .line 179
    .local v4, "cell":Lorg/apache/poi/xwpf/usermodel/ICell;
    instance-of v5, v4, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    if-eqz v5, :cond_0

    .line 180
    move-object v5, v4

    check-cast v5, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    invoke-virtual {v5}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->getTextRecursively()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 181
    :cond_0
    instance-of v5, v4, Lorg/apache/poi/xwpf/usermodel/XWPFSDTCell;

    if-eqz v5, :cond_1

    .line 182
    move-object v5, v4

    check-cast v5, Lorg/apache/poi/xwpf/usermodel/XWPFSDTCell;

    invoke-virtual {v5}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTCell;->getContent()Lorg/apache/poi/xwpf/usermodel/ISDTContent;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/poi/xwpf/usermodel/ISDTContent;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_2

    .line 185
    const-string v5, "\t"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    .end local v4    # "cell":Lorg/apache/poi/xwpf/usermodel/ICell;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 188
    .end local v3    # "i":I
    :cond_3
    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 189
    .end local v1    # "row":Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;
    .end local v2    # "cells":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xwpf/usermodel/ICell;>;"
    goto :goto_0

    .line 190
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method private extractFooters(Ljava/lang/StringBuffer;Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/StringBuffer;
    .param p2, "hfPolicy"    # Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

    .line 193
    if-nez p2, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getFirstPageFooter()Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getFirstPageFooter()Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFFooter;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    :cond_1
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getEvenPageFooter()Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 199
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getEvenPageFooter()Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFFooter;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    :cond_2
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getDefaultFooter()Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 202
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getDefaultFooter()Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFFooter;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    :cond_3
    return-void
.end method

.method private extractHeaders(Ljava/lang/StringBuffer;Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/StringBuffer;
    .param p2, "hfPolicy"    # Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

    .line 207
    if-nez p2, :cond_0

    return-void

    .line 209
    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getFirstPageHeader()Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 210
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getFirstPageHeader()Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFHeader;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    :cond_1
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getEvenPageHeader()Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 213
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getEvenPageHeader()Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFHeader;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    :cond_2
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getDefaultHeader()Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 216
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getDefaultHeader()Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFHeader;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    :cond_3
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 70
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Use:"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "  XWPFWordExtractor <filename.docx>"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 74
    :cond_0
    new-instance v0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-static {v1}, Lorg/apache/poi/POIXMLDocument;->openPackage(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    .line 78
    .local v0, "extractor":Lorg/apache/poi/POIXMLTextExtractor;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLTextExtractor;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Lorg/apache/poi/POIXMLTextExtractor;->close()V

    .line 80
    return-void
.end method


# virtual methods
.method public appendBodyElementText(Ljava/lang/StringBuffer;Lorg/apache/poi/xwpf/usermodel/IBodyElement;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/StringBuffer;
    .param p2, "e"    # Lorg/apache/poi/xwpf/usermodel/IBodyElement;

    .line 119
    instance-of v0, p2, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    if-eqz v0, :cond_0

    .line 120
    move-object v0, p2

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->appendParagraphText(Ljava/lang/StringBuffer;Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)V

    goto :goto_0

    .line 121
    :cond_0
    instance-of v0, p2, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    if-eqz v0, :cond_1

    .line 122
    move-object v0, p2

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->appendTableText(Ljava/lang/StringBuffer;Lorg/apache/poi/xwpf/usermodel/XWPFTable;)V

    goto :goto_0

    .line 123
    :cond_1
    instance-of v0, p2, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    if-eqz v0, :cond_2

    .line 124
    move-object v0, p2

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->getContent()Lorg/apache/poi/xwpf/usermodel/ISDTContent;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/xwpf/usermodel/ISDTContent;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    :cond_2
    :goto_0
    return-void
.end method

.method public appendParagraphText(Ljava/lang/StringBuffer;Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/StringBuffer;
    .param p2, "paragraph"    # Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "ctSectPr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->getSectPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;

    move-result-object v0

    .line 134
    :cond_0
    const/4 v1, 0x0

    .line 136
    .local v1, "headerFooterPolicy":Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;
    if-eqz v0, :cond_1

    .line 137
    new-instance v2, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

    iget-object v3, p0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-direct {v2, v3, v0}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;)V

    move-object v1, v2

    .line 138
    invoke-direct {p0, p1, v1}, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->extractHeaders(Ljava/lang/StringBuffer;Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;)V

    .line 142
    :cond_1
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getRuns()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    .line 143
    .local v3, "run":Lorg/apache/poi/xwpf/usermodel/IRunElement;
    iget-boolean v4, p0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->concatenatePhoneticRuns:Z

    if-nez v4, :cond_2

    instance-of v4, v3, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    if-eqz v4, :cond_2

    .line 144
    move-object v4, v3

    check-cast v4, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-virtual {v4}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->text()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 146
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 148
    :goto_1
    instance-of v4, v3, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->fetchHyperlinks:Z

    if-eqz v4, :cond_3

    .line 149
    move-object v4, v3

    check-cast v4, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;

    iget-object v5, p0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v4, v5}, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;->getHyperlink(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;)Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;

    move-result-object v4

    .line 150
    .local v4, "link":Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;
    if-eqz v4, :cond_3

    .line 151
    const-string v5, " <"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;->getURL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    .end local v3    # "run":Lorg/apache/poi/xwpf/usermodel/IRunElement;
    .end local v4    # "link":Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;
    :cond_3
    goto :goto_0

    .line 156
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    new-instance v2, Lorg/apache/poi/xwpf/model/XWPFCommentsDecorator;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v3}, Lorg/apache/poi/xwpf/model/XWPFCommentsDecorator;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Lorg/apache/poi/xwpf/model/XWPFParagraphDecorator;)V

    .line 157
    .local v2, "decorator":Lorg/apache/poi/xwpf/model/XWPFCommentsDecorator;
    invoke-virtual {v2}, Lorg/apache/poi/xwpf/model/XWPFCommentsDecorator;->getCommentText()Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "commentText":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xa

    if-lez v4, :cond_5

    .line 159
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 163
    :cond_5
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getFootnoteText()Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, "footnameText":Ljava/lang/String;
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6

    .line 165
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 168
    :cond_6
    if-eqz v0, :cond_7

    .line 169
    invoke-direct {p0, p1, v1}, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->extractFooters(Ljava/lang/StringBuffer;Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;)V

    .line 171
    :cond_7
    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 5

    .line 100
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 101
    .local v0, "text":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getHeaderFooterPolicy()Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

    move-result-object v1

    .line 104
    .local v1, "hfPolicy":Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;
    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->extractHeaders(Ljava/lang/StringBuffer;Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;)V

    .line 107
    iget-object v2, p0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getBodyElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xwpf/usermodel/IBodyElement;

    .line 108
    .local v3, "e":Lorg/apache/poi/xwpf/usermodel/IBodyElement;
    invoke-virtual {p0, v0, v3}, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->appendBodyElementText(Ljava/lang/StringBuffer;Lorg/apache/poi/xwpf/usermodel/IBodyElement;)V

    .line 109
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 113
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "e":Lorg/apache/poi/xwpf/usermodel/IBodyElement;
    :cond_0
    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->extractFooters(Ljava/lang/StringBuffer;Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;)V

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public setConcatenatePhoneticRuns(Z)V
    .locals 0
    .param p1, "concatenatePhoneticRuns"    # Z

    .line 96
    iput-boolean p1, p0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->concatenatePhoneticRuns:Z

    .line 97
    return-void
.end method

.method public setFetchHyperlinks(Z)V
    .locals 0
    .param p1, "fetch"    # Z

    .line 88
    iput-boolean p1, p0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->fetchHyperlinks:Z

    .line 89
    return-void
.end method
