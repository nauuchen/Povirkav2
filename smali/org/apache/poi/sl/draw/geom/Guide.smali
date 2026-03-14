.class public Lorg/apache/poi/sl/draw/geom/Guide;
.super Ljava/lang/Object;
.source "Guide.java"

# interfaces
.implements Lorg/apache/poi/sl/draw/geom/Formula;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/sl/draw/geom/Guide$Op;
    }
.end annotation


# instance fields
.field private final fmla:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final op:Lorg/apache/poi/sl/draw/geom/Guide$Op;

.field private final operands:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "nm"    # Ljava/lang/String;
    .param p2, "fm"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/Guide;->name:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lorg/apache/poi/sl/draw/geom/Guide;->fmla:Ljava/lang/String;

    .line 55
    const-string v0, "\\s+"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/Guide;->operands:[Ljava/lang/String;

    .line 56
    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "*"

    const-string v2, "mul"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    const-string v2, "div"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    const-string v2, "add"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, "sub"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "?:"

    const-string v2, "ifelse"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/sl/draw/geom/Guide$Op;->valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/draw/geom/Guide$Op;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/Guide;->op:Lorg/apache/poi/sl/draw/geom/Guide$Op;

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/sl/draw/binding/CTGeomGuide;)V
    .locals 2
    .param p1, "gd"    # Lorg/apache/poi/sl/draw/binding/CTGeomGuide;

    .line 49
    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTGeomGuide;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTGeomGuide;->getFmla()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/sl/draw/geom/Guide;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public evaluate(Lorg/apache/poi/sl/draw/geom/Context;)D
    .locals 11
    .param p1, "ctx"    # Lorg/apache/poi/sl/draw/geom/Context;

    .line 69
    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/Guide;->operands:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    if-le v1, v2, :cond_0

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide v0, v3

    .line 70
    .local v0, "x":D
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/sl/draw/geom/Guide;->operands:[Ljava/lang/String;

    array-length v5, v2

    const/4 v6, 0x2

    if-le v5, v6, :cond_1

    aget-object v2, v2, v6

    invoke-virtual {p1, v2}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v5

    goto :goto_1

    :cond_1
    move-wide v5, v3

    .line 71
    .local v5, "y":D
    :goto_1
    iget-object v2, p0, Lorg/apache/poi/sl/draw/geom/Guide;->operands:[Ljava/lang/String;

    array-length v7, v2

    const/4 v8, 0x3

    if-le v7, v8, :cond_2

    aget-object v2, v2, v8

    invoke-virtual {p1, v2}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v7

    goto :goto_2

    :cond_2
    move-wide v7, v3

    .line 72
    .local v7, "z":D
    :goto_2
    sget-object v2, Lorg/apache/poi/sl/draw/geom/Guide$1;->$SwitchMap$org$apache$poi$sl$draw$geom$Guide$Op:[I

    iget-object v9, p0, Lorg/apache/poi/sl/draw/geom/Guide;->op:Lorg/apache/poi/sl/draw/geom/Guide$Op;

    invoke-virtual {v9}, Lorg/apache/poi/sl/draw/geom/Guide$Op;->ordinal()I

    move-result v9

    aget v2, v2, v9

    const-wide v9, 0x40ed4c0000000000L    # 60000.0

    packed-switch v2, :pswitch_data_0

    .line 134
    return-wide v3

    .line 132
    :pswitch_0
    div-double v2, v5, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double v2, v2, v0

    return-wide v2

    .line 129
    :pswitch_1
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    return-wide v2

    .line 126
    :pswitch_2
    div-double v2, v5, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, v0

    return-wide v2

    .line 123
    :pswitch_3
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, v0

    return-wide v2

    .line 114
    :pswitch_4
    cmpg-double v2, v5, v0

    if-gez v2, :cond_3

    .line 115
    return-wide v0

    .line 116
    :cond_3
    cmpl-double v2, v5, v7

    if-lez v2, :cond_4

    .line 117
    return-wide v7

    .line 119
    :cond_4
    return-wide v5

    .line 109
    :pswitch_5
    mul-double v2, v0, v5

    div-double/2addr v2, v7

    return-wide v2

    .line 106
    :pswitch_6
    mul-double v2, v0, v0

    mul-double v9, v5, v5

    add-double/2addr v2, v9

    mul-double v9, v7, v7

    add-double/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    return-wide v2

    .line 103
    :pswitch_7
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    return-wide v2

    .line 100
    :pswitch_8
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    return-wide v2

    .line 97
    :pswitch_9
    return-wide v0

    .line 94
    :pswitch_a
    cmpl-double v2, v0, v3

    if-lez v2, :cond_5

    move-wide v2, v5

    goto :goto_3

    :cond_5
    move-wide v2, v7

    :goto_3
    return-wide v2

    .line 90
    :pswitch_b
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v2, v2, v0

    return-wide v2

    .line 87
    :pswitch_c
    div-double v2, v5, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v2, v2, v0

    return-wide v2

    .line 84
    :pswitch_d
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    mul-double v2, v2, v9

    return-wide v2

    .line 81
    :pswitch_e
    add-double v2, v0, v5

    sub-double/2addr v2, v7

    return-wide v2

    .line 78
    :pswitch_f
    add-double v2, v0, v5

    div-double/2addr v2, v7

    return-wide v2

    .line 75
    :pswitch_10
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    return-wide v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getFormula()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/Guide;->fmla:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/Guide;->name:Ljava/lang/String;

    return-object v0
.end method
