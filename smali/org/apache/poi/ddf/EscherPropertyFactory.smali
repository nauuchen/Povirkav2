.class public final Lorg/apache/poi/ddf/EscherPropertyFactory;
.super Ljava/lang/Object;
.source "EscherPropertyFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createProperties([BIS)Ljava/util/List;
    .locals 10
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "numProperties"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIS)",
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherProperty;",
            ">;"
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherProperty;>;"
    move v1, p2

    .line 42
    .local v1, "pos":I
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v2, p3, :cond_6

    .line 45
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v5

    .line 46
    .local v5, "propId":S
    add-int/lit8 v6, v1, 0x2

    invoke-static {p1, v6}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v6

    .line 47
    .local v6, "propData":I
    and-int/lit16 v7, v5, 0x3fff

    int-to-short v7, v7

    .line 48
    .local v7, "propNumber":S
    and-int/lit16 v8, v5, -0x8000

    const/4 v9, 0x1

    if-eqz v8, :cond_0

    const/4 v4, 0x1

    .line 51
    .local v4, "isComplex":Z
    :cond_0
    invoke-static {v7}, Lorg/apache/poi/ddf/EscherProperties;->getPropertyType(S)B

    move-result v8

    .line 53
    .local v8, "propertyType":B
    if-eq v8, v9, :cond_5

    const/4 v9, 0x2

    if-eq v8, v9, :cond_4

    const/4 v9, 0x3

    .local v3, "ep":Lorg/apache/poi/ddf/EscherProperty;
    if-eq v8, v9, :cond_3

    .line 64
    if-nez v4, :cond_1

    .line 65
    new-instance v9, Lorg/apache/poi/ddf/EscherSimpleProperty;

    invoke-direct {v9, v5, v6}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    move-object v3, v9

    goto :goto_1

    .line 66
    .end local v3    # "ep":Lorg/apache/poi/ddf/EscherProperty;
    :cond_1
    const/4 v3, 0x5

    if-ne v8, v3, :cond_2

    .line 67
    new-instance v3, Lorg/apache/poi/ddf/EscherArrayProperty;

    new-array v9, v6, [B

    invoke-direct {v3, v5, v9}, Lorg/apache/poi/ddf/EscherArrayProperty;-><init>(S[B)V

    .restart local v3    # "ep":Lorg/apache/poi/ddf/EscherProperty;
    goto :goto_1

    .line 69
    .end local v3    # "ep":Lorg/apache/poi/ddf/EscherProperty;
    :cond_2
    new-instance v3, Lorg/apache/poi/ddf/EscherComplexProperty;

    new-array v9, v6, [B

    invoke-direct {v3, v5, v9}, Lorg/apache/poi/ddf/EscherComplexProperty;-><init>(S[B)V

    .restart local v3    # "ep":Lorg/apache/poi/ddf/EscherProperty;
    goto :goto_1

    .line 61
    :cond_3
    new-instance v9, Lorg/apache/poi/ddf/EscherShapePathProperty;

    invoke-direct {v9, v5, v6}, Lorg/apache/poi/ddf/EscherShapePathProperty;-><init>(SI)V

    move-object v3, v9

    .line 62
    goto :goto_1

    .line 58
    :cond_4
    new-instance v9, Lorg/apache/poi/ddf/EscherRGBProperty;

    invoke-direct {v9, v5, v6}, Lorg/apache/poi/ddf/EscherRGBProperty;-><init>(SI)V

    move-object v3, v9

    .line 59
    goto :goto_1

    .line 55
    .end local v3    # "ep":Lorg/apache/poi/ddf/EscherProperty;
    :cond_5
    new-instance v3, Lorg/apache/poi/ddf/EscherBoolProperty;

    invoke-direct {v3, v5, v6}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(SI)V

    .line 56
    .restart local v3    # "ep":Lorg/apache/poi/ddf/EscherProperty;
    nop

    .line 73
    :goto_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    nop

    .end local v3    # "ep":Lorg/apache/poi/ddf/EscherProperty;
    .end local v4    # "isComplex":Z
    .end local v5    # "propId":S
    .end local v6    # "propData":I
    .end local v7    # "propNumber":S
    .end local v8    # "propertyType":B
    add-int/lit8 v1, v1, 0x6

    .line 42
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    .end local v2    # "i":I
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ddf/EscherProperty;

    .line 79
    .local v3, "p":Lorg/apache/poi/ddf/EscherProperty;
    instance-of v5, v3, Lorg/apache/poi/ddf/EscherComplexProperty;

    if-eqz v5, :cond_9

    .line 80
    instance-of v5, v3, Lorg/apache/poi/ddf/EscherArrayProperty;

    if-eqz v5, :cond_7

    .line 81
    move-object v5, v3

    check-cast v5, Lorg/apache/poi/ddf/EscherArrayProperty;

    invoke-virtual {v5, p1, v1}, Lorg/apache/poi/ddf/EscherArrayProperty;->setArrayData([BI)I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_3

    .line 83
    :cond_7
    move-object v5, v3

    check-cast v5, Lorg/apache/poi/ddf/EscherComplexProperty;

    invoke-virtual {v5}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object v5

    .line 85
    .local v5, "complexData":[B
    array-length v6, p1

    sub-int/2addr v6, v1

    .line 86
    .local v6, "leftover":I
    array-length v7, v5

    if-lt v6, v7, :cond_8

    .line 91
    array-length v7, v5

    invoke-static {p1, v1, v5, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    array-length v7, v5

    add-int/2addr v1, v7

    goto :goto_3

    .line 87
    :cond_8
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not read complex escher property, length was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", but had only "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes left"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 93
    .end local v3    # "p":Lorg/apache/poi/ddf/EscherProperty;
    .end local v5    # "complexData":[B
    .end local v6    # "leftover":I
    :cond_9
    :goto_3
    goto :goto_2

    .line 96
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_a
    return-object v0
.end method
