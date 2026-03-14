.class public Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;
.super Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;
.source "GeometrySection.java"


# instance fields
.field _master:Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

.field _rows:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)V
    .locals 8
    .param p1, "section"    # Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;
    .param p2, "containingSheet"    # Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    .line 49
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;-><init>(Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->_master:Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

    .line 46
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->_rows:Ljava/util/SortedMap;

    .line 51
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;->getRowArray()[Lcom/microsoft/schemas/office/visio/x2012/main/RowType;

    move-result-object v0

    .local v0, "arr$":[Lcom/microsoft/schemas/office/visio/x2012/main/RowType;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 52
    .local v3, "row":Lcom/microsoft/schemas/office/visio/x2012/main/RowType;
    iget-object v4, p0, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->_rows:Ljava/util/SortedMap;

    invoke-interface {v3}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->getIX()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 55
    iget-object v4, p0, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->_rows:Ljava/util/SortedMap;

    invoke-interface {v3}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->getIX()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRowFactory;->load(Lcom/microsoft/schemas/office/visio/x2012/main/RowType;)Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .end local v3    # "row":Lcom/microsoft/schemas/office/visio/x2012/main/RowType;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    .restart local v3    # "row":Lcom/microsoft/schemas/office/visio/x2012/main/RowType;
    :cond_0
    new-instance v4, Lorg/apache/poi/POIXMLException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Index element \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->getIX()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' already exists"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 57
    .end local v0    # "arr$":[Lcom/microsoft/schemas/office/visio/x2012/main/RowType;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    .end local v3    # "row":Lcom/microsoft/schemas/office/visio/x2012/main/RowType;
    :cond_1
    return-void
.end method


# virtual methods
.method public getCombinedRows()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable;

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->_rows:Ljava/util/SortedMap;

    iget-object v2, p0, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->_master:Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v2, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->_rows:Ljava/util/SortedMap;

    :goto_0
    invoke-direct {v0, v1, v2}, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable;-><init>(Ljava/util/SortedMap;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public getNoShow()Ljava/lang/Boolean;
    .locals 2

    .line 80
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->_cells:Ljava/util/Map;

    const-string v1, "NoShow"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetBoolean(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 81
    .local v0, "noShow":Ljava/lang/Boolean;
    if-nez v0, :cond_1

    .line 82
    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->_master:Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->getNoShow()Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 85
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 88
    :cond_1
    return-object v0
.end method

.method public getPath(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Ljava/awt/geom/Path2D$Double;
    .locals 7
    .param p1, "parent"    # Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    .line 98
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->getCombinedRows()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 101
    .local v0, "rows":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;

    .line 103
    .local v1, "first":Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;
    instance-of v2, v1, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;

    if-eqz v2, :cond_0

    .line 104
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;

    invoke-virtual {v2}, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->getPath()Ljava/awt/geom/Path2D$Double;

    move-result-object v2

    return-object v2

    .line 105
    :cond_0
    instance-of v2, v1, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;

    if-eqz v2, :cond_1

    .line 106
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;

    invoke-virtual {v2}, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->getPath()Ljava/awt/geom/Path2D$Double;

    move-result-object v2

    return-object v2

    .line 107
    :cond_1
    instance-of v2, v1, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    if-nez v2, :cond_a

    .line 112
    new-instance v2, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v2}, Ljava/awt/geom/Path2D$Double;-><init>()V

    .line 115
    .local v2, "path":Ljava/awt/geom/Path2D$Double;
    const/4 v3, 0x0

    .line 120
    .local v3, "renderer":Lorg/apache/poi/xdgf/geom/SplineCollector;
    :goto_0
    if-eqz v1, :cond_2

    .line 121
    move-object v4, v1

    .line 122
    .local v4, "row":Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;
    const/4 v1, 0x0

    goto :goto_1

    .line 124
    .end local v4    # "row":Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 125
    nop

    .line 148
    if-eqz v3, :cond_3

    .line 149
    invoke-virtual {v3, v2, p1}, Lorg/apache/poi/xdgf/geom/SplineCollector;->addToPath(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V

    .line 151
    :cond_3
    return-object v2

    .line 126
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;

    .line 129
    .restart local v4    # "row":Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;
    :goto_1
    instance-of v5, v4, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    if-eqz v5, :cond_6

    .line 130
    if-nez v3, :cond_5

    .line 132
    new-instance v5, Lorg/apache/poi/xdgf/geom/SplineCollector;

    move-object v6, v4

    check-cast v6, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    invoke-direct {v5, v6}, Lorg/apache/poi/xdgf/geom/SplineCollector;-><init>(Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;)V

    move-object v3, v5

    goto :goto_0

    .line 131
    :cond_5
    new-instance v5, Lorg/apache/poi/POIXMLException;

    const-string v6, "SplineStart found multiple times!"

    invoke-direct {v5, v6}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 133
    :cond_6
    instance-of v5, v4, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineKnot;

    if-eqz v5, :cond_8

    .line 134
    if-eqz v3, :cond_7

    .line 136
    move-object v5, v4

    check-cast v5, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineKnot;

    invoke-virtual {v3, v5}, Lorg/apache/poi/xdgf/geom/SplineCollector;->addKnot(Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineKnot;)V

    goto :goto_0

    .line 135
    :cond_7
    new-instance v5, Lorg/apache/poi/POIXMLException;

    const-string v6, "SplineKnot found without SplineStart!"

    invoke-direct {v5, v6}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 138
    :cond_8
    if-eqz v3, :cond_9

    .line 139
    invoke-virtual {v3, v2, p1}, Lorg/apache/poi/xdgf/geom/SplineCollector;->addToPath(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V

    .line 140
    const/4 v3, 0x0

    .line 143
    :cond_9
    invoke-interface {v4, v2, p1}, Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;->addToPath(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V

    goto :goto_0

    .line 108
    .end local v2    # "path":Ljava/awt/geom/Path2D$Double;
    .end local v3    # "renderer":Lorg/apache/poi/xdgf/geom/SplineCollector;
    .end local v4    # "row":Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;
    :cond_a
    new-instance v2, Lorg/apache/poi/POIXMLException;

    const-string v3, "SplineStart must be preceded by another type"

    invoke-direct {v2, v3}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setupMaster(Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;)V
    .locals 4
    .param p1, "master"    # Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;

    .line 62
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->_master:Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

    .line 64
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->_rows:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 65
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;>;"
    iget-object v2, p0, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->_master:Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

    iget-object v2, v2, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->_rows:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;

    .line 66
    .local v2, "masterRow":Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;
    if-eqz v2, :cond_0

    .line 68
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;

    invoke-interface {v3, v2}, Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;->setupMaster(Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_1

    .line 69
    :catch_0
    move-exception v3

    .line 75
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;>;"
    .end local v2    # "masterRow":Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;
    :cond_0
    :goto_1
    goto :goto_0

    .line 76
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method
