.class public Lorg/apache/poi/util/IdentifierManager;
.super Ljava/lang/Object;
.source "IdentifierManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/util/IdentifierManager$Segment;
    }
.end annotation


# static fields
.field public static final MAX_ID:J = 0x7ffffffffffffffeL

.field public static final MIN_ID:J


# instance fields
.field private final lowerbound:J

.field private segments:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/apache/poi/util/IdentifierManager$Segment;",
            ">;"
        }
    .end annotation
.end field

.field private final upperbound:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 5
    .param p1, "lowerbound"    # J
    .param p3, "upperbound"    # J

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    cmp-long v0, p1, p3

    if-gtz v0, :cond_2

    .line 59
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 63
    const-wide v0, 0x7ffffffffffffffeL

    cmp-long v2, p3, v0

    if-gtz v2, :cond_0

    .line 70
    iput-wide p1, p0, Lorg/apache/poi/util/IdentifierManager;->lowerbound:J

    .line 71
    iput-wide p3, p0, Lorg/apache/poi/util/IdentifierManager;->upperbound:J

    .line 72
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    .line 73
    new-instance v1, Lorg/apache/poi/util/IdentifierManager$Segment;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/apache/poi/util/IdentifierManager$Segment;-><init>(JJ)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 74
    return-void

    .line 68
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "upperbound must be less than or equal to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but had "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lowerbound must be greater than or equal to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    .end local v0    # "message":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lowerbound must not be greater than upperbound, had "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyIdentifiersLeft()V
    .locals 2

    .line 242
    iget-object v0, p0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    return-void

    .line 243
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No identifiers left"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getRemainingIdentifiers()J
    .locals 8

    .line 230
    const-wide/16 v0, 0x0

    .line 231
    .local v0, "result":J
    iget-object v2, p0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/util/IdentifierManager$Segment;

    .line 232
    .local v3, "segment":Lorg/apache/poi/util/IdentifierManager$Segment;
    iget-wide v4, v3, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    sub-long/2addr v0, v4

    .line 233
    iget-wide v4, v3, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    add-long/2addr v4, v0

    const-wide/16 v6, 0x1

    add-long v0, v4, v6

    .end local v3    # "segment":Lorg/apache/poi/util/IdentifierManager$Segment;
    goto :goto_0

    .line 235
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-wide v0
.end method

