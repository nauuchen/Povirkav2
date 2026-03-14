.class public Lorg/apache/poi/hpsf/CustomProperties;
.super Ljava/lang/Object;
.source "CustomProperties.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private codepage:I

.field private final dictionary:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isPure:Z

.field private final props:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lorg/apache/poi/hpsf/CustomProperty;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    const-class v0, Lorg/apache/poi/hpsf/CustomProperties;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/CustomProperties;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    .line 78
    new-instance v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-direct {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->isPure:Z

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->codepage:I

    return-void
.end method

.method private checkCodePage(Ljava/lang/String;)V
    .locals 11
    .param p1, "value"    # Ljava/lang/String;

    .line 388
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/CustomProperties;->getCodepage()I

    move-result v0

    .line 389
    .local v0, "cp":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 390
    const/16 v0, 0x4e4

    .line 392
    :cond_0
    const/16 v1, 0x4b0

    if-ne v0, v1, :cond_1

    .line 393
    return-void

    .line 395
    :cond_1
    const-string v2, ""

    .line 397
    .local v2, "cps":Ljava/lang/String;
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v0, v4}, Lorg/apache/poi/util/CodePageUtil;->codepageToEncoding(IZ)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    .line 400
    goto :goto_0

    .line 398
    :catch_0
    move-exception v5

    .line 399
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v6, Lorg/apache/poi/hpsf/CustomProperties;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v7, 0x7

    new-array v8, v3, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Codepage \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' can\'t be found."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {v6, v7, v8}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 401
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 402
    return-void

    .line 404
    :cond_2
    sget-object v5, Lorg/apache/poi/hpsf/CustomProperties;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v6, v3, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Charset \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' can\'t encode \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' - switching to unicode."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v5, v3, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 405
    invoke-virtual {p0, v1}, Lorg/apache/poi/hpsf/CustomProperties;->setCodepage(I)V

    .line 406
    return-void
.end method

.method private put(Lorg/apache/poi/hpsf/CustomProperty;)Ljava/lang/Object;
    .locals 8
    .param p1, "customProperty"    # Lorg/apache/poi/hpsf/CustomProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 373
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/CustomProperty;->getName()Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 377
    .local v1, "oldId":Ljava/lang/Long;
    :goto_0
    if-eqz v1, :cond_1

    .line 378
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/apache/poi/hpsf/CustomProperty;->setID(J)V

    goto :goto_2

    .line 380
    :cond_1
    iget-object v2, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x0

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->lastKey()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 381
    .local v2, "lastKey":J
    :goto_1
    const-wide/16 v4, 0x1f

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 382
    .local v4, "nextKey":J
    invoke-virtual {p1, v4, v5}, Lorg/apache/poi/hpsf/CustomProperty;->setID(J)V

    .line 384
    .end local v2    # "lastKey":J
    .end local v4    # "nextKey":J
    :goto_2
    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/hpsf/CustomProperties;->put(Ljava/lang/String;Lorg/apache/poi/hpsf/CustomProperty;)Lorg/apache/poi/hpsf/CustomProperty;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 195
    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 196
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 315
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 323
    instance-of v0, p1, Lorg/apache/poi/hpsf/CustomProperty;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 327
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hpsf/CustomProperty;

    .line 328
    .local v1, "cp":Lorg/apache/poi/hpsf/CustomProperty;
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/CustomProperty;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 329
    const/4 v2, 0x1

    return v2

    .end local v1    # "cp":Lorg/apache/poi/hpsf/CustomProperty;
    :cond_1
    goto :goto_0

    .line 333
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 244
    .local v0, "set":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 245
    .local v2, "se":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hpsf/CustomProperty;

    invoke-virtual {v4}, Lorg/apache/poi/hpsf/CustomProperty;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 247
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "se":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 205
    instance-of v0, p1, Lorg/apache/poi/hpsf/CustomProperties;

    if-nez v0, :cond_0

    .line 206
    const/4 v0, 0x0

    return v0

    .line 208
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/hpsf/CustomProperties;

    iget-object v1, v1, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 168
    .local v0, "id":Ljava/lang/Long;
    iget-object v1, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hpsf/CustomProperty;

    .line 169
    .local v1, "cp":Lorg/apache/poi/hpsf/CustomProperty;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/hpsf/CustomProperty;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public getCodepage()I
    .locals 1

    .line 296
    iget v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->codepage:I

    return v0
.end method

