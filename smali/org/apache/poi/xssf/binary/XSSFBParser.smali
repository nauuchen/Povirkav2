.class public abstract Lorg/apache/poi/xssf/binary/XSSFBParser;
.super Ljava/lang/Object;
.source "XSSFBParser.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final is:Lorg/apache/poi/util/LittleEndianInputStream;

.field private final records:Ljava/util/BitSet;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-direct {v0, p1}, Lorg/apache/poi/util/LittleEndianInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBParser;->is:Lorg/apache/poi/util/LittleEndianInputStream;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBParser;->records:Ljava/util/BitSet;

    .line 43
    return-void
.end method

.method protected constructor <init>(Ljava/io/InputStream;Ljava/util/BitSet;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "bitSet"    # Ljava/util/BitSet;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-direct {v0, p1}, Lorg/apache/poi/util/LittleEndianInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBParser;->is:Lorg/apache/poi/util/LittleEndianInputStream;

    .line 52
    iput-object p2, p0, Lorg/apache/poi/xssf/binary/XSSFBParser;->records:Ljava/util/BitSet;

    .line 53
    return-void
.end method

.method private readNext(B)V
    .locals 10
    .param p1, "b1"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    const/4 v0, 0x0

    .line 70
    .local v0, "recordId":I
    shr-int/lit8 v1, p1, 0x7

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 71
    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFBParser;->is:Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-virtual {v1}, Lorg/apache/poi/util/LittleEndianInputStream;->readByte()B

    move-result v1

    .line 72
    .local v1, "b2":B
    and-int/lit16 v3, p1, -0x81

    int-to-byte p1, v3

    .line 73
    and-int/lit16 v3, v1, -0x81

    int-to-byte v1, v3

    .line 74
    shl-int/lit8 v3, v1, 0x7

    add-int/2addr v3, p1

    .line 75
    .end local v0    # "recordId":I
    .end local v1    # "b2":B
    .local v3, "recordId":I
    goto :goto_0

    .line 76
    .end local v3    # "recordId":I
    .restart local v0    # "recordId":I
    :cond_0
    move v3, p1

    .line 79
    .end local v0    # "recordId":I
    .restart local v3    # "recordId":I
    :goto_0
    const-wide/16 v0, 0x0

    .line 80
    .local v0, "recordLength":J
    const/4 v4, 0x0

    .line 81
    .local v4, "i":I
    const/4 v5, 0x0

    .line 82
    .local v5, "halt":Z
    :goto_1
    const/4 v6, 0x4

    if-ge v4, v6, :cond_2

    if-nez v5, :cond_2

    .line 83
    iget-object v6, p0, Lorg/apache/poi/xssf/binary/XSSFBParser;->is:Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-virtual {v6}, Lorg/apache/poi/util/LittleEndianInputStream;->readByte()B

    move-result v6

    .line 84
    .local v6, "b":B
    shr-int/lit8 v7, v6, 0x7

    and-int/2addr v7, v2

    if-nez v7, :cond_1

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    move v5, v7

    .line 85
    and-int/lit16 v7, v6, -0x81

    int-to-byte v6, v7

    .line 86
    mul-int/lit8 v7, v4, 0x7

    shl-int v7, v6, v7

    int-to-long v7, v7

    add-long/2addr v0, v7

    .line 87
    nop

    .end local v6    # "b":B
    add-int/lit8 v4, v4, 0x1

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFBParser;->records:Ljava/util/BitSet;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    .line 96
    :cond_3
    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFBParser;->is:Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-virtual {v2, v0, v1}, Lorg/apache/poi/util/LittleEndianInputStream;->skip(J)J

    move-result-wide v6

    .line 97
    .local v6, "length":J
    cmp-long v2, v6, v0

    if-nez v2, :cond_4

    goto :goto_4

    .line 98
    :cond_4
    new-instance v2, Lorg/apache/poi/xssf/binary/XSSFBParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "End of file reached before expected.\tTried to skip "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", but only skipped "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Lorg/apache/poi/xssf/binary/XSSFBParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    .end local v6    # "length":J
    :cond_5
    :goto_3
    long-to-int v2, v0

    new-array v2, v2, [B

    .line 93
    .local v2, "buff":[B
    iget-object v6, p0, Lorg/apache/poi/xssf/binary/XSSFBParser;->is:Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-virtual {v6, v2}, Lorg/apache/poi/util/LittleEndianInputStream;->readFully([B)V

    .line 94
    invoke-virtual {p0, v3, v2}, Lorg/apache/poi/xssf/binary/XSSFBParser;->handleRecord(I[B)V

    .line 95
    .end local v2    # "buff":[B
    nop

    .line 102
    :goto_4
    return-void
.end method


# virtual methods
.method public abstract handleRecord(I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/xssf/binary/XSSFBParseException;
        }
    .end annotation
.end method

.method public parse()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBParser;->is:Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianInputStream;->read()I

    move-result v0

    .line 59
    .local v0, "bInt":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 60
    return-void

    .line 62
    :cond_0
    int-to-byte v1, v0

    invoke-direct {p0, v1}, Lorg/apache/poi/xssf/binary/XSSFBParser;->readNext(B)V

    .line 63
    .end local v0    # "bInt":I
    goto :goto_0
.end method
