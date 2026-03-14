.class public Lorg/apache/poi/xdgf/geom/SplineRenderer;
.super Ljava/lang/Object;
.source "SplineRenderer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNurbsSpline(Lcom/graphbuilder/curve/ControlPath;Lcom/graphbuilder/curve/ValueVector;Lcom/graphbuilder/curve/ValueVector;I)Lcom/graphbuilder/curve/ShapeMultiPath;
    .locals 11
    .param p0, "controlPoints"    # Lcom/graphbuilder/curve/ControlPath;
    .param p1, "knots"    # Lcom/graphbuilder/curve/ValueVector;
    .param p2, "weights"    # Lcom/graphbuilder/curve/ValueVector;
    .param p3, "degree"    # I

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/graphbuilder/curve/ValueVector;->get(I)D

    move-result-wide v1

    .line 33
    .local v1, "firstKnot":D
    invoke-virtual {p1}, Lcom/graphbuilder/curve/ValueVector;->size()I

    move-result v3

    .line 34
    .local v3, "count":I
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p1, v4}, Lcom/graphbuilder/curve/ValueVector;->get(I)D

    move-result-wide v4

    .line 37
    .local v4, "lastKnot":D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_0

    .line 38
    invoke-virtual {p1, v6}, Lcom/graphbuilder/curve/ValueVector;->get(I)D

    move-result-wide v7

    sub-double/2addr v7, v1

    div-double/2addr v7, v4

    invoke-virtual {p1, v7, v8, v6}, Lcom/graphbuilder/curve/ValueVector;->set(DI)V

    .line 37
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 42
    .end local v6    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/graphbuilder/curve/ControlPath;->numPoints()I

    move-result v6

    add-int/2addr v6, p3

    add-int/lit8 v6, v6, 0x1

    .line 43
    .local v6, "knotsToAdd":I
    move v7, v3

    .local v7, "i":I
    :goto_1
    if-ge v7, v6, :cond_1

    .line 44
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v8, v9}, Lcom/graphbuilder/curve/ValueVector;->add(D)V

    .line 43
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 47
    .end local v7    # "i":I
    :cond_1
    new-instance v7, Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {p0}, Lcom/graphbuilder/curve/ControlPath;->numPoints()I

    move-result v8

    const-string v9, "0:n-1"

    invoke-direct {v7, v9, v8}, Lcom/graphbuilder/curve/GroupIterator;-><init>(Ljava/lang/String;I)V

    .line 49
    .local v7, "gi":Lcom/graphbuilder/curve/GroupIterator;
    new-instance v8, Lcom/graphbuilder/curve/NURBSpline;

    invoke-direct {v8, p0, v7}, Lcom/graphbuilder/curve/NURBSpline;-><init>(Lcom/graphbuilder/curve/ControlPath;Lcom/graphbuilder/curve/GroupIterator;)V

    .line 51
    .local v8, "spline":Lcom/graphbuilder/curve/NURBSpline;
    invoke-virtual {v8, p3}, Lcom/graphbuilder/curve/NURBSpline;->setDegree(I)V

    .line 52
    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/graphbuilder/curve/NURBSpline;->setKnotVectorType(I)V

    .line 53
    invoke-virtual {v8, p1}, Lcom/graphbuilder/curve/NURBSpline;->setKnotVector(Lcom/graphbuilder/curve/ValueVector;)V

    .line 55
    if-nez p2, :cond_2

    .line 56
    invoke-virtual {v8, v0}, Lcom/graphbuilder/curve/NURBSpline;->setUseWeightVector(Z)V

    goto :goto_2

    .line 58
    :cond_2
    invoke-virtual {v8, p2}, Lcom/graphbuilder/curve/NURBSpline;->setWeightVector(Lcom/graphbuilder/curve/ValueVector;)V

    .line 62
    :goto_2
    new-instance v0, Lcom/graphbuilder/curve/ShapeMultiPath;

    invoke-direct {v0}, Lcom/graphbuilder/curve/ShapeMultiPath;-><init>()V

    .line 63
    .local v0, "shape":Lcom/graphbuilder/curve/ShapeMultiPath;
    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    invoke-virtual {v0, v9, v10}, Lcom/graphbuilder/curve/ShapeMultiPath;->setFlatness(D)V

    .line 65
    invoke-virtual {v8, v0}, Lcom/graphbuilder/curve/NURBSpline;->appendTo(Lcom/graphbuilder/curve/MultiPath;)V

    .line 66
    return-object v0
.end method
