.class Lorg/apache/poi/hpsf/Vector;
.super Ljava/lang/Object;
.source "Vector.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final _type:S

.field private _values:[Lorg/apache/poi/hpsf/TypedPropertyValue;


# direct methods
.method constructor <init>(S)V
    .locals 0
    .param p1, "type"    # S

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-short p1, p0, Lorg/apache/poi/hpsf/Vector;->_type:S

    .line 36
    return-void
.end method


# virtual methods
.method getValues()[Lorg/apache/poi/hpsf/TypedPropertyValue;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/apache/poi/hpsf/Vector;->_values:[Lorg/apache/poi/hpsf/TypedPropertyValue;

    return-object v0
.end method

.method read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    .locals 8
    .param p1, "lei"    # Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    .line 39
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUInt()J

    move-result-wide v0

    .line 41
    .local v0, "longLength":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_3

    .line 44
    long-to-int v2, v0

    .line 50
    .local v2, "length":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hpsf/TypedPropertyValue;>;"
    iget-short v4, p0, Lorg/apache/poi/hpsf/Vector;->_type:S

    const/16 v5, 0xc

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    .line 52
    .local v4, "paddedType":I
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 53
    new-instance v6, Lorg/apache/poi/hpsf/TypedPropertyValue;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Lorg/apache/poi/hpsf/TypedPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 54
    .local v6, "value":Lorg/apache/poi/hpsf/TypedPropertyValue;
    if-nez v4, :cond_1

    .line 55
    invoke-virtual {v6, p1}, Lorg/apache/poi/hpsf/TypedPropertyValue;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {v6, p1}, Lorg/apache/poi/hpsf/TypedPropertyValue;->readValue(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    .line 59
    :goto_1
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .end local v6    # "value":Lorg/apache/poi/hpsf/TypedPropertyValue;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 61
    .end local v5    # "i":I
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lorg/apache/poi/hpsf/TypedPropertyValue;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/apache/poi/hpsf/TypedPropertyValue;

    iput-object v5, p0, Lorg/apache/poi/hpsf/Vector;->_values:[Lorg/apache/poi/hpsf/TypedPropertyValue;

    .line 62
    return-void

    .line 42
    .end local v2    # "length":I
    .end local v3    # "values":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hpsf/TypedPropertyValue;>;"
    .end local v4    # "paddedType":I
    :cond_3
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Vector is too long -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
