.class Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$13;
.super Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;
.source "XSLFTextParagraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getTabStop(I)D
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

.field final synthetic val$idx:I


# direct methods
.method constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;II)V
    .locals 0
    .param p2, "x0"    # I

    .line 509
    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$13;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    iput p3, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$13;->val$idx:I

    invoke-direct {p0, p2}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;-><init>(I)V

    return-void
.end method


# virtual methods
.method public fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z
    .locals 5
    .param p1, "props"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    .line 511
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetTabLst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getTabLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;

    move-result-object v0

    .line 513
    .local v0, "tabStops":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;
    iget v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$13;->val$idx:I

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;->sizeOfTabArray()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 514
    iget v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$13;->val$idx:I

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;->getTabArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;

    move-result-object v1

    .line 515
    .local v1, "ts":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;->getPos()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v2

    .line 516
    .local v2, "val":D
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$13;->setValue(Ljava/lang/Object;)V

    .line 517
    const/4 v4, 0x1

    return v4

    .line 520
    .end local v0    # "tabStops":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;
    .end local v1    # "ts":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;
    .end local v2    # "val":D
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
