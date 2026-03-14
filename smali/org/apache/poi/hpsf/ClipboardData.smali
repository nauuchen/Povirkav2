.class Lorg/apache/poi/hpsf/ClipboardData;
.super Ljava/lang/Object;
.source "ClipboardData.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private _format:I

.field private _value:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lorg/apache/poi/hpsf/ClipboardData;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/ClipboardData;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hpsf/ClipboardData;->_format:I

    .line 34
    return-void
.end method


# virtual methods
.method getValue()[B
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/apache/poi/hpsf/ClipboardData;->_value:[B

    return-object v0
.end method

.method read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    .locals 7
    .param p1, "lei"    # Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    .line 37
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->getReadIndex()I

    move-result v0

    .line 38
    .local v0, "offset":I
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result v1

    .line 40
    .local v1, "size":I
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClipboardData at offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " size less than 4 bytes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(doesn\'t even have format field!). Setting to format == 0 and hope for the best"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "msg":Ljava/lang/String;
    sget-object v3, Lorg/apache/poi/hpsf/ClipboardData;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v4, 0x5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 45
    iput v6, p0, Lorg/apache/poi/hpsf/ClipboardData;->_format:I

    .line 46
    new-array v3, v6, [B

    iput-object v3, p0, Lorg/apache/poi/hpsf/ClipboardData;->_value:[B

    .line 47
    return-void

    .line 50
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lorg/apache/poi/hpsf/ClipboardData;->_format:I

    .line 51
    add-int/lit8 v2, v1, -0x4

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/apache/poi/hpsf/ClipboardData;->_value:[B

    .line 52
    invoke-virtual {p1, v2}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readFully([B)V

    .line 53
    return-void
.end method

.method setValue([B)V
    .locals 1
    .param p1, "value"    # [B

    .line 73
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/apache/poi/hpsf/ClipboardData;->_value:[B

    .line 74
    return-void
.end method

.method toByteArray()[B
    .locals 3

    .line 60
    iget-object v0, p0, Lorg/apache/poi/hpsf/ClipboardData;->_value:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 61
    .local v0, "result":[B
    new-instance v1, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;-><init>([BI)V

    .line 63
    .local v1, "bos":Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;
    :try_start_0
    iget-object v2, p0, Lorg/apache/poi/hpsf/ClipboardData;->_value:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    .line 64
    iget v2, p0, Lorg/apache/poi/hpsf/ClipboardData;->_format:I

    invoke-virtual {v1, v2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    .line 65
    iget-object v2, p0, Lorg/apache/poi/hpsf/ClipboardData;->_value:[B

    invoke-virtual {v1, v2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    nop

    .line 68
    invoke-static {v1}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v2

    invoke-static {v1}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
.end method
