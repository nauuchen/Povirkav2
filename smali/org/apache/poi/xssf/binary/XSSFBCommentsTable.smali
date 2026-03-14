.class public Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;
.super Lorg/apache/poi/xssf/binary/XSSFBParser;
.source "XSSFBCommentsTable.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private authorBuffer:Ljava/lang/StringBuilder;

.field private authorId:I

.field private authors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cellAddress:Lorg/apache/poi/ss/util/CellAddress;

.field private cellRange:Lorg/apache/poi/xssf/binary/XSSFBCellRange;

.field private comment:Ljava/lang/String;

.field private commentAddresses:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/poi/ss/util/CellAddress;",
            ">;"
        }
    .end annotation
.end field

.field private comments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/util/CellAddress;",
            "Lorg/apache/poi/xssf/binary/XSSFBComment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBParser;-><init>(Ljava/io/InputStream;)V

    .line 39
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->comments:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->commentAddresses:Ljava/util/Queue;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->authors:Ljava/util/List;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->authorId:I

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->cellAddress:Lorg/apache/poi/ss/util/CellAddress;

    .line 46
    iput-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->cellRange:Lorg/apache/poi/xssf/binary/XSSFBCellRange;

    .line 47
    iput-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->comment:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->authorBuffer:Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p0}, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->parse()V

    .line 54
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->commentAddresses:Ljava/util/Queue;

    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->comments:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 55
    return-void
.end method


# virtual methods
.method public get(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/binary/XSSFBComment;
    .locals 1
    .param p1, "cellAddress"    # Lorg/apache/poi/ss/util/CellAddress;

    .line 92
    if-nez p1, :cond_0

    .line 93
    const/4 v0, 0x0

    return-object v0

    .line 95
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->comments:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/binary/XSSFBComment;

    return-object v0
.end method

.method public getAddresses()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lorg/apache/poi/ss/util/CellAddress;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->commentAddresses:Ljava/util/Queue;

    return-object v0
.end method

.method public handleRecord(I[B)V
    .locals 10
    .param p1, "id"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/xssf/binary/XSSFBParseException;
        }
    .end annotation

    .line 59
    invoke-static {p1}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->lookup(I)Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-result-object v0

    .line 60
    .local v0, "recordType":Lorg/apache/poi/xssf/binary/XSSFBRecordType;
    sget-object v1, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable$1;->$SwitchMap$org$apache$poi$xssf$binary$XSSFBRecordType:[I

    invoke-virtual {v0}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    const/4 v5, 0x0

    if-eq v1, v2, :cond_1

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    .local v1, "offset":I
    move-object v2, v5

    .line 79
    .local v2, "xssfbRichStr":Lorg/apache/poi/xssf/binary/XSSFBRichStr;
    iget-object v3, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->authorBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 80
    iget-object v3, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->authorBuffer:Ljava/lang/StringBuilder;

    invoke-static {p2, v4, v3}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->readXLWideString([BILjava/lang/StringBuilder;)I

    .line 81
    iget-object v3, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->authors:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->authorBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    .end local v1    # "offset":I
    .end local v2    # "xssfbRichStr":Lorg/apache/poi/xssf/binary/XSSFBRichStr;
    :cond_1
    move v1, v4

    .restart local v1    # "offset":I
    move-object v2, v5

    .line 74
    .restart local v2    # "xssfbRichStr":Lorg/apache/poi/xssf/binary/XSSFBRichStr;
    iget-object v3, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->comments:Ljava/util/Map;

    iget-object v4, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->cellAddress:Lorg/apache/poi/ss/util/CellAddress;

    new-instance v6, Lorg/apache/poi/xssf/binary/XSSFBComment;

    iget-object v7, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->cellAddress:Lorg/apache/poi/ss/util/CellAddress;

    iget-object v8, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->authors:Ljava/util/List;

    iget v9, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->authorId:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->comment:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/poi/xssf/binary/XSSFBComment;-><init>(Lorg/apache/poi/ss/util/CellAddress;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const/4 v3, -0x1

    iput v3, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->authorId:I

    .line 76
    iput-object v5, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->cellAddress:Lorg/apache/poi/ss/util/CellAddress;

    .line 77
    goto :goto_0

    .line 60
    .end local v1    # "offset":I
    .end local v2    # "xssfbRichStr":Lorg/apache/poi/xssf/binary/XSSFBRichStr;
    :cond_2
    move v1, v4

    .line 70
    .restart local v1    # "offset":I
    invoke-static {p2, v4}, Lorg/apache/poi/xssf/binary/XSSFBRichStr;->build([BI)Lorg/apache/poi/xssf/binary/XSSFBRichStr;

    move-result-object v2

    .line 71
    .restart local v2    # "xssfbRichStr":Lorg/apache/poi/xssf/binary/XSSFBRichStr;
    invoke-virtual {v2}, Lorg/apache/poi/xssf/binary/XSSFBRichStr;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->comment:Ljava/lang/String;

    .line 72
    goto :goto_0

    .line 62
    .end local v1    # "offset":I
    .end local v2    # "xssfbRichStr":Lorg/apache/poi/xssf/binary/XSSFBRichStr;
    :cond_3
    const/4 v1, 0x0

    .line 63
    .restart local v1    # "offset":I
    invoke-static {p2}, Lorg/apache/poi/util/LittleEndian;->getUInt([B)J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->castToInt(J)I

    move-result v2

    iput v2, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->authorId:I

    add-int/2addr v1, v3

    .line 64
    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->cellRange:Lorg/apache/poi/xssf/binary/XSSFBCellRange;

    invoke-static {p2, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBCellRange;->parse([BILorg/apache/poi/xssf/binary/XSSFBCellRange;)Lorg/apache/poi/xssf/binary/XSSFBCellRange;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->cellRange:Lorg/apache/poi/xssf/binary/XSSFBCellRange;

    .line 65
    add-int/lit8 v1, v1, 0x10

    .line 67
    new-instance v2, Lorg/apache/poi/ss/util/CellAddress;

    iget-object v3, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->cellRange:Lorg/apache/poi/xssf/binary/XSSFBCellRange;

    iget v3, v3, Lorg/apache/poi/xssf/binary/XSSFBCellRange;->firstRow:I

    iget-object v4, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->cellRange:Lorg/apache/poi/xssf/binary/XSSFBCellRange;

    iget v4, v4, Lorg/apache/poi/xssf/binary/XSSFBCellRange;->firstCol:I

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    iput-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->cellAddress:Lorg/apache/poi/ss/util/CellAddress;

    .line 68
    nop

    .line 84
    .end local v1    # "offset":I
    :goto_0
    return-void
.end method
