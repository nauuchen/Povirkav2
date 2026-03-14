.class public Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;
.super Lorg/apache/poi/POIXMLTextExtractor;
.source "XSLFPowerPointExtractor.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final SUPPORTED_TYPES:[Lorg/apache/poi/xslf/usermodel/XSLFRelation;


# instance fields
.field private masterByDefault:Z

.field private notesByDefault:Z

.field private slidesByDefault:Z

.field private slideshow:Lorg/apache/poi/xslf/usermodel/XMLSlideShow;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    nop

    .line 44
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->MAIN:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->MACRO:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->MACRO_TEMPLATE:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->PRESENTATIONML:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->PRESENTATIONML_TEMPLATE:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->PRESENTATION_MACRO:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->SUPPORTED_TYPES:[Lorg/apache/poi/xslf/usermodel/XSLFRelation;

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

    .line 63
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;

    invoke-direct {v0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/XMLSlideShow;)V
    .locals 1
    .param p1, "slideshow"    # Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    .line 56
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLTextExtractor;-><init>(Lorg/apache/poi/POIXMLDocument;)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->slidesByDefault:Z

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->notesByDefault:Z

    .line 53
    iput-boolean v0, p0, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->masterByDefault:Z

    .line 57
    iput-object p1, p0, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->slideshow:Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;)V
    .locals 2
    .param p1, "slideshow"    # Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;-><init>(Lorg/apache/poi/xslf/usermodel/XMLSlideShow;)V

    .line 61
    return-void
.end method

