.class Lorg/apache/poi/xssf/streaming/SXSSFCell$StringFormulaValue;
.super Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;
.source "SXSSFCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/streaming/SXSSFCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StringFormulaValue"
.end annotation


# instance fields
.field _preEvaluatedValue:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1203
    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;-><init>()V

    return-void
.end method


# virtual methods
.method getFormulaType()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 1

    .line 1209
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    return-object v0
.end method

.method getPreEvaluatedValue()Ljava/lang/String;
    .locals 1

    .line 1217
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringFormulaValue;->_preEvaluatedValue:Ljava/lang/String;

    return-object v0
.end method

.method setPreEvaluatedValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 1213
    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringFormulaValue;->_preEvaluatedValue:Ljava/lang/String;

    .line 1214
    return-void
.end method
