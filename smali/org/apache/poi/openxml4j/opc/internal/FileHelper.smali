.class public final Lorg/apache/poi/openxml4j/opc/internal/FileHelper;
.super Ljava/lang/Object;
.source "FileHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 10
    .param p0, "in"    # Ljava/io/File;
    .param p1, "out"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 68
    .local v0, "fis":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 69
    .local v1, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    .line 70
    .local v8, "sourceChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    .line 71
    .local v9, "destinationChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    const-wide/16 v3, 0x0

    move-object v2, v8

    move-object v7, v9

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 72
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 73
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->close()V

    .line 74
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 75
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 76
    return-void
.end method

.method public static getDirectory(Ljava/io/File;)Ljava/io/File;
    .locals 6
    .param p0, "f"    # Ljava/io/File;

    .line 42
    if-eqz p0, :cond_1

    .line 43
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "path":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 45
    .local v1, "len":I
    move v2, v1

    .line 46
    .local v2, "num2":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 48
    .local v3, "ch1":C
    sget-char v4, Ljava/io/File;->separatorChar:C

    if-ne v3, v4, :cond_0

    .line 49
    new-instance v4, Ljava/io/File;

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v4

    .line 51
    .end local v3    # "ch1":C
    :cond_0
    goto :goto_0

    .line 53
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "len":I
    .end local v2    # "num2":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getFilename(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .param p0, "file"    # Ljava/io/File;

    .line 82
    if-eqz p0, :cond_1

    .line 83
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "path":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 85
    .local v1, "len":I
    move v2, v1

    .line 86
    .local v2, "num2":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 88
    .local v3, "ch1":C
    sget-char v4, Ljava/io/File;->separatorChar:C

    if-ne v3, v4, :cond_0

    .line 89
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 90
    .end local v3    # "ch1":C
    :cond_0
    goto :goto_0

    .line 92
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "len":I
    .end local v2    # "num2":I
    :cond_1
    const-string v0, ""

    return-object v0
.end method
