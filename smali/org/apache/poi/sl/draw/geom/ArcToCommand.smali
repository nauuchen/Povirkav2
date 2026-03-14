.class public Lorg/apache/poi/sl/draw/geom/ArcToCommand;
.super Ljava/lang/Object;
.source "ArcToCommand.java"

# interfaces
.implements Lorg/apache/poi/sl/draw/geom/PathCommand;


# instance fields
.field private hr:Ljava/lang/String;

.field private stAng:Ljava/lang/String;

.field private swAng:Ljava/lang/String;

.field private wr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/poi/sl/draw/binding/CTPath2DArcTo;)V
    .locals 1
    .param p1, "arc"    # Lorg/apache/poi/sl/draw/binding/CTPath2DArcTo;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTPath2DArcTo;->getHR()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->hr:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTPath2DArcTo;->getWR()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->wr:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTPath2DArcTo;->getStAng()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->stAng:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTPath2DArcTo;->getSwAng()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->swAng:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private convertOoxml2AwtAngle(DDD)D
    .locals 16
    .param p1, "ooAngle"    # D
    .param p3, "width"    # D
    .param p5, "height"    # D

    .line 101
    div-double v0, p5, p3

    .line 103
    .local v0, "aspect":D
    move-wide/from16 v2, p1

    neg-double v4, v2

    .line 105
    .local v4, "awtAngle":D
    const-wide v6, 0x4076800000000000L    # 360.0

    rem-double v8, v4, v6

    .line 106
    .local v8, "awtAngle2":D
    sub-double v10, v4, v8

    .line 109
    .local v10, "awtAngle3":D
    const-wide v12, 0x4056800000000000L    # 90.0

    div-double v12, v8, v12

    double-to-int v12, v12

    const/4 v13, -0x3

    if-eq v12, v13, :cond_3

    const/4 v13, -0x2

    const-wide v14, 0x4066800000000000L    # 180.0

    if-eq v12, v13, :cond_2

    const/4 v13, -0x1

    if-eq v12, v13, :cond_2

    const/4 v13, 0x1

    if-eq v12, v13, :cond_1

    const/4 v13, 0x2

    if-eq v12, v13, :cond_1

    const/4 v13, 0x3

    if-eq v12, v13, :cond_0

    .line 124
    goto :goto_0

    .line 133
    :cond_0
    add-double/2addr v10, v6

    .line 134
    sub-double/2addr v8, v6

    goto :goto_0

    .line 128
    :cond_1
    add-double/2addr v10, v14

    .line 129
    sub-double/2addr v8, v14

    .line 130
    goto :goto_0

    .line 118
    :cond_2
    sub-double/2addr v10, v14

    .line 119
    add-double/2addr v8, v14

    .line 120
    goto :goto_0

    .line 112
    :cond_3
    sub-double/2addr v10, v6

    .line 113
    add-double/2addr v8, v6

    .line 114
    nop

    .line 139
    :goto_0
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    add-double/2addr v6, v10

    .line 140
    .end local v4    # "awtAngle":D
    .local v6, "awtAngle":D
    return-wide v6
.end method


# virtual methods
.method public execute(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/sl/draw/geom/Context;)V
    .locals 38
    .param p1, "path"    # Ljava/awt/geom/Path2D$Double;
    .param p2, "ctx"    # Lorg/apache/poi/sl/draw/geom/Context;

    .line 52
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    iget-object v0, v7, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->wr:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v9

    .line 53
    .local v9, "rx":D
    iget-object v0, v7, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->hr:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v11

    .line 54
    .local v11, "ry":D
    iget-object v0, v7, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->stAng:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x40ed4c0000000000L    # 60000.0

    div-double v13, v0, v2

    .line 55
    .local v13, "ooStart":D
    iget-object v0, v7, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->swAng:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v0

    div-double v15, v0, v2

    .line 58
    .local v15, "ooExtent":D
    move-object/from16 v0, p0

    move-wide v1, v13

    move-wide v3, v9

    move-wide v5, v11

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->convertOoxml2AwtAngle(DDD)D

    move-result-wide v31

    .line 59
    .local v31, "awtStart":D
    add-double v1, v13, v15

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->convertOoxml2AwtAngle(DDD)D

    move-result-wide v0

    sub-double v0, v0, v31

    .line 62
    .local v0, "awtSweep":D
    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 63
    .local v2, "radStart":D
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v4, v4, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    move-wide/from16 v33, v2

    .end local v2    # "radStart":D
    .local v33, "radStart":D
    mul-double v2, v11, v17

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    .line 65
    .local v2, "invStart":D
    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Path2D$Double;->getCurrentPoint()Ljava/awt/geom/Point2D;

    move-result-object v4

    .line 67
    .local v4, "pt":Ljava/awt/geom/Point2D;
    invoke-virtual {v4}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v5

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v17, v17, v9

    sub-double v5, v5, v17

    sub-double/2addr v5, v9

    .line 68
    .local v5, "x0":D
    invoke-virtual {v4}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v17

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v19, v19, v11

    sub-double v17, v17, v19

    sub-double v35, v17, v11

    .line 70
    .local v35, "y0":D
    new-instance v37, Ljava/awt/geom/Arc2D$Double;

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    mul-double v22, v9, v17

    mul-double v24, v11, v17

    const/16 v30, 0x0

    move-object/from16 v17, v37

    move-wide/from16 v18, v5

    move-wide/from16 v20, v35

    move-wide/from16 v26, v31

    move-wide/from16 v28, v0

    invoke-direct/range {v17 .. v30}, Ljava/awt/geom/Arc2D$Double;-><init>(DDDDDDI)V

    .line 71
    .local v17, "arc":Ljava/awt/geom/Arc2D;
    move-wide/from16 v18, v0

    .end local v0    # "awtSweep":D
    .local v18, "awtSweep":D
    const/4 v0, 0x1

    move-object/from16 v1, p1

    move-wide/from16 v20, v2

    move-object/from16 v2, v17

    .end local v17    # "arc":Ljava/awt/geom/Arc2D;
    .local v2, "arc":Ljava/awt/geom/Arc2D;
    .local v20, "invStart":D
    invoke-virtual {v1, v2, v0}, Ljava/awt/geom/Path2D$Double;->append(Ljava/awt/Shape;Z)V

    .line 72
    return-void
.end method
