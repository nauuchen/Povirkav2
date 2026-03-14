.class public Lorg/apache/poi/POIXMLPropertiesTextExtractor;
.super Lorg/apache/poi/POIXMLTextExtractor;
.source "POIXMLPropertiesTextExtractor.java"


# instance fields
.field private final dateFormat:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>(Lorg/apache/poi/POIXMLDocument;)V
    .locals 3
    .param p1, "doc"    # Lorg/apache/poi/POIXMLDocument;

    .line 46
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLTextExtractor;-><init>(Lorg/apache/poi/POIXMLDocument;)V

    .line 47
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    .line 48
    .local v0, "dfs":Ljava/text/DateFormatSymbols;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE MMM dd HH:mm:ss zzz yyyy"

    invoke-direct {v1, v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    iput-object v1, p0, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->dateFormat:Ljava/text/DateFormat;

    .line 49
    sget-object v2, Lorg/apache/poi/util/LocaleUtil;->TIMEZONE_UTC:Ljava/util/TimeZone;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/POIXMLTextExtractor;)V
    .locals 1
    .param p1, "otherExtractor"    # Lorg/apache/poi/POIXMLTextExtractor;

    .line 60
    invoke-virtual {p1}, Lorg/apache/poi/POIXMLTextExtractor;->getDocument()Lorg/apache/poi/POIXMLDocument;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;-><init>(Lorg/apache/poi/POIXMLDocument;)V

    .line 61
    return-void
.end method

.method private appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/StringBuffer;
    .param p2, "thing"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 67
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method private appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/StringBuffer;
    .param p2, "thing"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 74
    if-nez p3, :cond_0

    return-void

    .line 75
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string v0, " = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    return-void
.end method

.method private appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Date;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/StringBuffer;
    .param p2, "thing"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/util/Date;

    .line 70
    if-nez p3, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method private appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "text"    # Ljava/lang/StringBuffer;
    .param p2, "thing"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .line 64
    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method


