.class public Lorg/apache/poi/hpsf/ClassID;
.super Ljava/lang/Object;
.source "ClassID.java"


# static fields
.field public static final EQUATION30:Lorg/apache/poi/hpsf/ClassID;

.field public static final EXCEL2003:Lorg/apache/poi/hpsf/ClassID;

.field public static final EXCEL2007:Lorg/apache/poi/hpsf/ClassID;

.field public static final EXCEL2007_MACRO:Lorg/apache/poi/hpsf/ClassID;

.field public static final EXCEL2007_XLSB:Lorg/apache/poi/hpsf/ClassID;

.field public static final EXCEL2010:Lorg/apache/poi/hpsf/ClassID;

.field public static final EXCEL2010_CHART:Lorg/apache/poi/hpsf/ClassID;

.field public static final EXCEL2010_ODS:Lorg/apache/poi/hpsf/ClassID;

.field public static final EXCEL95:Lorg/apache/poi/hpsf/ClassID;

.field public static final EXCEL95_CHART:Lorg/apache/poi/hpsf/ClassID;

.field public static final EXCEL97:Lorg/apache/poi/hpsf/ClassID;

.field public static final EXCEL97_CHART:Lorg/apache/poi/hpsf/ClassID;

.field public static final EXCEL_V3:Lorg/apache/poi/hpsf/ClassID;

.field public static final EXCEL_V3_CHART:Lorg/apache/poi/hpsf/ClassID;

.field public static final EXCEL_V3_MACRO:Lorg/apache/poi/hpsf/ClassID;

.field public static final LENGTH:I = 0x10

.field public static final OLE10_PACKAGE:Lorg/apache/poi/hpsf/ClassID;

.field public static final POWERPOINT2007:Lorg/apache/poi/hpsf/ClassID;

.field public static final POWERPOINT2007_MACRO:Lorg/apache/poi/hpsf/ClassID;

.field public static final POWERPOINT95:Lorg/apache/poi/hpsf/ClassID;

.field public static final POWERPOINT97:Lorg/apache/poi/hpsf/ClassID;

.field public static final PPT_SHOW:Lorg/apache/poi/hpsf/ClassID;

.field public static final TXT_ONLY:Lorg/apache/poi/hpsf/ClassID;

.field public static final WORD2007:Lorg/apache/poi/hpsf/ClassID;

.field public static final WORD2007_MACRO:Lorg/apache/poi/hpsf/ClassID;

.field public static final WORD95:Lorg/apache/poi/hpsf/ClassID;

.field public static final WORD97:Lorg/apache/poi/hpsf/ClassID;

.field public static final XLS_WORKBOOK:Lorg/apache/poi/hpsf/ClassID;


