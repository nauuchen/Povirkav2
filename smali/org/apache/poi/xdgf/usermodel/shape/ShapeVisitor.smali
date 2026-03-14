.class public abstract Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;
.super Ljava/lang/Object;
.source "ShapeVisitor.java"


# instance fields
.field protected _acceptor:Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;->getAcceptor()Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;->_acceptor:Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;

    .line 39
    return-void
.end method


# virtual methods
.method public accept(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Z
    .locals 1
    .param p1, "shape"    # Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    .line 59
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;->_acceptor:Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;

    invoke-interface {v0, p1}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;->accept(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Z

    move-result v0

    return v0
.end method

.method protected getAcceptor()Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;
    .locals 1

    .line 46
    new-instance v0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor$1;

    invoke-direct {v0, p0}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor$1;-><init>(Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;)V

    return-object v0
.end method

.method public setAcceptor(Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;)V
    .locals 0
    .param p1, "acceptor"    # Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;

    .line 55
    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;->_acceptor:Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;

    .line 56
    return-void
.end method

.method public abstract visit(Lorg/apache/poi/xdgf/usermodel/XDGFShape;Ljava/awt/geom/AffineTransform;I)V
.end method
