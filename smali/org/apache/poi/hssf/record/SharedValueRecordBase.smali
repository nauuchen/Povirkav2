.class public abstract Lorg/apache/poi/hssf/record/SharedValueRecordBase;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SharedValueRecordBase.java"


# instance fields
.field private _range:Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 40
    new-instance v0, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;-><init>(IIII)V

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/SharedValueRecordBase;-><init>(Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;)V

    .line 41
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;)V
    .locals 2
    .param p1, "range"    # Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    .line 32
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 33
    if-eqz p1, :cond_0

    .line 36
    iput-object p1, p0, Lorg/apache/poi/hssf/record/SharedValueRecordBase;->_range:Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    .line 37
    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "range must be supplied."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 46
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 47
    new-instance v0, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/SharedValueRecordBase;->_range:Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    .line 48
    return-void
.end method


# virtual methods
.method protected getDataSize()I
    .locals 1

    .line 74
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SharedValueRecordBase;->getExtraDataSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method protected abstract getExtraDataSize()I
.end method

.method public final getFirstColumn()I
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/poi/hssf/record/SharedValueRecordBase;->_range:Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->getFirstColumn()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public final getFirstRow()I
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/apache/poi/hssf/record/SharedValueRecordBase;->_range:Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->getFirstRow()I

    move-result v0

    return v0
.end method

.method public final getLastColumn()I
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/apache/poi/hssf/record/SharedValueRecordBase;->_range:Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->getLastColumn()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public final getLastRow()I
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/apache/poi/hssf/record/SharedValueRecordBase;->_range:Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->getLastRow()I

    move-result v0

    return v0
.end method

.method public final getRange()Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/apache/poi/hssf/record/SharedValueRecordBase;->_range:Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    return-object v0
.end method

.method public final isFirstCell(II)Z
    .locals 2
    .param p1, "rowIx"    # I
    .param p2, "colIx"    # I

    .line 113
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SharedValueRecordBase;->getRange()Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    move-result-object v0

    .line 114
    .local v0, "r":Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->getFirstRow()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->getFirstColumn()I

    move-result v1

    if-ne v1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isInRange(II)Z
    .locals 2
    .param p1, "rowIx"    # I
    .param p2, "colIx"    # I

    .line 95
    iget-object v0, p0, Lorg/apache/poi/hssf/record/SharedValueRecordBase;->_range:Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    .line 96
    .local v0, "r":Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->getFirstRow()I

    move-result v1

    if-gt v1, p1, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->getLastRow()I

    move-result v1

    if-lt v1, p1, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->getFirstColumn()I

    move-result v1

    if-gt v1, p2, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->getLastColumn()I

    move-result v1

    if-lt v1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 82
    iget-object v0, p0, Lorg/apache/poi/hssf/record/SharedValueRecordBase;->_range:Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 83
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/SharedValueRecordBase;->serializeExtraData(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 84
    return-void
.end method

.method protected abstract serializeExtraData(Lorg/apache/poi/util/LittleEndianOutput;)V
.end method
