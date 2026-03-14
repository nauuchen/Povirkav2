.class public final Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;
.super Lorg/apache/poi/ss/util/CellRangeAddressBase;
.source "CellRangeAddress8Bit.java"


# static fields
.field public static final ENCODED_SIZE:I = 0x6


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "firstRow"    # I
    .param p2, "lastRow"    # I
    .param p3, "firstCol"    # I
    .param p4, "lastCol"    # I

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/ss/util/CellRangeAddressBase;-><init>(IIII)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 4
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 38
    invoke-static {p1}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->readUShortAndCheck(Lorg/apache/poi/util/LittleEndianInput;)I

    move-result v0

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUByte()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUByte()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;-><init>(IIII)V

    .line 39
    return-void
.end method

.method public static getEncodedSize(I)I
    .locals 1
    .param p0, "numberOfItems"    # I

    .line 61
    mul-int/lit8 v0, p0, 0x6

    return v0
.end method

.method private static readUShortAndCheck(Lorg/apache/poi/util/LittleEndianInput;)I
    .locals 2
    .param p0, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 42
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->available()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 46
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    return v0

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Ran out of data reading CellRangeAddress"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public copy()Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;
    .locals 5

    .line 57
    new-instance v0, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->getFirstRow()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->getLastRow()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->getFirstColumn()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->getLastColumn()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;-><init>(IIII)V

    return-object v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 50
    invoke-virtual {p0}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->getFirstRow()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 51
    invoke-virtual {p0}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->getLastRow()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 52
    invoke-virtual {p0}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->getFirstColumn()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 53
    invoke-virtual {p0}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->getLastColumn()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 54
    return-void
.end method
