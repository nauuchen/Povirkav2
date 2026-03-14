.class public Lorg/apache/poi/util/ReplacingInputStream;
.super Ljava/io/FilterInputStream;
.source "ReplacingInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/util/ReplacingInputStream$State;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final UTF8:Ljava/nio/charset/Charset;


# instance fields
.field final buf:[I

.field private matchedIndex:I

.field private final pattern:[B

.field private replacedIndex:I

.field private final replacement:[B

.field private state:Lorg/apache/poi/util/ReplacingInputStream$State;

.field private unbufferIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/ReplacingInputStream;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "replacement"    # Ljava/lang/String;

    .line 63
    sget-object v0, Lorg/apache/poi/util/ReplacingInputStream;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    if-nez p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/poi/util/ReplacingInputStream;-><init>(Ljava/io/InputStream;[B[B)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[B[B)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "pattern"    # [B
    .param p3, "replacement"    # [B

    .line 77
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/util/ReplacingInputStream;->matchedIndex:I

    .line 39
    iput v0, p0, Lorg/apache/poi/util/ReplacingInputStream;->unbufferIndex:I

    .line 40
    iput v0, p0, Lorg/apache/poi/util/ReplacingInputStream;->replacedIndex:I

    .line 44
    sget-object v0, Lorg/apache/poi/util/ReplacingInputStream$State;->NOT_MATCHED:Lorg/apache/poi/util/ReplacingInputStream$State;

    iput-object v0, p0, Lorg/apache/poi/util/ReplacingInputStream;->state:Lorg/apache/poi/util/ReplacingInputStream$State;

    .line 78
    if-eqz p2, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    .line 81
    iput-object p2, p0, Lorg/apache/poi/util/ReplacingInputStream;->pattern:[B

    .line 82
    iput-object p3, p0, Lorg/apache/poi/util/ReplacingInputStream;->replacement:[B

    .line 84
    array-length v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/poi/util/ReplacingInputStream;->buf:[I

    .line 85
    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pattern length should be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    sget-object v0, Lorg/apache/poi/util/ReplacingInputStream$1;->$SwitchMap$org$apache$poi$util$ReplacingInputStream$State:[I

    iget-object v1, p0, Lorg/apache/poi/util/ReplacingInputStream;->state:Lorg/apache/poi/util/ReplacingInputStream$State;

    invoke-virtual {v1}, Lorg/apache/poi/util/ReplacingInputStream$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 130
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 131
    .local v0, "next":I
    iget-object v1, p0, Lorg/apache/poi/util/ReplacingInputStream;->pattern:[B

    aget-byte v1, v1, v2

    if-eq v1, v0, :cond_0

    .line 132
    return v0

    .line 136
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/util/ReplacingInputStream;->buf:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 138
    iput v2, p0, Lorg/apache/poi/util/ReplacingInputStream;->matchedIndex:I

    .line 140
    iget-object v1, p0, Lorg/apache/poi/util/ReplacingInputStream;->buf:[I

    const/4 v3, 0x0

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lorg/apache/poi/util/ReplacingInputStream;->matchedIndex:I

    aput v0, v1, v2

    .line 141
    iget-object v1, p0, Lorg/apache/poi/util/ReplacingInputStream;->pattern:[B

    array-length v1, v1

    if-ne v1, v4, :cond_1

    .line 143
    sget-object v1, Lorg/apache/poi/util/ReplacingInputStream$State;->REPLACING:Lorg/apache/poi/util/ReplacingInputStream$State;

    iput-object v1, p0, Lorg/apache/poi/util/ReplacingInputStream;->state:Lorg/apache/poi/util/ReplacingInputStream$State;

    .line 145
    iput v2, p0, Lorg/apache/poi/util/ReplacingInputStream;->replacedIndex:I

    goto :goto_0

    .line 148
    :cond_1
    sget-object v1, Lorg/apache/poi/util/ReplacingInputStream$State;->MATCHING:Lorg/apache/poi/util/ReplacingInputStream$State;

    iput-object v1, p0, Lorg/apache/poi/util/ReplacingInputStream;->state:Lorg/apache/poi/util/ReplacingInputStream$State;

    .line 151
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/util/ReplacingInputStream;->read()I

    move-result v1

    return v1

    .line 126
    .end local v0    # "next":I
    :cond_2
    move v0, v2

    .line 190
    .restart local v0    # "next":I
    iget-object v1, p0, Lorg/apache/poi/util/ReplacingInputStream;->buf:[I

    iget v3, p0, Lorg/apache/poi/util/ReplacingInputStream;->unbufferIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/poi/util/ReplacingInputStream;->unbufferIndex:I

    aget v0, v1, v3

    .line 191
    iget v1, p0, Lorg/apache/poi/util/ReplacingInputStream;->matchedIndex:I

    if-ne v4, v1, :cond_3

    .line 192
    sget-object v1, Lorg/apache/poi/util/ReplacingInputStream$State;->NOT_MATCHED:Lorg/apache/poi/util/ReplacingInputStream$State;

    iput-object v1, p0, Lorg/apache/poi/util/ReplacingInputStream;->state:Lorg/apache/poi/util/ReplacingInputStream$State;

    .line 193
    iput v2, p0, Lorg/apache/poi/util/ReplacingInputStream;->matchedIndex:I

    .line 195
    :cond_3
    return v0

    .line 126
    .end local v0    # "next":I
    :cond_4
    move v0, v2

    .line 180
    .restart local v0    # "next":I
    iget-object v1, p0, Lorg/apache/poi/util/ReplacingInputStream;->replacement:[B

    iget v3, p0, Lorg/apache/poi/util/ReplacingInputStream;->replacedIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/poi/util/ReplacingInputStream;->replacedIndex:I

    aget-byte v0, v1, v3

    .line 181
    array-length v1, v1

    if-ne v4, v1, :cond_5

    .line 182
    sget-object v1, Lorg/apache/poi/util/ReplacingInputStream$State;->NOT_MATCHED:Lorg/apache/poi/util/ReplacingInputStream$State;

    iput-object v1, p0, Lorg/apache/poi/util/ReplacingInputStream;->state:Lorg/apache/poi/util/ReplacingInputStream$State;

    .line 183
    iput v2, p0, Lorg/apache/poi/util/ReplacingInputStream;->replacedIndex:I

    .line 185
    :cond_5
    return v0

    .line 126
    .end local v0    # "next":I
    :cond_6
    move v0, v2

    .line 155
    .restart local v0    # "next":I
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 156
    iget-object v1, p0, Lorg/apache/poi/util/ReplacingInputStream;->pattern:[B

    iget v3, p0, Lorg/apache/poi/util/ReplacingInputStream;->matchedIndex:I

    aget-byte v4, v1, v3

    if-ne v4, v0, :cond_9

    .line 157
    iget-object v4, p0, Lorg/apache/poi/util/ReplacingInputStream;->buf:[I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/apache/poi/util/ReplacingInputStream;->matchedIndex:I

    aput v0, v4, v3

    .line 158
    array-length v1, v1

    if-ne v5, v1, :cond_a

    .line 160
    iget-object v1, p0, Lorg/apache/poi/util/ReplacingInputStream;->replacement:[B

    if-eqz v1, :cond_8

    array-length v1, v1

    if-nez v1, :cond_7

    goto :goto_1

    .line 166
    :cond_7
    sget-object v1, Lorg/apache/poi/util/ReplacingInputStream$State;->REPLACING:Lorg/apache/poi/util/ReplacingInputStream$State;

    iput-object v1, p0, Lorg/apache/poi/util/ReplacingInputStream;->state:Lorg/apache/poi/util/ReplacingInputStream$State;

    .line 167
    iput v2, p0, Lorg/apache/poi/util/ReplacingInputStream;->replacedIndex:I

    goto :goto_2

    .line 162
    :cond_8
    :goto_1
    sget-object v1, Lorg/apache/poi/util/ReplacingInputStream$State;->NOT_MATCHED:Lorg/apache/poi/util/ReplacingInputStream$State;

    iput-object v1, p0, Lorg/apache/poi/util/ReplacingInputStream;->state:Lorg/apache/poi/util/ReplacingInputStream$State;

    .line 163
    iput v2, p0, Lorg/apache/poi/util/ReplacingInputStream;->matchedIndex:I

    goto :goto_2

    .line 172
    :cond_9
    iget-object v1, p0, Lorg/apache/poi/util/ReplacingInputStream;->buf:[I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/poi/util/ReplacingInputStream;->matchedIndex:I

    aput v0, v1, v3

    .line 173
    sget-object v1, Lorg/apache/poi/util/ReplacingInputStream$State;->UNBUFFER:Lorg/apache/poi/util/ReplacingInputStream$State;

    iput-object v1, p0, Lorg/apache/poi/util/ReplacingInputStream;->state:Lorg/apache/poi/util/ReplacingInputStream$State;

    .line 174
    iput v2, p0, Lorg/apache/poi/util/ReplacingInputStream;->unbufferIndex:I

    .line 176
    :cond_a
    :goto_2
    invoke-virtual {p0}, Lorg/apache/poi/util/ReplacingInputStream;->read()I

    move-result v1

    return v1
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/poi/util/ReplacingInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    if-eqz p1, :cond_5

    .line 92
    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_4

    .line 94
    if-nez p3, :cond_0

    .line 95
    const/4 v0, 0x0

    return v0

    .line 98
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/util/ReplacingInputStream;->read()I

    move-result v0

    .line 99
    .local v0, "c":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 100
    return v1

    .line 102
    :cond_1
    int-to-byte v2, v0

    aput-byte v2, p1, p2

    .line 104
    const/4 v2, 0x1

    .line 105
    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_3

    .line 106
    invoke-virtual {p0}, Lorg/apache/poi/util/ReplacingInputStream;->read()I

    move-result v0

    .line 107
    if-ne v0, v1, :cond_2

    .line 108
    goto :goto_1

    .line 110
    :cond_2
    add-int v3, p2, v2

    int-to-byte v4, v0

    aput-byte v4, p1, v3

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    :cond_3
    :goto_1
    return v2

    .line 93
    .end local v0    # "c":I
    .end local v2    # "i":I
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 91
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/util/ReplacingInputStream;->state:Lorg/apache/poi/util/ReplacingInputStream$State;

    invoke-virtual {v1}, Lorg/apache/poi/util/ReplacingInputStream$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/apache/poi/util/ReplacingInputStream;->matchedIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/apache/poi/util/ReplacingInputStream;->replacedIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/poi/util/ReplacingInputStream;->unbufferIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
