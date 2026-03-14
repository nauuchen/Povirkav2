.class Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;
.super Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;
.source "SXSSFCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/streaming/SXSSFCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NumericFormulaValue"
.end annotation


# instance fields
.field _preEvaluatedValue:D


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1186
    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;-><init>()V

    return-void
.end method


# virtual methods
.method getFormulaType()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 1

    .line 1192
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    return-object v0
.end method

.method getPreEvaluatedValue()D
    .locals 2

    .line 1200
    iget-wide v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;->_preEvaluatedValue:D

    return-wide v0
.end method

.method setPreEvaluatedValue(D)V
    .locals 0
    .param p1, "value"    # D

    .line 1196
    iput-wide p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;->_preEvaluatedValue:D

    .line 1197
    return-void
.end method
