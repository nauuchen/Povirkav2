.class public Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable;
.super Ljava/lang/Object;
.source "CombinedIterable.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final _baseItems:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "TT;>;"
        }
    .end annotation
.end field

.field final _masterItems:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/SortedMap;Ljava/util/SortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "TT;>;",
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "TT;>;)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable;, "Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable<TT;>;"
    .local p1, "baseItems":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;TT;>;"
    .local p2, "masterItems":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable;->_baseItems:Ljava/util/SortedMap;

    .line 40
    iput-object p2, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable;->_masterItems:Ljava/util/SortedMap;

    .line 41
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 48
    .local p0, "this":Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable;, "Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable<TT;>;"
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable;->_masterItems:Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "vmasterI":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;TT;>;>;"
    goto :goto_0

    .line 51
    .end local v0    # "vmasterI":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;TT;>;>;"
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 52
    .local v0, "empty":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Long;TT;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v1

    .line 55
    .local v0, "vmasterI":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;TT;>;>;"
    :goto_0
    new-instance v1, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;

    invoke-direct {v1, p0, v0}, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;-><init>(Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable;Ljava/util/Iterator;)V

    return-object v1
.end method
