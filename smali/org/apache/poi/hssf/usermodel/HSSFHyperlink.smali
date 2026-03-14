.class public Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;
.super Ljava/lang/Object;
.source "HSSFHyperlink.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Hyperlink;


# instance fields
.field protected final link_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

.field protected final record:Lorg/apache/poi/hssf/record/HyperlinkRecord;


# direct methods
.method protected constructor <init>(Lorg/apache/poi/common/usermodel/HyperlinkType;)V
    .locals 3
    .param p1, "type"    # Lorg/apache/poi/common/usermodel/HyperlinkType;
    .annotation runtime Lorg/apache/poi/util/Internal;
        since = "3.15 beta 3"
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->link_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    .line 51
    new-instance v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    .line 52
    sget-object v1, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink$1;->$SwitchMap$org$apache$poi$common$usermodel$HyperlinkType:[I

    invoke-virtual {p1}, Lorg/apache/poi/common/usermodel/HyperlinkType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 61
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->newDocumentLink()V

    .line 62
    goto :goto_0

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->newFileLink()V

    .line 59
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->newUrlLink()V

    .line 56
    nop

    .line 66
    :goto_0
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/hssf/record/HyperlinkRecord;)V
    .locals 1
    .param p1, "record"    # Lorg/apache/poi/hssf/record/HyperlinkRecord;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    .line 76
    invoke-static {p1}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->getType(Lorg/apache/poi/hssf/record/HyperlinkRecord;)Lorg/apache/poi/common/usermodel/HyperlinkType;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->link_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    .line 77
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/ss/usermodel/Hyperlink;)V
    .locals 2
    .param p1, "other"    # Lorg/apache/poi/ss/usermodel/Hyperlink;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    instance-of v0, p1, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    if-eqz v0, :cond_0

    .line 99
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    .line 100
    .local v0, "hlink":Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;
    iget-object v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->clone()Lorg/apache/poi/hssf/record/HyperlinkRecord;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    .line 101
    invoke-static {v1}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->getType(Lorg/apache/poi/hssf/record/HyperlinkRecord;)Lorg/apache/poi/common/usermodel/HyperlinkType;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->link_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    .line 102
    .end local v0    # "hlink":Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;
    goto :goto_0

    .line 104
    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Hyperlink;->getTypeEnum()Lorg/apache/poi/common/usermodel/HyperlinkType;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->link_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    .line 105
    new-instance v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    .line 106
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Hyperlink;->getFirstRow()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setFirstRow(I)V

    .line 107
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Hyperlink;->getFirstColumn()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setFirstColumn(I)V

    .line 108
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Hyperlink;->getLastRow()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setLastRow(I)V

    .line 109
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Hyperlink;->getLastColumn()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setLastColumn(I)V

    .line 111
    :goto_0
    return-void
.end method

.method private static getType(Lorg/apache/poi/hssf/record/HyperlinkRecord;)Lorg/apache/poi/common/usermodel/HyperlinkType;
    .locals 2
    .param p0, "record"    # Lorg/apache/poi/hssf/record/HyperlinkRecord;

    .line 82
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->isFileLink()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lorg/apache/poi/common/usermodel/HyperlinkType;->FILE:Lorg/apache/poi/common/usermodel/HyperlinkType;

    .local v0, "link_type":Lorg/apache/poi/common/usermodel/HyperlinkType;
    goto :goto_0

    .line 84
    .end local v0    # "link_type":Lorg/apache/poi/common/usermodel/HyperlinkType;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->isDocumentLink()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    sget-object v0, Lorg/apache/poi/common/usermodel/HyperlinkType;->DOCUMENT:Lorg/apache/poi/common/usermodel/HyperlinkType;

    .restart local v0    # "link_type":Lorg/apache/poi/common/usermodel/HyperlinkType;
    goto :goto_0

    .line 87
    .end local v0    # "link_type":Lorg/apache/poi/common/usermodel/HyperlinkType;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mailto:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    sget-object v0, Lorg/apache/poi/common/usermodel/HyperlinkType;->EMAIL:Lorg/apache/poi/common/usermodel/HyperlinkType;

    .restart local v0    # "link_type":Lorg/apache/poi/common/usermodel/HyperlinkType;
    goto :goto_0

    .line 91
    .end local v0    # "link_type":Lorg/apache/poi/common/usermodel/HyperlinkType;
    :cond_2
    sget-object v0, Lorg/apache/poi/common/usermodel/HyperlinkType;->URL:Lorg/apache/poi/common/usermodel/HyperlinkType;

    .line 94
    .restart local v0    # "link_type":Lorg/apache/poi/common/usermodel/HyperlinkType;
    :goto_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 284
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 285
    :cond_0
    instance-of v1, p1, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 286
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    .line 287
    .local v1, "otherLink":Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    iget-object v4, v1, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstColumn()I
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getFirstColumn()I

    move-result v0

    return v0
.end method

.method public getFirstRow()I
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getFirstRow()I

    move-result v0

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastColumn()I
    .locals 1

    .line 180
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getLastColumn()I

    move-result v0

    return v0
.end method

.method public getLastRow()I
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getLastRow()I

    move-result v0

    return v0
.end method

.method public getShortFilename()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getShortFilename()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextMark()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getTextMark()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 266
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->link_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    invoke-virtual {v0}, Lorg/apache/poi/common/usermodel/HyperlinkType;->getCode()I

    move-result v0

    return v0
.end method

.method public getTypeEnum()Lorg/apache/poi/common/usermodel/HyperlinkType;
    .locals 1

    .line 276
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->link_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 292
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->setAddress(Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public setFirstColumn(I)V
    .locals 2
    .param p1, "col"    # I

    .line 170
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    int-to-short v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->setFirstColumn(I)V

    .line 171
    return-void
.end method

.method public setFirstRow(I)V
    .locals 1
    .param p1, "row"    # I

    .line 130
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->setFirstRow(I)V

    .line 131
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->setLabel(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public setLastColumn(I)V
    .locals 2
    .param p1, "col"    # I

    .line 190
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    int-to-short v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->setLastColumn(I)V

    .line 191
    return-void
.end method

.method public setLastRow(I)V
    .locals 1
    .param p1, "row"    # I

    .line 150
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->setLastRow(I)V

    .line 151
    return-void
.end method

.method public setShortFilename(Ljava/lang/String;)V
    .locals 1
    .param p1, "shortFilename"    # Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->setShortFilename(Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public setTextMark(Ljava/lang/String;)V
    .locals 1
    .param p1, "textMark"    # Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->setTextMark(Ljava/lang/String;)V

    .line 213
    return-void
.end method
