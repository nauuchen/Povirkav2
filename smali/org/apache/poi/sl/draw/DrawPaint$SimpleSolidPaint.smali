.class Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint;
.super Ljava/lang/Object;
.source "DrawPaint.java"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sl/draw/DrawPaint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleSolidPaint"
.end annotation


# instance fields
.field private final solidColor:Lorg/apache/poi/sl/usermodel/ColorStyle;


# direct methods
.method constructor <init>(Ljava/awt/Color;)V
    .locals 2
    .param p1, "color"    # Ljava/awt/Color;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-eqz p1, :cond_0

    .line 69
    new-instance v0, Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint$1;-><init>(Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint;Ljava/awt/Color;)V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint;->solidColor:Lorg/apache/poi/sl/usermodel/ColorStyle;

    .line 93
    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Color needs to be specified"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lorg/apache/poi/sl/usermodel/ColorStyle;)V
    .locals 2
    .param p1, "color"    # Lorg/apache/poi/sl/usermodel/ColorStyle;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    if-eqz p1, :cond_0

    .line 99
    iput-object p1, p0, Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint;->solidColor:Lorg/apache/poi/sl/usermodel/ColorStyle;

    .line 100
    return-void

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Color needs to be specified"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getSolidColor()Lorg/apache/poi/sl/usermodel/ColorStyle;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint;->solidColor:Lorg/apache/poi/sl/usermodel/ColorStyle;

    return-object v0
.end method
