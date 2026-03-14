.class Lorg/apache/poi/ss/extractor/EmbeddedExtractor$PdfExtractor;
.super Lorg/apache/poi/ss/extractor/EmbeddedExtractor;
.source "EmbeddedExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/extractor/EmbeddedExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PdfExtractor"
.end annotation


# static fields
.field static PdfClassID:Lorg/apache/poi/hpsf/ClassID;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 204
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string/jumbo v1, "{B801CA65-A1FC-11D0-85AD-444553540000}"

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$PdfExtractor;->PdfClassID:Lorg/apache/poi/hpsf/ClassID;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 203
    invoke-direct {p0}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;-><init>()V

    return-void
.end method


# virtual methods
.method public canExtract(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Z
    .locals 2
    .param p1, "dn"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 207
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getStorageClsid()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    .line 208
    .local v0, "clsId":Lorg/apache/poi/hpsf/ClassID;
    sget-object v1, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$PdfExtractor;->PdfClassID:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CONTENTS"

    invoke-virtual {p1, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public canExtract(Lorg/apache/poi/ss/usermodel/Picture;)Z
    .locals 3
    .param p1, "source"    # Lorg/apache/poi/ss/usermodel/Picture;

    .line 223
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Picture;->getPictureData()Lorg/apache/poi/ss/usermodel/PictureData;

    move-result-object v0

    .line 224
    .local v0, "pd":Lorg/apache/poi/ss/usermodel/PictureData;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/PictureData;->getPictureType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public extract(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/ss/extractor/EmbeddedData;
    .locals 6
    .param p1, "dn"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 215
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const-string v1, "CONTENTS"

    invoke-virtual {p1, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v1

    .line 216
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v1, v0}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 217
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 218
    new-instance v2, Lorg/apache/poi/ss/extractor/EmbeddedData;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".pdf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const-string v5, "application/pdf"

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/poi/ss/extractor/EmbeddedData;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    return-object v2
.end method

.method protected extract(Lorg/apache/poi/ss/usermodel/Picture;)Lorg/apache/poi/ss/extractor/EmbeddedData;
    .locals 9
    .param p1, "source"    # Lorg/apache/poi/ss/usermodel/Picture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Picture;->getPictureData()Lorg/apache/poi/ss/usermodel/PictureData;

    move-result-object v0

    .line 238
    .local v0, "pd":Lorg/apache/poi/ss/usermodel/PictureData;
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/PictureData;->getPictureType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 243
    :cond_0
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/PictureData;->getData()[B

    move-result-object v2

    .line 244
    .local v2, "pictureBytes":[B
    sget-object v3, Lorg/apache/poi/util/LocaleUtil;->CHARSET_1252:Ljava/nio/charset/Charset;

    const-string v4, "%PDF-"

    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->access$000([BI[B)I

    move-result v3

    .line 245
    .local v3, "idxStart":I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    .line 246
    return-object v1

    .line 249
    :cond_1
    sget-object v6, Lorg/apache/poi/util/LocaleUtil;->CHARSET_1252:Ljava/nio/charset/Charset;

    const-string v7, "%%EOF"

    invoke-virtual {v7, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-static {v2, v3, v6}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->access$000([BI[B)I

    move-result v6

    .line 250
    .local v6, "idxEnd":I
    if-ne v6, v5, :cond_2

    .line 251
    return-object v1

    .line 254
    :cond_2
    sub-int v1, v6, v3

    add-int/lit8 v1, v1, 0x6

    .line 255
    .local v1, "pictureBytesLen":I
    new-array v5, v1, [B

    .line 256
    .local v5, "pdfBytes":[B
    invoke-static {v2, v3, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Picture;->getShapeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 258
    .local v4, "filename":Ljava/lang/String;
    const-string v7, ".pdf"

    invoke-static {v4, v7}, Lorg/apache/poi/util/StringUtil;->endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 259
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 261
    :cond_3
    new-instance v7, Lorg/apache/poi/ss/extractor/EmbeddedData;

    const-string v8, "application/pdf"

    invoke-direct {v7, v4, v5, v8}, Lorg/apache/poi/ss/extractor/EmbeddedData;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    return-object v7

    .line 239
    .end local v1    # "pictureBytesLen":I
    .end local v2    # "pictureBytes":[B
    .end local v3    # "idxStart":I
    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "pdfBytes":[B
    .end local v6    # "idxEnd":I
    :cond_4
    :goto_0
    return-object v1
.end method
