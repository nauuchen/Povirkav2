.class public Lorg/apache/poi/ss/extractor/EmbeddedExtractor;
.super Ljava/lang/Object;
.source "EmbeddedExtractor.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/extractor/EmbeddedExtractor$FsExtractor;,
        Lorg/apache/poi/ss/extractor/EmbeddedExtractor$BiffExtractor;,
        Lorg/apache/poi/ss/extractor/EmbeddedExtractor$OOXMLExtractor;,
        Lorg/apache/poi/ss/extractor/EmbeddedExtractor$PdfExtractor;,
        Lorg/apache/poi/ss/extractor/EmbeddedExtractor$Ole10Extractor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/poi/ss/extractor/EmbeddedExtractor;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CONTENT_TYPE_BYTES:Ljava/lang/String; = "binary/octet-stream"

.field private static final CONTENT_TYPE_DOC:Ljava/lang/String; = "application/msword"

.field private static final CONTENT_TYPE_PDF:Ljava/lang/String; = "application/pdf"

.field private static final CONTENT_TYPE_XLS:Ljava/lang/String; = "application/vnd.ms-excel"

.field private static final LOG:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    nop

    .line 59
    const-class v0, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    return-void
.end method

.method static synthetic access$000([BI[B)I
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # I
    .param p2, "x2"    # [B

    .line 58
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->indexOf([BI[B)I

    move-result v0

    return v0
.end method

.method private static computeFailure([B)[I
    .locals 5
    .param p0, "pattern"    # [B

    .line 411
    array-length v0, p0

    new-array v0, v0, [I

    .line 413
    .local v0, "failure":[I
    const/4 v1, 0x0

    .line 414
    .local v1, "j":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 415
    :goto_1
    if-lez v1, :cond_0

    aget-byte v3, p0, v1

    aget-byte v4, p0, v2

    if-eq v3, v4, :cond_0

    .line 416
    add-int/lit8 v3, v1, -0x1

    aget v1, v0, v3

    goto :goto_1

    .line 418
    :cond_0
    aget-byte v3, p0, v1

    aget-byte v4, p0, v2

    if-ne v3, v4, :cond_1

    .line 419
    add-int/lit8 v1, v1, 0x1

    .line 421
    :cond_1
    aput v1, v0, v2

    .line 414
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 424
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method protected static copyNodes(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 5
    .param p0, "src"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .param p1, "dest"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/filesystem/Entry;

    .line 364
    .local v1, "e":Lorg/apache/poi/poifs/filesystem/Entry;
    instance-of v2, v1, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    if-eqz v2, :cond_0

    .line 365
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 366
    .local v2, "srcDir":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDirectory(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 367
    .local v3, "destDir":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getStorageClsid()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V

    .line 368
    invoke-static {v2, v3}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->copyNodes(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 369
    .end local v2    # "srcDir":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .end local v3    # "destDir":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    goto :goto_1

    .line 370
    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v2

    .line 372
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-interface {v1}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 375
    nop

    .line 376
    .end local v1    # "e":Lorg/apache/poi/poifs/filesystem/Entry;
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_1
    goto :goto_0

    .line 374
    .restart local v1    # "e":Lorg/apache/poi/poifs/filesystem/Entry;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v3

    .line 378
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "e":Lorg/apache/poi/poifs/filesystem/Entry;
    .end local v2    # "is":Ljava/io/InputStream;
    :cond_1
    return-void
.end method

.method private static indexOf([BI[B)I
    .locals 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "pattern"    # [B

    .line 387
    invoke-static {p2}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->computeFailure([B)[I

    move-result-object v0

    .line 389
    .local v0, "failure":[I
    const/4 v1, 0x0

    .line 390
    .local v1, "j":I
    array-length v2, p0

    const/4 v3, -0x1

    if-nez v2, :cond_0

    .line 391
    return v3

    .line 394
    :cond_0
    move v2, p1

    .local v2, "i":I
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_4

    .line 395
    :goto_1
    if-lez v1, :cond_1

    aget-byte v4, p2, v1

    aget-byte v5, p0, v2

    if-eq v4, v5, :cond_1

    .line 396
    add-int/lit8 v4, v1, -0x1

    aget v1, v0, v4

    goto :goto_1

    .line 398
    :cond_1
    aget-byte v4, p2, v1

    aget-byte v5, p0, v2

    if-ne v4, v5, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 399
    :cond_2
    array-length v4, p2

    if-ne v1, v4, :cond_3

    .line 400
    array-length v3, p2

    sub-int v3, v2, v3

    add-int/lit8 v3, v3, 0x1

    return v3

    .line 394
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 403
    .end local v2    # "i":I
    :cond_4
    return v3
.end method


# virtual methods
.method public canExtract(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Z
    .locals 1
    .param p1, "source"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public canExtract(Lorg/apache/poi/ss/usermodel/Picture;)Z
    .locals 1
    .param p1, "source"    # Lorg/apache/poi/ss/usermodel/Picture;

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method protected extract(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/ss/extractor/EmbeddedData;
    .locals 6
    .param p1, "dn"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->canExtract(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x4e20

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 168
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>()V

    .line 170
    .local v1, "dest":Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->copyNodes(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 172
    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->writeFilesystem(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V

    .line 175
    nop

    .line 177
    new-instance v2, Lorg/apache/poi/ss/extractor/EmbeddedData;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const-string v5, "binary/octet-stream"

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/poi/ss/extractor/EmbeddedData;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    return-object v2

    .line 174
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V

    throw v2

    .line 166
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "dest":Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected extract(Lorg/apache/poi/ss/usermodel/Picture;)Lorg/apache/poi/ss/extractor/EmbeddedData;
    .locals 1
    .param p1, "source"    # Lorg/apache/poi/ss/usermodel/Picture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method public extractAll(Lorg/apache/poi/ss/usermodel/Sheet;)Ljava/util/List;
    .locals 2
    .param p1, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/Sheet;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/extractor/EmbeddedData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getDrawingPatriarch()Lorg/apache/poi/ss/usermodel/Drawing;

    move-result-object v0

    .line 98
    .local v0, "patriarch":Lorg/apache/poi/ss/usermodel/Drawing;, "Lorg/apache/poi/ss/usermodel/Drawing<*>;"
    if-nez v0, :cond_0

    .line 99
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 101
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v1, "embeddings":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/extractor/EmbeddedData;>;"
    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->extractAll(Lorg/apache/poi/ss/usermodel/ShapeContainer;Ljava/util/List;)V

    .line 103
    return-object v1
.end method

.method protected extractAll(Lorg/apache/poi/ss/usermodel/ShapeContainer;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/ShapeContainer<",
            "*>;",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/extractor/EmbeddedData;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    .local p1, "parent":Lorg/apache/poi/ss/usermodel/ShapeContainer;, "Lorg/apache/poi/ss/usermodel/ShapeContainer<*>;"
    .local p2, "embeddings":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/extractor/EmbeddedData;>;"
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/ShapeContainer;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/usermodel/Shape;

    .line 108
    .local v1, "shape":Lorg/apache/poi/ss/usermodel/Shape;
    const/4 v2, 0x0

    .line 109
    .local v2, "data":Lorg/apache/poi/ss/extractor/EmbeddedData;
    instance-of v3, v1, Lorg/apache/poi/ss/usermodel/ObjectData;

    if-eqz v3, :cond_2

    .line 110
    move-object v3, v1

    check-cast v3, Lorg/apache/poi/ss/usermodel/ObjectData;

    .line 112
    .local v3, "od":Lorg/apache/poi/ss/usermodel/ObjectData;
    :try_start_0
    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/ObjectData;->hasDirectoryEntry()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/ObjectData;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {p0, v4}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->extractOne(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/ss/extractor/EmbeddedData;

    move-result-object v4

    move-object v2, v4

    goto :goto_1

    .line 115
    :cond_0
    const-string v4, "binary/octet-stream"

    .line 116
    .local v4, "contentType":Ljava/lang/String;
    instance-of v5, v3, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;

    if-eqz v5, :cond_1

    .line 117
    move-object v5, v3

    check-cast v5, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;

    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->getObjectPart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 119
    :cond_1
    new-instance v5, Lorg/apache/poi/ss/extractor/EmbeddedData;

    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/ObjectData;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/ObjectData;->getObjectData()[B

    move-result-object v7

    invoke-direct {v5, v6, v7, v4}, Lorg/apache/poi/ss/extractor/EmbeddedData;-><init>(Ljava/lang/String;[BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    .line 123
    .end local v4    # "contentType":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 121
    :catch_0
    move-exception v4

    .line 122
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v6, 0x5

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "Entry not found / readable - ignoring OLE embedding"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    invoke-virtual {v5, v6, v7}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 124
    .end local v3    # "od":Lorg/apache/poi/ss/usermodel/ObjectData;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_3

    :cond_2
    instance-of v3, v1, Lorg/apache/poi/ss/usermodel/Picture;

    if-eqz v3, :cond_3

    .line 125
    move-object v3, v1

    check-cast v3, Lorg/apache/poi/ss/usermodel/Picture;

    invoke-virtual {p0, v3}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->extractOne(Lorg/apache/poi/ss/usermodel/Picture;)Lorg/apache/poi/ss/extractor/EmbeddedData;

    move-result-object v2

    goto :goto_3

    .line 126
    :cond_3
    instance-of v3, v1, Lorg/apache/poi/ss/usermodel/ShapeContainer;

    if-eqz v3, :cond_4

    .line 127
    move-object v3, v1

    check-cast v3, Lorg/apache/poi/ss/usermodel/ShapeContainer;

    invoke-virtual {p0, v3, p2}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->extractAll(Lorg/apache/poi/ss/usermodel/ShapeContainer;Ljava/util/List;)V

    .line 130
    :cond_4
    :goto_3
    if-nez v2, :cond_5

    .line 131
    goto :goto_0

    .line 134
    :cond_5
    invoke-virtual {v2, v1}, Lorg/apache/poi/ss/extractor/EmbeddedData;->setShape(Lorg/apache/poi/ss/usermodel/Shape;)V

    .line 135
    invoke-virtual {v2}, Lorg/apache/poi/ss/extractor/EmbeddedData;->getFilename()Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "filename":Ljava/lang/String;
    if-eqz v3, :cond_7

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_7
    :goto_4
    const-string v4, ".bin"

    .line 139
    .local v4, "extension":Ljava/lang/String;
    :goto_5
    const-string v5, ""

    if-eqz v3, :cond_8

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "MBD"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "Root Entry"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 140
    :cond_8
    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Shape;->getShapeName()Ljava/lang/String;

    move-result-object v3

    .line 141
    if-eqz v3, :cond_9

    .line 142
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 146
    :cond_9
    if-eqz v3, :cond_a

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 147
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "picture_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 149
    :cond_b
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 150
    invoke-virtual {v2, v3}, Lorg/apache/poi/ss/extractor/EmbeddedData;->setFilename(Ljava/lang/String;)V

    .line 152
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v1    # "shape":Lorg/apache/poi/ss/usermodel/Shape;
    .end local v2    # "data":Lorg/apache/poi/ss/extractor/EmbeddedData;
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "extension":Ljava/lang/String;
    goto/16 :goto_0

    .line 154
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_c
    return-void
.end method

.method public extractOne(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/ss/extractor/EmbeddedData;
    .locals 3
    .param p1, "src"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;

    .line 80
    .local v1, "ee":Lorg/apache/poi/ss/extractor/EmbeddedExtractor;
    invoke-virtual {v1, p1}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->canExtract(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    invoke-virtual {v1, p1}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->extract(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/ss/extractor/EmbeddedData;

    move-result-object v2

    return-object v2

    .end local v1    # "ee":Lorg/apache/poi/ss/extractor/EmbeddedExtractor;
    :cond_0
    goto :goto_0

    .line 84
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public extractOne(Lorg/apache/poi/ss/usermodel/Picture;)Lorg/apache/poi/ss/extractor/EmbeddedData;
    .locals 3
    .param p1, "src"    # Lorg/apache/poi/ss/usermodel/Picture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;

    .line 89
    .local v1, "ee":Lorg/apache/poi/ss/extractor/EmbeddedExtractor;
    invoke-virtual {v1, p1}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->canExtract(Lorg/apache/poi/ss/usermodel/Picture;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {v1, p1}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->extract(Lorg/apache/poi/ss/usermodel/Picture;)Lorg/apache/poi/ss/extractor/EmbeddedData;

    move-result-object v2

    return-object v2

    .end local v1    # "ee":Lorg/apache/poi/ss/extractor/EmbeddedExtractor;
    :cond_0
    goto :goto_0

    .line 93
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/extractor/EmbeddedExtractor;",
            ">;"
        }
    .end annotation

    .line 72
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/apache/poi/ss/extractor/EmbeddedExtractor;

    new-instance v1, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$Ole10Extractor;

    invoke-direct {v1}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$Ole10Extractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$PdfExtractor;

    invoke-direct {v1}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$PdfExtractor;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$BiffExtractor;

    invoke-direct {v1}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$BiffExtractor;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$OOXMLExtractor;

    invoke-direct {v1}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$OOXMLExtractor;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$FsExtractor;

    invoke-direct {v1}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$FsExtractor;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 75
    .local v0, "ee":[Lorg/apache/poi/ss/extractor/EmbeddedExtractor;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method
