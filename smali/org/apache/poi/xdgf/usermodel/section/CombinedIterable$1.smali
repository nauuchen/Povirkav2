.class Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;
.super Ljava/lang/Object;
.source "CombinedIterable.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field baseI:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Long;",
            "TT;>;>;"
        }
    .end annotation
.end field

.field currentBase:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Long;",
            "TT;>;"
        }
    .end annotation
.end field

.field currentMaster:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Long;",
            "TT;>;"
        }
    .end annotation
.end field

.field lastI:Ljava/lang/Long;

.field masterI:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Long;",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable;

.field final synthetic val$vmasterI:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable;Ljava/util/Iterator;)V
    .locals 2

    .line 55
    .local p0, "this":Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;, "Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable.1;"
    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->this$0:Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable;

    iput-object p2, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->val$vmasterI:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->lastI:Ljava/lang/Long;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->currentBase:Ljava/util/Map$Entry;

    .line 60
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->currentMaster:Ljava/util/Map$Entry;

    .line 63
    iget-object p1, p1, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable;->_baseItems:Ljava/util/SortedMap;

    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->baseI:Ljava/util/Iterator;

    .line 64
    iput-object p2, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->masterI:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 68
    .local p0, "this":Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;, "Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable.1;"
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->currentBase:Ljava/util/Map$Entry;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->currentMaster:Ljava/util/Map$Entry;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->baseI:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->masterI:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 77
    .local p0, "this":Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;, "Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable.1;"
    const-wide v0, 0x7fffffffffffffffL

    .line 78
    .local v0, "baseIdx":J
    const-wide v2, 0x7fffffffffffffffL

    .line 80
    .local v2, "masterIdx":J
    iget-object v4, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->currentBase:Ljava/util/Map$Entry;

    if-nez v4, :cond_1

    .line 81
    :cond_0
    iget-object v4, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->baseI:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 82
    iget-object v4, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->baseI:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    iput-object v4, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->currentBase:Ljava/util/Map$Entry;

    .line 83
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->lastI:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    .line 84
    iget-object v4, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->currentBase:Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 85
    goto :goto_0

    .line 89
    :cond_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 92
    :cond_2
    :goto_0
    iget-object v4, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->currentMaster:Ljava/util/Map$Entry;

    if-nez v4, :cond_4

    .line 93
    :cond_3
    iget-object v4, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->masterI:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 94
    iget-object v4, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->masterI:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    iput-object v4, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->currentMaster:Ljava/util/Map$Entry;

    .line 95
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->lastI:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-lez v8, :cond_3

    .line 96
    iget-object v4, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->currentMaster:Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 97
    goto :goto_1

    .line 101
    :cond_4
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 106
    :cond_5
    :goto_1
    iget-object v4, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->currentBase:Ljava/util/Map$Entry;

    const/4 v5, 0x0

    if-eqz v4, :cond_9

    .line 108
    cmp-long v4, v0, v2

    if-gtz v4, :cond_7

    .line 109
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->lastI:Ljava/lang/Long;

    .line 110
    iget-object v4, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->currentBase:Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 113
    .local v4, "val":Ljava/lang/Object;, "TT;"
    cmp-long v6, v2, v0

    if-nez v6, :cond_6

    .line 114
    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->currentMaster:Ljava/util/Map$Entry;

    .line 117
    :cond_6
    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->currentBase:Ljava/util/Map$Entry;

    goto :goto_3

    .line 120
    .end local v4    # "val":Ljava/lang/Object;, "TT;"
    :cond_7
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->lastI:Ljava/lang/Long;

    .line 121
    iget-object v4, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->currentMaster:Ljava/util/Map$Entry;

    if-eqz v4, :cond_8

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    :cond_8
    move-object v4, v5

    .line 122
    .restart local v4    # "val":Ljava/lang/Object;, "TT;"
    :goto_2
    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->currentMaster:Ljava/util/Map$Entry;

    goto :goto_3

    .line 125
    .end local v4    # "val":Ljava/lang/Object;, "TT;"
    :cond_9
    iget-object v4, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->currentMaster:Ljava/util/Map$Entry;

    if-eqz v4, :cond_a

    .line 126
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    iput-object v4, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->lastI:Ljava/lang/Long;

    .line 127
    iget-object v4, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->currentMaster:Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 129
    .restart local v4    # "val":Ljava/lang/Object;, "TT;"
    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->currentMaster:Ljava/util/Map$Entry;

    .line 134
    :goto_3
    return-object v4

    .line 131
    .end local v4    # "val":Ljava/lang/Object;, "TT;"
    :cond_a
    new-instance v4, Ljava/util/NoSuchElementException;

    invoke-direct {v4}, Ljava/util/NoSuchElementException;-><init>()V

    throw v4
.end method

.method public remove()V
    .locals 1

    .line 139
    .local p0, "this":Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;, "Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
