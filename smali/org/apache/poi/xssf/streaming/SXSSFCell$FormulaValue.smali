.class abstract Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;
.super Ljava/lang/Object;
.source "SXSSFCell.java"

# interfaces
.implements Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/streaming/SXSSFCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "FormulaValue"
.end annotation


# instance fields
.field _value:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getFormulaType()Lorg/apache/poi/ss/usermodel/CellType;
.end method

.method public getType()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 1

    .line 1174
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    return-object v0
.end method

.method getValue()Ljava/lang/String;
    .locals 1

    .line 1182
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;->_value:Ljava/lang/String;

    return-object v0
.end method

.method setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 1178
    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;->_value:Ljava/lang/String;

    .line 1179
    return-void
.end method
