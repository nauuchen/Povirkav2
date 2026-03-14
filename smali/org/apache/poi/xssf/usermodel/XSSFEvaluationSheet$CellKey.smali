.class Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;
.super Ljava/lang/Object;
.source "XSSFEvaluationSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CellKey"
.end annotation


# instance fields
.field private final _col:I

.field private _hash:I

.field private final _row:I


# direct methods
.method protected constructor <init>(II)V
    .locals 1
    .param p1, "row"    # I
    .param p2, "col"    # I

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;->_hash:I

    .line 100
    iput p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;->_row:I

    .line 101
    iput p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;->_col:I

    .line 102
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 114
    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 115
    return v1

    .line 118
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;

    .line 119
    .local v0, "oKey":Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;
    iget v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;->_row:I

    iget v3, v0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;->_row:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;->_col:I

    iget v3, v0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;->_col:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 106
    iget v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;->_hash:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 107
    iget v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;->_row:I

    add-int/lit16 v0, v0, 0x275

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;->_col:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;->_hash:I

    .line 109
    :cond_0
    iget v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;->_hash:I

    return v0
.end method
