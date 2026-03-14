.class public abstract Lorg/apache/poi/hssf/usermodel/HSSFShape;
.super Ljava/lang/Object;
.source "HSSFShape.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Shape;


# static fields
.field public static final FILL__FILLCOLOR_DEFAULT:I = 0x8000009

.field public static final LINESTYLE_DASHDOTDOTSYS:I = 0x4

.field public static final LINESTYLE_DASHDOTGEL:I = 0x8

.field public static final LINESTYLE_DASHDOTSYS:I = 0x3

.field public static final LINESTYLE_DASHGEL:I = 0x6

.field public static final LINESTYLE_DASHSYS:I = 0x1

.field public static final LINESTYLE_DEFAULT:I = -0x1

.field public static final LINESTYLE_DOTGEL:I = 0x5

.field public static final LINESTYLE_DOTSYS:I = 0x2

.field public static final LINESTYLE_LONGDASHDOTDOTGEL:I = 0xa

.field public static final LINESTYLE_LONGDASHDOTGEL:I = 0x9

.field public static final LINESTYLE_LONGDASHGEL:I = 0x7

.field public static final LINESTYLE_NONE:I = -0x1

.field public static final LINESTYLE_SOLID:I = 0x0

.field public static final LINESTYLE__COLOR_DEFAULT:I = 0x8000040

.field public static final LINEWIDTH_DEFAULT:I = 0x2535

.field public static final LINEWIDTH_ONE_PT:I = 0x319c

.field private static final LOG:Lorg/apache/poi/util/POILogger;

.field public static final NO_FILLHITTEST_FALSE:I = 0x10000

.field public static final NO_FILLHITTEST_TRUE:I = 0x110000

.field public static final NO_FILL_DEFAULT:Z = true


# instance fields
.field private final _escherContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

.field private final _objRecord:Lorg/apache/poi/hssf/record/ObjRecord;

.field private final _optRecord:Lorg/apache/poi/ddf/EscherOptRecord;

.field private _patriarch:Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

.field anchor:Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

