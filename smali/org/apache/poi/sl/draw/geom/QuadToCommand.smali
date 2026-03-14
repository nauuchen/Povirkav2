.class public Lorg/apache/poi/sl/draw/geom/QuadToCommand;
.super Ljava/lang/Object;
.source "QuadToCommand.java"

# interfaces
.implements Lorg/apache/poi/sl/draw/geom/PathCommand;


# instance fields
.field private arg1:Ljava/lang/String;

.field private arg2:Ljava/lang/String;

.field private arg3:Ljava/lang/String;

.field private arg4:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;)V
    .locals 1
    .param p1, "pt1"    # Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;
    .param p2, "pt2"    # Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;->getX()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/QuadToCommand;->arg1:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;->getY()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/QuadToCommand;->arg2:Ljava/lang/String;

    .line 32
    invoke-virtual {p2}, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;->getX()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/QuadToCommand;->arg3:Ljava/lang/String;

    .line 33
    invoke-virtual {p2}, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;->getY()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/QuadToCommand;->arg4:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public execute(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/sl/draw/geom/Context;)V
    .locals 20
    .param p1, "path"    # Ljava/awt/geom/Path2D$Double;
    .param p2, "ctx"    # Lorg/apache/poi/sl/draw/geom/Context;

    .line 38
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lorg/apache/poi/sl/draw/geom/QuadToCommand;->arg1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v12

    .line 39
    .local v12, "x1":D
    iget-object v2, v0, Lorg/apache/poi/sl/draw/geom/QuadToCommand;->arg2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v14

    .line 40
    .local v14, "y1":D
    iget-object v2, v0, Lorg/apache/poi/sl/draw/geom/QuadToCommand;->arg3:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v16

    .line 41
    .local v16, "x2":D
    iget-object v2, v0, Lorg/apache/poi/sl/draw/geom/QuadToCommand;->arg4:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v18

    .line 42
    .local v18, "y2":D
    move-object/from16 v3, p1

    move-wide v4, v12

    move-wide v6, v14

    move-wide/from16 v8, v16

    move-wide/from16 v10, v18

    invoke-virtual/range {v3 .. v11}, Ljava/awt/geom/Path2D$Double;->quadTo(DDDD)V

    .line 43
    return-void
.end method
