.class public Lorg/apache/poi/sl/draw/geom/CustomGeometry;
.super Ljava/lang/Object;
.source "CustomGeometry.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/poi/sl/draw/geom/Path;",
        ">;"
    }
.end annotation


# instance fields
.field final adjusts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/draw/geom/Guide;",
            ">;"
        }
    .end annotation
.end field

.field final guides:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/draw/geom/Guide;",
            ">;"
        }
    .end annotation
.end field

.field final paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/draw/geom/Path;",
            ">;"
        }
    .end annotation
.end field

.field textBounds:Lorg/apache/poi/sl/draw/geom/Path;


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;)V
    .locals 8
    .param p1, "geom"    # Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->adjusts:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->guides:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->paths:Ljava/util/List;

    .line 43
    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;->getAvLst()Lorg/apache/poi/sl/draw/binding/CTGeomGuideList;

    move-result-object v0

    .line 44
    .local v0, "avLst":Lorg/apache/poi/sl/draw/binding/CTGeomGuideList;
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Lorg/apache/poi/sl/draw/binding/CTGeomGuideList;->getGd()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/sl/draw/binding/CTGeomGuide;

    .line 46
    .local v2, "gd":Lorg/apache/poi/sl/draw/binding/CTGeomGuide;
    iget-object v3, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->adjusts:Ljava/util/List;

    new-instance v4, Lorg/apache/poi/sl/draw/geom/AdjustValue;

    invoke-direct {v4, v2}, Lorg/apache/poi/sl/draw/geom/AdjustValue;-><init>(Lorg/apache/poi/sl/draw/binding/CTGeomGuide;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "gd":Lorg/apache/poi/sl/draw/binding/CTGeomGuide;
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;->getGdLst()Lorg/apache/poi/sl/draw/binding/CTGeomGuideList;

    move-result-object v1

    .line 51
    .local v1, "gdLst":Lorg/apache/poi/sl/draw/binding/CTGeomGuideList;
    if-eqz v1, :cond_1

    .line 52
    invoke-virtual {v1}, Lorg/apache/poi/sl/draw/binding/CTGeomGuideList;->getGd()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/sl/draw/binding/CTGeomGuide;

    .line 53
    .local v3, "gd":Lorg/apache/poi/sl/draw/binding/CTGeomGuide;
    iget-object v4, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->guides:Ljava/util/List;

    new-instance v5, Lorg/apache/poi/sl/draw/geom/Guide;

    invoke-direct {v5, v3}, Lorg/apache/poi/sl/draw/geom/Guide;-><init>(Lorg/apache/poi/sl/draw/binding/CTGeomGuide;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 57
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "gd":Lorg/apache/poi/sl/draw/binding/CTGeomGuide;
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;->getPathLst()Lorg/apache/poi/sl/draw/binding/CTPath2DList;

    move-result-object v2

    .line 58
    .local v2, "pathLst":Lorg/apache/poi/sl/draw/binding/CTPath2DList;
    if-eqz v2, :cond_2

    .line 59
    invoke-virtual {v2}, Lorg/apache/poi/sl/draw/binding/CTPath2DList;->getPath()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/sl/draw/binding/CTPath2D;

    .line 60
    .local v4, "spPath":Lorg/apache/poi/sl/draw/binding/CTPath2D;
    iget-object v5, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->paths:Ljava/util/List;

    new-instance v6, Lorg/apache/poi/sl/draw/geom/Path;

    invoke-direct {v6, v4}, Lorg/apache/poi/sl/draw/geom/Path;-><init>(Lorg/apache/poi/sl/draw/binding/CTPath2D;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 64
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "spPath":Lorg/apache/poi/sl/draw/binding/CTPath2D;
    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;->getRect()Lorg/apache/poi/sl/draw/binding/CTGeomRect;

    move-result-object v3

    .line 65
    .local v3, "rect":Lorg/apache/poi/sl/draw/binding/CTGeomRect;
    if-eqz v3, :cond_3

    .line 66
    new-instance v4, Lorg/apache/poi/sl/draw/geom/Path;

    invoke-direct {v4}, Lorg/apache/poi/sl/draw/geom/Path;-><init>()V

    iput-object v4, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->textBounds:Lorg/apache/poi/sl/draw/geom/Path;

    .line 67
    new-instance v5, Lorg/apache/poi/sl/draw/geom/MoveToCommand;

    invoke-virtual {v3}, Lorg/apache/poi/sl/draw/binding/CTGeomRect;->getL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lorg/apache/poi/sl/draw/binding/CTGeomRect;->getT()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/poi/sl/draw/geom/MoveToCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/apache/poi/sl/draw/geom/Path;->addCommand(Lorg/apache/poi/sl/draw/geom/PathCommand;)V

    .line 68
    iget-object v4, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->textBounds:Lorg/apache/poi/sl/draw/geom/Path;

    new-instance v5, Lorg/apache/poi/sl/draw/geom/LineToCommand;

    invoke-virtual {v3}, Lorg/apache/poi/sl/draw/binding/CTGeomRect;->getR()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lorg/apache/poi/sl/draw/binding/CTGeomRect;->getT()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/poi/sl/draw/geom/LineToCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/apache/poi/sl/draw/geom/Path;->addCommand(Lorg/apache/poi/sl/draw/geom/PathCommand;)V

    .line 69
    iget-object v4, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->textBounds:Lorg/apache/poi/sl/draw/geom/Path;

    new-instance v5, Lorg/apache/poi/sl/draw/geom/LineToCommand;

    invoke-virtual {v3}, Lorg/apache/poi/sl/draw/binding/CTGeomRect;->getR()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lorg/apache/poi/sl/draw/binding/CTGeomRect;->getB()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/poi/sl/draw/geom/LineToCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/apache/poi/sl/draw/geom/Path;->addCommand(Lorg/apache/poi/sl/draw/geom/PathCommand;)V

    .line 70
    iget-object v4, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->textBounds:Lorg/apache/poi/sl/draw/geom/Path;

    new-instance v5, Lorg/apache/poi/sl/draw/geom/LineToCommand;

    invoke-virtual {v3}, Lorg/apache/poi/sl/draw/binding/CTGeomRect;->getL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lorg/apache/poi/sl/draw/binding/CTGeomRect;->getB()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/poi/sl/draw/geom/LineToCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/apache/poi/sl/draw/geom/Path;->addCommand(Lorg/apache/poi/sl/draw/geom/PathCommand;)V

    .line 71
    iget-object v4, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->textBounds:Lorg/apache/poi/sl/draw/geom/Path;

    new-instance v5, Lorg/apache/poi/sl/draw/geom/ClosePathCommand;

    invoke-direct {v5}, Lorg/apache/poi/sl/draw/geom/ClosePathCommand;-><init>()V

    invoke-virtual {v4, v5}, Lorg/apache/poi/sl/draw/geom/Path;->addCommand(Lorg/apache/poi/sl/draw/geom/PathCommand;)V

    .line 73
    :cond_3
    return-void
.end method


# virtual methods
.method public getTextBounds()Lorg/apache/poi/sl/draw/geom/Path;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->textBounds:Lorg/apache/poi/sl/draw/geom/Path;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/sl/draw/geom/Path;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->paths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
