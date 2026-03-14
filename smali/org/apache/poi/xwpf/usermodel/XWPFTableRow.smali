.class public Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;
.super Ljava/lang/Object;
.source "XWPFTableRow.java"


# instance fields
.field private ctRow:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

.field private table:Lorg/apache/poi/xwpf/usermodel/XWPFTable;

.field private tableCells:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;Lorg/apache/poi/xwpf/usermodel/XWPFTable;)V
    .locals 0
    .param p1, "row"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;
    .param p2, "table"    # Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->table:Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    .line 47
    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->ctRow:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    .line 48
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getTableCells()Ljava/util/List;

    .line 49
    return-void
.end method

.method private getRepeat()Z
    .locals 4

    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "repeat":Z
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->ctRow:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;->isSetTrPr()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;

    move-result-object v1

    .line 244
    .local v1, "trpr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;->sizeOfTblHeaderArray()I

    move-result v2

    if-lez v2, :cond_1

    .line 245
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;->getTblHeaderArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v2

    .line 246
    .local v2, "rpt":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->isSetVal()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/xwpf/model/WMLHelper;->convertSTOnOffToBoolean(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)Z

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .line 249
    .end local v1    # "trpr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;
    .end local v2    # "rpt":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
    :cond_1
    return v0
.end method

.method private getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->ctRow:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;->isSetTrPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->ctRow:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;->getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->ctRow:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;->addNewTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public addNewTableCell()Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;
    .locals 3

    .line 84
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->ctRow:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;->addNewTc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    move-result-object v0

    .line 85
    .local v0, "cell":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;
    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->table:Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getBody()Lorg/apache/poi/xwpf/usermodel/IBody;

    move-result-object v2

    invoke-direct {v1, v0, p0, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 86
    .local v1, "tableCell":Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->tableCells:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    return-object v1
.end method

.method public createCell()Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;
    .locals 3

    .line 62
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->ctRow:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;->addNewTc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->table:Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getBody()Lorg/apache/poi/xwpf/usermodel/IBody;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 63
    .local v0, "tableCell":Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->tableCells:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    return-object v0
.end method

.method public getCell(I)Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;
    .locals 1
    .param p1, "pos"    # I

    .line 68
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->ctRow:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;->sizeOfTcArray()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getTableCells()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    return-object v0

    .line 71
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCtRow()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 53
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->ctRow:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    return-object v0
.end method

.method public getHeight()I
    .locals 3

    .line 101
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;

    move-result-object v0

    .line 102
    .local v0, "properties":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;->sizeOfTrHeightArray()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;->getTrHeightArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHeight;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHeight;->getVal()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    :goto_0
    return v2
.end method

.method public getTable()Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->table:Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    return-object v0
.end method

.method public getTableCell(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;)Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;
    .locals 2
    .param p1, "cell"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    .line 179
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->tableCells:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 180
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->tableCells:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->getCTTc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 181
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->tableCells:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    return-object v1

    .line 179
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTableCells()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;",
            ">;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->tableCells:Ljava/util/List;

    if-nez v0, :cond_1

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v0, "cells":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;>;"
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->ctRow:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;->getTcArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    move-result-object v1

    .local v1, "arr$":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 164
    .local v4, "tableCell":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;
    new-instance v5, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    iget-object v6, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->table:Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-virtual {v6}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getBody()Lorg/apache/poi/xwpf/usermodel/IBody;

    move-result-object v6

    invoke-direct {v5, v4, p0, v6}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    .end local v4    # "tableCell":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 169
    .end local v1    # "arr$":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->tableCells:Ljava/util/List;

    .line 171
    .end local v0    # "cells":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;>;"
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->tableCells:Ljava/util/List;

    return-object v0
.end method

.method public getTableICells()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/ICell;",
            ">;"
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v0, "cells":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xwpf/usermodel/ICell;>;"
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->ctRow:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v1

    .line 141
    .local v1, "cursor":Lorg/apache/xmlbeans/XmlCursor;
    const-string v2, "./*"

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    .line 142
    :goto_0
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 143
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    .line 144
    .local v2, "o":Lorg/apache/xmlbeans/XmlObject;
    instance-of v3, v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    if-eqz v3, :cond_0

    .line 145
    new-instance v3, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    move-object v4, v2

    check-cast v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->table:Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-virtual {v5}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getBody()Lorg/apache/poi/xwpf/usermodel/IBody;

    move-result-object v5

    invoke-direct {v3, v4, p0, v5}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 146
    :cond_0
    instance-of v3, v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtCell;

    if-eqz v3, :cond_1

    .line 147
    new-instance v3, Lorg/apache/poi/xwpf/usermodel/XWPFSDTCell;

    move-object v4, v2

    check-cast v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtCell;

    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->table:Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-virtual {v5}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getBody()Lorg/apache/poi/xwpf/usermodel/IBody;

    move-result-object v5

    invoke-direct {v3, v4, p0, v5}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTCell;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtCell;Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    .end local v2    # "o":Lorg/apache/xmlbeans/XmlObject;
    :cond_1
    :goto_1
    goto :goto_0

    .line 150
    :cond_2
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 151
    return-object v0
.end method

.method public isCantSplitRow()Z
    .locals 4

    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "isCant":Z
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->ctRow:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;->isSetTrPr()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;

    move-result-object v1

    .line 197
    .local v1, "trpr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;->sizeOfCantSplitArray()I

    move-result v2

    if-lez v2, :cond_1

    .line 198
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;->getCantSplitArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v2

    .line 199
    .local v2, "onoff":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->isSetVal()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/xwpf/model/WMLHelper;->convertSTOnOffToBoolean(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)Z

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .line 202
    .end local v1    # "trpr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;
    .end local v2    # "onoff":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
    :cond_1
    return v0
.end method

.method public isRepeatHeader()Z
    .locals 3

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "repeat":Z
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->table:Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getRows()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    .line 232
    .local v2, "row":Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;
    invoke-direct {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getRepeat()Z

    move-result v0

    .line 233
    if-eq v2, p0, :cond_1

    if-nez v0, :cond_0

    .line 234
    goto :goto_1

    .end local v2    # "row":Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;
    :cond_0
    goto :goto_0

    .line 237
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    return v0
.end method

.method public removeCell(I)V
    .locals 1
    .param p1, "pos"    # I

    .line 75
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->ctRow:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;->sizeOfTcArray()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 76
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->tableCells:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 78
    :cond_0
    return-void
.end method

.method public setCantSplitRow(Z)V
    .locals 3
    .param p1, "split"    # Z

    .line 214
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;

    move-result-object v0

    .line 215
    .local v0, "trpr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;->sizeOfCantSplitArray()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;->getCantSplitArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;->addNewCantSplit()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v1

    .line 216
    .local v1, "onoff":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
    :goto_0
    invoke-static {p1}, Lorg/apache/poi/xwpf/model/WMLHelper;->convertBooleanToSTOnOff(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    .line 217
    return-void
.end method

.method public setHeight(I)V
    .locals 5
    .param p1, "height"    # I

    .line 116
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;

    move-result-object v0

    .line 117
    .local v0, "properties":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;->sizeOfTrHeightArray()I

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;->addNewTrHeight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHeight;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;->getTrHeightArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHeight;

    move-result-object v1

    .line 118
    .local v1, "h":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHeight;
    :goto_0
    new-instance v2, Ljava/math/BigInteger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHeight;->setVal(Ljava/math/BigInteger;)V

    .line 119
    return-void
.end method

.method public setRepeatHeader(Z)V
    .locals 3
    .param p1, "repeat"    # Z

    .line 261
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;

    move-result-object v0

    .line 262
    .local v0, "trpr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;->sizeOfTblHeaderArray()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;->getTblHeaderArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;->addNewTblHeader()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v1

    .line 263
    .local v1, "onoff":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
    :goto_0
    invoke-static {p1}, Lorg/apache/poi/xwpf/model/WMLHelper;->convertBooleanToSTOnOff(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    .line 264
    return-void
.end method
