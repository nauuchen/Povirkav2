.class Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;
.super Ljava/lang/Object;
.source "XSSFBHeaderFooters.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private footer:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

.field private footerEven:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

.field private footerFirst:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

.field private header:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

.field private headerEven:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

.field private headerFirst:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse([B)Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;
    .locals 10
    .param p0, "data"    # [B

    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, "diffOddEven":Z
    const/4 v1, 0x0

    .line 31
    .local v1, "diffFirst":Z
    const/4 v2, 0x0

    .line 32
    .local v2, "scaleWDoc":Z
    const/4 v3, 0x0

    .line 34
    .local v3, "alignMargins":Z
    const/4 v4, 0x2

    .line 35
    .local v4, "offset":I
    new-instance v5, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;

    invoke-direct {v5}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;-><init>()V

    .line 36
    .local v5, "xssfbHeaderFooter":Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;
    new-instance v6, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    const-string v7, "header"

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;-><init>(Ljava/lang/String;Z)V

    iput-object v6, v5, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->header:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    .line 37
    new-instance v6, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    const-string v7, "footer"

    const/4 v9, 0x0

    invoke-direct {v6, v7, v9}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;-><init>(Ljava/lang/String;Z)V

    iput-object v6, v5, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->footer:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    .line 38
    new-instance v6, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    const-string v7, "evenHeader"

    invoke-direct {v6, v7, v8}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;-><init>(Ljava/lang/String;Z)V

    iput-object v6, v5, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->headerEven:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    .line 39
    new-instance v6, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    const-string v7, "evenFooter"

    invoke-direct {v6, v7, v9}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;-><init>(Ljava/lang/String;Z)V

    iput-object v6, v5, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->footerEven:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    .line 40
    new-instance v6, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    const-string v7, "firstHeader"

    invoke-direct {v6, v7, v8}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;-><init>(Ljava/lang/String;Z)V

    iput-object v6, v5, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->headerFirst:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    .line 41
    new-instance v6, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    const-string v7, "firstFooter"

    invoke-direct {v6, v7, v9}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;-><init>(Ljava/lang/String;Z)V

    iput-object v6, v5, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->footerFirst:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    .line 42
    iget-object v6, v5, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->header:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    invoke-static {p0, v4, v6}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->readHeaderFooter([BILorg/apache/poi/xssf/binary/XSSFBHeaderFooter;)I

    move-result v6

    add-int/2addr v4, v6

    .line 43
    iget-object v6, v5, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->footer:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    invoke-static {p0, v4, v6}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->readHeaderFooter([BILorg/apache/poi/xssf/binary/XSSFBHeaderFooter;)I

    move-result v6

    add-int/2addr v4, v6

    .line 44
    iget-object v6, v5, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->headerEven:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    invoke-static {p0, v4, v6}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->readHeaderFooter([BILorg/apache/poi/xssf/binary/XSSFBHeaderFooter;)I

    move-result v6

    add-int/2addr v4, v6

    .line 45
    iget-object v6, v5, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->footerEven:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    invoke-static {p0, v4, v6}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->readHeaderFooter([BILorg/apache/poi/xssf/binary/XSSFBHeaderFooter;)I

    move-result v6

    add-int/2addr v4, v6

    .line 46
    iget-object v6, v5, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->headerFirst:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    invoke-static {p0, v4, v6}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->readHeaderFooter([BILorg/apache/poi/xssf/binary/XSSFBHeaderFooter;)I

    move-result v6

    add-int/2addr v4, v6

    .line 47
    iget-object v6, v5, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->footerFirst:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    invoke-static {p0, v4, v6}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->readHeaderFooter([BILorg/apache/poi/xssf/binary/XSSFBHeaderFooter;)I

    .line 48
    return-object v5
.end method

.method private static readHeaderFooter([BILorg/apache/poi/xssf/binary/XSSFBHeaderFooter;)I
    .locals 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "headerFooter"    # Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    .line 52
    add-int/lit8 v0, p1, 0x4

    array-length v1, p0

    if-lt v0, v1, :cond_0

    .line 53
    const/4 v0, 0x0

    return v0

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, p1, v0}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->readXLNullableWideString([BILjava/lang/StringBuilder;)I

    move-result v1

    .line 57
    .local v1, "bytesRead":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;->setRawString(Ljava/lang/String;)V

    .line 58
    return v1
.end method


# virtual methods
.method public getFooter()Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->footer:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    return-object v0
.end method

.method public getFooterEven()Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->footerEven:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    return-object v0
.end method

.method public getFooterFirst()Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->footerFirst:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    return-object v0
.end method

.method public getHeader()Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->header:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    return-object v0
.end method

.method public getHeaderEven()Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->headerEven:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    return-object v0
.end method

.method public getHeaderFirst()Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->headerFirst:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    return-object v0
.end method
