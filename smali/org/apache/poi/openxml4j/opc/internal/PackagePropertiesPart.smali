.class public final Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;
.super Lorg/apache/poi/openxml4j/opc/PackagePart;
.source "PackagePropertiesPart.java"

# interfaces
.implements Lorg/apache/poi/openxml4j/opc/PackageProperties;


# static fields
.field private static final DATE_FORMATS:[Ljava/lang/String;

.field private static final DEFAULT_DATEFORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

.field public static final NAMESPACE_CP_URI:Ljava/lang/String; = "http://schemas.openxmlformats.org/package/2006/metadata/core-properties"

.field public static final NAMESPACE_DCTERMS_URI:Ljava/lang/String; = "http://purl.org/dc/terms/"

.field public static final NAMESPACE_DC_URI:Ljava/lang/String; = "http://purl.org/dc/elements/1.1/"


# instance fields
.field private final TIME_ZONE_PAT:Ljava/util/regex/Pattern;

.field private final TZ_DATE_FORMATS:[Ljava/lang/String;

.field protected category:Lorg/apache/poi/openxml4j/util/Nullable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected contentStatus:Lorg/apache/poi/openxml4j/util/Nullable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected contentType:Lorg/apache/poi/openxml4j/util/Nullable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected created:Lorg/apache/poi/openxml4j/util/Nullable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field protected creator:Lorg/apache/poi/openxml4j/util/Nullable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected description:Lorg/apache/poi/openxml4j/util/Nullable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected identifier:Lorg/apache/poi/openxml4j/util/Nullable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected keywords:Lorg/apache/poi/openxml4j/util/Nullable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected language:Lorg/apache/poi/openxml4j/util/Nullable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected lastModifiedBy:Lorg/apache/poi/openxml4j/util/Nullable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected lastPrinted:Lorg/apache/poi/openxml4j/util/Nullable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field protected modified:Lorg/apache/poi/openxml4j/util/Nullable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field protected revision:Lorg/apache/poi/openxml4j/util/Nullable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected subject:Lorg/apache/poi/openxml4j/util/Nullable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected title:Lorg/apache/poi/openxml4j/util/Nullable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected version:Lorg/apache/poi/openxml4j/util/Nullable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    const-string/jumbo v0, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SS\'Z\'"

    const-string/jumbo v2, "yyyy-MM-dd"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->DATE_FORMATS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePartName;)V
    .locals 4
    .param p1, "pack"    # Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .param p2, "partName"    # Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation

    .line 87
    const-string v0, "application/vnd.openxmlformats-package.core-properties+xml"

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)V

    .line 67
    const-string/jumbo v0, "yyyy-MM-dd\'T\'HH:mm:ssz"

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.Sz"

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSz"

    const-string/jumbo v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSSz"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->TZ_DATE_FORMATS:[Ljava/lang/String;

    .line 74
    const-string v0, "([-+]\\d\\d):?(\\d\\d)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->TIME_ZONE_PAT:Ljava/util/regex/Pattern;

    .line 98
    new-instance v0, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {v0}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->category:Lorg/apache/poi/openxml4j/util/Nullable;

    .line 106
    new-instance v0, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {v0}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->contentStatus:Lorg/apache/poi/openxml4j/util/Nullable;

    .line 116
    new-instance v0, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {v0}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->contentType:Lorg/apache/poi/openxml4j/util/Nullable;

    .line 121
    new-instance v0, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {v0}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->created:Lorg/apache/poi/openxml4j/util/Nullable;

    .line 126
    new-instance v0, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {v0}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->creator:Lorg/apache/poi/openxml4j/util/Nullable;

    .line 135
    new-instance v0, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {v0}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->description:Lorg/apache/poi/openxml4j/util/Nullable;

    .line 140
    new-instance v0, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {v0}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->identifier:Lorg/apache/poi/openxml4j/util/Nullable;

    .line 147
    new-instance v0, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {v0}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->keywords:Lorg/apache/poi/openxml4j/util/Nullable;

    .line 155
    new-instance v0, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {v0}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->language:Lorg/apache/poi/openxml4j/util/Nullable;

    .line 164
    new-instance v0, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {v0}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->lastModifiedBy:Lorg/apache/poi/openxml4j/util/Nullable;

    .line 169
    new-instance v0, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {v0}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->lastPrinted:Lorg/apache/poi/openxml4j/util/Nullable;

    .line 174
    new-instance v0, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {v0}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->modified:Lorg/apache/poi/openxml4j/util/Nullable;

    .line 182
    new-instance v0, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {v0}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->revision:Lorg/apache/poi/openxml4j/util/Nullable;

    .line 187
    new-instance v0, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {v0}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->subject:Lorg/apache/poi/openxml4j/util/Nullable;

    .line 192
    new-instance v0, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {v0}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->title:Lorg/apache/poi/openxml4j/util/Nullable;

    .line 197
    new-instance v0, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {v0}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->version:Lorg/apache/poi/openxml4j/util/Nullable;

    .line 88
    return-void
