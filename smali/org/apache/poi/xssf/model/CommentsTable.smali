.class public Lorg/apache/poi/xssf/model/CommentsTable;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "CommentsTable.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field public static final DEFAULT_AUTHOR:Ljava/lang/String; = ""

.field public static final DEFAULT_AUTHOR_ID:I


# instance fields
.field private commentRefs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/util/CellAddress;",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;",
            ">;"
        }
    .end annotation
.end field

.field private comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    .line 57
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    .line 58
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;->addNewCommentList()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;

    .line 59
    iget-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;->addNewAuthors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAuthors;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAuthors;->addAuthor(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1
    .param p1, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 67
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/model/CommentsTable;->readFrom(Ljava/io/InputStream;)V

    .line 68
    return-void
.end method

.method private addNewAuthor(Ljava/lang/String;)I
    .locals 2
    .param p1, "author"    # Ljava/lang/String;

    .line 236
    iget-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;->getAuthors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAuthors;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAuthors;->sizeOfAuthorArray()I

    move-result v0

    .line 237
    .local v0, "index":I
    iget-object v1, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;->getAuthors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAuthors;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAuthors;->insertAuthor(ILjava/lang/String;)V

    .line 238
    return v0
.end method

.method private prepareCTCommentCache()V
    .locals 7

    .line 176
    iget-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->commentRefs:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->commentRefs:Ljava/util/Map;

    .line 178
    iget-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;->getCommentList()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;->getCommentArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    move-result-object v0

    .local v0, "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 179
    .local v3, "comment":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    iget-object v4, p0, Lorg/apache/poi/xssf/model/CommentsTable;->commentRefs:Ljava/util/Map;

    new-instance v5, Lorg/apache/poi/ss/util/CellAddress;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->getRef()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .end local v3    # "comment":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    .end local v0    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected commit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/CommentsTable;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    .line 87
    .local v0, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 88
    .local v1, "out":Ljava/io/OutputStream;
    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/model/CommentsTable;->writeTo(Ljava/io/OutputStream;)V

    .line 89
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 90
    return-void
.end method

.method public findAuthor(Ljava/lang/String;)I
    .locals 3
    .param p1, "author"    # Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;->getAuthors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAuthors;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAuthors;->getAuthorArray()[Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "authorArray":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 120
    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    return v1

    .line 119
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/model/CommentsTable;->addNewAuthor(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public findCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFComment;
    .locals 3
    .param p1, "cellAddress"    # Lorg/apache/poi/ss/util/CellAddress;

    .line 134
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/model/CommentsTable;->getCTComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    move-result-object v0

    .line 135
    .local v0, "ct":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFComment;

    invoke-direct {v2, p0, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFComment;-><init>(Lorg/apache/poi/xssf/model/CommentsTable;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;Lcom/microsoft/schemas/vml/CTShape;)V

    move-object v1, v2

    :goto_0
    return-object v1
.end method

.method public getAuthor(J)Ljava/lang/String;
    .locals 2
    .param p1, "authorId"    # J

    .line 114
    iget-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;->getAuthors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAuthors;

    move-result-object v0

    long-to-int v1, p1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAuthors;->getAuthorArray(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCTComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    .locals 1
    .param p1, "cellRef"    # Lorg/apache/poi/ss/util/CellAddress;
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 147
    invoke-direct {p0}, Lorg/apache/poi/xssf/model/CommentsTable;->prepareCTCommentCache()V

    .line 150
    iget-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->commentRefs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    return-object v0
.end method

.method public getCTComments()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 248
    iget-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    return-object v0
.end method

.method public getCellComments()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/util/CellAddress;",
            "Lorg/apache/poi/xssf/usermodel/XSSFComment;",
            ">;"
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Lorg/apache/poi/xssf/model/CommentsTable;->prepareCTCommentCache()V

    .line 160
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 162
    .local v0, "map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Lorg/apache/poi/ss/util/CellAddress;Lorg/apache/poi/xssf/usermodel/XSSFComment;>;"
    iget-object v1, p0, Lorg/apache/poi/xssf/model/CommentsTable;->commentRefs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 163
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/poi/ss/util/CellAddress;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lorg/apache/poi/xssf/usermodel/XSSFComment;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v5, v6}, Lorg/apache/poi/xssf/usermodel/XSSFComment;-><init>(Lorg/apache/poi/xssf/model/CommentsTable;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;Lcom/microsoft/schemas/vml/CTShape;)V

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 166
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/poi/ss/util/CellAddress;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;>;"
    :cond_0
    return-object v0
.end method

.method public getNumberOfAuthors()I
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;->getAuthors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAuthors;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAuthors;->sizeOfAuthorArray()I

    move-result v0

    return v0
.end method

.method public getNumberOfComments()I
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;->getCommentList()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;->sizeOfCommentArray()I

    move-result v0

    return v0
.end method

.method public newComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    .locals 3
    .param p1, "ref"    # Lorg/apache/poi/ss/util/CellAddress;
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 192
    iget-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;->getCommentList()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;->addNewComment()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    move-result-object v0

    .line 193
    .local v0, "ct":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->formatAsString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->setRef(Ljava/lang/String;)V

    .line 194
    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->setAuthorId(J)V

    .line 196
    iget-object v1, p0, Lorg/apache/poi/xssf/model/CommentsTable;->commentRefs:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 197
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_0
    return-object v0
.end method

.method public readFrom(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    :try_start_0
    sget-object v0, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CommentsDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CommentsDocument;

    move-result-object v0

    .line 73
    .local v0, "doc":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CommentsDocument;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CommentsDocument;->getComments()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v0    # "doc":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CommentsDocument;
    nop

    .line 77
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Lorg/apache/xmlbeans/XmlException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public referenceUpdated(Lorg/apache/poi/ss/util/CellAddress;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;)V
    .locals 3
    .param p1, "oldReference"    # Lorg/apache/poi/ss/util/CellAddress;
    .param p2, "comment"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    .line 99
    iget-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->commentRefs:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->commentRefs:Ljava/util/Map;

    new-instance v1, Lorg/apache/poi/ss/util/CellAddress;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_0
    return-void
.end method

.method public removeComment(Lorg/apache/poi/ss/util/CellAddress;)Z
    .locals 6
    .param p1, "cellRef"    # Lorg/apache/poi/ss/util/CellAddress;

    .line 209
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->formatAsString()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "stringRef":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;->getCommentList()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;

    move-result-object v1

    .line 211
    .local v1, "lst":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;
    if-eqz v1, :cond_2

    .line 212
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;->getCommentArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    move-result-object v2

    .line 213
    .local v2, "commentArray":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 214
    aget-object v4, v2, v3

    .line 215
    .local v4, "comment":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->getRef()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 216
    invoke-interface {v1, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;->removeComment(I)V

    .line 218
    iget-object v5, p0, Lorg/apache/poi/xssf/model/CommentsTable;->commentRefs:Ljava/util/Map;

    if-eqz v5, :cond_0

    .line 219
    invoke-interface {v5, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_0
    const/4 v5, 0x1

    return v5

    .line 213
    .end local v4    # "comment":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 225
    .end local v2    # "commentArray":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    .end local v3    # "i":I
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CommentsDocument$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CommentsDocument;

    move-result-object v0

    .line 80
    .local v0, "doc":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CommentsDocument;
    iget-object v1, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CommentsDocument;->setComments(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;)V

    .line 81
    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-interface {v0, p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CommentsDocument;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    .line 82
    return-void
.end method
