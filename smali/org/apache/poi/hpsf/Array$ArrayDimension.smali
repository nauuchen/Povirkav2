.class Lorg/apache/poi/hpsf/Array$ArrayDimension;
.super Ljava/lang/Object;
.source "Array.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hpsf/Array;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArrayDimension"
.end annotation


# instance fields
.field private _indexOffset:I

.field private _size:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/poi/hpsf/Array$ArrayDimension;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/poi/hpsf/Array$ArrayDimension;

    .line 25
    iget-wide v0, p0, Lorg/apache/poi/hpsf/Array$ArrayDimension;->_size:J

    return-wide v0
.end method


# virtual methods
.method read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    .locals 2
    .param p1, "lei"    # Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    .line 31
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUInt()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hpsf/Array$ArrayDimension;->_size:J

    .line 32
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hpsf/Array$ArrayDimension;->_indexOffset:I

    .line 33
    return-void
.end method
