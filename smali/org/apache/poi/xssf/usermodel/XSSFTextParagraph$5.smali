.class Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$5;
.super Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;
.source "XSSFTextParagraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getBulletFontColor()Ljava/awt/Color;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher<",
        "Ljava/awt/Color;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;


# direct methods
.method constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V
    .locals 0
    .param p2, "x0"    # I

    .line 256
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$5;->this$0:Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;

    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;-><init>(I)V

    return-void
.end method


# virtual methods
.method public fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z
    .locals 7
    .param p1, "props"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    .line 258
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuClr()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 259
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->isSetSrgbClr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->getSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object v0

    .line 261
    .local v0, "clr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;->getVal()[B

    move-result-object v2

    .line 262
    .local v2, "rgb":[B
    new-instance v3, Ljava/awt/Color;

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v4, 0x1

    aget-byte v5, v2, v4

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x2

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    invoke-direct {v3, v1, v5, v6}, Ljava/awt/Color;-><init>(III)V

    invoke-virtual {p0, v3}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$5;->setValue(Ljava/lang/Object;)V

    .line 263
    return v4

    .line 266
    .end local v0    # "clr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;
    .end local v2    # "rgb":[B
    :cond_0
    return v1
.end method
