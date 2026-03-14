.class Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorValue;
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
    name = "ErrorValue"
.end annotation


# instance fields
.field _value:B


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 1

    .line 1282
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    return-object v0
.end method

.method getValue()B
    .locals 1

    .line 1290
    iget-byte v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorValue;->_value:B

    return v0
.end method

.method setValue(B)V
    .locals 0
    .param p1, "value"    # B

    .line 1286
    iput-byte p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorValue;->_value:B

    .line 1287
    return-void
.end method