.method getDictionary()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 200
    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public idSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 190
    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isPure()Z
    .locals 1

    .line 345
    iget-boolean v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->isPure:Z

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .line 259
    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->values()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public nameSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->values()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public properties()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hpsf/CustomProperty;",
            ">;"
        }
    .end annotation

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 223
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hpsf/CustomProperty;>;"
    iget-object v1, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 224
    .local v2, "l":Ljava/lang/Long;
    iget-object v3, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 226
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "l":Ljava/lang/Long;
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 67
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lorg/apache/poi/hpsf/CustomProperties;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 131
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 132
    const/16 v0, 0x1e

    .local v0, "variantType":I
    goto :goto_0

    .line 133
    .end local v0    # "variantType":I
    :cond_0
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_1

    .line 134
    const/4 v0, 0x2

    .restart local v0    # "variantType":I
    goto :goto_0

    .line 135
    .end local v0    # "variantType":I
    :cond_1
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 136
    const/4 v0, 0x3

    .restart local v0    # "variantType":I
    goto :goto_0

    .line 137
    .end local v0    # "variantType":I
    :cond_2
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 138
    const/16 v0, 0x14

    .restart local v0    # "variantType":I
    goto :goto_0

    .line 139
    .end local v0    # "variantType":I
    :cond_3
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_4

    .line 140
    const/4 v0, 0x4

    .restart local v0    # "variantType":I
    goto :goto_0

    .line 141
    .end local v0    # "variantType":I
    :cond_4
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_5

    .line 142
    const/4 v0, 0x5

    .restart local v0    # "variantType":I
    goto :goto_0

    .line 143
    .end local v0    # "variantType":I
    :cond_5
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 144
    const/16 v0, 0xb

    .restart local v0    # "variantType":I
    goto :goto_0

    .line 145
    .end local v0    # "variantType":I
    :cond_6
    instance-of v0, p2, Ljava/math/BigInteger;

    if-eqz v0, :cond_7

    move-object v0, p2

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_7

    move-object v0, p2

    check-cast v0, Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_7

    .line 148
    const/16 v0, 0x15

    .restart local v0    # "variantType":I
    goto :goto_0

    .line 149
    .end local v0    # "variantType":I
    :cond_7
    instance-of v0, p2, Ljava/util/Date;

    if-eqz v0, :cond_8

    .line 150
    const/16 v0, 0x40

    .line 154
    .restart local v0    # "variantType":I
    :goto_0
    new-instance v7, Lorg/apache/poi/hpsf/MutableProperty;

    const-wide/16 v2, -0x1

    int-to-long v4, v0

    move-object v1, v7

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/hpsf/MutableProperty;-><init>(JJLjava/lang/Object;)V

    .line 155
    .local v1, "p":Lorg/apache/poi/hpsf/Property;
    new-instance v2, Lorg/apache/poi/hpsf/CustomProperty;

    invoke-direct {v2, v1, p1}, Lorg/apache/poi/hpsf/CustomProperty;-><init>(Lorg/apache/poi/hpsf/Property;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lorg/apache/poi/hpsf/CustomProperties;->put(Lorg/apache/poi/hpsf/CustomProperty;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 152
    .end local v0    # "variantType":I
    .end local v1    # "p":Lorg/apache/poi/hpsf/Property;
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unsupported datatype - currently String,Short,Integer,Long,Float,Double,Boolean,BigInteger(unsigned long),Date can be processed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(Ljava/lang/String;Lorg/apache/poi/hpsf/CustomProperty;)Lorg/apache/poi/hpsf/CustomProperty;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cp"    # Lorg/apache/poi/hpsf/CustomProperty;

    .line 98
    if-nez p1, :cond_0

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->isPure:Z

    .line 101
    const/4 v0, 0x0

    return-object v0

    .line 104
    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/hpsf/CustomProperty;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    invoke-direct {p0, p1}, Lorg/apache/poi/hpsf/CustomProperties;->checkCodePage(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v1, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {p2}, Lorg/apache/poi/hpsf/CustomProperty;->getID()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->put(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    .line 117
    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {p2}, Lorg/apache/poi/hpsf/CustomProperty;->getID()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/CustomProperty;

    return-object v0

    .line 105
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parameter \"name\" ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") and custom property\'s name ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/poi/hpsf/CustomProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") do not match."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 213
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;+Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 214
    .local v1, "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;+Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/poi/hpsf/CustomProperties;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 216
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;+Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 67
    invoke-virtual {p0, p1}, Lorg/apache/poi/hpsf/CustomProperties;->remove(Ljava/lang/Object;)Lorg/apache/poi/hpsf/CustomProperty;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Lorg/apache/poi/hpsf/CustomProperty;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->removeValue(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 180
    .local v0, "id":Ljava/lang/Long;
    iget-object v1, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hpsf/CustomProperty;

    return-object v1
.end method

.method public setCodepage(I)V
    .locals 0
    .param p1, "codepage"    # I

    .line 287
    iput p1, p0, Lorg/apache/poi/hpsf/CustomProperties;->codepage:I

    .line 288
    return-void
.end method

.method public setPure(Z)V
    .locals 0
    .param p1, "isPure"    # Z

    .line 354
    iput-boolean p1, p0, Lorg/apache/poi/hpsf/CustomProperties;->isPure:Z

    .line 355
    return-void
.end method

.method public size()I
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 235
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v1, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 236
    .local v2, "l":Ljava/lang/Long;
    iget-object v3, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hpsf/CustomProperty;

    invoke-virtual {v3}, Lorg/apache/poi/hpsf/CustomProperty;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 238
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "l":Ljava/lang/Long;
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method
