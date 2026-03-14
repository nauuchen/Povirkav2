.class public final Lorg/apache/poi/hpsf/SummaryInformation;
.super Lorg/apache/poi/hpsf/SpecialPropertySet;
.source "SummaryInformation.java"


# static fields
.field public static final DEFAULT_STREAM_NAME:Ljava/lang/String; = "\u0005SummaryInformation"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Lorg/apache/poi/hpsf/SpecialPropertySet;-><init>()V

    .line 49
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->SUMMARY_INFORMATION_ID:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hpsf/Section;->setFormatID(Lorg/apache/poi/hpsf/ClassID;)V

    .line 50
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

    .line 92
    invoke-direct {p0, p1}, Lorg/apache/poi/hpsf/SpecialPropertySet;-><init>(Ljava/io/InputStream;)V

    .line 93
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

    .line 62
    invoke-direct {p0, p1}, Lorg/apache/poi/hpsf/SpecialPropertySet;-><init>(Lorg/apache/poi/hpsf/PropertySet;)V

    .line 63
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->isSummaryInformation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    return-void

    .line 64
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


# virtual methods
.method public getApplicationName()Ljava/lang/String;
    .locals 1

    .line 629
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 162
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCharCount()I
    .locals 1

    .line 548
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getPropertyIntValue(I)I

    move-result v0

    return v0
.end method

.method public getComments()Ljava/lang/String;
    .locals 1

    .line 224
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreateDateTime()Ljava/util/Date;
    .locals 1

    .line 417
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getEditTime()J
    .locals 3

    .line 350
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 351
    .local v0, "d":Ljava/util/Date;
    if-nez v0, :cond_0

    .line 352
    const-wide/16 v1, 0x0

    return-wide v1

    .line 354
    :cond_0
    invoke-static {v0}, Lorg/apache/poi/hpsf/Filetime;->dateToFileTime(Ljava/util/Date;)J

    move-result-wide v1

    return-wide v1
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .line 193
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastAuthor()Ljava/lang/String;
    .locals 1

    .line 286
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastPrinted()Ljava/util/Date;
    .locals 1

    .line 386
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getLastSaveDateTime()Ljava/util/Date;
    .locals 1

    .line 448
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    .line 484
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getPropertyIntValue(I)I

    move-result v0

    return v0
.end method

.method public getPropertySetIDMap()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    .locals 1

    .line 42
    invoke-static {}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->getSummaryInformationProperties()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object v0

    return-object v0
.end method