.field private parent:Lorg/apache/poi/hssf/usermodel/HSSFShape;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lorg/apache/poi/hssf/usermodel/HSSFShape;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;)V
    .locals 1
    .param p1, "spContainer"    # Lorg/apache/poi/ddf/EscherContainerRecord;
    .param p2, "objRecord"    # Lorg/apache/poi/hssf/record/ObjRecord;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->_escherContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    .line 93
    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->_objRecord:Lorg/apache/poi/hssf/record/ObjRecord;

    .line 94
    const/16 v0, -0xff5

    invoke-virtual {p1, v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherOptRecord;

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->_optRecord:Lorg/apache/poi/ddf/EscherOptRecord;

    .line 95
    invoke-static {p1}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->createAnchorFromEscher(Lorg/apache/poi/ddf/EscherContainerRecord;)Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->anchor:Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    .line 96
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V
    .locals 2
    .param p1, "parent"    # Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .param p2, "anchor"    # Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->parent:Lorg/apache/poi/hssf/usermodel/HSSFShape;

    .line 103
    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->anchor:Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    .line 104
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->createSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->_escherContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    .line 105
    const/16 v1, -0xff5

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherOptRecord;

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->_optRecord:Lorg/apache/poi/ddf/EscherOptRecord;

    .line 106
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->createObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->_objRecord:Lorg/apache/poi/hssf/record/ObjRecord;

    .line 108
    return-void
.end method


# virtual methods
.method abstract afterInsert(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V
.end method

.method protected abstract afterRemove(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V
.end method

.method protected abstract cloneShape()Lorg/apache/poi/hssf/usermodel/HSSFShape;
.end method

.method public countOfAllChildren()I
    .locals 1

    .line 398
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract createObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;
.end method

.method protected abstract createSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;
.end method

.method public getAnchor()Lorg/apache/poi/hssf/usermodel/HSSFAnchor;
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->anchor:Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    return-object v0
.end method

.method public bridge synthetic getAnchor()Lorg/apache/poi/ss/usermodel/ChildAnchor;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getAnchor()Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    move-result-object v0

    return-object v0
.end method

.method protected getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->_escherContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    return-object v0
.end method

.method public getFillColor()I
    .locals 2

    .line 246
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->_optRecord:Lorg/apache/poi/ddf/EscherOptRecord;

    const/16 v1, 0x181

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherOptRecord;->lookup(I)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherRGBProperty;

    .line 247
    .local v0, "rgbProperty":Lorg/apache/poi/ddf/EscherRGBProperty;
    if-nez v0, :cond_0

    const v1, 0x8000009

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherRGBProperty;->getRgbColor()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getLineStyle()I
    .locals 2

    .line 285
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->_optRecord:Lorg/apache/poi/ddf/EscherOptRecord;

    const/16 v1, 0x1ce

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherOptRecord;->lookup(I)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    .line 286
    .local v0, "property":Lorg/apache/poi/ddf/EscherSimpleProperty;
    if-nez v0, :cond_0

    .line 287
    const/4 v1, -0x1

    return v1

    .line 289
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result v1

    return v1
.end method

.method public getLineStyleColor()I
    .locals 2

    .line 225
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->_optRecord:Lorg/apache/poi/ddf/EscherOptRecord;

    const/16 v1, 0x1c0

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherOptRecord;->lookup(I)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherRGBProperty;

    .line 226
    .local v0, "rgbProperty":Lorg/apache/poi/ddf/EscherRGBProperty;
    if-nez v0, :cond_0

    const v1, 0x8000040

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherRGBProperty;->getRgbColor()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getLineWidth()I
    .locals 2

    .line 267
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->_optRecord:Lorg/apache/poi/ddf/EscherOptRecord;

    const/16 v1, 0x1cb

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherOptRecord;->lookup(I)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    .line 268
    .local v0, "property":Lorg/apache/poi/ddf/EscherSimpleProperty;
    if-nez v0, :cond_0

    const/16 v1, 0x2535

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method protected getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->_objRecord:Lorg/apache/poi/hssf/record/ObjRecord;

    return-object v0
.end method

.method public getOptRecord()Lorg/apache/poi/ddf/EscherOptRecord;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->_optRecord:Lorg/apache/poi/ddf/EscherOptRecord;

    return-object v0
.end method

.method public getParent()Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->parent:Lorg/apache/poi/hssf/usermodel/HSSFShape;

    return-object v0
.end method

.method public bridge synthetic getParent()Lorg/apache/poi/ss/usermodel/Shape;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getParent()Lorg/apache/poi/hssf/usermodel/HSSFShape;

    move-result-object v0

    return-object v0
.end method

.method public getPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    .locals 1

    .line 408
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->_patriarch:Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    return-object v0
.end method

.method public getRotationDegree()I
    .locals 8

    .line 368
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 369
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getOptRecord()Lorg/apache/poi/ddf/EscherOptRecord;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherOptRecord;->lookup(I)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherSimpleProperty;

    .line 370
    .local v1, "property":Lorg/apache/poi/ddf/EscherSimpleProperty;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 371
    return v2

    .line 374
    :cond_0
    const/4 v3, 0x2

    :try_start_0
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result v4

    invoke-static {v4, v0}, Lorg/apache/poi/util/LittleEndian;->putInt(ILjava/io/OutputStream;)V

    .line 375
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v4, v3}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 376
    :catch_0
    move-exception v4

    .line 377
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Lorg/apache/poi/hssf/usermodel/HSSFShape;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v6, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const-string v7, "can\'t determine rotation degree"

    aput-object v7, v3, v2

    const/4 v7, 0x1

    aput-object v4, v3, v7

    invoke-virtual {v5, v6, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 378
    return v2
.end method

.method getShapeId()I
    .locals 2

    .line 136
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->_escherContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    const/16 v1, -0xff6

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSpRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSpRecord;->getShapeId()I

    move-result v0

    return v0
.end method

.method public getShapeName()Ljava/lang/String;
    .locals 4

    .line 419
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getOptRecord()Lorg/apache/poi/ddf/EscherOptRecord;

    move-result-object v0

    .line 420
    .local v0, "eor":Lorg/apache/poi/ddf/EscherOptRecord;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 421
    return-object v1

    .line 423
    :cond_0
    const/16 v2, 0x380

    invoke-virtual {v0, v2}, Lorg/apache/poi/ddf/EscherOptRecord;->lookup(I)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v2

    .line 424
    .local v2, "ep":Lorg/apache/poi/ddf/EscherProperty;
    instance-of v3, v2, Lorg/apache/poi/ddf/EscherComplexProperty;

    if-eqz v3, :cond_1

    .line 425
    move-object v1, v2

    check-cast v1, Lorg/apache/poi/ddf/EscherComplexProperty;

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/util/StringUtil;->getFromUnicodeLE([B)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 427
    :cond_1
    return-object v1
.end method

.method public isFlipHorizontal()Z
    .locals 2

    .line 360
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    const/16 v1, -0xff6

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSpRecord;

    .line 361
    .local v0, "sp":Lorg/apache/poi/ddf/EscherSpRecord;
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSpRecord;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isFlipVertical()Z
    .locals 2

    .line 352
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    const/16 v1, -0xff6

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSpRecord;

    .line 353
    .local v0, "sp":Lorg/apache/poi/ddf/EscherSpRecord;
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSpRecord;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isNoFill()Z
    .locals 4

    .line 311
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->_optRecord:Lorg/apache/poi/ddf/EscherOptRecord;

    const/16 v1, 0x1bf

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherOptRecord;->lookup(I)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherBoolProperty;

    .line 312
    .local v0, "property":Lorg/apache/poi/ddf/EscherBoolProperty;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    :goto_0
    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherBoolProperty;->getPropertyValue()I

    move-result v2

    const/high16 v3, 0x110000

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public setAnchor(Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V
    .locals 6
    .param p1, "anchor"    # Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "i":I
    const/4 v1, -0x1

    .line 184
    .local v1, "recordId":I
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->parent:Lorg/apache/poi/hssf/usermodel/HSSFShape;

    if-nez v2, :cond_4

    .line 185
    instance-of v2, p1, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;

    if-nez v2, :cond_3

    .line 187
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->_escherContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    const/16 v3, -0xff0

    invoke-virtual {v2, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    .line 188
    .local v2, "anch":Lorg/apache/poi/ddf/EscherClientAnchorRecord;
    if-eqz v2, :cond_2

    .line 189
    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->_escherContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-virtual {v4}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildRecords()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 190
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->_escherContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-virtual {v4, v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v4

    if-ne v4, v3, :cond_0

    .line 191
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->_escherContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-virtual {v4}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildRecords()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v0, v4, :cond_0

    .line 192
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->_escherContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v1

    .line 189
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_1
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->_escherContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-virtual {v3, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->removeChildRecord(Lorg/apache/poi/ddf/EscherRecord;)Z

    .line 198
    .end local v2    # "anch":Lorg/apache/poi/ddf/EscherClientAnchorRecord;
    :cond_2
    goto :goto_2

    .line 186
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Must use client anchors for shapes directly attached to sheet."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 199
    :cond_4
    instance-of v2, p1, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    if-nez v2, :cond_9

    .line 201
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->_escherContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    const/16 v3, -0xff1

    invoke-virtual {v2, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherChildAnchorRecord;

    .line 202
    .local v2, "anch":Lorg/apache/poi/ddf/EscherChildAnchorRecord;
    if-eqz v2, :cond_7

    .line 203
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->_escherContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-virtual {v4}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildRecords()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 204
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->_escherContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-virtual {v4, v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v4

    if-ne v4, v3, :cond_5

    .line 205
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->_escherContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-virtual {v4}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildRecords()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v0, v4, :cond_5

    .line 206
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->_escherContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v1

    .line 203
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 210
    :cond_6
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->_escherContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-virtual {v3, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->removeChildRecord(Lorg/apache/poi/ddf/EscherRecord;)Z

    .line 213
    .end local v2    # "anch":Lorg/apache/poi/ddf/EscherChildAnchorRecord;
    :cond_7
    :goto_2
    const/4 v2, -0x1

    if-ne v2, v1, :cond_8

    .line 214
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->_escherContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->getEscherAnchor()Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    goto :goto_3

    .line 216
    :cond_8
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->_escherContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->getEscherAnchor()Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildBefore(Lorg/apache/poi/ddf/EscherRecord;I)V

    .line 218
    :goto_3
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->anchor:Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    .line 219
    return-void

    .line 200
    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Must use child anchors for shapes attached to groups."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setFillColor(I)V
    .locals 2
    .param p1, "fillColor"    # I

    .line 254
    new-instance v0, Lorg/apache/poi/ddf/EscherRGBProperty;

    const/16 v1, 0x181

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/ddf/EscherRGBProperty;-><init>(SI)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 255
    return-void
.end method

.method public setFillColor(III)V
    .locals 3
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I

    .line 259
    shl-int/lit8 v0, p3, 0x10

    shl-int/lit8 v1, p2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p1

    .line 260
    .local v0, "fillColor":I
    new-instance v1, Lorg/apache/poi/ddf/EscherRGBProperty;

    const/16 v2, 0x181

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/ddf/EscherRGBProperty;-><init>(SI)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 261
    return-void
.end method

.method public setFlipHorizontal(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 340
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    const/16 v1, -0xff6

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSpRecord;

    .line 341
    .local v0, "sp":Lorg/apache/poi/ddf/EscherSpRecord;
    if-eqz p1, :cond_0

    .line 342
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSpRecord;->getFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x40

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    goto :goto_0

    .line 344
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSpRecord;->getFlags()I

    move-result v1

    const v2, 0x7fffffbf

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    .line 346
    :goto_0
    return-void
.end method

.method public setFlipVertical(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 328
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    const/16 v1, -0xff6

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSpRecord;

    .line 329
    .local v0, "sp":Lorg/apache/poi/ddf/EscherSpRecord;
    if-eqz p1, :cond_0

    .line 330
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSpRecord;->getFlags()I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    goto :goto_0

    .line 332
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSpRecord;->getFlags()I

    move-result v1

    const v2, 0x7fffff7f

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    .line 334
    :goto_0
    return-void
.end method

.method public setLineStyle(I)V
    .locals 3
    .param p1, "lineStyle"    # I

    .line 298
    new-instance v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v1, 0x1ce

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 299
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getLineStyle()I

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    new-instance v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v1, 0x1d7

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 301
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getLineStyle()I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0x1ff

    if-ne v0, v1, :cond_0

    .line 302
    new-instance v0, Lorg/apache/poi/ddf/EscherBoolProperty;

    const/high16 v1, 0x80000

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(SI)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    goto :goto_0

    .line 304
    :cond_0
    new-instance v0, Lorg/apache/poi/ddf/EscherBoolProperty;

    const v1, 0x80008

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(SI)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 307
    :cond_1
    :goto_0
    return-void
.end method

.method public setLineStyleColor(I)V
    .locals 2
    .param p1, "lineStyleColor"    # I

    .line 233
    new-instance v0, Lorg/apache/poi/ddf/EscherRGBProperty;

    const/16 v1, 0x1c0

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/ddf/EscherRGBProperty;-><init>(SI)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 234
    return-void
.end method

.method public setLineStyleColor(III)V
    .locals 3
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I

    .line 238
    shl-int/lit8 v0, p3, 0x10

    shl-int/lit8 v1, p2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p1

    .line 239
    .local v0, "lineStyleColor":I
    new-instance v1, Lorg/apache/poi/ddf/EscherRGBProperty;

    const/16 v2, 0x1c0

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/ddf/EscherRGBProperty;-><init>(SI)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 240
    return-void
.end method

.method public setLineWidth(I)V
    .locals 2
    .param p1, "lineWidth"    # I

    .line 278
    new-instance v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v1, 0x1cb

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 279
    return-void
.end method

.method public setNoFill(Z)V
    .locals 3
    .param p1, "noFill"    # Z

    .line 317
    new-instance v0, Lorg/apache/poi/ddf/EscherBoolProperty;

    if-eqz p1, :cond_0

    const/high16 v1, 0x110000

    goto :goto_0

    :cond_0
    const/high16 v1, 0x10000

    :goto_0
    const/16 v2, 0x1bf

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(SI)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 318
    return-void
.end method

.method protected setParent(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V
    .locals 0
    .param p1, "parent"    # Lorg/apache/poi/hssf/usermodel/HSSFShape;

    .line 412
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->parent:Lorg/apache/poi/hssf/usermodel/HSSFShape;

    .line 413
    return-void
.end method

.method protected setPatriarch(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V
    .locals 0
    .param p1, "_patriarch"    # Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    .line 404
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->_patriarch:Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    .line 405
    return-void
.end method

.method protected setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V
    .locals 1
    .param p1, "property"    # Lorg/apache/poi/ddf/EscherProperty;

    .line 321
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->_optRecord:Lorg/apache/poi/ddf/EscherOptRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ddf/EscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 322
    return-void
.end method

.method public setRotationDegree(S)V
    .locals 3
    .param p1, "value"    # S

    .line 391
    new-instance v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    shl-int/lit8 v1, p1, 0x10

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 392
    return-void
.end method

.method setShapeId(I)V
    .locals 3
    .param p1, "shapeId"    # I

    .line 126
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->_escherContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    const/16 v1, -0xff6

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSpRecord;

    .line 127
    .local v0, "spRecord":Lorg/apache/poi/ddf/EscherSpRecord;
    invoke-virtual {v0, p1}, Lorg/apache/poi/ddf/EscherSpRecord;->setShapeId(I)V

    .line 128
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFShape;->_objRecord:Lorg/apache/poi/hssf/record/ObjRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/ObjRecord;->getSubRecords()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    .line 129
    .local v1, "cod":Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    rem-int/lit16 v2, p1, 0x400

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setObjectId(I)V

    .line 130
    return-void
.end method
