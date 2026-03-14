.class public final Lorg/apache/poi/openxml4j/util/Nullable;
.super Ljava/lang/Object;
.source "Nullable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    .local p0, "this":Lorg/apache/poi/openxml4j/util/Nullable;, "Lorg/apache/poi/openxml4j/util/Nullable<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 43
    .local p0, "this":Lorg/apache/poi/openxml4j/util/Nullable;, "Lorg/apache/poi/openxml4j/util/Nullable<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/apache/poi/openxml4j/util/Nullable;->value:Ljava/lang/Object;

    .line 45
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 53
    .local p0, "this":Lorg/apache/poi/openxml4j/util/Nullable;, "Lorg/apache/poi/openxml4j/util/Nullable<TE;>;"
    iget-object v0, p0, Lorg/apache/poi/openxml4j/util/Nullable;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hasValue()Z
    .locals 1

    .line 63
    .local p0, "this":Lorg/apache/poi/openxml4j/util/Nullable;, "Lorg/apache/poi/openxml4j/util/Nullable<TE;>;"
    iget-object v0, p0, Lorg/apache/poi/openxml4j/util/Nullable;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nullify()V
    .locals 1

    .line 70
    .local p0, "this":Lorg/apache/poi/openxml4j/util/Nullable;, "Lorg/apache/poi/openxml4j/util/Nullable<TE;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/openxml4j/util/Nullable;->value:Ljava/lang/Object;

    .line 71
    return-void
.end method