.method public getRevNumber()Ljava/lang/String;
    .locals 1

    .line 317
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecurity()I
    .locals 1

    .line 677
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getPropertyIntValue(I)I

    move-result v0

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 131
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTemplate()Ljava/lang/String;
    .locals 1

    .line 255
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnail()[B
    .locals 1

    .line 585
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getThumbnailThumbnail()Lorg/apache/poi/hpsf/Thumbnail;
    .locals 2

    .line 596
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getThumbnail()[B

    move-result-object v0

    .line 597
    .local v0, "data":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 598
    :cond_0
    new-instance v1, Lorg/apache/poi/hpsf/Thumbnail;

    invoke-direct {v1, v0}, Lorg/apache/poi/hpsf/Thumbnail;-><init>([B)V

    return-object v1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 100
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWordCount()I
    .locals 1

    .line 516
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getPropertyIntValue(I)I

    move-result v0

    return v0
.end method

.method public removeApplicationName()V
    .locals 2

    .line 649
    const-wide/16 v0, 0x12

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/SummaryInformation;->remove1stProperty(J)V

    .line 650
    return-void
.end method

.method public removeAuthor()V
    .locals 2

    .line 182
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/SummaryInformation;->remove1stProperty(J)V

    .line 183
    return-void
.end method

.method public removeCharCount()V
    .locals 2

    .line 568
    const-wide/16 v0, 0x10

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/SummaryInformation;->remove1stProperty(J)V

    .line 569
    return-void
.end method

.method public removeComments()V
    .locals 2

    .line 244
    const-wide/16 v0, 0x6

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/SummaryInformation;->remove1stProperty(J)V

    .line 245
    return-void
.end method

.method public removeCreateDateTime()V
    .locals 2

    .line 437
    const-wide/16 v0, 0xc

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/SummaryInformation;->remove1stProperty(J)V

    .line 438
    return-void
.end method

.method public removeEditTime()V
    .locals 2

    .line 375
    const-wide/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/SummaryInformation;->remove1stProperty(J)V

    .line 376
    return-void
.end method

.method public removeKeywords()V
    .locals 2

    .line 213
    const-wide/16 v0, 0x5

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/SummaryInformation;->remove1stProperty(J)V

    .line 214
    return-void
.end method

.method public removeLastAuthor()V
    .locals 2

    .line 306
    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/SummaryInformation;->remove1stProperty(J)V

    .line 307
    return-void
.end method

.method public removeLastPrinted()V
    .locals 2

    .line 406
    const-wide/16 v0, 0xb

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/SummaryInformation;->remove1stProperty(J)V

    .line 407
    return-void
.end method

.method public removeLastSaveDateTime()V
    .locals 2

    .line 471
    const-wide/16 v0, 0xd

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/SummaryInformation;->remove1stProperty(J)V

    .line 472
    return-void
.end method

.method public removePageCount()V
    .locals 2

    .line 504
    const-wide/16 v0, 0xe

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/SummaryInformation;->remove1stProperty(J)V

    .line 505
    return-void
.end method

.method public removeRevNumber()V
    .locals 2

    .line 337
    const-wide/16 v0, 0x9

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/SummaryInformation;->remove1stProperty(J)V

    .line 338
    return-void
.end method

.method public removeSecurity()V
    .locals 2

    .line 697
    const-wide/16 v0, 0x13

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/SummaryInformation;->remove1stProperty(J)V

    .line 698
    return-void
.end method

.method public removeSubject()V
    .locals 2

    .line 151
    const-wide/16 v0, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/SummaryInformation;->remove1stProperty(J)V

    .line 152
    return-void
.end method

.method public removeTemplate()V
    .locals 2

    .line 275
    const-wide/16 v0, 0x7

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/SummaryInformation;->remove1stProperty(J)V

    .line 276
    return-void
.end method

.method public removeThumbnail()V
    .locals 2

    .line 618
    const-wide/16 v0, 0x11

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/SummaryInformation;->remove1stProperty(J)V

    .line 619
    return-void
.end method

.method public removeTitle()V
    .locals 2

    .line 120
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/SummaryInformation;->remove1stProperty(J)V

    .line 121
    return-void
.end method

.method public removeWordCount()V
    .locals 2

    .line 536
    const-wide/16 v0, 0xf

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/SummaryInformation;->remove1stProperty(J)V

    .line 537
    return-void
.end method

.method public setApplicationName(Ljava/lang/String;)V
    .locals 2
    .param p1, "applicationName"    # Ljava/lang/String;

    .line 640
    const-wide/16 v0, 0x12

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/SummaryInformation;->set1stProperty(JLjava/lang/String;)V

    .line 641
    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 2
    .param p1, "author"    # Ljava/lang/String;

    .line 173
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/SummaryInformation;->set1stProperty(JLjava/lang/String;)V

    .line 174
    return-void
.end method

.method public setCharCount(I)V
    .locals 2
    .param p1, "charCount"    # I

    .line 559
    const-wide/16 v0, 0x10

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/SummaryInformation;->set1stProperty(JI)V

    .line 560
    return-void
.end method

.method public setComments(Ljava/lang/String;)V
    .locals 2
    .param p1, "comments"    # Ljava/lang/String;

    .line 235
    const-wide/16 v0, 0x6

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/SummaryInformation;->set1stProperty(JLjava/lang/String;)V

    .line 236
    return-void
.end method

.method public setCreateDateTime(Ljava/util/Date;)V
    .locals 4
    .param p1, "createDateTime"    # Ljava/util/Date;

    .line 428
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    const/16 v1, 0xc

    const-wide/16 v2, 0x40

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/apache/poi/hpsf/Section;->setProperty(IJLjava/lang/Object;)V

    .line 429
    return-void
.end method

.method public setEditTime(J)V
    .locals 5
    .param p1, "time"    # J

    .line 365
    invoke-static {p1, p2}, Lorg/apache/poi/hpsf/Filetime;->filetimeToDate(J)Ljava/util/Date;

    move-result-object v0

    .line 366
    .local v0, "d":Ljava/util/Date;
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v1

    const/16 v2, 0xa

    const-wide/16 v3, 0x40

    invoke-virtual {v1, v2, v3, v4, v0}, Lorg/apache/poi/hpsf/Section;->setProperty(IJLjava/lang/Object;)V

    .line 367
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 2
    .param p1, "keywords"    # Ljava/lang/String;

    .line 204
    const-wide/16 v0, 0x5

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/SummaryInformation;->set1stProperty(JLjava/lang/String;)V

    .line 205
    return-void
.end method

.method public setLastAuthor(Ljava/lang/String;)V
    .locals 2
    .param p1, "lastAuthor"    # Ljava/lang/String;

    .line 297
    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/SummaryInformation;->set1stProperty(JLjava/lang/String;)V

    .line 298
    return-void
.end method

.method public setLastPrinted(Ljava/util/Date;)V
    .locals 4
    .param p1, "lastPrinted"    # Ljava/util/Date;

    .line 397
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    const/16 v1, 0xb

    const-wide/16 v2, 0x40

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/apache/poi/hpsf/Section;->setProperty(IJLjava/lang/Object;)V

    .line 398
    return-void
.end method

.method public setLastSaveDateTime(Ljava/util/Date;)V
    .locals 4
    .param p1, "time"    # Ljava/util/Date;

    .line 459
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    .line 460
    .local v0, "s":Lorg/apache/poi/hpsf/Section;
    const/16 v1, 0xd

    const-wide/16 v2, 0x40

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/apache/poi/hpsf/Section;->setProperty(IJLjava/lang/Object;)V

    .line 463
    return-void
.end method

.method public setPageCount(I)V
    .locals 2
    .param p1, "pageCount"    # I

    .line 495
    const-wide/16 v0, 0xe

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/SummaryInformation;->set1stProperty(JI)V

    .line 496
    return-void
.end method

.method public setRevNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "revNumber"    # Ljava/lang/String;

    .line 328
    const-wide/16 v0, 0x9

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/SummaryInformation;->set1stProperty(JLjava/lang/String;)V

    .line 329
    return-void
.end method

.method public setSecurity(I)V
    .locals 2
    .param p1, "security"    # I

    .line 688
    const-wide/16 v0, 0x13

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/SummaryInformation;->set1stProperty(JI)V

    .line 689
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 2
    .param p1, "subject"    # Ljava/lang/String;

    .line 142
    const-wide/16 v0, 0x3

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/SummaryInformation;->set1stProperty(JLjava/lang/String;)V

    .line 143
    return-void
.end method

.method public setTemplate(Ljava/lang/String;)V
    .locals 2
    .param p1, "template"    # Ljava/lang/String;

    .line 266
    const-wide/16 v0, 0x7

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/SummaryInformation;->set1stProperty(JLjava/lang/String;)V

    .line 267
    return-void
.end method

.method public setThumbnail([B)V
    .locals 4
    .param p1, "thumbnail"    # [B

    .line 609
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    const/16 v1, 0x11

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/apache/poi/hpsf/Section;->setProperty(IJLjava/lang/Object;)V

    .line 610
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .line 111
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/SummaryInformation;->set1stProperty(JLjava/lang/String;)V

    .line 112
    return-void
.end method

.method public setWordCount(I)V
    .locals 2
    .param p1, "wordCount"    # I

    .line 527
    const-wide/16 v0, 0xf

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/SummaryInformation;->set1stProperty(JI)V

    .line 528
    return-void
.end method
