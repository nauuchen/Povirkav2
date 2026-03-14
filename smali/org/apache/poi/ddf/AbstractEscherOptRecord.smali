.class public abstract Lorg/apache/poi/ddf/AbstractEscherOptRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "AbstractEscherOptRecord.java"


# instance fields
.field private properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherProperty;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    return-void
.end method

.method private getPropertiesSize()I
    .locals 4

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "totalSize":I
    iget-object v1, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherProperty;

    .line 85
    .local v2, "property":Lorg/apache/poi/ddf/EscherProperty;
    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherProperty;->getPropertySize()I

    move-result v3

    add-int/2addr v0, v3

    .end local v2    # "property":Lorg/apache/poi/ddf/EscherProperty;
    goto :goto_0

    .line 88
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return v0
.end method


# virtual methods
.method public addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V
    .locals 1
    .param p1, "prop"    # Lorg/apache/poi/ddf/EscherProperty;

    .line 42
    iget-object v0, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 5
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "recordFactory"    # Lorg/apache/poi/ddf/EscherRecordFactory;

    .line 49
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->readHeader([BI)I

    move-result v0

    .line 50
    .local v0, "bytesRemaining":I
    invoke-static {p1, p2}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->readInstance([BI)S

    move-result v1

    .line 51
    .local v1, "propertiesCount":S
    add-int/lit8 v2, p2, 0x8

    .line 53
    .local v2, "pos":I
    new-instance v3, Lorg/apache/poi/ddf/EscherPropertyFactory;

    invoke-direct {v3}, Lorg/apache/poi/ddf/EscherPropertyFactory;-><init>()V

    .line 54
    .local v3, "f":Lorg/apache/poi/ddf/EscherPropertyFactory;
    invoke-virtual {v3, p1, v2, v1}, Lorg/apache/poi/ddf/EscherPropertyFactory;->createProperties([BIS)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    .line 55
    add-int/lit8 v4, v0, 0x8

    return v4
.end method

.method protected getAttributeMap()[[Ljava/lang/Object;
    .locals 7

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 180
    .local v0, "attrList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const-string v1, "properties"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v1, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v1, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ddf/EscherProperty;

    .line 183
    .local v3, "property":Lorg/apache/poi/ddf/EscherProperty;
    invoke-virtual {v3}, Lorg/apache/poi/ddf/EscherProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 187
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "property":Lorg/apache/poi/ddf/EscherProperty;
    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [[Ljava/lang/Object;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "isContainer"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->isContainerRecord()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    aput-object v3, v1, v5

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "numchildren"

    aput-object v4, v3, v5

    invoke-virtual {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->getChildRecords()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object v3, v1, v6

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    return-object v1
.end method

.method public getEscherProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherProperty;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    return-object v0
.end method

.method public getEscherProperty(I)Lorg/apache/poi/ddf/EscherProperty;
    .locals 1
    .param p1, "index"    # I

    .line 76
    iget-object v0, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherProperty;

    return-object v0
.end method

.method public getRecordSize()I
    .locals 1

    .line 94
    invoke-direct {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->getPropertiesSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public lookup(I)Lorg/apache/poi/ddf/EscherProperty;
    .locals 3
    .param p1, "propId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/poi/ddf/EscherProperty;",
            ">(I)TT;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherProperty;

    .line 101
    .local v1, "prop":Lorg/apache/poi/ddf/EscherProperty;
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherProperty;->getPropertyNumber()S

    move-result v2

    if-ne v2, p1, :cond_0

    .line 104
    move-object v2, v1

    .line 105
    .local v2, "result":Lorg/apache/poi/ddf/EscherProperty;, "TT;"
    return-object v2

    .end local v1    # "prop":Lorg/apache/poi/ddf/EscherProperty;
    .end local v2    # "result":Lorg/apache/poi/ddf/EscherProperty;, "TT;"
    :cond_0
    goto :goto_0

    .line 108
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeEscherProperty(I)V
    .locals 3
    .param p1, "num"    # I

    .line 169
    invoke-virtual {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->getEscherProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherProperty;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherProperty;

    .line 171
    .local v1, "prop":Lorg/apache/poi/ddf/EscherProperty;
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherProperty;->getPropertyNumber()S

    move-result v2

    if-ne v2, p1, :cond_0

    .line 172
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 174
    .end local v1    # "prop":Lorg/apache/poi/ddf/EscherProperty;
    :cond_0
    goto :goto_0

    .line 175
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherProperty;>;"
    :cond_1
    return-void
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 4
    .param p1, "offset"    # I
    .param p2, "data"    # [B
    .param p3, "listener"    # Lorg/apache/poi/ddf/EscherSerializationListener;

    .line 115
    invoke-virtual {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    .line 117
    invoke-virtual {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->getOptions()S

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 118
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->getRecordId()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 119
    add-int/lit8 v0, p1, 0x4

    invoke-direct {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->getPropertiesSize()I

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 120
    add-int/lit8 v0, p1, 0x8

    .line 121
    .local v0, "pos":I
    iget-object v1, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherProperty;

    .line 123
    .local v2, "property":Lorg/apache/poi/ddf/EscherProperty;
    invoke-virtual {v2, p2, v0}, Lorg/apache/poi/ddf/EscherProperty;->serializeSimplePart([BI)I

    move-result v3

    add-int/2addr v0, v3

    .end local v2    # "property":Lorg/apache/poi/ddf/EscherProperty;
    goto :goto_0

    .line 125
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherProperty;

    .line 127
    .restart local v2    # "property":Lorg/apache/poi/ddf/EscherProperty;
    invoke-virtual {v2, p2, v0}, Lorg/apache/poi/ddf/EscherProperty;->serializeComplexPart([BI)I

    move-result v3

    add-int/2addr v0, v3

    .end local v2    # "property":Lorg/apache/poi/ddf/EscherProperty;
    goto :goto_1

    .line 129
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->getRecordId()S

    move-result v1

    sub-int v2, v0, p1

    invoke-interface {p3, v0, v1, v2, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    .line 130
    sub-int v1, v0, p1

    return v1
.end method

.method public setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V
    .locals 4
    .param p1, "value"    # Lorg/apache/poi/ddf/EscherProperty;

    .line 157
    iget-object v0, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 158
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherProperty;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherProperty;

    .line 160
    .local v1, "prop":Lorg/apache/poi/ddf/EscherProperty;
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherProperty;->getId()S

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherProperty;->getId()S

    move-result v3

    if-ne v2, v3, :cond_0

    .line 161
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 163
    .end local v1    # "prop":Lorg/apache/poi/ddf/EscherProperty;
    :cond_0
    goto :goto_0

    .line 164
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherProperty;>;"
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-virtual {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->sortProperties()V

    .line 166
    return-void
.end method

.method public sortProperties()V
    .locals 2

    .line 138
    iget-object v0, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    new-instance v1, Lorg/apache/poi/ddf/AbstractEscherOptRecord$1;

    invoke-direct {v1, p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord$1;-><init>(Lorg/apache/poi/ddf/AbstractEscherOptRecord;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 148
    return-void
.end method
