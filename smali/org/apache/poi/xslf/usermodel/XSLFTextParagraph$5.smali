.class Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$5;
.super Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;
.source "XSLFTextParagraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getBulletFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher<",
        "Ljava/awt/Color;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

.field final synthetic val$theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;


# direct methods
.method constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;ILorg/apache/poi/xslf/usermodel/XSLFTheme;)V
    .locals 0
    .param p2, "x0"    # I

    .line 271
    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$5;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    iput-object p3, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$5;->val$theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    invoke-direct {p0, p2}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;-><init>(I)V

    return-void
.end method


# virtual methods
.method public fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z
    .locals 4
    .param p1, "props"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    .line 273
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuClr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$5;->val$theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/xslf/usermodel/XSLFColor;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;)V

    .line 275
    .local v0, "c":Lorg/apache/poi/xslf/usermodel/XSLFColor;
    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getColor()Ljava/awt/Color;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$5;->setValue(Ljava/lang/Object;)V

    .line 276
    const/4 v1, 0x1

    return v1

    .line 278
    .end local v0    # "c":Lorg/apache/poi/xslf/usermodel/XSLFColor;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
