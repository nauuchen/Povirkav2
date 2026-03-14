.class public Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;
.super Ljava/lang/Object;
.source "HeaderFooterHelper.java"


# static fields
.field private static final HeaderFooterEntity_C:Ljava/lang/String; = "&C"

.field public static final HeaderFooterEntity_Date:Ljava/lang/String; = "&D"

.field public static final HeaderFooterEntity_File:Ljava/lang/String; = "&F"

.field private static final HeaderFooterEntity_L:Ljava/lang/String; = "&L"

.field private static final HeaderFooterEntity_R:Ljava/lang/String; = "&R"

.field public static final HeaderFooterEntity_Time:Ljava/lang/String; = "&T"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getParts(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p1, "string"    # Ljava/lang/String;

    .line 64
    const-string v0, ""

    filled-new-array {v0, v0, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "parts":[Ljava/lang/String;
    if-nez p1, :cond_0

    .line 66
    return-object v0

    .line 71
    :cond_0
    const/4 v1, 0x0

    .line 72
    .local v1, "lAt":I
    const/4 v2, 0x0

    .line 73
    .local v2, "cAt":I
    const/4 v3, 0x0

    .line 79
    .local v3, "rAt":I
    :goto_0
    const-string v4, "&L"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    move v1, v5

    const/4 v6, -0x2

    if-le v5, v6, :cond_4

    const-string v5, "&C"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    move v2, v7

    if-le v7, v6, :cond_4

    const-string v7, "&R"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    move v3, v8

    if-le v8, v6, :cond_4

    const/4 v6, -0x1

    if-gt v1, v6, :cond_1

    if-gt v2, v6, :cond_1

    if-le v3, v6, :cond_4

    .line 83
    :cond_1
    const/4 v6, 0x0

    if-le v3, v2, :cond_2

    if-le v3, v1, :cond_2

    .line 84
    const/4 v4, 0x2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 85
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 86
    :cond_2
    if-le v2, v3, :cond_3

    if-le v2, v1, :cond_3

    .line 87
    const/4 v4, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 88
    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 90
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    .line 91
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 95
    :cond_4
    return-object v0
.end method

.method private joinParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "l"    # Ljava/lang/String;
    .param p2, "c"    # Ljava/lang/String;
    .param p3, "r"    # Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 104
    .local v0, "ret":Ljava/lang/StringBuffer;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 105
    const-string v1, "&C"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 109
    const-string v1, "&L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 113
    const-string v1, "&R"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private joinParts([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "parts"    # [Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    const/4 v2, 0x2

    aget-object v2, p1, v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;->joinParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCenterSection(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;->getParts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLeftSection(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;->getParts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getRightSection(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;->getParts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public setCenterSection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "newCenter"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;->getParts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "parts":[Ljava/lang/String;
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 52
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;->joinParts([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setLeftSection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "newLeft"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;->getParts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "parts":[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 47
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;->joinParts([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setRightSection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "newRight"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;->getParts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "parts":[Ljava/lang/String;
    const/4 v1, 0x2

    aput-object p2, v0, v1

    .line 57
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;->joinParts([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
