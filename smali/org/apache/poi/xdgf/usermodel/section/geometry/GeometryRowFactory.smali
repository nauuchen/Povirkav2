.class public Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRowFactory;
.super Ljava/lang/Object;
.source "GeometryRowFactory.java"


# static fields
.field static final _rowTypes:Lorg/apache/poi/xdgf/util/ObjectFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/xdgf/util/ObjectFactory<",
            "Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;",
            "Lcom/microsoft/schemas/office/visio/x2012/main/RowType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 30
    const-string v0, "Internal error"

    new-instance v1, Lorg/apache/poi/xdgf/util/ObjectFactory;

    invoke-direct {v1}, Lorg/apache/poi/xdgf/util/ObjectFactory;-><init>()V

    sput-object v1, Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRowFactory;->_rowTypes:Lorg/apache/poi/xdgf/util/ObjectFactory;

    .line 32
    :try_start_0
    const-string v2, "ArcTo"

    const-class v3, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v1, v2, v3, v5}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 33
    const-string v2, "Ellipse"

    const-class v3, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;

    aput-object v6, v5, v7

    invoke-virtual {v1, v2, v3, v5}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 34
    const-string v2, "EllipticalArcTo"

    const-class v3, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;

    aput-object v6, v5, v7

    invoke-virtual {v1, v2, v3, v5}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 36
    const-string v2, "InfiniteLine"

    const-class v3, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;

    aput-object v6, v5, v7

    invoke-virtual {v1, v2, v3, v5}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 37
    const-string v2, "LineTo"

    const-class v3, Lorg/apache/poi/xdgf/usermodel/section/geometry/LineTo;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;

    aput-object v6, v5, v7

    invoke-virtual {v1, v2, v3, v5}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 38
    const-string v2, "MoveTo"

    const-class v3, Lorg/apache/poi/xdgf/usermodel/section/geometry/MoveTo;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;

    aput-object v6, v5, v7

    invoke-virtual {v1, v2, v3, v5}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 39
    const-string v2, "NURBSTo"

    const-class v3, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;

    aput-object v6, v5, v7

    invoke-virtual {v1, v2, v3, v5}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 41
    const-string v2, "PolylineTo"

    const-class v3, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;

    aput-object v6, v5, v7

    invoke-virtual {v1, v2, v3, v5}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 42
    const-string v2, "PolyLineTo"

    const-class v3, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;

    aput-object v6, v5, v7

    invoke-virtual {v1, v2, v3, v5}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 43
    const-string v2, "RelCubBezTo"

    const-class v3, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;

    aput-object v6, v5, v7

    invoke-virtual {v1, v2, v3, v5}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 44
    const-string v2, "RelEllipticalArcTo"

    const-class v3, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;

    aput-object v6, v5, v7

    invoke-virtual {v1, v2, v3, v5}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 46
    const-string v2, "RelLineTo"

    const-class v3, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelLineTo;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;

    aput-object v6, v5, v7

    invoke-virtual {v1, v2, v3, v5}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 47
    const-string v2, "RelMoveTo"

    const-class v3, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelMoveTo;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;

    aput-object v6, v5, v7

    invoke-virtual {v1, v2, v3, v5}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 48
    const-string v2, "RelQuadBezTo"

    const-class v3, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;

    aput-object v6, v5, v7

    invoke-virtual {v1, v2, v3, v5}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 49
    const-string v2, "SplineKnot"

    const-class v3, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineKnot;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;

    aput-object v6, v5, v7

    invoke-virtual {v1, v2, v3, v5}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 50
    const-string v2, "SplineStart"

    const-class v3, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v3, v4}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    nop

    .line 57
    return-void

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v2, Lorg/apache/poi/POIXMLException;

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 51
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Lorg/apache/poi/POIXMLException;

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Lcom/microsoft/schemas/office/visio/x2012/main/RowType;)Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;
    .locals 4
    .param p0, "row"    # Lcom/microsoft/schemas/office/visio/x2012/main/RowType;

    .line 60
    sget-object v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRowFactory;->_rowTypes:Lorg/apache/poi/xdgf/util/ObjectFactory;

    invoke-interface {p0}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->getT()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/xdgf/util/ObjectFactory;->load(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;

    return-object v0
.end method
