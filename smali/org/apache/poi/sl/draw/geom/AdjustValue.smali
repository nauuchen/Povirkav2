.class public Lorg/apache/poi/sl/draw/geom/AdjustValue;
.super Lorg/apache/poi/sl/draw/geom/Guide;
.source "AdjustValue.java"


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/draw/binding/CTGeomGuide;)V
    .locals 2
    .param p1, "gd"    # Lorg/apache/poi/sl/draw/binding/CTGeomGuide;

    .line 30
    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTGeomGuide;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTGeomGuide;->getFmla()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/sl/draw/geom/Guide;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public evaluate(Lorg/apache/poi/sl/draw/geom/Context;)D
    .locals 4
    .param p1, "ctx"    # Lorg/apache/poi/sl/draw/geom/Context;

    .line 35
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/geom/AdjustValue;->getName()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/apache/poi/sl/draw/geom/Context;->getAdjustValue(Ljava/lang/String;)Lorg/apache/poi/sl/draw/geom/Guide;

    move-result-object v1

    .line 37
    .local v1, "adj":Lorg/apache/poi/sl/draw/geom/Guide;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lorg/apache/poi/sl/draw/geom/Guide;->evaluate(Lorg/apache/poi/sl/draw/geom/Context;)D

    move-result-wide v2

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/poi/sl/draw/geom/Guide;->evaluate(Lorg/apache/poi/sl/draw/geom/Context;)D

    move-result-wide v2

    :goto_0
    return-wide v2
.end method
