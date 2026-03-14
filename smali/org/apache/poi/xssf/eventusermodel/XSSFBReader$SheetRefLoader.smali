.class Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;
.super Lorg/apache/poi/xssf/binary/XSSFBParser;
.source "XSSFBReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SheetRefLoader"
.end annotation


# instance fields
.field sheets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .line 214
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBParser;-><init>(Ljava/io/InputStream;)V

    .line 211
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;->sheets:Ljava/util/List;

    .line 215
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/InputStream;
    .param p2, "x1"    # Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$1;

    .line 210
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private addWorksheet([B)V
    .locals 6
    .param p1, "data"    # [B

    .line 230
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;->tryToAddWorksheet([B)V
    :try_end_0
    .catch Lorg/apache/poi/xssf/binary/XSSFBParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Lorg/apache/poi/xssf/binary/XSSFBParseException;
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;->tryOldFormat([B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    invoke-static {}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;->access$300()Lorg/apache/poi/util/POILogger;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "This file was written with a beta version of Excel. POI will try to parse the file as a regular xlsb."

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 239
    .end local v0    # "e":Lorg/apache/poi/xssf/binary/XSSFBParseException;
    :goto_0
    return-void

    .line 236
    .restart local v0    # "e":Lorg/apache/poi/xssf/binary/XSSFBParseException;
    :cond_0
    throw v0
.end method

.method private tryOldFormat([B)Z
    .locals 9
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/xssf/binary/XSSFBParseException;
        }
    .end annotation

    .line 264
    const/16 v0, 0x8

    .line 265
    .local v0, "offset":I
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v1

    .local v1, "iTabID":J
    add-int/lit8 v0, v0, 0x4

    .line 266
    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-ltz v5, :cond_2

    const-wide/32 v3, 0xffff

    cmp-long v5, v1, v3

    if-gtz v5, :cond_2

    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1, v0, v3}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->readXLWideString([BILjava/lang/StringBuilder;)I

    move-result v4

    add-int/2addr v0, v4

    .line 271
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 272
    .local v4, "relId":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 273
    invoke-static {p1, v0, v3}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->readXLWideString([BILjava/lang/StringBuilder;)I

    move-result v6

    add-int/2addr v0, v6

    .line 274
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 275
    .local v6, "name":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 276
    iget-object v7, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;->sheets:Ljava/util/List;

    new-instance v8, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;

    invoke-direct {v8, v4, v6}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_0
    array-length v7, p1

    if-ne v0, v7, :cond_1

    .line 279
    const/4 v5, 0x1

    return v5

    .line 281
    :cond_1
    return v5

    .line 267
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "relId":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    :cond_2
    new-instance v3, Lorg/apache/poi/xssf/binary/XSSFBParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "table id out of range: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/poi/xssf/binary/XSSFBParseException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private tryToAddWorksheet([B)V
    .locals 10
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/xssf/binary/XSSFBParseException;
        }
    .end annotation

    .line 242
    const/4 v0, 0x0

    .line 244
    .local v0, "offset":I
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v1

    .local v1, "hsShtat":J
    add-int/lit8 v0, v0, 0x4

    .line 246
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v3

    .local v3, "iTabID":J
    add-int/lit8 v0, v0, 0x4

    .line 248
    const-wide/16 v5, 0x1

    cmp-long v7, v3, v5

    if-ltz v7, :cond_1

    const-wide/32 v5, 0xffff

    cmp-long v7, v3, v5

    if-gtz v7, :cond_1

    .line 251
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1, v0, v5}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->readXLWideString([BILjava/lang/StringBuilder;)I

    move-result v6

    add-int/2addr v0, v6

    .line 253
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "relId":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 254
    invoke-static {p1, v0, v5}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->readXLWideString([BILjava/lang/StringBuilder;)I

    move-result v7

    add-int/2addr v0, v7

    .line 255
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 256
    .local v7, "name":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 257
    iget-object v8, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;->sheets:Ljava/util/List;

    new-instance v9, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;

    invoke-direct {v9, v6, v7}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_0
    return-void

    .line 249
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "relId":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    :cond_1
    new-instance v5, Lorg/apache/poi/xssf/binary/XSSFBParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "table id out of range: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/poi/xssf/binary/XSSFBParseException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method getSheets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;",
            ">;"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;->sheets:Ljava/util/List;

    return-object v0
.end method

.method public handleRecord(I[B)V
    .locals 1
    .param p1, "recordType"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/xssf/binary/XSSFBParseException;
        }
    .end annotation

    .line 219
    sget-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtBundleSh:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 220
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;->addWorksheet([B)V

    .line 222
    :cond_0
    return-void
.end method
