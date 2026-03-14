.class Lorg/apache/poi/xslf/usermodel/XSLFShape$1;
.super Lorg/apache/poi/xslf/model/PropertyFetcher;
.source "XSLFShape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xslf/usermodel/XSLFShape;->getFillPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/model/PropertyFetcher<",
        "Lorg/apache/poi/sl/usermodel/PaintStyle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/xslf/usermodel/XSLFShape;

.field final synthetic val$hasPlaceholder:Z

.field final synthetic val$theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;


# direct methods
.method constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFShape;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Z)V
    .locals 0

    .line 155
    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape$1;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFShape;

    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape$1;->val$theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    iput-boolean p3, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape$1;->val$hasPlaceholder:Z

    invoke-direct {p0}, Lorg/apache/poi/xslf/model/PropertyFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public fetch(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z
    .locals 9
    .param p1, "shape"    # Lorg/apache/poi/xslf/usermodel/XSLFShape;

    .line 157
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getShapeProperties()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getFillDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;

    move-result-object v0

    .line 158
    .local v0, "fp":Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 159
    return v1

    .line 162
    :cond_0
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetNoFill()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 163
    invoke-virtual {p0, v4}, Lorg/apache/poi/xslf/usermodel/XSLFShape$1;->setValue(Ljava/lang/Object;)V

    .line 164
    return v3

    .line 167
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    .line 168
    .local v2, "pp":Lorg/apache/poi/openxml4j/opc/PackagePart;
    iget-object v5, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape$1;->val$theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    iget-boolean v6, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape$1;->val$hasPlaceholder:Z

    invoke-static {v0, v4, v2, v5, v6}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectPaint(Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Z)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v5

    .line 169
    .local v5, "paint":Lorg/apache/poi/sl/usermodel/PaintStyle;
    if-eqz v5, :cond_2

    .line 170
    invoke-virtual {p0, v5}, Lorg/apache/poi/xslf/usermodel/XSLFShape$1;->setValue(Ljava/lang/Object;)V

    .line 171
    return v3

    .line 174
    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSpStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;

    move-result-object v6

    .line 175
    .local v6, "style":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;
    if-eqz v6, :cond_3

    .line 176
    invoke-interface {v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;->getFillRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getFillDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;

    move-result-object v0

    .line 177
    iget-object v7, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape$1;->val$theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    iget-boolean v8, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape$1;->val$hasPlaceholder:Z

    invoke-static {v0, v4, v2, v7, v8}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectPaint(Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Z)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v5

    .line 179
    :cond_3
    if-eqz v5, :cond_4

    .line 180
    invoke-virtual {p0, v5}, Lorg/apache/poi/xslf/usermodel/XSLFShape$1;->setValue(Ljava/lang/Object;)V

    .line 181
    return v3

    .line 185
    :cond_4
    return v1
.end method
