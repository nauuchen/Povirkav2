.class public abstract Lorg/apache/poi/hssf/record/CFHeaderBase;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "CFHeaderBase.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private field_1_numcf:I

.field private field_2_need_recalculation_and_id:I

.field private field_3_enclosing_cell_range:Lorg/apache/poi/ss/util/CellRangeAddress;

.field private field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 37
    return-void
.end method

.method protected constructor <init>([Lorg/apache/poi/ss/util/CellRangeAddress;I)V
    .locals 2
    .param p1, "regions"    # [Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "nRules"    # I

    .line 38
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 39
    move-object v0, p1

    .line 40
    .local v0, "unmergedRanges":[Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-static {v0}, Lorg/apache/poi/ss/util/CellRangeUtil;->mergeCellRanges([Lorg/apache/poi/ss/util/CellRangeAddress;)[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v1

    .line 41
    .local v1, "mergeCellRanges":[Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/CFHeaderBase;->setCellRanges([Lorg/apache/poi/ss/util/CellRangeAddress;)V

    .line 42
    iput p2, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_1_numcf:I

    .line 43
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->clone()Lorg/apache/poi/hssf/record/CFHeaderBase;

    move-result-object v0

    return-object v0
.end method

.method public abstract clone()Lorg/apache/poi/hssf/record/CFHeaderBase;
.end method

.method protected copyTo(Lorg/apache/poi/hssf/record/CFHeaderBase;)V
    .locals 1
    .param p1, "result"    # Lorg/apache/poi/hssf/record/CFHeaderBase;

    .line 154
    iget v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_1_numcf:I

    iput v0, p1, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_1_numcf:I

    .line 155
    iget v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_2_need_recalculation_and_id:I

    iput v0, p1, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_2_need_recalculation_and_id:I

    .line 156
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_3_enclosing_cell_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddress;->copy()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_3_enclosing_cell_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 157
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddressList;->copy()Lorg/apache/poi/ss/util/CellRangeAddressList;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;

    .line 158
    return-void
.end method

.method protected createEmpty()V
    .locals 2

    .line 46
    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_3_enclosing_cell_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 47
    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-direct {v0}, Lorg/apache/poi/ss/util/CellRangeAddressList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;

    .line 48
    return-void
.end method

.method public getCellRanges()[Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddressList;->getCellRangeAddresses()[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddressList;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getEnclosingCellRange()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_3_enclosing_cell_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    return-object v0
.end method

.method public getID()I
    .locals 1

    .line 80
    iget v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_2_need_recalculation_and_id:I

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getNeedRecalculation()Z
    .locals 2

    .line 65
    iget v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_2_need_recalculation_and_id:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getNumberOfConditionalFormats()I
    .locals 1

    .line 57
    iget v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_1_numcf:I

    return v0
.end method

.method protected abstract getRecordName()Ljava/lang/String;
.end method

.method protected read(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 50
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_1_numcf:I

    .line 51
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_2_need_recalculation_and_id:I

    .line 52
    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_3_enclosing_cell_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 53
    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddressList;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;

    .line 54
    return-void
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 147
    iget v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_1_numcf:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 148
    iget v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_2_need_recalculation_and_id:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 149
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_3_enclosing_cell_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 150
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddressList;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 151
    return-void
.end method

.method public setCellRanges([Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 4
    .param p1, "cellRanges"    # [Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 104
    if-eqz p1, :cond_1

    .line 107
    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-direct {v0}, Lorg/apache/poi/ss/util/CellRangeAddressList;-><init>()V

    .line 108
    .local v0, "cral":Lorg/apache/poi/ss/util/CellRangeAddressList;
    const/4 v1, 0x0

    .line 109
    .local v1, "enclosingRange":Lorg/apache/poi/ss/util/CellRangeAddress;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 110
    aget-object v3, p1, v2

    .line 111
    .local v3, "cr":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-static {v3, v1}, Lorg/apache/poi/ss/util/CellRangeUtil;->createEnclosingCellRange(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v1

    .line 112
    invoke-virtual {v0, v3}, Lorg/apache/poi/ss/util/CellRangeAddressList;->addCellRangeAddress(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    .line 109
    .end local v3    # "cr":Lorg/apache/poi/ss/util/CellRangeAddress;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    .end local v2    # "i":I
    :cond_0
    iput-object v1, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_3_enclosing_cell_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 115
    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;

    .line 116
    return-void

    .line 105
    .end local v0    # "cral":Lorg/apache/poi/ss/util/CellRangeAddressList;
    .end local v1    # "enclosingRange":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cellRanges must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEnclosingCellRange(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 0
    .param p1, "cr"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 95
    iput-object p1, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_3_enclosing_cell_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 96
    return-void
.end method

.method public setID(I)V
    .locals 2
    .param p1, "id"    # I

    .line 84
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->getNeedRecalculation()Z

    move-result v0

    .line 85
    .local v0, "needsRecalc":Z
    shl-int/lit8 v1, p1, 0x1

    iput v1, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_2_need_recalculation_and_id:I

    .line 86
    if-eqz v0, :cond_0

    .line 87
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_2_need_recalculation_and_id:I

    .line 89
    :cond_0
    return-void
.end method

.method public setNeedRecalculation(Z)V
    .locals 1
    .param p1, "b"    # Z

    .line 69
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->getNeedRecalculation()Z

    move-result v0

    if-ne p1, v0, :cond_0

    .line 70
    return-void

    .line 71
    :cond_0
    if-eqz p1, :cond_1

    .line 72
    iget v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_2_need_recalculation_and_id:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_2_need_recalculation_and_id:I

    goto :goto_0

    .line 74
    :cond_1
    iget v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_2_need_recalculation_and_id:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_2_need_recalculation_and_id:I

    .line 76
    :goto_0
    return-void
.end method

.method public setNumberOfConditionalFormats(I)V
    .locals 0
    .param p1, "n"    # I

    .line 60
    iput p1, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_1_numcf:I

    .line 61
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 124
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 126
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->getRecordName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    const-string v1, "\t.numCF             = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->getNumberOfConditionalFormats()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    const-string v1, "\t.needRecalc        = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->getNeedRecalculation()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    const-string v1, "\t.id                = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->getID()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    const-string v1, "\t.enclosingCellRange= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->getEnclosingCellRange()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    const-string v1, "\t.cfranges=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellRangeAddressList;->countRanges()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 133
    if-nez v1, :cond_0

    const-string v3, ""

    goto :goto_1

    :cond_0
    const-string v3, ","

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-virtual {v4, v1}, Lorg/apache/poi/ss/util/CellRangeAddressList;->getCellRangeAddress(I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    const-string v1, "[/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->getRecordName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
