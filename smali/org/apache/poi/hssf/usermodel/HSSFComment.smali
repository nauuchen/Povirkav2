.class public Lorg/apache/poi/hssf/usermodel/HSSFComment;
.super Lorg/apache/poi/hssf/usermodel/HSSFTextbox;
.source "HSSFComment.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Comment;


# static fields
.field private static final FILL_TYPE_PICTURE:I = 0x3

.field private static final FILL_TYPE_SOLID:I = 0x0

.field private static final GROUP_SHAPE_HIDDEN_MASK:I = 0x1000002

.field private static final GROUP_SHAPE_NOT_HIDDEN_MASK:I = -0x1000003

.field private static final GROUP_SHAPE_PROPERTY_DEFAULT_VALUE:I = 0xa0002


# instance fields
.field private final _note:Lorg/apache/poi/hssf/record/NoteRecord;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;Lorg/apache/poi/hssf/record/NoteRecord;)V
    .locals 0
    .param p1, "spContainer"    # Lorg/apache/poi/ddf/EscherContainerRecord;
    .param p2, "objRecord"    # Lorg/apache/poi/hssf/record/ObjRecord;
    .param p3, "textObjectRecord"    # Lorg/apache/poi/hssf/record/TextObjectRecord;
    .param p4, "note"    # Lorg/apache/poi/hssf/record/NoteRecord;

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;)V

    .line 61
    iput-object p4, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    .line 62
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/hssf/record/NoteRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;)V
    .locals 2
    .param p1, "note"    # Lorg/apache/poi/hssf/record/NoteRecord;
    .param p2, "txo"    # Lorg/apache/poi/hssf/record/TextObjectRecord;

    .line 88
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    invoke-direct {v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFComment;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;Lorg/apache/poi/hssf/record/NoteRecord;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V
    .locals 1
    .param p1, "parent"    # Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .param p2, "anchor"    # Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    .line 71
    invoke-static {}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->createNoteRecord()Lorg/apache/poi/hssf/record/NoteRecord;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;Lorg/apache/poi/hssf/record/NoteRecord;)V

    .line 72
    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;Lorg/apache/poi/hssf/record/NoteRecord;)V
    .locals 2
    .param p1, "parent"    # Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .param p2, "anchor"    # Lorg/apache/poi/hssf/usermodel/HSSFAnchor;
    .param p3, "note"    # Lorg/apache/poi/hssf/record/NoteRecord;

    .line 75
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    .line 76
    iput-object p3, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    .line 78
    const v0, 0x8000050

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->setFillColor(I)V

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->setVisible(Z)V

    .line 82
    const-string v1, ""

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->setAuthor(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/ObjRecord;->getSubRecords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    .line 84
    .local v0, "cod":Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setObjectType(S)V

    .line 85
    return-void
.end method

.method private static createNoteRecord()Lorg/apache/poi/hssf/record/NoteRecord;
    .locals 2

    .line 128
    new-instance v0, Lorg/apache/poi/hssf/record/NoteRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/NoteRecord;-><init>()V

    .line 129
    .local v0, "note":Lorg/apache/poi/hssf/record/NoteRecord;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/NoteRecord;->setFlags(S)V

    .line 130
    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/NoteRecord;->setAuthor(Ljava/lang/String;)V

    .line 131
    return-object v0
.end method

.method private setHidden(Z)V
    .locals 6
    .param p1, "value"    # Z

    .line 315
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getOptRecord()Lorg/apache/poi/ddf/EscherOptRecord;

    move-result-object v0

    const/16 v1, 0x3bf

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherOptRecord;->lookup(I)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    .line 317
    .local v0, "property":Lorg/apache/poi/ddf/EscherSimpleProperty;
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 318
    new-instance v3, Lorg/apache/poi/ddf/EscherSimpleProperty;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result v4

    const v5, 0x1000002

    or-int/2addr v4, v5

    invoke-direct {v3, v1, v2, v2, v4}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {p0, v3}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    goto :goto_0

    .line 320
    :cond_0
    new-instance v3, Lorg/apache/poi/ddf/EscherSimpleProperty;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result v4

    const v5, -0x1000003

    and-int/2addr v4, v5

    invoke-direct {v3, v1, v2, v2, v4}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {p0, v3}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 322
    :goto_0
    return-void
.end method


# virtual methods
.method afterInsert(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V
    .locals 2
    .param p1, "patriarch"    # Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    .line 93
    invoke-super {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->afterInsert(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V

    .line 94
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getBoundAggregate()Lorg/apache/poi/hssf/record/EscherAggregate;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getNoteRecord()Lorg/apache/poi/hssf/record/NoteRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/EscherAggregate;->addTailRecord(Lorg/apache/poi/hssf/record/NoteRecord;)V

    .line 95
    return-void
.end method

.method public afterRemove(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V
    .locals 2
    .param p1, "patriarch"    # Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    .line 277
    invoke-super {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->afterRemove(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V

    .line 278
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getBoundAggregate()Lorg/apache/poi/hssf/record/EscherAggregate;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getNoteRecord()Lorg/apache/poi/hssf/record/NoteRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/EscherAggregate;->removeTailRecord(Lorg/apache/poi/hssf/record/NoteRecord;)V

    .line 279
    return-void
.end method

.method protected cloneShape()Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .locals 6

    .line 283
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getTextObjectRecord()Lorg/apache/poi/hssf/record/TextObjectRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/TextObjectRecord;->cloneViaReserialise()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/TextObjectRecord;

    .line 284
    .local v0, "txo":Lorg/apache/poi/hssf/record/TextObjectRecord;
    new-instance v1, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v1}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    .line 285
    .local v1, "spContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->serialize()[B

    move-result-object v2

    .line 286
    .local v2, "inSp":[B
    new-instance v3, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;

    invoke-direct {v3}, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I

    .line 287
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ObjRecord;->cloneViaReserialise()Lorg/apache/poi/hssf/record/Record;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/ObjRecord;

    .line 288
    .local v3, "obj":Lorg/apache/poi/hssf/record/ObjRecord;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getNoteRecord()Lorg/apache/poi/hssf/record/NoteRecord;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/NoteRecord;->cloneViaReserialise()Lorg/apache/poi/hssf/record/Record;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hssf/record/NoteRecord;

    .line 289
    .local v4, "note":Lorg/apache/poi/hssf/record/NoteRecord;
    new-instance v5, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    invoke-direct {v5, v1, v3, v0, v4}, Lorg/apache/poi/hssf/usermodel/HSSFComment;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;Lorg/apache/poi/hssf/record/NoteRecord;)V

    return-object v5
.end method

.method protected createObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;
    .locals 4

    .line 111
    new-instance v0, Lorg/apache/poi/hssf/record/ObjRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/ObjRecord;-><init>()V

    .line 112
    .local v0, "obj":Lorg/apache/poi/hssf/record/ObjRecord;
    new-instance v1, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;-><init>()V

    .line 113
    .local v1, "c":Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    const/16 v2, 0xca

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setObjectType(S)V

    .line 114
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setLocked(Z)V

    .line 115
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setPrintable(Z)V

    .line 116
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setAutofill(Z)V

    .line 117
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setAutoline(Z)V

    .line 119
    new-instance v2, Lorg/apache/poi/hssf/record/NoteStructureSubRecord;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/NoteStructureSubRecord;-><init>()V

    .line 120
    .local v2, "u":Lorg/apache/poi/hssf/record/NoteStructureSubRecord;
    new-instance v3, Lorg/apache/poi/hssf/record/EndSubRecord;

    invoke-direct {v3}, Lorg/apache/poi/hssf/record/EndSubRecord;-><init>()V

    .line 121
    .local v3, "e":Lorg/apache/poi/hssf/record/EndSubRecord;
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 122
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 123
    invoke-virtual {v0, v3}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 124
    return-object v0
.end method

.method protected createSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 6

    .line 99
    invoke-super {p0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->createSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    .line 100
    .local v0, "spContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    const/16 v1, -0xff5

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherOptRecord;

    .line 101
    .local v1, "opt":Lorg/apache/poi/ddf/EscherOptRecord;
    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherOptRecord;->removeEscherProperty(I)V

    .line 102
    const/16 v2, 0x83

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherOptRecord;->removeEscherProperty(I)V

    .line 103
    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherOptRecord;->removeEscherProperty(I)V

    .line 104
    const/16 v2, 0x84

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherOptRecord;->removeEscherProperty(I)V

    .line 105
    new-instance v2, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v3, 0x3bf

    const/4 v4, 0x0

    const v5, 0xa0002

    invoke-direct {v2, v3, v4, v4, v5}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 106
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 326
    instance-of v0, p1, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    if-nez v0, :cond_0

    .line 327
    const/4 v0, 0x0

    return v0

    .line 329
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    .line 330
    .local v0, "other":Lorg/apache/poi/hssf/usermodel/HSSFComment;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getNoteRecord()Lorg/apache/poi/hssf/record/NoteRecord;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getNoteRecord()Lorg/apache/poi/hssf/record/NoteRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getAddress()Lorg/apache/poi/ss/util/CellAddress;
    .locals 3

    .line 168
    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getRow()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getColumn()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NoteRecord;->getAuthor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundImageId()I
    .locals 2

    .line 310
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getOptRecord()Lorg/apache/poi/ddf/EscherOptRecord;

    move-result-object v0

    const/16 v1, 0x186

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherOptRecord;->lookup(I)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    .line 311
    .local v0, "property":Lorg/apache/poi/ddf/EscherSimpleProperty;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getClientAnchor()Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 4

    .line 261
    invoke-super {p0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->getAnchor()Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    move-result-object v0

    .line 262
    .local v0, "ha":Lorg/apache/poi/hssf/usermodel/HSSFAnchor;
    instance-of v1, v0, Lorg/apache/poi/ss/usermodel/ClientAnchor;

    if-eqz v1, :cond_0

    .line 263
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/usermodel/ClientAnchor;

    return-object v1

    .line 266
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Anchor can not be changed in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lorg/apache/poi/ss/usermodel/ClientAnchor;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getColumn()I
    .locals 1

    .line 210
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NoteRecord;->getColumn()I

    move-result v0

    return v0
.end method

.method protected getNoteRecord()Lorg/apache/poi/hssf/record/NoteRecord;
    .locals 1

    .line 247
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    return-object v0
.end method

.method public getRow()I
    .locals 1

    .line 190
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NoteRecord;->getRow()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getString()Lorg/apache/poi/ss/usermodel/RichTextString;
    .locals 1

    .line 38
    invoke-super {p0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->getString()Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    move-result-object v0

    return-object v0
.end method

.method public hasPosition()Z
    .locals 2

    .line 254
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 255
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getColumn()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getRow()I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_0

    .line 256
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 255
    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 335
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getRow()I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getColumn()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public isVisible()Z
    .locals 2

    .line 163
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NoteRecord;->getFlags()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public resetBackgroundImage()V
    .locals 4

    .line 300
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getOptRecord()Lorg/apache/poi/ddf/EscherOptRecord;

    move-result-object v0

    const/16 v1, 0x186

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherOptRecord;->lookup(I)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    .line 301
    .local v0, "property":Lorg/apache/poi/ddf/EscherSimpleProperty;
    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBSERecord(I)Lorg/apache/poi/ddf/EscherBSERecord;

    move-result-object v2

    .line 303
    .local v2, "bse":Lorg/apache/poi/ddf/EscherBSERecord;
    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherBSERecord;->getRef()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lorg/apache/poi/ddf/EscherBSERecord;->setRef(I)V

    .line 304
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getOptRecord()Lorg/apache/poi/ddf/EscherOptRecord;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/poi/ddf/EscherOptRecord;->removeEscherProperty(I)V

    .line 306
    .end local v2    # "bse":Lorg/apache/poi/ddf/EscherBSERecord;
    :cond_0
    new-instance v1, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v2, 0x180

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3, v3}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 307
    return-void
.end method

.method public setAddress(II)V
    .locals 0
    .param p1, "row"    # I
    .param p2, "col"    # I

    .line 179
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->setRow(I)V

    .line 180
    invoke-virtual {p0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->setColumn(I)V

    .line 181
    return-void
.end method

.method public setAddress(Lorg/apache/poi/ss/util/CellAddress;)V
    .locals 1
    .param p1, "address"    # Lorg/apache/poi/ss/util/CellAddress;

    .line 173
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->setRow(I)V

    .line 174
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->setColumn(I)V

    .line 175
    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 1
    .param p1, "author"    # Ljava/lang/String;

    .line 240
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/NoteRecord;->setAuthor(Ljava/lang/String;)V

    .line 241
    :cond_0
    return-void
.end method

.method public setBackgroundImage(I)V
    .locals 5
    .param p1, "pictureIndex"    # I

    .line 293
    new-instance v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v1, 0x186

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 294
    new-instance v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v1, 0x180

    const/4 v4, 0x3

    invoke-direct {v0, v1, v2, v2, v4}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 295
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBSERecord(I)Lorg/apache/poi/ddf/EscherBSERecord;

    move-result-object v0

    .line 296
    .local v0, "bse":Lorg/apache/poi/ddf/EscherBSERecord;
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherBSERecord;->getRef()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherBSERecord;->setRef(I)V

    .line 297
    return-void
.end method

.method public setColumn(I)V
    .locals 1
    .param p1, "col"    # I

    .line 220
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/NoteRecord;->setColumn(I)V

    .line 221
    return-void
.end method

.method public setRow(I)V
    .locals 1
    .param p1, "row"    # I

    .line 200
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/NoteRecord;->setRow(I)V

    .line 201
    return-void
.end method

.method setShapeId(I)V
    .locals 2
    .param p1, "shapeId"    # I

    .line 136
    const v0, 0xffff

    if-gt p1, v0, :cond_0

    .line 139
    invoke-super {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->setShapeId(I)V

    .line 140
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ObjRecord;->getSubRecords()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    .line 141
    .local v0, "cod":Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setObjectId(I)V

    .line 142
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/NoteRecord;->setShapeId(I)V

    .line 143
    return-void

    .line 137
    .end local v0    # "cod":Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add more than 65535 shapes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setShapeType(I)V
    .locals 3
    .param p1, "shapeType"    # I

    .line 272
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shape type can not be changed in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 152
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/NoteRecord;->setFlags(S)V

    .line 153
    xor-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->setHidden(Z)V

    .line 154
    return-void
.end method
