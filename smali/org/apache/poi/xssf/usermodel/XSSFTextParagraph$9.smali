.class Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$9;
.super Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;
.source "XSSFTextParagraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getRightMargin()D
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


# direct methods
.method constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V
    .locals 0
    .param p2, "x0"    # I

    .line 433
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$9;->this$0:Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;

    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;-><init>(I)V

    return-void
.end method


# virtual methods
.method public fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z
    .locals 3
    .param p1, "props"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    .line 435
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetMarR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getMarR()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v0

    .line 437
    .local v0, "val":D
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$9;->setValue(Ljava/lang/Object;)V

    .line 438
    const/4 v2, 0x1

    return v2

    .line 440
    .end local v0    # "val":D
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
