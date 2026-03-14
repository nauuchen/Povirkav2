.class Lorg/apache/poi/hpsf/Decimal;
.super Ljava/lang/Object;
.source "Decimal.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private field_1_wReserved:S

.field private field_2_scale:B

.field private field_3_sign:B

.field private field_4_hi32:I

.field private field_5_lo64:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    .locals 2
    .param p1, "lei"    # Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    .line 36
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hpsf/Decimal;->field_1_wReserved:S

    .line 37
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hpsf/Decimal;->field_2_scale:B

    .line 38
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hpsf/Decimal;->field_3_sign:B

    .line 39
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hpsf/Decimal;->field_4_hi32:I

    .line 40
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hpsf/Decimal;->field_5_lo64:J

    .line 41
    return-void
.end method
