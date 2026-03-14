.class Lorg/apache/poi/xssf/binary/XSSFBCellHeader;
.super Ljava/lang/Object;
.source "XSSFBCellHeader.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field public static length:I


# instance fields
.field private colNum:I

.field private rowNum:I

.field private showPhonetic:Z

.field private styleIdx:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const/16 v0, 0x8

    sput v0, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->length:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse([BIILorg/apache/poi/xssf/binary/XSSFBCellHeader;)V
    .locals 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "currentRow"    # I
    .param p3, "cell"    # Lorg/apache/poi/xssf/binary/XSSFBCellHeader;

    .line 42
    invoke-static {p0, p1}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->castToInt(J)I

    move-result v0

    .local v0, "colNum":I
    add-int/lit8 p1, p1, 0x4

    .line 43
    invoke-static {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->get24BitInt([BI)I

    move-result v1

    .local v1, "styleIdx":I
    add-int/lit8 p1, p1, 0x3

    .line 45
    const/4 v2, 0x0

    .line 46
    .local v2, "showPhonetic":Z
    invoke-virtual {p3, p2, v0, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->reset(IIIZ)V

    .line 47
    return-void
.end method


# virtual methods
.method getColNum()I
    .locals 1

    .line 62
    iget v0, p0, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->colNum:I

    return v0
.end method

.method getStyleIdx()I
    .locals 1

    .line 66
    iget v0, p0, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->styleIdx:I

    return v0
.end method

.method public reset(IIIZ)V
    .locals 0
    .param p1, "rowNum"    # I
    .param p2, "colNum"    # I
    .param p3, "styleIdx"    # I
    .param p4, "showPhonetic"    # Z

    .line 55
    iput p1, p0, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->rowNum:I

    .line 56
    iput p2, p0, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->colNum:I

    .line 57
    iput p3, p0, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->styleIdx:I

    .line 58
    iput-boolean p4, p0, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->showPhonetic:Z

    .line 59
    return-void
.end method
