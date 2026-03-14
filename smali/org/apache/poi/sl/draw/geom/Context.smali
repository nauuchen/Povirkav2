.class public Lorg/apache/poi/sl/draw/geom/Context;
.super Ljava/lang/Object;
.source "Context.java"


# instance fields
.field final _anchor:Ljava/awt/geom/Rectangle2D;

.field final _ctx:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field final _props:Lorg/apache/poi/sl/draw/geom/IAdjustableShape;


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/draw/geom/CustomGeometry;Ljava/awt/geom/Rectangle2D;Lorg/apache/poi/sl/draw/geom/IAdjustableShape;)V
    .locals 2
    .param p1, "geom"    # Lorg/apache/poi/sl/draw/geom/CustomGeometry;
    .param p2, "anchor"    # Ljava/awt/geom/Rectangle2D;
    .param p3, "props"    # Lorg/apache/poi/sl/draw/geom/IAdjustableShape;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/Context;->_ctx:Ljava/util/Map;

    .line 32
    iput-object p3, p0, Lorg/apache/poi/sl/draw/geom/Context;->_props:Lorg/apache/poi/sl/draw/geom/IAdjustableShape;

    .line 33
    iput-object p2, p0, Lorg/apache/poi/sl/draw/geom/Context;->_anchor:Ljava/awt/geom/Rectangle2D;

    .line 34
    iget-object v0, p1, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->adjusts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/sl/draw/geom/Guide;

    .line 35
    .local v1, "gd":Lorg/apache/poi/sl/draw/geom/Guide;
    invoke-virtual {p0, v1}, Lorg/apache/poi/sl/draw/geom/Context;->evaluate(Lorg/apache/poi/sl/draw/geom/Formula;)D

    goto :goto_0

    .line 37
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "gd":Lorg/apache/poi/sl/draw/geom/Guide;
    :cond_0
    iget-object v0, p1, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->guides:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/sl/draw/geom/Guide;

    .line 38
    .restart local v1    # "gd":Lorg/apache/poi/sl/draw/geom/Guide;
    invoke-virtual {p0, v1}, Lorg/apache/poi/sl/draw/geom/Context;->evaluate(Lorg/apache/poi/sl/draw/geom/Formula;)D

    goto :goto_1

    .line 40
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "gd":Lorg/apache/poi/sl/draw/geom/Guide;
    :cond_1
    return-void
.end method


# virtual methods
.method public evaluate(Lorg/apache/poi/sl/draw/geom/Formula;)D
    .locals 5
    .param p1, "fmla"    # Lorg/apache/poi/sl/draw/geom/Formula;

    .line 61
    invoke-interface {p1, p0}, Lorg/apache/poi/sl/draw/geom/Formula;->evaluate(Lorg/apache/poi/sl/draw/geom/Context;)D

    move-result-wide v0

    .line 62
    .local v0, "result":D
    instance-of v2, p1, Lorg/apache/poi/sl/draw/geom/Guide;

    if-eqz v2, :cond_0

    .line 63
    move-object v2, p1

    check-cast v2, Lorg/apache/poi/sl/draw/geom/Guide;

    invoke-virtual {v2}, Lorg/apache/poi/sl/draw/geom/Guide;->getName()Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "key":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 65
    iget-object v3, p0, Lorg/apache/poi/sl/draw/geom/Context;->_ctx:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    return-wide v0
.end method

.method public getAdjustValue(Ljava/lang/String;)Lorg/apache/poi/sl/draw/geom/Guide;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/Context;->_props:Lorg/apache/poi/sl/draw/geom/IAdjustableShape;

    invoke-interface {v0, p1}, Lorg/apache/poi/sl/draw/geom/IAdjustableShape;->getAdjustValue(Ljava/lang/String;)Lorg/apache/poi/sl/draw/geom/Guide;

    move-result-object v0

    return-object v0
.end method

.method public getShapeAnchor()Ljava/awt/geom/Rectangle2D;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/Context;->_anchor:Ljava/awt/geom/Rectangle2D;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)D
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 51
    const-string v0, "(\\+|-)?\\d+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    .line 55
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/Context;->_ctx:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 57
    .local v0, "val":Ljava/lang/Double;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/sl/draw/geom/BuiltInGuide;->valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/draw/geom/BuiltInGuide;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/sl/draw/geom/Context;->evaluate(Lorg/apache/poi/sl/draw/geom/Formula;)D

    move-result-wide v1

    :goto_0
    return-wide v1
.end method
