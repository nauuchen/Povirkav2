.class public abstract Lorg/apache/poi/xslf/model/TextBodyPropertyFetcher;
.super Lorg/apache/poi/xslf/model/PropertyFetcher;
.source "TextBodyPropertyFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/poi/xslf/model/PropertyFetcher<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    .local p0, "this":Lorg/apache/poi/xslf/model/TextBodyPropertyFetcher;, "Lorg/apache/poi/xslf/model/TextBodyPropertyFetcher<TT;>;"
    invoke-direct {p0}, Lorg/apache/poi/xslf/model/PropertyFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public fetch(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z
    .locals 4
    .param p1, "shape"    # Lorg/apache/poi/xslf/usermodel/XSLFShape;

    .line 37
    .local p0, "this":Lorg/apache/poi/xslf/model/TextBodyPropertyFetcher;, "Lorg/apache/poi/xslf/model/TextBodyPropertyFetcher<TT;>;"
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    const-string v1, "declare namespace p=\'http://schemas.openxmlformats.org/presentationml/2006/main\' declare namespace a=\'http://schemas.openxmlformats.org/drawingml/2006/main\' .//p:txBody/a:bodyPr"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/XmlObject;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    .line 42
    .local v0, "o":[Lorg/apache/xmlbeans/XmlObject;
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 43
    aget-object v1, v0, v2

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    .line 44
    .local v1, "props":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    invoke-virtual {p0, v1}, Lorg/apache/poi/xslf/model/TextBodyPropertyFetcher;->fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;)Z

    move-result v2

    return v2

    .line 47
    .end local v1    # "props":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    :cond_0
    return v2
.end method

.method public abstract fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;)Z
.end method
