.class public Lorg/apache/poi/sl/draw/geom/Path;
.super Ljava/lang/Object;
.source "Path.java"


# instance fields
.field _fill:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

.field _h:J

.field _stroke:Z

.field _w:J

.field private final commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/draw/geom/PathCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lorg/apache/poi/sl/draw/geom/Path;-><init>(ZZ)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/sl/draw/binding/CTPath2D;)V
    .locals 10
    .param p1, "spPath"    # Lorg/apache/poi/sl/draw/binding/CTPath2D;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Lorg/apache/poi/sl/draw/geom/Path$1;->$SwitchMap$org$apache$poi$sl$draw$binding$STPathFillMode:[I

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTPath2D;->getFill()Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/sl/draw/binding/STPathFillMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    .line 67
    sget-object v0, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->NORM:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/Path;->_fill:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    goto :goto_0

    .line 65
    :cond_0
    sget-object v0, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->LIGHTEN_LESS:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/Path;->_fill:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    goto :goto_0

    .line 64
    :cond_1
    sget-object v0, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->LIGHTEN:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/Path;->_fill:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    goto :goto_0

    .line 63
    :cond_2
    sget-object v0, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->DARKEN_LESS:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/Path;->_fill:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    goto :goto_0

    .line 62
    :cond_3
    sget-object v0, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->DARKEN:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/Path;->_fill:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    goto :goto_0

    .line 61
    :cond_4
    sget-object v0, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->NONE:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/Path;->_fill:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    .line 69
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTPath2D;->isStroke()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/sl/draw/geom/Path;->_stroke:Z

    .line 70
    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTPath2D;->isSetW()Z

    move-result v0

    const-wide/16 v3, -0x1

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTPath2D;->getW()J

    move-result-wide v5

    goto :goto_1

    :cond_5
    move-wide v5, v3

    :goto_1
    iput-wide v5, p0, Lorg/apache/poi/sl/draw/geom/Path;->_w:J

    .line 71
    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTPath2D;->isSetH()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTPath2D;->getH()J

    move-result-wide v3

    :cond_6
    iput-wide v3, p0, Lorg/apache/poi/sl/draw/geom/Path;->_h:J

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/Path;->commands:Ljava/util/List;

    .line 75
    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTPath2D;->getCloseOrMoveToOrLnTo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 76
    .local v3, "ch":Ljava/lang/Object;
    instance-of v4, v3, Lorg/apache/poi/sl/draw/binding/CTPath2DMoveTo;

    if-eqz v4, :cond_7

    .line 77
    move-object v4, v3

    check-cast v4, Lorg/apache/poi/sl/draw/binding/CTPath2DMoveTo;

    invoke-virtual {v4}, Lorg/apache/poi/sl/draw/binding/CTPath2DMoveTo;->getPt()Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;

    move-result-object v4

    .line 78
    .local v4, "pt":Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;
    iget-object v5, p0, Lorg/apache/poi/sl/draw/geom/Path;->commands:Ljava/util/List;

    new-instance v6, Lorg/apache/poi/sl/draw/geom/MoveToCommand;

    invoke-direct {v6, v4}, Lorg/apache/poi/sl/draw/geom/MoveToCommand;-><init>(Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .end local v4    # "pt":Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;
    goto/16 :goto_3

    :cond_7
    instance-of v4, v3, Lorg/apache/poi/sl/draw/binding/CTPath2DLineTo;

    if-eqz v4, :cond_8

    .line 80
    move-object v4, v3

    check-cast v4, Lorg/apache/poi/sl/draw/binding/CTPath2DLineTo;

    invoke-virtual {v4}, Lorg/apache/poi/sl/draw/binding/CTPath2DLineTo;->getPt()Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;

    move-result-object v4

    .line 81
    .restart local v4    # "pt":Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;
    iget-object v5, p0, Lorg/apache/poi/sl/draw/geom/Path;->commands:Ljava/util/List;

    new-instance v6, Lorg/apache/poi/sl/draw/geom/LineToCommand;

    invoke-direct {v6, v4}, Lorg/apache/poi/sl/draw/geom/LineToCommand;-><init>(Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .end local v4    # "pt":Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;
    goto/16 :goto_3

    :cond_8
    instance-of v4, v3, Lorg/apache/poi/sl/draw/binding/CTPath2DArcTo;

    if-eqz v4, :cond_9

    .line 83
    move-object v4, v3

    check-cast v4, Lorg/apache/poi/sl/draw/binding/CTPath2DArcTo;

    .line 84
    .local v4, "arc":Lorg/apache/poi/sl/draw/binding/CTPath2DArcTo;
    iget-object v5, p0, Lorg/apache/poi/sl/draw/geom/Path;->commands:Ljava/util/List;

    new-instance v6, Lorg/apache/poi/sl/draw/geom/ArcToCommand;

    invoke-direct {v6, v4}, Lorg/apache/poi/sl/draw/geom/ArcToCommand;-><init>(Lorg/apache/poi/sl/draw/binding/CTPath2DArcTo;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v4    # "arc":Lorg/apache/poi/sl/draw/binding/CTPath2DArcTo;
    goto :goto_3

    :cond_9
    instance-of v4, v3, Lorg/apache/poi/sl/draw/binding/CTPath2DQuadBezierTo;

    const/4 v5, 0x0

    if-eqz v4, :cond_a

    .line 86
    move-object v4, v3

    check-cast v4, Lorg/apache/poi/sl/draw/binding/CTPath2DQuadBezierTo;

    .line 87
    .local v4, "bez":Lorg/apache/poi/sl/draw/binding/CTPath2DQuadBezierTo;
    invoke-virtual {v4}, Lorg/apache/poi/sl/draw/binding/CTPath2DQuadBezierTo;->getPt()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;

    .line 88
    .local v5, "pt1":Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;
    invoke-virtual {v4}, Lorg/apache/poi/sl/draw/binding/CTPath2DQuadBezierTo;->getPt()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;

    .line 89
    .local v6, "pt2":Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;
    iget-object v7, p0, Lorg/apache/poi/sl/draw/geom/Path;->commands:Ljava/util/List;

    new-instance v8, Lorg/apache/poi/sl/draw/geom/QuadToCommand;

    invoke-direct {v8, v5, v6}, Lorg/apache/poi/sl/draw/geom/QuadToCommand;-><init>(Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .end local v4    # "bez":Lorg/apache/poi/sl/draw/binding/CTPath2DQuadBezierTo;
    .end local v5    # "pt1":Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;
    .end local v6    # "pt2":Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;
    goto :goto_3

    :cond_a
    instance-of v4, v3, Lorg/apache/poi/sl/draw/binding/CTPath2DCubicBezierTo;

    if-eqz v4, :cond_b

    .line 91
    move-object v4, v3

    check-cast v4, Lorg/apache/poi/sl/draw/binding/CTPath2DCubicBezierTo;

    .line 92
    .local v4, "bez":Lorg/apache/poi/sl/draw/binding/CTPath2DCubicBezierTo;
    invoke-virtual {v4}, Lorg/apache/poi/sl/draw/binding/CTPath2DCubicBezierTo;->getPt()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;

    .line 93
    .restart local v5    # "pt1":Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;
    invoke-virtual {v4}, Lorg/apache/poi/sl/draw/binding/CTPath2DCubicBezierTo;->getPt()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;

    .line 94
    .restart local v6    # "pt2":Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;
    invoke-virtual {v4}, Lorg/apache/poi/sl/draw/binding/CTPath2DCubicBezierTo;->getPt()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;

    .line 95
    .local v7, "pt3":Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;
    iget-object v8, p0, Lorg/apache/poi/sl/draw/geom/Path;->commands:Ljava/util/List;

    new-instance v9, Lorg/apache/poi/sl/draw/geom/CurveToCommand;

    invoke-direct {v9, v5, v6, v7}, Lorg/apache/poi/sl/draw/geom/CurveToCommand;-><init>(Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .end local v4    # "bez":Lorg/apache/poi/sl/draw/binding/CTPath2DCubicBezierTo;
    .end local v5    # "pt1":Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;
    .end local v6    # "pt2":Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;
    .end local v7    # "pt3":Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;
    goto :goto_3

    :cond_b
    instance-of v4, v3, Lorg/apache/poi/sl/draw/binding/CTPath2DClose;

    if-eqz v4, :cond_c

    .line 97
    iget-object v4, p0, Lorg/apache/poi/sl/draw/geom/Path;->commands:Ljava/util/List;

    new-instance v5, Lorg/apache/poi/sl/draw/geom/ClosePathCommand;

    invoke-direct {v5}, Lorg/apache/poi/sl/draw/geom/ClosePathCommand;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    .end local v3    # "ch":Ljava/lang/Object;
    :goto_3
    goto/16 :goto_2

    .restart local v3    # "ch":Ljava/lang/Object;
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported path segment: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "ch":Ljava/lang/Object;
    :cond_d
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 2
    .param p1, "fill"    # Z
    .param p2, "stroke"    # Z

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/Path;->commands:Ljava/util/List;

    .line 53
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/poi/sl/draw/geom/Path;->_w:J

    .line 54
    iput-wide v0, p0, Lorg/apache/poi/sl/draw/geom/Path;->_h:J

    .line 55
    if-eqz p1, :cond_0

    sget-object v0, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->NORM:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->NONE:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/Path;->_fill:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    .line 56
    iput-boolean p2, p0, Lorg/apache/poi/sl/draw/geom/Path;->_stroke:Z

    .line 57
    return-void
.end method


# virtual methods
.method public addCommand(Lorg/apache/poi/sl/draw/geom/PathCommand;)V
    .locals 1
    .param p1, "cmd"    # Lorg/apache/poi/sl/draw/geom/PathCommand;

    .line 105
    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/Path;->commands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method public getFill()Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/Path;->_fill:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    return-object v0
.end method

.method public getH()J
    .locals 2

    .line 136
    iget-wide v0, p0, Lorg/apache/poi/sl/draw/geom/Path;->_h:J

    return-wide v0
.end method

.method public getPath(Lorg/apache/poi/sl/draw/geom/Context;)Ljava/awt/geom/Path2D$Double;
    .locals 3
    .param p1, "ctx"    # Lorg/apache/poi/sl/draw/geom/Context;

    .line 112
    new-instance v0, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Path2D$Double;-><init>()V

    .line 113
    .local v0, "path":Ljava/awt/geom/Path2D$Double;
    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/Path;->commands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/sl/draw/geom/PathCommand;

    .line 114
    .local v2, "cmd":Lorg/apache/poi/sl/draw/geom/PathCommand;
    invoke-interface {v2, v0, p1}, Lorg/apache/poi/sl/draw/geom/PathCommand;->execute(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/sl/draw/geom/Context;)V

    .end local v2    # "cmd":Lorg/apache/poi/sl/draw/geom/PathCommand;
    goto :goto_0

    .line 116
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object v0
.end method

.method public getW()J
    .locals 2

    .line 132
    iget-wide v0, p0, Lorg/apache/poi/sl/draw/geom/Path;->_w:J

    return-wide v0
.end method

.method public isFilled()Z
    .locals 2

    .line 124
    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/Path;->_fill:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    sget-object v1, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->NONE:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStroked()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lorg/apache/poi/sl/draw/geom/Path;->_stroke:Z

    return v0
.end method
