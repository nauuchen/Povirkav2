.class public Lorg/apache/poi/xdgf/usermodel/XDGFShape;
.super Lorg/apache/poi/xdgf/usermodel/XDGFSheet;
.source "XDGFShape.java"


# instance fields
.field _angle:Ljava/lang/Double;

.field _beginX:Ljava/lang/Double;

.field _beginY:Ljava/lang/Double;

.field _endX:Ljava/lang/Double;

.field _endY:Ljava/lang/Double;

.field _flipX:Ljava/lang/Boolean;

.field _flipY:Ljava/lang/Boolean;

.field _height:Ljava/lang/Double;

.field _locPinX:Ljava/lang/Double;

.field _locPinY:Ljava/lang/Double;

.field _master:Lorg/apache/poi/xdgf/usermodel/XDGFMaster;

.field _masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

.field _parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

.field _parentPage:Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;

.field _pinX:Ljava/lang/Double;

.field _pinY:Ljava/lang/Double;

.field _rotationXAngle:Ljava/lang/Double;

.field _rotationYAngle:Ljava/lang/Double;

.field _rotationZAngle:Ljava/lang/Double;

.field _shapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xdgf/usermodel/XDGFShape;",
            ">;"
        }
    .end annotation
.end field

.field _text:Lorg/apache/poi/xdgf/usermodel/XDGFText;

.field _txtAngle:Ljava/lang/Double;

.field _txtHeight:Ljava/lang/Double;

.field _txtLocPinX:Ljava/lang/Double;

.field _txtLocPinY:Ljava/lang/Double;

.field _txtPinX:Ljava/lang/Double;

.field _txtPinY:Ljava/lang/Double;

.field _txtWidth:Ljava/lang/Double;

