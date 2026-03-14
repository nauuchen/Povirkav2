.class public Lorg/apache/poi/xssf/usermodel/XSSFEvenFooter;
.super Lorg/apache/poi/xssf/usermodel/extensions/XSSFHeaderFooter;
.source "XSSFEvenFooter.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Footer;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;)V
    .locals 1
    .param p1, "headerFooter"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    .line 40
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFHeaderFooter;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;)V

    .line 41
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;->setDifferentOddEven(Z)V

    .line 42
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFEvenFooter;->getHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;->getEvenFooter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 58
    if-nez p1, :cond_0

    .line 59
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFEvenFooter;->getHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;->unsetEvenFooter()V

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFEvenFooter;->getHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;->setEvenFooter(Ljava/lang/String;)V

    .line 63
    :goto_0
    return-void
.end method
