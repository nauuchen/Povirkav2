.class public final Lorg/apache/poi/hssf/record/ArrayRecord;
.super Lorg/apache/poi/hssf/record/SharedValueRecordBase;
.source "ArrayRecord.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final OPT_ALWAYS_RECALCULATE:I = 0x1

.field private static final OPT_CALCULATE_ON_OPEN:I = 0x2

.field public static final sid:S = 0x221s


# instance fields
.field private _field3notUsed:I

.field private _formula:Lorg/apache/poi/ss/formula/Formula;

.field private _options:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 42
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/SharedValueRecordBase;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    .line 43
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_options:I

    .line 44
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_field3notUsed:I

    .line 45
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    .line 46
    .local v0, "formulaTokenLen":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v1

    .line 47
    .local v1, "totalFormulaLen":I
    invoke-static {v0, p1, v1}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;I)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_formula:Lorg/apache/poi/ss/formula/Formula;

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/Formula;Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;)V
    .locals 1
    .param p1, "formula"    # Lorg/apache/poi/ss/formula/Formula;
    .param p2, "range"    # Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    .line 51
    invoke-direct {p0, p2}, Lorg/apache/poi/hssf/record/SharedValueRecordBase;-><init>(Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;)V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_options:I

    .line 53
    iput v0, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_field3notUsed:I

    .line 54
    iput-object p1, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_formula:Lorg/apache/poi/ss/formula/Formula;

    .line 55
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

    .line 31
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ArrayRecord;->clone()Lorg/apache/poi/hssf/record/ArrayRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/ArrayRecord;
    .locals 3

    .line 99
    new-instance v0, Lorg/apache/poi/hssf/record/ArrayRecord;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_formula:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/Formula;->copy()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ArrayRecord;->getRange()Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hssf/record/ArrayRecord;-><init>(Lorg/apache/poi/ss/formula/Formula;Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;)V

    .line 102
    .local v0, "rec":Lorg/apache/poi/hssf/record/ArrayRecord;
    iget v1, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_options:I

    iput v1, v0, Lorg/apache/poi/hssf/record/ArrayRecord;->_options:I

    .line 103
    iget v1, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_field3notUsed:I

    iput v1, v0, Lorg/apache/poi/hssf/record/ArrayRecord;->_field3notUsed:I

    .line 105
    return-object v0
.end method

.method protected getExtraDataSize()I
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_formula:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->getEncodedSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public getFormulaTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_formula:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    return-object v0
.end method

.method public getSid()S
    .locals 1

    .line 78
    const/16 v0, 0x221

    return v0
.end method

.method public isAlwaysRecalculate()Z
    .locals 2

    .line 58
    iget v0, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_options:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isCalculateOnOpen()Z
    .locals 1

    .line 61
    iget v0, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_options:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected serializeExtraData(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 72
    iget v0, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_options:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 73
    iget v0, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_field3notUsed:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 74
    iget-object v0, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_formula:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 82
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 83
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " [ARRAY]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    const-string v1, " range="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ArrayRecord;->getRange()Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    const-string v1, " options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v3, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_options:I

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    const-string v1, " notUsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v3, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_field3notUsed:I

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->intToHex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    const-string v1, " formula:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    iget-object v1, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_formula:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    .line 89
    .local v1, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 90
    aget-object v4, v1, v3

    .line 91
    .local v4, "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getRVAType()C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    .end local v4    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 93
    .end local v3    # "i":I
    :cond_0
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
