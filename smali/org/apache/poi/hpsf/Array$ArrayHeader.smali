.class Lorg/apache/poi/hpsf/Array$ArrayHeader;
.super Ljava/lang/Object;
.source "Array.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hpsf/Array;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArrayHeader"
.end annotation


# instance fields
.field private _dimensions:[Lorg/apache/poi/hpsf/Array$ArrayDimension;

.field private _type:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/poi/hpsf/Array$ArrayHeader;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/hpsf/Array$ArrayHeader;

    .line 36
    iget v0, p0, Lorg/apache/poi/hpsf/Array$ArrayHeader;->_type:I

    return v0
.end method


# virtual methods
.method getNumberOfScalarValues()J
    .locals 8

    .line 62
    const-wide/16 v0, 0x1

    .line 63
    .local v0, "result":J
    iget-object v2, p0, Lorg/apache/poi/hpsf/Array$ArrayHeader;->_dimensions:[Lorg/apache/poi/hpsf/Array$ArrayDimension;

    .local v2, "arr$":[Lorg/apache/poi/hpsf/Array$ArrayDimension;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 64
    .local v5, "dimension":Lorg/apache/poi/hpsf/Array$ArrayDimension;
    invoke-static {v5}, Lorg/apache/poi/hpsf/Array$ArrayDimension;->access$000(Lorg/apache/poi/hpsf/Array$ArrayDimension;)J

    move-result-wide v6

    mul-long v0, v0, v6

    .line 63
    .end local v5    # "dimension":Lorg/apache/poi/hpsf/Array$ArrayDimension;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 66
    .end local v2    # "arr$":[Lorg/apache/poi/hpsf/Array$ArrayDimension;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_0
    return-wide v0
.end method

.method getType()I
    .locals 1

    .line 70
    iget v0, p0, Lorg/apache/poi/hpsf/Array$ArrayHeader;->_type:I

    return v0
.end method

.method read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    .locals 6
    .param p1, "lei"    # Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    .line 42
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hpsf/Array$ArrayHeader;->_type:I

    .line 44
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUInt()J

    move-result-wide v0

    .line 46
    .local v0, "numDimensionsUnsigned":J
    const-wide/16 v2, 0x1

    cmp-long v4, v2, v0

    if-gtz v4, :cond_1

    const-wide/16 v2, 0x1f

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 51
    long-to-int v2, v0

    .line 53
    .local v2, "numDimensions":I
    new-array v3, v2, [Lorg/apache/poi/hpsf/Array$ArrayDimension;

    iput-object v3, p0, Lorg/apache/poi/hpsf/Array$ArrayHeader;->_dimensions:[Lorg/apache/poi/hpsf/Array$ArrayDimension;

    .line 54
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 55
    new-instance v4, Lorg/apache/poi/hpsf/Array$ArrayDimension;

    invoke-direct {v4}, Lorg/apache/poi/hpsf/Array$ArrayDimension;-><init>()V

    .line 56
    .local v4, "ad":Lorg/apache/poi/hpsf/Array$ArrayDimension;
    invoke-virtual {v4, p1}, Lorg/apache/poi/hpsf/Array$ArrayDimension;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    .line 57
    iget-object v5, p0, Lorg/apache/poi/hpsf/Array$ArrayHeader;->_dimensions:[Lorg/apache/poi/hpsf/Array$ArrayDimension;

    aput-object v4, v5, v3

    .line 54
    .end local v4    # "ad":Lorg/apache/poi/hpsf/Array$ArrayDimension;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59
    .end local v3    # "i":I
    :cond_0
    return-void

    .line 47
    .end local v2    # "numDimensions":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Array dimension number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not in [1; 31] range"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;

    invoke-direct {v3, v2}, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
