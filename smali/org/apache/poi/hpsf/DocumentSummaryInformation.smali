.class public Lorg/apache/poi/hpsf/DocumentSummaryInformation;
.super Lorg/apache/poi/hpsf/SpecialPropertySet;
.source "DocumentSummaryInformation.java"


# static fields
.field public static final DEFAULT_STREAM_NAME:Ljava/lang/String; = "\u0005DocumentSummaryInformation"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 53
    invoke-direct {p0}, Lorg/apache/poi/hpsf/SpecialPropertySet;-><init>()V

    .line 54
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->DOCUMENT_SUMMARY_INFORMATION_ID:[Lorg/apache/poi/hpsf/ClassID;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/poi/hpsf/Section;->setFormatID(Lorg/apache/poi/hpsf/ClassID;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/NoPropertySetStreamException;,
            Lorg/apache/poi/hpsf/MarkUnsupportedException;,
            Ljava/io/IOException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1}, Lorg/apache/poi/hpsf/SpecialPropertySet;-><init>(Ljava/io/InputStream;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hpsf/PropertySet;)V
    .locals 3
    .param p1, "ps"    # Lorg/apache/poi/hpsf/PropertySet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/UnexpectedPropertySetTypeException;
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1}, Lorg/apache/poi/hpsf/SpecialPropertySet;-><init>(Lorg/apache/poi/hpsf/PropertySet;)V

    .line 70
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->isDocumentSummaryInformation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    return-void

    .line 71
    :cond_0
    new-instance v0, Lorg/apache/poi/hpsf/UnexpectedPropertySetTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/UnexpectedPropertySetTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureSection2()V
    .locals 3

    .line 813
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getSectionCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 814
    new-instance v0, Lorg/apache/poi/hpsf/MutableSection;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/MutableSection;-><init>()V

    .line 815
    .local v0, "s2":Lorg/apache/poi/hpsf/Section;
    sget-object v1, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->DOCUMENT_SUMMARY_INFORMATION_ID:[Lorg/apache/poi/hpsf/ClassID;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/poi/hpsf/Section;->setFormatID(Lorg/apache/poi/hpsf/ClassID;)V

    .line 816
    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->addSection(Lorg/apache/poi/hpsf/Section;)V

    .line 818
    .end local v0    # "s2":Lorg/apache/poi/hpsf/Section;
    :cond_0
    return-void
.end method

.method private notYetImplemented(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 846
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not yet implemented."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getApplicationVersion()I
    .locals 1

    .line 591
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getPropertyIntValue(I)I

    move-result v0

    return v0
.end method

.method public getByteCount()I
    .locals 1

    .line 164
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getPropertyIntValue(I)I

    move-result v0

    return v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 108
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCharCountWithSpaces()I
    .locals 1

    .line 532
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getPropertyIntValue(I)I

    move-result v0

    return v0
.end method

.method public getCompany()Ljava/lang/String;
    .locals 1

    .line 478
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentStatus()Ljava/lang/String;
    .locals 1

    .line 677
    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 651
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomProperties()Lorg/apache/poi/hpsf/CustomProperties;
    .locals 14

    .line 756
    const/4 v0, 0x0

    .line 757
    .local v0, "cps":Lorg/apache/poi/hpsf/CustomProperties;
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getSectionCount()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    .line 758
    new-instance v1, Lorg/apache/poi/hpsf/CustomProperties;

    invoke-direct {v1}, Lorg/apache/poi/hpsf/CustomProperties;-><init>()V

    move-object v0, v1

    .line 759
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getSections()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hpsf/Section;

    .line 760
    .local v1, "section":Lorg/apache/poi/hpsf/Section;
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/Section;->getDictionary()Ljava/util/Map;

    move-result-object v2

    .line 761
    .local v2, "dictionary":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/Section;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object v3

    .line 762
    .local v3, "properties":[Lorg/apache/poi/hpsf/Property;
    const/4 v4, 0x0

    .line 763
    .local v4, "propertyCount":I
    move-object v5, v3

    .local v5, "arr$":[Lorg/apache/poi/hpsf/Property;
    array-length v6, v5

    .local v6, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 764
    .local v8, "p":Lorg/apache/poi/hpsf/Property;
    invoke-virtual {v8}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v9

    .line 765
    .local v9, "id":J
    const-wide/16 v11, 0x1

    cmp-long v13, v9, v11

    if-nez v13, :cond_0

    .line 766
    invoke-virtual {v8}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v0, v11}, Lorg/apache/poi/hpsf/CustomProperties;->setCodepage(I)V

    goto :goto_1

    .line 767
    :cond_0
    cmp-long v13, v9, v11

    if-lez v13, :cond_1

    .line 768
    add-int/lit8 v4, v4, 0x1

    .line 769
    new-instance v11, Lorg/apache/poi/hpsf/CustomProperty;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-direct {v11, v8, v12}, Lorg/apache/poi/hpsf/CustomProperty;-><init>(Lorg/apache/poi/hpsf/Property;Ljava/lang/String;)V

    .line 770
    .local v11, "cp":Lorg/apache/poi/hpsf/CustomProperty;
    invoke-virtual {v11}, Lorg/apache/poi/hpsf/CustomProperty;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12, v11}, Lorg/apache/poi/hpsf/CustomProperties;->put(Ljava/lang/String;Lorg/apache/poi/hpsf/CustomProperty;)Lorg/apache/poi/hpsf/CustomProperty;

    .line 763
    .end local v8    # "p":Lorg/apache/poi/hpsf/Property;
    .end local v9    # "id":J
    .end local v11    # "cp":Lorg/apache/poi/hpsf/CustomProperty;
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 773
    .end local v5    # "arr$":[Lorg/apache/poi/hpsf/Property;
    .end local v6    # "len$":I
    .end local v7    # "i$":I
    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/CustomProperties;->size()I

    move-result v5

    if-eq v5, v4, :cond_3

    .line 774
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lorg/apache/poi/hpsf/CustomProperties;->setPure(Z)V

    .line 777
    .end local v1    # "section":Lorg/apache/poi/hpsf/Section;
    .end local v2    # "dictionary":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v3    # "properties":[Lorg/apache/poi/hpsf/Property;
    .end local v4    # "propertyCount":I
    :cond_3
    return-object v0
.end method

.method public getDocparts()[B
    .locals 1

    .line 421
    const-string v0, "Reading byte arrays"

    invoke-direct {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->notYetImplemented(Ljava/lang/String;)V

    .line 422
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getDocumentVersion()Ljava/lang/String;
    .locals 1

    .line 730
    const/16 v0, 0x1d

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeadingPair()[B
    .locals 1

    .line 391
    const-string v0, "Reading byte arrays "

    invoke-direct {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->notYetImplemented(Ljava/lang/String;)V

    .line 392
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getHiddenCount()I
    .locals 1

    .line 305
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getPropertyIntValue(I)I

    move-result v0

    return v0
.end method

.method public getHyperlinksChanged()Z
    .locals 1

    .line 560
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getPropertyBooleanValue(I)Z

    move-result v0

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 703
    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineCount()I
    .locals 1

    .line 192
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getPropertyIntValue(I)I

    move-result v0

    return v0
.end method

.method public getLinksDirty()Z
    .locals 1

    .line 504
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getPropertyBooleanValue(I)Z

    move-result v0

    return v0
.end method

.method public getMMClipCount()I
    .locals 1

    .line 334
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getPropertyIntValue(I)I

    move-result v0

    return v0
.end method

.method public getManager()Ljava/lang/String;
    .locals 1

    .line 451
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNoteCount()I
    .locals 1

    .line 276
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getPropertyIntValue(I)I

    move-result v0

    return v0
.end method

.method public getParCount()I
    .locals 1

    .line 220
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getPropertyIntValue(I)I

    move-result v0

    return v0
.end method

.method public getPresentationFormat()Ljava/lang/String;
    .locals 1

    .line 136
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPropertySetIDMap()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    .locals 1

    .line 46
    invoke-static {}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->getDocumentSummaryInformationProperties()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object v0

    return-object v0
.end method

.method public getScale()Z
    .locals 1

    .line 362
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getPropertyBooleanValue(I)Z

    move-result v0

    return v0
.end method

.method public getSlideCount()I
    .locals 1

    .line 248
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getPropertyIntValue(I)I

    move-result v0

    return v0
.end method

.method public getVBADigitalSignature()[B
    .locals 2

    .line 620
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    .line 621
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    .line 622
    move-object v1, v0

    check-cast v1, [B

    check-cast v1, [B

    return-object v1

    .line 624
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public removeApplicationVersion()V
    .locals 2

    .line 609
    const-wide/16 v0, 0x17

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->remove1stProperty(J)V

    .line 610
    return-void
.end method

.method public removeByteCount()V
    .locals 2

    .line 180
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->remove1stProperty(J)V

    .line 181
    return-void
.end method

.method public removeCategory()V
    .locals 2

    .line 124
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->remove1stProperty(J)V

    .line 125
    return-void
.end method

.method public removeCharCountWithSpaces()V
    .locals 2

    .line 548
    const-wide/16 v0, 0x11

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->remove1stProperty(J)V

    .line 549
    return-void
.end method

.method public removeCompany()V
    .locals 2

    .line 494
    const-wide/16 v0, 0xf

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->remove1stProperty(J)V

    .line 495
    return-void
.end method

.method public removeContentStatus()V
    .locals 2

    .line 693
    const-wide/16 v0, 0x1b

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->remove1stProperty(J)V

    .line 694
    return-void
.end method

.method public removeContentType()V
    .locals 2

    .line 667
    const-wide/16 v0, 0x1a

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->remove1stProperty(J)V

    .line 668
    return-void
.end method

.method public removeCustomProperties()V
    .locals 6

    .line 824
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getSectionCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 828
    new-instance v0, Ljava/util/LinkedList;

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getSections()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 829
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hpsf/Section;>;"
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->clearSections()V

    .line 830
    const/4 v1, 0x0

    .line 831
    .local v1, "idx":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hpsf/Section;

    .line 832
    .local v3, "s":Lorg/apache/poi/hpsf/Section;
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "idx":I
    .local v4, "idx":I
    const/4 v5, 0x1

    if-eq v1, v5, :cond_0

    .line 833
    invoke-virtual {p0, v3}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->addSection(Lorg/apache/poi/hpsf/Section;)V

    .end local v3    # "s":Lorg/apache/poi/hpsf/Section;
    :cond_0
    move v1, v4

    goto :goto_0

    .line 836
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "idx":I
    .restart local v1    # "idx":I
    :cond_1
    return-void

    .line 825
    .end local v0    # "l":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hpsf/Section;>;"
    .end local v1    # "idx":I
    :cond_2
    new-instance v0, Lorg/apache/poi/hpsf/HPSFRuntimeException;

    const-string v1, "Illegal internal format of Document SummaryInformation stream: second section is missing."

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeDocparts()V
    .locals 2

    .line 440
    const-wide/16 v0, 0xd

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->remove1stProperty(J)V

    .line 441
    return-void
.end method

.method public removeDocumentVersion()V
    .locals 2

    .line 746
    const-wide/16 v0, 0x1d

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->remove1stProperty(J)V

    .line 747
    return-void
.end method

.method public removeHeadingPair()V
    .locals 2

    .line 408
    const-wide/16 v0, 0xc

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->remove1stProperty(J)V

    .line 409
    return-void
.end method

.method public removeHiddenCount()V
    .locals 2

    .line 321
    const-wide/16 v0, 0x9

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->remove1stProperty(J)V

    .line 322
    return-void
.end method

.method public removeHyperlinksChanged()V
    .locals 2

    .line 578
    const-wide/16 v0, 0x16

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->remove1stProperty(J)V

    .line 579
    return-void
.end method

.method public removeLanguage()V
    .locals 2

    .line 719
    const-wide/16 v0, 0x1c

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->remove1stProperty(J)V

    .line 720
    return-void
.end method

.method public removeLineCount()V
    .locals 2

    .line 208
    const-wide/16 v0, 0x5

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->remove1stProperty(J)V

    .line 209
    return-void
.end method

.method public removeLinksDirty()V
    .locals 2

    .line 520
    const-wide/16 v0, 0x10

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->remove1stProperty(J)V

    .line 521
    return-void
.end method

.method public removeMMClipCount()V
    .locals 2

    .line 350
    const-wide/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->remove1stProperty(J)V

    .line 351
    return-void
.end method

.method public removeManager()V
    .locals 2

    .line 467
    const-wide/16 v0, 0xe

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->remove1stProperty(J)V

    .line 468
    return-void
.end method

.method public removeNoteCount()V
    .locals 2

    .line 292
    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->remove1stProperty(J)V

    .line 293
    return-void
.end method

.method public removeParCount()V
    .locals 2

    .line 236
    const-wide/16 v0, 0x6

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->remove1stProperty(J)V

    .line 237
    return-void
.end method

.method public removePresentationFormat()V
    .locals 2

    .line 152
    const-wide/16 v0, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->remove1stProperty(J)V

    .line 153
    return-void
.end method

.method public removeScale()V
    .locals 2

    .line 378
    const-wide/16 v0, 0xb

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->remove1stProperty(J)V

    .line 379
    return-void
.end method

.method public removeSlideCount()V
    .locals 2

    .line 264
    const-wide/16 v0, 0x7

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->remove1stProperty(J)V

    .line 265
    return-void
.end method

.method public removeVBADigitalSignature()V
    .locals 2

    .line 641
    const-wide/16 v0, 0x18

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->remove1stProperty(J)V

    .line 642
    return-void
.end method

.method public setApplicationVersion(I)V
    .locals 2
    .param p1, "version"    # I

    .line 602
    const-wide/16 v0, 0x17

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->set1stProperty(JI)V

    .line 603
    return-void
.end method

.method public setByteCount(I)V
    .locals 2
    .param p1, "byteCount"    # I

    .line 173
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->set1stProperty(JI)V

    .line 174
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 2
    .param p1, "category"    # Ljava/lang/String;

    .line 117
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/hpsf/Section;->setProperty(ILjava/lang/String;)V

    .line 118
    return-void
.end method

.method public setCharCountWithSpaces(I)V
    .locals 2
    .param p1, "count"    # I

    .line 541
    const-wide/16 v0, 0x11

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->set1stProperty(JI)V

    .line 542
    return-void
.end method

.method public setCompany(Ljava/lang/String;)V
    .locals 2
    .param p1, "company"    # Ljava/lang/String;

    .line 487
    const-wide/16 v0, 0xf

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->set1stProperty(JLjava/lang/String;)V

    .line 488
    return-void
.end method

.method public setContentStatus(Ljava/lang/String;)V
    .locals 2
    .param p1, "status"    # Ljava/lang/String;

    .line 686
    const-wide/16 v0, 0x1b

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->set1stProperty(JLjava/lang/String;)V

    .line 687
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .line 660
    const-wide/16 v0, 0x1a

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->set1stProperty(JLjava/lang/String;)V

    .line 661
    return-void
.end method

.method public setCustomProperties(Lorg/apache/poi/hpsf/CustomProperties;)V
    .locals 5
    .param p1, "customProperties"    # Lorg/apache/poi/hpsf/CustomProperties;

    .line 786
    invoke-direct {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->ensureSection2()V

    .line 787
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getSections()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/Section;

    .line 788
    .local v0, "section":Lorg/apache/poi/hpsf/Section;
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/CustomProperties;->getDictionary()Ljava/util/Map;

    move-result-object v1

    .line 794
    .local v1, "dictionary":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/CustomProperties;->getCodepage()I

    move-result v2

    .line 795
    .local v2, "cpCodepage":I
    if-gez v2, :cond_0

    .line 796
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/Section;->getCodepage()I

    move-result v2

    .line 798
    :cond_0
    if-gez v2, :cond_1

    .line 799
    const/16 v2, 0x4e4

    .line 801
    :cond_1
    invoke-virtual {p1, v2}, Lorg/apache/poi/hpsf/CustomProperties;->setCodepage(I)V

    .line 802
    invoke-virtual {v0, v2}, Lorg/apache/poi/hpsf/Section;->setCodepage(I)V

    .line 803
    invoke-virtual {v0, v1}, Lorg/apache/poi/hpsf/Section;->setDictionary(Ljava/util/Map;)V

    .line 804
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/CustomProperties;->properties()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hpsf/CustomProperty;

    .line 805
    .local v4, "p":Lorg/apache/poi/hpsf/CustomProperty;
    invoke-virtual {v0, v4}, Lorg/apache/poi/hpsf/Section;->setProperty(Lorg/apache/poi/hpsf/Property;)V

    .end local v4    # "p":Lorg/apache/poi/hpsf/CustomProperty;
    goto :goto_0

    .line 807
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public setDocparts([B)V
    .locals 1
    .param p1, "docparts"    # [B

    .line 433
    const-string v0, "Writing byte arrays"

    invoke-direct {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->notYetImplemented(Ljava/lang/String;)V

    .line 434
    return-void
.end method

.method public setDocumentVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "version"    # Ljava/lang/String;

    .line 739
    const-wide/16 v0, 0x1d

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->set1stProperty(JLjava/lang/String;)V

    .line 740
    return-void
.end method

.method public setHeadingPair([B)V
    .locals 1
    .param p1, "headingPair"    # [B

    .line 401
    const-string v0, "Writing byte arrays "

    invoke-direct {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->notYetImplemented(Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method public setHiddenCount(I)V
    .locals 2
    .param p1, "hiddenCount"    # I

    .line 314
    const-wide/16 v0, 0x9

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->set1stProperty(JI)V

    .line 315
    return-void
.end method

.method public setHyperlinksChanged(Z)V
    .locals 2
    .param p1, "changed"    # Z

    .line 570
    const-wide/16 v0, 0x16

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->set1stProperty(JZ)V

    .line 571
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;

    .line 712
    const-wide/16 v0, 0x1c

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->set1stProperty(JLjava/lang/String;)V

    .line 713
    return-void
.end method

.method public setLineCount(I)V
    .locals 2
    .param p1, "lineCount"    # I

    .line 201
    const-wide/16 v0, 0x5

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->set1stProperty(JI)V

    .line 202
    return-void
.end method

.method public setLinksDirty(Z)V
    .locals 2
    .param p1, "linksDirty"    # Z

    .line 513
    const-wide/16 v0, 0x10

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->set1stProperty(JZ)V

    .line 514
    return-void
.end method

.method public setMMClipCount(I)V
    .locals 2
    .param p1, "mmClipCount"    # I

    .line 343
    const-wide/16 v0, 0xa

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->set1stProperty(JI)V

    .line 344
    return-void
.end method

.method public setManager(Ljava/lang/String;)V
    .locals 2
    .param p1, "manager"    # Ljava/lang/String;

    .line 460
    const-wide/16 v0, 0xe

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->set1stProperty(JLjava/lang/String;)V

    .line 461
    return-void
.end method

.method public setNoteCount(I)V
    .locals 2
    .param p1, "noteCount"    # I

    .line 285
    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->set1stProperty(JI)V

    .line 286
    return-void
.end method

.method public setParCount(I)V
    .locals 2
    .param p1, "parCount"    # I

    .line 229
    const-wide/16 v0, 0x6

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->set1stProperty(JI)V

    .line 230
    return-void
.end method

.method public setPresentationFormat(Ljava/lang/String;)V
    .locals 2
    .param p1, "presentationFormat"    # Ljava/lang/String;

    .line 145
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/hpsf/Section;->setProperty(ILjava/lang/String;)V

    .line 146
    return-void
.end method

.method public setScale(Z)V
    .locals 2
    .param p1, "scale"    # Z

    .line 371
    const-wide/16 v0, 0xb

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->set1stProperty(JZ)V

    .line 372
    return-void
.end method

.method public setSlideCount(I)V
    .locals 2
    .param p1, "slideCount"    # I

    .line 257
    const-wide/16 v0, 0x7

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->set1stProperty(JI)V

    .line 258
    return-void
.end method

.method public setVBADigitalSignature([B)V
    .locals 2
    .param p1, "signature"    # [B

    .line 634
    const-wide/16 v0, 0x18

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->set1stProperty(J[B)V

    .line 635
    return-void
.end method
