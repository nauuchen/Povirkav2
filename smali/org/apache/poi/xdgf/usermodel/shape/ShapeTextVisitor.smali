.class public Lorg/apache/poi/xdgf/usermodel/shape/ShapeTextVisitor;
.super Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;
.source "ShapeTextVisitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xdgf/usermodel/shape/ShapeTextVisitor$TextAcceptor;
    }
.end annotation


# instance fields
.field protected text:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeTextVisitor;->text:Ljava/lang/StringBuilder;

    .line 34
    return-void
.end method


# virtual methods
.method protected getAcceptor()Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;
    .locals 1

    .line 41
    new-instance v0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeTextVisitor$TextAcceptor;

    invoke-direct {v0}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeTextVisitor$TextAcceptor;-><init>()V

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeTextVisitor;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/apache/poi/xdgf/usermodel/XDGFShape;Ljava/awt/geom/AffineTransform;I)V
    .locals 2
    .param p1, "shape"    # Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    .param p2, "globalTransform"    # Ljava/awt/geom/AffineTransform;
    .param p3, "level"    # I

    .line 46
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeTextVisitor;->text:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getText()Lorg/apache/poi/xdgf/usermodel/XDGFText;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFText;->getTextContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeTextVisitor;->text:Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    return-void
.end method
