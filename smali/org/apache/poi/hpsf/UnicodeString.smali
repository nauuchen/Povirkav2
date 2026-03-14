.class Lorg/apache/poi/hpsf/UnicodeString;
.super Ljava/lang/Object;
.source "UnicodeString.java"


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

    .line 34
    const-class v0, Lorg/apache/poi/hpsf/UnicodeString;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/UnicodeString;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getValue()[B
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/apache/poi/hpsf/UnicodeString;->_value:[B

    return-object v0
.end method

.method read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    .locals 5
    .param p1, "lei"    # Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    .line 41
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result v0

    .line 42
    .local v0, "length":I
    mul-int/lit8 v1, v0, 0x2

    .line 43
    .local v1, "unicodeBytes":I
    new-array v2, v1, [B

    iput-object v2, p0, Lorg/apache/poi/hpsf/UnicodeString;->_value:[B

    .line 50
    if-nez v0, :cond_0

    .line 51
    return-void

    .line 54
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->getReadIndex()I

    move-result v2

    .line 56
    .local v2, "offset":I
    iget-object v3, p0, Lorg/apache/poi/hpsf/UnicodeString;->_value:[B

    invoke-virtual {p1, v3}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readFully([B)V

    .line 58
    iget-object v3, p0, Lorg/apache/poi/hpsf/UnicodeString;->_value:[B

    add-int/lit8 v4, v1, -0x2

    aget-byte v4, v3, v4

    if-nez v4, :cond_1

    add-int/lit8 v4, v1, -0x1

    aget-byte v3, v3, v4

    if-nez v3, :cond_1

    .line 63
    invoke-static {p1}, Lorg/apache/poi/hpsf/TypedPropertyValue;->skipPadding(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    .line 64
    return-void

    .line 59
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnicodeString started at offset #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not NULL-terminated"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "msg":Ljava/lang/String;
    new-instance v4, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;

    invoke-direct {v4, v3}, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method setJavaValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x4b0

    invoke-static {v0, v1}, Lorg/apache/poi/util/CodePageUtil;->getBytesInCodePage(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hpsf/UnicodeString;->_value:[B

    .line 97
    return-void
.end method

.method toJavaString()Ljava/lang/String;
    .locals 7

    .line 71
    iget-object v0, p0, Lorg/apache/poi/hpsf/UnicodeString;->_value:[B

    array-length v1, v0

    if-nez v1, :cond_0

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_0
    array-length v1, v0

    const/4 v2, 0x1

    shr-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1}, Lorg/apache/poi/util/StringUtil;->getFromUnicodeLE([BII)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 78
    .local v1, "terminator":I
    const/4 v4, -0x1

    const/4 v5, 0x5

    if-ne v1, v4, :cond_1

    .line 79
    const-string v4, "String terminator (\\0) for UnicodeString property value not found.Continue without trimming and hope for the best."

    .line 82
    .local v4, "msg":Ljava/lang/String;
    sget-object v6, Lorg/apache/poi/hpsf/UnicodeString;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v6, v5, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 83
    return-object v0

    .line 86
    .end local v4    # "msg":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    if-eq v1, v4, :cond_2

    .line 87
    const-string v4, "String terminator (\\0) for UnicodeString property value occured before the end of string. Trimming and hope for the best."

    .line 90
    .restart local v4    # "msg":Ljava/lang/String;
    sget-object v6, Lorg/apache/poi/hpsf/UnicodeString;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v6, v5, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 92
    .end local v4    # "msg":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method write(Ljava/io/OutputStream;)I
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lorg/apache/poi/hpsf/UnicodeString;->_value:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    invoke-static {v0, v1, p1}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    .line 101
    iget-object v0, p0, Lorg/apache/poi/hpsf/UnicodeString;->_value:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 102
    iget-object v0, p0, Lorg/apache/poi/hpsf/UnicodeString;->_value:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method
