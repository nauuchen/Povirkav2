.class Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$11;
.super Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;
.source "XSSFTextParagraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getTabStop(I)D
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;

.field final synthetic val$idx:I


# direct methods
.method constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;II)V
    .locals 0
    .param p2, "x0"    # I

    .line 468
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$11;->this$0:Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;

    iput p3, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$11;->val$idx:I

    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;-><init>(I)V

    return-void
.end method


# virtual methods
.method public fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z
    .locals 5
    .param p1, "props"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    .line 470
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetTabLst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getTabLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;

    move-result-object v0

    .line 472
    .local v0, "tabStops":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;
    iget v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$11;->val$idx:I

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;->sizeOfTabArray()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 473
    iget v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$11;->val$idx:I

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;->getTabArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;

    move-result-object v1

    .line 474
    .local v1, "ts":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;->getPos()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v2

    .line 475
    .local v2, "val":D
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$11;->setValue(Ljava/lang/Object;)V

    .line 476
    const/4 v4, 0x1

    return v4

    .line 479
    .end local v0    # "tabStops":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;
    .end local v1    # "ts":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;
    .end local v2    # "val":D
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
