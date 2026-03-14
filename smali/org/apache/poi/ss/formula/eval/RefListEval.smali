.class public Lorg/apache/poi/ss/formula/eval/RefListEval;
.super Ljava/lang/Object;
.source "RefListEval.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/eval/ValueEval;


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/formula/eval/ValueEval;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)V
    .locals 1
    .param p1, "v1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "v2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/eval/RefListEval;->list:Ljava/util/List;

    .line 30
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/RefListEval;->add(Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    .line 31
    invoke-direct {p0, p2}, Lorg/apache/poi/ss/formula/eval/RefListEval;->add(Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    .line 32
    return-void
.end method

.method private add(Lorg/apache/poi/ss/formula/eval/ValueEval;)V
    .locals 2
    .param p1, "v"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 36
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/RefListEval;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/RefListEval;->list:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/ss/formula/eval/RefListEval;

    iget-object v1, v1, Lorg/apache/poi/ss/formula/eval/RefListEval;->list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/RefListEval;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :goto_0
    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/formula/eval/ValueEval;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/RefListEval;->list:Ljava/util/List;

    return-object v0
.end method
