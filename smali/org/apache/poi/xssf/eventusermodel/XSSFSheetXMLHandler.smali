.class public Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XSSFSheetXMLHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;,
        Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;,
        Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;
    }
.end annotation


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private cellRef:Ljava/lang/String;

.field private commentCellRefs:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/poi/ss/util/CellAddress;",
            ">;"
        }
    .end annotation
.end field

.field private commentsTable:Lorg/apache/poi/xssf/model/CommentsTable;

.field private fIsOpen:Z

.field private formatIndex:S

.field private formatString:Ljava/lang/String;

.field private final formatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

.field private formula:Ljava/lang/StringBuffer;

.field private formulasNotResults:Z

.field private headerFooter:Ljava/lang/StringBuffer;

.field private hfIsOpen:Z

.field private isIsOpen:Z

.field private nextDataType:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

.field private nextRowNum:I

.field private final output:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

.field private rowNum:I

.field private sharedStringsTable:Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;

.field private stylesTable:Lorg/apache/poi/xssf/model/StylesTable;

.field private vIsOpen:Z

.field private value:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/model/StylesTable;Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;Lorg/apache/poi/ss/usermodel/DataFormatter;Z)V
    .locals 7
    .param p1, "styles"    # Lorg/apache/poi/xssf/model/StylesTable;
    .param p2, "strings"    # Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;
    .param p3, "sheetContentsHandler"    # Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;
    .param p4, "dataFormatter"    # Lorg/apache/poi/ss/usermodel/DataFormatter;
    .param p5, "formulasNotResults"    # Z

    .line 146
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;-><init>(Lorg/apache/poi/xssf/model/StylesTable;Lorg/apache/poi/xssf/model/CommentsTable;Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;Lorg/apache/poi/ss/usermodel/DataFormatter;Z)V

    .line 147
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/model/StylesTable;Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;Z)V
    .locals 6
    .param p1, "styles"    # Lorg/apache/poi/xssf/model/StylesTable;
    .param p2, "strings"    # Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;
    .param p3, "sheetContentsHandler"    # Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;
    .param p4, "formulasNotResults"    # Z

    .line 160
    new-instance v4, Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-direct {v4}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;-><init>(Lorg/apache/poi/xssf/model/StylesTable;Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;Lorg/apache/poi/ss/usermodel/DataFormatter;Z)V

    .line 161
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/model/StylesTable;Lorg/apache/poi/xssf/model/CommentsTable;Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;Lorg/apache/poi/ss/usermodel/DataFormatter;Z)V
    .locals 1
    .param p1, "styles"    # Lorg/apache/poi/xssf/model/StylesTable;
    .param p2, "comments"    # Lorg/apache/poi/xssf/model/CommentsTable;
    .param p3, "strings"    # Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;
    .param p4, "sheetContentsHandler"    # Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;
    .param p5, "dataFormatter"    # Lorg/apache/poi/ss/usermodel/DataFormatter;
    .param p6, "formulasNotResults"    # Z

    .line 123
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 105
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->value:Ljava/lang/StringBuffer;

    .line 106
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formula:Ljava/lang/StringBuffer;

    .line 107
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->headerFooter:Ljava/lang/StringBuffer;

    .line 124
    iput-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->stylesTable:Lorg/apache/poi/xssf/model/StylesTable;

    .line 125
    iput-object p2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentsTable:Lorg/apache/poi/xssf/model/CommentsTable;

    .line 126
    iput-object p3, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->sharedStringsTable:Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;

    .line 127
    iput-object p4, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->output:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

    .line 128
    iput-boolean p6, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formulasNotResults:Z

    .line 129
    sget-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;->NUMBER:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    iput-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->nextDataType:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    .line 130
    iput-object p5, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

    .line 131
    invoke-direct {p0}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->init()V

    .line 132
    return-void
.end method

