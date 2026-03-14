.class public Lorg/apache/poi/xssf/binary/XSSFBStylesTable;
.super Lorg/apache/poi/xssf/binary/XSSFBParser;
.source "XSSFBStylesTable.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private inCellXFS:Z

.field private inFmts:Z

.field private final numberFormats:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Short;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final styleIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBParser;-><init>(Ljava/io/InputStream;)V

    .line 40
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->numberFormats:Ljava/util/SortedMap;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->styleIds:Ljava/util/List;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->inCellXFS:Z

    .line 44
    iput-boolean v0, p0, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->inFmts:Z

    .line 47
    invoke-virtual {p0}, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->parse()V

    .line 48
    return-void
.end method

.method private handleBrtXFInCellXF([B)V
    .locals 4
    .param p1, "data"    # [B

    .line 105
    const/4 v0, 0x2

    .line 109
    .local v0, "ifmtOffset":I
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    .line 110
    .local v1, "ifmt":I
    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->styleIds:Ljava/util/List;

    int-to-short v3, v1

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method

.method private handleFormat([B)V
    .locals 5
    .param p1, "data"    # [B

    .line 94
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 95
    .local v0, "ifmt":I
    const/16 v1, 0x7fff

    if-gt v0, v1, :cond_0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->readXLWideString([BILjava/lang/StringBuilder;)I

    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "fmt":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->numberFormats:Ljava/util/SortedMap;

    int-to-short v4, v0

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void

    .line 96
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "fmt":Ljava/lang/String;
    :cond_0
    new-instance v1, Lorg/apache/poi/POIXMLException;

    const-string v2, "Format id must be a short"

    invoke-direct {v1, v2}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method getNumberFormatIndex(I)S
    .locals 1
    .param p1, "idx"    # I

    .line 60
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->styleIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0
.end method

.method getNumberFormatString(I)Ljava/lang/String;
    .locals 3
    .param p1, "idx"    # I

    .line 51
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->getNumberFormatIndex(I)S

    move-result v0

    .line 52
    .local v0, "numberFormatIdx":S
    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 56
    :cond_0
    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->getBuiltinFormat(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public handleRecord(I[B)V
    .locals 4
    .param p1, "recordType"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/xssf/binary/XSSFBParseException;
        }
    .end annotation

    .line 65
    invoke-static {p1}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->lookup(I)Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-result-object v0

    .line 66
    .local v0, "type":Lorg/apache/poi/xssf/binary/XSSFBRecordType;
    sget-object v1, Lorg/apache/poi/xssf/binary/XSSFBStylesTable$1;->$SwitchMap$org$apache$poi$xssf$binary$XSSFBRecordType:[I

    invoke-virtual {v0}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 85
    :pswitch_0
    iget-boolean v1, p0, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->inFmts:Z

    if-eqz v1, :cond_0

    .line 86
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->handleFormat([B)V

    goto :goto_0

    .line 82
    :pswitch_1
    iput-boolean v2, p0, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->inFmts:Z

    .line 83
    goto :goto_0

    .line 79
    :pswitch_2
    iput-boolean v3, p0, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->inFmts:Z

    .line 80
    goto :goto_0

    .line 74
    :pswitch_3
    iget-boolean v1, p0, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->inCellXFS:Z

    if-eqz v1, :cond_0

    .line 75
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->handleBrtXFInCellXF([B)V

    goto :goto_0

    .line 71
    :pswitch_4
    iput-boolean v2, p0, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->inCellXFS:Z

    .line 72
    goto :goto_0

    .line 68
    :pswitch_5
    iput-boolean v3, p0, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->inCellXFS:Z

    .line 69
    nop

    .line 91
    :cond_0
    :goto_0
    return-void

    nop

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
