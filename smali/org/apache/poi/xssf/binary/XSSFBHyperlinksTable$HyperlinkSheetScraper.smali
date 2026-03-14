.class Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;
.super Lorg/apache/poi/xssf/binary/XSSFBParser;
.source "XSSFBHyperlinksTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HyperlinkSheetScraper"
.end annotation


# instance fields
.field private hyperlinkCellRange:Lorg/apache/poi/xssf/binary/XSSFBCellRange;

.field final synthetic this$0:Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;

.field private final xlWideStringBuffer:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;Ljava/io/InputStream;)V
    .locals 0
    .param p2, "is"    # Ljava/io/InputStream;

    .line 125
    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->this$0:Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;

    .line 126
    invoke-static {}, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;->access$100()Ljava/util/BitSet;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/apache/poi/xssf/binary/XSSFBParser;-><init>(Ljava/io/InputStream;Ljava/util/BitSet;)V

    .line 122
    new-instance p1, Lorg/apache/poi/xssf/binary/XSSFBCellRange;

    invoke-direct {p1}, Lorg/apache/poi/xssf/binary/XSSFBCellRange;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->hyperlinkCellRange:Lorg/apache/poi/xssf/binary/XSSFBCellRange;

    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    .line 127
    return-void
.end method


# virtual methods
.method public handleRecord(I[B)V
    .locals 16
    .param p1, "recordType"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/xssf/binary/XSSFBParseException;
        }
    .end annotation

    .line 131
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    sget-object v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtHLink:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->getId()I

    move-result v2

    move/from16 v3, p1

    if-eq v3, v2, :cond_0

    .line 132
    return-void

    .line 134
    :cond_0
    const/4 v2, 0x0

    .line 135
    .local v2, "offset":I
    const-string v4, ""

    .line 136
    .local v4, "relId":Ljava/lang/String;
    const-string v5, ""

    .line 137
    .local v5, "location":Ljava/lang/String;
    const-string v6, ""

    .line 138
    .local v6, "toolTip":Ljava/lang/String;
    const-string v7, ""

    .line 140
    .local v7, "display":Ljava/lang/String;
    iget-object v8, v0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->hyperlinkCellRange:Lorg/apache/poi/xssf/binary/XSSFBCellRange;

    invoke-static {v1, v2, v8}, Lorg/apache/poi/xssf/binary/XSSFBCellRange;->parse([BILorg/apache/poi/xssf/binary/XSSFBCellRange;)Lorg/apache/poi/xssf/binary/XSSFBCellRange;

    move-result-object v8

    iput-object v8, v0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->hyperlinkCellRange:Lorg/apache/poi/xssf/binary/XSSFBCellRange;

    .line 141
    add-int/lit8 v2, v2, 0x10

    .line 142
    iget-object v8, v0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 143
    iget-object v8, v0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    invoke-static {v1, v2, v8}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->readXLNullableWideString([BILjava/lang/StringBuilder;)I

    move-result v8

    add-int/2addr v2, v8

    .line 144
    iget-object v8, v0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 145
    iget-object v8, v0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 146
    iget-object v8, v0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    invoke-static {v1, v2, v8}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->readXLWideString([BILjava/lang/StringBuilder;)I

    move-result v8

    add-int/2addr v2, v8

    .line 147
    iget-object v8, v0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 148
    iget-object v8, v0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 149
    iget-object v8, v0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    invoke-static {v1, v2, v8}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->readXLWideString([BILjava/lang/StringBuilder;)I

    move-result v8

    add-int/2addr v2, v8

    .line 150
    iget-object v8, v0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 151
    iget-object v8, v0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 152
    iget-object v8, v0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    invoke-static {v1, v2, v8}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->readXLWideString([BILjava/lang/StringBuilder;)I

    move-result v8

    add-int/2addr v2, v8

    .line 153
    iget-object v8, v0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 154
    new-instance v11, Lorg/apache/poi/ss/util/CellRangeAddress;

    iget-object v8, v0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->hyperlinkCellRange:Lorg/apache/poi/xssf/binary/XSSFBCellRange;

    iget v8, v8, Lorg/apache/poi/xssf/binary/XSSFBCellRange;->firstRow:I

    iget-object v9, v0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->hyperlinkCellRange:Lorg/apache/poi/xssf/binary/XSSFBCellRange;

    iget v9, v9, Lorg/apache/poi/xssf/binary/XSSFBCellRange;->lastRow:I

    iget-object v10, v0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->hyperlinkCellRange:Lorg/apache/poi/xssf/binary/XSSFBCellRange;

    iget v10, v10, Lorg/apache/poi/xssf/binary/XSSFBCellRange;->firstCol:I

    iget-object v12, v0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->hyperlinkCellRange:Lorg/apache/poi/xssf/binary/XSSFBCellRange;

    iget v12, v12, Lorg/apache/poi/xssf/binary/XSSFBCellRange;->lastCol:I

    invoke-direct {v11, v8, v9, v10, v12}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    .line 156
    .local v11, "cellRangeAddress":Lorg/apache/poi/ss/util/CellRangeAddress;
    iget-object v8, v0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->this$0:Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;

    invoke-static {v8}, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;->access$200(Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 157
    .local v8, "url":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2

    .line 158
    :cond_1
    move-object v5, v8

    .line 161
    :cond_2
    iget-object v9, v0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->this$0:Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;

    invoke-static {v9}, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;->access$300(Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;)Ljava/util/List;

    move-result-object v9

    new-instance v15, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;

    move-object v10, v15

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    move-object v0, v15

    move-object v15, v7

    invoke-direct/range {v10 .. v15}, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;-><init>(Lorg/apache/poi/ss/util/CellRangeAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    return-void
.end method
