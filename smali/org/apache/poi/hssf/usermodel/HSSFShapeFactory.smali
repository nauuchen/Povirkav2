.class public Lorg/apache/poi/hssf/usermodel/HSSFShapeFactory;
.super Ljava/lang/Object;
.source "HSSFShapeFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createShapeTree(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/EscherAggregate;Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 10
    .param p0, "container"    # Lorg/apache/poi/ddf/EscherContainerRecord;
    .param p1, "agg"    # Lorg/apache/poi/hssf/record/EscherAggregate;
    .param p2, "out"    # Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;
    .param p3, "root"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 52
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getRecordId()S

    move-result v0

    const/16 v1, -0xfef

    const/4 v2, 0x0

    const/16 v3, -0xffd

    if-ne v0, v3, :cond_3

    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "obj":Lorg/apache/poi/hssf/record/ObjRecord;
    invoke-virtual {p0, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-virtual {v2, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherClientDataRecord;

    .line 55
    .local v1, "clientData":Lorg/apache/poi/ddf/EscherClientDataRecord;
    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/EscherAggregate;->getShapeToObjMapping()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/apache/poi/hssf/record/ObjRecord;

    .line 58
    :cond_0
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    invoke-direct {v2, p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;)V

    .line 59
    .local v2, "group":Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildContainers()Ljava/util/List;

    move-result-object v3

    .line 61
    .local v3, "children":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherContainerRecord;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 62
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ddf/EscherContainerRecord;

    .line 63
    .local v5, "spContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    if-eqz v4, :cond_1

    .line 64
    invoke-static {v5, p1, v2, p3}, Lorg/apache/poi/hssf/usermodel/HSSFShapeFactory;->createShapeTree(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/EscherAggregate;Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 61
    .end local v5    # "spContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 67
    .end local v4    # "i":I
    :cond_2
    invoke-interface {p2, v2}, Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;->addShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .end local v0    # "obj":Lorg/apache/poi/hssf/record/ObjRecord;
    .end local v1    # "clientData":Lorg/apache/poi/ddf/EscherClientDataRecord;
    .end local v2    # "group":Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;
    .end local v3    # "children":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherContainerRecord;>;"
    goto/16 :goto_5

    .line 68
    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getRecordId()S

    move-result v0

    const/16 v3, -0xffc

    if-ne v0, v3, :cond_12

    .line 69
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/EscherAggregate;->getShapeToObjMapping()Ljava/util/Map;

    move-result-object v0

    .line 70
    .local v0, "shapeToObj":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/poi/ddf/EscherRecord;Lorg/apache/poi/hssf/record/Record;>;"
    const/4 v3, 0x0

    .line 71
    .local v3, "objRecord":Lorg/apache/poi/hssf/record/ObjRecord;
    const/4 v4, 0x0

    .line 73
    .local v4, "txtRecord":Lorg/apache/poi/hssf/record/TextObjectRecord;
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    const/4 v6, 0x0

    move-object v7, v6

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/ddf/EscherRecord;

    .line 74
    .local v7, "record":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v7}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v8

    const/16 v9, -0xff3

    if-eq v8, v9, :cond_5

    if-eq v8, v1, :cond_4

    goto :goto_2

    .line 76
    :cond_4
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v3, v8

    check-cast v3, Lorg/apache/poi/hssf/record/ObjRecord;

    .line 77
    goto :goto_2

    .line 79
    :cond_5
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v4, v8

    check-cast v4, Lorg/apache/poi/hssf/record/TextObjectRecord;

    .line 80
    nop

    .line 82
    .end local v7    # "record":Lorg/apache/poi/ddf/EscherRecord;
    :goto_2
    goto :goto_1

    .line 85
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_6
    if-eqz v3, :cond_11

    .line 88
    invoke-static {v3}, Lorg/apache/poi/hssf/usermodel/HSSFShapeFactory;->isEmbeddedObject(Lorg/apache/poi/hssf/record/ObjRecord;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 89
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;

    invoke-direct {v1, p0, v3, p3}, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    .line 90
    .local v1, "objectData":Lorg/apache/poi/hssf/usermodel/HSSFObjectData;
    invoke-interface {p2, v1}, Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;->addShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 91
    return-void

    .line 93
    .end local v1    # "objectData":Lorg/apache/poi/hssf/usermodel/HSSFObjectData;
    :cond_7
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ObjRecord;->getSubRecords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    .line 95
    .local v1, "cmo":Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->getObjectType()S

    move-result v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_10

    const/4 v5, 0x2

    if-eq v2, v5, :cond_f

    const/4 v5, 0x6

    if-eq v2, v5, :cond_e

    const/16 v5, 0x8

    if-eq v2, v5, :cond_d

    const/16 v5, 0x14

    if-eq v2, v5, :cond_c

    const/16 v5, 0x19

    if-eq v2, v5, :cond_b

    const/16 v5, 0x1e

    if-eq v2, v5, :cond_8

    move-object v2, v7

    .local v2, "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    move-object v5, v6

    .line 128
    .local v5, "optRecord":Lorg/apache/poi/ddf/EscherOptRecord;
    new-instance v6, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;

    invoke-direct {v6, p0, v3, v4}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;)V

    move-object v2, v6

    goto/16 :goto_4

    .line 95
    .end local v2    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .end local v5    # "optRecord":Lorg/apache/poi/ddf/EscherOptRecord;
    :cond_8
    move-object v2, v7

    .line 109
    .restart local v2    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    const/16 v5, -0xff5

    invoke-virtual {p0, v5}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ddf/EscherOptRecord;

    .line 110
    .restart local v5    # "optRecord":Lorg/apache/poi/ddf/EscherOptRecord;
    if-nez v5, :cond_9

    .line 111
    new-instance v6, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;

    invoke-direct {v6, p0, v3, v4}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;)V

    move-object v2, v6

    goto :goto_4

    .line 113
    .end local v2    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    :cond_9
    const/16 v2, 0x145

    invoke-virtual {v5, v2}, Lorg/apache/poi/ddf/EscherOptRecord;->lookup(I)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v2

    .line 114
    .local v2, "property":Lorg/apache/poi/ddf/EscherProperty;
    if-eqz v2, :cond_a

    .line 115
    new-instance v6, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;

    invoke-direct {v6, p0, v3, v4}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;)V

    move-object v2, v6

    .local v6, "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    goto :goto_3

    .line 117
    .end local v6    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    :cond_a
    new-instance v6, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;

    invoke-direct {v6, p0, v3, v4}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;)V

    move-object v2, v6

    .line 120
    .local v2, "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    :goto_3
    goto :goto_4

    .line 95
    .end local v2    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .end local v5    # "optRecord":Lorg/apache/poi/ddf/EscherOptRecord;
    :cond_b
    move-object v2, v7

    .restart local v2    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    move-object v5, v6

    .line 125
    .restart local v5    # "optRecord":Lorg/apache/poi/ddf/EscherOptRecord;
    new-instance v6, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    invoke-virtual {p1, v3}, Lorg/apache/poi/hssf/record/EscherAggregate;->getNoteRecordByObj(Lorg/apache/poi/hssf/record/ObjRecord;)Lorg/apache/poi/hssf/record/NoteRecord;

    move-result-object v7

    invoke-direct {v6, p0, v3, v4, v7}, Lorg/apache/poi/hssf/usermodel/HSSFComment;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;Lorg/apache/poi/hssf/record/NoteRecord;)V

    move-object v2, v6

    .line 126
    goto :goto_4

    .line 95
    .end local v2    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .end local v5    # "optRecord":Lorg/apache/poi/ddf/EscherOptRecord;
    :cond_c
    move-object v2, v7

    .line 106
    .restart local v2    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    new-instance v5, Lorg/apache/poi/hssf/usermodel/HSSFCombobox;

    invoke-direct {v5, p0, v3}, Lorg/apache/poi/hssf/usermodel/HSSFCombobox;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;)V

    move-object v2, v5

    .line 107
    goto :goto_4

    .line 97
    .end local v2    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    :cond_d
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFPicture;

    invoke-direct {v2, p0, v3}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;)V

    .line 98
    .restart local v2    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    goto :goto_4

    .line 95
    .end local v2    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    :cond_e
    move-object v2, v7

    .restart local v2    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    move-object v5, v6

    .line 122
    .restart local v5    # "optRecord":Lorg/apache/poi/ddf/EscherOptRecord;
    new-instance v6, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;

    invoke-direct {v6, p0, v3, v4}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;)V

    move-object v2, v6

    .line 123
    goto :goto_4

    .line 95
    .end local v2    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .end local v5    # "optRecord":Lorg/apache/poi/ddf/EscherOptRecord;
    :cond_f
    move-object v2, v7

    .line 100
    .restart local v2    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    new-instance v5, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;

    invoke-direct {v5, p0, v3, v4}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;)V

    move-object v2, v5

    .line 101
    goto :goto_4

    .line 95
    .end local v2    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    :cond_10
    move-object v2, v7

    .line 103
    .restart local v2    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    new-instance v5, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;

    invoke-direct {v5, p0, v3}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;)V

    move-object v2, v5

    .line 104
    nop

    .line 130
    :goto_4
    invoke-interface {p2, v2}, Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;->addShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    goto :goto_6

    .line 86
    .end local v1    # "cmo":Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    .end local v2    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    :cond_11
    new-instance v1, Lorg/apache/poi/util/RecordFormatException;

    const-string v2, "EscherClientDataRecord can\'t be found."

    invoke-direct {v1, v2}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    .end local v0    # "shapeToObj":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/poi/ddf/EscherRecord;Lorg/apache/poi/hssf/record/Record;>;"
    .end local v3    # "objRecord":Lorg/apache/poi/hssf/record/ObjRecord;
    .end local v4    # "txtRecord":Lorg/apache/poi/hssf/record/TextObjectRecord;
    :cond_12
    :goto_5
    nop

    .line 132
    :goto_6
    return-void
.end method

.method private static isEmbeddedObject(Lorg/apache/poi/hssf/record/ObjRecord;)Z
    .locals 3
    .param p0, "obj"    # Lorg/apache/poi/hssf/record/ObjRecord;

    .line 135
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ObjRecord;->getSubRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/SubRecord;

    .line 136
    .local v1, "sub":Lorg/apache/poi/hssf/record/SubRecord;
    instance-of v2, v1, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;

    if-eqz v2, :cond_0

    .line 137
    const/4 v2, 0x1

    return v2

    .end local v1    # "sub":Lorg/apache/poi/hssf/record/SubRecord;
    :cond_0
    goto :goto_0

    .line 140
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
