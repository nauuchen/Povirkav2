.class public final Lorg/apache/poi/ss/formula/FormulaShifter;
.super Ljava/lang/Object;
.source "FormulaShifter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;
    }
.end annotation


# instance fields
.field private final _amountToMove:I

.field private final _dstSheetIndex:I

.field private final _externSheetIndex:I

.field private final _firstMovedIndex:I

.field private final _lastMovedIndex:I

.field private final _mode:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

.field private final _sheetName:Ljava/lang/String;

.field private final _srcSheetIndex:I

.field private final _version:Lorg/apache/poi/ss/SpreadsheetVersion;


# direct methods
.method private constructor <init>(II)V
    .locals 1
    .param p1, "srcSheetIndex"    # I
    .param p2, "dstSheetIndex"    # I

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    iput v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    iput v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    iput v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_externSheetIndex:I

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_sheetName:Ljava/lang/String;

    .line 102
    iput-object v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_version:Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 104
    iput p1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_srcSheetIndex:I

    .line 105
    iput p2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_dstSheetIndex:I

    .line 106
    sget-object v0, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;->SheetMove:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    iput-object v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_mode:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    .line 107
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;IIILorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;Lorg/apache/poi/ss/SpreadsheetVersion;)V
    .locals 2
    .param p1, "externSheetIndex"    # I
    .param p2, "sheetName"    # Ljava/lang/String;
    .param p3, "firstMovedIndex"    # I
    .param p4, "lastMovedIndex"    # I
    .param p5, "amountToMove"    # I
    .param p6, "mode"    # Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;
    .param p7, "version"    # Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    if-eqz p5, :cond_1

    .line 80
    if-gt p3, p4, :cond_0

    .line 83
    iput p1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_externSheetIndex:I

    .line 84
    iput-object p2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_sheetName:Ljava/lang/String;

    .line 85
    iput p3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    .line 86
    iput p4, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    .line 87
    iput p5, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    .line 88
    iput-object p6, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_mode:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    .line 89
    iput-object p7, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_version:Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_dstSheetIndex:I

    iput v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_srcSheetIndex:I

    .line 92
    return-void

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "firstMovedIndex, lastMovedIndex out of order"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "amountToMove must not be zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private adjustPtg(Lorg/apache/poi/ss/formula/ptg/Ptg;I)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 3
    .param p1, "ptg"    # Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p2, "currentExternSheetIx"    # I

    .line 153
    sget-object v0, Lorg/apache/poi/ss/formula/FormulaShifter$1;->$SwitchMap$org$apache$poi$ss$formula$FormulaShifter$ShiftMode:[I

    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_mode:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 162
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustPtgDueToSheetMove(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    return-object v0

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported shift mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_mode:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustPtgDueToRowCopy(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    return-object v0

    .line 155
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustPtgDueToRowMove(Lorg/apache/poi/ss/formula/ptg/Ptg;I)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    return-object v0
.end method

.method private adjustPtgDueToRowCopy(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 2
    .param p1, "ptg"    # Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 243
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    if-eqz v0, :cond_0

    .line 244
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    .line 245
    .local v0, "rptg":Lorg/apache/poi/ss/formula/ptg/RefPtg;
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowCopyRefPtg(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    return-object v1

    .line 247
    .end local v0    # "rptg":Lorg/apache/poi/ss/formula/ptg/RefPtg;
    :cond_0
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    if-eqz v0, :cond_1

    .line 248
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    .line 249
    .local v0, "rptg":Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowCopyRefPtg(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    return-object v1

    .line 251
    .end local v0    # "rptg":Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;
    :cond_1
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    if-eqz v0, :cond_2

    .line 252
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    .line 253
    .local v0, "rpxg":Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowCopyRefPtg(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    return-object v1

    .line 255
    .end local v0    # "rpxg":Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;
    :cond_2
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;

    if-eqz v0, :cond_3

    .line 256
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowCopyAreaPtg(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    return-object v0

    .line 258
    :cond_3
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    if-eqz v0, :cond_4

    .line 259
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    .line 260
    .local v0, "aptg":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowCopyAreaPtg(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    return-object v1

    .line 262
    .end local v0    # "aptg":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    :cond_4
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    if-eqz v0, :cond_5

    .line 263
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    .line 264
    .local v0, "apxg":Lorg/apache/poi/ss/formula/ptg/Area3DPxg;
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowCopyAreaPtg(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    return-object v1

    .line 266
    .end local v0    # "apxg":Lorg/apache/poi/ss/formula/ptg/Area3DPxg;
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method private adjustPtgDueToRowMove(Lorg/apache/poi/ss/formula/ptg/Ptg;I)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 4
    .param p1, "ptg"    # Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p2, "currentExternSheetIx"    # I

    .line 173
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 174
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_externSheetIndex:I

    if-eq p2, v0, :cond_0

    .line 176
    return-object v1

    .line 178
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    .line 179
    .local v0, "rptg":Lorg/apache/poi/ss/formula/ptg/RefPtg;
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowMoveRefPtg(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    return-object v1

    .line 181
    .end local v0    # "rptg":Lorg/apache/poi/ss/formula/ptg/RefPtg;
    :cond_1
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    if-eqz v0, :cond_3

    .line 182
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    .line 183
    .local v0, "rptg":Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_externSheetIndex:I

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->getExternSheetIndex()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 186
    return-object v1

    .line 188
    :cond_2
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowMoveRefPtg(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    return-object v1

    .line 190
    .end local v0    # "rptg":Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;
    :cond_3
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    if-eqz v0, :cond_6

    .line 191
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    .line 192
    .local v0, "rpxg":Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->getExternalWorkbookNumber()I

    move-result v2

    if-gtz v2, :cond_5

    iget-object v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_sheetName:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->getSheetName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    .line 197
    :cond_4
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowMoveRefPtg(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    return-object v1

    .line 195
    :cond_5
    :goto_0
    return-object v1

    .line 199
    .end local v0    # "rpxg":Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;
    :cond_6
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;

    if-eqz v0, :cond_8

    .line 200
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_externSheetIndex:I

    if-eq p2, v0, :cond_7

    .line 202
    return-object p1

    .line 204
    :cond_7
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowMoveAreaPtg(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    return-object v0

    .line 206
    :cond_8
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    if-eqz v0, :cond_a

    .line 207
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    .line 208
    .local v0, "aptg":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_externSheetIndex:I

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getExternSheetIndex()I

    move-result v3

    if-eq v2, v3, :cond_9

    .line 211
    return-object v1

    .line 213
    :cond_9
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowMoveAreaPtg(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    return-object v1

    .line 215
    .end local v0    # "aptg":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    :cond_a
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    if-eqz v0, :cond_d

    .line 216
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    .line 217
    .local v0, "apxg":Lorg/apache/poi/ss/formula/ptg/Area3DPxg;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getExternalWorkbookNumber()I

    move-result v2

    if-gtz v2, :cond_c

    iget-object v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_sheetName:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getSheetName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_1

    .line 222
    :cond_b
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowMoveAreaPtg(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    return-object v1

    .line 220
    :cond_c
    :goto_1
    return-object v1

    .line 224
    .end local v0    # "apxg":Lorg/apache/poi/ss/formula/ptg/Area3DPxg;
    :cond_d
    return-object v1
.end method

.method private adjustPtgDueToSheetMove(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 5
    .param p1, "ptg"    # Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 271
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 272
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    .line 273
    .local v0, "ref":Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->getExternSheetIndex()I

    move-result v2

    .line 278
    .local v2, "oldSheetIndex":I
    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_srcSheetIndex:I

    if-ge v2, v3, :cond_0

    iget v4, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_dstSheetIndex:I

    if-ge v2, v4, :cond_0

    .line 280
    return-object v1

    .line 282
    :cond_0
    if-le v2, v3, :cond_1

    iget v4, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_dstSheetIndex:I

    if-le v2, v4, :cond_1

    .line 284
    return-object v1

    .line 288
    :cond_1
    if-ne v2, v3, :cond_2

    .line 289
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_dstSheetIndex:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->setExternSheetIndex(I)V

    .line 290
    return-object v0

    .line 294
    :cond_2
    iget v4, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_dstSheetIndex:I

    if-ge v4, v3, :cond_3

    .line 295
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->setExternSheetIndex(I)V

    .line 296
    return-object v0

    .line 300
    :cond_3
    if-le v4, v3, :cond_4

    .line 301
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->setExternSheetIndex(I)V

    .line 302
    return-object v0

    .line 306
    .end local v0    # "ref":Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;
    .end local v2    # "oldSheetIndex":I
    :cond_4
    return-object v1
.end method

.method private static createDeletedRef(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 4
    .param p0, "ptg"    # Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 519
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    if-eqz v0, :cond_0

    .line 520
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;-><init>()V

    return-object v0

    .line 522
    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    if-eqz v0, :cond_1

    .line 523
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    .line 524
    .local v0, "rptg":Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/DeletedRef3DPtg;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->getExternSheetIndex()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/ptg/DeletedRef3DPtg;-><init>(I)V

    return-object v1

    .line 526
    .end local v0    # "rptg":Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;
    :cond_1
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    if-eqz v0, :cond_2

    .line 527
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;-><init>()V

    return-object v0

    .line 529
    :cond_2
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    if-eqz v0, :cond_3

    .line 530
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    .line 531
    .local v0, "area3DPtg":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getExternSheetIndex()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;-><init>(I)V

    return-object v1

    .line 533
    .end local v0    # "area3DPtg":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    :cond_3
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    if-eqz v0, :cond_4

    .line 534
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    .line 535
    .local v0, "pxg":Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->getExternalWorkbookNumber()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->getSheetName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;-><init>(ILjava/lang/String;)V

    return-object v1

    .line 537
    .end local v0    # "pxg":Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;
    :cond_4
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    if-eqz v0, :cond_5

    .line 538
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    .line 539
    .local v0, "pxg":Lorg/apache/poi/ss/formula/ptg/Area3DPxg;
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getExternalWorkbookNumber()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getSheetName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;-><init>(ILjava/lang/String;)V

    return-object v1

    .line 542
    .end local v0    # "pxg":Lorg/apache/poi/ss/formula/ptg/Area3DPxg;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected ref ptg class ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createForRowCopy(ILjava/lang/String;IIILorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/formula/FormulaShifter;
    .locals 9
    .param p0, "externSheetIndex"    # I
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "firstMovedRowIndex"    # I
    .param p3, "lastMovedRowIndex"    # I
    .param p4, "numberOfRowsToMove"    # I
    .param p5, "version"    # Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 116
    new-instance v8, Lorg/apache/poi/ss/formula/FormulaShifter;

    sget-object v6, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;->RowCopy:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    move-object v0, v8

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/poi/ss/formula/FormulaShifter;-><init>(ILjava/lang/String;IIILorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    return-object v8
.end method

.method public static createForRowShift(ILjava/lang/String;IIILorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/formula/FormulaShifter;
    .locals 9
    .param p0, "externSheetIndex"    # I
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "firstMovedRowIndex"    # I
    .param p3, "lastMovedRowIndex"    # I
    .param p4, "numberOfRowsToMove"    # I
    .param p5, "version"    # Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 111
    new-instance v8, Lorg/apache/poi/ss/formula/FormulaShifter;

    sget-object v6, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;->RowMove:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    move-object v0, v8

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/poi/ss/formula/FormulaShifter;-><init>(ILjava/lang/String;IIILorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    return-object v8
.end method

.method public static createForSheetShift(II)Lorg/apache/poi/ss/formula/FormulaShifter;
    .locals 1
    .param p0, "srcSheetIndex"    # I
    .param p1, "dstSheetIndex"    # I

    .line 120
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaShifter;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;-><init>(II)V

    return-object v0
.end method

.method private rowCopyAreaPtg(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 5
    .param p1, "aptg"    # Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;

    .line 492
    const/4 v0, 0x0

    .line 494
    .local v0, "changed":Z
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstRow()I

    move-result v1

    .line 495
    .local v1, "aFirstRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastRow()I

    move-result v2

    .line 497
    .local v2, "aLastRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->isFirstRowRelative()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 498
    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int/2addr v3, v1

    .line 499
    .local v3, "destFirstRowIndex":I
    if-ltz v3, :cond_1

    iget-object v4, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_version:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v4}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v4

    if-ge v4, v3, :cond_0

    goto :goto_0

    .line 501
    :cond_0
    invoke-virtual {p1, v3}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    .line 502
    const/4 v0, 0x1

    goto :goto_1

    .line 500
    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->createDeletedRef(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v4

    return-object v4

    .line 504
    .end local v3    # "destFirstRowIndex":I
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->isLastRowRelative()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 505
    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int/2addr v3, v2

    .line 506
    .local v3, "destLastRowIndex":I
    if-ltz v3, :cond_4

    iget-object v4, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_version:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v4}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v4

    if-ge v4, v3, :cond_3

    goto :goto_2

    .line 508
    :cond_3
    invoke-virtual {p1, v3}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    .line 509
    const/4 v0, 0x1

    goto :goto_3

    .line 507
    :cond_4
    :goto_2
    invoke-static {p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->createDeletedRef(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v4

    return-object v4

    .line 511
    .end local v3    # "destLastRowIndex":I
    :cond_5
    :goto_3
    if-eqz v0, :cond_6

    .line 512
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->sortTopLeftToBottomRight()V

    .line 515
    :cond_6
    if-eqz v0, :cond_7

    move-object v3, p1

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    return-object v3
.end method

.method private rowCopyRefPtg(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 3
    .param p1, "rptg"    # Lorg/apache/poi/ss/formula/ptg/RefPtgBase;

    .line 472
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->getRow()I

    move-result v0

    .line 473
    .local v0, "refRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->isRowRelative()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 474
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int/2addr v1, v2

    .line 475
    .local v1, "destRowIndex":I
    if-ltz v1, :cond_1

    iget-object v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_version:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v2}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v2

    if-ge v2, v1, :cond_0

    goto :goto_0

    .line 477
    :cond_0
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int/2addr v2, v0

    invoke-virtual {p1, v2}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->setRow(I)V

    .line 478
    return-object p1

    .line 476
    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->createDeletedRef(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    return-object v2

    .line 480
    .end local v1    # "destRowIndex":I
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private rowMoveAreaPtg(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 8
    .param p1, "aptg"    # Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;

    .line 339
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstRow()I

    move-result v0

    .line 340
    .local v0, "aFirstRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastRow()I

    move-result v1

    .line 341
    .local v1, "aLastRow":I
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    if-gt v2, v0, :cond_0

    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    if-gt v1, v3, :cond_0

    .line 344
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int/2addr v2, v0

    invoke-virtual {p1, v2}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    .line 345
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    .line 346
    return-object p1

    .line 350
    :cond_0
    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int v4, v2, v3

    .line 351
    .local v4, "destFirstRowIndex":I
    iget v5, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    add-int v6, v5, v3

    .line 353
    .local v6, "destLastRowIndex":I
    const/4 v7, 0x0

    if-ge v0, v2, :cond_3

    if-ge v5, v1, :cond_3

    .line 358
    if-ge v4, v0, :cond_1

    if-gt v0, v6, :cond_1

    .line 360
    add-int/lit8 v2, v6, 0x1

    invoke-virtual {p1, v2}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    .line 361
    return-object p1

    .line 362
    :cond_1
    if-gt v4, v1, :cond_2

    if-ge v1, v6, :cond_2

    .line 364
    add-int/lit8 v2, v4, -0x1

    invoke-virtual {p1, v2}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    .line 365
    return-object p1

    .line 369
    :cond_2
    return-object v7

    .line 371
    :cond_3
    if-gt v2, v0, :cond_8

    if-gt v0, v5, :cond_8

    .line 374
    if-gez v3, :cond_4

    .line 376
    add-int/2addr v3, v0

    invoke-virtual {p1, v3}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    .line 377
    return-object p1

    .line 379
    :cond_4
    if-le v4, v1, :cond_5

    .line 381
    return-object v7

    .line 383
    :cond_5
    add-int/2addr v3, v0

    .line 384
    .local v3, "newFirstRowIx":I
    if-ge v6, v1, :cond_6

    .line 387
    invoke-virtual {p1, v3}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    .line 388
    return-object p1

    .line 391
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 392
    .local v5, "areaRemainingTopRowIx":I
    if-le v4, v5, :cond_7

    .line 394
    move v3, v5

    .line 396
    :cond_7
    invoke-virtual {p1, v3}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    .line 397
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    .line 398
    return-object p1

    .line 400
    .end local v3    # "newFirstRowIx":I
    .end local v5    # "areaRemainingTopRowIx":I
    :cond_8
    if-gt v2, v1, :cond_d

    if-gt v1, v5, :cond_d

    .line 403
    if-lez v3, :cond_9

    .line 405
    add-int/2addr v3, v1

    invoke-virtual {p1, v3}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    .line 406
    return-object p1

    .line 408
    :cond_9
    if-ge v6, v0, :cond_a

    .line 410
    return-object v7

    .line 412
    :cond_a
    add-int/2addr v3, v1

    .line 413
    .local v3, "newLastRowIx":I
    if-le v4, v0, :cond_b

    .line 416
    invoke-virtual {p1, v3}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    .line 417
    return-object p1

    .line 420
    :cond_b
    add-int/lit8 v2, v2, -0x1

    .line 421
    .local v2, "areaRemainingBottomRowIx":I
    if-ge v6, v2, :cond_c

    .line 423
    move v3, v2

    .line 425
    :cond_c
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p1, v5}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    .line 426
    invoke-virtual {p1, v3}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    .line 427
    return-object p1

    .line 432
    .end local v2    # "areaRemainingBottomRowIx":I
    .end local v3    # "newLastRowIx":I
    :cond_d
    if-lt v6, v0, :cond_13

    if-ge v1, v4, :cond_e

    goto :goto_0

    .line 437
    :cond_e
    if-gt v4, v0, :cond_f

    if-gt v1, v6, :cond_f

    .line 439
    invoke-static {p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->createDeletedRef(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    return-object v2

    .line 442
    :cond_f
    if-gt v0, v4, :cond_10

    if-gt v6, v1, :cond_10

    .line 444
    return-object v7

    .line 447
    :cond_10
    if-ge v4, v0, :cond_11

    if-gt v0, v6, :cond_11

    .line 450
    add-int/lit8 v2, v6, 0x1

    invoke-virtual {p1, v2}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    .line 451
    return-object p1

    .line 453
    :cond_11
    if-gt v4, v1, :cond_12

    if-ge v1, v6, :cond_12

    .line 456
    add-int/lit8 v2, v4, -0x1

    invoke-virtual {p1, v2}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    .line 457
    return-object p1

    .line 459
    :cond_12
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Situation not covered: ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 434
    :cond_13
    :goto_0
    return-object v7
.end method

.method private rowMoveRefPtg(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 7
    .param p1, "rptg"    # Lorg/apache/poi/ss/formula/ptg/RefPtgBase;

    .line 310
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->getRow()I

    move-result v0

    .line 311
    .local v0, "refRow":I
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    if-gt v1, v0, :cond_0

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    if-gt v0, v2, :cond_0

    .line 314
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->setRow(I)V

    .line 315
    return-object p1

    .line 319
    :cond_0
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int/2addr v1, v2

    .line 320
    .local v1, "destFirstRowIndex":I
    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    add-int/2addr v3, v2

    .line 325
    .local v3, "destLastRowIndex":I
    if-lt v3, v0, :cond_3

    if-ge v0, v1, :cond_1

    goto :goto_0

    .line 330
    :cond_1
    if-gt v1, v0, :cond_2

    if-gt v0, v3, :cond_2

    .line 332
    invoke-static {p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->createDeletedRef(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    return-object v2

    .line 334
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Situation not covered: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 327
    :cond_3
    :goto_0
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public adjustFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;I)Z
    .locals 3
    .param p1, "ptgs"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p2, "currentExternSheetIx"    # I

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "refsWereChanged":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 143
    aget-object v2, p1, v1

    invoke-direct {p0, v2, p2}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustPtg(Lorg/apache/poi/ss/formula/ptg/Ptg;I)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    .line 144
    .local v2, "newPtg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    if-eqz v2, :cond_0

    .line 145
    const/4 v0, 0x1

    .line 146
    aput-object v2, p1, v1

    .line 142
    .end local v2    # "newPtg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 127
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 130
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 131
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
