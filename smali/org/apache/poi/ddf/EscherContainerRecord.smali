.class public final Lorg/apache/poi/ddf/EscherContainerRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "EscherContainerRecord.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/ddf/EscherRecord;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/poi/ddf/EscherRecord;",
        ">;"
    }
.end annotation


# static fields
.field public static final BSTORE_CONTAINER:S = -0xfffs

.field public static final DGG_CONTAINER:S = -0x1000s

.field public static final DG_CONTAINER:S = -0xffes

.field public static final SOLVER_CONTAINER:S = -0xffbs

.field public static final SPGR_CONTAINER:S = -0xffds

.field public static final SP_CONTAINER:S = -0xffcs

.field private static final log:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final _childRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;"
        }
    .end annotation
.end field

.field private _remainingLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ddf/EscherContainerRecord;->log:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addChildBefore(Lorg/apache/poi/ddf/EscherRecord;I)V
    .locals 5
    .param p1, "record"    # Lorg/apache/poi/ddf/EscherRecord;
    .param p2, "insertBeforeRecordId"    # I

    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, "idx":I
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherRecord;

    .line 260
    .local v2, "rec":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v3

    int-to-short v4, p2

    if-ne v3, v4, :cond_0

    .line 261
    goto :goto_1

    .line 264
    :cond_0
    nop

    .end local v2    # "rec":Lorg/apache/poi/ddf/EscherRecord;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 267
    return-void
.end method

.method public addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V
    .locals 1
    .param p1, "record"    # Lorg/apache/poi/ddf/EscherRecord;

    .line 248
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    return-void
.end method

