.class public Lorg/apache/poi/sl/draw/Drawable$DrawableHint;
.super Ljava/awt/RenderingHints$Key;
.source "Drawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sl/draw/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrawableHint"
.end annotation


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 29
    invoke-direct {p0, p1}, Ljava/awt/RenderingHints$Key;-><init>(I)V

    .line 30
    return-void
.end method


# virtual methods
.method public isCompatibleValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "val"    # Ljava/lang/Object;

    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 37
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/Drawable$DrawableHint;->intKey()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/Drawable$DrawableHint;->intKey()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 48
    :pswitch_0
    const-string v0, "GRESTORE"

    return-object v0

    .line 47
    :pswitch_1
    const-string v0, "GSAVE"

    return-object v0

    .line 46
    :pswitch_2
    const-string v0, "FONT_MAP"

    return-object v0

    .line 45
    :pswitch_3
    const-string v0, "FONT_FALLBACK"

    return-object v0

    .line 44
    :pswitch_4
    const-string v0, "FONT_HANDLER"

    return-object v0

    .line 43
    :pswitch_5
    const-string v0, "PRESET_GEOMETRY_CACHE"

    return-object v0

    .line 42
    :pswitch_6
    const-string v0, "GRADIENT_SHAPE"

    return-object v0

    .line 41
    :pswitch_7
    const-string v0, "TEXT_RENDERING_MODE"

    return-object v0

    .line 40
    :pswitch_8
    const-string v0, "IMAGE_RENDERER"

    return-object v0

    .line 39
    :pswitch_9
    const-string v0, "GROUP_TRANSFORM"

    return-object v0

    .line 38
    :pswitch_a
    const-string v0, "DRAW_FACTORY"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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
