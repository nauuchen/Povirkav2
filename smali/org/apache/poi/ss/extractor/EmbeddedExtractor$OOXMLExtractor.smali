.class Lorg/apache/poi/ss/extractor/EmbeddedExtractor$OOXMLExtractor;
.super Lorg/apache/poi/ss/extractor/EmbeddedExtractor;
.source "EmbeddedExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/extractor/EmbeddedExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OOXMLExtractor"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 267
    invoke-direct {p0}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;-><init>()V

    return-void
.end method


# virtual methods
.method public canExtract(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Z
    .locals 1
    .param p1, "dn"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 270
    const-string v0, "package"

    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public extract(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/ss/extractor/EmbeddedData;
    .locals 8
    .param p1, "dn"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getStorageClsid()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    .line 279
    .local v0, "clsId":Lorg/apache/poi/hpsf/ClassID;
    sget-object v1, Lorg/apache/poi/hpsf/ClassID;->WORD2007:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    const-string v1, ".docx"

    .line 281
    .local v1, "ext":Ljava/lang/String;
    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    .local v2, "contentType":Ljava/lang/String;
    goto :goto_1

    .line 282
    .end local v1    # "ext":Ljava/lang/String;
    .end local v2    # "contentType":Ljava/lang/String;
    :cond_0
    sget-object v1, Lorg/apache/poi/hpsf/ClassID;->WORD2007_MACRO:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    const-string v1, ".docm"

    .line 284
    .restart local v1    # "ext":Ljava/lang/String;
    const-string v2, "application/vnd.ms-word.document.macroEnabled.12"

    .restart local v2    # "contentType":Ljava/lang/String;
    goto :goto_1

    .line 285
    .end local v1    # "ext":Ljava/lang/String;
    .end local v2    # "contentType":Ljava/lang/String;
    :cond_1
    sget-object v1, Lorg/apache/poi/hpsf/ClassID;->EXCEL2007:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lorg/apache/poi/hpsf/ClassID;->EXCEL2003:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lorg/apache/poi/hpsf/ClassID;->EXCEL2010:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 288
    :cond_2
    sget-object v1, Lorg/apache/poi/hpsf/ClassID;->EXCEL2007_MACRO:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 289
    const-string v1, ".xlsm"

    .line 290
    .restart local v1    # "ext":Ljava/lang/String;
    const-string v2, "application/vnd.ms-excel.sheet.macroEnabled.12"

    .restart local v2    # "contentType":Ljava/lang/String;
    goto :goto_1

    .line 291
    .end local v1    # "ext":Ljava/lang/String;
    .end local v2    # "contentType":Ljava/lang/String;
    :cond_3
    sget-object v1, Lorg/apache/poi/hpsf/ClassID;->EXCEL2007_XLSB:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 292
    const-string v1, ".xlsb"

    .line 293
    .restart local v1    # "ext":Ljava/lang/String;
    const-string v2, "application/vnd.ms-excel.sheet.binary.macroEnabled.12"

    .restart local v2    # "contentType":Ljava/lang/String;
    goto :goto_1

    .line 294
    .end local v1    # "ext":Ljava/lang/String;
    .end local v2    # "contentType":Ljava/lang/String;
    :cond_4
    sget-object v1, Lorg/apache/poi/hpsf/ClassID;->POWERPOINT2007:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 295
    const-string v1, ".pptx"

    .line 296
    .restart local v1    # "ext":Ljava/lang/String;
    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    .restart local v2    # "contentType":Ljava/lang/String;
    goto :goto_1

    .line 297
    .end local v1    # "ext":Ljava/lang/String;
    .end local v2    # "contentType":Ljava/lang/String;
    :cond_5
    sget-object v1, Lorg/apache/poi/hpsf/ClassID;->POWERPOINT2007_MACRO:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 298
    const-string v1, ".ppsm"

    .line 299
    .restart local v1    # "ext":Ljava/lang/String;
    const-string v2, "application/vnd.ms-powerpoint.slideshow.macroEnabled.12"

    .restart local v2    # "contentType":Ljava/lang/String;
    goto :goto_1

    .line 301
    .end local v1    # "ext":Ljava/lang/String;
    .end local v2    # "contentType":Ljava/lang/String;
    :cond_6
    const-string v1, ".zip"

    .line 302
    .restart local v1    # "ext":Ljava/lang/String;
    const-string v2, "application/zip"

    .restart local v2    # "contentType":Ljava/lang/String;
    goto :goto_1

    .line 286
    .end local v1    # "ext":Ljava/lang/String;
    .end local v2    # "contentType":Ljava/lang/String;
    :cond_7
    :goto_0
    const-string v1, ".xlsx"

    .line 287
    .restart local v1    # "ext":Ljava/lang/String;
    const-string v2, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    .line 305
    .restart local v2    # "contentType":Ljava/lang/String;
    :goto_1
    const-string v3, "package"

    invoke-virtual {p1, v3}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v3

    .line 306
    .local v3, "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    invoke-static {v3}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v4

    .line 307
    .local v4, "data":[B
    invoke-virtual {v3}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    .line 309
    new-instance v5, Lorg/apache/poi/ss/extractor/EmbeddedData;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4, v2}, Lorg/apache/poi/ss/extractor/EmbeddedData;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    return-object v5
.end method
