.class public final Lorg/apache/poi/openxml4j/opc/PackagePartName;
.super Ljava/lang/Object;
.source "PackagePartName.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/poi/openxml4j/opc/PackagePartName;",
        ">;"
    }
.end annotation


# static fields
.field private static RFC3986_PCHAR_AUTHORIZED_SUP:[Ljava/lang/String;

.field private static RFC3986_PCHAR_SUB_DELIMS:[Ljava/lang/String;

.field private static RFC3986_PCHAR_UNRESERVED_SUP:[Ljava/lang/String;


# instance fields
.field private isRelationship:Z

.field private partNameURI:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 49
    const-string v0, "!"

    const-string v1, "$"

    const-string v2, "&"

    const-string v3, "\'"

    const-string v4, "("

    const-string v5, ")"

    const-string v6, "*"

    const-string v7, "+"

    const-string v8, ","

    const-string v9, ";"

    const-string v10, "="

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->RFC3986_PCHAR_SUB_DELIMS:[Ljava/lang/String;

    .line 55
    const-string v0, "-"

    const-string v1, "."

    const-string v2, "_"

    const-string/jumbo v3, "~"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->RFC3986_PCHAR_UNRESERVED_SUP:[Ljava/lang/String;

    .line 60
    const-string v0, ":"

    const-string v1, "@"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->RFC3986_PCHAR_AUTHORIZED_SUP:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "partName"    # Ljava/lang/String;
    .param p2, "checkConformance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 118
    .local v0, "partURI":Ljava/net/URI;
    nop

    .line 120
    if-eqz p2, :cond_0

    .line 121
    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->throwExceptionIfInvalidPartUri(Ljava/net/URI;)V

    goto :goto_0

    .line 123
    :cond_0
    sget-object v1, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->PACKAGE_ROOT_URI:Ljava/net/URI;

    invoke-virtual {v1, v0}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    :goto_0
    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->partNameURI:Ljava/net/URI;

    .line 129
    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->isRelationshipPartURI(Ljava/net/URI;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->isRelationship:Z

    .line 130
    return-void

    .line 124
    :cond_1
    new-instance v1, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException;

    const-string v2, "OCP conformance must be check for ALL part name except special cases : [\'/\']"

    invoke-direct {v1, v2}, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    .end local v0    # "partURI":Ljava/net/URI;
    :catch_0
    move-exception v1

    .line 116
    .restart local v0    # "partURI":Ljava/net/URI;
    .local v1, "e":Ljava/net/URISyntaxException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "partName argmument is not a valid OPC part name !"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method constructor <init>(Ljava/net/URI;Z)V
    .locals 2
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "checkConformance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    if-eqz p2, :cond_0

    .line 85
    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->throwExceptionIfInvalidPartUri(Ljava/net/URI;)V

    goto :goto_0

    .line 87
    :cond_0
    sget-object v0, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->PACKAGE_ROOT_URI:Ljava/net/URI;

    invoke-virtual {v0, p1}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    :goto_0
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->partNameURI:Ljava/net/URI;

    .line 93
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->isRelationshipPartURI(Ljava/net/URI;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->isRelationship:Z

    .line 94
    return-void

    .line 88
    :cond_1
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException;

    const-string v1, "OCP conformance must be check for ALL part name except special cases : [\'/\']"

    invoke-direct {v0, v1}, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkPCharCompliance(Ljava/lang/String;)V
    .locals 14
    .param p0, "segment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation

    .line 292
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 293
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_15

    .line 294
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 295
    .local v2, "c":C
    const/4 v3, 0x1

    .line 300
    .local v3, "errorFlag":Z
    const/16 v4, 0x39

    const/16 v5, 0x7a

    const/16 v6, 0x30

    const/16 v7, 0x5a

    const/16 v8, 0x61

    const/16 v9, 0x41

    const/4 v10, 0x0

    if-lt v2, v9, :cond_0

    if-le v2, v7, :cond_2

    :cond_0
    if-lt v2, v8, :cond_1

    if-le v2, v5, :cond_2

    :cond_1
    if-lt v2, v6, :cond_3

    if-gt v2, v4, :cond_3

    .line 302
    :cond_2
    const/4 v3, 0x0

    goto :goto_5

    .line 305
    :cond_3
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    sget-object v12, Lorg/apache/poi/openxml4j/opc/PackagePartName;->RFC3986_PCHAR_UNRESERVED_SUP:[Ljava/lang/String;

    array-length v13, v12

    if-ge v11, v13, :cond_5

    .line 306
    aget-object v12, v12, v11

    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v2, v12, :cond_4

    .line 307
    const/4 v3, 0x0

    .line 308
    goto :goto_2

    .line 305
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 313
    .end local v11    # "j":I
    :cond_5
    :goto_2
    const/4 v11, 0x0

    .line 314
    .restart local v11    # "j":I
    :goto_3
    if-eqz v3, :cond_7

    sget-object v12, Lorg/apache/poi/openxml4j/opc/PackagePartName;->RFC3986_PCHAR_AUTHORIZED_SUP:[Ljava/lang/String;

    array-length v13, v12

    if-ge v11, v13, :cond_7

    .line 315
    aget-object v12, v12, v11

    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v2, v12, :cond_6

    .line 316
    const/4 v3, 0x0

    .line 314
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 321
    .end local v11    # "j":I
    :cond_7
    const/4 v11, 0x0

    .line 322
    .restart local v11    # "j":I
    :goto_4
    if-eqz v3, :cond_9

    sget-object v12, Lorg/apache/poi/openxml4j/opc/PackagePartName;->RFC3986_PCHAR_SUB_DELIMS:[Ljava/lang/String;

    array-length v13, v12

    if-ge v11, v13, :cond_9

    .line 323
    aget-object v12, v12, v11

    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v2, v12, :cond_8

    .line 324
    const/4 v3, 0x0

    .line 322
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 329
    .end local v11    # "j":I
    :cond_9
    :goto_5
    if-eqz v3, :cond_13

    const/16 v11, 0x25

    if-ne v2, v11, :cond_13

    .line 332
    sub-int v11, v0, v1

    const/4 v12, 0x2

    if-lt v11, v12, :cond_12

    .line 339
    const/4 v3, 0x0

    .line 342
    add-int/lit8 v11, v1, 0x1

    add-int/lit8 v12, v1, 0x3

    invoke-virtual {p0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x10

    invoke-static {v11, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v11

    int-to-char v11, v11

    .line 344
    .local v11, "decodedChar":C
    add-int/lit8 v1, v1, 0x2

    .line 347
    const/16 v12, 0x2f

    if-eq v11, v12, :cond_11

    const/16 v12, 0x5c

    if-eq v11, v12, :cond_11

    .line 354
    if-lt v11, v9, :cond_a

    if-le v11, v7, :cond_c

    :cond_a
    if-lt v11, v8, :cond_b

    if-le v11, v5, :cond_c

    :cond_b
    if-lt v11, v6, :cond_d

    if-gt v11, v4, :cond_d

    .line 357
    :cond_c
    const/4 v3, 0x1

    .line 360
    :cond_d
    const/4 v4, 0x0

    .line 361
    .local v4, "j":I
    :goto_6
    if-nez v3, :cond_f

    sget-object v5, Lorg/apache/poi/openxml4j/opc/PackagePartName;->RFC3986_PCHAR_UNRESERVED_SUP:[Ljava/lang/String;

    array-length v6, v5

    if-ge v4, v6, :cond_f

    .line 362
    aget-object v5, v5, v4

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v2, v5, :cond_e

    .line 363
    const/4 v3, 0x1

    .line 364
    goto :goto_7

    .line 361
    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 367
    .end local v4    # "j":I
    :cond_f
    :goto_7
    if-nez v3, :cond_10

    goto :goto_8

    .line 368
    :cond_10
    new-instance v4, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    const-string v5, "A segment shall not contain percent-encoded unreserved characters. [M1.8]"

    invoke-direct {v4, v5}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 348
    :cond_11
    new-instance v4, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    const-string v5, "A segment shall not contain percent-encoded forward slash (\'/\'), or backward slash (\'\') characters. [M1.7]"

    invoke-direct {v4, v5}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 333
    .end local v11    # "decodedChar":C
    :cond_12
    new-instance v4, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The segment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " contain invalid encoded character !"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 372
    :cond_13
    :goto_8
    if-nez v3, :cond_14

    .line 293
    .end local v2    # "c":C
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 373
    .restart local v2    # "c":C
    :cond_14
    new-instance v4, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    const-string v5, "A segment shall not hold any characters other than pchar characters. [M1.6]"

    invoke-direct {v4, v5}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 376
    .end local v1    # "i":I
    .end local v2    # "c":C
    .end local v3    # "errorFlag":Z
    :cond_15
    return-void
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .line 565
    if-nez p0, :cond_1

    .line 568
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 570
    :cond_1
    if-nez p1, :cond_2

    .line 573
    const/4 v0, 0x1

    return v0

    .line 576
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 577
    .local v0, "len1":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 578
    .local v1, "len2":I
    const/4 v2, 0x0

    .local v2, "idx1":I
    const/4 v3, 0x0

    .local v3, "idx2":I
    :goto_1
    if-ge v2, v0, :cond_8

    if-ge v3, v1, :cond_8

    .line 580
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "idx1":I
    .local v4, "idx1":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 581
    .local v2, "c1":C
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "idx2":I
    .local v5, "idx2":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 583
    .local v3, "c2":C
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 585
    add-int/lit8 v6, v4, -0x1

    .line 586
    .local v6, "beg1":I
    :goto_2
    if-ge v4, v0, :cond_3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 588
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 591
    :cond_3
    add-int/lit8 v7, v5, -0x1

    .line 592
    .local v7, "beg2":I
    :goto_3
    if-ge v5, v1, :cond_4

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 594
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 598
    :cond_4
    new-instance v8, Ljava/math/BigInteger;

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/math/BigInteger;

    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    .line 602
    .local v8, "cmp":I
    if-eqz v8, :cond_5

    return v8

    .line 603
    .end local v6    # "beg1":I
    .end local v7    # "beg2":I
    .end local v8    # "cmp":I
    :cond_5
    move v2, v4

    move v3, v5

    goto :goto_4

    .line 604
    :cond_6
    if-eq v2, v3, :cond_7

    .line 606
    sub-int v6, v2, v3

    return v6

    .line 604
    :cond_7
    move v2, v4

    move v3, v5

    .line 608
    .end local v4    # "idx1":I
    .end local v5    # "idx2":I
    .local v2, "idx1":I
    .local v3, "idx2":I
    :goto_4
    goto :goto_1

    .line 610
    .end local v2    # "idx1":I
    .end local v3    # "idx2":I
    :cond_8
    sub-int v2, v0, v1

    return v2
.end method

.method public static compare(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/PackagePartName;)I
    .locals 3
    .param p0, "obj1"    # Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .param p1, "obj2"    # Lorg/apache/poi/openxml4j/opc/PackagePartName;

    .line 535
    if-nez p0, :cond_1

    .line 538
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 540
    :cond_1
    if-nez p1, :cond_2

    .line 543
    const/4 v0, 0x1

    return v0

    .line 546
    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private isRelationshipPartURI(Ljava/net/URI;)Z
    .locals 3
    .param p1, "partUri"    # Ljava/net/URI;

    .line 141
    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^.*/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->RELATIONSHIP_PART_SEGMENT_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.*\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->RELATIONSHIP_PART_EXTENSION_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "partUri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static throwExceptionIfAbsoluteUri(Ljava/net/URI;)V
    .locals 3
    .param p0, "partUri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation

    .line 428
    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    return-void

    .line 429
    :cond_0
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Absolute URI forbidden: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static throwExceptionIfEmptyURI(Ljava/net/URI;)V
    .locals 4
    .param p0, "partURI"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation

    .line 200
    if-eqz p0, :cond_2

    .line 203
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "uriPath":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-char v2, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->FORWARD_SLASH_CHAR:C

    if-eq v1, v2, :cond_1

    .line 209
    :cond_0
    return-void

    .line 206
    :cond_1
    new-instance v1, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A part name shall not be empty [M1.1]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    .end local v0    # "uriPath":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "partURI"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static throwExceptionIfInvalidPartUri(Ljava/net/URI;)V
    .locals 2
    .param p0, "partUri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation

    .line 171
    if-eqz p0, :cond_0

    .line 174
    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->throwExceptionIfEmptyURI(Ljava/net/URI;)V

    .line 177
    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->throwExceptionIfAbsoluteUri(Ljava/net/URI;)V

    .line 180
    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->throwExceptionIfPartNameNotStartsWithForwardSlashChar(Ljava/net/URI;)V

    .line 183
    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->throwExceptionIfPartNameEndsWithForwardSlashChar(Ljava/net/URI;)V

    .line 187
    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->throwExceptionIfPartNameHaveInvalidSegments(Ljava/net/URI;)V

    .line 188
    return-void

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "partUri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static throwExceptionIfPartNameEndsWithForwardSlashChar(Ljava/net/URI;)V
    .locals 4
    .param p0, "partUri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation

    .line 410
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "uriPath":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-char v2, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->FORWARD_SLASH_CHAR:C

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 413
    :cond_0
    new-instance v1, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A part name shall not have a forward slash as the last character [M1.5]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 416
    :cond_1
    :goto_0
    return-void
.end method

.method private static throwExceptionIfPartNameHaveInvalidSegments(Ljava/net/URI;)V
    .locals 6
    .param p0, "partUri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation

    .line 238
    if-eqz p0, :cond_5

    .line 243
    invoke-virtual {p0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "segments":[Ljava/lang/String;
    array-length v1, v0

    const-string v2, "A part name shall not have empty segments [M1.3]: "

    const/4 v3, 0x1

    if-le v1, v3, :cond_4

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 249
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_3

    .line 250
    aget-object v4, v0, v1

    .line 251
    .local v4, "seg":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 257
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 263
    const-string v5, "\\\\."

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 272
    invoke-static {v4}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->checkPCharCompliance(Ljava/lang/String;)V

    .line 249
    .end local v4    # "seg":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 266
    .restart local v4    # "seg":Ljava/lang/String;
    :cond_0
    new-instance v2, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A segment shall include at least one non-dot character. [M1.10]: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 258
    :cond_1
    new-instance v2, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A segment shall not end with a dot (\'.\') character [M1.9]: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 252
    :cond_2
    new-instance v3, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 274
    .end local v1    # "i":I
    .end local v4    # "seg":Ljava/lang/String;
    :cond_3
    return-void

    .line 245
    :cond_4
    new-instance v1, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 239
    .end local v0    # "segments":[Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "partUri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static throwExceptionIfPartNameNotStartsWithForwardSlashChar(Ljava/net/URI;)V
    .locals 4
    .param p0, "partUri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation

    .line 390
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "uriPath":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-char v2, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->FORWARD_SLASH_CHAR:C

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 393
    :cond_0
    new-instance v1, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A part name shall start with a forward slash (\'/\') character [M1.4]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 396
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 35
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {p0, v0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->compareTo(Lorg/apache/poi/openxml4j/opc/PackagePartName;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/poi/openxml4j/opc/PackagePartName;)I
    .locals 1
    .param p1, "other"    # Lorg/apache/poi/openxml4j/opc/PackagePartName;

    .line 445
    invoke-static {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->compare(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/PackagePartName;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 482
    instance-of v0, p1, Lorg/apache/poi/openxml4j/opc/PackagePartName;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->partNameURI:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/openxml4j/opc/PackagePartName;

    iget-object v1, v1, Lorg/apache/poi/openxml4j/opc/PackagePartName;->partNameURI:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 489
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 3

    .line 456
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->partNameURI:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "fragment":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 458
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 459
    .local v1, "i":I
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 460
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 462
    .end local v1    # "i":I
    :cond_0
    const-string v1, ""

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 471
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->partNameURI:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    .line 511
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->partNameURI:Ljava/net/URI;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 495
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->partNameURI:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isRelationshipPartURI()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->isRelationship:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 500
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
