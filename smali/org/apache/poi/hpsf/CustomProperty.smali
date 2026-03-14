.class public Lorg/apache/poi/hpsf/CustomProperty;
.super Lorg/apache/poi/hpsf/MutableProperty;
.source "CustomProperty.java"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lorg/apache/poi/hpsf/MutableProperty;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hpsf/CustomProperty;->name:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hpsf/Property;)V
    .locals 1
    .param p1, "property"    # Lorg/apache/poi/hpsf/Property;

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hpsf/CustomProperty;-><init>(Lorg/apache/poi/hpsf/Property;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hpsf/Property;Ljava/lang/String;)V
    .locals 0
    .param p1, "property"    # Lorg/apache/poi/hpsf/Property;
    .param p2, "name"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1}, Lorg/apache/poi/hpsf/MutableProperty;-><init>(Lorg/apache/poi/hpsf/Property;)V

    .line 58
    iput-object p2, p0, Lorg/apache/poi/hpsf/CustomProperty;->name:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 116
    instance-of v0, p1, Lorg/apache/poi/hpsf/CustomProperty;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hpsf/CustomProperty;->equalsContents(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equalsContents(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "o"    # Ljava/lang/Object;

    .line 92
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hpsf/CustomProperty;

    .line 93
    .local v0, "c":Lorg/apache/poi/hpsf/CustomProperty;
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/CustomProperty;->getName()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "name1":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/CustomProperty;->getName()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "name2":Ljava/lang/String;
    const/4 v3, 0x1

    .line 96
    .local v3, "equalNames":Z
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_1

    .line 97
    if-nez v2, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    move v3, v6

    goto :goto_1

    .line 99
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 101
    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/CustomProperty;->getID()J

    move-result-wide v6

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/CustomProperty;->getID()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-nez v10, :cond_2

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/CustomProperty;->getType()J

    move-result-wide v6

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/CustomProperty;->getType()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-nez v10, :cond_2

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/CustomProperty;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/CustomProperty;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    return v4
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperty;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 111
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/CustomProperty;->getID()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lorg/apache/poi/hpsf/CustomProperty;->name:Ljava/lang/String;

    .line 77
    return-void
.end method
