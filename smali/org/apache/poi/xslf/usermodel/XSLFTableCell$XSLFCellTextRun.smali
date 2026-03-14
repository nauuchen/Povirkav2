.class Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextRun;
.super Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
.source "XSLFTableCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xslf/usermodel/XSLFTableCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XSLFCellTextRun"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/xslf/usermodel/XSLFTableCell;


# direct methods
.method protected constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFTableCell;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;)V
    .locals 0
    .param p2, "r"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
    .param p3, "p"    # Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    .line 723
    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextRun;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    .line 724
    invoke-direct {p0, p2, p3}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;)V

    .line 725
    return-void
.end method

.method private getTextStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleTextStyle;
    .locals 4

    .line 766
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextRun;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->access$000(Lorg/apache/poi/xslf/usermodel/XSLFTableCell;Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    move-result-object v0

    .line 767
    .local v0, "tps":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;->isSetTcTxStyle()Z

    move-result v2

    if-nez v2, :cond_1

    .line 768
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextRun;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    sget-object v3, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;->wholeTbl:Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;

    invoke-static {v2, v3}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->access$000(Lorg/apache/poi/xslf/usermodel/XSLFTableCell;Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    move-result-object v0

    .line 770
    :cond_1
    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;->getTcTxStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleTextStyle;

    move-result-object v1

    :goto_0
    return-object v1
.end method


# virtual methods
.method public getFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 6

    .line 729
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextRun;->getTextStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleTextStyle;

    move-result-object v0

    .line 730
    .local v0, "txStyle":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleTextStyle;
    if-nez v0, :cond_0

    .line 731
    invoke-super {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v1

    return-object v1

    .line 734
    :cond_0
    const/4 v1, 0x0

    .line 735
    .local v1, "phClr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleTextStyle;->getFontRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontReference;

    move-result-object v2

    .line 736
    .local v2, "fontRef":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontReference;
    if-eqz v2, :cond_1

    .line 737
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontReference;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v1

    .line 740
    :cond_1
    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextRun;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v3

    .line 741
    .local v3, "theme":Lorg/apache/poi/xslf/usermodel/XSLFTheme;
    new-instance v4, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    invoke-direct {v4, v0, v3, v1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;)V

    .line 742
    .local v4, "c":Lorg/apache/poi/xslf/usermodel/XSLFColor;
    invoke-virtual {v4}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getColorStyle()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/poi/sl/draw/DrawPaint;->createSolidPaint(Lorg/apache/poi/sl/usermodel/ColorStyle;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object v5

    return-object v5
.end method

.method public isBold()Z
    .locals 3

    .line 747
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextRun;->getTextStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleTextStyle;

    move-result-object v0

    .line 748
    .local v0, "txStyle":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleTextStyle;
    if-nez v0, :cond_0

    .line 749
    invoke-super {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->isBold()Z

    move-result v1

    return v1

    .line 751
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleTextStyle;->isSetB()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleTextStyle;->getB()Lorg/openxmlformats/schemas/drawingml/x2006/main/STOnOffStyleType$Enum;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STOnOffStyleType$Enum;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isItalic()Z
    .locals 3

    .line 757
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextRun;->getTextStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleTextStyle;

    move-result-object v0

    .line 758
    .local v0, "txStyle":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleTextStyle;
    if-nez v0, :cond_0

    .line 759
    invoke-super {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->isItalic()Z

    move-result v1

    return v1

    .line 761
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleTextStyle;->isSetI()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleTextStyle;->getI()Lorg/openxmlformats/schemas/drawingml/x2006/main/STOnOffStyleType$Enum;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STOnOffStyleType$Enum;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
