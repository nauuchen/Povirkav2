.class public Lorg/apache/poi/xdgf/usermodel/shape/ShapeDataAcceptor;
.super Ljava/lang/Object;
.source "ShapeDataAcceptor.java"

# interfaces
.implements Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Z
    .locals 3
    .param p1, "shape"    # Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    .line 37
    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->isDeleted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 38
    return v1

    .line 41
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->hasText()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTextAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    return v2

    .line 45
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->isShape1D()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    return v2

    .line 49
    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->hasMaster()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->hasMasterShape()Z

    move-result v0

    if-nez v0, :cond_3

    .line 50
    return v2

    .line 52
    :cond_3
    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->hasMaster()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->hasMasterShape()Z

    move-result v0

    if-nez v0, :cond_4

    .line 53
    return v2

    .line 59
    :cond_4
    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->hasMasterShape()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getMasterShape()Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->isTopmost()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 60
    return v2

    .line 62
    :cond_5
    return v1
.end method