.method public display(Ljava/io/PrintWriter;I)V
    .locals 3
    .param p1, "w"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # I

    .line 236
    invoke-super {p0, p1, p2}, Lorg/apache/poi/ddf/EscherRecord;->display(Ljava/io/PrintWriter;I)V

    .line 237
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherRecord;

    .line 238
    .local v1, "escherRecord":Lorg/apache/poi/ddf/EscherRecord;
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, p1, v2}, Lorg/apache/poi/ddf/EscherRecord;->display(Ljava/io/PrintWriter;I)V

    .end local v1    # "escherRecord":Lorg/apache/poi/ddf/EscherRecord;
    goto :goto_0

    .line 240
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 11
    .param p1, "data"    # [B
    .param p2, "pOffset"    # I
    .param p3, "recordFactory"    # Lorg/apache/poi/ddf/EscherRecordFactory;

    .line 76
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherContainerRecord;->readHeader([BI)I

    move-result v0

    .line 77
    .local v0, "bytesRemaining":I
    const/16 v1, 0x8

    .line 78
    .local v1, "bytesWritten":I
    add-int/lit8 v2, p2, 0x8

    .line 79
    .local v2, "offset":I
    :goto_0
    if-lez v0, :cond_1

    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 80
    invoke-interface {p3, p1, v2}, Lorg/apache/poi/ddf/EscherRecordFactory;->createRecord([BI)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v3

    .line 81
    .local v3, "child":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v3, p1, v2, p3}, Lorg/apache/poi/ddf/EscherRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I

    move-result v4

    .line 82
    .local v4, "childBytesWritten":I
    add-int/2addr v1, v4

    .line 83
    add-int/2addr v2, v4

    .line 84
    sub-int/2addr v0, v4

    .line 85
    invoke-virtual {p0, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 86
    array-length v5, p1

    if-lt v2, v5, :cond_0

    if-lez v0, :cond_0

    .line 87
    iput v0, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_remainingLength:I

    .line 88
    sget-object v5, Lorg/apache/poi/ddf/EscherContainerRecord;->log:Lorg/apache/poi/util/POILogger;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 89
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Not enough Escher data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bytes remaining but no space left"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 92
    .end local v3    # "child":Lorg/apache/poi/ddf/EscherRecord;
    .end local v4    # "childBytesWritten":I
    :cond_0
    goto :goto_0

    .line 93
    :cond_1
    return v1
.end method

.method protected getAttributeMap()[[Ljava/lang/Object;
    .locals 7

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 300
    .local v0, "chList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const-string v1, "children"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v1, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    const/4 v1, 0x0

    .line 303
    .local v1, "count":I
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ddf/EscherRecord;

    .line 304
    .local v4, "record":Lorg/apache/poi/ddf/EscherRecord;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Child "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    nop

    .end local v4    # "record":Lorg/apache/poi/ddf/EscherRecord;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    new-array v3, v2, [[Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "isContainer"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->isContainerRecord()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v2, v6

    aput-object v2, v3, v5

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v6

    return-object v3
.end method

.method public getChild(I)Lorg/apache/poi/ddf/EscherRecord;
    .locals 1
    .param p1, "index"    # I

    .line 144
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherRecord;

    return-object v0
.end method

.method public getChildById(S)Lorg/apache/poi/ddf/EscherRecord;
    .locals 3
    .param p1, "recordId"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">(S)TT;"
        }
    .end annotation

    .line 270
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherRecord;

    .line 271
    .local v1, "childRecord":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v2

    if-ne v2, p1, :cond_0

    .line 273
    move-object v2, v1

    .line 274
    .local v2, "result":Lorg/apache/poi/ddf/EscherRecord;, "TT;"
    return-object v2

    .end local v1    # "childRecord":Lorg/apache/poi/ddf/EscherRecord;
    .end local v2    # "result":Lorg/apache/poi/ddf/EscherRecord;, "TT;"
    :cond_0
    goto :goto_0

    .line 277
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildContainers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherContainerRecord;",
            ">;"
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v0, "containers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherContainerRecord;>;"
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherRecord;

    .line 207
    .local v2, "r":Lorg/apache/poi/ddf/EscherRecord;
    instance-of v3, v2, Lorg/apache/poi/ddf/EscherContainerRecord;

    if-eqz v3, :cond_0

    .line 208
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v2    # "r":Lorg/apache/poi/ddf/EscherRecord;
    :cond_0
    goto :goto_0

    .line 211
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method

.method public getChildIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.18"
    .end annotation

    .line 163
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getChildRecords()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 2

    .line 216
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getRecordId()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Container 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getRecordId()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 228
    :pswitch_0
    const-string v0, "SolverContainer"

    return-object v0

    .line 226
    :pswitch_1
    const-string v0, "SpContainer"

    return-object v0

    .line 224
    :pswitch_2
    const-string v0, "SpgrContainer"

    return-object v0

    .line 222
    :pswitch_3
    const-string v0, "DgContainer"

    return-object v0

    .line 220
    :pswitch_4
    const-string v0, "BStoreContainer"

    return-object v0

    .line 218
    :pswitch_5
    const-string v0, "DggContainer"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1000
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getRecordSize()I
    .locals 4

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "childRecordsSize":I
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherRecord;

    .line 122
    .local v2, "r":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherRecord;->getRecordSize()I

    move-result v3

    add-int/2addr v0, v3

    .end local v2    # "r":Lorg/apache/poi/ddf/EscherRecord;
    goto :goto_0

    .line 124
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    add-int/lit8 v1, v0, 0x8

    return v1
.end method

.method public getRecordsById(SLjava/util/List;)V
    .locals 3
    .param p1, "recordId"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;)V"
        }
    .end annotation

    .line 287
    .local p2, "out":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherRecord;>;"
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherRecord;

    .line 288
    .local v1, "r":Lorg/apache/poi/ddf/EscherRecord;
    instance-of v2, v1, Lorg/apache/poi/ddf/EscherContainerRecord;

    if-eqz v2, :cond_0

    .line 289
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/ddf/EscherContainerRecord;

    .line 290
    .local v2, "c":Lorg/apache/poi/ddf/EscherContainerRecord;
    invoke-virtual {v2, p1, p2}, Lorg/apache/poi/ddf/EscherContainerRecord;->getRecordsById(SLjava/util/List;)V

    .end local v2    # "c":Lorg/apache/poi/ddf/EscherContainerRecord;
    goto :goto_1

    .line 291
    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v2

    if-ne v2, p1, :cond_1

    .line 292
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 291
    :cond_1
    :goto_1
    nop

    .line 292
    .end local v1    # "r":Lorg/apache/poi/ddf/EscherRecord;
    :goto_2
    goto :goto_0

    .line 295
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public hasChildOfType(S)Z
    .locals 3
    .param p1, "recordId"    # S

    .line 135
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherRecord;

    .line 136
    .local v1, "r":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v2

    if-ne v2, p1, :cond_0

    .line 137
    const/4 v2, 0x1

    return v2

    .end local v1    # "r":Lorg/apache/poi/ddf/EscherRecord;
    :cond_0
    goto :goto_0

    .line 140
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public removeChildRecord(Lorg/apache/poi/ddf/EscherRecord;)Z
    .locals 1
    .param p1, "toBeRemoved"    # Lorg/apache/poi/ddf/EscherRecord;

    .line 193
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 5
    .param p1, "offset"    # I
    .param p2, "data"    # [B
    .param p3, "listener"    # Lorg/apache/poi/ddf/EscherSerializationListener;

    .line 99
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    .line 101
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getOptions()S

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 102
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getRecordId()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "remainingBytes":I
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherRecord;

    .line 105
    .local v2, "r":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherRecord;->getRecordSize()I

    move-result v3

    add-int/2addr v0, v3

    .end local v2    # "r":Lorg/apache/poi/ddf/EscherRecord;
    goto :goto_0

    .line 107
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    iget v1, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_remainingLength:I

    add-int/2addr v0, v1

    .line 108
    add-int/lit8 v1, p1, 0x4

    invoke-static {p2, v1, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 109
    add-int/lit8 v1, p1, 0x8

    .line 110
    .local v1, "pos":I
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ddf/EscherRecord;

    .line 111
    .local v3, "r":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v3, v1, p2, p3}, Lorg/apache/poi/ddf/EscherRecord;->serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I

    move-result v4

    add-int/2addr v1, v4

    .end local v3    # "r":Lorg/apache/poi/ddf/EscherRecord;
    goto :goto_1

    .line 114
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getRecordId()S

    move-result v2

    sub-int v3, v1, p1

    invoke-interface {p3, v1, v2, v3, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    .line 115
    sub-int v2, v1, p1

    return v2
.end method

.method public setChildRecords(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;)V"
        }
    .end annotation

    .line 179
    .local p1, "childRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherRecord;>;"
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    if-eq p1, v0, :cond_0

    .line 182
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 183
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 184
    return-void

    .line 180
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Child records private data member has escaped"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
