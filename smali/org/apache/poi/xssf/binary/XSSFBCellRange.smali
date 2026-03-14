.class Lorg/apache/poi/xssf/binary/XSSFBCellRange;
.super Ljava/lang/Object;
.source "XSSFBCellRange.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field public static final length:I = 0x10


# instance fields
.field firstCol:I

.field firstRow:I

.field lastCol:I

.field lastRow:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse([BILorg/apache/poi/xssf/binary/XSSFBCellRange;)Lorg/apache/poi/xssf/binary/XSSFBCellRange;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "cellRange"    # Lorg/apache/poi/xssf/binary/XSSFBCellRange;

    .line 41
    if-nez p2, :cond_0

    .line 42
    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBCellRange;

    invoke-direct {v0}, Lorg/apache/poi/xssf/binary/XSSFBCellRange;-><init>()V

    move-object p2, v0

    .line 44
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->castToInt(J)I

    move-result v0

    iput v0, p2, Lorg/apache/poi/xssf/binary/XSSFBCellRange;->firstRow:I

    add-int/lit8 p1, p1, 0x4

    .line 45
    invoke-static {p0, p1}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->castToInt(J)I

    move-result v0

    iput v0, p2, Lorg/apache/poi/xssf/binary/XSSFBCellRange;->lastRow:I

    add-int/lit8 p1, p1, 0x4

    .line 46
    invoke-static {p0, p1}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->castToInt(J)I

    move-result v0

    iput v0, p2, Lorg/apache/poi/xssf/binary/XSSFBCellRange;->firstCol:I

    add-int/lit8 p1, p1, 0x4

    .line 47
    invoke-static {p0, p1}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->castToInt(J)I

    move-result v0

    iput v0, p2, Lorg/apache/poi/xssf/binary/XSSFBCellRange;->lastCol:I

    .line 49
    return-object p2
.end method
