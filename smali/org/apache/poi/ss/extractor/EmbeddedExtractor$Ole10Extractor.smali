.class public Lorg/apache/poi/ss/extractor/EmbeddedExtractor$Ole10Extractor;
.super Lorg/apache/poi/ss/extractor/EmbeddedExtractor;
.source "EmbeddedExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/extractor/EmbeddedExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ole10Extractor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 184
    invoke-direct {p0}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;-><init>()V

    return-void
.end method


# virtual methods
.method public canExtract(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Z
    .locals 2
    .param p1, "dn"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 187
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getStorageClsid()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    .line 188
    .local v0, "clsId":Lorg/apache/poi/hpsf/ClassID;
    sget-object v1, Lorg/apache/poi/hpsf/ClassID;->OLE10_PACKAGE:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public extract(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/ss/extractor/EmbeddedData;
    .locals 5
    .param p1, "dn"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    :try_start_0
    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->createFromEmbeddedOleObject(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/poifs/filesystem/Ole10Native;

    move-result-object v0

    .line 196
    .local v0, "ole10":Lorg/apache/poi/poifs/filesystem/Ole10Native;
    new-instance v1, Lorg/apache/poi/ss/extractor/EmbeddedData;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getDataBuffer()[B

    move-result-object v3

    const-string v4, "binary/octet-stream"

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/poi/ss/extractor/EmbeddedData;-><init>(Ljava/lang/String;[BLjava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/poi/poifs/filesystem/Ole10NativeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 197
    .end local v0    # "ole10":Lorg/apache/poi/poifs/filesystem/Ole10Native;
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Lorg/apache/poi/poifs/filesystem/Ole10NativeException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
