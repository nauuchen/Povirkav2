.class public abstract Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;
.super Ljava/lang/Object;
.source "ParagraphPropertyFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private _level:I

.field private _value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "level"    # I

    .line 44
    .local p0, "this":Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->_level:I

    .line 46
    return-void
.end method


# virtual methods
.method public abstract fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z
.end method

.method public fetch(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)Z
    .locals 4
    .param p1, "shape"    # Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    .line 55
    .local p0, "this":Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "declare namespace xdr=\'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing\' declare namespace a=\'http://schemas.openxmlformats.org/drawingml/2006/main\' .//xdr:txBody/a:lstStyle/a:lvl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->_level:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pPr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    .line 60
    .local v0, "o":[Lorg/apache/xmlbeans/XmlObject;
    array-length v1, v0

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 61
    aget-object v1, v0, v3

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    .line 62
    .local v1, "props":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z

    move-result v2

    return v2

    .line 64
    .end local v1    # "props":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    :cond_0
    return v3
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 37
    .local p0, "this":Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher<TT;>;"
    iget-object v0, p0, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->_value:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 41
    .local p0, "this":Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;, "Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->_value:Ljava/lang/Object;

    .line 42
    return-void
.end method
