.class Lorg/apache/poi/sl/draw/PathGradientPaint;
.super Ljava/lang/Object;
.source "PathGradientPaint.java"

# interfaces
.implements Ljava/awt/Paint;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;
    }
.end annotation


# instance fields
.field protected final capStyle:I

.field protected final colors:[Ljava/awt/Color;

.field protected final fractions:[F

.field protected final joinStyle:I

.field protected final transparency:I


# direct methods
.method public constructor <init>([Ljava/awt/Color;[F)V
    .locals 1
    .param p1, "colors"    # [Ljava/awt/Color;
    .param p2, "fractions"    # [F

    .line 37
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/apache/poi/sl/draw/PathGradientPaint;-><init>([Ljava/awt/Color;[FII)V

    .line 38
    return-void
.end method

.method public constructor <init>([Ljava/awt/Color;[FII)V
    .locals 8
    .param p1, "colors"    # [Ljava/awt/Color;
    .param p2, "fractions"    # [F
    .param p3, "capStyle"    # I
    .param p4, "joinStyle"    # I

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, [Ljava/awt/Color;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/awt/Color;

    iput-object v0, p0, Lorg/apache/poi/sl/draw/PathGradientPaint;->colors:[Ljava/awt/Color;

    .line 42
    invoke-virtual {p2}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lorg/apache/poi/sl/draw/PathGradientPaint;->fractions:[F

    .line 43
    iput p3, p0, Lorg/apache/poi/sl/draw/PathGradientPaint;->capStyle:I

    .line 44
    iput p4, p0, Lorg/apache/poi/sl/draw/PathGradientPaint;->joinStyle:I

    .line 47
    const/4 v0, 0x1

    .line 48
    .local v0, "opaque":Z
    move-object v1, p1

    .local v1, "arr$":[Ljava/awt/Color;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_2

    aget-object v5, v1, v3

    .line 49
    .local v5, "c":Ljava/awt/Color;
    if-eqz v5, :cond_1

    .line 50
    if-eqz v0, :cond_0

    invoke-virtual {v5}, Ljava/awt/Color;->getAlpha()I

    move-result v6

    const/16 v7, 0xff

    if-ne v6, v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    move v0, v4

    .line 48
    .end local v5    # "c":Ljava/awt/Color;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 53
    .end local v1    # "arr$":[Ljava/awt/Color;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_2
    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x3

    :goto_2
    iput v4, p0, Lorg/apache/poi/sl/draw/PathGradientPaint;->transparency:I

    .line 54
    return-void
.end method


# virtual methods
.method public createContext(Ljava/awt/image/ColorModel;Ljava/awt/Rectangle;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/AffineTransform;Ljava/awt/RenderingHints;)Ljava/awt/PaintContext;
    .locals 8
    .param p1, "cm"    # Ljava/awt/image/ColorModel;
    .param p2, "deviceBounds"    # Ljava/awt/Rectangle;
    .param p3, "userBounds"    # Ljava/awt/geom/Rectangle2D;
    .param p4, "transform"    # Ljava/awt/geom/AffineTransform;
    .param p5, "hints"    # Ljava/awt/RenderingHints;

    .line 61
    new-instance v7, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;-><init>(Lorg/apache/poi/sl/draw/PathGradientPaint;Ljava/awt/image/ColorModel;Ljava/awt/Rectangle;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/AffineTransform;Ljava/awt/RenderingHints;)V

    return-object v7
.end method

.method public getTransparency()I
    .locals 1

    .line 65
    iget v0, p0, Lorg/apache/poi/sl/draw/PathGradientPaint;->transparency:I

    return v0
.end method