.method private static extractText(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;ZLjava/lang/StringBuilder;)V
    .locals 9
    .param p0, "data"    # Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;
    .param p1, "skipPlaceholders"    # Z
    .param p2, "text"    # Ljava/lang/StringBuilder;

    .line 199
    invoke-interface {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    .line 200
    .local v1, "s":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    instance-of v2, v1, Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;

    if-eqz v2, :cond_0

    .line 201
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;

    invoke-static {v2, p1, p2}, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->extractText(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;ZLjava/lang/StringBuilder;)V

    goto :goto_4

    .line 202
    :cond_0
    instance-of v2, v1, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    const-string v3, "\n"

    if-eqz v2, :cond_2

    .line 203
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    .line 205
    .local v2, "ts":Lorg/apache/poi/xslf/usermodel/XSLFTextShape;
    if-eqz p1, :cond_1

    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->isPlaceholder()Z

    move-result v4

    if-nez v4, :cond_4

    .line 206
    :cond_1
    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 209
    .end local v2    # "ts":Lorg/apache/poi/xslf/usermodel/XSLFTextShape;
    :cond_2
    instance-of v2, v1, Lorg/apache/poi/xslf/usermodel/XSLFTable;

    if-eqz v2, :cond_4

    .line 210
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFTable;

    .line 212
    .local v2, "ts":Lorg/apache/poi/xslf/usermodel/XSLFTable;
    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;

    .line 213
    .local v5, "r":Lorg/apache/poi/xslf/usermodel/XSLFTableRow;
    invoke-virtual {v5}, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    .line 214
    .local v7, "c":Lorg/apache/poi/xslf/usermodel/XSLFTableCell;
    invoke-virtual {v7}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string v8, "\t"

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 217
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "c":Lorg/apache/poi/xslf/usermodel/XSLFTableCell;
    :cond_3
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 209
    .end local v2    # "ts":Lorg/apache/poi/xslf/usermodel/XSLFTable;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "r":Lorg/apache/poi/xslf/usermodel/XSLFTableRow;
    :cond_4
    :goto_3
    nop

    .line 219
    .end local v1    # "s":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    :cond_5
    :goto_4
    goto :goto_0

    .line 221
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_6
    return-void
.end method

.method public static getText(Lorg/apache/poi/xslf/usermodel/XSLFSlide;ZZZ)Ljava/lang/String;
    .locals 15
    .param p0, "slide"    # Lorg/apache/poi/xslf/usermodel/XSLFSlide;
    .param p1, "slideText"    # Z
    .param p2, "notesText"    # Z
    .param p3, "masterText"    # Z

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v0, "text":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getSlideShow()Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getCommentAuthors()Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;

    move-result-object v1

    .line 152
    .local v1, "commentAuthors":Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getNotes()Lorg/apache/poi/xslf/usermodel/XSLFNotes;

    move-result-object v2

    .line 153
    .local v2, "notes":Lorg/apache/poi/xslf/usermodel/XSLFNotes;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getComments()Lorg/apache/poi/xslf/usermodel/XSLFComments;

    move-result-object v3

    .line 154
    .local v3, "comments":Lorg/apache/poi/xslf/usermodel/XSLFComments;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getSlideLayout()Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    move-result-object v4

    .line 155
    .local v4, "layout":Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;
    invoke-virtual {v4}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->getSlideMaster()Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    move-result-object v5

    .line 161
    .local v5, "master":Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;
    const/4 v6, 0x0

    if-eqz p1, :cond_4

    .line 162
    move-object v7, p0

    invoke-static {p0, v6, v0}, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->extractText(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;ZLjava/lang/StringBuilder;)V

    .line 165
    if-eqz p3, :cond_2

    .line 166
    if-eqz v4, :cond_1

    .line 167
    const/4 v8, 0x1

    invoke-static {v4, v8, v0}, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->extractText(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;ZLjava/lang/StringBuilder;)V

    .line 168
    if-eqz v5, :cond_0

    .line 169
    invoke-static {v5, v8, v0}, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->extractText(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;ZLjava/lang/StringBuilder;)V

    goto :goto_0

    .line 168
    :cond_0
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 166
    :cond_1
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 173
    :cond_2
    :goto_0
    if-eqz v3, :cond_5

    .line 174
    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/XSLFComments;->getCTCommentsList()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;

    move-result-object v8

    invoke-interface {v8}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;->getCmArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;

    move-result-object v8

    .local v8, "arr$":[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;
    array-length v9, v8

    .local v9, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_1
    if-ge v10, v9, :cond_5

    aget-object v11, v8, v10

    .line 176
    .local v11, "comment":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;
    if-eqz v1, :cond_3

    .line 177
    invoke-interface {v11}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;->getAuthorId()J

    move-result-wide v12

    invoke-virtual {v1, v12, v13}, Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;->getAuthorById(J)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;

    move-result-object v12

    .line 178
    .local v12, "author":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;
    if-eqz v12, :cond_3

    .line 179
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v12}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .end local v12    # "author":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;
    :cond_3
    invoke-interface {v11}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string v12, "\n"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .end local v11    # "comment":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 161
    .end local v8    # "arr$":[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;
    .end local v9    # "len$":I
    .end local v10    # "i$":I
    :cond_4
    move-object v7, p0

    .line 191
    :cond_5
    if-eqz p2, :cond_6

    if-eqz v2, :cond_6

    .line 192
    invoke-static {v2, v6, v0}, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->extractText(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;ZLjava/lang/StringBuilder;)V

    .line 195
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 68
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Use:"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 69
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "  XSLFPowerPointExtractor <filename.pptx>"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 72
    :cond_0
    new-instance v0, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-direct {v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;)V

    .line 75
    .local v0, "extractor":Lorg/apache/poi/POIXMLTextExtractor;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLTextExtractor;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Lorg/apache/poi/POIXMLTextExtractor;->close()V

    .line 77
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 2

    .line 106
    iget-boolean v0, p0, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->slidesByDefault:Z

    iget-boolean v1, p0, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->notesByDefault:Z

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->getText(ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText(ZZ)Ljava/lang/String;
    .locals 1
    .param p1, "slideText"    # Z
    .param p2, "notesText"    # Z

    .line 115
    iget-boolean v0, p0, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->masterByDefault:Z

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->getText(ZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText(ZZZ)Ljava/lang/String;
    .locals 4
    .param p1, "slideText"    # Z
    .param p2, "notesText"    # Z
    .param p3, "masterText"    # Z

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v0, "text":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->slideshow:Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getSlides()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    .line 131
    .local v2, "slide":Lorg/apache/poi/xslf/usermodel/XSLFSlide;
    invoke-static {v2, p1, p2, p3}, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->getText(Lorg/apache/poi/xslf/usermodel/XSLFSlide;ZZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 134
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "slide":Lorg/apache/poi/xslf/usermodel/XSLFSlide;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setMasterByDefault(Z)V
    .locals 0
    .param p1, "masterByDefault"    # Z

    .line 98
    iput-boolean p1, p0, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->masterByDefault:Z

    .line 99
    return-void
.end method

.method public setNotesByDefault(Z)V
    .locals 0
    .param p1, "notesByDefault"    # Z

    .line 91
    iput-boolean p1, p0, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->notesByDefault:Z

    .line 92
    return-void
.end method

.method public setSlidesByDefault(Z)V
    .locals 0
    .param p1, "slidesByDefault"    # Z

    .line 84
    iput-boolean p1, p0, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->slidesByDefault:Z

    .line 85
    return-void
.end method
