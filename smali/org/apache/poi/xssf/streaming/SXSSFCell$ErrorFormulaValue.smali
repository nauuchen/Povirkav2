.class Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorFormulaValue;
.super Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;
.source "SXSSFCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/streaming/SXSSFCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ErrorFormulaValue"
.end annotation


# instance fields
.field _preEvaluatedValue:B


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1237
    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;-><init>()V

    return-void
.end method


# virtual methods
.method getFormulaType()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 1

    .line 1243
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    return-object v0
.end method

.method getPreEvaluatedValue()B
    .locals 1

    .line 1251
    iget-byte v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorFormulaValue;->_preEvaluatedValue:B

    return v0
.end method

.method setPreEvaluatedValue(B)V
    .locals 0
    .param p1, "value"    # B

    .line 1247
    iput-byte p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorFormulaValue;->_preEvaluatedValue:B

    .line 1248
    return-void
.end method
