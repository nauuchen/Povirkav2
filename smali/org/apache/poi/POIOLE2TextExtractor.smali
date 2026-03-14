.class public abstract Lorg/apache/poi/POIOLE2TextExtractor;
.super Lorg/apache/poi/POITextExtractor;
.source "POIOLE2TextExtractor.java"


# instance fields
.field protected document:Lorg/apache/poi/POIDocument;


# direct methods
.method public constructor <init>(Lorg/apache/poi/POIDocument;)V
    .locals 0
    .param p1, "document"    # Lorg/apache/poi/POIDocument;

    .line 45
    invoke-direct {p0}, Lorg/apache/poi/POITextExtractor;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/apache/poi/POIOLE2TextExtractor;->document:Lorg/apache/poi/POIDocument;

    .line 50
    invoke-virtual {p0, p1}, Lorg/apache/poi/POIOLE2TextExtractor;->setFilesystem(Ljava/io/Closeable;)V

    .line 51
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/POIOLE2TextExtractor;)V
    .locals 1
    .param p1, "otherExtractor"    # Lorg/apache/poi/POIOLE2TextExtractor;

    .line 60
    invoke-direct {p0}, Lorg/apache/poi/POITextExtractor;-><init>()V

    .line 61
    iget-object v0, p1, Lorg/apache/poi/POIOLE2TextExtractor;->document:Lorg/apache/poi/POIDocument;

    iput-object v0, p0, Lorg/apache/poi/POIOLE2TextExtractor;->document:Lorg/apache/poi/POIDocument;

    .line 62
    return-void
.end method


# virtual methods
.method public getDocSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/poi/POIOLE2TextExtractor;->document:Lorg/apache/poi/POIDocument;

    invoke-virtual {v0}, Lorg/apache/poi/POIDocument;->getDocumentSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    move-result-object v0

    return-object v0
.end method

.method public getDocument()Lorg/apache/poi/POIDocument;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/apache/poi/POIOLE2TextExtractor;->document:Lorg/apache/poi/POIDocument;

    return-object v0
.end method

.method public getMetadataTextExtractor()Lorg/apache/poi/POITextExtractor;
    .locals 1

    .line 91
    new-instance v0, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;

    invoke-direct {v0, p0}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;-><init>(Lorg/apache/poi/POIOLE2TextExtractor;)V

    return-object v0
.end method

.method public getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/apache/poi/POIOLE2TextExtractor;->document:Lorg/apache/poi/POIDocument;

    invoke-virtual {v0}, Lorg/apache/poi/POIDocument;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    return-object v0
.end method

.method public getSummaryInformation()Lorg/apache/poi/hpsf/SummaryInformation;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/apache/poi/POIOLE2TextExtractor;->document:Lorg/apache/poi/POIDocument;

    invoke-virtual {v0}, Lorg/apache/poi/POIDocument;->getSummaryInformation()Lorg/apache/poi/hpsf/SummaryInformation;

    move-result-object v0

    return-object v0
.end method
