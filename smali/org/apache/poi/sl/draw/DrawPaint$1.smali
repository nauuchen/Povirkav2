.class Lorg/apache/poi/sl/draw/DrawPaint$1;
.super Ljava/lang/Object;
.source "DrawPaint.java"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/ColorStyle;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/sl/draw/DrawPaint;->getSolidPaint(Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)Ljava/awt/Paint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/sl/draw/DrawPaint;

.field final synthetic val$modifier:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

.field final synthetic val$orig:Lorg/apache/poi/sl/usermodel/ColorStyle;


# direct methods
.method constructor <init>(Lorg/apache/poi/sl/draw/DrawPaint;Lorg/apache/poi/sl/usermodel/ColorStyle;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->this$0:Lorg/apache/poi/sl/draw/DrawPaint;

    iput-object p2, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$orig:Lorg/apache/poi/sl/usermodel/ColorStyle;

    iput-object p3, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$modifier:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlpha()I
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$orig:Lorg/apache/poi/sl/usermodel/ColorStyle;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getColor()Ljava/awt/Color;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$orig:Lorg/apache/poi/sl/usermodel/ColorStyle;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getColor()Ljava/awt/Color;

    move-result-object v0

    return-object v0
.end method

.method public getHueMod()I
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$orig:Lorg/apache/poi/sl/usermodel/ColorStyle;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getHueMod()I

    move-result v0

    return v0
.end method

.method public getHueOff()I
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$orig:Lorg/apache/poi/sl/usermodel/ColorStyle;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getHueOff()I

    move-result v0

    return v0
.end method

.method public getLumMod()I
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$orig:Lorg/apache/poi/sl/usermodel/ColorStyle;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getLumMod()I

    move-result v0

    return v0
.end method

.method public getLumOff()I
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$orig:Lorg/apache/poi/sl/usermodel/ColorStyle;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getLumOff()I

    move-result v0

    return v0
.end method

.method public getSatMod()I
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$orig:Lorg/apache/poi/sl/usermodel/ColorStyle;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getSatMod()I

    move-result v0

    return v0
.end method

.method public getSatOff()I
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$orig:Lorg/apache/poi/sl/usermodel/ColorStyle;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getSatOff()I

    move-result v0

    return v0
.end method

.method public getShade()I
    .locals 5

    .line 179
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$orig:Lorg/apache/poi/sl/usermodel/ColorStyle;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getShade()I

    move-result v0

    .line 180
    .local v0, "shade":I
    sget-object v1, Lorg/apache/poi/sl/draw/DrawPaint$2;->$SwitchMap$org$apache$poi$sl$usermodel$PaintStyle$PaintModifier:[I

    iget-object v2, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$modifier:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    invoke-virtual {v2}, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v4, 0x186a0

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 186
    return v0

    .line 184
    :cond_0
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit16 v1, v1, 0x4e20

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    .line 182
    :cond_1
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    const v2, 0x9c40

    add-int/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method public getTint()I
    .locals 5

    .line 192
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$orig:Lorg/apache/poi/sl/usermodel/ColorStyle;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getTint()I

    move-result v0

    .line 193
    .local v0, "tint":I
    sget-object v1, Lorg/apache/poi/sl/draw/DrawPaint$2;->$SwitchMap$org$apache$poi$sl$usermodel$PaintStyle$PaintModifier:[I

    iget-object v2, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$modifier:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    invoke-virtual {v2}, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const v4, 0x186a0

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 199
    return v0

    .line 197
    :cond_0
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit16 v1, v1, 0x4e20

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    .line 195
    :cond_1
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    const v2, 0x9c40

    add-int/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method
