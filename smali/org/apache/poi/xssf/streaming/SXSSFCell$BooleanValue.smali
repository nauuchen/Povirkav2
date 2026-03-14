.class Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanValue;
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
    name = "BooleanValue"
.end annotation


# instance fields
.field _value:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 1

    .line 1266
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    return-object v0
.end method

.method getValue()Z
    .locals 1

    .line 1274
    iget-boolean v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanValue;->_value:Z

    return v0
.end method

.method setValue(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 1270
    iput-boolean p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanValue;->_value:Z

    .line 1271
    return-void
.end method
