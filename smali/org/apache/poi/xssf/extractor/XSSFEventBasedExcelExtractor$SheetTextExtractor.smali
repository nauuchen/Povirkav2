.class public Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;
.super Ljava/lang/Object;
.source "XSSFEventBasedExcelExtractor.java"

# interfaces
.implements Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SheetTextExtractor"
.end annotation


# instance fields
.field private firstCellOfRow:Z

.field private final headerFooterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final output:Ljava/lang/StringBuffer;

.field final synthetic this$0:Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;


# direct methods
.method protected constructor <init>(Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;)V
    .locals 1

    .line 335
    iput-object p1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->this$0:Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->output:Ljava/lang/StringBuffer;

    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->firstCellOfRow:Z

    .line 338
    invoke-static {p1}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->access$000(Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->headerFooterMap:Ljava/util/Map;

    .line 339
    return-void
.end method

.method private appendHeaderFooterText(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "name"    # Ljava/lang/String;

    .line 385
    iget-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->headerFooterMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 386
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 390
    const-string v1, "&L"

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->handleHeaderFooterDelimiter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    const-string v1, "&C"

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->handleHeaderFooterDelimiter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    const-string v1, "&R"

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->handleHeaderFooterDelimiter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 393
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 395
    :cond_0
    return-void
.end method

.method private handleHeaderFooterDelimiter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "delimiter"    # Ljava/lang/String;

    .line 401
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 402
    .local v0, "index":I
    if-nez v0, :cond_0

    .line 403
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 404
    :cond_0
    if-lez v0, :cond_1

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 407
    :cond_1
    :goto_0
    return-object p1
.end method


# virtual methods
.method appendCellText(Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 441
    iget-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->this$0:Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;

    iget-object v1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->output:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->access$400(Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->output:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 443
    return-void
.end method

.method appendFooterText(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 432
    const-string v0, "firstFooter"

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->appendHeaderFooterText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 433
    const-string v0, "oddFooter"

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->appendHeaderFooterText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 434
    const-string v0, "evenFooter"

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->appendHeaderFooterText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method appendHeaderText(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 418
    const-string v0, "firstHeader"

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->appendHeaderFooterText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 419
    const-string v0, "oddHeader"

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->appendHeaderFooterText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 420
    const-string v0, "evenHeader"

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->appendHeaderFooterText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method public cell(Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/XSSFComment;)V
    .locals 4
    .param p1, "cellRef"    # Ljava/lang/String;
    .param p2, "formattedValue"    # Ljava/lang/String;
    .param p3, "comment"    # Lorg/apache/poi/xssf/usermodel/XSSFComment;

    .line 353
    iget-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->firstCellOfRow:Z

    if-eqz v0, :cond_0

    .line 354
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->firstCellOfRow:Z

    goto :goto_0

    .line 356
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->output:Ljava/lang/StringBuffer;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 358
    :goto_0
    if-eqz p2, :cond_1

    .line 359
    iget-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->this$0:Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;

    iget-object v1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->output:Ljava/lang/StringBuffer;

    invoke-static {v0, v1, p2}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->access$100(Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->output:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->this$0:Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;

    invoke-static {v0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->access$200(Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p3, :cond_4

    .line 363
    invoke-virtual {p3}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getString()Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "commentText":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->output:Ljava/lang/StringBuffer;

    if-eqz p2, :cond_2

    const-string v2, " Comment by "

    goto :goto_1

    :cond_2
    const-string v2, "Comment by "

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    iget-object v1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->this$0:Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;

    iget-object v2, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->output:Ljava/lang/StringBuffer;

    invoke-static {v1, v2, v0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->access$300(Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 367
    iget-object v1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->output:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 369
    :cond_3
    iget-object v1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->output:Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getAuthor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    .end local v0    # "commentText":Ljava/lang/String;
    :cond_4
    :goto_2
    return-void
.end method

.method public endRow(I)V
    .locals 2
    .param p1, "rowNum"    # I

    .line 348
    iget-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->output:Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 349
    return-void
.end method

.method public headerFooter(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isHeader"    # Z
    .param p3, "tagName"    # Ljava/lang/String;

    .line 376
    iget-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->headerFooterMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 377
    invoke-interface {v0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :cond_0
    return-void
.end method

.method reset()V
    .locals 2

    .line 449
    iget-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->output:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 450
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->firstCellOfRow:Z

    .line 451
    iget-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->headerFooterMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 452
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 454
    :cond_0
    return-void
.end method

.method public startRow(I)V
    .locals 1
    .param p1, "rowNum"    # I

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->firstCellOfRow:Z

    .line 344
    return-void
.end method
