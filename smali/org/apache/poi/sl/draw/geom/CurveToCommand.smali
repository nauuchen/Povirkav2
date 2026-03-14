.class public Lorg/apache/poi/sl/draw/geom/CurveToCommand;
.super Ljava/lang/Object;
.source "CurveToCommand.java"

# interfaces
.implements Lorg/apache/poi/sl/draw/geom/PathCommand;


# instance fields
.field private arg1:Ljava/lang/String;

.field private arg2:Ljava/lang/String;

.field private arg3:Ljava/lang/String;

.field private arg4:Ljava/lang/String;

.field private arg5:Ljava/lang/String;

.field private arg6:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;)V
    .locals 1
    .param p1, "pt1"    # Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;
    .param p2, "pt2"    # Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;
    .param p3, "pt3"    # Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;->getX()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/CurveToCommand;->arg1:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;->getY()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/CurveToCommand;->arg2:Ljava/lang/String;

    .line 32
    invoke-virtual {p2}, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;->getX()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/CurveToCommand;->arg3:Ljava/lang/String;

    .line 33
    invoke-virtual {p2}, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;->getY()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/CurveToCommand;->arg4:Ljava/lang/String;

    .line 34
    invoke-virtual {p3}, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;->getX()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/CurveToCommand;->arg5:Ljava/lang/String;

    .line 35
    invoke-virtual {p3}, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;->getY()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/CurveToCommand;->arg6:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public execute(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/sl/draw/geom/Context;)V
    .locals 28
    .param p1, "path"    # Ljava/awt/geom/Path2D$Double;
    .param p2, "ctx"    # Lorg/apache/poi/sl/draw/geom/Context;

    .line 40
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lorg/apache/poi/sl/draw/geom/CurveToCommand;->arg1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v16

    .line 41
    .local v16, "x1":D
    iget-object v2, v0, Lorg/apache/poi/sl/draw/geom/CurveToCommand;->arg2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v18

    .line 42
    .local v18, "y1":D
    iget-object v2, v0, Lorg/apache/poi/sl/draw/geom/CurveToCommand;->arg3:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v20

    .line 43
    .local v20, "x2":D
    iget-object v2, v0, Lorg/apache/poi/sl/draw/geom/CurveToCommand;->arg4:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v22

    .line 44
    .local v22, "y2":D
    iget-object v2, v0, Lorg/apache/poi/sl/draw/geom/CurveToCommand;->arg5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v24

    .line 45
    .local v24, "x3":D
    iget-object v2, v0, Lorg/apache/poi/sl/draw/geom/CurveToCommand;->arg6:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v26

    .line 46
    .local v26, "y3":D
    move-object/from16 v3, p1

    move-wide/from16 v4, v16

    move-wide/from16 v6, v18

    move-wide/from16 v8, v20

    move-wide/from16 v10, v22

    move-wide/from16 v12, v24

    move-wide/from16 v14, v26

    invoke-virtual/range {v3 .. v15}, Ljava/awt/geom/Path2D$Double;->curveTo(DDDDDD)V

    .line 47
    return-void
.end method