.method private checkForEmptyCellComments(Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;)V
    .locals 5
    .param p1, "type"    # Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;

    .line 432
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentCellRefs:Ljava/util/Queue;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 435
    sget-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;->END_OF_SHEET_DATA:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;

    if-ne p1, v0, :cond_1

    .line 436
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentCellRefs:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentCellRefs:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->outputEmptyCellComment(Lorg/apache/poi/ss/util/CellAddress;)V

    goto :goto_0

    .line 439
    :cond_0
    return-void

    .line 443
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->cellRef:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 444
    sget-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;->END_OF_ROW:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;

    if-ne p1, v0, :cond_4

    .line 445
    :goto_1
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentCellRefs:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 446
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentCellRefs:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/util/CellAddress;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v0

    iget v1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->rowNum:I

    if-ne v0, v1, :cond_2

    .line 447
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentCellRefs:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->outputEmptyCellComment(Lorg/apache/poi/ss/util/CellAddress;)V

    goto :goto_1

    .line 449
    :cond_2
    return-void

    .line 452
    :cond_3
    return-void

    .line 454
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cell ref should be null only if there are only empty cells in the row; rowNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->rowNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_5
    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    iget-object v1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->cellRef:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Ljava/lang/String;)V

    .line 461
    .local v0, "cellRef":Lorg/apache/poi/ss/util/CellAddress;
    iget-object v1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentCellRefs:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/util/CellAddress;

    .line 462
    .local v1, "peekCellRef":Lorg/apache/poi/ss/util/CellAddress;
    sget-object v2, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;->CELL:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;

    if-ne p1, v2, :cond_6

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/util/CellAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 464
    iget-object v2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentCellRefs:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 465
    return-void

    .line 468
    :cond_6
    invoke-virtual {v1, v0}, Lorg/apache/poi/ss/util/CellAddress;->compareTo(Lorg/apache/poi/ss/util/CellAddress;)I

    move-result v2

    .line 469
    .local v2, "comparison":I
    if-lez v2, :cond_7

    sget-object v3, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;->END_OF_ROW:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;

    if-ne p1, v3, :cond_7

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v3

    iget v4, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->rowNum:I

    if-gt v3, v4, :cond_7

    .line 470
    iget-object v3, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentCellRefs:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/util/CellAddress;

    .line 471
    .local v3, "nextCommentCellRef":Lorg/apache/poi/ss/util/CellAddress;
    invoke-direct {p0, v3}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->outputEmptyCellComment(Lorg/apache/poi/ss/util/CellAddress;)V

    goto :goto_2

    .line 472
    .end local v3    # "nextCommentCellRef":Lorg/apache/poi/ss/util/CellAddress;
    :cond_7
    if-gez v2, :cond_8

    sget-object v3, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;->CELL:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;

    if-ne p1, v3, :cond_8

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v3

    iget v4, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->rowNum:I

    if-gt v3, v4, :cond_8

    .line 473
    iget-object v3, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentCellRefs:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/util/CellAddress;

    .line 474
    .restart local v3    # "nextCommentCellRef":Lorg/apache/poi/ss/util/CellAddress;
    invoke-direct {p0, v3}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->outputEmptyCellComment(Lorg/apache/poi/ss/util/CellAddress;)V

    goto :goto_2

    .line 476
    .end local v3    # "nextCommentCellRef":Lorg/apache/poi/ss/util/CellAddress;
    :cond_8
    const/4 v3, 0x0

    .line 479
    .end local v0    # "cellRef":Lorg/apache/poi/ss/util/CellAddress;
    .end local v1    # "peekCellRef":Lorg/apache/poi/ss/util/CellAddress;
    .end local v2    # "comparison":I
    .restart local v3    # "nextCommentCellRef":Lorg/apache/poi/ss/util/CellAddress;
    :goto_2
    if-eqz v3, :cond_9

    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentCellRefs:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 481
    .end local v3    # "nextCommentCellRef":Lorg/apache/poi/ss/util/CellAddress;
    :cond_9
    return-void
.end method

