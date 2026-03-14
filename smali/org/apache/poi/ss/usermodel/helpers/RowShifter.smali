.class public abstract Lorg/apache/poi/ss/usermodel/helpers/RowShifter;
.super Ljava/lang/Object;
.source "RowShifter.java"


# instance fields
.field protected final sheet:Lorg/apache/poi/ss/usermodel/Sheet;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 0
    .param p1, "sh"    # Lorg/apache/poi/ss/usermodel/Sheet;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    .line 41
    return-void
.end method

.method private removalNeeded(Lorg/apache/poi/ss/util/CellRangeAddress;III)Z
    .locals 6
    .param p1, "merged"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "startRow"    # I
    .param p3, "endRow"    # I
    .param p4, "n"    # I

    .line 97
    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x1

    .line 102
    .local v0, "movedRows":I
    const/4 v1, 0x0

    if-lez p4, :cond_0

    .line 104
    new-instance v2, Lorg/apache/poi/ss/util/CellRangeAddress;

    add-int/lit8 v3, p3, 0x1

    add-int v4, p3, p4

    sub-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int v4, p3, p4

    invoke-direct {v2, v3, v4, v1, v1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    move-object v1, v2

    .local v1, "overwrite":Lorg/apache/poi/ss/util/CellRangeAddress;
    goto :goto_0

    .line 107
    .end local v1    # "overwrite":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_0
    new-instance v2, Lorg/apache/poi/ss/util/CellRangeAddress;

    add-int v3, p2, p4

    add-int/lit8 v4, p2, -0x1

    add-int v5, p2, p4

    add-int/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-direct {v2, v3, v4, v1, v1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    move-object v1, v2

    .line 111
    .restart local v1    # "overwrite":Lorg/apache/poi/ss/util/CellRangeAddress;
    :goto_0
    invoke-virtual {p1, v1}, Lorg/apache/poi/ss/util/CellRangeAddress;->intersects(Lorg/apache/poi/ss/util/CellRangeAddressBase;)Z

    move-result v2

    return v2
.end method


# virtual methods
.method public shiftMergedRegions(III)Ljava/util/List;
    .locals 9
    .param p1, "startRow"    # I
    .param p2, "endRow"    # I
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v0, "shiftedRegions":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/util/CellRangeAddress;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 56
    .local v1, "removedIndices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Sheet;->getNumMergedRegions()I

    move-result v2

    .line 57
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_7

    .line 58
    iget-object v4, p0, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v4, v3}, Lorg/apache/poi/ss/usermodel/Sheet;->getMergedRegion(I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v4

    .line 62
    .local v4, "merged":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-direct {p0, v4, p1, p2, p3}, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->removalNeeded(Lorg/apache/poi/ss/util/CellRangeAddress;III)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 63
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    goto :goto_3

    .line 67
    :cond_0
    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v5, p1, :cond_2

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v5

    if-lt v5, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v5, 0x1

    .line 68
    .local v5, "inStart":Z
    :goto_2
    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v8

    if-le v8, p2, :cond_3

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v8

    if-gt v8, p2, :cond_4

    :cond_3
    const/4 v6, 0x1

    .line 71
    .local v6, "inEnd":Z
    :cond_4
    if-eqz v5, :cond_6

    if-nez v6, :cond_5

    .line 72
    goto :goto_3

    .line 76
    :cond_5
    add-int/lit8 v7, p1, -0x1

    invoke-virtual {v4, v7}, Lorg/apache/poi/ss/util/CellRangeAddress;->containsRow(I)Z

    move-result v7

    if-nez v7, :cond_6

    add-int/lit8 v7, p2, 0x1

    invoke-virtual {v4, v7}, Lorg/apache/poi/ss/util/CellRangeAddress;->containsRow(I)Z

    move-result v7

    if-nez v7, :cond_6

    .line 77
    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v7

    add-int/2addr v7, p3

    invoke-virtual {v4, v7}, Lorg/apache/poi/ss/util/CellRangeAddress;->setFirstRow(I)V

    .line 78
    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v7

    add-int/2addr v7, p3

    invoke-virtual {v4, v7}, Lorg/apache/poi/ss/util/CellRangeAddress;->setLastRow(I)V

    .line 80
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    .end local v4    # "merged":Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v5    # "inStart":Z
    .end local v6    # "inEnd":Z
    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 85
    .end local v3    # "i":I
    :cond_7
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 86
    iget-object v3, p0, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v3, v1}, Lorg/apache/poi/ss/usermodel/Sheet;->removeMergedRegions(Ljava/util/Collection;)V

    .line 90
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 91
    .local v4, "region":Lorg/apache/poi/ss/util/CellRangeAddress;
    iget-object v5, p0, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v5, v4}, Lorg/apache/poi/ss/usermodel/Sheet;->addMergedRegion(Lorg/apache/poi/ss/util/CellRangeAddress;)I

    goto :goto_4

    .line 93
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "region":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_9
    return-object v0
.end method

.method public abstract updateConditionalFormatting(Lorg/apache/poi/ss/formula/FormulaShifter;)V
.end method

.method public abstract updateFormulas(Lorg/apache/poi/ss/formula/FormulaShifter;)V
.end method

.method public abstract updateHyperlinks(Lorg/apache/poi/ss/formula/FormulaShifter;)V
.end method

.method public abstract updateNamedRanges(Lorg/apache/poi/ss/formula/FormulaShifter;)V
.end method

.method public abstract updateRowFormulas(Lorg/apache/poi/ss/usermodel/Row;Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation
.end method
