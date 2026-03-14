.class public Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;
.super Lorg/apache/poi/hssf/usermodel/HSSFShape;
.source "HSSFShapeGroup.java"

# interfaces
.implements Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;


# instance fields
.field private _spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;

.field private final shapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFShape;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;)V
    .locals 5
    .param p1, "spgrContainer"    # Lorg/apache/poi/ddf/EscherContainerRecord;
    .param p2, "objRecord"    # Lorg/apache/poi/hssf/record/ObjRecord;

    .line 37
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->shapes:Ljava/util/List;

    .line 40
    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildContainers()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    .line 41
    .local v0, "spContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherSpgrRecord;

    iput-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->_spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;

    .line 42
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildRecords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherRecord;

    .line 43
    .local v2, "ch":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v3

    const/16 v4, -0xff1

    if-eq v3, v4, :cond_1

    const/16 v4, -0xff0

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 47
    :cond_0
    new-instance v3, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    move-object v4, v2

    check-cast v4, Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-direct {v3, v4}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;-><init>(Lorg/apache/poi/ddf/EscherClientAnchorRecord;)V

    iput-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->anchor:Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    .line 48
    goto :goto_1

    .line 50
    :cond_1
    new-instance v3, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;

    move-object v4, v2

    check-cast v4, Lorg/apache/poi/ddf/EscherChildAnchorRecord;

    invoke-direct {v3, v4}, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;-><init>(Lorg/apache/poi/ddf/EscherChildAnchorRecord;)V

    iput-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->anchor:Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    .line 51
    nop

    .line 53
    .end local v2    # "ch":Lorg/apache/poi/ddf/EscherRecord;
    :goto_1
    goto :goto_0

    .line 56
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V
    .locals 2
    .param p1, "parent"    # Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .param p2, "anchor"    # Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    .line 59
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFShape;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->shapes:Ljava/util/List;

    .line 60
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    const/16 v1, -0xff7

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSpgrRecord;

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->_spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;

    .line 61
    return-void
.end method

