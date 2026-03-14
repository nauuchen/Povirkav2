.class Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$1;
.super Lorg/apache/poi/xslf/model/PropertyFetcher;
.source "XSLFSimpleShape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getXfrm(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/model/PropertyFetcher<",
        "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;


# direct methods
.method constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$1;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    invoke-direct {p0}, Lorg/apache/poi/xslf/model/PropertyFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public fetch(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z
    .locals 2
    .param p1, "shape"    # Lorg/apache/poi/xslf/usermodel/XSLFShape;

    .line 126
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getShapeProperties()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    .line 127
    .local v0, "xo":Lorg/apache/xmlbeans/XmlObject;
    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetXfrm()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    move-object v1, v0

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$1;->setValue(Ljava/lang/Object;)V

    .line 129
    const/4 v1, 0x1

    return v1

    .line 131
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
