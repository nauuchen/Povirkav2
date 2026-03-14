.class public Lorg/apache/poi/xssf/usermodel/XSSFEvenHeader;
.super Lorg/apache/poi/xssf/usermodel/extensions/XSSFHeaderFooter;
.source "XSSFEvenHeader.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Header;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;)V
    .locals 1
    .param p1, "headerFooter"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    .line 41
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFHeaderFooter;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;)V

    .line 42
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;->setDifferentOddEven(Z)V

    .line 43
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFEvenHeader;->getHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;->getEvenHeader()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 59
    if-nez p1, :cond_0

    .line 60
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFEvenHeader;->getHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;->unsetEvenHeader()V

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFEvenHeader;->getHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;->setEvenHeader(Ljava/lang/String;)V

    .line 64
    :goto_0
    return-void
.end method