# instance fields
.field private final bytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string/jumbo v1, "{0003000C-0000-0000-C000-000000000046}"

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->OLE10_PACKAGE:Lorg/apache/poi/hpsf/ClassID;

    .line 34
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string/jumbo v1, "{64818D10-4F9B-11CF-86EA-00AA00B929E8}"

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->PPT_SHOW:Lorg/apache/poi/hpsf/ClassID;

    .line 35
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string/jumbo v2, "{00020841-0000-0000-C000-000000000046}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->XLS_WORKBOOK:Lorg/apache/poi/hpsf/ClassID;

    .line 36
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string/jumbo v2, "{5e941d80-bf96-11cd-b579-08002b30bfeb}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->TXT_ONLY:Lorg/apache/poi/hpsf/ClassID;

    .line 39
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string/jumbo v2, "{00030000-0000-0000-C000-000000000046}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->EXCEL_V3:Lorg/apache/poi/hpsf/ClassID;

    .line 40
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string/jumbo v2, "{00030001-0000-0000-C000-000000000046}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->EXCEL_V3_CHART:Lorg/apache/poi/hpsf/ClassID;

    .line 41
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string/jumbo v2, "{00030002-0000-0000-C000-000000000046}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->EXCEL_V3_MACRO:Lorg/apache/poi/hpsf/ClassID;

    .line 43
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string/jumbo v2, "{00020810-0000-0000-C000-000000000046}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->EXCEL95:Lorg/apache/poi/hpsf/ClassID;

    .line 44
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string/jumbo v2, "{00020811-0000-0000-C000-000000000046}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->EXCEL95_CHART:Lorg/apache/poi/hpsf/ClassID;

    .line 46
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string/jumbo v2, "{00020820-0000-0000-C000-000000000046}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->EXCEL97:Lorg/apache/poi/hpsf/ClassID;

    .line 47
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string/jumbo v2, "{00020821-0000-0000-C000-000000000046}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->EXCEL97_CHART:Lorg/apache/poi/hpsf/ClassID;

    .line 49
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string/jumbo v2, "{00020812-0000-0000-C000-000000000046}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->EXCEL2003:Lorg/apache/poi/hpsf/ClassID;

    .line 51
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string/jumbo v2, "{00020830-0000-0000-C000-000000000046}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->EXCEL2007:Lorg/apache/poi/hpsf/ClassID;

    .line 52
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string/jumbo v2, "{00020832-0000-0000-C000-000000000046}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->EXCEL2007_MACRO:Lorg/apache/poi/hpsf/ClassID;

    .line 53
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string/jumbo v2, "{00020833-0000-0000-C000-000000000046}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->EXCEL2007_XLSB:Lorg/apache/poi/hpsf/ClassID;

    .line 55
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string/jumbo v2, "{00024500-0000-0000-C000-000000000046}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->EXCEL2010:Lorg/apache/poi/hpsf/ClassID;

    .line 56
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string/jumbo v2, "{00024505-0014-0000-C000-000000000046}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->EXCEL2010_CHART:Lorg/apache/poi/hpsf/ClassID;

    .line 57
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string/jumbo v2, "{EABCECDB-CC1C-4A6F-B4E3-7F888A5ADFC8}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->EXCEL2010_ODS:Lorg/apache/poi/hpsf/ClassID;

    .line 59
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string/jumbo v2, "{00020906-0000-0000-C000-000000000046}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->WORD97:Lorg/apache/poi/hpsf/ClassID;

    .line 60
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string/jumbo v2, "{00020900-0000-0000-C000-000000000046}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->WORD95:Lorg/apache/poi/hpsf/ClassID;

    .line 61
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string/jumbo v2, "{F4754C9B-64F5-4B40-8AF4-679732AC0607}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->WORD2007:Lorg/apache/poi/hpsf/ClassID;

    .line 62
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string/jumbo v2, "{18A06B6B-2F3F-4E2B-A611-52BE631B2D22}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->WORD2007_MACRO:Lorg/apache/poi/hpsf/ClassID;

    .line 64
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->POWERPOINT97:Lorg/apache/poi/hpsf/ClassID;

    .line 65
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string/jumbo v1, "{EA7BAE70-FB3B-11CD-A903-00AA00510EA3}"

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->POWERPOINT95:Lorg/apache/poi/hpsf/ClassID;

    .line 66
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string/jumbo v1, "{CF4F55F4-8F87-4D47-80BB-5808164BB3F8}"

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->POWERPOINT2007:Lorg/apache/poi/hpsf/ClassID;

    .line 67
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string/jumbo v1, "{DC020317-E6E2-4A62-B9FA-B3EFE16626F4}"

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->POWERPOINT2007_MACRO:Lorg/apache/poi/hpsf/ClassID;

    .line 69
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string/jumbo v1, "{0002CE02-0000-0000-C000-000000000046}"

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->EQUATION30:Lorg/apache/poi/hpsf/ClassID;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    .line 94
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "externalForm"    # Ljava/lang/String;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    .line 105
    const-string v1, "[{}-]"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "clsStr":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 107
    iget-object v3, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    div-int/lit8 v4, v2, 0x2

    add-int/lit8 v5, v2, 0x2

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 106
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 109
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1
    .param p1, "src"    # [B
    .param p2, "offset"    # I

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    .line 86
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hpsf/ClassID;->read([BI)[B

    .line 87
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 219
    instance-of v0, p1, Lorg/apache/poi/hpsf/ClassID;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/hpsf/ClassID;

    iget-object v1, v1, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equalsInverted(Lorg/apache/poi/hpsf/ClassID;)Z
    .locals 8
    .param p1, "o"    # Lorg/apache/poi/hpsf/ClassID;

    .line 231
    iget-object v0, p1, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    iget-object v3, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    const/4 v4, 0x3

    aget-byte v5, v3, v4

    const/4 v6, 0x1

    if-ne v2, v5, :cond_0

    aget-byte v2, v0, v6

    const/4 v5, 0x2

    aget-byte v7, v3, v5

    if-ne v2, v7, :cond_0

    aget-byte v2, v0, v5

    aget-byte v5, v3, v6

    if-ne v2, v5, :cond_0

    aget-byte v2, v0, v4

    aget-byte v4, v3, v1

    if-ne v2, v4, :cond_0

    const/4 v2, 0x4

    aget-byte v4, v0, v2

    const/4 v5, 0x5

    aget-byte v7, v3, v5

    if-ne v4, v7, :cond_0

    aget-byte v4, v0, v5

    aget-byte v2, v3, v2

    if-ne v4, v2, :cond_0

    const/4 v2, 0x6

    aget-byte v4, v0, v2

    const/4 v5, 0x7

    aget-byte v7, v3, v5

    if-ne v4, v7, :cond_0

    aget-byte v4, v0, v5

    aget-byte v2, v3, v2

    if-ne v4, v2, :cond_0

    const/16 v2, 0x8

    aget-byte v4, v0, v2

    aget-byte v2, v3, v2

    if-ne v4, v2, :cond_0

    const/16 v2, 0x9

    aget-byte v4, v0, v2

    aget-byte v2, v3, v2

    if-ne v4, v2, :cond_0

    const/16 v2, 0xa

    aget-byte v4, v0, v2

    aget-byte v2, v3, v2

    if-ne v4, v2, :cond_0

    const/16 v2, 0xb

    aget-byte v4, v0, v2

    aget-byte v2, v3, v2

    if-ne v4, v2, :cond_0

    const/16 v2, 0xc

    aget-byte v4, v0, v2

    aget-byte v2, v3, v2

    if-ne v4, v2, :cond_0

    const/16 v2, 0xd

    aget-byte v4, v0, v2

    aget-byte v2, v3, v2

    if-ne v4, v2, :cond_0

    const/16 v2, 0xe

    aget-byte v4, v0, v2

    aget-byte v2, v3, v2

    if-ne v4, v2, :cond_0

    const/16 v2, 0xf

    aget-byte v0, v0, v2

    aget-byte v2, v3, v2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getBytes()[B
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 257
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/ClassID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .line 116
    const/16 v0, 0x10

    return v0
.end method

.method public read([BI)[B
    .locals 3
    .param p1, "src"    # [B
    .param p2, "offset"    # I

    .line 153
    iget-object v0, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 154
    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 155
    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 156
    add-int/lit8 v1, p2, 0x0

    aget-byte v1, p1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 159
    add-int/lit8 v1, p2, 0x5

    aget-byte v1, p1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    .line 160
    add-int/lit8 v1, p2, 0x4

    aget-byte v1, p1, v1

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    .line 163
    add-int/lit8 v1, p2, 0x7

    aget-byte v1, p1, v1

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    .line 164
    add-int/lit8 v1, p2, 0x6

    aget-byte v1, p1, v1

    const/4 v2, 0x7

    aput-byte v1, v0, v2

    .line 167
    add-int/lit8 v1, p2, 0x8

    const/16 v2, 0x8

    invoke-static {p1, v1, v0, v2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iget-object v0, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    return-object v0
.end method

.method public setBytes([B)V
    .locals 3
    .param p1, "bytes"    # [B

    .line 139
    iget-object v0, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 269
    .local v0, "sbClassId":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 270
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_2

    .line 271
    iget-object v2, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    aget-byte v2, v2, v1

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    .line 273
    :cond_0
    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 270
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 276
    .end local v1    # "i":I
    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public write([BI)V
    .locals 3
    .param p1, "dst"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayStoreException;
        }
    .end annotation

    .line 185
    array-length v0, p1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 192
    add-int/lit8 v0, p2, 0x0

    iget-object v1, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    const/4 v2, 0x3

    aget-byte v2, v1, v2

    aput-byte v2, p1, v0

    .line 193
    add-int/lit8 v0, p2, 0x1

    const/4 v2, 0x2

    aget-byte v2, v1, v2

    aput-byte v2, p1, v0

    .line 194
    add-int/lit8 v0, p2, 0x2

    const/4 v2, 0x1

    aget-byte v2, v1, v2

    aput-byte v2, p1, v0

    .line 195
    add-int/lit8 v0, p2, 0x3

    const/4 v2, 0x0

    aget-byte v2, v1, v2

    aput-byte v2, p1, v0

    .line 198
    add-int/lit8 v0, p2, 0x4

    const/4 v2, 0x5

    aget-byte v2, v1, v2

    aput-byte v2, p1, v0

    .line 199
    add-int/lit8 v0, p2, 0x5

    const/4 v2, 0x4

    aget-byte v2, v1, v2

    aput-byte v2, p1, v0

    .line 202
    add-int/lit8 v0, p2, 0x6

    const/4 v2, 0x7

    aget-byte v2, v1, v2

    aput-byte v2, p1, v0

    .line 203
    add-int/lit8 v0, p2, 0x7

    const/4 v2, 0x6

    aget-byte v2, v1, v2

    aput-byte v2, p1, v0

    .line 206
    add-int/lit8 v0, p2, 0x8

    const/16 v2, 0x8

    invoke-static {v1, v2, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    return-void

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/ArrayStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination byte[] must have room for at least 16 bytes, but has a length of only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