# virtual methods
.method public getCorePropertiesText()Ljava/lang/String;
    .locals 5

    .line 88
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->getDocument()Lorg/apache/poi/POIXMLDocument;

    move-result-object v0

    .line 89
    .local v0, "document":Lorg/apache/poi/POIXMLDocument;
    if-nez v0, :cond_0

    .line 90
    const-string v1, ""

    return-object v1

    .line 93
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 94
    .local v1, "text":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocument;->getProperties()Lorg/apache/poi/POIXMLProperties;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/POIXMLProperties;->getCoreProperties()Lorg/apache/poi/POIXMLProperties$CoreProperties;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/POIXMLProperties$CoreProperties;->getUnderlyingProperties()Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    move-result-object v2

    .line 97
    .local v2, "props":Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getCategoryProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/util/Nullable;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "Category"

    invoke-direct {p0, v1, v4, v3}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getCategoryProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/util/Nullable;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v1, v4, v3}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getContentStatusProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/util/Nullable;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "ContentStatus"

    invoke-direct {p0, v1, v4, v3}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getContentTypeProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/util/Nullable;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "ContentType"

    invoke-direct {p0, v1, v4, v3}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getCreatedProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/util/Nullable;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Date;

    const-string v4, "Created"

    invoke-direct {p0, v1, v4, v3}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Date;)V

    .line 102
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getCreatedPropertyString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CreatedString"

    invoke-direct {p0, v1, v4, v3}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getCreatorProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/util/Nullable;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "Creator"

    invoke-direct {p0, v1, v4, v3}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getDescriptionProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/util/Nullable;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "Description"

    invoke-direct {p0, v1, v4, v3}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getIdentifierProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/util/Nullable;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "Identifier"

    invoke-direct {p0, v1, v4, v3}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getKeywordsProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/util/Nullable;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "Keywords"

    invoke-direct {p0, v1, v4, v3}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getLanguageProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/util/Nullable;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "Language"

    invoke-direct {p0, v1, v4, v3}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getLastModifiedByProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/util/Nullable;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "LastModifiedBy"

    invoke-direct {p0, v1, v4, v3}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getLastPrintedProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/util/Nullable;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Date;

    const-string v4, "LastPrinted"

    invoke-direct {p0, v1, v4, v3}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Date;)V

    .line 110
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getLastPrintedPropertyString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LastPrintedString"

    invoke-direct {p0, v1, v4, v3}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getModifiedProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/util/Nullable;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Date;

    const-string v4, "Modified"

    invoke-direct {p0, v1, v4, v3}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Date;)V

    .line 112
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getModifiedPropertyString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ModifiedString"

    invoke-direct {p0, v1, v4, v3}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getRevisionProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/util/Nullable;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "Revision"

    invoke-direct {p0, v1, v4, v3}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getSubjectProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/util/Nullable;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "Subject"

    invoke-direct {p0, v1, v4, v3}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getTitleProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/util/Nullable;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "Title"

    invoke-direct {p0, v1, v4, v3}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getVersionProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/util/Nullable;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "Version"

    invoke-direct {p0, v1, v4, v3}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getCustomPropertiesText()Ljava/lang/String;
    .locals 10

    .line 161
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->getDocument()Lorg/apache/poi/POIXMLDocument;

    move-result-object v0

    .line 162
    .local v0, "document":Lorg/apache/poi/POIXMLDocument;
    if-nez v0, :cond_0

    .line 163
    const-string v1, ""

    return-object v1

    .line 166
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .local v1, "text":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocument;->getProperties()Lorg/apache/poi/POIXMLProperties;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/POIXMLProperties;->getCustomProperties()Lorg/apache/poi/POIXMLProperties$CustomProperties;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/POIXMLProperties$CustomProperties;->getUnderlyingProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;

    move-result-object v2

    .line 170
    .local v2, "props":Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;
    invoke-interface {v2}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;->getPropertyArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;

    move-result-object v3

    .local v3, "arr$":[Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v4, :cond_14

    aget-object v6, v3, v5

    .line 171
    .local v6, "property":Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;
    const-string v7, "(not implemented!)"

    .line 173
    .local v7, "val":Ljava/lang/String;
    invoke-interface {v6}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetLpwstr()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 174
    invoke-interface {v6}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getLpwstr()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 176
    :cond_1
    invoke-interface {v6}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetLpstr()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 177
    invoke-interface {v6}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getLpstr()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 179
    :cond_2
    invoke-interface {v6}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetDate()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 180
    invoke-interface {v6}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getDate()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 182
    :cond_3
    invoke-interface {v6}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetFiletime()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 183
    invoke-interface {v6}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getFiletime()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 185
    :cond_4
    invoke-interface {v6}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetBool()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 186
    invoke-interface {v6}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getBool()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 190
    :cond_5
    invoke-interface {v6}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetI1()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 191
    invoke-interface {v6}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getI1()B

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 193
    :cond_6
    invoke-interface {v6}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetI2()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 194
    invoke-interface {v6}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getI2()S

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 196
    :cond_7
    invoke-interface {v6}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetI4()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 197
    invoke-interface {v6}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getI4()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 199
    :cond_8
    invoke-interface {v6}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetI8()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 200
    invoke-interface {v6}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getI8()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 202
    :cond_9
    invoke-interface {v6}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetInt()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 203
    invoke-interface {v6}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getInt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 207
    :cond_a
    invoke-interface {v6}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetUi1()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 208
    invoke-interface {v6}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getUi1()S

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 210
    :cond_b
    invoke-interface {v6}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetUi2()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 211
    invoke-interface {v6}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getUi2()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 213
    :cond_c
    invoke-interface {v6}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetUi4()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 214
    invoke-interface {v6}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getUi4()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 216
    :cond_d
    invoke-interface {v6}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetUi8()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 217
    invoke-interface {v6}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getUi8()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 219
    :cond_e
    invoke-interface {v6}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetUint()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 220
    invoke-interface {v6}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getUint()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 224
    :cond_f
    invoke-interface {v6}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetR4()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 225
    invoke-interface {v6}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getR4()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 227
    :cond_10
    invoke-interface {v6}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetR8()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 228
    invoke-interface {v6}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getR8()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 230
    :cond_11
    invoke-interface {v6}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetDecimal()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 231
    invoke-interface {v6}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getDecimal()Ljava/math/BigDecimal;

    move-result-object v8

    .line 232
    .local v8, "d":Ljava/math/BigDecimal;
    if-nez v8, :cond_12

    .line 233
    const/4 v7, 0x0

    goto :goto_1

    .line 235
    :cond_12
    invoke-virtual {v8}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v7

    .line 257
    .end local v8    # "d":Ljava/math/BigDecimal;
    :cond_13
    :goto_1
    invoke-interface {v6}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .end local v6    # "property":Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;
    .end local v7    # "val":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 260
    .end local v3    # "arr$":[Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getExtendedPropertiesText()Ljava/lang/String;
    .locals 5

    .line 127
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->getDocument()Lorg/apache/poi/POIXMLDocument;

    move-result-object v0

    .line 128
    .local v0, "document":Lorg/apache/poi/POIXMLDocument;
    if-nez v0, :cond_0

    .line 129
    const-string v1, ""

    return-object v1

    .line 132
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 134
    .local v1, "text":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocument;->getProperties()Lorg/apache/poi/POIXMLProperties;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/POIXMLProperties;->getExtendedProperties()Lorg/apache/poi/POIXMLProperties$ExtendedProperties;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->getUnderlyingProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v2

    .line 136
    .local v2, "props":Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;
    invoke-interface {v2}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getApplication()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Application"

    invoke-direct {p0, v1, v4, v3}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-interface {v2}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppVersion"

    invoke-direct {p0, v1, v4, v3}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-interface {v2}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getCharacters()I

    move-result v3

    const-string v4, "Characters"

    invoke-direct {p0, v1, v4, v3}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 139
    invoke-interface {v2}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getCharactersWithSpaces()I

    move-result v3

    const-string v4, "CharactersWithSpaces"

    invoke-direct {p0, v1, v4, v3}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 140
    invoke-interface {v2}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getCompany()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Company"

    invoke-direct {p0, v1, v4, v3}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-interface {v2}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getHyperlinkBase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HyperlinkBase"

    invoke-direct {p0, v1, v4, v3}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-interface {v2}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getHyperlinksChanged()Z

    move-result v3

    const-string v4, "HyperlinksChanged"

    invoke-direct {p0, v1, v4, v3}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    .line 143
    invoke-interface {v2}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getLines()I

    move-result v3

    const-string v4, "Lines"

    invoke-direct {p0, v1, v4, v3}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 144
    invoke-interface {v2}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getLinksUpToDate()Z

    move-result v3

    const-string v4, "LinksUpToDate"

    invoke-direct {p0, v1, v4, v3}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    .line 145
    invoke-interface {v2}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getManager()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Manager"

    invoke-direct {p0, v1, v4, v3}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-interface {v2}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getPages()I

    move-result v3

    const-string v4, "Pages"

    invoke-direct {p0, v1, v4, v3}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 147
    invoke-interface {v2}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getParagraphs()I

    move-result v3

    const-string v4, "Paragraphs"

    invoke-direct {p0, v1, v4, v3}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 148
    invoke-interface {v2}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getPresentationFormat()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PresentationFormat"

    invoke-direct {p0, v1, v4, v3}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-interface {v2}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getTemplate()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Template"

    invoke-direct {p0, v1, v4, v3}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-interface {v2}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getTotalTime()I

    move-result v3

    const-string v4, "TotalTime"

    invoke-direct {p0, v1, v4, v3}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic getMetadataTextExtractor()Lorg/apache/poi/POITextExtractor;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->getMetadataTextExtractor()Lorg/apache/poi/POIXMLPropertiesTextExtractor;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataTextExtractor()Lorg/apache/poi/POIXMLPropertiesTextExtractor;
    .locals 2

    .line 277
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You already have the Metadata Text Extractor, not recursing!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .line 266
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->getCorePropertiesText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->getExtendedPropertiesText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;->getCustomPropertiesText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
