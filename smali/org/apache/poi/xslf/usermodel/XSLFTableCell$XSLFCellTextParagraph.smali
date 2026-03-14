.class Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextParagraph;
.super Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;
.source "XSLFTableCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xslf/usermodel/XSLFTableCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XSLFCellTextParagraph"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/xslf/usermodel/XSLFTableCell;


# direct methods
.method protected constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFTableCell;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;Lorg/apache/poi/xslf/usermodel/XSLFTextShape;)V
    .locals 0
    .param p2, "p"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
    .param p3, "shape"    # Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    .line 709
    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextParagraph;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    .line 710
    invoke-direct {p0, p2, p3}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;Lorg/apache/poi/xslf/usermodel/XSLFTextShape;)V

    .line 711
    return-void
.end method


# virtual methods
.method protected newTextRun(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;)Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextRun;
    .locals 2
    .param p1, "r"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    .line 715
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextRun;

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextParagraph;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    invoke-direct {v0, v1, p1, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextRun;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTableCell;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;)V

    return-object v0
.end method

.method protected bridge synthetic newTextRun(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;)Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
    .locals 1
    .param p1, "x0"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    .line 708
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextParagraph;->newTextRun(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;)Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextRun;

    move-result-object v0

    return-object v0
.end method
