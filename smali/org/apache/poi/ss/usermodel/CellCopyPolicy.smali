.class public Lorg/apache/poi/ss/usermodel/CellCopyPolicy;
.super Ljava/lang/Object;
.source "CellCopyPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONDENSE_ROWS_POLICY:Z = false

.field public static final DEFAULT_COPY_CELL_FORMULA_POLICY:Z = true

.field public static final DEFAULT_COPY_CELL_STYLE_POLICY:Z = true

.field public static final DEFAULT_COPY_CELL_VALUE_POLICY:Z = true

.field public static final DEFAULT_COPY_HYPERLINK_POLICY:Z = true

.field public static final DEFAULT_COPY_MERGED_REGIONS_POLICY:Z = true

.field public static final DEFAULT_COPY_ROW_HEIGHT_POLICY:Z = true

.field public static final DEFAULT_MERGE_HYPERLINK_POLICY:Z = false


# instance fields
.field private condenseRows:Z

.field private copyCellFormula:Z

.field private copyCellStyle:Z

.field private copyCellValue:Z

.field private copyHyperlink:Z

.field private copyMergedRegions:Z

.field private copyRowHeight:Z

.field private mergeHyperlink:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellValue:Z

    .line 40
    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellStyle:Z

    .line 41
    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellFormula:Z

    .line 42
    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyHyperlink:Z

    .line 43
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->mergeHyperlink:Z

    .line 46
    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyRowHeight:Z

    .line 47
    iput-boolean v1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->condenseRows:Z

    .line 50
    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyMergedRegions:Z

    .line 56
    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;)V
    .locals 2
    .param p1, "builder"    # Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellValue:Z

    .line 40
    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellStyle:Z

    .line 41
    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellFormula:Z

    .line 42
    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyHyperlink:Z

    .line 43
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->mergeHyperlink:Z

    .line 46
    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyRowHeight:Z

    .line 47
    iput-boolean v1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->condenseRows:Z

    .line 50
    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyMergedRegions:Z

    .line 80
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->access$000(Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellValue:Z

    .line 81
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->access$100(Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellStyle:Z

    .line 82
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->access$200(Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellFormula:Z

    .line 83
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->access$300(Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyHyperlink:Z

    .line 84
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->access$400(Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->mergeHyperlink:Z

    .line 86
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->access$500(Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyRowHeight:Z

    .line 87
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->access$600(Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->condenseRows:Z

    .line 89
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->access$700(Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyMergedRegions:Z

    .line 90
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;Lorg/apache/poi/ss/usermodel/CellCopyPolicy$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;
    .param p2, "x1"    # Lorg/apache/poi/ss/usermodel/CellCopyPolicy$1;

    .line 23
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;-><init>(Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/usermodel/CellCopyPolicy;)V
    .locals 2
    .param p1, "other"    # Lorg/apache/poi/ss/usermodel/CellCopyPolicy;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellValue:Z

    .line 40
    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellStyle:Z

    .line 41
    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellFormula:Z

    .line 42
    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyHyperlink:Z

    .line 43
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->mergeHyperlink:Z

    .line 46
    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyRowHeight:Z

    .line 47
    iput-boolean v1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->condenseRows:Z

    .line 50
    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyMergedRegions:Z

    .line 64
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCopyCellValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellValue:Z

    .line 65
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCopyCellStyle()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellStyle:Z

    .line 66
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCopyCellFormula()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellFormula:Z

    .line 67
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCopyHyperlink()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyHyperlink:Z

    .line 68
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isMergeHyperlink()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->mergeHyperlink:Z

    .line 70
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCopyRowHeight()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyRowHeight:Z

    .line 71
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCondenseRows()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->condenseRows:Z

    .line 73
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCopyMergedRegions()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyMergedRegions:Z

    .line 74
    return-void
.end method


# virtual methods
.method public createBuilder()Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;
    .locals 2

    .line 156
    new-instance v0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;

    invoke-direct {v0}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;-><init>()V

    iget-boolean v1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellValue:Z

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->cellValue(Z)Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellStyle:Z

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->cellStyle(Z)Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellFormula:Z

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->cellFormula(Z)Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyHyperlink:Z

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->copyHyperlink(Z)Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->mergeHyperlink:Z

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->mergeHyperlink(Z)Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyRowHeight:Z

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->rowHeight(Z)Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->condenseRows:Z

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->condenseRows(Z)Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyMergedRegions:Z

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->mergedRegions(Z)Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;

    move-result-object v0

    .line 165
    .local v0, "builder":Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;
    return-object v0
.end method

.method public isCondenseRows()Z
    .locals 1

    .line 266
    iget-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->condenseRows:Z

    return v0
.end method

.method public isCopyCellFormula()Z
    .locals 1

    .line 203
    iget-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellFormula:Z

    return v0
.end method

.method public isCopyCellStyle()Z
    .locals 1

    .line 189
    iget-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellStyle:Z

    return v0
.end method

.method public isCopyCellValue()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellValue:Z

    return v0
.end method

.method public isCopyHyperlink()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyHyperlink:Z

    return v0
.end method

.method public isCopyMergedRegions()Z
    .locals 1

    .line 284
    iget-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyMergedRegions:Z

    return v0
.end method

.method public isCopyRowHeight()Z
    .locals 1

    .line 248
    iget-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyRowHeight:Z

    return v0
.end method

.method public isMergeHyperlink()Z
    .locals 1

    .line 231
    iget-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->mergeHyperlink:Z

    return v0
.end method

.method public setCondenseRows(Z)V
    .locals 0
    .param p1, "condenseRows"    # Z

    .line 273
    iput-boolean p1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->condenseRows:Z

    .line 274
    return-void
.end method

.method public setCopyCellFormula(Z)V
    .locals 0
    .param p1, "copyCellFormula"    # Z

    .line 210
    iput-boolean p1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellFormula:Z

    .line 211
    return-void
.end method

.method public setCopyCellStyle(Z)V
    .locals 0
    .param p1, "copyCellStyle"    # Z

    .line 196
    iput-boolean p1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellStyle:Z

    .line 197
    return-void
.end method

.method public setCopyCellValue(Z)V
    .locals 0
    .param p1, "copyCellValue"    # Z

    .line 182
    iput-boolean p1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellValue:Z

    .line 183
    return-void
.end method

.method public setCopyHyperlink(Z)V
    .locals 0
    .param p1, "copyHyperlink"    # Z

    .line 224
    iput-boolean p1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyHyperlink:Z

    .line 225
    return-void
.end method

.method public setCopyMergedRegions(Z)V
    .locals 0
    .param p1, "copyMergedRegions"    # Z

    .line 291
    iput-boolean p1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyMergedRegions:Z

    .line 292
    return-void
.end method

.method public setCopyRowHeight(Z)V
    .locals 0
    .param p1, "copyRowHeight"    # Z

    .line 255
    iput-boolean p1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyRowHeight:Z

    .line 256
    return-void
.end method

.method public setMergeHyperlink(Z)V
    .locals 0
    .param p1, "mergeHyperlink"    # Z

    .line 238
    iput-boolean p1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->mergeHyperlink:Z

    .line 239
    return-void
.end method
