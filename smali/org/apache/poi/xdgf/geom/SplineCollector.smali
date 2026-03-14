.class public Lorg/apache/poi/xdgf/geom/SplineCollector;
.super Ljava/lang/Object;
.source "SplineCollector.java"


# instance fields
.field _knots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineKnot;",
            ">;"
        }
    .end annotation
.end field

.field _start:Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;)V
    .locals 1
    .param p1, "start"    # Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xdgf/geom/SplineCollector;->_knots:Ljava/util/ArrayList;

    .line 38
    iput-object p1, p0, Lorg/apache/poi/xdgf/geom/SplineCollector;->_start:Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    .line 39
    return-void
.end method


# virtual methods
.method public addKnot(Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineKnot;)V
    .locals 1
    .param p1, "knot"    # Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineKnot;

    .line 42
    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineKnot;->getDel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lorg/apache/poi/xdgf/geom/SplineCollector;->_knots:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_0
    return-void
.end method

.method public addToPath(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V
    .locals 15
    .param p1, "path"    # Ljava/awt/geom/Path2D$Double;
    .param p2, "parent"    # Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    .line 49
    move-object v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Path2D$Double;->getCurrentPoint()Ljava/awt/geom/Point2D;

    move-result-object v1

    .line 52
    .local v1, "last":Ljava/awt/geom/Point2D;
    new-instance v2, Lcom/graphbuilder/curve/ControlPath;

    invoke-direct {v2}, Lcom/graphbuilder/curve/ControlPath;-><init>()V

    .line 53
    .local v2, "controlPath":Lcom/graphbuilder/curve/ControlPath;
    new-instance v3, Lcom/graphbuilder/curve/ValueVector;

    iget-object v4, v0, Lorg/apache/poi/xdgf/geom/SplineCollector;->_knots:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    invoke-direct {v3, v4}, Lcom/graphbuilder/curve/ValueVector;-><init>(I)V

    .line 55
    .local v3, "knots":Lcom/graphbuilder/curve/ValueVector;
    iget-object v4, v0, Lorg/apache/poi/xdgf/geom/SplineCollector;->_start:Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    invoke-virtual {v4}, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->getB()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 56
    .local v4, "firstKnot":D
    iget-object v6, v0, Lorg/apache/poi/xdgf/geom/SplineCollector;->_start:Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    invoke-virtual {v6}, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->getC()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 57
    .local v6, "lastKnot":D
    iget-object v8, v0, Lorg/apache/poi/xdgf/geom/SplineCollector;->_start:Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    invoke-virtual {v8}, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->getD()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 60
    .local v8, "degree":I
    invoke-virtual {v3, v4, v5}, Lcom/graphbuilder/curve/ValueVector;->add(D)V

    .line 61
    iget-object v9, v0, Lorg/apache/poi/xdgf/geom/SplineCollector;->_start:Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    invoke-virtual {v9}, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->getA()Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Lcom/graphbuilder/curve/ValueVector;->add(D)V

    .line 64
    invoke-virtual {v1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v9

    invoke-virtual {v1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Lcom/graphbuilder/geom/PointFactory;->create(DD)Lcom/graphbuilder/geom/Point2d;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/graphbuilder/curve/ControlPath;->addPoint(Lcom/graphbuilder/curve/Point;)V

    .line 65
    iget-object v9, v0, Lorg/apache/poi/xdgf/geom/SplineCollector;->_start:Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    invoke-virtual {v9}, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->getX()Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    iget-object v11, v0, Lorg/apache/poi/xdgf/geom/SplineCollector;->_start:Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    invoke-virtual {v11}, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->getY()Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Lcom/graphbuilder/geom/PointFactory;->create(DD)Lcom/graphbuilder/geom/Point2d;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/graphbuilder/curve/ControlPath;->addPoint(Lcom/graphbuilder/curve/Point;)V

    .line 68
    iget-object v9, v0, Lorg/apache/poi/xdgf/geom/SplineCollector;->_knots:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineKnot;

    .line 69
    .local v10, "knot":Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineKnot;
    invoke-virtual {v10}, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineKnot;->getA()Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Lcom/graphbuilder/curve/ValueVector;->add(D)V

    .line 70
    invoke-virtual {v10}, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineKnot;->getX()Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    invoke-virtual {v10}, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineKnot;->getY()Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Lcom/graphbuilder/geom/PointFactory;->create(DD)Lcom/graphbuilder/geom/Point2d;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/graphbuilder/curve/ControlPath;->addPoint(Lcom/graphbuilder/curve/Point;)V

    .end local v10    # "knot":Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineKnot;
    goto :goto_0

    .line 74
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v3, v6, v7}, Lcom/graphbuilder/curve/ValueVector;->add(D)V

    .line 76
    const/4 v9, 0x0

    invoke-static {v2, v3, v9, v8}, Lorg/apache/poi/xdgf/geom/SplineRenderer;->createNurbsSpline(Lcom/graphbuilder/curve/ControlPath;Lcom/graphbuilder/curve/ValueVector;Lcom/graphbuilder/curve/ValueVector;I)Lcom/graphbuilder/curve/ShapeMultiPath;

    move-result-object v9

    .line 77
    .local v9, "shape":Lcom/graphbuilder/curve/ShapeMultiPath;
    const/4 v10, 0x1

    move-object/from16 v11, p1

    invoke-virtual {v11, v9, v10}, Ljava/awt/geom/Path2D$Double;->append(Ljava/awt/Shape;Z)V

    .line 78
    return-void
.end method
