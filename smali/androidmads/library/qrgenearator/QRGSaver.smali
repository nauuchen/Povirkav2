.class public Landroidmads/library/qrgenearator/QRGSaver;
.super Ljava/lang/Object;
.source "QRGSaver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private compressFormat(I)Ljava/lang/Comparable;
    .locals 1
    .param p1, "imageFormat"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Comparable<",
            "+",
            "Ljava/lang/Comparable<",
            "+",
            "Ljava/lang/Comparable<",
            "*>;>;>;"
        }
    .end annotation

    .line 46
    sget v0, Landroidmads/library/qrgenearator/QRGContents$ImageType;->IMAGE_PNG:I

    if-ne p1, v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    .line 47
    :cond_0
    sget v0, Landroidmads/library/qrgenearator/QRGContents$ImageType;->IMAGE_WEBP:I

    if-ne p1, v0, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 46
    :goto_0
    return-object v0
.end method

.method private imgFormat(I)Ljava/lang/String;
    .locals 1
    .param p1, "imageFormat"    # I

    .line 42
    sget v0, Landroidmads/library/qrgenearator/QRGContents$ImageType;->IMAGE_PNG:I

    if-ne p1, v0, :cond_0

    const-string v0, ".png"

    goto :goto_0

    :cond_0
    const-string v0, ".jpg"

    :goto_0
    return-object v0
.end method


# virtual methods
.method public save(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1, "saveLocation"    # Ljava/lang/String;
    .param p2, "imageName"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .line 38
    sget v0, Landroidmads/library/qrgenearator/QRGContents$ImageType;->IMAGE_PNG:I

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidmads/library/qrgenearator/QRGSaver;->save(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)Z

    move-result v0

    return v0
.end method

.method public save(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)Z
    .locals 7
    .param p1, "saveLocation"    # Ljava/lang/String;
    .param p2, "imageName"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "imageFormat"    # I

    .line 15
    const/4 v0, 0x0

    .line 16
    .local v0, "success":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p4}, Landroidmads/library/qrgenearator/QRGSaver;->imgFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18
    .local v1, "imageDetail":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v4, "QRGSaver"

    if-nez v3, :cond_0

    .line 20
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    goto :goto_0

    .line 22
    :cond_0
    const-string v3, "Folder Exists"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :goto_0
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 26
    .local v3, "outStream":Ljava/io/FileOutputStream;
    invoke-direct {p0, p4}, Landroidmads/library/qrgenearator/QRGSaver;->compressFormat(I)Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p3, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 27
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 28
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    const/4 v0, 0x1

    .line 32
    goto :goto_1

    .line 30
    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 31
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    return v0
.end method
