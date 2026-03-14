.class public final Lorg/apache/poi/ss/util/PropertyTemplate;
.super Ljava/lang/Object;
.source "PropertyTemplate.java"


# instance fields
.field private _propertyTemplate:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/util/CellAddress;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ss/util/PropertyTemplate;->_propertyTemplate:Ljava/util/Map;

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/util/PropertyTemplate;)V
    .locals 5
    .param p1, "template"    # Lorg/apache/poi/ss/util/PropertyTemplate;

    .line 75
    invoke-direct {p0}, Lorg/apache/poi/ss/util/PropertyTemplate;-><init>()V

    .line 76
    invoke-direct {p1}, Lorg/apache/poi/ss/util/PropertyTemplate;->getTemplate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 77
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/poi/ss/util/CellAddress;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v2, p0, Lorg/apache/poi/ss/util/PropertyTemplate;->_propertyTemplate:Ljava/util/Map;

    new-instance v3, Lorg/apache/poi/ss/util/CellAddress;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {v3, v4}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Lorg/apache/poi/ss/util/CellAddress;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-static {v4}, Lorg/apache/poi/ss/util/PropertyTemplate;->cloneCellProperties(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 79
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/poi/ss/util/CellAddress;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_0
    return-void
.end method

.method private addProperty(IILjava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "property"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/Object;

    .line 795
    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    .line 796
    .local v0, "cell":Lorg/apache/poi/ss/util/CellAddress;
    iget-object v1, p0, Lorg/apache/poi/ss/util/PropertyTemplate;->_propertyTemplate:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 797
    .local v1, "cellProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v1, :cond_0

    .line 798
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v1, v2

    .line 800
    :cond_0
    invoke-interface {v1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    iget-object v2, p0, Lorg/apache/poi/ss/util/PropertyTemplate;->_propertyTemplate:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    return-void
.end method

.method private addProperty(IILjava/lang/String;S)V
    .locals 1
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "property"    # Ljava/lang/String;
    .param p4, "value"    # S

    .line 783
    invoke-static {p4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/poi/ss/util/PropertyTemplate;->addProperty(IILjava/lang/String;Ljava/lang/Object;)V

    .line 784
    return-void
.end method

.method private static cloneCellProperties(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 86
    .local p0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 87
    .local v0, "newProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 88
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 90
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-object v0
.end method

.method private drawBottomBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 6
    .param p1, "range"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "borderType"    # Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 218
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v0

    .line 219
    .local v0, "row":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v1

    .line 220
    .local v1, "firstCol":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v2

    .line 221
    .local v2, "lastCol":I
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-gt v3, v2, :cond_1

    .line 222
    const-string v4, "borderBottom"

    invoke-direct {p0, v0, v3, v4, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->addProperty(IILjava/lang/String;Ljava/lang/Object;)V

    .line 223
    sget-object v4, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-ne p2, v4, :cond_0

    sget-object v4, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v4}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxRows()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_0

    .line 225
    add-int/lit8 v4, v0, 0x1

    const-string v5, "borderTop"

    invoke-direct {p0, v4, v3, v5, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->addProperty(IILjava/lang/String;Ljava/lang/Object;)V

    .line 221
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 228
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method private drawBottomBorderColor(Lorg/apache/poi/ss/util/CellRangeAddress;S)V
    .locals 6
    .param p1, "range"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "color"    # S

    .line 557
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v0

    .line 558
    .local v0, "row":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v1

    .line 559
    .local v1, "firstCol":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v2

    .line 560
    .local v2, "lastCol":I
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-gt v3, v2, :cond_1

    .line 561
    const-string v4, "borderBottom"

    invoke-virtual {p0, v0, v3, v4}, Lorg/apache/poi/ss/util/PropertyTemplate;->getBorderStyle(IILjava/lang/String;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v4

    sget-object v5, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-ne v4, v5, :cond_0

    .line 563
    new-instance v4, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {v4, v0, v0, v3, v3}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    sget-object v5, Lorg/apache/poi/ss/usermodel/BorderStyle;->THIN:Lorg/apache/poi/ss/usermodel/BorderStyle;

    invoke-direct {p0, v4, v5}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawBottomBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    .line 566
    :cond_0
    const-string v4, "bottomBorderColor"

    invoke-direct {p0, v0, v3, v4, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->addProperty(IILjava/lang/String;S)V

    .line 560
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 568
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method private drawHorizontalBorderColors(Lorg/apache/poi/ss/util/CellRangeAddress;SLorg/apache/poi/ss/usermodel/BorderExtent;)V
    .locals 7
    .param p1, "range"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "color"    # S
    .param p3, "extent"    # Lorg/apache/poi/ss/usermodel/BorderExtent;

    .line 685
    sget-object v0, Lorg/apache/poi/ss/util/PropertyTemplate$1;->$SwitchMap$org$apache$poi$ss$usermodel$BorderExtent:[I

    invoke-virtual {p3}, Lorg/apache/poi/ss/usermodel/BorderExtent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .local v1, "firstCol":I
    move v2, v0

    .local v2, "firstRow":I
    move v3, v0

    .line 704
    .local v0, "lastRow":I
    .local v3, "lastCol":I
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unsupported PropertyTemplate.Extent, valid Extents are ALL and INSIDE"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 688
    .end local v0    # "lastRow":I
    .end local v1    # "firstCol":I
    .end local v2    # "firstRow":I
    .end local v3    # "lastCol":I
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v0

    .line 689
    .local v0, "firstRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v1

    .line 690
    .local v1, "lastRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v2

    .line 691
    .local v2, "firstCol":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v3

    .line 692
    .restart local v3    # "lastCol":I
    move v4, v0

    .local v4, "i":I
    :goto_1
    if-gt v4, v1, :cond_6

    .line 693
    new-instance v5, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {v5, v4, v4, v2, v3}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    .line 695
    .local v5, "row":Lorg/apache/poi/ss/util/CellRangeAddress;
    sget-object v6, Lorg/apache/poi/ss/usermodel/BorderExtent;->ALL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    if-eq p3, v6, :cond_2

    if-le v4, v0, :cond_3

    .line 696
    :cond_2
    invoke-direct {p0, v5, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawTopBorderColor(Lorg/apache/poi/ss/util/CellRangeAddress;S)V

    .line 698
    :cond_3
    sget-object v6, Lorg/apache/poi/ss/usermodel/BorderExtent;->ALL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    if-eq p3, v6, :cond_4

    if-ge v4, v1, :cond_5

    .line 699
    :cond_4
    invoke-direct {p0, v5, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawBottomBorderColor(Lorg/apache/poi/ss/util/CellRangeAddress;S)V

    .line 692
    .end local v5    # "row":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 702
    .end local v4    # "i":I
    :cond_6
    nop

    .line 707
    .end local v0    # "firstRow":I
    .end local v1    # "lastRow":I
    .end local v2    # "firstCol":I
    .end local v3    # "lastCol":I
    return-void
.end method

.method private drawHorizontalBorders(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;Lorg/apache/poi/ss/usermodel/BorderExtent;)V
    .locals 7
    .param p1, "range"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "borderType"    # Lorg/apache/poi/ss/usermodel/BorderStyle;
    .param p3, "extent"    # Lorg/apache/poi/ss/usermodel/BorderExtent;

    .line 339
    sget-object v0, Lorg/apache/poi/ss/util/PropertyTemplate$1;->$SwitchMap$org$apache$poi$ss$usermodel$BorderExtent:[I

    invoke-virtual {p3}, Lorg/apache/poi/ss/usermodel/BorderExtent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .local v1, "firstCol":I
    move v2, v0

    .local v2, "firstRow":I
    move v3, v0

    .line 358
    .local v0, "lastRow":I
    .local v3, "lastCol":I
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unsupported PropertyTemplate.Extent, valid Extents are ALL and INSIDE"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 342
    .end local v0    # "lastRow":I
    .end local v1    # "firstCol":I
    .end local v2    # "firstRow":I
    .end local v3    # "lastCol":I
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v0

    .line 343
    .local v0, "firstRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v1

    .line 344
    .local v1, "lastRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v2

    .line 345
    .local v2, "firstCol":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v3

    .line 346
    .restart local v3    # "lastCol":I
    move v4, v0

    .local v4, "i":I
    :goto_1
    if-gt v4, v1, :cond_6

    .line 347
    new-instance v5, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {v5, v4, v4, v2, v3}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    .line 349
    .local v5, "row":Lorg/apache/poi/ss/util/CellRangeAddress;
    sget-object v6, Lorg/apache/poi/ss/usermodel/BorderExtent;->ALL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    if-eq p3, v6, :cond_2

    if-le v4, v0, :cond_3

    .line 350
    :cond_2
    invoke-direct {p0, v5, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawTopBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    .line 352
    :cond_3
    sget-object v6, Lorg/apache/poi/ss/usermodel/BorderExtent;->ALL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    if-eq p3, v6, :cond_4

    if-ge v4, v1, :cond_5

    .line 353
    :cond_4
    invoke-direct {p0, v5, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawBottomBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    .line 346
    .end local v5    # "row":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 356
    .end local v4    # "i":I
    :cond_6
    nop

    .line 361
    .end local v0    # "firstRow":I
    .end local v1    # "lastRow":I
    .end local v2    # "firstCol":I
    .end local v3    # "lastCol":I
    return-void
.end method

.method private drawLeftBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 6
    .param p1, "range"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "borderType"    # Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 243
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v0

    .line 244
    .local v0, "firstRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v1

    .line 245
    .local v1, "lastRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v2

    .line 246
    .local v2, "col":I
    move v3, v0

    .local v3, "i":I
    :goto_0
    if-gt v3, v1, :cond_1

    .line 247
    const-string v4, "borderLeft"

    invoke-direct {p0, v3, v2, v4, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->addProperty(IILjava/lang/String;Ljava/lang/Object;)V

    .line 248
    sget-object v4, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-ne p2, v4, :cond_0

    if-lez v2, :cond_0

    .line 249
    add-int/lit8 v4, v2, -0x1

    const-string v5, "borderRight"

    invoke-direct {p0, v3, v4, v5, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->addProperty(IILjava/lang/String;Ljava/lang/Object;)V

    .line 246
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 252
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method private drawLeftBorderColor(Lorg/apache/poi/ss/util/CellRangeAddress;S)V
    .locals 6
    .param p1, "range"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "color"    # S

    .line 583
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v0

    .line 584
    .local v0, "firstRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v1

    .line 585
    .local v1, "lastRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v2

    .line 586
    .local v2, "col":I
    move v3, v0

    .local v3, "i":I
    :goto_0
    if-gt v3, v1, :cond_1

    .line 587
    const-string v4, "borderLeft"

    invoke-virtual {p0, v3, v2, v4}, Lorg/apache/poi/ss/util/PropertyTemplate;->getBorderStyle(IILjava/lang/String;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v4

    sget-object v5, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-ne v4, v5, :cond_0

    .line 589
    new-instance v4, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {v4, v3, v3, v2, v2}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    sget-object v5, Lorg/apache/poi/ss/usermodel/BorderStyle;->THIN:Lorg/apache/poi/ss/usermodel/BorderStyle;

    invoke-direct {p0, v4, v5}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawLeftBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    .line 592
    :cond_0
    const-string v4, "leftBorderColor"

    invoke-direct {p0, v3, v2, v4, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->addProperty(IILjava/lang/String;S)V

    .line 586
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 594
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method private drawOutsideBorderColors(Lorg/apache/poi/ss/util/CellRangeAddress;SLorg/apache/poi/ss/usermodel/BorderExtent;)V
    .locals 2
    .param p1, "range"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "color"    # S
    .param p3, "extent"    # Lorg/apache/poi/ss/usermodel/BorderExtent;

    .line 645
    sget-object v0, Lorg/apache/poi/ss/util/PropertyTemplate$1;->$SwitchMap$org$apache$poi$ss$usermodel$BorderExtent:[I

    invoke-virtual {p3}, Lorg/apache/poi/ss/usermodel/BorderExtent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 659
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported PropertyTemplate.Extent, valid Extents are ALL, HORIZONTAL, and VERTICAL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 649
    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderExtent;->ALL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    if-eq p3, v0, :cond_2

    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderExtent;->HORIZONTAL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    if-ne p3, v0, :cond_3

    .line 650
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawTopBorderColor(Lorg/apache/poi/ss/util/CellRangeAddress;S)V

    .line 651
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawBottomBorderColor(Lorg/apache/poi/ss/util/CellRangeAddress;S)V

    .line 653
    :cond_3
    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderExtent;->ALL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    if-eq p3, v0, :cond_4

    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderExtent;->VERTICAL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    if-ne p3, v0, :cond_5

    .line 654
    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawLeftBorderColor(Lorg/apache/poi/ss/util/CellRangeAddress;S)V

    .line 655
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawRightBorderColor(Lorg/apache/poi/ss/util/CellRangeAddress;S)V

    .line 662
    :cond_5
    return-void
.end method

.method private drawOutsideBorders(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;Lorg/apache/poi/ss/usermodel/BorderExtent;)V
    .locals 2
    .param p1, "range"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "borderType"    # Lorg/apache/poi/ss/usermodel/BorderStyle;
    .param p3, "extent"    # Lorg/apache/poi/ss/usermodel/BorderExtent;

    .line 300
    sget-object v0, Lorg/apache/poi/ss/util/PropertyTemplate$1;->$SwitchMap$org$apache$poi$ss$usermodel$BorderExtent:[I

    invoke-virtual {p3}, Lorg/apache/poi/ss/usermodel/BorderExtent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported PropertyTemplate.Extent, valid Extents are ALL, HORIZONTAL, and VERTICAL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderExtent;->ALL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    if-eq p3, v0, :cond_2

    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderExtent;->HORIZONTAL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    if-ne p3, v0, :cond_3

    .line 305
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawTopBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    .line 306
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawBottomBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    .line 308
    :cond_3
    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderExtent;->ALL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    if-eq p3, v0, :cond_4

    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderExtent;->VERTICAL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    if-ne p3, v0, :cond_5

    .line 309
    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawLeftBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    .line 310
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawRightBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    .line 317
    :cond_5
    return-void
.end method

.method private drawRightBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 6
    .param p1, "range"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "borderType"    # Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 267
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v0

    .line 268
    .local v0, "firstRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v1

    .line 269
    .local v1, "lastRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v2

    .line 270
    .local v2, "col":I
    move v3, v0

    .local v3, "i":I
    :goto_0
    if-gt v3, v1, :cond_1

    .line 271
    const-string v4, "borderRight"

    invoke-direct {p0, v3, v2, v4, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->addProperty(IILjava/lang/String;Ljava/lang/Object;)V

    .line 272
    sget-object v4, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-ne p2, v4, :cond_0

    sget-object v4, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v4}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxColumns()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_0

    .line 274
    add-int/lit8 v4, v2, 0x1

    const-string v5, "borderLeft"

    invoke-direct {p0, v3, v4, v5, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->addProperty(IILjava/lang/String;Ljava/lang/Object;)V

    .line 270
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 277
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method private drawRightBorderColor(Lorg/apache/poi/ss/util/CellRangeAddress;S)V
    .locals 6
    .param p1, "range"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "color"    # S

    .line 610
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v0

    .line 611
    .local v0, "firstRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v1

    .line 612
    .local v1, "lastRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v2

    .line 613
    .local v2, "col":I
    move v3, v0

    .local v3, "i":I
    :goto_0
    if-gt v3, v1, :cond_1

    .line 614
    const-string v4, "borderRight"

    invoke-virtual {p0, v3, v2, v4}, Lorg/apache/poi/ss/util/PropertyTemplate;->getBorderStyle(IILjava/lang/String;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v4

    sget-object v5, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-ne v4, v5, :cond_0

    .line 616
    new-instance v4, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {v4, v3, v3, v2, v2}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    sget-object v5, Lorg/apache/poi/ss/usermodel/BorderStyle;->THIN:Lorg/apache/poi/ss/usermodel/BorderStyle;

    invoke-direct {p0, v4, v5}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawRightBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    .line 619
    :cond_0
    const-string v4, "rightBorderColor"

    invoke-direct {p0, v3, v2, v4, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->addProperty(IILjava/lang/String;S)V

    .line 613
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 621
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method private drawTopBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 6
    .param p1, "range"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "borderType"    # Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 194
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v0

    .line 195
    .local v0, "row":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v1

    .line 196
    .local v1, "firstCol":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v2

    .line 197
    .local v2, "lastCol":I
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-gt v3, v2, :cond_1

    .line 198
    const-string v4, "borderTop"

    invoke-direct {p0, v0, v3, v4, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->addProperty(IILjava/lang/String;Ljava/lang/Object;)V

    .line 199
    sget-object v4, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-ne p2, v4, :cond_0

    if-lez v0, :cond_0

    .line 200
    add-int/lit8 v4, v0, -0x1

    const-string v5, "borderBottom"

    invoke-direct {p0, v4, v3, v5, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->addProperty(IILjava/lang/String;Ljava/lang/Object;)V

    .line 197
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 203
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method private drawTopBorderColor(Lorg/apache/poi/ss/util/CellRangeAddress;S)V
    .locals 6
    .param p1, "range"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "color"    # S

    .line 531
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v0

    .line 532
    .local v0, "row":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v1

    .line 533
    .local v1, "firstCol":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v2

    .line 534
    .local v2, "lastCol":I
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-gt v3, v2, :cond_1

    .line 535
    const-string v4, "borderTop"

    invoke-virtual {p0, v0, v3, v4}, Lorg/apache/poi/ss/util/PropertyTemplate;->getBorderStyle(IILjava/lang/String;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v4

    sget-object v5, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-ne v4, v5, :cond_0

    .line 537
    new-instance v4, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {v4, v0, v0, v3, v3}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    sget-object v5, Lorg/apache/poi/ss/usermodel/BorderStyle;->THIN:Lorg/apache/poi/ss/usermodel/BorderStyle;

    invoke-direct {p0, v4, v5}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawTopBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    .line 540
    :cond_0
    const-string/jumbo v4, "topBorderColor"

    invoke-direct {p0, v0, v3, v4, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->addProperty(IILjava/lang/String;S)V

    .line 534
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 542
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method private drawVerticalBorderColors(Lorg/apache/poi/ss/util/CellRangeAddress;SLorg/apache/poi/ss/usermodel/BorderExtent;)V
    .locals 7
    .param p1, "range"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "color"    # S
    .param p3, "extent"    # Lorg/apache/poi/ss/usermodel/BorderExtent;

    .line 730
    sget-object v0, Lorg/apache/poi/ss/util/PropertyTemplate$1;->$SwitchMap$org$apache$poi$ss$usermodel$BorderExtent:[I

    invoke-virtual {p3}, Lorg/apache/poi/ss/usermodel/BorderExtent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .local v1, "firstCol":I
    move v2, v0

    .local v2, "firstRow":I
    move v3, v0

    .line 749
    .local v0, "lastRow":I
    .local v3, "lastCol":I
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unsupported PropertyTemplate.Extent, valid Extents are ALL and INSIDE"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 733
    .end local v0    # "lastRow":I
    .end local v1    # "firstCol":I
    .end local v2    # "firstRow":I
    .end local v3    # "lastCol":I
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v0

    .line 734
    .local v0, "firstRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v1

    .line 735
    .local v1, "lastRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v2

    .line 736
    .local v2, "firstCol":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v3

    .line 737
    .restart local v3    # "lastCol":I
    move v4, v2

    .local v4, "i":I
    :goto_1
    if-gt v4, v3, :cond_6

    .line 738
    new-instance v5, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {v5, v0, v1, v4, v4}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    .line 740
    .local v5, "row":Lorg/apache/poi/ss/util/CellRangeAddress;
    sget-object v6, Lorg/apache/poi/ss/usermodel/BorderExtent;->ALL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    if-eq p3, v6, :cond_2

    if-le v4, v2, :cond_3

    .line 741
    :cond_2
    invoke-direct {p0, v5, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawLeftBorderColor(Lorg/apache/poi/ss/util/CellRangeAddress;S)V

    .line 743
    :cond_3
    sget-object v6, Lorg/apache/poi/ss/usermodel/BorderExtent;->ALL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    if-eq p3, v6, :cond_4

    if-ge v4, v3, :cond_5

    .line 744
    :cond_4
    invoke-direct {p0, v5, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawRightBorderColor(Lorg/apache/poi/ss/util/CellRangeAddress;S)V

    .line 737
    .end local v5    # "row":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 747
    .end local v4    # "i":I
    :cond_6
    nop

    .line 752
    .end local v0    # "firstRow":I
    .end local v1    # "lastRow":I
    .end local v2    # "firstCol":I
    .end local v3    # "lastCol":I
    return-void
.end method

.method private drawVerticalBorders(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;Lorg/apache/poi/ss/usermodel/BorderExtent;)V
    .locals 7
    .param p1, "range"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "borderType"    # Lorg/apache/poi/ss/usermodel/BorderStyle;
    .param p3, "extent"    # Lorg/apache/poi/ss/usermodel/BorderExtent;

    .line 383
    sget-object v0, Lorg/apache/poi/ss/util/PropertyTemplate$1;->$SwitchMap$org$apache$poi$ss$usermodel$BorderExtent:[I

    invoke-virtual {p3}, Lorg/apache/poi/ss/usermodel/BorderExtent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .local v1, "firstCol":I
    move v2, v0

    .local v2, "firstRow":I
    move v3, v0

    .line 402
    .local v0, "lastRow":I
    .local v3, "lastCol":I
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unsupported PropertyTemplate.Extent, valid Extents are ALL and INSIDE"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 386
    .end local v0    # "lastRow":I
    .end local v1    # "firstCol":I
    .end local v2    # "firstRow":I
    .end local v3    # "lastCol":I
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v0

    .line 387
    .local v0, "firstRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v1

    .line 388
    .local v1, "lastRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v2

    .line 389
    .local v2, "firstCol":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v3

    .line 390
    .restart local v3    # "lastCol":I
    move v4, v2

    .local v4, "i":I
    :goto_1
    if-gt v4, v3, :cond_6

    .line 391
    new-instance v5, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {v5, v0, v1, v4, v4}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    .line 393
    .local v5, "row":Lorg/apache/poi/ss/util/CellRangeAddress;
    sget-object v6, Lorg/apache/poi/ss/usermodel/BorderExtent;->ALL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    if-eq p3, v6, :cond_2

    if-le v4, v2, :cond_3

    .line 394
    :cond_2
    invoke-direct {p0, v5, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawLeftBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    .line 396
    :cond_3
    sget-object v6, Lorg/apache/poi/ss/usermodel/BorderExtent;->ALL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    if-eq p3, v6, :cond_4

    if-ge v4, v3, :cond_5

    .line 397
    :cond_4
    invoke-direct {p0, v5, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawRightBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    .line 390
    .end local v5    # "row":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 400
    .end local v4    # "i":I
    :cond_6
    nop

    .line 405
    .end local v0    # "firstRow":I
    .end local v1    # "lastRow":I
    .end local v2    # "firstCol":I
    .end local v3    # "lastCol":I
    return-void
.end method

.method private static getShort(Ljava/lang/Object;)S
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .line 961
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_0

    .line 962
    move-object v0, p0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0

    .line 964
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getTemplate()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/util/CellAddress;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lorg/apache/poi/ss/util/PropertyTemplate;->_propertyTemplate:Ljava/util/Map;

    return-object v0
.end method

.method private removeBorderColors(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 4
    .param p1, "range"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 761
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 762
    .local v0, "properties":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v1, "topBorderColor"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 763
    const-string v1, "bottomBorderColor"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 764
    const-string v1, "leftBorderColor"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 765
    const-string v1, "rightBorderColor"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 766
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v1

    .local v1, "row":I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 767
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v2

    .local v2, "col":I
    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 769
    invoke-direct {p0, v1, v2, v0}, Lorg/apache/poi/ss/util/PropertyTemplate;->removeProperties(IILjava/util/Set;)V

    .line 768
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 766
    .end local v2    # "col":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 772
    .end local v1    # "row":I
    :cond_1
    return-void
.end method

.method private removeBorders(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 4
    .param p1, "range"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 414
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 415
    .local v0, "properties":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "borderTop"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 416
    const-string v1, "borderBottom"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 417
    const-string v1, "borderLeft"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 418
    const-string v1, "borderRight"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 419
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v1

    .local v1, "row":I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 420
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v2

    .local v2, "col":I
    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 422
    invoke-direct {p0, v1, v2, v0}, Lorg/apache/poi/ss/util/PropertyTemplate;->removeProperties(IILjava/util/Set;)V

    .line 421
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 419
    .end local v2    # "col":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 425
    .end local v1    # "row":I
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/util/PropertyTemplate;->removeBorderColors(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    .line 426
    return-void
.end method

.method private removeProperties(IILjava/util/Set;)V
    .locals 3
    .param p1, "row"    # I
    .param p2, "col"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 813
    .local p3, "properties":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    .line 814
    .local v0, "cell":Lorg/apache/poi/ss/util/CellAddress;
    iget-object v1, p0, Lorg/apache/poi/ss/util/PropertyTemplate;->_propertyTemplate:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 815
    .local v1, "cellProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_1

    .line 816
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 817
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 818
    iget-object v2, p0, Lorg/apache/poi/ss/util/PropertyTemplate;->_propertyTemplate:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 820
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/ss/util/PropertyTemplate;->_propertyTemplate:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public applyBorders(Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 7
    .param p1, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;

    .line 437
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    .line 438
    .local v0, "wb":Lorg/apache/poi/ss/usermodel/Workbook;
    iget-object v1, p0, Lorg/apache/poi/ss/util/PropertyTemplate;->_propertyTemplate:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 440
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/poi/ss/util/CellAddress;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/util/CellAddress;

    .line 441
    .local v3, "cellAddress":Lorg/apache/poi/ss/util/CellAddress;
    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v4

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Workbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxRows()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result v4

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Workbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxColumns()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 444
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 445
    .local v4, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v5

    invoke-static {v5, p1}, Lorg/apache/poi/ss/util/CellUtil;->getRow(ILorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v5

    .line 446
    .local v5, "row":Lorg/apache/poi/ss/usermodel/Row;
    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result v6

    invoke-static {v5, v6}, Lorg/apache/poi/ss/util/CellUtil;->getCell(Lorg/apache/poi/ss/usermodel/Row;I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v6

    .line 447
    .local v6, "cell":Lorg/apache/poi/ss/usermodel/Cell;
    invoke-static {v6, v4}, Lorg/apache/poi/ss/util/CellUtil;->setCellStyleProperties(Lorg/apache/poi/ss/usermodel/Cell;Ljava/util/Map;)V

    .line 449
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/poi/ss/util/CellAddress;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v3    # "cellAddress":Lorg/apache/poi/ss/util/CellAddress;
    .end local v4    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "row":Lorg/apache/poi/ss/usermodel/Row;
    .end local v6    # "cell":Lorg/apache/poi/ss/usermodel/Cell;
    :cond_0
    goto :goto_0

    .line 450
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public drawBorderColors(Lorg/apache/poi/ss/util/CellRangeAddress;SLorg/apache/poi/ss/usermodel/BorderExtent;)V
    .locals 2
    .param p1, "range"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "color"    # S
    .param p3, "extent"    # Lorg/apache/poi/ss/usermodel/BorderExtent;

    .line 470
    sget-object v0, Lorg/apache/poi/ss/util/PropertyTemplate$1;->$SwitchMap$org$apache$poi$ss$usermodel$BorderExtent:[I

    invoke-virtual {p3}, Lorg/apache/poi/ss/usermodel/BorderExtent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 513
    :pswitch_0
    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderExtent;->VERTICAL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawOutsideBorderColors(Lorg/apache/poi/ss/util/CellRangeAddress;SLorg/apache/poi/ss/usermodel/BorderExtent;)V

    goto :goto_0

    .line 510
    :pswitch_1
    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderExtent;->INSIDE:Lorg/apache/poi/ss/usermodel/BorderExtent;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawVerticalBorderColors(Lorg/apache/poi/ss/util/CellRangeAddress;SLorg/apache/poi/ss/usermodel/BorderExtent;)V

    .line 511
    goto :goto_0

    .line 507
    :pswitch_2
    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderExtent;->ALL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawVerticalBorderColors(Lorg/apache/poi/ss/util/CellRangeAddress;SLorg/apache/poi/ss/usermodel/BorderExtent;)V

    .line 508
    goto :goto_0

    .line 504
    :pswitch_3
    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderExtent;->HORIZONTAL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawOutsideBorderColors(Lorg/apache/poi/ss/util/CellRangeAddress;SLorg/apache/poi/ss/usermodel/BorderExtent;)V

    .line 505
    goto :goto_0

    .line 501
    :pswitch_4
    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderExtent;->INSIDE:Lorg/apache/poi/ss/usermodel/BorderExtent;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawHorizontalBorderColors(Lorg/apache/poi/ss/util/CellRangeAddress;SLorg/apache/poi/ss/usermodel/BorderExtent;)V

    .line 502
    goto :goto_0

    .line 498
    :pswitch_5
    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderExtent;->ALL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawHorizontalBorderColors(Lorg/apache/poi/ss/util/CellRangeAddress;SLorg/apache/poi/ss/usermodel/BorderExtent;)V

    .line 499
    goto :goto_0

    .line 495
    :pswitch_6
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawRightBorderColor(Lorg/apache/poi/ss/util/CellRangeAddress;S)V

    .line 496
    goto :goto_0

    .line 492
    :pswitch_7
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawLeftBorderColor(Lorg/apache/poi/ss/util/CellRangeAddress;S)V

    .line 493
    goto :goto_0

    .line 489
    :pswitch_8
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawBottomBorderColor(Lorg/apache/poi/ss/util/CellRangeAddress;S)V

    .line 490
    goto :goto_0

    .line 486
    :pswitch_9
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawTopBorderColor(Lorg/apache/poi/ss/util/CellRangeAddress;S)V

    .line 487
    goto :goto_0

    .line 483
    :pswitch_a
    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderExtent;->ALL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawOutsideBorderColors(Lorg/apache/poi/ss/util/CellRangeAddress;SLorg/apache/poi/ss/usermodel/BorderExtent;)V

    .line 484
    goto :goto_0

    .line 479
    :pswitch_b
    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderExtent;->INSIDE:Lorg/apache/poi/ss/usermodel/BorderExtent;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawHorizontalBorderColors(Lorg/apache/poi/ss/util/CellRangeAddress;SLorg/apache/poi/ss/usermodel/BorderExtent;)V

    .line 480
    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderExtent;->INSIDE:Lorg/apache/poi/ss/usermodel/BorderExtent;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawVerticalBorderColors(Lorg/apache/poi/ss/util/CellRangeAddress;SLorg/apache/poi/ss/usermodel/BorderExtent;)V

    .line 481
    goto :goto_0

    .line 475
    :pswitch_c
    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderExtent;->ALL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawHorizontalBorderColors(Lorg/apache/poi/ss/util/CellRangeAddress;SLorg/apache/poi/ss/usermodel/BorderExtent;)V

    .line 476
    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderExtent;->ALL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawVerticalBorderColors(Lorg/apache/poi/ss/util/CellRangeAddress;SLorg/apache/poi/ss/usermodel/BorderExtent;)V

    .line 477
    goto :goto_0

    .line 472
    :pswitch_d
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/util/PropertyTemplate;->removeBorderColors(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    .line 473
    nop

    .line 516
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public drawBorders(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;Lorg/apache/poi/ss/usermodel/BorderExtent;)V
    .locals 2
    .param p1, "range"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "borderType"    # Lorg/apache/poi/ss/usermodel/BorderStyle;
    .param p3, "extent"    # Lorg/apache/poi/ss/usermodel/BorderExtent;

    .line 109
    sget-object v0, Lorg/apache/poi/ss/util/PropertyTemplate$1;->$SwitchMap$org$apache$poi$ss$usermodel$BorderExtent:[I

    invoke-virtual {p3}, Lorg/apache/poi/ss/usermodel/BorderExtent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 152
    :pswitch_0
    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderExtent;->VERTICAL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawOutsideBorders(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;Lorg/apache/poi/ss/usermodel/BorderExtent;)V

    goto :goto_0

    .line 149
    :pswitch_1
    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderExtent;->INSIDE:Lorg/apache/poi/ss/usermodel/BorderExtent;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawVerticalBorders(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;Lorg/apache/poi/ss/usermodel/BorderExtent;)V

    .line 150
    goto :goto_0

    .line 146
    :pswitch_2
    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderExtent;->ALL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawVerticalBorders(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;Lorg/apache/poi/ss/usermodel/BorderExtent;)V

    .line 147
    goto :goto_0

    .line 143
    :pswitch_3
    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderExtent;->HORIZONTAL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawOutsideBorders(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;Lorg/apache/poi/ss/usermodel/BorderExtent;)V

    .line 144
    goto :goto_0

    .line 140
    :pswitch_4
    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderExtent;->INSIDE:Lorg/apache/poi/ss/usermodel/BorderExtent;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawHorizontalBorders(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;Lorg/apache/poi/ss/usermodel/BorderExtent;)V

    .line 141
    goto :goto_0

    .line 137
    :pswitch_5
    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderExtent;->ALL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawHorizontalBorders(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;Lorg/apache/poi/ss/usermodel/BorderExtent;)V

    .line 138
    goto :goto_0

    .line 134
    :pswitch_6
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawRightBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    .line 135
    goto :goto_0

    .line 131
    :pswitch_7
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawLeftBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    .line 132
    goto :goto_0

    .line 128
    :pswitch_8
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawBottomBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    .line 129
    goto :goto_0

    .line 125
    :pswitch_9
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawTopBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    .line 126
    goto :goto_0

    .line 122
    :pswitch_a
    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderExtent;->ALL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawOutsideBorders(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;Lorg/apache/poi/ss/usermodel/BorderExtent;)V

    .line 123
    goto :goto_0

    .line 118
    :pswitch_b
    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderExtent;->INSIDE:Lorg/apache/poi/ss/usermodel/BorderExtent;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawHorizontalBorders(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;Lorg/apache/poi/ss/usermodel/BorderExtent;)V

    .line 119
    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderExtent;->INSIDE:Lorg/apache/poi/ss/usermodel/BorderExtent;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawVerticalBorders(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;Lorg/apache/poi/ss/usermodel/BorderExtent;)V

    .line 120
    goto :goto_0

    .line 114
    :pswitch_c
    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderExtent;->ALL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawHorizontalBorders(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;Lorg/apache/poi/ss/usermodel/BorderExtent;)V

    .line 115
    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderExtent;->ALL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawVerticalBorders(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;Lorg/apache/poi/ss/usermodel/BorderExtent;)V

    .line 116
    goto :goto_0

    .line 111
    :pswitch_d
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/util/PropertyTemplate;->removeBorders(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    .line 112
    nop

    .line 155
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public drawBorders(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;SLorg/apache/poi/ss/usermodel/BorderExtent;)V
    .locals 1
    .param p1, "range"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "borderType"    # Lorg/apache/poi/ss/usermodel/BorderStyle;
    .param p3, "color"    # S
    .param p4, "extent"    # Lorg/apache/poi/ss/usermodel/BorderExtent;

    .line 176
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawBorders(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/BorderStyle;Lorg/apache/poi/ss/usermodel/BorderExtent;)V

    .line 177
    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-eq p2, v0, :cond_0

    .line 178
    invoke-virtual {p0, p1, p3, p4}, Lorg/apache/poi/ss/util/PropertyTemplate;->drawBorderColors(Lorg/apache/poi/ss/util/CellRangeAddress;SLorg/apache/poi/ss/usermodel/BorderExtent;)V

    .line 180
    :cond_0
    return-void
.end method

.method public getBorderStyle(IILjava/lang/String;)Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "property"    # Ljava/lang/String;

    .line 921
    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    invoke-virtual {p0, v0, p3}, Lorg/apache/poi/ss/util/PropertyTemplate;->getBorderStyle(Lorg/apache/poi/ss/util/CellAddress;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    return-object v0
.end method

.method public getBorderStyle(Lorg/apache/poi/ss/util/CellAddress;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 4
    .param p1, "cell"    # Lorg/apache/poi/ss/util/CellAddress;
    .param p2, "property"    # Ljava/lang/String;

    .line 902
    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 903
    .local v0, "value":Lorg/apache/poi/ss/usermodel/BorderStyle;
    iget-object v1, p0, Lorg/apache/poi/ss/util/PropertyTemplate;->_propertyTemplate:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 904
    .local v1, "cellProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    .line 905
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 906
    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-eqz v3, :cond_0

    .line 907
    move-object v0, v2

    check-cast v0, Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 910
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method public getNumBorderColors(II)I
    .locals 1
    .param p1, "row"    # I
    .param p2, "col"    # I

    .line 892
    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/util/PropertyTemplate;->getNumBorderColors(Lorg/apache/poi/ss/util/CellAddress;)I

    move-result v0

    return v0
.end method

.method public getNumBorderColors(Lorg/apache/poi/ss/util/CellAddress;)I
    .locals 5
    .param p1, "cell"    # Lorg/apache/poi/ss/util/CellAddress;

    .line 866
    iget-object v0, p0, Lorg/apache/poi/ss/util/PropertyTemplate;->_propertyTemplate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 867
    .local v0, "cellProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 868
    const/4 v1, 0x0

    return v1

    .line 871
    :cond_0
    const/4 v1, 0x0

    .line 872
    .local v1, "count":I
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 873
    .local v3, "property":Ljava/lang/String;
    const-string/jumbo v4, "topBorderColor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 874
    add-int/lit8 v1, v1, 0x1

    .line 875
    :cond_1
    const-string v4, "bottomBorderColor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 876
    add-int/lit8 v1, v1, 0x1

    .line 877
    :cond_2
    const-string v4, "leftBorderColor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 878
    add-int/lit8 v1, v1, 0x1

    .line 879
    :cond_3
    const-string v4, "rightBorderColor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 880
    add-int/lit8 v1, v1, 0x1

    .end local v3    # "property":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 882
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    return v1
.end method

.method public getNumBorders(II)I
    .locals 1
    .param p1, "row"    # I
    .param p2, "col"    # I

    .line 857
    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/util/PropertyTemplate;->getNumBorders(Lorg/apache/poi/ss/util/CellAddress;)I

    move-result v0

    return v0
.end method

.method public getNumBorders(Lorg/apache/poi/ss/util/CellAddress;)I
    .locals 5
    .param p1, "cell"    # Lorg/apache/poi/ss/util/CellAddress;

    .line 831
    iget-object v0, p0, Lorg/apache/poi/ss/util/PropertyTemplate;->_propertyTemplate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 832
    .local v0, "cellProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 833
    const/4 v1, 0x0

    return v1

    .line 836
    :cond_0
    const/4 v1, 0x0

    .line 837
    .local v1, "count":I
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 838
    .local v3, "property":Ljava/lang/String;
    const-string v4, "borderTop"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 839
    add-int/lit8 v1, v1, 0x1

    .line 840
    :cond_1
    const-string v4, "borderBottom"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 841
    add-int/lit8 v1, v1, 0x1

    .line 842
    :cond_2
    const-string v4, "borderLeft"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 843
    add-int/lit8 v1, v1, 0x1

    .line 844
    :cond_3
    const-string v4, "borderRight"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 845
    add-int/lit8 v1, v1, 0x1

    .end local v3    # "property":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 847
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    return v1
.end method

.method public getTemplateProperty(IILjava/lang/String;)S
    .locals 1
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "property"    # Ljava/lang/String;

    .line 950
    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    invoke-virtual {p0, v0, p3}, Lorg/apache/poi/ss/util/PropertyTemplate;->getTemplateProperty(Lorg/apache/poi/ss/util/CellAddress;Ljava/lang/String;)S

    move-result v0

    return v0
.end method

.method public getTemplateProperty(Lorg/apache/poi/ss/util/CellAddress;Ljava/lang/String;)S
    .locals 3
    .param p1, "cell"    # Lorg/apache/poi/ss/util/CellAddress;
    .param p2, "property"    # Ljava/lang/String;

    .line 931
    const/4 v0, 0x0

    .line 932
    .local v0, "value":S
    iget-object v1, p0, Lorg/apache/poi/ss/util/PropertyTemplate;->_propertyTemplate:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 933
    .local v1, "cellProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    .line 934
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 935
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 936
    invoke-static {v2}, Lorg/apache/poi/ss/util/PropertyTemplate;->getShort(Ljava/lang/Object;)S

    move-result v0

    .line 939
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_0
    return v0
.end method
