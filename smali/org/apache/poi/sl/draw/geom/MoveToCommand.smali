.class public Lorg/apache/poi/sl/draw/geom/MoveToCommand;
.super Ljava/lang/Object;
.source "MoveToCommand.java"

# interfaces
.implements Lorg/apache/poi/sl/draw/geom/PathCommand;


# instance fields
.field private arg1:Ljava/lang/String;

.field private arg2:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/MoveToCommand;->arg1:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lorg/apache/poi/sl/draw/geom/MoveToCommand;->arg2:Ljava/lang/String;

    .line 37
    return-void
.end method

.method constructor <init>(Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;)V
    .locals 1
    .param p1, "pt"    # Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;->getX()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/MoveToCommand;->arg1:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;->getY()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/MoveToCommand;->arg2:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public execute(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/sl/draw/geom/Context;)V
    .locals 4
    .param p1, "path"    # Ljava/awt/geom/Path2D$Double;
    .param p2, "ctx"    # Lorg/apache/poi/sl/draw/geom/Context;

    .line 41
    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/MoveToCommand;->arg1:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v0

    .line 42
    .local v0, "x":D
    iget-object v2, p0, Lorg/apache/poi/sl/draw/geom/MoveToCommand;->arg2:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v2

    .line 43
    .local v2, "y":D
    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/awt/geom/Path2D$Double;->moveTo(DD)V

    .line 44
    return-void
.end method
