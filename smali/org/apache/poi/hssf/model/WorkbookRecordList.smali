.class public final Lorg/apache/poi/hssf/model/WorkbookRecordList;
.super Ljava/lang/Object;
.source "WorkbookRecordList.java"


# instance fields
.field private backuppos:I

.field private bspos:I

.field private externsheetPos:I

.field private fontpos:I

.field private namepos:I

.field private palettepos:I

.field private protpos:I

.field private records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;"
        }
    .end annotation
.end field

.field private supbookpos:I

.field private tabpos:I

.field private xfpos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->records:Ljava/util/List;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->protpos:I

    .line 31
    iput v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->bspos:I

    .line 33
    iput v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->tabpos:I

    .line 35
    iput v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->fontpos:I

    .line 37
    iput v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->xfpos:I

    .line 39
    iput v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->backuppos:I

    .line 41
    iput v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->namepos:I

    .line 43
    iput v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->supbookpos:I

    .line 45
    iput v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->externsheetPos:I

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->palettepos:I

    return-void
.end method

.method private updateRecordPos(IZ)V
    .locals 4
    .param p1, "pos"    # I
    .param p2, "add"    # Z

    .line 199
    const/4 v0, -0x1

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 200
    .local v1, "delta":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getProtpos()I

    move-result v2

    .line 201
    .local v2, "p":I
    if-lt v2, p1, :cond_1

    .line 202
    add-int v3, v2, v1

    invoke-virtual {p0, v3}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setProtpos(I)V

    .line 204
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getBspos()I

    move-result v2

    .line 205
    if-lt v2, p1, :cond_2

    .line 206
    add-int v3, v2, v1

    invoke-virtual {p0, v3}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setBspos(I)V

    .line 208
    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getTabpos()I

    move-result v2

    .line 209
    if-lt v2, p1, :cond_3

    .line 210
    add-int v3, v2, v1

    invoke-virtual {p0, v3}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setTabpos(I)V

    .line 212
    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getFontpos()I

    move-result v2

    .line 213
    if-lt v2, p1, :cond_4

    .line 214
    add-int v3, v2, v1

    invoke-virtual {p0, v3}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setFontpos(I)V

    .line 216
    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getXfpos()I

    move-result v2

    .line 217
    if-lt v2, p1, :cond_5

    .line 218
    add-int v3, v2, v1

    invoke-virtual {p0, v3}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setXfpos(I)V

    .line 220
    :cond_5
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getBackuppos()I

    move-result v2

    .line 221
    if-lt v2, p1, :cond_6

    .line 222
    add-int v3, v2, v1

    invoke-virtual {p0, v3}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setBackuppos(I)V

    .line 224
    :cond_6
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getNamepos()I

    move-result v2

    .line 225
    if-lt v2, p1, :cond_7

    .line 226
    add-int v3, v2, v1

    invoke-virtual {p0, v3}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setNamepos(I)V

    .line 228
    :cond_7
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getSupbookpos()I

    move-result v2

    .line 229
    if-lt v2, p1, :cond_8

    .line 230
    add-int v3, v2, v1

    invoke-virtual {p0, v3}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setSupbookpos(I)V

    .line 232
    :cond_8
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getPalettepos()I

    move-result v2

    .line 233
    if-eq v2, v0, :cond_9

    if-lt v2, p1, :cond_9

    .line 234
    add-int v0, v2, v1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setPalettepos(I)V

    .line 236
    :cond_9
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getExternsheetPos()I

    move-result v0

    .line 237
    .end local v2    # "p":I
    .local v0, "p":I
    if-lt v0, p1, :cond_a

    .line 238
    add-int v2, v0, v1

    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setExternsheetPos(I)V

    .line 240
    :cond_a
    return-void
.end method


# virtual methods
.method public add(ILorg/apache/poi/hssf/record/Record;)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "r"    # Lorg/apache/poi/hssf/record/Record;

    .line 63
    iget-object v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->records:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 64
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->updateRecordPos(IZ)V

    .line 65
    return-void
.end method

