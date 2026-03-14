.class public Lorg/apache/poi/hpsf/Filetime;
.super Ljava/lang/Object;
.source "Filetime.java"


# static fields
.field private static final EPOCH_DIFF:J = -0xa9730b66800L

.field private static final NANO_100:J = 0x2710L

.field private static final SIZE:I = 0x8

.field private static final UINT_MASK:J = 0xffffffffL


# instance fields
.field private _dwHighDateTime:I

.field private _dwLowDateTime:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(II)V
    .locals 0
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lorg/apache/poi/hpsf/Filetime;->_dwLowDateTime:I

    .line 46
    iput p2, p0, Lorg/apache/poi/hpsf/Filetime;->_dwHighDateTime:I

    .line 47
    return-void
.end method

.method constructor <init>(Ljava/util/Date;)V
    .locals 6
    .param p1, "date"    # Ljava/util/Date;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Lorg/apache/poi/hpsf/Filetime;->dateToFileTime(Ljava/util/Date;)J

    move-result-wide v0

    .line 51
    .local v0, "filetime":J
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int v3, v2

    iput v3, p0, Lorg/apache/poi/hpsf/Filetime;->_dwHighDateTime:I

    .line 52
    and-long v2, v0, v4

    long-to-int v3, v2

    iput v3, p0, Lorg/apache/poi/hpsf/Filetime;->_dwLowDateTime:I

    .line 53
    return-void
.end method

.method public static dateToFileTime(Ljava/util/Date;)J
    .locals 6
    .param p0, "date"    # Ljava/util/Date;

    .line 112
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 113
    .local v0, "ms_since_19700101":J
    const-wide v2, -0xa9730b66800L

    sub-long v2, v0, v2

    .line 114
    .local v2, "ms_since_16010101":J
    const-wide/16 v4, 0x2710

    mul-long v4, v4, v2

    return-wide v4
.end method

.method public static filetimeToDate(J)Ljava/util/Date;
    .locals 5
    .param p0, "filetime"    # J

    .line 98
    const-wide/16 v0, 0x2710

    div-long v0, p0, v0

    .line 99
    .local v0, "ms_since_16010101":J
    const-wide v2, -0xa9730b66800L

    add-long/2addr v2, v0

    .line 100
    .local v2, "ms_since_19700101":J
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v4
.end method

.method public static isUndefined(Ljava/util/Date;)Z
    .locals 5
    .param p0, "date"    # Ljava/util/Date;

    .line 124
    if-eqz p0, :cond_1

    invoke-static {p0}, Lorg/apache/poi/hpsf/Filetime;->dateToFileTime(Ljava/util/Date;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method getHigh()J
    .locals 2

    .line 62
    iget v0, p0, Lorg/apache/poi/hpsf/Filetime;->_dwHighDateTime:I

    int-to-long v0, v0

    return-wide v0
.end method

.method getJavaValue()Ljava/util/Date;
    .locals 6

    .line 83
    iget v0, p0, Lorg/apache/poi/hpsf/Filetime;->_dwHighDateTime:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p0, Lorg/apache/poi/hpsf/Filetime;->_dwLowDateTime:I

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 84
    .local v0, "l":J
    invoke-static {v0, v1}, Lorg/apache/poi/hpsf/Filetime;->filetimeToDate(J)Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method getLow()J
    .locals 2

    .line 66
    iget v0, p0, Lorg/apache/poi/hpsf/Filetime;->_dwLowDateTime:I

    int-to-long v0, v0

    return-wide v0
.end method

.method read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    .locals 1
    .param p1, "lei"    # Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    .line 57
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hpsf/Filetime;->_dwLowDateTime:I

    .line 58
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hpsf/Filetime;->_dwHighDateTime:I

    .line 59
    return-void
.end method

.method toByteArray()[B
    .locals 3

    .line 70
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 71
    .local v0, "result":[B
    iget v1, p0, Lorg/apache/poi/hpsf/Filetime;->_dwLowDateTime:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 72
    iget v1, p0, Lorg/apache/poi/hpsf/Filetime;->_dwHighDateTime:I

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 73
    return-object v0
.end method

.method write(Ljava/io/OutputStream;)I
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget v0, p0, Lorg/apache/poi/hpsf/Filetime;->_dwLowDateTime:I

    invoke-static {v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt(ILjava/io/OutputStream;)V

    .line 78
    iget v0, p0, Lorg/apache/poi/hpsf/Filetime;->_dwHighDateTime:I

    invoke-static {v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt(ILjava/io/OutputStream;)V

    .line 79
    const/16 v0, 0x8

    return v0
.end method
