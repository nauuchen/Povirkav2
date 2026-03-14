.class Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;
.super Ljava/lang/Object;
.source "XSSFBHeaderFooter.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final HEADER_FOOTER_HELPER:Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;


# instance fields
.field private final headerFooterTypeLabel:Ljava/lang/String;

.field private final isHeader:Z

.field private rawString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;

    invoke-direct {v0}, Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;-><init>()V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;->HEADER_FOOTER_HELPER:Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "headerFooterTypeLabel"    # Ljava/lang/String;
    .param p2, "isHeader"    # Z

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;->headerFooterTypeLabel:Ljava/lang/String;

    .line 38
    iput-boolean p2, p0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;->isHeader:Z

    .line 39
    return-void
.end method


# virtual methods
.method getHeaderFooterTypeLabel()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;->headerFooterTypeLabel:Ljava/lang/String;

    return-object v0
.end method

.method getRawString()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;->rawString:Ljava/lang/String;

    return-object v0
.end method

.method getString()Ljava/lang/String;
    .locals 6

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;->HEADER_FOOTER_HELPER:Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;

    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;->rawString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;->getLeftSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "left":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;->rawString:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;->getCenterSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "center":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;->rawString:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;->getRightSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "right":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_0
    const-string v4, " "

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 59
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    :cond_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 65
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method isHeader()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;->isHeader:Z

    return v0
.end method

.method setRawString(Ljava/lang/String;)V
    .locals 0
    .param p1, "rawString"    # Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;->rawString:Ljava/lang/String;

    .line 74
    return-void
.end method
