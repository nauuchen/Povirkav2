.class Lorg/apache/poi/poifs/property/PropertyFactory;
.super Ljava/lang/Object;
.source "PropertyFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method static convertToProperties([Lorg/apache/poi/poifs/storage/ListManagedBlock;)Ljava/util/List;
    .locals 6
    .param p0, "blocks"    # [Lorg/apache/poi/poifs/storage/ListManagedBlock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/poi/poifs/storage/ListManagedBlock;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/property/Property;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v0, "properties":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/poifs/property/Property;>;"
    move-object v1, p0

    .local v1, "arr$":[Lorg/apache/poi/poifs/storage/ListManagedBlock;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 63
    .local v4, "block":Lorg/apache/poi/poifs/storage/ListManagedBlock;
    invoke-interface {v4}, Lorg/apache/poi/poifs/storage/ListManagedBlock;->getData()[B

    move-result-object v5

    .line 64
    .local v5, "data":[B
    invoke-static {v5, v0}, Lorg/apache/poi/poifs/property/PropertyFactory;->convertToProperties([BLjava/util/List;)V

    .line 62
    .end local v4    # "block":Lorg/apache/poi/poifs/storage/ListManagedBlock;
    .end local v5    # "data":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 66
    .end local v1    # "arr$":[Lorg/apache/poi/poifs/storage/ListManagedBlock;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    return-object v0
.end method

.method static convertToProperties([BLjava/util/List;)V
    .locals 5
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/property/Property;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    .local p1, "properties":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/poifs/property/Property;>;"
    array-length v0, p0

    div-int/lit16 v0, v0, 0x80

    .line 73
    .local v0, "property_count":I
    const/4 v1, 0x0

    .line 75
    .local v1, "offset":I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 76
    add-int/lit8 v3, v1, 0x42

    aget-byte v3, p0, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    .line 96
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 90
    :cond_0
    new-instance v3, Lorg/apache/poi/poifs/property/RootProperty;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4, p0, v1}, Lorg/apache/poi/poifs/property/RootProperty;-><init>(I[BI)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    goto :goto_1

    .line 84
    :cond_1
    new-instance v3, Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4, p0, v1}, Lorg/apache/poi/poifs/property/DocumentProperty;-><init>(I[BI)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    goto :goto_1

    .line 78
    :cond_2
    new-instance v3, Lorg/apache/poi/poifs/property/DirectoryProperty;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4, p0, v1}, Lorg/apache/poi/poifs/property/DirectoryProperty;-><init>(I[BI)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    nop

    .line 100
    :goto_1
    add-int/lit16 v1, v1, 0x80

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    .end local v2    # "k":I
    :cond_3
    return-void
.end method