.method private onCreate(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V
    .locals 5
    .param p1, "shape"    # Lorg/apache/poi/hssf/usermodel/HSSFShape;

    .line 138
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    .line 140
    .local v0, "spContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->newShapeId()I

    move-result v1

    .line 141
    .local v1, "shapeId":I
    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->setShapeId(I)V

    .line 142
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 143
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->afterInsert(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V

    .line 145
    instance-of v2, p1, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    const/16 v3, -0xff6

    if-eqz v2, :cond_0

    .line 146
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildContainers()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-virtual {v2, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherSpRecord;

    .local v2, "sp":Lorg/apache/poi/ddf/EscherSpRecord;
    goto :goto_0

    .line 148
    .end local v2    # "sp":Lorg/apache/poi/ddf/EscherSpRecord;
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherSpRecord;

    .line 150
    .restart local v2    # "sp":Lorg/apache/poi/ddf/EscherSpRecord;
    :goto_0
    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherSpRecord;->getFlags()I

    move-result v3

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    .line 152
    .end local v0    # "spContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    .end local v1    # "shapeId":I
    .end local v2    # "sp":Lorg/apache/poi/ddf/EscherSpRecord;
    :cond_1
    return-void
.end method


# virtual methods
.method public addShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V
    .locals 1
    .param p1, "shape"    # Lorg/apache/poi/hssf/usermodel/HSSFShape;

    .line 170
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->setPatriarch(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V

    .line 171
    invoke-virtual {p1, p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->setParent(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 172
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->shapes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    return-void
.end method

.method afterInsert(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V
    .locals 4
    .param p1, "patriarch"    # Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    .line 319
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getBoundAggregate()Lorg/apache/poi/hssf/record/EscherAggregate;

    move-result-object v0

    .line 320
    .local v0, "agg":Lorg/apache/poi/hssf/record/EscherAggregate;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    const/16 v2, -0xffc

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherContainerRecord;

    .line 321
    .local v1, "containerRecord":Lorg/apache/poi/ddf/EscherContainerRecord;
    const/16 v2, -0xfef

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/hssf/record/EscherAggregate;->associateShapeToObjRecord(Lorg/apache/poi/ddf/EscherRecord;Lorg/apache/poi/hssf/record/Record;)V

    .line 322
    return-void
.end method

.method protected afterRemove(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V
    .locals 3
    .param p1, "patriarch"    # Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    .line 127
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getBoundAggregate()Lorg/apache/poi/hssf/record/EscherAggregate;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildContainers()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherContainerRecord;

    const/16 v2, -0xfef

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/EscherAggregate;->removeShapeToObjRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 129
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->shapes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 130
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->shapes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFShape;

    .line 131
    .local v1, "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->removeShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)Z

    .line 132
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->afterRemove(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V

    .line 129
    .end local v1    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->shapes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 135
    return-void
.end method

.method public clear()V
    .locals 3

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->shapes:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 272
    .local v0, "copy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/poi/hssf/usermodel/HSSFShape;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFShape;

    .line 273
    .local v2, "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->removeShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)Z

    goto :goto_0

    .line 275
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    :cond_0
    return-void
.end method

.method protected cloneShape()Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .locals 2

    .line 341
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Use method cloneShape(HSSFPatriarch patriarch)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected cloneShape(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .locals 9
    .param p1, "patriarch"    # Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    .line 345
    new-instance v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    .line 346
    .local v0, "spgrContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    const/16 v1, -0xffd

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->setRecordId(S)V

    .line 347
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->setOptions(S)V

    .line 348
    new-instance v1, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v1}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    .line 349
    .local v1, "spContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v2

    const/16 v3, -0xffc

    invoke-virtual {v2, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherContainerRecord;

    .line 350
    .local v2, "cont":Lorg/apache/poi/ddf/EscherContainerRecord;
    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->serialize()[B

    move-result-object v3

    .line 351
    .local v3, "inSp":[B
    new-instance v4, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;

    invoke-direct {v4}, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Lorg/apache/poi/ddf/EscherContainerRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I

    .line 353
    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 354
    const/4 v4, 0x0

    .line 355
    .local v4, "obj":Lorg/apache/poi/hssf/record/ObjRecord;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 356
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/ObjRecord;->cloneViaReserialise()Lorg/apache/poi/hssf/record/Record;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Lorg/apache/poi/hssf/record/ObjRecord;

    .line 359
    :cond_0
    new-instance v5, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    invoke-direct {v5, v0, v4}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;)V

    .line 360
    .local v5, "group":Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;
    invoke-virtual {v5, p1}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->setPatriarch(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V

    .line 362
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getChildren()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/hssf/usermodel/HSSFShape;

    .line 364
    .local v7, "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    instance-of v8, v7, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    if-eqz v8, :cond_1

    .line 365
    move-object v8, v7

    check-cast v8, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    invoke-virtual {v8, p1}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->cloneShape(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)Lorg/apache/poi/hssf/usermodel/HSSFShape;

    move-result-object v8

    .local v8, "newShape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    goto :goto_1

    .line 367
    .end local v8    # "newShape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    :cond_1
    invoke-virtual {v7}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->cloneShape()Lorg/apache/poi/hssf/usermodel/HSSFShape;

    move-result-object v8

    .line 369
    .restart local v8    # "newShape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    :goto_1
    invoke-virtual {v5, v8}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->addShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 370
    invoke-direct {v5, v8}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->onCreate(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 371
    .end local v7    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .end local v8    # "newShape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    goto :goto_0

    .line 372
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_2
    return-object v5
.end method

.method public countOfAllChildren()I
    .locals 4

    .line 309
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->shapes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 310
    .local v0, "count":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->shapes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/usermodel/HSSFShape;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFShape;

    .line 312
    .local v2, "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->countOfAllChildren()I

    move-result v3

    add-int/2addr v0, v3

    .line 313
    .end local v2    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    goto :goto_0

    .line 314
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/usermodel/HSSFShape;>;"
    :cond_0
    return v0
.end method

.method public createGroup(Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;
    .locals 2
    .param p1, "anchor"    # Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;

    .line 161
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    .line 162
    .local v0, "group":Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;
    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->setParent(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 163
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->setAnchor(Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    .line 164
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->shapes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->onCreate(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 166
    return-object v0
.end method

.method protected createObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;
    .locals 4

    .line 110
    new-instance v0, Lorg/apache/poi/hssf/record/ObjRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/ObjRecord;-><init>()V

    .line 111
    .local v0, "obj":Lorg/apache/poi/hssf/record/ObjRecord;
    new-instance v1, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;-><init>()V

    .line 112
    .local v1, "cmo":Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setObjectType(S)V

    .line 113
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setLocked(Z)V

    .line 114
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setPrintable(Z)V

    .line 115
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setAutofill(Z)V

    .line 116
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setAutoline(Z)V

    .line 117
    new-instance v2, Lorg/apache/poi/hssf/record/GroupMarkerSubRecord;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/GroupMarkerSubRecord;-><init>()V

    .line 118
    .local v2, "gmo":Lorg/apache/poi/hssf/record/GroupMarkerSubRecord;
    new-instance v3, Lorg/apache/poi/hssf/record/EndSubRecord;

    invoke-direct {v3}, Lorg/apache/poi/hssf/record/EndSubRecord;-><init>()V

    .line 119
    .local v3, "end":Lorg/apache/poi/hssf/record/EndSubRecord;
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 120
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 121
    invoke-virtual {v0, v3}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 122
    return-object v0
.end method

.method public createPicture(Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;I)Lorg/apache/poi/hssf/usermodel/HSSFPicture;
    .locals 3
    .param p1, "anchor"    # Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;
    .param p2, "pictureIndex"    # I

    .line 236
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFPicture;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    .line 237
    .local v0, "shape":Lorg/apache/poi/hssf/usermodel/HSSFPicture;
    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->setParent(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 238
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->setAnchor(Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    .line 239
    invoke-virtual {v0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->setPictureIndex(I)V

    .line 240
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->shapes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->onCreate(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 242
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    const/16 v2, -0xff6

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherSpRecord;

    .line 243
    .local v1, "sp":Lorg/apache/poi/ddf/EscherSpRecord;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getAnchor()Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->isHorizontallyFlipped()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherSpRecord;->getFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x40

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    .line 246
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getAnchor()Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->isVerticallyFlipped()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 247
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherSpRecord;->getFlags()I

    move-result v2

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    .line 249
    :cond_1
    return-object v0
.end method

.method public createPolygon(Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFPolygon;
    .locals 2
    .param p1, "anchor"    # Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;

    .line 220
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    .line 221
    .local v0, "shape":Lorg/apache/poi/hssf/usermodel/HSSFPolygon;
    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->setParent(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 222
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->setAnchor(Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    .line 223
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->shapes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->onCreate(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 225
    return-object v0
.end method

.method public createShape(Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;
    .locals 3
    .param p1, "anchor"    # Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;

    .line 182
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    .line 183
    .local v0, "shape":Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;
    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setParent(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 184
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setAnchor(Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    .line 185
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->shapes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->onCreate(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 187
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    const/16 v2, -0xff6

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherSpRecord;

    .line 188
    .local v1, "sp":Lorg/apache/poi/ddf/EscherSpRecord;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getAnchor()Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->isHorizontallyFlipped()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherSpRecord;->getFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x40

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    .line 191
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getAnchor()Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->isVerticallyFlipped()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 192
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherSpRecord;->getFlags()I

    move-result v2

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    .line 194
    :cond_1
    return-object v0
.end method

.method protected createSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 10

    .line 65
    new-instance v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    .line 66
    .local v0, "spgrContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    new-instance v1, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v1}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    .line 67
    .local v1, "spContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    new-instance v2, Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-direct {v2}, Lorg/apache/poi/ddf/EscherSpgrRecord;-><init>()V

    .line 68
    .local v2, "spgr":Lorg/apache/poi/ddf/EscherSpgrRecord;
    new-instance v3, Lorg/apache/poi/ddf/EscherSpRecord;

    invoke-direct {v3}, Lorg/apache/poi/ddf/EscherSpRecord;-><init>()V

    .line 69
    .local v3, "sp":Lorg/apache/poi/ddf/EscherSpRecord;
    new-instance v4, Lorg/apache/poi/ddf/EscherOptRecord;

    invoke-direct {v4}, Lorg/apache/poi/ddf/EscherOptRecord;-><init>()V

    .line 71
    .local v4, "opt":Lorg/apache/poi/ddf/EscherOptRecord;
    new-instance v5, Lorg/apache/poi/ddf/EscherClientDataRecord;

    invoke-direct {v5}, Lorg/apache/poi/ddf/EscherClientDataRecord;-><init>()V

    .line 73
    .local v5, "clientData":Lorg/apache/poi/ddf/EscherClientDataRecord;
    const/16 v6, -0xffd

    invoke-virtual {v0, v6}, Lorg/apache/poi/ddf/EscherContainerRecord;->setRecordId(S)V

    .line 74
    const/16 v6, 0xf

    invoke-virtual {v0, v6}, Lorg/apache/poi/ddf/EscherContainerRecord;->setOptions(S)V

    .line 75
    const/16 v7, -0xffc

    invoke-virtual {v1, v7}, Lorg/apache/poi/ddf/EscherContainerRecord;->setRecordId(S)V

    .line 76
    invoke-virtual {v1, v6}, Lorg/apache/poi/ddf/EscherContainerRecord;->setOptions(S)V

    .line 77
    const/16 v6, -0xff7

    invoke-virtual {v2, v6}, Lorg/apache/poi/ddf/EscherSpgrRecord;->setRecordId(S)V

    .line 78
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lorg/apache/poi/ddf/EscherSpgrRecord;->setOptions(S)V

    .line 79
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lorg/apache/poi/ddf/EscherSpgrRecord;->setRectX1(I)V

    .line 80
    invoke-virtual {v2, v6}, Lorg/apache/poi/ddf/EscherSpgrRecord;->setRectY1(I)V

    .line 81
    const/16 v7, 0x3ff

    invoke-virtual {v2, v7}, Lorg/apache/poi/ddf/EscherSpgrRecord;->setRectX2(I)V

    .line 82
    const/16 v7, 0xff

    invoke-virtual {v2, v7}, Lorg/apache/poi/ddf/EscherSpgrRecord;->setRectY2(I)V

    .line 83
    const/16 v7, -0xff6

    invoke-virtual {v3, v7}, Lorg/apache/poi/ddf/EscherSpRecord;->setRecordId(S)V

    .line 84
    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Lorg/apache/poi/ddf/EscherSpRecord;->setOptions(S)V

    .line 85
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getAnchor()Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    move-result-object v7

    instance-of v7, v7, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    if-eqz v7, :cond_0

    .line 86
    const/16 v7, 0x201

    invoke-virtual {v3, v7}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    goto :goto_0

    .line 88
    :cond_0
    const/16 v7, 0x203

    invoke-virtual {v3, v7}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    .line 90
    :goto_0
    const/16 v7, -0xff5

    invoke-virtual {v4, v7}, Lorg/apache/poi/ddf/EscherOptRecord;->setRecordId(S)V

    .line 91
    const/16 v7, 0x23

    invoke-virtual {v4, v7}, Lorg/apache/poi/ddf/EscherOptRecord;->setOptions(S)V

    .line 92
    new-instance v7, Lorg/apache/poi/ddf/EscherBoolProperty;

    const/16 v8, 0x7f

    const v9, 0x40004

    invoke-direct {v7, v8, v9}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(SI)V

    invoke-virtual {v4, v7}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 93
    new-instance v7, Lorg/apache/poi/ddf/EscherBoolProperty;

    const/16 v8, 0x3bf

    const/high16 v9, 0x80000

    invoke-direct {v7, v8, v9}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(SI)V

    invoke-virtual {v4, v7}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 95
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getAnchor()Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->getEscherAnchor()Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v7

    .line 96
    .local v7, "anchor":Lorg/apache/poi/ddf/EscherRecord;
    const/16 v8, -0xfef

    invoke-virtual {v5, v8}, Lorg/apache/poi/ddf/EscherClientDataRecord;->setRecordId(S)V

    .line 97
    invoke-virtual {v5, v6}, Lorg/apache/poi/ddf/EscherClientDataRecord;->setOptions(S)V

    .line 99
    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 100
    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 101
    invoke-virtual {v1, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 102
    invoke-virtual {v1, v4}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 103
    invoke-virtual {v1, v7}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 104
    invoke-virtual {v1, v5}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 105
    return-object v0
.end method

.method public createTextbox(Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFTextbox;
    .locals 2
    .param p1, "anchor"    # Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;

    .line 204
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    .line 205
    .local v0, "shape":Lorg/apache/poi/hssf/usermodel/HSSFTextbox;
    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->setParent(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 206
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->setAnchor(Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    .line 207
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->shapes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->onCreate(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 209
    return-object v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFShape;",
            ">;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->shapes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getShapeId()I
    .locals 2

    .line 335
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    const/16 v1, -0xffc

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    .line 336
    .local v0, "containerRecord":Lorg/apache/poi/ddf/EscherContainerRecord;
    const/16 v1, -0xff6

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherSpRecord;

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherSpRecord;->getShapeId()I

    move-result v1

    return v1
.end method

.method public getX1()I
    .locals 1

    .line 281
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->_spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSpgrRecord;->getRectX1()I

    move-result v0

    return v0
.end method

.method public getX2()I
    .locals 1

    .line 295
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->_spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSpgrRecord;->getRectX2()I

    move-result v0

    return v0
.end method

.method public getY1()I
    .locals 1

    .line 288
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->_spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSpgrRecord;->getRectY1()I

    move-result v0

    return v0
.end method

.method public getY2()I
    .locals 1

    .line 302
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->_spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSpgrRecord;->getRectY2()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/hssf/usermodel/HSSFShape;",
            ">;"
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->shapes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public removeShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)Z
    .locals 2
    .param p1, "shape"    # Lorg/apache/poi/hssf/usermodel/HSSFShape;

    .line 376
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->removeChildRecord(Lorg/apache/poi/ddf/EscherRecord;)Z

    move-result v0

    .line 377
    .local v0, "isRemoved":Z
    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->afterRemove(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V

    .line 379
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->shapes:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 381
    :cond_0
    return v0
.end method

.method public setCoordinates(IIII)V
    .locals 1
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I

    .line 264
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->_spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ddf/EscherSpgrRecord;->setRectX1(I)V

    .line 265
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->_spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-virtual {v0, p3}, Lorg/apache/poi/ddf/EscherSpgrRecord;->setRectX2(I)V

    .line 266
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->_spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-virtual {v0, p2}, Lorg/apache/poi/ddf/EscherSpgrRecord;->setRectY1(I)V

    .line 267
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->_spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-virtual {v0, p4}, Lorg/apache/poi/ddf/EscherSpgrRecord;->setRectY2(I)V

    .line 268
    return-void
.end method

.method setShapeId(I)V
    .locals 4
    .param p1, "shapeId"    # I

    .line 326
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    const/16 v1, -0xffc

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    .line 327
    .local v0, "containerRecord":Lorg/apache/poi/ddf/EscherContainerRecord;
    const/16 v1, -0xff6

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherSpRecord;

    .line 328
    .local v1, "spRecord":Lorg/apache/poi/ddf/EscherSpRecord;
    invoke-virtual {v1, p1}, Lorg/apache/poi/ddf/EscherSpRecord;->setShapeId(I)V

    .line 329
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ObjRecord;->getSubRecords()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    .line 330
    .local v2, "cod":Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    rem-int/lit16 v3, p1, 0x400

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setObjectId(I)V

    .line 331
    return-void
.end method