.field _width:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V
    .locals 1
    .param p1, "shapeSheet"    # Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;
    .param p2, "parentPage"    # Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;
    .param p3, "document"    # Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;-><init>(Lorg/apache/poi/xdgf/usermodel/XDGFShape;Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xdgf/usermodel/XDGFShape;Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V
    .locals 7
    .param p1, "parent"    # Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    .param p2, "shapeSheet"    # Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;
    .param p3, "parentPage"    # Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;
    .param p4, "document"    # Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    .line 113
    invoke-direct {p0, p2, p4}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;-><init>(Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_master:Lorg/apache/poi/xdgf/usermodel/XDGFMaster;

    .line 53
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    .line 55
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_text:Lorg/apache/poi/xdgf/usermodel/XDGFText;

    .line 58
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_shapes:Ljava/util/List;

    .line 63
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_pinX:Ljava/lang/Double;

    .line 64
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_pinY:Ljava/lang/Double;

    .line 66
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_width:Ljava/lang/Double;

    .line 67
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_height:Ljava/lang/Double;

    .line 70
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_locPinX:Ljava/lang/Double;

    .line 71
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_locPinY:Ljava/lang/Double;

    .line 75
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_beginX:Ljava/lang/Double;

    .line 76
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_beginY:Ljava/lang/Double;

    .line 80
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_endX:Ljava/lang/Double;

    .line 81
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_endY:Ljava/lang/Double;

    .line 83
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_angle:Ljava/lang/Double;

    .line 84
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_rotationXAngle:Ljava/lang/Double;

    .line 85
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_rotationYAngle:Ljava/lang/Double;

    .line 86
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_rotationZAngle:Ljava/lang/Double;

    .line 89
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_flipX:Ljava/lang/Boolean;

    .line 90
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_flipY:Ljava/lang/Boolean;

    .line 93
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtPinX:Ljava/lang/Double;

    .line 94
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtPinY:Ljava/lang/Double;

    .line 97
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtLocPinX:Ljava/lang/Double;

    .line 98
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtLocPinY:Ljava/lang/Double;

    .line 100
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtAngle:Ljava/lang/Double;

    .line 102
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtWidth:Ljava/lang/Double;

    .line 103
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtHeight:Ljava/lang/Double;

    .line 115
    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    .line 116
    iput-object p3, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_parentPage:Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;

    .line 118
    invoke-interface {p2}, Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;->getText()Lcom/microsoft/schemas/office/visio/x2012/main/TextType;

    move-result-object v0

    .line 119
    .local v0, "text":Lcom/microsoft/schemas/office/visio/x2012/main/TextType;
    if-eqz v0, :cond_0

    .line 120
    new-instance v1, Lorg/apache/poi/xdgf/usermodel/XDGFText;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xdgf/usermodel/XDGFText;-><init>(Lcom/microsoft/schemas/office/visio/x2012/main/TextType;Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V

    iput-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_text:Lorg/apache/poi/xdgf/usermodel/XDGFText;

    .line 122
    :cond_0
    invoke-interface {p2}, Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;->isSetShapes()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_shapes:Ljava/util/List;

    .line 124
    invoke-interface {p2}, Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;->getShapes()Lcom/microsoft/schemas/office/visio/x2012/main/ShapesType;

    move-result-object v1

    invoke-interface {v1}, Lcom/microsoft/schemas/office/visio/x2012/main/ShapesType;->getShapeArray()[Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;

    move-result-object v1

    .local v1, "arr$":[Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 125
    .local v4, "shape":Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;
    iget-object v5, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_shapes:Ljava/util/List;

    new-instance v6, Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-direct {v6, p0, v4, p3, p4}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;-><init>(Lorg/apache/poi/xdgf/usermodel/XDGFShape;Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .end local v4    # "shape":Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 128
    .end local v1    # "arr$":[Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->readProperties()V

    .line 129
    return-void
.end method


# virtual methods
.method public getAngle()Ljava/lang/Double;
    .locals 2

    .line 479
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_angle:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    .line 480
    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getAngle()Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 482
    :cond_0
    return-object v0
.end method

.method public getBeginX()Ljava/lang/Double;
    .locals 2

    .line 451
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_beginX:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    .line 452
    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getBeginX()Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 454
    :cond_0
    return-object v0
.end method

.method public getBeginY()Ljava/lang/Double;
    .locals 2

    .line 458
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_beginY:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    .line 459
    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getBeginY()Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 461
    :cond_0
    return-object v0
.end method

.method public getBounds()Ljava/awt/geom/Rectangle2D$Double;
    .locals 10

    .line 792
    new-instance v9, Ljava/awt/geom/Rectangle2D$Double;

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getWidth()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getHeight()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v9
.end method

.method public getBoundsAsPath()Ljava/awt/geom/Path2D$Double;
    .locals 9

    .line 804
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getWidth()Ljava/lang/Double;

    move-result-object v0

    .line 805
    .local v0, "w":Ljava/lang/Double;
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getHeight()Ljava/lang/Double;

    move-result-object v1

    .line 807
    .local v1, "h":Ljava/lang/Double;
    new-instance v2, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v2}, Ljava/awt/geom/Path2D$Double;-><init>()V

    .line 808
    .local v2, "bounds":Ljava/awt/geom/Path2D$Double;
    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4, v3, v4}, Ljava/awt/geom/Path2D$Double;->moveTo(DD)V

    .line 809
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v2, v5, v6, v3, v4}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    .line 810
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v2, v5, v6, v7, v8}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    .line 811
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    .line 812
    invoke-virtual {v2, v3, v4, v3, v4}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    .line 814
    return-object v2
.end method

.method public getCell(Ljava/lang/String;)Lorg/apache/poi/xdgf/usermodel/XDGFCell;
    .locals 2
    .param p1, "cellName"    # Ljava/lang/String;

    .line 282
    invoke-super {p0, p1}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getCell(Ljava/lang/String;)Lorg/apache/poi/xdgf/usermodel/XDGFCell;

    move-result-object v0

    .line 285
    .local v0, "_cell":Lorg/apache/poi/xdgf/usermodel/XDGFCell;
    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    .line 286
    invoke-virtual {v1, p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getCell(Ljava/lang/String;)Lorg/apache/poi/xdgf/usermodel/XDGFCell;

    move-result-object v0

    .line 289
    :cond_0
    return-object v0
.end method

.method public getEndX()Ljava/lang/Double;
    .locals 2

    .line 465
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_endX:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    .line 466
    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getEndX()Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 468
    :cond_0
    return-object v0
.end method

.method public getEndY()Ljava/lang/Double;
    .locals 2

    .line 472
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_endY:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    .line 473
    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getEndY()Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 475
    :cond_0
    return-object v0
.end method

.method public getFlipX()Ljava/lang/Boolean;
    .locals 2

    .line 486
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_flipX:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    .line 487
    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getFlipX()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 489
    :cond_0
    return-object v0
.end method

.method public getFlipY()Ljava/lang/Boolean;
    .locals 2

    .line 493
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_flipY:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    .line 494
    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getFlipY()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 496
    :cond_0
    return-object v0
.end method

.method public getFontColor()Ljava/awt/Color;
    .locals 2

    .line 639
    invoke-super {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getFontColor()Ljava/awt/Color;

    move-result-object v0

    .line 640
    .local v0, "fontColor":Ljava/awt/Color;
    if-eqz v0, :cond_0

    .line 641
    return-object v0

    .line 644
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_1

    .line 645
    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getFontColor()Ljava/awt/Color;

    move-result-object v1

    return-object v1

    .line 649
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getDefaultTextStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;->getFontColor()Ljava/awt/Color;

    move-result-object v1

    return-object v1
.end method

.method public getFontSize()Ljava/lang/Double;
    .locals 2

    .line 655
    invoke-super {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getFontSize()Ljava/lang/Double;

    move-result-object v0

    .line 656
    .local v0, "fontSize":Ljava/lang/Double;
    if-eqz v0, :cond_0

    .line 657
    return-object v0

    .line 660
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_1

    .line 661
    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getFontSize()Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 665
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getDefaultTextStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;->getFontSize()Ljava/lang/Double;

    move-result-object v1

    return-object v1
.end method

.method public getGeometryByIdx(J)Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;
    .locals 2
    .param p1, "idx"    # J

    .line 293
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_geometry:Ljava/util/SortedMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

    return-object v0
.end method

.method public getGeometrySections()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;",
            ">;"
        }
    .end annotation

    .line 784
    new-instance v0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable;

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_geometry:Ljava/util/SortedMap;

    iget-object v2, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_geometry:Ljava/util/SortedMap;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v1, v2}, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable;-><init>(Ljava/util/SortedMap;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public getHeight()Ljava/lang/Double;
    .locals 2

    .line 421
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_height:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    .line 422
    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getHeight()Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 424
    :cond_0
    if-eqz v0, :cond_1

    .line 427
    return-object v0

    .line 425
    :cond_1
    const-string v0, "Height not specified!"

    invoke-static {v0, p0}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->error(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/POIXMLException;

    move-result-object v0

    throw v0
.end method

.method public getID()J
    .locals 2

    .line 260
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;->getID()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLineCap()Ljava/lang/Integer;
    .locals 2

    .line 575
    invoke-super {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getLineCap()Ljava/lang/Integer;

    move-result-object v0

    .line 576
    .local v0, "lineCap":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 577
    return-object v0

    .line 580
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_1

    .line 581
    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getLineCap()Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 585
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getDefaultLineStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;->getLineCap()Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public getLineColor()Ljava/awt/Color;
    .locals 2

    .line 591
    invoke-super {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getLineColor()Ljava/awt/Color;

    move-result-object v0

    .line 592
    .local v0, "lineColor":Ljava/awt/Color;
    if-eqz v0, :cond_0

    .line 593
    return-object v0

    .line 596
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_1

    .line 597
    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getLineColor()Ljava/awt/Color;

    move-result-object v1

    return-object v1

    .line 601
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getDefaultLineStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;->getLineColor()Ljava/awt/Color;

    move-result-object v1

    return-object v1
.end method

.method public getLinePattern()Ljava/lang/Integer;
    .locals 2

    .line 607
    invoke-super {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getLinePattern()Ljava/lang/Integer;

    move-result-object v0

    .line 608
    .local v0, "linePattern":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 609
    return-object v0

    .line 612
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_1

    .line 613
    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getLinePattern()Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 617
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getDefaultLineStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;->getLinePattern()Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public getLineWeight()Ljava/lang/Double;
    .locals 2

    .line 623
    invoke-super {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getLineWeight()Ljava/lang/Double;

    move-result-object v0

    .line 624
    .local v0, "lineWeight":Ljava/lang/Double;
    if-eqz v0, :cond_0

    .line 625
    return-object v0

    .line 628
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_1

    .line 629
    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getLineWeight()Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 633
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getDefaultLineStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;->getLineWeight()Ljava/lang/Double;

    move-result-object v1

    return-object v1
.end method

.method public getLocPinX()Ljava/lang/Double;
    .locals 2

    .line 431
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_locPinX:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    .line 432
    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getLocPinX()Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 434
    :cond_0
    if-eqz v0, :cond_1

    .line 437
    return-object v0

    .line 435
    :cond_1
    const-string v0, "LocPinX not specified!"

    invoke-static {v0, p0}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->error(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/POIXMLException;

    move-result-object v0

    throw v0
.end method

.method public getLocPinY()Ljava/lang/Double;
    .locals 2

    .line 441
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_locPinY:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    .line 442
    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getLocPinY()Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 444
    :cond_0
    if-eqz v0, :cond_1

    .line 447
    return-object v0

    .line 445
    :cond_1
    const-string v0, "LocPinY not specified!"

    invoke-static {v0, p0}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->error(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/POIXMLException;

    move-result-object v0

    throw v0
.end method

.method public getMasterShape()Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    .locals 1

    .line 334
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 306
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;->getName()Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 308
    const-string v1, ""

    return-object v1

    .line 309
    :cond_0
    return-object v0
.end method

.method public getParentShape()Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    .locals 1

    .line 341
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    return-object v0
.end method

.method protected getParentTransform()Ljava/awt/geom/AffineTransform;
    .locals 15

    .line 848
    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0}, Ljava/awt/geom/AffineTransform;-><init>()V

    .line 850
    .local v0, "tr":Ljava/awt/geom/AffineTransform;
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getLocPinX()Ljava/lang/Double;

    move-result-object v8

    .line 851
    .local v8, "locX":Ljava/lang/Double;
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getLocPinY()Ljava/lang/Double;

    move-result-object v9

    .line 852
    .local v9, "locY":Ljava/lang/Double;
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getFlipX()Ljava/lang/Boolean;

    move-result-object v10

    .line 853
    .local v10, "flipX":Ljava/lang/Boolean;
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getFlipY()Ljava/lang/Boolean;

    move-result-object v11

    .line 854
    .local v11, "flipY":Ljava/lang/Boolean;
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getAngle()Ljava/lang/Double;

    move-result-object v12

    .line 856
    .local v12, "angle":Ljava/lang/Double;
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    neg-double v1, v1

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    neg-double v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 858
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getPinX()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getPinY()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 861
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v3, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v5, v1, v3

    if-lez v5, :cond_0

    .line 862
    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Ljava/awt/geom/AffineTransform;->rotate(DDD)V

    .line 867
    :cond_0
    const-wide/16 v1, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 868
    invoke-virtual {v0, v5, v6, v3, v4}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    .line 869
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getWidth()Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    neg-double v13, v13

    invoke-virtual {v0, v13, v14, v1, v2}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 872
    :cond_1
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 873
    invoke-virtual {v0, v3, v4, v5, v6}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    .line 874
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getHeight()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    neg-double v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 877
    :cond_2
    return-object v0
.end method

.method public getPath()Ljava/awt/geom/Path2D$Double;
    .locals 4

    .line 821
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getGeometrySections()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

    .line 822
    .local v1, "geoSection":Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;
    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->getNoShow()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 823
    goto :goto_0

    .line 825
    :cond_0
    invoke-virtual {v1, p0}, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->getPath(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Ljava/awt/geom/Path2D$Double;

    move-result-object v2

    return-object v2

    .line 828
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "geoSection":Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPinX()Ljava/lang/Double;
    .locals 2

    .line 391
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_pinX:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    .line 392
    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getPinX()Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 394
    :cond_0
    if-eqz v0, :cond_1

    .line 397
    return-object v0

    .line 395
    :cond_1
    const-string v0, "PinX not set!"

    invoke-static {v0, p0}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->error(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/POIXMLException;

    move-result-object v0

    throw v0
.end method

.method public getPinY()Ljava/lang/Double;
    .locals 2

    .line 401
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_pinY:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    .line 402
    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getPinY()Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 404
    :cond_0
    if-eqz v0, :cond_1

    .line 407
    return-object v0

    .line 405
    :cond_1
    const-string v0, "PinY not specified!"

    invoke-static {v0, p0}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->error(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/POIXMLException;

    move-result-object v0

    throw v0
.end method

.method public getShapeType()Ljava/lang/String;
    .locals 2

    .line 314
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;->getType()Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "type":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 316
    const-string v1, ""

    return-object v1

    .line 317
    :cond_0
    return-object v0
.end method

.method public getShapes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xdgf/usermodel/XDGFShape;",
            ">;"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_shapes:Ljava/util/List;

    return-object v0
.end method

.method public getStroke()Ljava/awt/Stroke;
    .locals 13

    .line 670
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getLineWeight()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    .line 672
    .local v0, "lineWeight":F
    const/4 v8, 0x0

    .line 673
    .local v8, "join":I
    const/high16 v9, 0x41200000    # 10.0f

    .line 675
    .local v9, "miterlimit":F
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getLineCap()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v4, :cond_0

    move v1, v2

    .line 683
    .local v1, "cap":I
    const/4 v1, 0x0

    .line 684
    move v10, v1

    goto :goto_0

    .line 675
    .end local v1    # "cap":I
    :cond_0
    move v1, v2

    .line 686
    .restart local v1    # "cap":I
    new-instance v2, Lorg/apache/poi/POIXMLException;

    const-string v3, "Invalid line cap specified"

    invoke-direct {v2, v3}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 675
    .end local v1    # "cap":I
    :cond_1
    move v1, v2

    .line 680
    .restart local v1    # "cap":I
    const/4 v1, 0x2

    .line 681
    move v10, v1

    goto :goto_0

    .line 677
    .end local v1    # "cap":I
    :cond_2
    const/4 v1, 0x1

    .line 678
    .restart local v1    # "cap":I
    move v10, v1

    .line 689
    .end local v1    # "cap":I
    .local v10, "cap":I
    :goto_0
    const/4 v1, 0x0

    .line 692
    .local v1, "dash":[F
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getLinePattern()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0xfe

    if-eq v5, v6, :cond_4

    const/4 v6, 0x6

    const/4 v7, 0x4

    packed-switch v5, :pswitch_data_0

    .line 766
    new-instance v2, Lorg/apache/poi/POIXMLException;

    const-string v3, "Invalid line pattern value"

    invoke-direct {v2, v3}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 761
    :pswitch_0
    new-array v3, v3, [F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v2

    move-object v1, v3

    .line 762
    move-object v11, v1

    goto/16 :goto_2

    .line 758
    :pswitch_1
    new-array v2, v6, [F

    fill-array-data v2, :array_0

    move-object v1, v2

    .line 759
    move-object v11, v1

    goto/16 :goto_2

    .line 755
    :pswitch_2
    new-array v2, v7, [F

    fill-array-data v2, :array_1

    move-object v1, v2

    .line 756
    move-object v11, v1

    goto/16 :goto_2

    .line 752
    :pswitch_3
    new-array v2, v6, [F

    fill-array-data v2, :array_2

    move-object v1, v2

    .line 753
    move-object v11, v1

    goto/16 :goto_2

    .line 749
    :pswitch_4
    new-array v2, v6, [F

    fill-array-data v2, :array_3

    move-object v1, v2

    .line 750
    move-object v11, v1

    goto/16 :goto_2

    .line 746
    :pswitch_5
    new-array v2, v7, [F

    fill-array-data v2, :array_4

    move-object v1, v2

    .line 747
    move-object v11, v1

    goto/16 :goto_2

    .line 743
    :pswitch_6
    new-array v2, v4, [F

    fill-array-data v2, :array_5

    move-object v1, v2

    .line 744
    move-object v11, v1

    goto/16 :goto_2

    .line 740
    :pswitch_7
    new-array v2, v4, [F

    fill-array-data v2, :array_6

    move-object v1, v2

    .line 741
    move-object v11, v1

    goto/16 :goto_2

    .line 737
    :pswitch_8
    new-array v2, v6, [F

    fill-array-data v2, :array_7

    move-object v1, v2

    .line 738
    move-object v11, v1

    goto/16 :goto_2

    .line 734
    :pswitch_9
    new-array v2, v7, [F

    fill-array-data v2, :array_8

    move-object v1, v2

    .line 735
    move-object v11, v1

    goto/16 :goto_2

    .line 731
    :pswitch_a
    new-array v2, v6, [F

    fill-array-data v2, :array_9

    move-object v1, v2

    .line 732
    move-object v11, v1

    goto/16 :goto_2

    .line 728
    :pswitch_b
    const/4 v2, 0x5

    new-array v2, v2, [F

    fill-array-data v2, :array_a

    move-object v1, v2

    .line 729
    move-object v11, v1

    goto/16 :goto_2

    .line 725
    :pswitch_c
    new-array v2, v7, [F

    fill-array-data v2, :array_b

    move-object v1, v2

    .line 726
    move-object v11, v1

    goto/16 :goto_2

    .line 722
    :pswitch_d
    new-array v2, v4, [F

    fill-array-data v2, :array_c

    move-object v1, v2

    .line 723
    move-object v11, v1

    goto :goto_2

    .line 719
    :pswitch_e
    new-array v2, v4, [F

    fill-array-data v2, :array_d

    move-object v1, v2

    .line 720
    move-object v11, v1

    goto :goto_2

    .line 716
    :pswitch_f
    new-array v2, v7, [F

    fill-array-data v2, :array_e

    move-object v1, v2

    .line 717
    move-object v11, v1

    goto :goto_2

    .line 713
    :pswitch_10
    new-array v2, v7, [F

    fill-array-data v2, :array_f

    move-object v1, v2

    .line 714
    move-object v11, v1

    goto :goto_2

    .line 710
    :pswitch_11
    new-array v2, v6, [F

    fill-array-data v2, :array_10

    move-object v1, v2

    .line 711
    move-object v11, v1

    goto :goto_2

    .line 707
    :pswitch_12
    new-array v2, v6, [F

    fill-array-data v2, :array_11

    move-object v1, v2

    .line 708
    move-object v11, v1

    goto :goto_2

    .line 704
    :pswitch_13
    new-array v2, v7, [F

    fill-array-data v2, :array_12

    move-object v1, v2

    .line 705
    move-object v11, v1

    goto :goto_2

    .line 701
    :pswitch_14
    new-array v2, v4, [F

    fill-array-data v2, :array_13

    move-object v1, v2

    .line 702
    move-object v11, v1

    goto :goto_2

    .line 698
    :pswitch_15
    new-array v2, v4, [F

    fill-array-data v2, :array_14

    move-object v1, v2

    .line 699
    move-object v11, v1

    goto :goto_2

    .line 696
    :pswitch_16
    goto :goto_1

    .line 694
    :pswitch_17
    nop

    .line 770
    :goto_1
    move-object v11, v1

    .end local v1    # "dash":[F
    .local v11, "dash":[F
    :goto_2
    if-eqz v11, :cond_3

    .line 771
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    array-length v2, v11

    if-ge v1, v2, :cond_3

    .line 772
    aget v2, v11, v1

    mul-float v2, v2, v0

    aput v2, v11, v1

    .line 771
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 776
    .end local v1    # "i":I
    :cond_3
    new-instance v12, Ljava/awt/BasicStroke;

    const/4 v7, 0x0

    move-object v1, v12

    move v2, v0

    move v3, v10

    move v4, v8

    move v5, v9

    move-object v6, v11

    invoke-direct/range {v1 .. v7}, Ljava/awt/BasicStroke;-><init>(FIIF[FF)V

    return-object v12

    .line 764
    .end local v11    # "dash":[F
    .local v1, "dash":[F
    :cond_4
    new-instance v2, Lorg/apache/poi/POIXMLException;

    const-string v3, "Unsupported line pattern value"

    invoke-direct {v2, v3}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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

    :array_0
    .array-data 4
        0x41f00000    # 30.0f
        0x40c00000    # 6.0f
        0x41400000    # 12.0f
        0x40c00000    # 6.0f
        0x41400000    # 12.0f
        0x40c00000    # 6.0f
    .end array-data

    :array_1
    .array-data 4
        0x41f00000    # 30.0f
        0x40c00000    # 6.0f
        0x41400000    # 12.0f
        0x40c00000    # 6.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x40c00000    # 6.0f
        0x41400000    # 12.0f
        0x40c00000    # 6.0f
        0x41400000    # 12.0f
        0x40c00000    # 6.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x40c00000    # 6.0f
        0x3f800000    # 1.0f
        0x40c00000    # 6.0f
        0x41400000    # 12.0f
        0x40c00000    # 6.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x40c00000    # 6.0f
        0x41400000    # 12.0f
        0x40c00000    # 6.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x40c00000    # 6.0f
    .end array-data

    :array_6
    .array-data 4
        0x41400000    # 12.0f
        0x40c00000    # 6.0f
    .end array-data

    :array_7
    .array-data 4
        0x40e00000    # 7.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
    .end array-data

    :array_8
    .array-data 4
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x40e00000    # 7.0f
        0x40000000    # 2.0f
    .end array-data

    :array_9
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
    .end array-data

    :array_a
    .array-data 4
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_b
    .array-data 4
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    :array_c
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    :array_d
    .array-data 4
        0x40400000    # 3.0f
        0x40000000    # 2.0f
    .end array-data

    :array_e
    .array-data 4
        0x40c00000    # 6.0f
        0x40400000    # 3.0f
        0x40c00000    # 6.0f
        0x40400000    # 3.0f
    .end array-data

    :array_f
    .array-data 4
        0x41700000    # 15.0f
        0x40400000    # 3.0f
        0x40c00000    # 6.0f
        0x40400000    # 3.0f
    .end array-data

    :array_10
    .array-data 4
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x40c00000    # 6.0f
        0x40400000    # 3.0f
        0x40c00000    # 6.0f
        0x40400000    # 3.0f
    .end array-data

    :array_11
    .array-data 4
        0x40c00000    # 6.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
    .end array-data

    :array_12
    .array-data 4
        0x40c00000    # 6.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
    .end array-data

    :array_13
    .array-data 4
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
    .end array-data

    :array_14
    .array-data 4
        0x40a00000    # 5.0f
        0x40400000    # 3.0f
    .end array-data
.end method

.method public getSymbolName()Ljava/lang/String;
    .locals 2

    .line 323
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_master:Lorg/apache/poi/xdgf/usermodel/XDGFMaster;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 324
    return-object v1

    .line 326
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;->getName()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 328
    return-object v1

    .line 330
    :cond_1
    return-object v0
.end method

.method public getText()Lorg/apache/poi/xdgf/usermodel/XDGFText;
    .locals 2

    .line 384
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_text:Lorg/apache/poi/xdgf/usermodel/XDGFText;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    .line 385
    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getText()Lorg/apache/poi/xdgf/usermodel/XDGFText;

    move-result-object v0

    return-object v0

    .line 387
    :cond_0
    return-object v0
.end method

.method public getTextAsString()Ljava/lang/String;
    .locals 2

    .line 268
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getText()Lorg/apache/poi/xdgf/usermodel/XDGFText;

    move-result-object v0

    .line 269
    .local v0, "text":Lorg/apache/poi/xdgf/usermodel/XDGFText;
    if-nez v0, :cond_0

    .line 270
    const-string v1, ""

    return-object v1

    .line 272
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFText;->getTextContent()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTopmostParentShape()Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    .locals 2

    .line 345
    const/4 v0, 0x0

    .line 346
    .local v0, "top":Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    .line 347
    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTopmostParentShape()Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    move-result-object v0

    .line 348
    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    .line 352
    :cond_0
    return-object v0
.end method

.method public getTxtAngle()Ljava/lang/Double;
    .locals 2

    .line 544
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtAngle:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    .line 545
    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTxtAngle()Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 547
    :cond_0
    return-object v0
.end method

.method public getTxtHeight()Ljava/lang/Double;
    .locals 2

    .line 562
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtHeight:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtHeight:Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 564
    return-object v1

    .line 566
    :cond_0
    if-nez v0, :cond_1

    .line 567
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getHeight()Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 569
    :cond_1
    return-object v0
.end method

.method public getTxtLocPinX()Ljava/lang/Double;
    .locals 4

    .line 522
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtLocPinX:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtLocPinX:Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 524
    return-object v1

    .line 526
    :cond_0
    if-nez v0, :cond_1

    .line 527
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTxtWidth()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 529
    :cond_1
    return-object v0
.end method

.method public getTxtLocPinY()Ljava/lang/Double;
    .locals 4

    .line 533
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtLocPinY:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtLocPinY:Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 535
    return-object v1

    .line 537
    :cond_0
    if-nez v0, :cond_1

    .line 538
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTxtHeight()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 540
    :cond_1
    return-object v0
.end method

.method public getTxtPinX()Ljava/lang/Double;
    .locals 4

    .line 500
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtPinX:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtPinX:Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 502
    return-object v1

    .line 504
    :cond_0
    if-nez v0, :cond_1

    .line 505
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getWidth()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 507
    :cond_1
    return-object v0
.end method

.method public getTxtPinY()Ljava/lang/Double;
    .locals 4

    .line 511
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtLocPinY:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtLocPinY:Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 513
    return-object v0

    .line 515
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtPinY:Ljava/lang/Double;

    if-nez v0, :cond_1

    .line 516
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getHeight()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 518
    :cond_1
    return-object v0
.end method

.method public getTxtWidth()Ljava/lang/Double;
    .locals 2

    .line 551
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtWidth:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtWidth:Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 553
    return-object v1

    .line 555
    :cond_0
    if-nez v0, :cond_1

    .line 556
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getWidth()Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 558
    :cond_1
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 264
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()Ljava/lang/Double;
    .locals 2

    .line 411
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_width:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    .line 412
    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getWidth()Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 414
    :cond_0
    if-eqz v0, :cond_1

    .line 417
    return-object v0

    .line 415
    :cond_1
    const-string v0, "Width not specified!"

    invoke-static {v0, p0}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->error(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/POIXMLException;

    move-result-object v0

    throw v0
.end method

.method public getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 256
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_sheet:Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;

    check-cast v0, Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;

    return-object v0
.end method

.method public bridge synthetic getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;

    move-result-object v0

    return-object v0
.end method

.method public hasGeometry()Z
    .locals 3

    .line 835
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getGeometrySections()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

    .line 836
    .local v1, "geoSection":Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;
    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->getNoShow()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 837
    const/4 v2, 0x1

    return v2

    .end local v1    # "geoSection":Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;
    :cond_0
    goto :goto_0

    .line 839
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasMaster()Z
    .locals 1

    .line 356
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_master:Lorg/apache/poi/xdgf/usermodel/XDGFMaster;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMasterShape()Z
    .locals 1

    .line 360
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasParent()Z
    .locals 1

    .line 364
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasShapes()Z
    .locals 1

    .line 368
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_shapes:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasText()Z
    .locals 1

    .line 276
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_text:Lorg/apache/poi/xdgf/usermodel/XDGFText;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_text:Lorg/apache/poi/xdgf/usermodel/XDGFText;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isDeleted()Z
    .locals 1

    .line 380
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;->isSetDel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;->getDel()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShape1D()Z
    .locals 1

    .line 376
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getBeginX()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTopmost()Z
    .locals 1

    .line 372
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected readProperties()V
    .locals 2

    .line 141
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_cells:Ljava/util/Map;

    const-string v1, "PinX"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_pinX:Ljava/lang/Double;

    .line 142
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_cells:Ljava/util/Map;

    const-string v1, "PinY"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_pinY:Ljava/lang/Double;

    .line 143
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_cells:Ljava/util/Map;

    const-string v1, "Width"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_width:Ljava/lang/Double;

    .line 144
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_cells:Ljava/util/Map;

    const-string v1, "Height"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_height:Ljava/lang/Double;

    .line 145
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_cells:Ljava/util/Map;

    const-string v1, "LocPinX"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_locPinX:Ljava/lang/Double;

    .line 146
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_cells:Ljava/util/Map;

    const-string v1, "LocPinY"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_locPinY:Ljava/lang/Double;

    .line 147
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_cells:Ljava/util/Map;

    const-string v1, "BeginX"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_beginX:Ljava/lang/Double;

    .line 148
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_cells:Ljava/util/Map;

    const-string v1, "BeginY"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_beginY:Ljava/lang/Double;

    .line 149
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_cells:Ljava/util/Map;

    const-string v1, "EndX"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_endX:Ljava/lang/Double;

    .line 150
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_cells:Ljava/util/Map;

    const-string v1, "EndY"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_endY:Ljava/lang/Double;

    .line 152
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_cells:Ljava/util/Map;

    const-string v1, "Angle"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_angle:Ljava/lang/Double;

    .line 153
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_cells:Ljava/util/Map;

    const-string v1, "RotationXAngle"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_rotationXAngle:Ljava/lang/Double;

    .line 154
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_cells:Ljava/util/Map;

    const-string v1, "RotationYAngle"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_rotationYAngle:Ljava/lang/Double;

    .line 155
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_cells:Ljava/util/Map;

    const-string v1, "RotationZAngle"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_rotationZAngle:Ljava/lang/Double;

    .line 157
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_cells:Ljava/util/Map;

    const-string v1, "FlipX"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetBoolean(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_flipX:Ljava/lang/Boolean;

    .line 158
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_cells:Ljava/util/Map;

    const-string v1, "FlipY"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetBoolean(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_flipY:Ljava/lang/Boolean;

    .line 160
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_cells:Ljava/util/Map;

    const-string v1, "TxtPinX"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtPinX:Ljava/lang/Double;

    .line 161
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_cells:Ljava/util/Map;

    const-string v1, "TxtPinY"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtPinY:Ljava/lang/Double;

    .line 162
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_cells:Ljava/util/Map;

    const-string v1, "TxtLocPinX"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtLocPinX:Ljava/lang/Double;

    .line 163
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_cells:Ljava/util/Map;

    const-string v1, "TxtLocPinY"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtLocPinY:Ljava/lang/Double;

    .line 164
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_cells:Ljava/util/Map;

    const-string v1, "TxtWidth"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtWidth:Ljava/lang/Double;

    .line 165
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_cells:Ljava/util/Map;

    const-string v1, "TxtHeight"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtHeight:Ljava/lang/Double;

    .line 167
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_cells:Ljava/util/Map;

    const-string v1, "TxtAngle"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtAngle:Ljava/lang/Double;

    .line 168
    return-void
.end method

.method protected setupMaster(Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;)V
    .locals 4
    .param p1, "pageContents"    # Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;
    .param p2, "master"    # Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;

    .line 180
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;

    move-result-object v0

    .line 182
    .local v0, "obj":Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;
    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;->isSetMaster()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 183
    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;->getMaster()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;->getMasterById(J)Lorg/apache/poi/xdgf/usermodel/XDGFMaster;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_master:Lorg/apache/poi/xdgf/usermodel/XDGFMaster;

    .line 184
    if-eqz v1, :cond_2

    .line 196
    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;->getContent()Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;->getTopLevelShapes()Ljava/util/List;

    move-result-object v1

    .line 199
    .local v1, "masterShapes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/poi/xdgf/usermodel/XDGFShape;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    iput-object v2, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    .line 206
    goto :goto_0

    .line 201
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not retrieve master shape from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_master:Lorg/apache/poi/xdgf/usermodel/XDGFMaster;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->error(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/POIXMLException;

    move-result-object v2

    throw v2

    .line 185
    .end local v1    # "masterShapes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/poi/xdgf/usermodel/XDGFShape;>;"
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refers to non-existant master "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;->getMaster()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->error(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/POIXMLException;

    move-result-object v1

    throw v1

    .line 211
    :cond_3
    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;->isSetMasterShape()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 212
    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;->getMasterShape()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;->getShapeById(J)Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    .line 213
    if-eqz v1, :cond_4

    goto :goto_1

    .line 214
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refers to non-existant master shape "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;->getMasterShape()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->error(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/POIXMLException;

    move-result-object v1

    throw v1

    .line 211
    :cond_5
    :goto_0
    nop

    .line 220
    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->setupSectionMasters()V

    .line 222
    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_shapes:Ljava/util/List;

    if-eqz v1, :cond_7

    .line 223
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    .line 224
    .local v2, "shape":Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    iget-object v3, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_master:Lorg/apache/poi/xdgf/usermodel/XDGFMaster;

    if-nez v3, :cond_6

    move-object v3, p2

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;->getContent()Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;

    move-result-object v3

    :goto_3
    invoke-virtual {v2, p1, v3}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->setupMaster(Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;)V

    .end local v2    # "shape":Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    goto :goto_2

    .line 228
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_7
    return-void
.end method

.method protected setupSectionMasters()V
    .locals 5

    .line 232
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-nez v0, :cond_0

    .line 233
    return-void

    .line 236
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_sections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 237
    .local v1, "section":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;>;"
    iget-object v2, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getSection(Ljava/lang/String;)Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;

    move-result-object v2

    .line 238
    .local v2, "master":Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;
    if-eqz v2, :cond_1

    .line 239
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;

    invoke-virtual {v3, v2}, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;->setupMaster(Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;)V

    .line 240
    .end local v1    # "section":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;>;"
    .end local v2    # "master":Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;
    :cond_1
    goto :goto_0

    .line 242
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_geometry:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 243
    .local v1, "section":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;>;"
    iget-object v2, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getGeometryByIdx(J)Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

    move-result-object v2

    .line 245
    .local v2, "master":Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;
    if-eqz v2, :cond_3

    .line 246
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

    invoke-virtual {v3, v2}, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->setupMaster(Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;)V
    :try_end_0
    .catch Lorg/apache/poi/POIXMLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .end local v1    # "section":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;>;"
    .end local v2    # "master":Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;
    :cond_3
    goto :goto_1

    .line 250
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_4
    nop

    .line 251
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Lorg/apache/poi/POIXMLException;
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->wrap(Ljava/lang/String;Lorg/apache/poi/POIXMLException;)Lorg/apache/poi/POIXMLException;

    move-result-object v1

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 133
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_parentPage:Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;

    instance-of v0, v0, Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;

    const-string v1, "\">"

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_parentPage:Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": <Shape ID=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getID()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<Shape ID=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getID()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visitShapes(Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;I)V
    .locals 3
    .param p1, "visitor"    # Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;
    .param p2, "level"    # I

    .line 917
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;->accept(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 918
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, p2}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;->visit(Lorg/apache/poi/xdgf/usermodel/XDGFShape;Ljava/awt/geom/AffineTransform;I)V

    .line 920
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_shapes:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 921
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    .line 922
    .local v1, "shape":Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, p1, v2}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->visitShapes(Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;I)V
    :try_end_0
    .catch Lorg/apache/poi/xdgf/usermodel/shape/exceptions/StopVisitingThisBranch; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/poi/POIXMLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "shape":Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    goto :goto_0

    .line 927
    .end local v0    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 928
    .local v0, "e":Lorg/apache/poi/POIXMLException;
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->wrap(Ljava/lang/String;Lorg/apache/poi/POIXMLException;)Lorg/apache/poi/POIXMLException;

    move-result-object v1

    throw v1

    .line 925
    .end local v0    # "e":Lorg/apache/poi/POIXMLException;
    :catch_1
    move-exception v0

    .line 929
    :cond_1
    nop

    .line 930
    return-void
.end method

.method public visitShapes(Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;Ljava/awt/geom/AffineTransform;I)V
    .locals 3
    .param p1, "visitor"    # Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;
    .param p2, "tr"    # Ljava/awt/geom/AffineTransform;
    .param p3, "level"    # I

    .line 888
    invoke-virtual {p2}, Ljava/awt/geom/AffineTransform;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object p2, v0

    check-cast p2, Ljava/awt/geom/AffineTransform;

    .line 889
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getParentTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    .line 892
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;->accept(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    invoke-virtual {p1, p0, p2, p3}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;->visit(Lorg/apache/poi/xdgf/usermodel/XDGFShape;Ljava/awt/geom/AffineTransform;I)V

    .line 895
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_shapes:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 896
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    .line 897
    .local v1, "shape":Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v1, p1, p2, v2}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->visitShapes(Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;Ljava/awt/geom/AffineTransform;I)V
    :try_end_0
    .catch Lorg/apache/poi/xdgf/usermodel/shape/exceptions/StopVisitingThisBranch; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/poi/POIXMLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "shape":Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    goto :goto_0

    .line 902
    .end local v0    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 903
    .local v0, "e":Lorg/apache/poi/POIXMLException;
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->wrap(Ljava/lang/String;Lorg/apache/poi/POIXMLException;)Lorg/apache/poi/POIXMLException;

    move-result-object v1

    throw v1

    .line 900
    .end local v0    # "e":Lorg/apache/poi/POIXMLException;
    :catch_1
    move-exception v0

    .line 904
    :cond_1
    nop

    .line 905
    return-void
.end method
