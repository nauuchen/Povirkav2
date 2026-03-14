.class public Lorg/apache/poi/xdgf/usermodel/shape/ShapeDebuggerRenderer;
.super Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;
.source "ShapeDebuggerRenderer.java"


# instance fields
.field _debugAcceptor:Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeDebuggerRenderer;->_debugAcceptor:Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/awt/Graphics2D;)V
    .locals 1
    .param p1, "g"    # Ljava/awt/Graphics2D;

    .line 35
    invoke-direct {p0, p1}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;-><init>(Ljava/awt/Graphics2D;)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeDebuggerRenderer;->_debugAcceptor:Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;

    .line 36
    return-void
.end method


# virtual methods
.method protected drawPath(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Ljava/awt/geom/Path2D;
    .locals 11
    .param p1, "shape"    # Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    .line 45
    invoke-super {p0, p1}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->drawPath(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Ljava/awt/geom/Path2D;

    move-result-object v0

    .line 46
    .local v0, "path":Ljava/awt/geom/Path2D;
    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeDebuggerRenderer;->_debugAcceptor:Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;->accept(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeDebuggerRenderer;->_graphics:Ljava/awt/Graphics2D;

    invoke-virtual {v1}, Ljava/awt/Graphics2D;->getFont()Ljava/awt/Font;

    move-result-object v1

    .line 50
    .local v1, "f":Ljava/awt/Font;
    iget-object v2, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeDebuggerRenderer;->_graphics:Ljava/awt/Graphics2D;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/awt/Graphics2D;->scale(DD)V

    .line 51
    iget-object v2, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeDebuggerRenderer;->_graphics:Ljava/awt/Graphics2D;

    const v7, 0x3d4ccccd    # 0.05f

    invoke-virtual {v1, v7}, Ljava/awt/Font;->deriveFont(F)Ljava/awt/Font;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/awt/Graphics2D;->setFont(Ljava/awt/Font;)V

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getID()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "shapeId":Ljava/lang/String;
    const v7, -0x42333333    # -0.1f

    .line 56
    .local v7, "shapeOffset":F
    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->hasMasterShape()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 57
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " MS:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getMasterShape()Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getID()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 58
    const v8, 0x3e19999a    # 0.15f

    sub-float/2addr v7, v8

    .line 61
    :cond_1
    iget-object v8, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeDebuggerRenderer;->_graphics:Ljava/awt/Graphics2D;

    const/4 v9, 0x0

    invoke-virtual {v8, v2, v7, v9}, Ljava/awt/Graphics2D;->drawString(Ljava/lang/String;FF)V

    .line 62
    iget-object v8, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeDebuggerRenderer;->_graphics:Ljava/awt/Graphics2D;

    invoke-virtual {v8, v1}, Ljava/awt/Graphics2D;->setFont(Ljava/awt/Font;)V

    .line 63
    iget-object v8, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeDebuggerRenderer;->_graphics:Ljava/awt/Graphics2D;

    invoke-virtual {v8, v3, v4, v5, v6}, Ljava/awt/Graphics2D;->scale(DD)V

    .line 66
    .end local v1    # "f":Ljava/awt/Font;
    .end local v2    # "shapeId":Ljava/lang/String;
    .end local v7    # "shapeOffset":F
    :cond_2
    return-object v0
.end method

.method public setDebugAcceptor(Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;)V
    .locals 0
    .param p1, "acceptor"    # Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;

    .line 39
    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeDebuggerRenderer;->_debugAcceptor:Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;

    .line 40
    return-void
.end method
