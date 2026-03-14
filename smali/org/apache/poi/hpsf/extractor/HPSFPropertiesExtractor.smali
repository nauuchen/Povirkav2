.class public Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;
.super Lorg/apache/poi/POIOLE2TextExtractor;
.source "HPSFPropertiesExtractor.java"


# direct methods
.method public constructor <init>(Lorg/apache/poi/POIDocument;)V
    .locals 0
    .param p1, "doc"    # Lorg/apache/poi/POIDocument;

    .line 47
    invoke-direct {p0, p1}, Lorg/apache/poi/POIOLE2TextExtractor;-><init>(Lorg/apache/poi/POIDocument;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/POIOLE2TextExtractor;)V
    .locals 0
    .param p1, "mainExtractor"    # Lorg/apache/poi/POIOLE2TextExtractor;

    .line 44
    invoke-direct {p0, p1}, Lorg/apache/poi/POIOLE2TextExtractor;-><init>(Lorg/apache/poi/POIOLE2TextExtractor;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 1
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    .line 53
    new-instance v0, Lorg/apache/poi/hpsf/HPSFPropertiesOnlyDocument;

    invoke-direct {v0, p1}, Lorg/apache/poi/hpsf/HPSFPropertiesOnlyDocument;-><init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/POIOLE2TextExtractor;-><init>(Lorg/apache/poi/POIDocument;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 1
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    .line 50
    new-instance v0, Lorg/apache/poi/hpsf/HPSFPropertiesOnlyDocument;

    invoke-direct {v0, p1}, Lorg/apache/poi/hpsf/HPSFPropertiesOnlyDocument;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/POIOLE2TextExtractor;-><init>(Lorg/apache/poi/POIDocument;)V

    .line 51
    return-void
.end method

.method private static getPropertiesText(Lorg/apache/poi/hpsf/PropertySet;)Ljava/lang/String;
    .locals 12
    .param p0, "ps"    # Lorg/apache/poi/hpsf/PropertySet;

    .line 91
    if-nez p0, :cond_0

    .line 93
    const-string v0, ""

    return-object v0

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .local v0, "text":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertySetIDMap()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object v1

    .line 99
    .local v1, "idMap":Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object v2

    .line 100
    .local v2, "props":[Lorg/apache/poi/hpsf/Property;
    move-object v3, v2

    .local v3, "arr$":[Lorg/apache/poi/hpsf/Property;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 101
    .local v6, "prop":Lorg/apache/poi/hpsf/Property;
    invoke-virtual {v6}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 102
    .local v7, "type":Ljava/lang/String;
    if-nez v1, :cond_1

    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 103
    .local v8, "typeObj":Ljava/lang/Object;
    :goto_1
    if-eqz v8, :cond_2

    .line 104
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 107
    :cond_2
    invoke-virtual {v6}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->getPropertyValueText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 108
    .local v9, "val":Ljava/lang/String;
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .end local v6    # "prop":Lorg/apache/poi/hpsf/Property;
    .end local v7    # "type":Ljava/lang/String;
    .end local v8    # "typeObj":Ljava/lang/Object;
    .end local v9    # "val":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 111
    .end local v3    # "arr$":[Lorg/apache/poi/hpsf/Property;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getPropertyValueText(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # Ljava/lang/Object;

    .line 130
    if-nez p0, :cond_0

    const-string v0, "(not set)"

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 147
    .local v3, "file":Ljava/lang/String;
    new-instance v4, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;

    new-instance v5, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;-><init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    .line 150
    .local v4, "ext":Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;
    :try_start_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    invoke-virtual {v4}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->close()V

    .line 153
    nop

    .line 146
    .end local v3    # "file":Ljava/lang/String;
    .end local v4    # "ext":Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    .restart local v3    # "file":Ljava/lang/String;
    .restart local v4    # "ext":Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->close()V

    throw v5

    .line 155
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    .end local v3    # "file":Ljava/lang/String;
    .end local v4    # "ext":Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 137
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getDocumentSummaryInformationText()Ljava/lang/String;
    .locals 8

    .line 57
    iget-object v0, p0, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->document:Lorg/apache/poi/POIDocument;

    if-nez v0, :cond_0

    .line 58
    const-string v0, ""

    return-object v0

    .line 61
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->document:Lorg/apache/poi/POIDocument;

    invoke-virtual {v0}, Lorg/apache/poi/POIDocument;->getDocumentSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    move-result-object v0

    .line 62
    .local v0, "dsi":Lorg/apache/poi/hpsf/DocumentSummaryInformation;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v1, "text":Ljava/lang/StringBuilder;
    invoke-static {v0}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->getPropertiesText(Lorg/apache/poi/hpsf/PropertySet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getCustomProperties()Lorg/apache/poi/hpsf/CustomProperties;

    move-result-object v2

    .line 69
    .local v2, "cps":Lorg/apache/poi/hpsf/CustomProperties;
    :goto_0
    if-eqz v2, :cond_2

    .line 70
    invoke-virtual {v2}, Lorg/apache/poi/hpsf/CustomProperties;->nameSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 71
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v2, v4}, Lorg/apache/poi/hpsf/CustomProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->getPropertyValueText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 72
    .local v5, "val":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "val":Ljava/lang/String;
    goto :goto_1

    .line 77
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getMetadataTextExtractor()Lorg/apache/poi/POITextExtractor;
    .locals 2

    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You already have the Metadata Text Extractor, not recursing!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSummaryInformationText()Ljava/lang/String;
    .locals 2

    .line 80
    iget-object v0, p0, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->document:Lorg/apache/poi/POIDocument;

    if-nez v0, :cond_0

    .line 81
    const-string v0, ""

    return-object v0

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->document:Lorg/apache/poi/POIDocument;

    invoke-virtual {v0}, Lorg/apache/poi/POIDocument;->getSummaryInformation()Lorg/apache/poi/hpsf/SummaryInformation;

    move-result-object v0

    .line 87
    .local v0, "si":Lorg/apache/poi/hpsf/SummaryInformation;
    invoke-static {v0}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->getPropertiesText(Lorg/apache/poi/hpsf/PropertySet;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->getSummaryInformationText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->getDocumentSummaryInformationText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 142
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
