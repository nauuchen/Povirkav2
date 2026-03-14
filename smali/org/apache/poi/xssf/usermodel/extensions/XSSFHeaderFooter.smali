.class public abstract Lorg/apache/poi/xssf/usermodel/extensions/XSSFHeaderFooter;
.super Ljava/lang/Object;
.source "XSSFHeaderFooter.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/HeaderFooter;


# instance fields
.field private headerFooter:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

.field private helper:Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;

.field private stripFields:Z


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;)V
    .locals 1
    .param p1, "headerFooter"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFHeaderFooter;->stripFields:Z

    .line 135
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFHeaderFooter;->headerFooter:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    .line 136
    new-instance v0, Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;

    invoke-direct {v0}, Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFHeaderFooter;->helper:Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;

    .line 137
    return-void
.end method

.method public static stripFields(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .line 180
    invoke-static {p0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter;->stripFields(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public areFieldsStripped()Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFHeaderFooter;->stripFields:Z

    return v0
.end method

.method public getCenter()Ljava/lang/String;
    .locals 2

    .line 191
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFHeaderFooter;->helper:Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFHeaderFooter;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;->getCenterSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "text":Ljava/lang/String;
    iget-boolean v1, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFHeaderFooter;->stripFields:Z

    if-eqz v1, :cond_0

    .line 193
    invoke-static {v0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFHeaderFooter;->stripFields(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 194
    :cond_0
    return-object v0
.end method

.method public getHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 146
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFHeaderFooter;->headerFooter:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    return-object v0
.end method

.method public getLeft()Ljava/lang/String;
    .locals 2

    .line 201
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFHeaderFooter;->helper:Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFHeaderFooter;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;->getLeftSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "text":Ljava/lang/String;
    iget-boolean v1, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFHeaderFooter;->stripFields:Z

    if-eqz v1, :cond_0

    .line 203
    invoke-static {v0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFHeaderFooter;->stripFields(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 204
    :cond_0
    return-object v0
.end method

.method public getRight()Ljava/lang/String;
    .locals 2

    .line 211
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFHeaderFooter;->helper:Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFHeaderFooter;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;->getRightSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "text":Ljava/lang/String;
    iget-boolean v1, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFHeaderFooter;->stripFields:Z

    if-eqz v1, :cond_0

    .line 213
    invoke-static {v0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFHeaderFooter;->stripFields(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 214
    :cond_0
    return-object v0
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .line 150
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFHeaderFooter;->getText()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 152
    const-string v1, ""

    return-object v1

    .line 153
    :cond_0
    return-object v0
.end method

.method public setAreFieldsStripped(Z)V
    .locals 0
    .param p1, "stripFields"    # Z

    .line 171
    iput-boolean p1, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFHeaderFooter;->stripFields:Z

    .line 172
    return-void
.end method

.method public setCenter(Ljava/lang/String;)V
    .locals 2
    .param p1, "newCenter"    # Ljava/lang/String;

    .line 221
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFHeaderFooter;->helper:Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFHeaderFooter;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;->setCenterSection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFHeaderFooter;->setText(Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public setLeft(Ljava/lang/String;)V
    .locals 2
    .param p1, "newLeft"    # Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFHeaderFooter;->helper:Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFHeaderFooter;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;->setLeftSection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFHeaderFooter;->setText(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public setRight(Ljava/lang/String;)V
    .locals 2
    .param p1, "newRight"    # Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFHeaderFooter;->helper:Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFHeaderFooter;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;->setRightSection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFHeaderFooter;->setText(Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method protected abstract setText(Ljava/lang/String;)V
.end method
