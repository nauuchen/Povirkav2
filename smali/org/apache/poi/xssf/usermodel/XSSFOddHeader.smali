.class public Lorg/apache/poi/xssf/usermodel/XSSFOddHeader;
.super Lorg/apache/poi/xssf/usermodel/extensions/XSSFHeaderFooter;
.source "XSSFOddHeader.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Header;


# direct methods
.method protected constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;)V
    .locals 0
    .param p1, "headerFooter"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    .line 38
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFHeaderFooter;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFOddHeader;->getHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;->getOddHeader()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 55
    if-nez p1, :cond_0

    .line 56
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFOddHeader;->getHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;->unsetOddHeader()V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFOddHeader;->getHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;->setOddHeader(Ljava/lang/String;)V

    .line 60
    :goto_0
    return-void
.end method