.method public get(I)Lorg/apache/poi/hssf/record/Record;
    .locals 1
    .param p1, "i"    # I

    .line 59
    iget-object v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->records:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/Record;

    return-object v0
.end method

.method public getBackuppos()I
    .locals 1

    .line 134
    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->backuppos:I

    return v0
.end method

.method public getBspos()I
    .locals 1

    .line 102
    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->bspos:I

    return v0
.end method

.method public getExternsheetPos()I
    .locals 1

    .line 187
    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->externsheetPos:I

    return v0
.end method

.method public getFontpos()I
    .locals 1

    .line 118
    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->fontpos:I

    return v0
.end method

.method public getNamepos()I
    .locals 1

    .line 155
    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->namepos:I

    return v0
.end method

.method public getPalettepos()I
    .locals 1

    .line 142
    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->palettepos:I

    return v0
.end method

.method public getProtpos()I
    .locals 1

    .line 94
    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->protpos:I

    return v0
.end method

.method public getRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->records:Ljava/util/List;

    return-object v0
.end method

.method public getSupbookpos()I
    .locals 1

    .line 163
    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->supbookpos:I

    return v0
.end method

.method public getTabpos()I
    .locals 1

    .line 110
    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->tabpos:I

    return v0
.end method

.method public getXfpos()I
    .locals 1

    .line 126
    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->xfpos:I

    return v0
.end method

.method public remove(I)V
    .locals 1
    .param p1, "pos"    # I

    .line 89
    iget-object v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->records:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->updateRecordPos(IZ)V

    .line 91
    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 3
    .param p1, "record"    # Ljava/lang/Object;

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "i":I
    iget-object v1, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->records:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/Record;

    .line 80
    .local v2, "r":Lorg/apache/poi/hssf/record/Record;
    if-ne v2, p1, :cond_0

    .line 81
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->remove(I)V

    .line 82
    goto :goto_1

    .line 84
    :cond_0
    nop

    .end local v2    # "r":Lorg/apache/poi/hssf/record/Record;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    return-void
.end method

.method public setBackuppos(I)V
    .locals 0
    .param p1, "backuppos"    # I

    .line 138
    iput p1, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->backuppos:I

    .line 139
    return-void
.end method

.method public setBspos(I)V
    .locals 0
    .param p1, "bspos"    # I

    .line 106
    iput p1, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->bspos:I

    .line 107
    return-void
.end method

.method public setExternsheetPos(I)V
    .locals 0
    .param p1, "externsheetPos"    # I

    .line 195
    iput p1, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->externsheetPos:I

    .line 196
    return-void
.end method

.method public setFontpos(I)V
    .locals 0
    .param p1, "fontpos"    # I

    .line 122
    iput p1, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->fontpos:I

    .line 123
    return-void
.end method

.method public setNamepos(I)V
    .locals 0
    .param p1, "namepos"    # I

    .line 171
    iput p1, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->namepos:I

    .line 172
    return-void
.end method

.method public setPalettepos(I)V
    .locals 0
    .param p1, "palettepos"    # I

    .line 146
    iput p1, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->palettepos:I

    .line 147
    return-void
.end method

.method public setProtpos(I)V
    .locals 0
    .param p1, "protpos"    # I

    .line 98
    iput p1, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->protpos:I

    .line 99
    return-void
.end method

.method public setRecords(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    iput-object p1, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->records:Ljava/util/List;

    .line 52
    return-void
.end method

.method public setSupbookpos(I)V
    .locals 0
    .param p1, "supbookpos"    # I

    .line 179
    iput p1, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->supbookpos:I

    .line 180
    return-void
.end method

.method public setTabpos(I)V
    .locals 0
    .param p1, "tabpos"    # I

    .line 114
    iput p1, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->tabpos:I

    .line 115
    return-void
.end method

.method public setXfpos(I)V
    .locals 0
    .param p1, "xfpos"    # I

    .line 130
    iput p1, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->xfpos:I

    .line 131
    return-void
.end method

.method public size()I
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->records:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
