.class public Lorg/apache/poi/ss/extractor/EmbeddedData;
.super Ljava/lang/Object;
.source "EmbeddedData.java"


# instance fields
.field private contentType:Ljava/lang/String;

.field private embeddedData:[B

.field private filename:Ljava/lang/String;

.field private shape:Lorg/apache/poi/ss/usermodel/Shape;


# direct methods
.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "embeddedData"    # [B
    .param p3, "contentType"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "binary/octet-stream"

    iput-object v0, p0, Lorg/apache/poi/ss/extractor/EmbeddedData;->contentType:Ljava/lang/String;

    .line 32
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/extractor/EmbeddedData;->setFilename(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, p2}, Lorg/apache/poi/ss/extractor/EmbeddedData;->setEmbeddedData([B)V

    .line 34
    invoke-virtual {p0, p3}, Lorg/apache/poi/ss/extractor/EmbeddedData;->setContentType(Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/apache/poi/ss/extractor/EmbeddedData;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getEmbeddedData()[B
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/apache/poi/ss/extractor/EmbeddedData;->embeddedData:[B

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/apache/poi/ss/extractor/EmbeddedData;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getShape()Lorg/apache/poi/ss/usermodel/Shape;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/apache/poi/ss/extractor/EmbeddedData;->shape:Lorg/apache/poi/ss/usermodel/Shape;

    return-object v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .line 102
    iput-object p1, p0, Lorg/apache/poi/ss/extractor/EmbeddedData;->contentType:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setEmbeddedData([B)V
    .locals 1
    .param p1, "embeddedData"    # [B

    .line 70
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/ss/extractor/EmbeddedData;->embeddedData:[B

    .line 71
    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .line 50
    if-nez p1, :cond_0

    .line 51
    const-string/jumbo v0, "unknown.bin"

    iput-object v0, p0, Lorg/apache/poi/ss/extractor/EmbeddedData;->filename:Ljava/lang/String;

    goto :goto_0

    .line 53
    :cond_0
    const-string v0, "[^/\\\\]*[/\\\\]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/extractor/EmbeddedData;->filename:Ljava/lang/String;

    .line 55
    :goto_0
    return-void
.end method

.method public setShape(Lorg/apache/poi/ss/usermodel/Shape;)V
    .locals 0
    .param p1, "shape"    # Lorg/apache/poi/ss/usermodel/Shape;

    .line 86
    iput-object p1, p0, Lorg/apache/poi/ss/extractor/EmbeddedData;->shape:Lorg/apache/poi/ss/usermodel/Shape;

    .line 87
    return-void
.end method
