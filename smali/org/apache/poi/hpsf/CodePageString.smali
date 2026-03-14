.class Lorg/apache/poi/hpsf/CodePageString;
.super Ljava/lang/Object;
.source "CodePageString.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private _value:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lorg/apache/poi/hpsf/CodePageString;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/CodePageString;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getJavaValue(I)Ljava/lang/String;
    .locals 8
    .param p1, "codepage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 70
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/16 v1, 0x4e4

    goto :goto_0

    :cond_0
    move v1, p1

    .line 71
    .local v1, "cp":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hpsf/CodePageString;->_value:[B

    invoke-static {v2, v1}, Lorg/apache/poi/util/CodePageUtil;->getStringFromCodePage([BI)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "result":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 75
    .local v4, "terminator":I
    const/4 v5, 0x5

    const/4 v6, 0x1

    if-ne v4, v0, :cond_1

    .line 76
    const-string v0, "String terminator (\\0) for CodePageString property value not found.Continue without trimming and hope for the best."

    .line 79
    .local v0, "msg":Ljava/lang/String;
    sget-object v7, Lorg/apache/poi/hpsf/CodePageString;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-virtual {v7, v5, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 80
    return-object v2

    .line 82
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v6

    if-eq v4, v0, :cond_2

    .line 83
    const-string v0, "String terminator (\\0) for CodePageString property value occured before the end of string. Trimming and hope for the best."

    .line 86
    .restart local v0    # "msg":Ljava/lang/String;
    sget-object v7, Lorg/apache/poi/hpsf/CodePageString;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-virtual {v7, v5, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 88
    .end local v0    # "msg":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSize()I
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/poi/hpsf/CodePageString;->_value:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    .locals 7
    .param p1, "lei"    # Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    .line 41
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->getReadIndex()I

    move-result v0

    .line 42
    .local v0, "offset":I
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result v1

    .line 43
    .local v1, "size":I
    new-array v2, v1, [B

    iput-object v2, p0, Lorg/apache/poi/hpsf/CodePageString;->_value:[B

    .line 44
    if-nez v1, :cond_0

    .line 45
    return-void

    .line 57
    :cond_0
    invoke-virtual {p1, v2}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readFully([B)V

    .line 58
    iget-object v2, p0, Lorg/apache/poi/hpsf/CodePageString;->_value:[B

    add-int/lit8 v3, v1, -0x1

    aget-byte v2, v2, v3

    if-eqz v2, :cond_1

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CodePageString started at offset #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not NULL-terminated"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "msg":Ljava/lang/String;
    sget-object v3, Lorg/apache/poi/hpsf/CodePageString;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v4, 0x5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 66
    .end local v2    # "msg":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Lorg/apache/poi/hpsf/TypedPropertyValue;->skipPadding(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    .line 67
    return-void
.end method

.method setJavaValue(Ljava/lang/String;I)V
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "codepage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 96
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 v0, 0x4e4

    goto :goto_0

    :cond_0
    move v0, p2

    .line 97
    .local v0, "cp":I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u0000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/poi/util/CodePageUtil;->getBytesInCodePage(Ljava/lang/String;I)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hpsf/CodePageString;->_value:[B

    .line 98
    return-void
.end method

.method write(Ljava/io/OutputStream;)I
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/apache/poi/hpsf/CodePageString;->_value:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-static {v0, v1, p1}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    .line 102
    iget-object v0, p0, Lorg/apache/poi/hpsf/CodePageString;->_value:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 103
    iget-object v0, p0, Lorg/apache/poi/hpsf/CodePageString;->_value:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method
