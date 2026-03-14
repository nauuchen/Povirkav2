.class public Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;
.super Ljava/lang/Object;
.source "UnicodeString.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/common/UnicodeString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtRst"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;",
        ">;"
    }
.end annotation


# instance fields
.field private extraData:[B

.field private formattingFontIndex:S

.field private formattingOptions:S

.field private numberOfRuns:I

.field private phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

.field private phoneticText:Ljava/lang/String;

.field private reserved:S


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->populateEmpty()V

    .line 141
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/util/LittleEndianInput;I)V
    .locals 12
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;
    .param p2, "expectedLength"    # I

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->reserved:S

    .line 146
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 147
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->populateEmpty()V

    .line 148
    return-void

    .line 152
    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    .line 153
    invoke-static {}, Lorg/apache/poi/hssf/record/common/UnicodeString;->access$000()Lorg/apache/poi/util/POILogger;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Warning - ExtRst has wrong magic marker, expecting 1 but found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-short v5, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->reserved:S

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - ignoring"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v1, p2, -0x2

    if-ge v0, v1, :cond_1

    .line 156
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    .end local v0    # "i":I
    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->populateEmpty()V

    .line 160
    return-void

    .line 164
    :cond_2
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    .line 166
    .local v0, "stringDataSize":S
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v4

    iput-short v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingFontIndex:S

    .line 167
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v4

    iput-short v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingOptions:S

    .line 170
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v4

    iput v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->numberOfRuns:I

    .line 171
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v4

    .line 174
    .local v4, "length1":S
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v5

    .line 176
    .local v5, "length2":S
    if-nez v4, :cond_3

    if-lez v5, :cond_3

    .line 177
    const/4 v5, 0x0

    .line 179
    :cond_3
    if-ne v4, v5, :cond_7

    .line 185
    invoke-static {p1, v4}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    .line 187
    add-int/lit8 v7, v0, -0x4

    add-int/lit8 v7, v7, -0x6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v7, v6

    .line 188
    .local v7, "runData":I
    div-int/lit8 v6, v7, 0x6

    .line 189
    .local v6, "numRuns":I
    new-array v8, v6, [Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    iput-object v8, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    .line 190
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v9, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    array-length v10, v9

    if-ge v8, v10, :cond_4

    .line 191
    new-instance v10, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    const/4 v11, 0x0

    invoke-direct {v10, p1, v11}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;-><init>(Lorg/apache/poi/util/LittleEndianInput;Lorg/apache/poi/hssf/record/common/UnicodeString$1;)V

    aput-object v10, v9, v8

    .line 190
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 194
    .end local v8    # "i":I
    :cond_4
    mul-int/lit8 v8, v6, 0x6

    sub-int v8, v7, v8

    .line 195
    .local v8, "extraDataLength":I
    if-gez v8, :cond_5

    .line 196
    invoke-static {}, Lorg/apache/poi/hssf/record/common/UnicodeString;->access$000()Lorg/apache/poi/util/POILogger;

    move-result-object v9

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Warning - ExtRst overran by "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    rsub-int/lit8 v11, v8, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " bytes"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v2

    invoke-virtual {v9, v1, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 197
    const/4 v8, 0x0

    .line 199
    :cond_5
    new-array v1, v8, [B

    iput-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->extraData:[B

    .line 200
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->extraData:[B

    array-length v3, v2

    if-ge v1, v3, :cond_6

    .line 201
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v3

    aput-byte v3, v2, v1

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 203
    .end local v1    # "i":I
    :cond_6
    return-void

    .line 180
    .end local v6    # "numRuns":I
    .end local v7    # "runData":I
    .end local v8    # "extraDataLength":I
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The two length fields of the Phonetic Text don\'t agree! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private populateEmpty()V
    .locals 2

    .line 133
    const/4 v0, 0x1

    iput-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->reserved:S

    .line 134
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    .line 135
    const/4 v0, 0x0

    new-array v1, v0, [Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    iput-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    .line 136
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->extraData:[B

    .line 137
    return-void
.end method


# virtual methods
.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->clone()Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    move-result-object v0

    return-object v0
.end method

.method protected clone()Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;
    .locals 7

    .line 311
    new-instance v0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;-><init>()V

    .line 312
    .local v0, "ext":Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->reserved:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->reserved:S

    .line 313
    iget-short v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingFontIndex:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingFontIndex:S

    .line 314
    iget-short v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingOptions:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingOptions:S

    .line 315
    iget v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->numberOfRuns:I

    iput v1, v0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->numberOfRuns:I

    .line 316
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    .line 317
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    array-length v1, v1

    new-array v1, v1, [Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    .line 318
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, v0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 319
    new-instance v3, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    iget-object v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    aget-object v4, v4, v1

    invoke-static {v4}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$300(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v4

    iget-object v5, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$400(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v5

    iget-object v6, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    aget-object v6, v6, v1

    invoke-static {v6}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$500(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;-><init>(III)V

    aput-object v3, v2, v1

    .line 318
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 116
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->compareTo(Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;)I
    .locals 4
    .param p1, "o"    # Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    .line 246
    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->reserved:S

    iget-short v1, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->reserved:S

    sub-int/2addr v0, v1

    .line 247
    .local v0, "result":I
    if-eqz v0, :cond_0

    .line 248
    return v0

    .line 250
    :cond_0
    iget-short v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingFontIndex:S

    iget-short v2, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingFontIndex:S

    sub-int/2addr v1, v2

    .line 251
    .end local v0    # "result":I
    .local v1, "result":I
    if-eqz v1, :cond_1

    .line 252
    return v1

    .line 254
    :cond_1
    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingOptions:S

    iget-short v2, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingOptions:S

    sub-int/2addr v0, v2

    .line 255
    .end local v1    # "result":I
    .restart local v0    # "result":I
    if-eqz v0, :cond_2

    .line 256
    return v0

    .line 258
    :cond_2
    iget v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->numberOfRuns:I

    iget v2, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->numberOfRuns:I

    sub-int/2addr v1, v2

    .line 259
    .end local v0    # "result":I
    .restart local v1    # "result":I
    if-eqz v1, :cond_3

    .line 260
    return v1

    .line 263
    :cond_3
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 264
    .end local v1    # "result":I
    .restart local v0    # "result":I
    if-eqz v0, :cond_4

    .line 265
    return v0

    .line 268
    :cond_4
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    array-length v1, v1

    iget-object v2, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    array-length v2, v2

    sub-int/2addr v1, v2

    .line 269
    .end local v0    # "result":I
    .restart local v1    # "result":I
    if-eqz v1, :cond_5

    .line 270
    return v1

    .line 272
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    array-length v3, v2

    if-ge v0, v3, :cond_9

    .line 273
    aget-object v2, v2, v0

    invoke-static {v2}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$300(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v2

    iget-object v3, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    aget-object v3, v3, v0

    invoke-static {v3}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$300(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 274
    .end local v1    # "result":I
    .local v2, "result":I
    if-eqz v2, :cond_6

    .line 275
    return v2

    .line 277
    :cond_6
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$400(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v1

    iget-object v3, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    aget-object v3, v3, v0

    invoke-static {v3}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$400(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v3

    sub-int/2addr v1, v3

    .line 278
    .end local v2    # "result":I
    .restart local v1    # "result":I
    if-eqz v1, :cond_7

    .line 279
    return v1

    .line 281
    :cond_7
    iget-object v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    aget-object v2, v2, v0

    invoke-static {v2}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$500(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v2

    iget-object v3, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    aget-object v3, v3, v0

    invoke-static {v3}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$500(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v3

    sub-int v1, v2, v3

    .line 282
    if-eqz v1, :cond_8

    .line 283
    return v1

    .line 272
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    .end local v0    # "i":I
    :cond_9
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->extraData:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iget-object v2, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->extraData:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    sub-int/2addr v0, v2

    .line 289
    .end local v1    # "result":I
    .local v0, "result":I
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 237
    instance-of v0, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 238
    return v1

    .line 240
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    .line 241
    .local v0, "other":Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->compareTo(Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected getDataSize()I
    .locals 2

    .line 209
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->extraData:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getFormattingFontIndex()S
    .locals 1

    .line 329
    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingFontIndex:S

    return v0
.end method

.method public getFormattingOptions()S
    .locals 1

    .line 332
    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingOptions:S

    return v0
.end method

.method public getNumberOfRuns()I
    .locals 1

    .line 335
    iget v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->numberOfRuns:I

    return v0
.end method

.method public getPhRuns()[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;
    .locals 1

    .line 341
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    return-object v0
.end method

.method public getPhoneticText()Ljava/lang/String;
    .locals 1

    .line 338
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 294
    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->reserved:S

    .line 295
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-short v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingFontIndex:S

    add-int/2addr v1, v2

    .line 296
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-short v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingOptions:S

    add-int/2addr v0, v2

    .line 297
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->numberOfRuns:I

    add-int/2addr v1, v2

    .line 298
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 300
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    .local v1, "arr$":[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 302
    .local v4, "ph":Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;
    mul-int/lit8 v5, v0, 0x1f

    invoke-static {v4}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$300(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v6

    add-int/2addr v5, v6

    .line 303
    .end local v0    # "hash":I
    .local v5, "hash":I
    mul-int/lit8 v0, v5, 0x1f

    invoke-static {v4}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$400(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v6

    add-int/2addr v0, v6

    .line 304
    .end local v5    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v5, v0, 0x1f

    invoke-static {v4}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$500(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v6

    add-int v0, v5, v6

    .line 301
    .end local v4    # "ph":Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 307
    .end local v1    # "arr$":[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    return v0
.end method

.method protected serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V
    .locals 4
    .param p1, "out"    # Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;

    .line 213
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->getDataSize()I

    move-result v0

    .line 215
    .local v0, "dataSize":I
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeContinueIfRequired(I)V

    .line 216
    iget-short v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->reserved:S

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 217
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 218
    iget-short v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingFontIndex:S

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 219
    iget-short v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingOptions:S

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 221
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeContinueIfRequired(I)V

    .line 222
    iget v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->numberOfRuns:I

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 223
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 224
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 226
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeContinueIfRequired(I)V

    .line 227
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    invoke-static {v1, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 229
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 230
    aget-object v2, v2, v1

    invoke-static {v2, p1}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$200(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->extraData:[B

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->write([B)V

    .line 234
    return-void
.end method
