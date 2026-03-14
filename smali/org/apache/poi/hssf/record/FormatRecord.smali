.class public final Lorg/apache/poi/hssf/record/FormatRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "FormatRecord.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;

.field public static final sid:S = 0x41es


# instance fields
.field private final field_1_index_code:I

.field private final field_3_hasMultibyte:Z

.field private final field_4_formatstring:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lorg/apache/poi/hssf/record/FormatRecord;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/FormatRecord;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "indexCode"    # I
    .param p2, "fs"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 50
    iput p1, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_1_index_code:I

    .line 51
    iput-object p2, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_4_formatstring:Ljava/lang/String;

    .line 52
    invoke-static {p2}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_3_hasMultibyte:Z

    .line 53
    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/hssf/record/FormatRecord;)V
    .locals 1
    .param p1, "other"    # Lorg/apache/poi/hssf/record/FormatRecord;

    .line 43
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 44
    iget v0, p1, Lorg/apache/poi/hssf/record/FormatRecord;->field_1_index_code:I

    iput v0, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_1_index_code:I

    .line 45
    iget-boolean v0, p1, Lorg/apache/poi/hssf/record/FormatRecord;->field_3_hasMultibyte:Z

    iput-boolean v0, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_3_hasMultibyte:Z

    .line 46
    iget-object v0, p1, Lorg/apache/poi/hssf/record/FormatRecord;->field_4_formatstring:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_4_formatstring:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 4
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 55
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 56
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_1_index_code:I

    .line 57
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    .line 58
    .local v0, "field_3_unicode_len":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_3_hasMultibyte:Z

    .line 60
    if-eqz v1, :cond_1

    .line 61
    invoke-static {p1, v0, v3}, Lorg/apache/poi/hssf/record/FormatRecord;->readStringCommon(Lorg/apache/poi/hssf/record/RecordInputStream;IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_4_formatstring:Ljava/lang/String;

    goto :goto_1

    .line 63
    :cond_1
    invoke-static {p1, v0, v2}, Lorg/apache/poi/hssf/record/FormatRecord;->readStringCommon(Lorg/apache/poi/hssf/record/RecordInputStream;IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_4_formatstring:Ljava/lang/String;

    .line 65
    :goto_1
    return-void
.end method

.method private static readStringCommon(Lorg/apache/poi/hssf/record/RecordInputStream;IZ)Ljava/lang/String;
    .locals 10
    .param p0, "ris"    # Lorg/apache/poi/hssf/record/RecordInputStream;
    .param p1, "requestedLength"    # I
    .param p2, "pIsCompressedEncoding"    # Z

    .line 127
    if-ltz p1, :cond_6

    const/high16 v0, 0x100000

    if-gt p1, v0, :cond_6

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "buf":[C
    move v1, p2

    .line 132
    .local v1, "isCompressedEncoding":Z
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    div-int/lit8 v2, v2, 0x2

    .line 134
    .local v2, "availableChars":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v3

    .line 135
    .local v3, "remaining":I
    if-ne p1, v2, :cond_1

    .line 136
    new-array v0, p1, [C

    goto :goto_1

    .line 141
    :cond_1
    new-array v0, v2, [C

    .line 143
    :goto_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v5, v0

    if-ge v4, v5, :cond_3

    .line 145
    if-eqz v1, :cond_2

    .line 146
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v5

    int-to-char v5, v5

    .local v5, "ch":C
    goto :goto_3

    .line 148
    .end local v5    # "ch":C
    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v5

    int-to-char v5, v5

    .line 150
    .restart local v5    # "ch":C
    :goto_3
    aput-char v5, v0, v4

    .line 143
    .end local v5    # "ch":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 156
    .end local v4    # "i":I
    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_4

    .line 157
    array-length v4, v0

    add-int/2addr v4, v6

    new-array v4, v4, [C

    .line 158
    .local v4, "tmp":[C
    array-length v7, v0

    invoke-static {v0, v5, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    array-length v7, v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v8

    int-to-char v8, v8

    aput-char v8, v4, v7

    .line 160
    move-object v0, v4

    .line 163
    .end local v4    # "tmp":[C
    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v4

    if-lez v4, :cond_5

    .line 164
    sget-object v4, Lorg/apache/poi/hssf/record/FormatRecord;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v7, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FormatRecord has "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " unexplained bytes. Silently skipping"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v5

    invoke-virtual {v4, v7, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 166
    :goto_4
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v4

    if-lez v4, :cond_5

    .line 167
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    goto :goto_4

    .line 170
    :cond_5
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    return-object v4

    .line 128
    .end local v0    # "buf":[C
    .end local v1    # "isCompressedEncoding":Z
    .end local v2    # "availableChars":I
    .end local v3    # "remaining":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad requested string length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormatRecord;->clone()Lorg/apache/poi/hssf/record/FormatRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/FormatRecord;
    .locals 1

    .line 120
    new-instance v0, Lorg/apache/poi/hssf/record/FormatRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/FormatRecord;-><init>(Lorg/apache/poi/hssf/record/FormatRecord;)V

    return-object v0
.end method

.method protected getDataSize()I
    .locals 2

    .line 110
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormatRecord;->getFormatString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-boolean v1, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_3_hasMultibyte:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    mul-int v0, v0, v1

    add-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public getFormatString()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_4_formatstring:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexCode()I
    .locals 1

    .line 74
    iget v0, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_1_index_code:I

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 115
    const/16 v0, 0x41e

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 98
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormatRecord;->getFormatString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "formatString":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormatRecord;->getIndexCode()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 100
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 101
    iget-boolean v1, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_3_hasMultibyte:Z

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 103
    iget-boolean v1, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_3_hasMultibyte:Z

    if-eqz v1, :cond_0

    .line 104
    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_0

    .line 106
    :cond_0
    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 108
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 87
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 89
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[FORMAT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    const-string v1, "    .indexcode       = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormatRecord;->getIndexCode()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    const-string v1, "    .isUnicode       = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v3, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_3_hasMultibyte:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    const-string v1, "    .formatstring    = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormatRecord;->getFormatString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const-string v1, "[/FORMAT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
