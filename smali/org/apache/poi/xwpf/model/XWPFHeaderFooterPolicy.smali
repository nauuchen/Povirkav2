.class public Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;
.super Ljava/lang/Object;
.source "XWPFHeaderFooterPolicy.java"


# static fields
.field public static final DEFAULT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

.field public static final EVEN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

.field public static final FIRST:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;


# instance fields
.field private defaultFooter:Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

.field private defaultHeader:Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

.field private doc:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

.field private evenPageFooter:Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

.field private evenPageHeader:Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

.field private firstPageFooter:Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

.field private firstPageHeader:Lorg/apache/poi/xwpf/usermodel/XWPFHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr;->DEFAULT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    sput-object v0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->DEFAULT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    .line 67
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr;->EVEN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    sput-object v0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->EVEN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    .line 68
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr;->FIRST:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    sput-object v0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->FIRST:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;)V
    .locals 1
    .param p1, "doc"    # Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;)V
    .locals 6
    .param p1, "doc"    # Lorg/apache/poi/xwpf/usermodel/XWPFDocument;
    .param p2, "sectPr"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    if-nez p2, :cond_1

    .line 101
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getDocument()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object v0

    .line 102
    .local v0, "ctBody":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->isSetSectPr()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->getSectPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->addNewSectPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;

    move-result-object v1

    :goto_0
    move-object p2, v1

    .line 106
    .end local v0    # "ctBody":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;
    :cond_1
    iput-object p1, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->doc:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    :goto_1
    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;->sizeOfHeaderReferenceArray()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 109
    invoke-interface {p2, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;->getHeaderReferenceArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;

    move-result-object v2

    .line 110
    .local v2, "ref":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getRelationById(Ljava/lang/String;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v3

    .line 111
    .local v3, "relatedPart":Lorg/apache/poi/POIXMLDocumentPart;
    const/4 v4, 0x0

    .line 112
    .local v4, "hdr":Lorg/apache/poi/xwpf/usermodel/XWPFHeader;
    if-eqz v3, :cond_2

    instance-of v5, v3, Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    if-eqz v5, :cond_2

    .line 113
    move-object v4, v3

    check-cast v4, Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    .line 118
    :cond_2
    :try_start_0
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;->getType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    move-result-object v1
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .local v1, "type":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;
    goto :goto_2

    .line 119
    .end local v1    # "type":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;
    :catch_0
    move-exception v5

    .line 120
    .restart local v1    # "type":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;
    .local v5, "e":Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;
    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr;->DEFAULT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    .line 123
    .end local v5    # "e":Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;
    :goto_2
    invoke-direct {p0, v4, v1}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->assignHeader(Lorg/apache/poi/xwpf/usermodel/XWPFHeader;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;)V

    .line 107
    .end local v1    # "type":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;
    .end local v2    # "ref":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;
    .end local v3    # "relatedPart":Lorg/apache/poi/POIXMLDocumentPart;
    .end local v4    # "hdr":Lorg/apache/poi/xwpf/usermodel/XWPFHeader;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 125
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;->sizeOfFooterReferenceArray()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 127
    invoke-interface {p2, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;->getFooterReferenceArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;

    move-result-object v2

    .line 128
    .restart local v2    # "ref":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getRelationById(Ljava/lang/String;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v3

    .line 129
    .restart local v3    # "relatedPart":Lorg/apache/poi/POIXMLDocumentPart;
    const/4 v4, 0x0

    .line 130
    .local v4, "ftr":Lorg/apache/poi/xwpf/usermodel/XWPFFooter;
    if-eqz v3, :cond_4

    instance-of v5, v3, Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    if-eqz v5, :cond_4

    .line 131
    move-object v4, v3

    check-cast v4, Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    .line 136
    :cond_4
    :try_start_1
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;->getType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    move-result-object v1
    :try_end_1
    .catch Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    .restart local v1    # "type":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;
    goto :goto_4

    .line 137
    .end local v1    # "type":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;
    :catch_1
    move-exception v5

    .line 138
    .restart local v1    # "type":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;
    .restart local v5    # "e":Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;
    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr;->DEFAULT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    .line 140
    .end local v5    # "e":Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;
    :goto_4
    invoke-direct {p0, v4, v1}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->assignFooter(Lorg/apache/poi/xwpf/usermodel/XWPFFooter;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;)V

    .line 125
    .end local v1    # "type":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;
    .end local v2    # "ref":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;
    .end local v3    # "relatedPart":Lorg/apache/poi/POIXMLDocumentPart;
    .end local v4    # "ftr":Lorg/apache/poi/xwpf/usermodel/XWPFFooter;
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 142
    .end local v0    # "i":I
    :cond_5
    return-void
.end method

.method private assignFooter(Lorg/apache/poi/xwpf/usermodel/XWPFFooter;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;)V
    .locals 1
    .param p1, "ftr"    # Lorg/apache/poi/xwpf/usermodel/XWPFFooter;
    .param p2, "type"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    .line 145
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr;->FIRST:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    if-ne p2, v0, :cond_0

    .line 146
    iput-object p1, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->firstPageFooter:Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    goto :goto_0

    .line 147
    :cond_0
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr;->EVEN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    if-ne p2, v0, :cond_1

    .line 148
    iput-object p1, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->evenPageFooter:Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    goto :goto_0

    .line 150
    :cond_1
    iput-object p1, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->defaultFooter:Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    .line 152
    :goto_0
    return-void
.end method

.method private assignHeader(Lorg/apache/poi/xwpf/usermodel/XWPFHeader;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;)V
    .locals 1
    .param p1, "hdr"    # Lorg/apache/poi/xwpf/usermodel/XWPFHeader;
    .param p2, "type"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    .line 155
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr;->FIRST:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    if-ne p2, v0, :cond_0

    .line 156
    iput-object p1, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->firstPageHeader:Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    goto :goto_0

    .line 157
    :cond_0
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr;->EVEN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    if-ne p2, v0, :cond_1

    .line 158
    iput-object p1, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->evenPageHeader:Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    goto :goto_0

    .line 160
    :cond_1
    iput-object p1, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->defaultHeader:Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    .line 162
    :goto_0
    return-void
.end method

.method private buildFtr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;Ljava/lang/String;Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;[Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;
    .locals 1
    .param p1, "type"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;
    .param p2, "pStyle"    # Ljava/lang/String;
    .param p3, "wrapper"    # Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;
    .param p4, "pars"    # [Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    .line 250
    invoke-direct {p0, p2, p4, p3}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->buildHdrFtr(Ljava/lang/String;[Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;

    move-result-object v0

    .line 251
    .local v0, "ftr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;
    invoke-direct {p0, p1, p3}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->setFooterReference(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;)V

    .line 252
    return-object v0
.end method

.method private buildHdr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;Ljava/lang/String;Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;[Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;
    .locals 1
    .param p1, "type"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;
    .param p2, "pStyle"    # Ljava/lang/String;
    .param p3, "wrapper"    # Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;
    .param p4, "pars"    # [Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    .line 257
    invoke-direct {p0, p2, p4, p3}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->buildHdrFtr(Ljava/lang/String;[Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;

    move-result-object v0

    .line 258
    .local v0, "hdr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;
    invoke-direct {p0, p1, p3}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->setHeaderReference(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;)V

    .line 259
    return-object v0
.end method

.method private buildHdrFtr(Ljava/lang/String;[Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;
    .locals 4
    .param p1, "pStyle"    # Ljava/lang/String;
    .param p2, "paragraphs"    # [Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .param p3, "wrapper"    # Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;

    .line 275
    invoke-virtual {p3}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->_getHdrFtr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;

    move-result-object v0

    .line 276
    .local v0, "ftr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;
    if-eqz p2, :cond_0

    .line 277
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 278
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;->addNewP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v2

    .line 279
    .local v2, "p":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;
    aget-object v3, p2, v1

    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;->setPArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;)V

    .line 277
    .end local v2    # "p":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private getRelationIndex(Lorg/apache/poi/xwpf/usermodel/XWPFRelation;)I
    .locals 5
    .param p1, "relation"    # Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    .line 239
    const/4 v0, 0x1

    .line 240
    .local v0, "i":I
    iget-object v1, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->doc:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getRelationParts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    .line 241
    .local v2, "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    invoke-virtual {v2}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->getRelation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    add-int/lit8 v0, v0, 0x1

    .end local v2    # "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    :cond_0
    goto :goto_0

    .line 245
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return v0
.end method

.method private getWatermarkParagraph(Ljava/lang/String;I)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 21
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "idx"    # I

    .line 431
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP$Factory;->newInstance()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v2

    .line 432
    .local v2, "p":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;
    iget-object v3, v0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->doc:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getDocument()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->getPArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getRsidR()[B

    move-result-object v3

    .line 433
    .local v3, "rsidr":[B
    iget-object v5, v0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->doc:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v5}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getDocument()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    move-result-object v5

    invoke-interface {v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object v5

    invoke-interface {v5, v4}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->getPArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getRsidRDefault()[B

    move-result-object v4

    .line 434
    .local v4, "rsidrdefault":[B
    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->setRsidP([B)V

    .line 435
    invoke-interface {v2, v4}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->setRsidRDefault([B)V

    .line 436
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v5

    .line 437
    .local v5, "pPr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;
    invoke-interface {v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->addNewPStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v6

    const-string v7, "Header"

    invoke-interface {v6, v7}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->setVal(Ljava/lang/String;)V

    .line 439
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v6

    .line 440
    .local v6, "r":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
    invoke-interface {v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v7

    .line 441
    .local v7, "rPr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    invoke-interface {v7}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewNoProof()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    .line 442
    invoke-interface {v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewPict()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPicture;

    move-result-object v8

    .line 443
    .local v8, "pict":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPicture;
    invoke-static {}, Lcom/microsoft/schemas/vml/CTGroup$Factory;->newInstance()Lcom/microsoft/schemas/vml/CTGroup;

    move-result-object v9

    .line 444
    .local v9, "group":Lcom/microsoft/schemas/vml/CTGroup;
    invoke-interface {v9}, Lcom/microsoft/schemas/vml/CTGroup;->addNewShapetype()Lcom/microsoft/schemas/vml/CTShapetype;

    move-result-object v10

    .line 445
    .local v10, "shapetype":Lcom/microsoft/schemas/vml/CTShapetype;
    const-string v11, "_x0000_t136"

    invoke-interface {v10, v11}, Lcom/microsoft/schemas/vml/CTShapetype;->setId(Ljava/lang/String;)V

    .line 446
    const-string v11, "1600,21600"

    invoke-interface {v10, v11}, Lcom/microsoft/schemas/vml/CTShapetype;->setCoordsize(Ljava/lang/String;)V

    .line 447
    const/high16 v11, 0x43080000    # 136.0f

    invoke-interface {v10, v11}, Lcom/microsoft/schemas/vml/CTShapetype;->setSpt(F)V

    .line 448
    const-string v11, "10800"

    invoke-interface {v10, v11}, Lcom/microsoft/schemas/vml/CTShapetype;->setAdj(Ljava/lang/String;)V

    .line 449
    const-string v11, "m@7,0l@8,0m@5,21600l@6,21600e"

    invoke-interface {v10, v11}, Lcom/microsoft/schemas/vml/CTShapetype;->setPath2(Ljava/lang/String;)V

    .line 450
    invoke-interface {v10}, Lcom/microsoft/schemas/vml/CTShapetype;->addNewFormulas()Lcom/microsoft/schemas/vml/CTFormulas;

    move-result-object v11

    .line 451
    .local v11, "formulas":Lcom/microsoft/schemas/vml/CTFormulas;
    invoke-interface {v11}, Lcom/microsoft/schemas/vml/CTFormulas;->addNewF()Lcom/microsoft/schemas/vml/CTF;

    move-result-object v12

    const-string v13, "sum #0 0 10800"

    invoke-interface {v12, v13}, Lcom/microsoft/schemas/vml/CTF;->setEqn(Ljava/lang/String;)V

    .line 452
    invoke-interface {v11}, Lcom/microsoft/schemas/vml/CTFormulas;->addNewF()Lcom/microsoft/schemas/vml/CTF;

    move-result-object v12

    const-string v13, "prod #0 2 1"

    invoke-interface {v12, v13}, Lcom/microsoft/schemas/vml/CTF;->setEqn(Ljava/lang/String;)V

    .line 453
    invoke-interface {v11}, Lcom/microsoft/schemas/vml/CTFormulas;->addNewF()Lcom/microsoft/schemas/vml/CTF;

    move-result-object v12

    const-string v13, "sum 21600 0 @1"

    invoke-interface {v12, v13}, Lcom/microsoft/schemas/vml/CTF;->setEqn(Ljava/lang/String;)V

    .line 454
    invoke-interface {v11}, Lcom/microsoft/schemas/vml/CTFormulas;->addNewF()Lcom/microsoft/schemas/vml/CTF;

    move-result-object v12

    const-string v13, "sum 0 0 @2"

    invoke-interface {v12, v13}, Lcom/microsoft/schemas/vml/CTF;->setEqn(Ljava/lang/String;)V

    .line 455
    invoke-interface {v11}, Lcom/microsoft/schemas/vml/CTFormulas;->addNewF()Lcom/microsoft/schemas/vml/CTF;

    move-result-object v12

    const-string v13, "sum 21600 0 @3"

    invoke-interface {v12, v13}, Lcom/microsoft/schemas/vml/CTF;->setEqn(Ljava/lang/String;)V

    .line 456
    invoke-interface {v11}, Lcom/microsoft/schemas/vml/CTFormulas;->addNewF()Lcom/microsoft/schemas/vml/CTF;

    move-result-object v12

    const-string v13, "if @0 @3 0"

    invoke-interface {v12, v13}, Lcom/microsoft/schemas/vml/CTF;->setEqn(Ljava/lang/String;)V

    .line 457
    invoke-interface {v11}, Lcom/microsoft/schemas/vml/CTFormulas;->addNewF()Lcom/microsoft/schemas/vml/CTF;

    move-result-object v12

    const-string v13, "if @0 21600 @1"

    invoke-interface {v12, v13}, Lcom/microsoft/schemas/vml/CTF;->setEqn(Ljava/lang/String;)V

    .line 458
    invoke-interface {v11}, Lcom/microsoft/schemas/vml/CTFormulas;->addNewF()Lcom/microsoft/schemas/vml/CTF;

    move-result-object v12

    const-string v13, "if @0 0 @2"

    invoke-interface {v12, v13}, Lcom/microsoft/schemas/vml/CTF;->setEqn(Ljava/lang/String;)V

    .line 459
    invoke-interface {v11}, Lcom/microsoft/schemas/vml/CTFormulas;->addNewF()Lcom/microsoft/schemas/vml/CTF;

    move-result-object v12

    const-string v13, "if @0 @4 21600"

    invoke-interface {v12, v13}, Lcom/microsoft/schemas/vml/CTF;->setEqn(Ljava/lang/String;)V

    .line 460
    invoke-interface {v11}, Lcom/microsoft/schemas/vml/CTFormulas;->addNewF()Lcom/microsoft/schemas/vml/CTF;

    move-result-object v12

    const-string v13, "mid @5 @6"

    invoke-interface {v12, v13}, Lcom/microsoft/schemas/vml/CTF;->setEqn(Ljava/lang/String;)V

    .line 461
    invoke-interface {v11}, Lcom/microsoft/schemas/vml/CTFormulas;->addNewF()Lcom/microsoft/schemas/vml/CTF;

    move-result-object v12

    const-string v13, "mid @8 @5"

    invoke-interface {v12, v13}, Lcom/microsoft/schemas/vml/CTF;->setEqn(Ljava/lang/String;)V

    .line 462
    invoke-interface {v11}, Lcom/microsoft/schemas/vml/CTFormulas;->addNewF()Lcom/microsoft/schemas/vml/CTF;

    move-result-object v12

    const-string v13, "mid @7 @8"

    invoke-interface {v12, v13}, Lcom/microsoft/schemas/vml/CTF;->setEqn(Ljava/lang/String;)V

    .line 463
    invoke-interface {v11}, Lcom/microsoft/schemas/vml/CTFormulas;->addNewF()Lcom/microsoft/schemas/vml/CTF;

    move-result-object v12

    const-string v13, "mid @6 @7"

    invoke-interface {v12, v13}, Lcom/microsoft/schemas/vml/CTF;->setEqn(Ljava/lang/String;)V

    .line 464
    invoke-interface {v11}, Lcom/microsoft/schemas/vml/CTFormulas;->addNewF()Lcom/microsoft/schemas/vml/CTF;

    move-result-object v12

    const-string v13, "sum @6 0 @5"

    invoke-interface {v12, v13}, Lcom/microsoft/schemas/vml/CTF;->setEqn(Ljava/lang/String;)V

    .line 465
    invoke-interface {v10}, Lcom/microsoft/schemas/vml/CTShapetype;->addNewPath()Lcom/microsoft/schemas/vml/CTPath;

    move-result-object v12

    .line 466
    .local v12, "path":Lcom/microsoft/schemas/vml/CTPath;
    sget-object v13, Lcom/microsoft/schemas/vml/STTrueFalse;->T:Lcom/microsoft/schemas/vml/STTrueFalse$Enum;

    invoke-interface {v12, v13}, Lcom/microsoft/schemas/vml/CTPath;->setTextpathok(Lcom/microsoft/schemas/vml/STTrueFalse$Enum;)V

    .line 467
    sget-object v13, Lcom/microsoft/schemas/office/office/STConnectType;->CUSTOM:Lcom/microsoft/schemas/office/office/STConnectType$Enum;

    invoke-interface {v12, v13}, Lcom/microsoft/schemas/vml/CTPath;->setConnecttype(Lcom/microsoft/schemas/office/office/STConnectType$Enum;)V

    .line 468
    const-string v13, "@9,0;@10,10800;@11,21600;@12,10800"

    invoke-interface {v12, v13}, Lcom/microsoft/schemas/vml/CTPath;->setConnectlocs(Ljava/lang/String;)V

    .line 469
    const-string v13, "270,180,90,0"

    invoke-interface {v12, v13}, Lcom/microsoft/schemas/vml/CTPath;->setConnectangles(Ljava/lang/String;)V

    .line 470
    invoke-interface {v10}, Lcom/microsoft/schemas/vml/CTShapetype;->addNewTextpath()Lcom/microsoft/schemas/vml/CTTextPath;

    move-result-object v13

    .line 471
    .local v13, "shapeTypeTextPath":Lcom/microsoft/schemas/vml/CTTextPath;
    sget-object v14, Lcom/microsoft/schemas/vml/STTrueFalse;->T:Lcom/microsoft/schemas/vml/STTrueFalse$Enum;

    invoke-interface {v13, v14}, Lcom/microsoft/schemas/vml/CTTextPath;->setOn(Lcom/microsoft/schemas/vml/STTrueFalse$Enum;)V

    .line 472
    sget-object v14, Lcom/microsoft/schemas/vml/STTrueFalse;->T:Lcom/microsoft/schemas/vml/STTrueFalse$Enum;

    invoke-interface {v13, v14}, Lcom/microsoft/schemas/vml/CTTextPath;->setFitshape(Lcom/microsoft/schemas/vml/STTrueFalse$Enum;)V

    .line 473
    invoke-interface {v10}, Lcom/microsoft/schemas/vml/CTShapetype;->addNewHandles()Lcom/microsoft/schemas/vml/CTHandles;

    move-result-object v14

    .line 474
    .local v14, "handles":Lcom/microsoft/schemas/vml/CTHandles;
    invoke-interface {v14}, Lcom/microsoft/schemas/vml/CTHandles;->addNewH()Lcom/microsoft/schemas/vml/CTH;

    move-result-object v15

    .line 475
    .local v15, "h":Lcom/microsoft/schemas/vml/CTH;
    move-object/from16 v16, v3

    .end local v3    # "rsidr":[B
    .local v16, "rsidr":[B
    const-string v3, "#0,bottomRight"

    invoke-interface {v15, v3}, Lcom/microsoft/schemas/vml/CTH;->setPosition(Ljava/lang/String;)V

    .line 476
    const-string v3, "6629,14971"

    invoke-interface {v15, v3}, Lcom/microsoft/schemas/vml/CTH;->setXrange(Ljava/lang/String;)V

    .line 477
    invoke-interface {v10}, Lcom/microsoft/schemas/vml/CTShapetype;->addNewLock()Lcom/microsoft/schemas/office/office/CTLock;

    move-result-object v3

    .line 478
    .local v3, "lock":Lcom/microsoft/schemas/office/office/CTLock;
    move-object/from16 v17, v4

    .end local v4    # "rsidrdefault":[B
    .local v17, "rsidrdefault":[B
    sget-object v4, Lcom/microsoft/schemas/vml/STExt;->EDIT:Lcom/microsoft/schemas/vml/STExt$Enum;

    invoke-interface {v3, v4}, Lcom/microsoft/schemas/office/office/CTLock;->setExt(Lcom/microsoft/schemas/vml/STExt$Enum;)V

    .line 479
    invoke-interface {v9}, Lcom/microsoft/schemas/vml/CTGroup;->addNewShape()Lcom/microsoft/schemas/vml/CTShape;

    move-result-object v4

    .line 480
    .local v4, "shape":Lcom/microsoft/schemas/vml/CTShape;
    move-object/from16 v18, v3

    .end local v3    # "lock":Lcom/microsoft/schemas/office/office/CTLock;
    .local v18, "lock":Lcom/microsoft/schemas/office/office/CTLock;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v5

    .end local v5    # "pPr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;
    .local v19, "pPr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;
    const-string v5, "PowerPlusWaterMarkObject"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/microsoft/schemas/vml/CTShape;->setId(Ljava/lang/String;)V

    .line 481
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_x0000_s102"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v5, v1, 0x4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/microsoft/schemas/vml/CTShape;->setSpid(Ljava/lang/String;)V

    .line 482
    const-string v3, "#_x0000_t136"

    invoke-interface {v4, v3}, Lcom/microsoft/schemas/vml/CTShape;->setType(Ljava/lang/String;)V

    .line 483
    const-string v3, "position:absolute;margin-left:0;margin-top:0;width:415pt;height:207.5pt;z-index:-251654144;mso-wrap-edited:f;mso-position-horizontal:center;mso-position-horizontal-relative:margin;mso-position-vertical:center;mso-position-vertical-relative:margin"

    invoke-interface {v4, v3}, Lcom/microsoft/schemas/vml/CTShape;->setStyle(Ljava/lang/String;)V

    .line 484
    const-string v3, "616 5068 390 16297 39 16921 -39 17155 7265 17545 7186 17467 -39 17467 18904 17467 10507 17467 8710 17545 18904 17077 18787 16843 18358 16297 18279 12554 19178 12476 20701 11774 20779 11228 21131 10059 21248 8811 21248 7563 20975 6316 20935 5380 19490 5146 14022 5068 2616 5068"

    invoke-interface {v4, v3}, Lcom/microsoft/schemas/vml/CTShape;->setWrapcoords(Ljava/lang/String;)V

    .line 485
    const-string v3, "black"

    invoke-interface {v4, v3}, Lcom/microsoft/schemas/vml/CTShape;->setFillcolor(Ljava/lang/String;)V

    .line 486
    sget-object v3, Lcom/microsoft/schemas/vml/STTrueFalse;->FALSE:Lcom/microsoft/schemas/vml/STTrueFalse$Enum;

    invoke-interface {v4, v3}, Lcom/microsoft/schemas/vml/CTShape;->setStroked(Lcom/microsoft/schemas/vml/STTrueFalse$Enum;)V

    .line 487
    invoke-interface {v4}, Lcom/microsoft/schemas/vml/CTShape;->addNewTextpath()Lcom/microsoft/schemas/vml/CTTextPath;

    move-result-object v3

    .line 488
    .local v3, "shapeTextPath":Lcom/microsoft/schemas/vml/CTTextPath;
    const-string v5, "font-family:&quot;Cambria&quot;;font-size:1pt"

    invoke-interface {v3, v5}, Lcom/microsoft/schemas/vml/CTTextPath;->setStyle(Ljava/lang/String;)V

    .line 489
    move-object/from16 v5, p1

    invoke-interface {v3, v5}, Lcom/microsoft/schemas/vml/CTTextPath;->setString(Ljava/lang/String;)V

    .line 490
    invoke-interface {v8, v9}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPicture;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 492
    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-object/from16 v20, v3

    .end local v3    # "shapeTextPath":Lcom/microsoft/schemas/vml/CTTextPath;
    .local v20, "shapeTextPath":Lcom/microsoft/schemas/vml/CTTextPath;
    iget-object v3, v0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->doc:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    return-object v1
.end method

.method private setFooterReference(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;)V
    .locals 2
    .param p1, "type"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;
    .param p2, "wrapper"    # Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;

    .line 301
    iget-object v0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->doc:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getDocument()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->getSectPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;->addNewFooterReference()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;

    move-result-object v0

    .line 302
    .local v0, "ref":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;->setType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;)V

    .line 303
    iget-object v1, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->doc:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getRelationId(Lorg/apache/poi/POIXMLDocumentPart;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;->setId(Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method private setHeaderReference(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;)V
    .locals 2
    .param p1, "type"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;
    .param p2, "wrapper"    # Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;

    .line 308
    iget-object v0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->doc:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getDocument()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->getSectPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;->addNewHeaderReference()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;

    move-result-object v0

    .line 309
    .local v0, "ref":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;->setType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;)V

    .line 310
    iget-object v1, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->doc:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getRelationId(Lorg/apache/poi/POIXMLDocumentPart;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;->setId(Ljava/lang/String;)V

    .line 311
    return-void
.end method


# virtual methods
.method public createFooter(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;)Lorg/apache/poi/xwpf/usermodel/XWPFFooter;
    .locals 1
    .param p1, "type"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    .line 206
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->createFooter(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;[Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    move-result-object v0

    return-object v0
.end method

.method public createFooter(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;[Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)Lorg/apache/poi/xwpf/usermodel/XWPFFooter;
    .locals 7
    .param p1, "type"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;
    .param p2, "pars"    # [Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    .line 215
    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getFooter(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;)Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    move-result-object v0

    .line 217
    .local v0, "footer":Lorg/apache/poi/xwpf/usermodel/XWPFFooter;
    if-nez v0, :cond_0

    .line 218
    invoke-static {}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/FtrDocument$Factory;->newInstance()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/FtrDocument;

    move-result-object v1

    .line 220
    .local v1, "ftrDoc":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/FtrDocument;
    sget-object v2, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->FOOTER:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    .line 221
    .local v2, "relation":Lorg/apache/poi/xwpf/usermodel/XWPFRelation;
    invoke-direct {p0, v2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getRelationIndex(Lorg/apache/poi/xwpf/usermodel/XWPFRelation;)I

    move-result v3

    .line 223
    .local v3, "i":I
    iget-object v4, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->doc:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/XWPFFactory;->getInstance()Lorg/apache/poi/xwpf/usermodel/XWPFFactory;

    move-result-object v5

    invoke-virtual {v4, v2, v5, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;I)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    .line 225
    .local v4, "wrapper":Lorg/apache/poi/xwpf/usermodel/XWPFFooter;
    iget-object v5, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->doc:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v4, v5}, Lorg/apache/poi/xwpf/usermodel/XWPFFooter;->setXWPFDocument(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;)V

    .line 227
    const-string v5, "Footer"

    .line 228
    .local v5, "pStyle":Ljava/lang/String;
    invoke-direct {p0, p1, v5, v4, p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->buildFtr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;Ljava/lang/String;Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;[Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;

    move-result-object v6

    .line 229
    .local v6, "ftr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;
    invoke-virtual {v4, v6}, Lorg/apache/poi/xwpf/usermodel/XWPFFooter;->setHeaderFooter(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;)V

    .line 230
    invoke-interface {v1, v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/FtrDocument;->setFtr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;)V

    .line 231
    invoke-direct {p0, v4, p1}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->assignFooter(Lorg/apache/poi/xwpf/usermodel/XWPFFooter;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;)V

    .line 232
    move-object v0, v4

    .line 235
    .end local v1    # "ftrDoc":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/FtrDocument;
    .end local v2    # "relation":Lorg/apache/poi/xwpf/usermodel/XWPFRelation;
    .end local v3    # "i":I
    .end local v4    # "wrapper":Lorg/apache/poi/xwpf/usermodel/XWPFFooter;
    .end local v5    # "pStyle":Ljava/lang/String;
    .end local v6    # "ftr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;
    :cond_0
    return-object v0
.end method

.method public createHeader(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;)Lorg/apache/poi/xwpf/usermodel/XWPFHeader;
    .locals 1
    .param p1, "type"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->createHeader(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;[Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    move-result-object v0

    return-object v0
.end method

.method public createHeader(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;[Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)Lorg/apache/poi/xwpf/usermodel/XWPFHeader;
    .locals 7
    .param p1, "type"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;
    .param p2, "pars"    # [Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    .line 178
    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getHeader(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;)Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    move-result-object v0

    .line 180
    .local v0, "header":Lorg/apache/poi/xwpf/usermodel/XWPFHeader;
    if-nez v0, :cond_0

    .line 181
    invoke-static {}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/HdrDocument$Factory;->newInstance()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/HdrDocument;

    move-result-object v1

    .line 183
    .local v1, "hdrDoc":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/HdrDocument;
    sget-object v2, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->HEADER:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    .line 184
    .local v2, "relation":Lorg/apache/poi/xwpf/usermodel/XWPFRelation;
    invoke-direct {p0, v2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getRelationIndex(Lorg/apache/poi/xwpf/usermodel/XWPFRelation;)I

    move-result v3

    .line 186
    .local v3, "i":I
    iget-object v4, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->doc:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/XWPFFactory;->getInstance()Lorg/apache/poi/xwpf/usermodel/XWPFFactory;

    move-result-object v5

    invoke-virtual {v4, v2, v5, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;I)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    .line 188
    .local v4, "wrapper":Lorg/apache/poi/xwpf/usermodel/XWPFHeader;
    iget-object v5, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->doc:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v4, v5}, Lorg/apache/poi/xwpf/usermodel/XWPFHeader;->setXWPFDocument(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;)V

    .line 190
    const-string v5, "Header"

    .line 191
    .local v5, "pStyle":Ljava/lang/String;
    invoke-direct {p0, p1, v5, v4, p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->buildHdr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;Ljava/lang/String;Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;[Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;

    move-result-object v6

    .line 192
    .local v6, "hdr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;
    invoke-virtual {v4, v6}, Lorg/apache/poi/xwpf/usermodel/XWPFHeader;->setHeaderFooter(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;)V

    .line 193
    invoke-interface {v1, v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/HdrDocument;->setHdr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;)V

    .line 194
    invoke-direct {p0, v4, p1}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->assignHeader(Lorg/apache/poi/xwpf/usermodel/XWPFHeader;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;)V

    .line 195
    move-object v0, v4

    .line 198
    .end local v1    # "hdrDoc":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/HdrDocument;
    .end local v2    # "relation":Lorg/apache/poi/xwpf/usermodel/XWPFRelation;
    .end local v3    # "i":I
    .end local v4    # "wrapper":Lorg/apache/poi/xwpf/usermodel/XWPFHeader;
    .end local v5    # "pStyle":Ljava/lang/String;
    .end local v6    # "hdr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;
    :cond_0
    return-object v0
.end method

.method public createWatermark(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .line 417
    const/4 v0, 0x1

    new-array v1, v0, [Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    .line 418
    .local v1, "pars":[Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getWatermarkParagraph(Ljava/lang/String;I)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 419
    sget-object v0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->DEFAULT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->createHeader(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;[Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    .line 420
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getWatermarkParagraph(Ljava/lang/String;I)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-result-object v0

    aput-object v0, v1, v2

    .line 421
    sget-object v0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->FIRST:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->createHeader(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;[Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    .line 422
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getWatermarkParagraph(Ljava/lang/String;I)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-result-object v0

    aput-object v0, v1, v2

    .line 423
    sget-object v0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->EVEN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->createHeader(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;[Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    .line 424
    return-void
.end method

.method public getDefaultFooter()Lorg/apache/poi/xwpf/usermodel/XWPFFooter;
    .locals 1

    .line 350
    iget-object v0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->defaultFooter:Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    return-object v0
.end method

.method public getDefaultHeader()Lorg/apache/poi/xwpf/usermodel/XWPFHeader;
    .locals 1

    .line 346
    iget-object v0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->defaultHeader:Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    return-object v0
.end method

.method public getEvenPageFooter()Lorg/apache/poi/xwpf/usermodel/XWPFFooter;
    .locals 1

    .line 342
    iget-object v0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->evenPageFooter:Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    return-object v0
.end method

.method public getEvenPageHeader()Lorg/apache/poi/xwpf/usermodel/XWPFHeader;
    .locals 1

    .line 338
    iget-object v0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->evenPageHeader:Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    return-object v0
.end method

.method public getFirstPageFooter()Lorg/apache/poi/xwpf/usermodel/XWPFFooter;
    .locals 1

    .line 318
    iget-object v0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->firstPageFooter:Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    return-object v0
.end method

.method public getFirstPageHeader()Lorg/apache/poi/xwpf/usermodel/XWPFHeader;
    .locals 1

    .line 314
    iget-object v0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->firstPageHeader:Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    return-object v0
.end method

.method public getFooter(I)Lorg/apache/poi/xwpf/usermodel/XWPFFooter;
    .locals 1
    .param p1, "pageNumber"    # I

    .line 391
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->firstPageFooter:Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    if-eqz v0, :cond_0

    .line 392
    return-object v0

    .line 394
    :cond_0
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->evenPageFooter:Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    if-eqz v0, :cond_1

    .line 395
    return-object v0

    .line 397
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->defaultFooter:Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    return-object v0
.end method

.method public getFooter(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;)Lorg/apache/poi/xwpf/usermodel/XWPFFooter;
    .locals 1
    .param p1, "type"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    .line 407
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr;->EVEN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    if-ne p1, v0, :cond_0

    .line 408
    iget-object v0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->evenPageFooter:Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    return-object v0

    .line 409
    :cond_0
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr;->FIRST:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    if-ne p1, v0, :cond_1

    .line 410
    iget-object v0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->firstPageFooter:Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    return-object v0

    .line 412
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->defaultFooter:Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    return-object v0
.end method

.method public getHeader(I)Lorg/apache/poi/xwpf/usermodel/XWPFHeader;
    .locals 1
    .param p1, "pageNumber"    # I

    .line 360
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->firstPageHeader:Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    if-eqz v0, :cond_0

    .line 361
    return-object v0

    .line 363
    :cond_0
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->evenPageHeader:Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    if-eqz v0, :cond_1

    .line 364
    return-object v0

    .line 366
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->defaultHeader:Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    return-object v0
.end method

.method public getHeader(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;)Lorg/apache/poi/xwpf/usermodel/XWPFHeader;
    .locals 1
    .param p1, "type"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    .line 376
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr;->EVEN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    if-ne p1, v0, :cond_0

    .line 377
    iget-object v0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->evenPageHeader:Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    return-object v0

    .line 378
    :cond_0
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr;->FIRST:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    if-ne p1, v0, :cond_1

    .line 379
    iget-object v0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->firstPageHeader:Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    return-object v0

    .line 381
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->defaultHeader:Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    return-object v0
.end method

.method public getOddPageFooter()Lorg/apache/poi/xwpf/usermodel/XWPFFooter;
    .locals 1

    .line 334
    iget-object v0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->defaultFooter:Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    return-object v0
.end method

.method public getOddPageHeader()Lorg/apache/poi/xwpf/usermodel/XWPFHeader;
    .locals 1

    .line 326
    iget-object v0, p0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->defaultHeader:Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    return-object v0
.end method
