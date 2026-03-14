.class final Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;
.super Ljava/lang/Object;
.source "FormulaUsedBlankCellSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BlankCellRectangleGroup"
.end annotation


# instance fields
.field private final _firstColumnIndex:I

.field private final _firstRowIndex:I

.field private final _lastColumnIndex:I

.field private _lastRowIndex:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "firstRowIndex"    # I
    .param p2, "firstColumnIndex"    # I
    .param p3, "lastColumnIndex"    # I

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput p1, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_firstRowIndex:I

    .line 119
    iput p2, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_firstColumnIndex:I

    .line 120
    iput p3, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_lastColumnIndex:I

    .line 121
    iput p1, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_lastRowIndex:I

    .line 122
    return-void
.end method


# virtual methods
.method public acceptRow(III)Z
    .locals 3
    .param p1, "rowIndex"    # I
    .param p2, "firstColumnIndex"    # I
    .param p3, "lastColumnIndex"    # I

    .line 141
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_firstColumnIndex:I

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    .line 142
    return v1

    .line 144
    :cond_0
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_lastColumnIndex:I

    if-eq p3, v0, :cond_1

    .line 145
    return v1

    .line 147
    :cond_1
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_lastRowIndex:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    if-eq p1, v0, :cond_2

    .line 148
    return v1

    .line 150
    :cond_2
    iput p1, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_lastRowIndex:I

    .line 151
    return v2
.end method

.method public containsCell(II)Z
    .locals 2
    .param p1, "rowIndex"    # I
    .param p2, "columnIndex"    # I

    .line 125
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_firstColumnIndex:I

    const/4 v1, 0x0

    if-ge p2, v0, :cond_0

    .line 126
    return v1

    .line 128
    :cond_0
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_lastColumnIndex:I

    if-le p2, v0, :cond_1

    .line 129
    return v1

    .line 131
    :cond_1
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_firstRowIndex:I

    if-ge p1, v0, :cond_2

    .line 132
    return v1

    .line 134
    :cond_2
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_lastRowIndex:I

    if-le p1, v0, :cond_3

    .line 135
    return v1

    .line 137
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 155
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 156
    .local v0, "sb":Ljava/lang/StringBuffer;
    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_firstRowIndex:I

    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_firstColumnIndex:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v4}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    .line 157
    .local v1, "crA":Lorg/apache/poi/ss/util/CellReference;
    new-instance v2, Lorg/apache/poi/ss/util/CellReference;

    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_lastRowIndex:I

    iget v5, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_lastColumnIndex:I

    invoke-direct {v2, v3, v5, v4, v4}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    .line 158
    .local v2, "crB":Lorg/apache/poi/ss/util/CellReference;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    const-string v3, " ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
