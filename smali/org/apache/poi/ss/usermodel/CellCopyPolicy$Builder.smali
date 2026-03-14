.class public Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;
.super Ljava/lang/Object;
.source "CellCopyPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/usermodel/CellCopyPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


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

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->copyCellValue:Z

    .line 95
    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->copyCellStyle:Z

    .line 96
    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->copyCellFormula:Z

    .line 97
    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->copyHyperlink:Z

    .line 98
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->mergeHyperlink:Z

    .line 101
    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->copyRowHeight:Z

    .line 102
    iput-boolean v1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->condenseRows:Z

    .line 105
    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->copyMergedRegions:Z

    .line 111
    return-void
.end method

.method static synthetic access$000(Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;

    .line 92
    iget-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->copyCellValue:Z

    return v0
.end method

.method static synthetic access$100(Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;

    .line 92
    iget-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->copyCellStyle:Z

    return v0
.end method

.method static synthetic access$200(Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;

    .line 92
    iget-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->copyCellFormula:Z

    return v0
.end method

.method static synthetic access$300(Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;

    .line 92
    iget-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->copyHyperlink:Z

    return v0
.end method

.method static synthetic access$400(Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;

    .line 92
    iget-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->mergeHyperlink:Z

    return v0
.end method

.method static synthetic access$500(Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;

    .line 92
    iget-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->copyRowHeight:Z

    return v0
.end method

.method static synthetic access$600(Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;

    .line 92
    iget-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->condenseRows:Z

    return v0
.end method

.method static synthetic access$700(Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;

    .line 92
    iget-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->copyMergedRegions:Z

    return v0
.end method


# virtual methods
.method public build()Lorg/apache/poi/ss/usermodel/CellCopyPolicy;
    .locals 2

    .line 151
    new-instance v0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;-><init>(Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;Lorg/apache/poi/ss/usermodel/CellCopyPolicy$1;)V

    return-object v0
.end method

.method public cellFormula(Z)Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;
    .locals 0
    .param p1, "copyCellFormula"    # Z

    .line 123
    iput-boolean p1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->copyCellFormula:Z

    .line 124
    return-object p0
.end method

.method public cellStyle(Z)Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;
    .locals 0
    .param p1, "copyCellStyle"    # Z

    .line 119
    iput-boolean p1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->copyCellStyle:Z

    .line 120
    return-object p0
.end method

.method public cellValue(Z)Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;
    .locals 0
    .param p1, "copyCellValue"    # Z

    .line 115
    iput-boolean p1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->copyCellValue:Z

    .line 116
    return-object p0
.end method

.method public condenseRows(Z)Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;
    .locals 0
    .param p1, "condenseRows"    # Z

    .line 141
    iput-boolean p1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->condenseRows:Z

    .line 142
    return-object p0
.end method

.method public copyHyperlink(Z)Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;
    .locals 0
    .param p1, "copyHyperlink"    # Z

    .line 127
    iput-boolean p1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->copyHyperlink:Z

    .line 128
    return-object p0
.end method

.method public mergeHyperlink(Z)Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;
    .locals 0
    .param p1, "mergeHyperlink"    # Z

    .line 131
    iput-boolean p1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->mergeHyperlink:Z

    .line 132
    return-object p0
.end method

.method public mergedRegions(Z)Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;
    .locals 0
    .param p1, "copyMergedRegions"    # Z

    .line 147
    iput-boolean p1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->copyMergedRegions:Z

    .line 148
    return-object p0
.end method

.method public rowHeight(Z)Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;
    .locals 0
    .param p1, "copyRowHeight"    # Z

    .line 137
    iput-boolean p1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->copyRowHeight:Z

    .line 138
    return-object p0
.end method
