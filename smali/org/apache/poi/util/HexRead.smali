.class public Lorg/apache/poi/util/HexRead;
.super Ljava/lang/Object;
.source "HexRead.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readData(Ljava/io/InputStream;I)[B
    .locals 9
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "eofChar"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "characterCount":I
    const/4 v1, 0x0

    .line 98
    .local v1, "b":B
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v2, "bytes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/16 v3, 0x57

    .line 100
    .local v3, "a":C
    const/16 v4, 0x37

    .line 102
    .local v4, "A":C
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 103
    .local v5, "count":I
    const/4 v6, -0x1

    .line 104
    .local v6, "digitValue":I
    const/4 v7, -0x1

    const/16 v8, 0x30

    if-gt v8, v5, :cond_0

    const/16 v8, 0x39

    if-gt v5, v8, :cond_0

    .line 105
    add-int/lit8 v6, v5, -0x30

    goto :goto_1

    .line 106
    :cond_0
    const/16 v8, 0x41

    if-gt v8, v5, :cond_1

    const/16 v8, 0x46

    if-gt v5, v8, :cond_1

    .line 107
    add-int/lit8 v6, v5, -0x37

    goto :goto_1

    .line 108
    :cond_1
    const/16 v8, 0x61

    if-gt v8, v5, :cond_2

    const/16 v8, 0x66

    if-gt v5, v8, :cond_2

    .line 109
    add-int/lit8 v6, v5, -0x57

    goto :goto_1

    .line 110
    :cond_2
    const/16 v8, 0x23

    if-ne v8, v5, :cond_3

    .line 111
    invoke-static {p0}, Lorg/apache/poi/util/HexRead;->readToEOL(Ljava/io/InputStream;)V

    goto :goto_1

    .line 112
    :cond_3
    if-eq v7, v5, :cond_6

    if-ne p1, v5, :cond_4

    .line 113
    goto :goto_2

    .line 117
    :cond_4
    :goto_1
    if-eq v6, v7, :cond_5

    .line 118
    shl-int/lit8 v7, v1, 0x4

    int-to-byte v1, v7

    .line 119
    int-to-byte v7, v6

    add-int/2addr v7, v1

    int-to-byte v1, v7

    .line 120
    add-int/lit8 v0, v0, 0x1

    .line 121
    const/4 v7, 0x2

    if-ne v0, v7, :cond_5

    .line 122
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    const/4 v0, 0x0

    .line 124
    const/4 v1, 0x0

    .line 127
    .end local v5    # "count":I
    .end local v6    # "digitValue":I
    :cond_5
    goto :goto_0

    .line 128
    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/Byte;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Byte;

    .line 129
    .local v5, "polished":[Ljava/lang/Byte;
    array-length v6, v5

    new-array v6, v6, [B

    .line 130
    .local v6, "rval":[B
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_3
    array-length v8, v5

    if-ge v7, v8, :cond_7

    .line 131
    aget-object v8, v5, v7

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    aput-byte v8, v6, v7

    .line 130
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 133
    .end local v7    # "j":I
    :cond_7
    return-object v6
.end method

.method public static readData(Ljava/io/InputStream;Ljava/lang/String;)[B
    .locals 5
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "section"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 59
    .local v0, "sectionText":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 60
    .local v1, "inSection":Z
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 61
    .local v2, "c":I
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 62
    const/16 v3, 0xa

    if-eq v2, v3, :cond_3

    const/16 v3, 0xd

    if-eq v2, v3, :cond_3

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_2

    const/16 v4, 0x5d

    if-eq v2, v4, :cond_0

    .line 77
    if-eqz v1, :cond_4

    int-to-char v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 72
    :cond_0
    const/4 v1, 0x0

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p0, v3}, Lorg/apache/poi/util/HexRead;->readData(Ljava/io/InputStream;I)[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v3

    .line 74
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v0, v3

    .line 75
    goto :goto_1

    .line 64
    :cond_2
    const/4 v1, 0x1

    .line 65
    goto :goto_1

    .line 68
    :cond_3
    const/4 v1, 0x0

    .line 69
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v0, v3

    .line 70
    nop

    .line 79
    :cond_4
    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    goto :goto_0

    .line 82
    .end local v0    # "sectionText":Ljava/lang/StringBuffer;
    .end local v1    # "inSection":Z
    .end local v2    # "c":I
    :cond_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 83
    nop

    .line 85
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Section \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public static readData(Ljava/lang/String;)[B
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 41
    .local v1, "stream":Ljava/io/InputStream;
    const/4 v2, -0x1

    :try_start_0
    invoke-static {v1, v2}, Lorg/apache/poi/util/HexRead;->readData(Ljava/io/InputStream;I)[B

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v2
.end method

.method public static readData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "section"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/apache/poi/util/HexRead;->readData(Ljava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static readFromString(Ljava/lang/String;)[B
    .locals 2
    .param p0, "data"    # Ljava/lang/String;

    .line 138
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Lorg/apache/poi/util/StringUtil;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lorg/apache/poi/util/HexRead;->readData(Ljava/io/InputStream;I)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static readToEOL(Ljava/io/InputStream;)V
    .locals 2
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 146
    .local v0, "c":I
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    .line 147
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    .line 149
    :cond_0
    return-void
.end method
