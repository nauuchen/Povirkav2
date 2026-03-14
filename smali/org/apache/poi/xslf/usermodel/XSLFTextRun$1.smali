.class Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;
.super Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;
.source "XSLFTextRun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/model/CharacterPropertyFetcher<",
        "Lorg/apache/poi/sl/usermodel/PaintStyle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

.field final synthetic val$hasPlaceholder:Z


# direct methods
.method constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;IZ)V
    .locals 0
    .param p2, "x0"    # I

    .line 168
    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    iput-boolean p3, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;->val$hasPlaceholder:Z

    invoke-direct {p0, p2}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;-><init>(I)V

    return-void
.end method


# virtual methods
.method public fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)Z
    .locals 9
    .param p1, "props"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    .line 171
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 172
    return v0

    .line 175
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    invoke-static {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->access$000(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;)Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object v1

    .line 176
    .local v1, "shape":Lorg/apache/poi/xslf/usermodel/XSLFShape;
    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSpStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;

    move-result-object v2

    .line 177
    .local v2, "style":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;
    const/4 v3, 0x0

    .line 178
    .local v3, "phClr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;->getFontRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontReference;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 179
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;->getFontRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontReference;

    move-result-object v4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontReference;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v3

    .line 182
    :cond_1
    invoke-static {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getFillDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;

    move-result-object v4

    .line 183
    .local v4, "fp":Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;
    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v5

    .line 184
    .local v5, "sheet":Lorg/apache/poi/xslf/usermodel/XSLFSheet;
    invoke-virtual {v5}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v6

    .line 185
    .local v6, "pp":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v5}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v7

    .line 186
    .local v7, "theme":Lorg/apache/poi/xslf/usermodel/XSLFTheme;
    iget-boolean v8, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;->val$hasPlaceholder:Z

    invoke-static {v4, v3, v6, v7, v8}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectPaint(Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Z)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v8

    .line 188
    .local v8, "ps":Lorg/apache/poi/sl/usermodel/PaintStyle;
    if-eqz v8, :cond_2

    .line 189
    invoke-virtual {p0, v8}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;->setValue(Ljava/lang/Object;)V

    .line 190
    const/4 v0, 0x1

    return v0

    .line 193
    :cond_2
    return v0
.end method
