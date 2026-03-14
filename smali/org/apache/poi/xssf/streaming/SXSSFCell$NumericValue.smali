.class Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericValue;
.super Ljava/lang/Object;
.source "SXSSFCell.java"

# interfaces
.implements Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/streaming/SXSSFCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NumericValue"
.end annotation


# instance fields
.field _value:D


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 1

    .line 1110
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    return-object v0
.end method

.method getValue()D
    .locals 2

    .line 1118
    iget-wide v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericValue;->_value:D

    return-wide v0
.end method

.method setValue(D)V
    .locals 0
    .param p1, "value"    # D

    .line 1114
    iput-wide p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericValue;->_value:D

    .line 1115
    return-void
.end method