.method public release(J)Z
    .locals 17
    .param p1, "id"    # J

    .line 161
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-wide v3, v0, Lorg/apache/poi/util/IdentifierManager;->lowerbound:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_d

    iget-wide v5, v0, Lorg/apache/poi/util/IdentifierManager;->upperbound:J

    cmp-long v7, v1, v5

    if-gtz v7, :cond_d

    .line 165
    const/4 v7, 0x0

    const-wide/16 v8, 0x1

    const/4 v10, 0x1

    cmp-long v11, v1, v5

    if-nez v11, :cond_2

    .line 166
    iget-object v3, v0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/util/IdentifierManager$Segment;

    .line 167
    .local v3, "lastSegment":Lorg/apache/poi/util/IdentifierManager$Segment;
    iget-wide v4, v3, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    iget-wide v11, v0, Lorg/apache/poi/util/IdentifierManager;->upperbound:J

    sub-long v8, v11, v8

    cmp-long v6, v4, v8

    if-nez v6, :cond_0

    .line 168
    iput-wide v11, v3, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    .line 169
    return v10

    .line 170
    :cond_0
    iget-wide v4, v3, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    iget-wide v8, v0, Lorg/apache/poi/util/IdentifierManager;->upperbound:J

    cmp-long v6, v4, v8

    if-nez v6, :cond_1

    .line 171
    return v7

    .line 173
    :cond_1
    iget-object v4, v0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    new-instance v5, Lorg/apache/poi/util/IdentifierManager$Segment;

    iget-wide v6, v0, Lorg/apache/poi/util/IdentifierManager;->upperbound:J

    invoke-direct {v5, v6, v7, v6, v7}, Lorg/apache/poi/util/IdentifierManager$Segment;-><init>(JJ)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 174
    return v10

    .line 178
    .end local v3    # "lastSegment":Lorg/apache/poi/util/IdentifierManager$Segment;
    :cond_2
    cmp-long v5, v1, v3

    if-nez v5, :cond_5

    .line 179
    iget-object v3, v0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/util/IdentifierManager$Segment;

    .line 180
    .local v3, "firstSegment":Lorg/apache/poi/util/IdentifierManager$Segment;
    iget-wide v4, v3, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    iget-wide v11, v0, Lorg/apache/poi/util/IdentifierManager;->lowerbound:J

    add-long/2addr v8, v11

    cmp-long v6, v4, v8

    if-nez v6, :cond_3

    .line 181
    iput-wide v11, v3, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    .line 182
    return v10

    .line 183
    :cond_3
    iget-wide v4, v3, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    iget-wide v8, v0, Lorg/apache/poi/util/IdentifierManager;->lowerbound:J

    cmp-long v6, v4, v8

    if-nez v6, :cond_4

    .line 184
    return v7

    .line 186
    :cond_4
    iget-object v4, v0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    new-instance v5, Lorg/apache/poi/util/IdentifierManager$Segment;

    iget-wide v6, v0, Lorg/apache/poi/util/IdentifierManager;->lowerbound:J

    invoke-direct {v5, v6, v7, v6, v7}, Lorg/apache/poi/util/IdentifierManager$Segment;-><init>(JJ)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 187
    return v10

    .line 191
    .end local v3    # "firstSegment":Lorg/apache/poi/util/IdentifierManager$Segment;
    :cond_5
    add-long v3, v1, v8

    .line 192
    .local v3, "higher":J
    sub-long v5, v1, v8

    .line 193
    .local v5, "lower":J
    iget-object v11, v0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v11

    .line 195
    .local v11, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/util/IdentifierManager$Segment;>;"
    :goto_0
    invoke-interface {v11}, Ljava/util/ListIterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 196
    invoke-interface {v11}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/poi/util/IdentifierManager$Segment;

    .line 197
    .local v12, "segment":Lorg/apache/poi/util/IdentifierManager$Segment;
    iget-wide v13, v12, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    cmp-long v15, v13, v5

    if-gez v15, :cond_6

    .line 198
    goto :goto_0

    .line 200
    :cond_6
    iget-wide v13, v12, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    cmp-long v15, v13, v3

    if-lez v15, :cond_7

    .line 201
    invoke-interface {v11}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 202
    new-instance v7, Lorg/apache/poi/util/IdentifierManager$Segment;

    invoke-direct {v7, v1, v2, v1, v2}, Lorg/apache/poi/util/IdentifierManager$Segment;-><init>(JJ)V

    invoke-interface {v11, v7}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 203
    return v10

    .line 205
    :cond_7
    iget-wide v13, v12, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    cmp-long v15, v13, v3

    if-nez v15, :cond_8

    .line 206
    iput-wide v1, v12, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    .line 207
    return v10

    .line 209
    :cond_8
    iget-wide v13, v12, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    cmp-long v15, v13, v5

    if-nez v15, :cond_b

    .line 210
    iput-wide v1, v12, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    .line 212
    invoke-interface {v11}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 213
    invoke-interface {v11}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/util/IdentifierManager$Segment;

    .line 214
    .local v7, "next":Lorg/apache/poi/util/IdentifierManager$Segment;
    iget-wide v13, v7, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    move-object/from16 v16, v11

    .end local v11    # "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/util/IdentifierManager$Segment;>;"
    .local v16, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/util/IdentifierManager$Segment;>;"
    iget-wide v10, v12, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    add-long/2addr v10, v8

    cmp-long v8, v13, v10

    if-nez v8, :cond_a

    .line 215
    iget-wide v8, v7, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    iput-wide v8, v12, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    .line 216
    invoke-interface/range {v16 .. v16}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 212
    .end local v7    # "next":Lorg/apache/poi/util/IdentifierManager$Segment;
    .end local v16    # "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/util/IdentifierManager$Segment;>;"
    .restart local v11    # "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/util/IdentifierManager$Segment;>;"
    :cond_9
    move-object/from16 v16, v11

    .line 219
    .end local v11    # "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/util/IdentifierManager$Segment;>;"
    .restart local v16    # "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/util/IdentifierManager$Segment;>;"
    :cond_a
    :goto_1
    const/4 v7, 0x1

    return v7

    .line 209
    .end local v16    # "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/util/IdentifierManager$Segment;>;"
    .restart local v11    # "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/util/IdentifierManager$Segment;>;"
    :cond_b
    move-object/from16 v16, v11

    .end local v11    # "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/util/IdentifierManager$Segment;>;"
    .restart local v16    # "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/util/IdentifierManager$Segment;>;"
    goto :goto_2

    .line 195
    .end local v12    # "segment":Lorg/apache/poi/util/IdentifierManager$Segment;
    .end local v16    # "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/util/IdentifierManager$Segment;>;"
    .restart local v11    # "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/util/IdentifierManager$Segment;>;"
    :cond_c
    move-object/from16 v16, v11

    .line 226
    .end local v11    # "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/util/IdentifierManager$Segment;>;"
    .restart local v16    # "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/util/IdentifierManager$Segment;>;"
    :goto_2
    return v7

    .line 162
    .end local v3    # "higher":J
    .end local v5    # "lower":J
    .end local v16    # "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/util/IdentifierManager$Segment;>;"
    :cond_d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Value for parameter \'id\' was out of bounds, had "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", but should be within ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lorg/apache/poi/util/IdentifierManager;->lowerbound:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lorg/apache/poi/util/IdentifierManager;->upperbound:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public reserve(J)J
    .locals 9
    .param p1, "id"    # J

    .line 77
    iget-wide v0, p0, Lorg/apache/poi/util/IdentifierManager;->lowerbound:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_d

    iget-wide v0, p0, Lorg/apache/poi/util/IdentifierManager;->upperbound:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_d

    .line 80
    invoke-direct {p0}, Lorg/apache/poi/util/IdentifierManager;->verifyIdentifiersLeft()V

    .line 82
    iget-wide v0, p0, Lorg/apache/poi/util/IdentifierManager;->upperbound:J

    const-wide/16 v2, 0x1

    cmp-long v4, p1, v0

    if-nez v4, :cond_2

    .line 83
    iget-object v0, p0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/util/IdentifierManager$Segment;

    .line 84
    .local v0, "lastSegment":Lorg/apache/poi/util/IdentifierManager$Segment;
    iget-wide v4, v0, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    iget-wide v6, p0, Lorg/apache/poi/util/IdentifierManager;->upperbound:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    .line 85
    sub-long/2addr v6, v2

    iput-wide v6, v0, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    .line 86
    iget-wide v1, v0, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    iget-wide v3, v0, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 87
    iget-object v1, p0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 89
    :cond_0
    return-wide p1

    .line 91
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/util/IdentifierManager;->reserveNew()J

    move-result-wide v1

    return-wide v1

    .line 94
    .end local v0    # "lastSegment":Lorg/apache/poi/util/IdentifierManager$Segment;
    :cond_2
    iget-wide v0, p0, Lorg/apache/poi/util/IdentifierManager;->lowerbound:J

    cmp-long v4, p1, v0

    if-nez v4, :cond_5

    .line 95
    iget-object v0, p0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/util/IdentifierManager$Segment;

    .line 96
    .local v0, "firstSegment":Lorg/apache/poi/util/IdentifierManager$Segment;
    iget-wide v4, v0, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    iget-wide v6, p0, Lorg/apache/poi/util/IdentifierManager;->lowerbound:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_4

    .line 97
    add-long/2addr v6, v2

    iput-wide v6, v0, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    .line 98
    iget-wide v1, v0, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    iget-wide v3, v0, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_3

    .line 99
    iget-object v1, p0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 101
    :cond_3
    return-wide p1

    .line 103
    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/util/IdentifierManager;->reserveNew()J

    move-result-wide v1

    return-wide v1

    .line 106
    .end local v0    # "firstSegment":Lorg/apache/poi/util/IdentifierManager$Segment;
    :cond_5
    iget-object v0, p0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 107
    .local v0, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/util/IdentifierManager$Segment;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 108
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/util/IdentifierManager$Segment;

    .line 109
    .local v1, "segment":Lorg/apache/poi/util/IdentifierManager$Segment;
    iget-wide v4, v1, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    cmp-long v6, v4, p1

    if-gez v6, :cond_6

    .line 110
    goto :goto_0

    .line 112
    :cond_6
    iget-wide v4, v1, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    cmp-long v6, v4, p1

    if-lez v6, :cond_7

    .line 113
    goto :goto_1

    .line 115
    :cond_7
    iget-wide v4, v1, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    cmp-long v6, v4, p1

    if-nez v6, :cond_9

    .line 116
    add-long/2addr v2, p1

    iput-wide v2, v1, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    .line 117
    iget-wide v2, v1, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    iget-wide v4, v1, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_8

    .line 118
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 120
    :cond_8
    return-wide p1

    .line 122
    :cond_9
    iget-wide v4, v1, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    cmp-long v6, v4, p1

    if-nez v6, :cond_b

    .line 123
    sub-long v2, p1, v2

    iput-wide v2, v1, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    .line 124
    iget-wide v2, v1, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    iget-wide v4, v1, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_a

    .line 125
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 127
    :cond_a
    return-wide p1

    .line 130
    :cond_b
    new-instance v4, Lorg/apache/poi/util/IdentifierManager$Segment;

    add-long v5, p1, v2

    iget-wide v7, v1, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/apache/poi/util/IdentifierManager$Segment;-><init>(JJ)V

    invoke-interface {v0, v4}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 131
    sub-long v2, p1, v2

    iput-wide v2, v1, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    .line 132
    return-wide p1

    .line 135
    .end local v1    # "segment":Lorg/apache/poi/util/IdentifierManager$Segment;
    :cond_c
    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/util/IdentifierManager;->reserveNew()J

    move-result-wide v1

    return-wide v1

    .line 78
    .end local v0    # "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/util/IdentifierManager$Segment;>;"
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value for parameter \'id\' was out of bounds, had "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but should be within ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/poi/util/IdentifierManager;->lowerbound:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/poi/util/IdentifierManager;->upperbound:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reserveNew()J
    .locals 8

    .line 143
    invoke-direct {p0}, Lorg/apache/poi/util/IdentifierManager;->verifyIdentifiersLeft()V

    .line 144
    iget-object v0, p0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/util/IdentifierManager$Segment;

    .line 145
    .local v0, "segment":Lorg/apache/poi/util/IdentifierManager$Segment;
    iget-wide v1, v0, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    .line 146
    .local v1, "result":J
    iget-wide v3, v0, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v0, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    .line 147
    iget-wide v3, v0, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    iget-wide v5, v0, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    .line 148
    iget-object v3, p0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 150
    :cond_0
    return-wide v1
.end method