.end method

.method private getDateValue(Lorg/apache/poi/openxml4j/util/Nullable;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/util/Date;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 633
    .local p1, "d":Lorg/apache/poi/openxml4j/util/Nullable;, "Lorg/apache/poi/openxml4j/util/Nullable<Ljava/util/Date;>;"
    const-string v0, ""

    if-nez p1, :cond_0

    .line 634
    return-object v0

    .line 636
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/util/Nullable;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    .line 637
    .local v1, "date":Ljava/util/Date;
    if-nez v1, :cond_1

    .line 638
    return-object v0

    .line 641
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v3, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 642
    .local v0, "df":Ljava/text/SimpleDateFormat;
    sget-object v2, Lorg/apache/poi/util/LocaleUtil;->TIMEZONE_UTC:Ljava/util/TimeZone;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 643
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private setDateValue(Ljava/lang/String;)Lorg/apache/poi/openxml4j/util/Nullable;
    .locals 10
    .param p1, "dateStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation

    .line 582
    if-eqz p1, :cond_9

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 586
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->TIME_ZONE_PAT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 587
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 590
    .local v1, "dateTzStr":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->TZ_DATE_FORMATS:[Ljava/lang/String;

    .local v3, "arr$":[Ljava/lang/String;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 591
    .local v6, "fStr":Ljava/lang/String;
    new-instance v7, Ljava/text/SimpleDateFormat;

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v7, v6, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 592
    .local v7, "df":Ljava/text/SimpleDateFormat;
    sget-object v8, Lorg/apache/poi/util/LocaleUtil;->TIMEZONE_UTC:Ljava/util/TimeZone;

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 593
    new-instance v8, Ljava/text/ParsePosition;

    invoke-direct {v8, v2}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v7, v1, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v8

    .line 594
    .local v8, "d":Ljava/util/Date;
    if-eqz v8, :cond_1

    .line 595
    new-instance v2, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {v2, v8}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>(Ljava/lang/Object;)V

    return-object v2

    .line 590
    .end local v6    # "fStr":Ljava/lang/String;
    .end local v7    # "df":Ljava/text/SimpleDateFormat;
    .end local v8    # "d":Ljava/util/Date;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 599
    .end local v1    # "dateTzStr":Ljava/lang/String;
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_2
    const-string v1, "Z"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v1, p1

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 600
    .restart local v1    # "dateTzStr":Ljava/lang/String;
    :goto_1
    sget-object v3, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->DATE_FORMATS:[Ljava/lang/String;

    .restart local v3    # "arr$":[Ljava/lang/String;
    array-length v4, v3

    .restart local v4    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_2
    if-ge v5, v4, :cond_5

    aget-object v6, v3, v5

    .line 601
    .restart local v6    # "fStr":Ljava/lang/String;
    new-instance v7, Ljava/text/SimpleDateFormat;

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v7, v6, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 602
    .restart local v7    # "df":Ljava/text/SimpleDateFormat;
    sget-object v8, Lorg/apache/poi/util/LocaleUtil;->TIMEZONE_UTC:Ljava/util/TimeZone;

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 603
    new-instance v8, Ljava/text/ParsePosition;

    invoke-direct {v8, v2}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v7, v1, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v8

    .line 604
    .restart local v8    # "d":Ljava/util/Date;
    if-eqz v8, :cond_4

    .line 605
    new-instance v2, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {v2, v8}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>(Ljava/lang/Object;)V

    return-object v2

    .line 600
    .end local v6    # "fStr":Ljava/lang/String;
    .end local v7    # "df":Ljava/text/SimpleDateFormat;
    .end local v8    # "d":Ljava/util/Date;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 609
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 610
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 611
    .local v3, "i":I
    iget-object v4, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->TZ_DATE_FORMATS:[Ljava/lang/String;

    .local v4, "arr$":[Ljava/lang/String;
    array-length v5, v4

    .local v5, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_3
    const-string v7, ", "

    if-ge v6, v5, :cond_7

    aget-object v8, v4, v6

    .line 612
    .local v8, "fStr":Ljava/lang/String;
    add-int/lit8 v9, v3, 0x1

    .end local v3    # "i":I
    .local v9, "i":I
    if-lez v3, :cond_6

    .line 613
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    :cond_6
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    .end local v8    # "fStr":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    move v3, v9

    goto :goto_3

    .line 617
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    .end local v9    # "i":I
    .restart local v3    # "i":I
    :cond_7
    sget-object v4, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->DATE_FORMATS:[Ljava/lang/String;

    .restart local v4    # "arr$":[Ljava/lang/String;
    array-length v5, v4

    .restart local v5    # "len$":I
    const/4 v6, 0x0

    .restart local v6    # "i$":I
    :goto_4
    if-ge v6, v5, :cond_8

    aget-object v8, v4, v6

    .line 618
    .restart local v8    # "fStr":Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    .end local v8    # "fStr":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 620
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_8
    new-instance v4, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Date "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not well formatted, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "expected format in: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 583
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "dateTzStr":Ljava/lang/String;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "i":I
    :cond_9
    :goto_5
    new-instance v0, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {v0}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>()V

    return-object v0
.end method

.method private setStringValue(Ljava/lang/String;)Lorg/apache/poi/openxml4j/util/Nullable;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 569
    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 572
    :cond_0
    new-instance v0, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {v0, p1}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 570
    :cond_1
    :goto_0
    new-instance v0, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {v0}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>()V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 670
    return-void
.end method

.method public flush()V
    .locals 0

    .line 675
    return-void
.end method

.method public getCategoryProperty()Lorg/apache/poi/openxml4j/util/Nullable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->category:Lorg/apache/poi/openxml4j/util/Nullable;

    return-object v0
.end method

.method public getContentStatusProperty()Lorg/apache/poi/openxml4j/util/Nullable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->contentStatus:Lorg/apache/poi/openxml4j/util/Nullable;

    return-object v0
.end method

.method public getContentTypeProperty()Lorg/apache/poi/openxml4j/util/Nullable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->contentType:Lorg/apache/poi/openxml4j/util/Nullable;

    return-object v0
.end method

.method public getCreatedProperty()Lorg/apache/poi/openxml4j/util/Nullable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->created:Lorg/apache/poi/openxml4j/util/Nullable;

    return-object v0
.end method

.method public getCreatedPropertyString()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->created:Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getDateValue(Lorg/apache/poi/openxml4j/util/Nullable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreatorProperty()Lorg/apache/poi/openxml4j/util/Nullable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->creator:Lorg/apache/poi/openxml4j/util/Nullable;

    return-object v0
.end method

.method public getDescriptionProperty()Lorg/apache/poi/openxml4j/util/Nullable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->description:Lorg/apache/poi/openxml4j/util/Nullable;

    return-object v0
.end method

.method public getIdentifierProperty()Lorg/apache/poi/openxml4j/util/Nullable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->identifier:Lorg/apache/poi/openxml4j/util/Nullable;

    return-object v0
.end method

.method protected getInputStreamImpl()Ljava/io/InputStream;
    .locals 2

    .line 648
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v1, "Operation not authorized. This part may only be manipulated using the getters and setters on PackagePropertiesPart"

    invoke-direct {v0, v1}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getKeywordsProperty()Lorg/apache/poi/openxml4j/util/Nullable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->keywords:Lorg/apache/poi/openxml4j/util/Nullable;

    return-object v0
.end method

.method public getLanguageProperty()Lorg/apache/poi/openxml4j/util/Nullable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->language:Lorg/apache/poi/openxml4j/util/Nullable;

    return-object v0
.end method

.method public getLastModifiedByProperty()Lorg/apache/poi/openxml4j/util/Nullable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->lastModifiedBy:Lorg/apache/poi/openxml4j/util/Nullable;

    return-object v0
.end method

.method public getLastPrintedProperty()Lorg/apache/poi/openxml4j/util/Nullable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->lastPrinted:Lorg/apache/poi/openxml4j/util/Nullable;

    return-object v0
.end method

.method public getLastPrintedPropertyString()Ljava/lang/String;
    .locals 1

    .line 317
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->lastPrinted:Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getDateValue(Lorg/apache/poi/openxml4j/util/Nullable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModifiedProperty()Lorg/apache/poi/openxml4j/util/Nullable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->modified:Lorg/apache/poi/openxml4j/util/Nullable;

    return-object v0
.end method

.method public getModifiedPropertyString()Ljava/lang/String;
    .locals 2

    .line 335
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->modified:Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/util/Nullable;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->modified:Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getDateValue(Lorg/apache/poi/openxml4j/util/Nullable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 338
    :cond_0
    new-instance v0, Lorg/apache/poi/openxml4j/util/Nullable;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getDateValue(Lorg/apache/poi/openxml4j/util/Nullable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getOutputStreamImpl()Ljava/io/OutputStream;
    .locals 2

    .line 653
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v1, "Can\'t use output stream to set properties !"

    invoke-direct {v0, v1}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRevisionProperty()Lorg/apache/poi/openxml4j/util/Nullable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->revision:Lorg/apache/poi/openxml4j/util/Nullable;

    return-object v0
.end method

.method public getSubjectProperty()Lorg/apache/poi/openxml4j/util/Nullable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->subject:Lorg/apache/poi/openxml4j/util/Nullable;

    return-object v0
.end method

.method public getTitleProperty()Lorg/apache/poi/openxml4j/util/Nullable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->title:Lorg/apache/poi/openxml4j/util/Nullable;

    return-object v0
.end method

.method public getVersionProperty()Lorg/apache/poi/openxml4j/util/Nullable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->version:Lorg/apache/poi/openxml4j/util/Nullable;

    return-object v0
.end method

.method public load(Ljava/io/InputStream;)Z
    .locals 2
    .param p1, "ios"    # Ljava/io/InputStream;

    .line 664
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v1, "Operation not authorized. This part may only be manipulated using the getters and setters on PackagePropertiesPart"

    invoke-direct {v0, v1}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public save(Ljava/io/OutputStream;)Z
    .locals 2
    .param p1, "zos"    # Ljava/io/OutputStream;

    .line 659
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v1, "Operation not authorized. This part may only be manipulated using the getters and setters on PackagePropertiesPart"

    invoke-direct {v0, v1}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCategoryProperty(Ljava/lang/String;)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .line 383
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setStringValue(Ljava/lang/String;)Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->category:Lorg/apache/poi/openxml4j/util/Nullable;

    .line 384
    return-void
.end method

.method public setContentStatusProperty(Ljava/lang/String;)V
    .locals 1
    .param p1, "contentStatus"    # Ljava/lang/String;

    .line 392
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setStringValue(Ljava/lang/String;)Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->contentStatus:Lorg/apache/poi/openxml4j/util/Nullable;

    .line 393
    return-void
.end method

.method public setContentTypeProperty(Ljava/lang/String;)V
    .locals 1
    .param p1, "contentType"    # Ljava/lang/String;

    .line 401
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setStringValue(Ljava/lang/String;)Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->contentType:Lorg/apache/poi/openxml4j/util/Nullable;

    .line 402
    return-void
.end method

.method public setCreatedProperty(Ljava/lang/String;)V
    .locals 4
    .param p1, "created"    # Ljava/lang/String;

    .line 411
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setDateValue(Ljava/lang/String;)Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->created:Lorg/apache/poi/openxml4j/util/Nullable;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    nop

    .line 415
    return-void

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Date for created could not be parsed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setCreatedProperty(Lorg/apache/poi/openxml4j/util/Nullable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .line 423
    .local p1, "created":Lorg/apache/poi/openxml4j/util/Nullable;, "Lorg/apache/poi/openxml4j/util/Nullable<Ljava/util/Date;>;"
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/util/Nullable;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->created:Lorg/apache/poi/openxml4j/util/Nullable;

    .line 425
    :cond_0
    return-void
.end method

.method public setCreatorProperty(Ljava/lang/String;)V
    .locals 1
    .param p1, "creator"    # Ljava/lang/String;

    .line 433
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setStringValue(Ljava/lang/String;)Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->creator:Lorg/apache/poi/openxml4j/util/Nullable;

    .line 434
    return-void
.end method

.method public setDescriptionProperty(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .line 442
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setStringValue(Ljava/lang/String;)Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->description:Lorg/apache/poi/openxml4j/util/Nullable;

    .line 443
    return-void
.end method

.method public setIdentifierProperty(Ljava/lang/String;)V
    .locals 1
    .param p1, "identifier"    # Ljava/lang/String;

    .line 451
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setStringValue(Ljava/lang/String;)Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->identifier:Lorg/apache/poi/openxml4j/util/Nullable;

    .line 452
    return-void
.end method

.method public setKeywordsProperty(Ljava/lang/String;)V
    .locals 1
    .param p1, "keywords"    # Ljava/lang/String;

    .line 460
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setStringValue(Ljava/lang/String;)Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->keywords:Lorg/apache/poi/openxml4j/util/Nullable;

    .line 461
    return-void
.end method

.method public setLanguageProperty(Ljava/lang/String;)V
    .locals 1
    .param p1, "language"    # Ljava/lang/String;

    .line 469
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setStringValue(Ljava/lang/String;)Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->language:Lorg/apache/poi/openxml4j/util/Nullable;

    .line 470
    return-void
.end method

.method public setLastModifiedByProperty(Ljava/lang/String;)V
    .locals 1
    .param p1, "lastModifiedBy"    # Ljava/lang/String;

    .line 478
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setStringValue(Ljava/lang/String;)Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->lastModifiedBy:Lorg/apache/poi/openxml4j/util/Nullable;

    .line 479
    return-void
.end method

.method public setLastPrintedProperty(Ljava/lang/String;)V
    .locals 4
    .param p1, "lastPrinted"    # Ljava/lang/String;

    .line 488
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setDateValue(Ljava/lang/String;)Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->lastPrinted:Lorg/apache/poi/openxml4j/util/Nullable;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    nop

    .line 493
    return-void

    .line 489
    :catch_0
    move-exception v0

    .line 490
    .local v0, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastPrinted  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setLastPrintedProperty(Lorg/apache/poi/openxml4j/util/Nullable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .line 501
    .local p1, "lastPrinted":Lorg/apache/poi/openxml4j/util/Nullable;, "Lorg/apache/poi/openxml4j/util/Nullable<Ljava/util/Date;>;"
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/util/Nullable;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->lastPrinted:Lorg/apache/poi/openxml4j/util/Nullable;

    .line 503
    :cond_0
    return-void
.end method

.method public setModifiedProperty(Ljava/lang/String;)V
    .locals 4
    .param p1, "modified"    # Ljava/lang/String;

    .line 512
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setDateValue(Ljava/lang/String;)Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->modified:Lorg/apache/poi/openxml4j/util/Nullable;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    nop

    .line 517
    return-void

    .line 513
    :catch_0
    move-exception v0

    .line 514
    .local v0, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "modified  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setModifiedProperty(Lorg/apache/poi/openxml4j/util/Nullable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .line 525
    .local p1, "modified":Lorg/apache/poi/openxml4j/util/Nullable;, "Lorg/apache/poi/openxml4j/util/Nullable<Ljava/util/Date;>;"
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/util/Nullable;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->modified:Lorg/apache/poi/openxml4j/util/Nullable;

    .line 527
    :cond_0
    return-void
.end method

.method public setRevisionProperty(Ljava/lang/String;)V
    .locals 1
    .param p1, "revision"    # Ljava/lang/String;

    .line 535
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setStringValue(Ljava/lang/String;)Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->revision:Lorg/apache/poi/openxml4j/util/Nullable;

    .line 536
    return-void
.end method

.method public setSubjectProperty(Ljava/lang/String;)V
    .locals 1
    .param p1, "subject"    # Ljava/lang/String;

    .line 544
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setStringValue(Ljava/lang/String;)Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->subject:Lorg/apache/poi/openxml4j/util/Nullable;

    .line 545
    return-void
.end method

.method public setTitleProperty(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .line 553
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setStringValue(Ljava/lang/String;)Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->title:Lorg/apache/poi/openxml4j/util/Nullable;

    .line 554
    return-void
.end method

.method public setVersionProperty(Ljava/lang/String;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    .line 562
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setStringValue(Ljava/lang/String;)Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->version:Lorg/apache/poi/openxml4j/util/Nullable;

    .line 563
    return-void
.end method
