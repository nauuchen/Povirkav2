.class public Lorg/apache/poi/poifs/filesystem/Ole10Native;
.super Ljava/lang/Object;
.source "Ole10Native.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field protected static final ISO1:Ljava/lang/String; = "ISO-8859-1"

.field public static final OLE10_NATIVE:Ljava/lang/String; = "\u0001Ole10Native"


# instance fields
.field private command:Ljava/lang/String;

.field private dataBuffer:[B

.field private fileName:Ljava/lang/String;

.field private flags1:S

.field private flags2:S

.field private flags3:S

.field private label:Ljava/lang/String;

.field private mode:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

.field private totalSize:I

.field private unknown1:S


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "data"    # [B

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x2

    iput-short v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags1:S

    .line 45
    const/4 v0, 0x0

    iput-short v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags2:S

    .line 46
    const/4 v1, 0x3

    iput-short v1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->unknown1:S

    .line 49
    iput-short v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags3:S

    .line 111
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->setLabel(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, p2}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->setFileName(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0, p3}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->setCommand(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, p4}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->setDataBuffer([B)V

    .line 115
    sget-object v0, Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;->parsed:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->mode:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    .line 116
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/poifs/filesystem/Ole10NativeException;
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x2

    iput-short v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags1:S

    .line 45
    const/4 v1, 0x0

    iput-short v1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags2:S

    .line 46
    const/4 v2, 0x3

    iput-short v2, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->unknown1:S

    .line 49
    iput-short v1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags3:S

    .line 126
    move v2, p2

    .line 128
    .local v2, "ofs":I
    array-length v3, p1

    add-int/lit8 v4, p2, 0x2

    if-lt v3, v4, :cond_7

    .line 132
    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v3

    iput v3, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->totalSize:I

    .line 133
    add-int/lit8 v2, v2, 0x4

    .line 135
    sget-object v3, Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;->unparsed:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    iput-object v3, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->mode:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    .line 136
    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v3

    if-ne v3, v0, :cond_1

    .line 139
    add-int/lit8 v3, v2, 0x2

    aget-byte v3, p1, v3

    invoke-static {v3}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    sget-object v3, Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;->compact:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    iput-object v3, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->mode:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    goto :goto_0

    .line 142
    :cond_0
    sget-object v3, Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;->parsed:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    iput-object v3, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->mode:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    .line 147
    :cond_1
    :goto_0
    sget-object v3, Lorg/apache/poi/poifs/filesystem/Ole10Native$1;->$SwitchMap$org$apache$poi$poifs$filesystem$Ole10Native$EncodingMode:[I

    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->mode:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    if-eq v3, v0, :cond_2

    move v0, v1

    .line 192
    .local v0, "dataSize":I
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->totalSize:I

    goto :goto_1

    .line 147
    .end local v0    # "dataSize":I
    :cond_2
    move v3, v1

    .line 186
    .local v3, "dataSize":I
    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v4

    iput-short v4, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags1:S

    .line 187
    add-int/lit8 v2, v2, 0x2

    .line 188
    iget v4, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->totalSize:I

    add-int/lit8 v0, v4, -0x2

    .line 189
    .end local v3    # "dataSize":I
    .restart local v0    # "dataSize":I
    goto :goto_1

    .line 149
    .end local v0    # "dataSize":I
    :cond_3
    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v3

    iput-short v3, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags1:S

    .line 152
    add-int/lit8 v2, v2, 0x2

    .line 154
    invoke-static {p1, v2}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getStringLength([BI)I

    move-result v3

    .line 155
    .local v3, "len":I
    add-int/lit8 v4, v3, -0x1

    invoke-static {p1, v2, v4}, Lorg/apache/poi/util/StringUtil;->getFromCompressedUnicode([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->label:Ljava/lang/String;

    .line 156
    add-int/2addr v2, v3

    .line 158
    invoke-static {p1, v2}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getStringLength([BI)I

    move-result v3

    .line 159
    add-int/lit8 v4, v3, -0x1

    invoke-static {p1, v2, v4}, Lorg/apache/poi/util/StringUtil;->getFromCompressedUnicode([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->fileName:Ljava/lang/String;

    .line 160
    add-int/2addr v2, v3

    .line 162
    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v4

    iput-short v4, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags2:S

    .line 163
    add-int/2addr v2, v0

    .line 165
    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v4

    iput-short v4, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->unknown1:S

    .line 166
    add-int/2addr v2, v0

    .line 168
    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    .line 169
    .end local v3    # "len":I
    .local v0, "len":I
    add-int/lit8 v2, v2, 0x4

    .line 170
    add-int/lit8 v3, v0, -0x1

    invoke-static {p1, v2, v3}, Lorg/apache/poi/util/StringUtil;->getFromCompressedUnicode([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->command:Ljava/lang/String;

    .line 171
    add-int/2addr v2, v0

    .line 173
    iget v3, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->totalSize:I

    const-string v4, "Invalid Ole10Native"

    if-lt v3, v2, :cond_6

    .line 177
    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v3

    .line 178
    .local v3, "dataSize":I
    add-int/lit8 v2, v2, 0x4

    .line 180
    if-ltz v3, :cond_5

    iget v5, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->totalSize:I

    add-int/lit8 v6, v2, -0x4

    sub-int/2addr v5, v6

    if-lt v5, v3, :cond_5

    move v0, v3

    .line 196
    .end local v3    # "dataSize":I
    .local v0, "dataSize":I
    :goto_1
    int-to-long v3, v0

    int-to-long v5, v2

    add-long/2addr v3, v5

    array-length v5, p1

    int-to-long v5, v5

    cmp-long v7, v3, v5

    if-gtz v7, :cond_4

    .line 199
    new-array v3, v0, [B

    iput-object v3, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->dataBuffer:[B

    .line 200
    invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    add-int/2addr v2, v0

    .line 202
    return-void

    .line 197
    :cond_4
    new-instance v1, Lorg/apache/poi/poifs/filesystem/Ole10NativeException;

    const-string v3, "Invalid Ole10Native: declared data length > available data"

    invoke-direct {v1, v3}, Lorg/apache/poi/poifs/filesystem/Ole10NativeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    .local v0, "len":I
    .restart local v3    # "dataSize":I
    :cond_5
    new-instance v1, Lorg/apache/poi/poifs/filesystem/Ole10NativeException;

    invoke-direct {v1, v4}, Lorg/apache/poi/poifs/filesystem/Ole10NativeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    .end local v3    # "dataSize":I
    :cond_6
    new-instance v1, Lorg/apache/poi/poifs/filesystem/Ole10NativeException;

    invoke-direct {v1, v4}, Lorg/apache/poi/poifs/filesystem/Ole10NativeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    .end local v0    # "len":I
    :cond_7
    new-instance v0, Lorg/apache/poi/poifs/filesystem/Ole10NativeException;

    const-string v1, "data is too small"

    invoke-direct {v0, v1}, Lorg/apache/poi/poifs/filesystem/Ole10NativeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createFromEmbeddedOleObject(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/poifs/filesystem/Ole10Native;
    .locals 5
    .param p0, "directory"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/poifs/filesystem/Ole10NativeException;
        }
    .end annotation

    .line 98
    const-string v0, "\u0001Ole10Native"

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 100
    .local v0, "nativeEntry":Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    invoke-interface {v0}, Lorg/apache/poi/poifs/filesystem/DocumentEntry;->getSize()I

    move-result v1

    new-array v1, v1, [B

    .line 101
    .local v1, "data":[B
    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->read([B)I

    move-result v2

    .line 102
    .local v2, "readBytes":I
    array-length v3, v1

    if-ne v2, v3, :cond_0

    .line 104
    new-instance v3, Lorg/apache/poi/poifs/filesystem/Ole10Native;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lorg/apache/poi/poifs/filesystem/Ole10Native;-><init>([BI)V

    return-object v3

    .line 102
    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method public static createFromEmbeddedOleObject(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)Lorg/apache/poi/poifs/filesystem/Ole10Native;
    .locals 1
    .param p0, "poifs"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/poifs/filesystem/Ole10NativeException;
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->createFromEmbeddedOleObject(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/poifs/filesystem/Ole10Native;

    move-result-object v0

    return-object v0
.end method

.method private static getStringLength([BI)I
    .locals 3
    .param p0, "data"    # [B
    .param p1, "ofs"    # I

    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "len":I
    :goto_0
    add-int v1, v0, p1

    array-length v2, p0

    if-ge v1, v2, :cond_0

    add-int v1, p1, v0

    aget-byte v1, p0, v1

    if-eqz v1, :cond_0

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 213
    return v0
.end method


# virtual methods
.method public getCommand()Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getDataBuffer()[B
    .locals 1

    .line 306
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->dataBuffer:[B

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    .line 293
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->dataBuffer:[B

    array-length v0, v0

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFlags1()S
    .locals 1

    .line 232
    iget-short v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags1:S

    return v0
.end method

.method public getFlags2()S
    .locals 1

    .line 262
    iget-short v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags2:S

    return v0
.end method

.method public getFlags3()S
    .locals 1

    .line 315
    iget-short v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags3:S

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalSize()I
    .locals 1

    .line 223
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->totalSize:I

    return v0
.end method

.method public getUnknown1()S
    .locals 1

    .line 271
    iget-short v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->unknown1:S

    return v0
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .line 391
    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->command:Ljava/lang/String;

    .line 392
    return-void
.end method

.method public setDataBuffer([B)V
    .locals 1
    .param p1, "dataBuffer"    # [B

    .line 399
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->dataBuffer:[B

    .line 400
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .line 387
    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->fileName:Ljava/lang/String;

    .line 388
    return-void
.end method

.method public setFlags1(S)V
    .locals 0
    .param p1, "flags1"    # S

    .line 371
    iput-short p1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags1:S

    .line 372
    return-void
.end method

.method public setFlags2(S)V
    .locals 0
    .param p1, "flags2"    # S

    .line 375
    iput-short p1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags2:S

    .line 376
    return-void
.end method

.method public setFlags3(S)V
    .locals 0
    .param p1, "flags3"    # S

    .line 379
    iput-short p1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags3:S

    .line 380
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .line 383
    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->label:Ljava/lang/String;

    .line 384
    return-void
.end method

.method public setUnknown1(S)V
    .locals 0
    .param p1, "unknown1"    # S

    .line 395
    iput-short p1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->unknown1:S

    .line 396
    return-void
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    new-instance v0, Lorg/apache/poi/util/LittleEndianOutputStream;

    invoke-direct {v0, p1}, Lorg/apache/poi/util/LittleEndianOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 331
    .local v0, "leosOut":Lorg/apache/poi/util/LittleEndianOutputStream;
    sget-object v1, Lorg/apache/poi/poifs/filesystem/Ole10Native$1;->$SwitchMap$org$apache$poi$poifs$filesystem$Ole10Native$EncodingMode:[I

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->mode:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 363
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getDataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeInt(I)V

    .line 364
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getDataBuffer()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_0

    .line 357
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getDataSize()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeInt(I)V

    .line 358
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getFlags1()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeShort(I)V

    .line 359
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getDataBuffer()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 360
    goto :goto_0

    .line 333
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 334
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Lorg/apache/poi/util/LittleEndianOutputStream;

    invoke-direct {v3, v1}, Lorg/apache/poi/util/LittleEndianOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 337
    .local v3, "leos":Lorg/apache/poi/util/LittleEndianOutputStream;
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getFlags1()S

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeShort(I)V

    .line 338
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getLabel()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/util/LittleEndianOutputStream;->write([B)V

    .line 339
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/apache/poi/util/LittleEndianOutputStream;->write(I)V

    .line 340
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/apache/poi/util/LittleEndianOutputStream;->write([B)V

    .line 341
    invoke-virtual {v3, v4}, Lorg/apache/poi/util/LittleEndianOutputStream;->write(I)V

    .line 342
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getFlags2()S

    move-result v6

    invoke-virtual {v3, v6}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeShort(I)V

    .line 343
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getUnknown1()S

    move-result v6

    invoke-virtual {v3, v6}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeShort(I)V

    .line 344
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getCommand()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v3, v6}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeInt(I)V

    .line 345
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/poi/util/LittleEndianOutputStream;->write([B)V

    .line 346
    invoke-virtual {v3, v4}, Lorg/apache/poi/util/LittleEndianOutputStream;->write(I)V

    .line 347
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getDataSize()I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeInt(I)V

    .line 348
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getDataBuffer()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/poi/util/LittleEndianOutputStream;->write([B)V

    .line 349
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getFlags3()S

    move-result v2

    invoke-virtual {v3, v2}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeShort(I)V

    .line 350
    invoke-virtual {v3}, Lorg/apache/poi/util/LittleEndianOutputStream;->close()V

    .line 352
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeInt(I)V

    .line 353
    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 354
    nop

    .line 368
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "leos":Lorg/apache/poi/util/LittleEndianOutputStream;
    :goto_0
    return-void
.end method
