.class public final Lorg/apache/poi/poifs/storage/HeaderBlock;
.super Ljava/lang/Object;
.source "HeaderBlock.java"

# interfaces
.implements Lorg/apache/poi/poifs/storage/HeaderBlockConstants;


# static fields
.field private static final _default_value:B = -0x1t


# instance fields
.field private _bat_count:I

.field private final _data:[B

.field private _property_start:I

.field private _sbat_count:I

.field private _sbat_start:I

.field private _xbat_count:I

.field private _xbat_start:I

.field private final bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-static {p1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->readFirst512(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;-><init>([B)V

    .line 105
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v0

    const/16 v1, 0x200

    if-eq v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v0

    sub-int/2addr v0, v1

    .line 107
    .local v0, "rest":I
    new-array v1, v0, [B

    .line 108
    .local v1, "tmp":[B
    invoke-static {p1, v1}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    .line 110
    .end local v0    # "rest":I
    .end local v1    # "tmp":[B
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    const/16 v0, 0x200

    invoke-static {p1, v0}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/nio/ByteBuffer;I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;-><init>([B)V

    .line 114
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V
    .locals 6
    .param p1, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 175
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    .line 176
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 179
    new-instance v1, Lorg/apache/poi/util/LongField;

    const/4 v2, 0x0

    const-wide v3, -0x1ee54e5e1fee3030L    # -5.8639378995972355E159

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/poi/util/LongField;-><init>(IJ[B)V

    .line 180
    new-instance v1, Lorg/apache/poi/util/IntegerField;

    const/16 v3, 0x8

    invoke-direct {v1, v3, v2, v0}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 181
    new-instance v1, Lorg/apache/poi/util/IntegerField;

    const/16 v3, 0xc

    invoke-direct {v1, v3, v2, v0}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 182
    new-instance v1, Lorg/apache/poi/util/IntegerField;

    const/16 v3, 0x10

    invoke-direct {v1, v3, v2, v0}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 183
    new-instance v1, Lorg/apache/poi/util/IntegerField;

    const/16 v3, 0x14

    invoke-direct {v1, v3, v2, v0}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 184
    new-instance v1, Lorg/apache/poi/util/ShortField;

    const/16 v3, 0x18

    const/16 v4, 0x3b

    invoke-direct {v1, v3, v4, v0}, Lorg/apache/poi/util/ShortField;-><init>(IS[B)V

    .line 185
    new-instance v1, Lorg/apache/poi/util/ShortField;

    const/16 v3, 0x1a

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4, v0}, Lorg/apache/poi/util/ShortField;-><init>(IS[B)V

    .line 186
    new-instance v1, Lorg/apache/poi/util/ShortField;

    const/16 v3, 0x1c

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4, v0}, Lorg/apache/poi/util/ShortField;-><init>(IS[B)V

    .line 188
    new-instance v1, Lorg/apache/poi/util/ShortField;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getHeaderValue()S

    move-result v3

    const/16 v5, 0x1e

    invoke-direct {v1, v5, v3, v0}, Lorg/apache/poi/util/ShortField;-><init>(IS[B)V

    .line 189
    new-instance v1, Lorg/apache/poi/util/IntegerField;

    const/16 v3, 0x20

    const/4 v5, 0x6

    invoke-direct {v1, v3, v5, v0}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 190
    new-instance v1, Lorg/apache/poi/util/IntegerField;

    const/16 v3, 0x24

    invoke-direct {v1, v3, v2, v0}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 191
    new-instance v1, Lorg/apache/poi/util/IntegerField;

    const/16 v3, 0x28

    invoke-direct {v1, v3, v2, v0}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 192
    new-instance v1, Lorg/apache/poi/util/IntegerField;

    const/16 v3, 0x34

    invoke-direct {v1, v3, v2, v0}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 193
    new-instance v1, Lorg/apache/poi/util/IntegerField;

    const/16 v3, 0x38

    const/16 v5, 0x1000

    invoke-direct {v1, v3, v5, v0}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 196
    iput v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_bat_count:I

    .line 197
    iput v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_sbat_count:I

    .line 198
    iput v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_xbat_count:I

    .line 199
    iput v4, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_property_start:I

    .line 200
    iput v4, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_sbat_start:I

    .line 201
    iput v4, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_xbat_start:I

    .line 202
    return-void
.end method

.method private constructor <init>([B)V
    .locals 6
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    .line 120
    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf([B)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v1

    .line 122
    .local v1, "fm":Lorg/apache/poi/poifs/filesystem/FileMagic;
    sget-object v2, Lorg/apache/poi/poifs/storage/HeaderBlock$1;->$SwitchMap$org$apache$poi$poifs$filesystem$FileMagic:[I

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/FileMagic;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 142
    const-wide v2, -0x1ee54e5e1fee3030L    # -5.8639378995972355E159

    invoke-static {v2, v3}, Lorg/apache/poi/util/HexDump;->longToHex(J)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "exp":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getLong([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/poi/util/HexDump;->longToHex(J)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "act":Ljava/lang/String;
    new-instance v3, Lorg/apache/poi/poifs/filesystem/NotOLE2FileException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid header signature; read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - Your file appears not to be a valid OLE2 document"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/poi/poifs/filesystem/NotOLE2FileException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 138
    .end local v0    # "exp":Ljava/lang/String;
    .end local v2    # "act":Ljava/lang/String;
    :pswitch_0
    new-instance v0, Lorg/apache/poi/hssf/OldExcelFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The supplied data appears to be in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " format. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "HSSF only supports the BIFF8 format, try OldExcelExtractor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/poi/hssf/OldExcelFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :pswitch_1
    new-instance v0, Lorg/apache/poi/poifs/filesystem/NotOLE2FileException;

    const-string v2, "The supplied data appears to be in the old MS Write format. Apache POI doesn\'t currently support this format"

    invoke-direct {v0, v2}, Lorg/apache/poi/poifs/filesystem/NotOLE2FileException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :pswitch_2
    new-instance v0, Lorg/apache/poi/poifs/filesystem/NotOLE2FileException;

    const-string v2, "The supplied data appears to be a raw XML file. Formats such as Office 2003 XML are not supported"

    invoke-direct {v0, v2}, Lorg/apache/poi/poifs/filesystem/NotOLE2FileException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :pswitch_3
    new-instance v0, Lorg/apache/poi/poifs/filesystem/OfficeXmlFileException;

    const-string v2, "The supplied data appears to be in the Office 2007+ XML. You are calling the part of POI that deals with OLE2 Office Documents. You need to call a different part of POI to process this data (eg XSSF instead of HSSF)"

    invoke-direct {v0, v2}, Lorg/apache/poi/poifs/filesystem/OfficeXmlFileException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :pswitch_4
    nop

    .line 150
    const/16 v2, 0x1e

    aget-byte v3, v0, v2

    const/16 v4, 0xc

    if-ne v3, v4, :cond_0

    .line 151
    sget-object v2, Lorg/apache/poi/poifs/common/POIFSConstants;->LARGER_BIG_BLOCK_SIZE_DETAILS:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    iput-object v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    goto :goto_0

    .line 152
    :cond_0
    aget-byte v3, v0, v2

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    .line 153
    sget-object v2, Lorg/apache/poi/poifs/common/POIFSConstants;->SMALLER_BIG_BLOCK_SIZE_DETAILS:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    iput-object v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 159
    :goto_0
    new-instance v2, Lorg/apache/poi/util/IntegerField;

    const/16 v3, 0x2c

    invoke-direct {v2, v3, p1}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    invoke-virtual {v2}, Lorg/apache/poi/util/IntegerField;->get()I

    move-result v2

    iput v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_bat_count:I

    .line 160
    new-instance v2, Lorg/apache/poi/util/IntegerField;

    const/16 v3, 0x30

    invoke-direct {v2, v3, v0}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    invoke-virtual {v2}, Lorg/apache/poi/util/IntegerField;->get()I

    move-result v2

    iput v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_property_start:I

    .line 161
    new-instance v2, Lorg/apache/poi/util/IntegerField;

    const/16 v3, 0x3c

    invoke-direct {v2, v3, v0}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    invoke-virtual {v2}, Lorg/apache/poi/util/IntegerField;->get()I

    move-result v2

    iput v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_sbat_start:I

    .line 162
    new-instance v2, Lorg/apache/poi/util/IntegerField;

    const/16 v3, 0x40

    invoke-direct {v2, v3, v0}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    invoke-virtual {v2}, Lorg/apache/poi/util/IntegerField;->get()I

    move-result v2

    iput v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_sbat_count:I

    .line 163
    new-instance v2, Lorg/apache/poi/util/IntegerField;

    const/16 v3, 0x44

    invoke-direct {v2, v3, v0}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    invoke-virtual {v2}, Lorg/apache/poi/util/IntegerField;->get()I

    move-result v2

    iput v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_xbat_start:I

    .line 164
    new-instance v2, Lorg/apache/poi/util/IntegerField;

    const/16 v3, 0x48

    invoke-direct {v2, v3, v0}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    invoke-virtual {v2}, Lorg/apache/poi/util/IntegerField;->get()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_xbat_count:I

    .line 165
    return-void

    .line 155
    :cond_1
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported blocksize  (2^"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v0, v0, v2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "). Expected 2^9 or 2^12."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static alertShortRead(II)Ljava/io/IOException;
    .locals 5
    .param p0, "pRead"    # I
    .param p1, "expectedReadSize"    # I

    .line 217
    if-gez p0, :cond_0

    .line 219
    const/4 v0, 0x0

    .local v0, "read":I
    goto :goto_0

    .line 221
    .end local v0    # "read":I
    :cond_0
    move v0, p0

    .line 223
    .restart local v0    # "read":I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " byte"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string v2, ""

    goto :goto_1

    :cond_1
    const-string v2, "s"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "type":Ljava/lang/String;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to read entire header; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " read; expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method private static readFirst512(Ljava/io/InputStream;)[B
    .locals 3
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    const/16 v0, 0x200

    new-array v1, v0, [B

    .line 208
    .local v1, "data":[B
    invoke-static {p0, v1}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v2

    .line 209
    .local v2, "bsCount":I
    if-ne v2, v0, :cond_0

    .line 212
    return-object v1

    .line 210
    :cond_0
    invoke-static {v2, v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;->alertShortRead(II)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public getBATArray()[I
    .locals 4

    .line 299
    iget v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_bat_count:I

    const/16 v1, 0x6d

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [I

    .line 300
    .local v0, "result":[I
    const/16 v1, 0x4c

    .line 301
    .local v1, "offset":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 302
    iget-object v3, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    invoke-static {v3, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v3

    aput v3, v0, v2

    .line 303
    add-int/lit8 v1, v1, 0x4

    .line 301
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 305
    .end local v2    # "j":I
    :cond_0
    return-object v0
.end method

.method public getBATCount()I
    .locals 1

    .line 280
    iget v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_bat_count:I

    return v0
.end method

.method public getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .locals 1

    .line 356
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    return-object v0
.end method

.method public getPropertyStart()I
    .locals 1

    .line 236
    iget v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_property_start:I

    return v0
.end method

.method public getSBATCount()I
    .locals 1

    .line 254
    iget v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_sbat_count:I

    return v0
.end method

.method public getSBATStart()I
    .locals 1

    .line 251
    iget v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_sbat_start:I

    return v0
.end method

.method public getXBATCount()I
    .locals 1

    .line 330
    iget v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_xbat_count:I

    return v0
.end method

.method public getXBATIndex()I
    .locals 1

    .line 343
    iget v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_xbat_start:I

    return v0
.end method

.method public setBATArray([I)V
    .locals 6
    .param p1, "bat_array"    # [I

    .line 312
    array-length v0, p1

    const/16 v1, 0x6d

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 313
    .local v0, "count":I
    rsub-int/lit8 v1, v0, 0x6d

    .line 315
    .local v1, "blank":I
    const/16 v2, 0x4c

    .line 316
    .local v2, "offset":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 317
    iget-object v4, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    aget v5, p1, v3

    invoke-static {v4, v2, v5}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 318
    add-int/lit8 v2, v2, 0x4

    .line 316
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 320
    .end local v3    # "i":I
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 321
    iget-object v4, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/4 v5, -0x1

    invoke-static {v4, v2, v5}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 322
    add-int/lit8 v2, v2, 0x4

    .line 320
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 324
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method public setBATCount(I)V
    .locals 0
    .param p1, "count"    # I

    .line 287
    iput p1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_bat_count:I

    .line 288
    return-void
.end method

.method public setPropertyStart(I)V
    .locals 0
    .param p1, "startBlock"    # I

    .line 244
    iput p1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_property_start:I

    .line 245
    return-void
.end method

.method public setSBATBlockCount(I)V
    .locals 0
    .param p1, "count"    # I

    .line 273
    iput p1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_sbat_count:I

    .line 274
    return-void
.end method

.method public setSBATStart(I)V
    .locals 0
    .param p1, "startBlock"    # I

    .line 264
    iput p1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_sbat_start:I

    .line 265
    return-void
.end method

.method public setXBATCount(I)V
    .locals 0
    .param p1, "count"    # I

    .line 336
    iput p1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_xbat_count:I

    .line 337
    return-void
.end method

.method public setXBATStart(I)V
    .locals 0
    .param p1, "startBlock"    # I

    .line 349
    iput p1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_xbat_start:I

    .line 350
    return-void
.end method

.method writeData(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_bat_count:I

    iget-object v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/16 v3, 0x2c

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 371
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_property_start:I

    iget-object v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/16 v3, 0x30

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 372
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_sbat_start:I

    iget-object v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/16 v3, 0x3c

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 373
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_sbat_count:I

    iget-object v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/16 v3, 0x40

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 374
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_xbat_start:I

    iget-object v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/16 v3, 0x44

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 375
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_xbat_count:I

    iget-object v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/16 v3, 0x48

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 378
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/4 v1, 0x0

    const/16 v2, 0x200

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 381
    const/16 v0, 0x200

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 382
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 381
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 384
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