.method private init()V
    .locals 7

    .line 164
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentsTable:Lorg/apache/poi/xssf/model/CommentsTable;

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentCellRefs:Ljava/util/Queue;

    .line 167
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentsTable:Lorg/apache/poi/xssf/model/CommentsTable;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/CommentsTable;->getCTComments()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    move-result-object v0

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

    .line 168
    .local v3, "comment":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    iget-object v4, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentCellRefs:Ljava/util/Queue;

    new-instance v5, Lorg/apache/poi/ss/util/CellAddress;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->getRef()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 167
    .end local v3    # "comment":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    .end local v0    # "arr$":[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method

.method private isTextTag(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 174
    const-string/jumbo v0, "v"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 176
    return v1

    .line 178
    :cond_0
    const-string v0, "inlineStr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    return v1

    .line 182
    :cond_1
    const-string v0, "t"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->isIsOpen:Z

    if-eqz v0, :cond_2

    .line 184
    return v1

    .line 187
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private outputEmptyCellComment(Lorg/apache/poi/ss/util/CellAddress;)V
    .locals 4
    .param p1, "cellRef"    # Lorg/apache/poi/ss/util/CellAddress;

    .line 488
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentsTable:Lorg/apache/poi/xssf/model/CommentsTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/model/CommentsTable;->findCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFComment;

    move-result-object v0

    .line 489
    .local v0, "comment":Lorg/apache/poi/xssf/usermodel/XSSFComment;
    iget-object v1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->output:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->formatAsString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;->cell(Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/XSSFComment;)V

    .line 490
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 417
    iget-boolean v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->vIsOpen:Z

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->value:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 420
    :cond_0
    iget-boolean v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->fIsOpen:Z

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formula:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 423
    :cond_1
    iget-boolean v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->hfIsOpen:Z

    if-eqz v0, :cond_2

    .line 424
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->headerFooter:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 426
    :cond_2
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 301
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-eqz v2, :cond_0

    const-string v0, "http://schemas.openxmlformats.org/spreadsheetml/2006/main"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    return-void

    .line 305
    :cond_0
    const/4 v4, 0x0

    .line 308
    .local v4, "thisStr":Ljava/lang/String;
    invoke-direct {v1, v3}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->isTextTag(Ljava/lang/String;)Z

    move-result v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_6

    .line 309
    iput-boolean v6, v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->vIsOpen:Z

    .line 312
    sget-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$1;->$SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType:[I

    iget-object v7, v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->nextDataType:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    invoke-virtual {v7}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;->ordinal()I

    move-result v7

    aget v0, v0, v7

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_0

    move-object v0, v7

    .local v0, "rtsi":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    move-object v5, v7

    .local v5, "n":Ljava/lang/String;
    move-object v8, v7

    .line 371
    .local v6, "first":C
    .local v8, "sstIndex":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(TODO: Unexpected type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->nextDataType:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 312
    .end local v0    # "rtsi":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    .end local v5    # "n":Ljava/lang/String;
    .end local v6    # "first":C
    .end local v8    # "sstIndex":Ljava/lang/String;
    :pswitch_0
    move-object v0, v7

    .restart local v0    # "rtsi":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    move-object v5, v7

    .line 363
    .local v5, "sstIndex":Ljava/lang/String;
    .restart local v6    # "first":C
    iget-object v8, v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->value:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 364
    .local v8, "n":Ljava/lang/String;
    iget-object v9, v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatString:Ljava/lang/String;

    if-eqz v9, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 365
    iget-object v9, v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iget-short v12, v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatIndex:S

    iget-object v13, v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatString:Ljava/lang/String;

    invoke-virtual {v9, v10, v11, v12, v13}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatRawCellContents(DILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 367
    :cond_1
    move-object v4, v8

    .line 368
    goto/16 :goto_3

    .line 312
    .end local v0    # "rtsi":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    .end local v5    # "sstIndex":Ljava/lang/String;
    .end local v6    # "first":C
    .end local v8    # "n":Ljava/lang/String;
    :pswitch_1
    move-object v8, v7

    .local v8, "rtsi":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    move v9, v6

    .line 351
    .local v9, "first":C
    iget-object v0, v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->value:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 353
    .local v10, "sstIndex":Ljava/lang/String;
    :try_start_0
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 354
    .local v0, "idx":I
    new-instance v11, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    iget-object v12, v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->sharedStringsTable:Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;

    invoke-virtual {v12, v0}, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->getEntryAt(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    .line 355
    .local v11, "rtss":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    invoke-virtual {v11}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 359
    .end local v0    # "idx":I
    .end local v11    # "rtss":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    goto/16 :goto_3

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "ex":Ljava/lang/NumberFormatException;
    sget-object v11, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v12, 0x7

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to parse SST index \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v6

    aput-object v0, v13, v5

    invoke-virtual {v11, v12, v13}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 360
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    goto/16 :goto_3

    .line 312
    .end local v8    # "rtsi":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    .end local v9    # "first":C
    .end local v10    # "sstIndex":Ljava/lang/String;
    :pswitch_2
    move v0, v6

    .line 346
    .local v0, "first":C
    new-instance v5, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    iget-object v6, v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->value:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    .line 347
    .local v5, "rtsi":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->toString()Ljava/lang/String;

    move-result-object v4

    .line 348
    goto :goto_3

    .line 312
    .end local v0    # "first":C
    .end local v5    # "rtsi":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    :pswitch_3
    move v5, v6

    .line 323
    .local v5, "first":C
    iget-boolean v0, v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formulasNotResults:Z

    if-eqz v0, :cond_2

    .line 324
    iget-object v0, v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formula:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 326
    :cond_2
    iget-object v0, v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->value:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 328
    .local v6, "fv":Ljava/lang/String;
    iget-object v0, v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatString:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 331
    :try_start_1
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 332
    .local v8, "d":D
    iget-object v0, v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

    iget-short v10, v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatIndex:S

    iget-object v11, v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatString:Ljava/lang/String;

    invoke-virtual {v0, v8, v9, v10, v11}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatRawCellContents(DILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v4    # "thisStr":Ljava/lang/String;
    .end local v8    # "d":D
    .local v0, "thisStr":Ljava/lang/String;
    goto :goto_0

    .line 333
    .end local v0    # "thisStr":Ljava/lang/String;
    .restart local v4    # "thisStr":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/NumberFormatException;
    move-object v0, v6

    .line 336
    .end local v4    # "thisStr":Ljava/lang/String;
    .local v0, "thisStr":Ljava/lang/String;
    :goto_0
    move-object v4, v0

    goto :goto_1

    .line 339
    .end local v0    # "thisStr":Ljava/lang/String;
    .restart local v4    # "thisStr":Ljava/lang/String;
    :cond_3
    move-object v0, v6

    move-object v4, v0

    .line 342
    .end local v6    # "fv":Ljava/lang/String;
    :goto_1
    goto :goto_3

    .line 312
    .end local v5    # "first":C
    :pswitch_4
    move v0, v6

    .line 319
    .local v0, "first":C
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ERROR:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->value:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 320
    goto :goto_3

    .line 314
    .end local v0    # "first":C
    :pswitch_5
    iget-object v0, v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->value:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 315
    .restart local v0    # "first":C
    const/16 v5, 0x30

    if-ne v0, v5, :cond_4

    const-string v5, "FALSE"

    goto :goto_2

    :cond_4
    const-string v5, "TRUE"

    :goto_2
    move-object v4, v5

    .line 316
    nop

    .line 376
    .end local v0    # "first":C
    :goto_3
    sget-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;->CELL:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;

    invoke-direct {v1, v0}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->checkForEmptyCellComments(Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;)V

    .line 377
    iget-object v0, v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentsTable:Lorg/apache/poi/xssf/model/CommentsTable;

    if-eqz v0, :cond_5

    new-instance v5, Lorg/apache/poi/ss/util/CellAddress;

    iget-object v6, v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->cellRef:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lorg/apache/poi/xssf/model/CommentsTable;->findCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFComment;

    move-result-object v7

    :cond_5
    move-object v0, v7

    .line 380
    .local v0, "comment":Lorg/apache/poi/xssf/usermodel/XSSFComment;
    iget-object v5, v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->output:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

    iget-object v6, v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->cellRef:Ljava/lang/String;

    invoke-interface {v5, v6, v4, v0}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;->cell(Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/XSSFComment;)V

    .line 381
    .end local v0    # "comment":Lorg/apache/poi/xssf/usermodel/XSSFComment;
    goto/16 :goto_5

    :cond_6
    const-string v0, "f"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 382
    iput-boolean v6, v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->fIsOpen:Z

    goto/16 :goto_5

    .line 383
    :cond_7
    const-string v0, "is"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 384
    iput-boolean v6, v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->isIsOpen:Z

    goto/16 :goto_5

    .line 385
    :cond_8
    const-string v0, "row"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 387
    sget-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;->END_OF_ROW:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;

    invoke-direct {v1, v0}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->checkForEmptyCellComments(Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;)V

    .line 390
    iget-object v0, v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->output:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

    iget v6, v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->rowNum:I

    invoke-interface {v0, v6}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;->endRow(I)V

    .line 393
    iget v0, v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->rowNum:I

    add-int/2addr v0, v5

    iput v0, v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->nextRowNum:I

    goto :goto_5

    .line 394
    :cond_9
    const-string v0, "sheetData"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 396
    sget-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;->END_OF_SHEET_DATA:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;

    invoke-direct {v1, v0}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->checkForEmptyCellComments(Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;)V

    goto :goto_5

    .line 398
    :cond_a
    const-string v0, "oddHeader"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "evenHeader"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "firstHeader"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_4

    .line 403
    :cond_b
    const-string v0, "oddFooter"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "evenFooter"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "firstFooter"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 405
    :cond_c
    iput-boolean v6, v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->hfIsOpen:Z

    .line 406
    iget-object v0, v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->output:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

    iget-object v5, v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->headerFooter:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v6, v3}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;->headerFooter(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_5

    .line 400
    :cond_d
    :goto_4
    iput-boolean v6, v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->hfIsOpen:Z

    .line 401
    iget-object v0, v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->output:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

    iget-object v6, v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->headerFooter:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v5, v3}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;->headerFooter(Ljava/lang/String;ZLjava/lang/String;)V

    .line 408
    :cond_e
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 195
    if-eqz p1, :cond_0

    const-string v0, "http://schemas.openxmlformats.org/spreadsheetml/2006/main"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    return-void

    .line 199
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->isTextTag(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 200
    iput-boolean v2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->vIsOpen:Z

    .line 202
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->value:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_5

    .line 203
    :cond_1
    const-string v0, "is"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    iput-boolean v2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->isIsOpen:Z

    goto/16 :goto_5

    .line 206
    :cond_2
    const-string v0, "f"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "t"

    if-eqz v0, :cond_7

    .line 208
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formula:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 211
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->nextDataType:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    sget-object v4, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;->NUMBER:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    if-ne v0, v4, :cond_3

    .line 212
    sget-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;->FORMULA:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    iput-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->nextDataType:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    .line 216
    :cond_3
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "type":Ljava/lang/String;
    if-eqz v0, :cond_6

    const-string v3, "shared"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 219
    const-string v3, "ref"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, "ref":Ljava/lang/String;
    const-string v4, "si"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 222
    .local v4, "si":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 225
    iput-boolean v2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->fIsOpen:Z

    goto :goto_0

    .line 230
    :cond_4
    iget-boolean v5, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formulasNotResults:Z

    if-eqz v5, :cond_5

    .line 231
    sget-object v5, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v6, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const-string v7, "shared formulas not yet supported!"

    aput-object v7, v2, v1

    invoke-virtual {v5, v6, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 237
    .end local v3    # "ref":Ljava/lang/String;
    .end local v4    # "si":Ljava/lang/String;
    :cond_5
    :goto_0
    goto :goto_1

    .line 238
    :cond_6
    iput-boolean v2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->fIsOpen:Z

    .line 240
    .end local v0    # "type":Ljava/lang/String;
    :goto_1
    goto/16 :goto_5

    .line 241
    :cond_7
    const-string v0, "oddHeader"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "evenHeader"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "firstHeader"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "firstFooter"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "oddFooter"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "evenFooter"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_4

    .line 248
    :cond_8
    const-string v0, "row"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "r"

    if-eqz v0, :cond_a

    .line 249
    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "rowNumStr":Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 251
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->rowNum:I

    goto :goto_2

    .line 253
    :cond_9
    iget v1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->nextRowNum:I

    iput v1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->rowNum:I

    .line 255
    :goto_2
    iget-object v1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->output:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

    iget v2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->rowNum:I

    invoke-interface {v1, v2}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;->startRow(I)V

    .line 256
    .end local v0    # "rowNumStr":Ljava/lang/String;
    goto/16 :goto_5

    .line 258
    :cond_a
    const-string v0, "c"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 260
    sget-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;->NUMBER:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    iput-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->nextDataType:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    .line 261
    const/4 v0, -0x1

    iput-short v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatIndex:S

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatString:Ljava/lang/String;

    .line 263
    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->cellRef:Ljava/lang/String;

    .line 264
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "cellType":Ljava/lang/String;
    const-string v2, "s"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, "cellStyleStr":Ljava/lang/String;
    const-string v4, "b"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 267
    sget-object v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;->BOOLEAN:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    iput-object v1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->nextDataType:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    goto/16 :goto_5

    .line 268
    :cond_b
    const-string v4, "e"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 269
    sget-object v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;->ERROR:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    iput-object v1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->nextDataType:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    goto :goto_5

    .line 270
    :cond_c
    const-string v4, "inlineStr"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 271
    sget-object v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;->INLINE_STRING:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    iput-object v1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->nextDataType:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    goto :goto_5

    .line 272
    :cond_d
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 273
    sget-object v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;->SST_STRING:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    iput-object v1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->nextDataType:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    goto :goto_5

    .line 274
    :cond_e
    const-string v2, "str"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 275
    sget-object v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;->FORMULA:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    iput-object v1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->nextDataType:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    goto :goto_5

    .line 278
    :cond_f
    const/4 v2, 0x0

    .line 279
    .local v2, "style":Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;
    iget-object v4, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->stylesTable:Lorg/apache/poi/xssf/model/StylesTable;

    if-eqz v4, :cond_12

    .line 280
    if-eqz v3, :cond_11

    .line 281
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 282
    .local v1, "styleIndex":I
    iget-object v4, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->stylesTable:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v4, v1}, Lorg/apache/poi/xssf/model/StylesTable;->getStyleAt(I)Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object v2

    .line 283
    .end local v1    # "styleIndex":I
    :cond_10
    goto :goto_3

    :cond_11
    invoke-virtual {v4}, Lorg/apache/poi/xssf/model/StylesTable;->getNumCellStyles()I

    move-result v4

    if-lez v4, :cond_10

    .line 284
    iget-object v4, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->stylesTable:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v4, v1}, Lorg/apache/poi/xssf/model/StylesTable;->getStyleAt(I)Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object v2

    .line 287
    :cond_12
    :goto_3
    if-eqz v2, :cond_14

    .line 288
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getDataFormat()S

    move-result v1

    iput-short v1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatIndex:S

    .line 289
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getDataFormatString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatString:Ljava/lang/String;

    .line 290
    if-nez v1, :cond_14

    .line 291
    iget-short v1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatIndex:S

    invoke-static {v1}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->getBuiltinFormat(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatString:Ljava/lang/String;

    goto :goto_5

    .line 244
    .end local v0    # "cellType":Ljava/lang/String;
    .end local v2    # "style":Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;
    .end local v3    # "cellStyleStr":Ljava/lang/String;
    :cond_13
    :goto_4
    iput-boolean v2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->hfIsOpen:Z

    .line 246
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->headerFooter:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 295
    :cond_14
    :goto_5
    return-void
.end method
