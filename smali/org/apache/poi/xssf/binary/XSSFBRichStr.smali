.class Lorg/apache/poi/xssf/binary/XSSFBRichStr;
.super Ljava/lang/Object;
.source "XSSFBRichStr.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final phoneticString:Ljava/lang/String;

.field private final string:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "phoneticString"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBRichStr;->string:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lorg/apache/poi/xssf/binary/XSSFBRichStr;->phoneticString:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static build([BI)Lorg/apache/poi/xssf/binary/XSSFBRichStr;
    .locals 8
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/xssf/binary/XSSFBParseException;
        }
    .end annotation

    .line 29
    aget-byte v0, p0, p1

    .line 30
    .local v0, "first":B
    shr-int/lit8 v1, v0, 0x7

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 31
    .local v1, "dwSizeStrRunExists":Z
    :goto_0
    shr-int/lit8 v4, v0, 0x6

    and-int/2addr v4, v2

    if-ne v4, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 32
    .local v2, "phoneticExists":Z
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .local v3, "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v4, p1, 0x1

    invoke-static {p0, v4, v3}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->readXLWideString([BILjava/lang/StringBuilder;)I

    move-result v4

    .line 36
    .local v4, "read":I
    new-instance v5, Lorg/apache/poi/xssf/binary/XSSFBRichStr;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-direct {v5, v6, v7}, Lorg/apache/poi/xssf/binary/XSSFBRichStr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBRichStr;->string:Ljava/lang/String;

    return-object v0
.end method
