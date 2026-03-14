.class Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;
.super Lorg/apache/poi/xslf/model/PropertyFetcher;
.source "XSLFSimpleShape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLinePaint()Lorg/apache/poi/sl/usermodel/PaintStyle;
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
.field final synthetic this$0:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

.field final synthetic val$hasPlaceholder:Z

.field final synthetic val$theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;


# direct methods
.method constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Z)V
    .locals 0

    .line 318
    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;->val$theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    iput-boolean p3, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;->val$hasPlaceholder:Z

    invoke-direct {p0}, Lorg/apache/poi/xslf/model/PropertyFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public fetch(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z
    .locals 10
    .param p1, "shape"    # Lorg/apache/poi/xslf/usermodel/XSLFShape;

    .line 321
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->access$000(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v1

    .line 322
    .local v1, "spPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    invoke-static {v1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getFillDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;

    move-result-object v2

    .line 324
    .local v2, "fp":Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetNoFill()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 325
    invoke-virtual {p0, v4}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;->setValue(Ljava/lang/Object;)V

    .line 326
    return v3

    .line 329
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v5

    .line 330
    .local v5, "pp":Lorg/apache/poi/openxml4j/opc/PackagePart;
    iget-object v6, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;->val$theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    iget-boolean v7, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;->val$hasPlaceholder:Z

    invoke-static {v2, v4, v5, v6, v7}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectPaint(Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Z)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v6

    .line 331
    .local v6, "paint":Lorg/apache/poi/sl/usermodel/PaintStyle;
    if-eqz v6, :cond_1

    .line 332
    invoke-virtual {p0, v6}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;->setValue(Ljava/lang/Object;)V

    .line 333
    return v3

    .line 336
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSpStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;

    move-result-object v7

    .line 337
    .local v7, "style":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;
    if-eqz v7, :cond_2

    .line 338
    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;->getLnRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getFillDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;

    move-result-object v2

    .line 339
    iget-object v8, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;->val$theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    iget-boolean v9, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;->val$hasPlaceholder:Z

    invoke-static {v2, v4, v5, v8, v9}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectPaint(Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Z)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v6

    .line 342
    if-nez v6, :cond_2

    .line 343
    invoke-virtual {p0, v7, v5}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;->getThemePaint(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v6

    .line 347
    :cond_2
    if-eqz v6, :cond_3

    .line 348
    invoke-virtual {p0, v6}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;->setValue(Ljava/lang/Object;)V

    .line 349
    return v3

    .line 352
    :cond_3
    return v0
.end method

.method getThemePaint(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 7
    .param p1, "style"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;
    .param p2, "pp"    # Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 357
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;->getLnRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    move-result-object v0

    .line 358
    .local v0, "lnRef":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 359
    return-object v1

    .line 361
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;->getIdx()J

    move-result-wide v2

    long-to-int v3, v2

    .line 362
    .local v3, "idx":I
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v2

    .line 363
    .local v2, "phClr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;
    if-gtz v3, :cond_1

    .line 364
    return-object v1

    .line 367
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;->val$theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;->getThemeElements()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;->getFmtScheme()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrix;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrix;->getLnStyleLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineStyleList;

    move-result-object v1

    add-int/lit8 v4, v3, -0x1

    invoke-interface {v1, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineStyleList;->getLnArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v1

    .line 368
    .local v1, "props":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    invoke-static {v1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getFillDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;

    move-result-object v4

    .line 369
    .local v4, "fp":Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;
    iget-object v5, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;->val$theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    iget-boolean v6, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;->val$hasPlaceholder:Z

    invoke-static {v4, v2, p2, v5, v6}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectPaint(Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Z)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v5

    return-object v5
.end method
