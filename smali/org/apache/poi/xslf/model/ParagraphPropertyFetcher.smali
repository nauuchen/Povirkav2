.class public abstract Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;
.super Lorg/apache/poi/xslf/model/PropertyFetcher;
.source "ParagraphPropertyFetcher.java"


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


# instance fields
.field _level:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "level"    # I

    .line 33
    .local p0, "this":Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher<TT;>;"
    invoke-direct {p0}, Lorg/apache/poi/xslf/model/PropertyFetcher;-><init>()V

    .line 34
    iput p1, p0, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->_level:I

    .line 35
    return-void
.end method


# virtual methods
.method public fetch(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z
    .locals 4
    .param p1, "shape"    # Lorg/apache/poi/xslf/usermodel/XSLFShape;

    .line 39
    .local p0, "this":Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher<TT;>;"
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "declare namespace p=\'http://schemas.openxmlformats.org/presentationml/2006/main\' declare namespace a=\'http://schemas.openxmlformats.org/drawingml/2006/main\' .//p:txBody/a:lstStyle/a:lvl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->_level:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pPr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/XmlObject;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    .line 44
    .local v0, "o":[Lorg/apache/xmlbeans/XmlObject;
    array-length v1, v0

    const/4 v2, 0x0

    if-ne v1, v3, :cond_0

    .line 45
    aget-object v1, v0, v2

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    .line 46
    .local v1, "props":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    invoke-virtual {p0, v1}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z

    move-result v2

    return v2

    .line 48
    .end local v1    # "props":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    :cond_0
    return v2
.end method

.method public abstract fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z
.end method
