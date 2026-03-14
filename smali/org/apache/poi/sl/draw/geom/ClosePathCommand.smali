.class public Lorg/apache/poi/sl/draw/geom/ClosePathCommand;
.super Ljava/lang/Object;
.source "ClosePathCommand.java"

# interfaces
.implements Lorg/apache/poi/sl/draw/geom/PathCommand;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public execute(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/sl/draw/geom/Context;)V
    .locals 0
    .param p1, "path"    # Ljava/awt/geom/Path2D$Double;
    .param p2, "ctx"    # Lorg/apache/poi/sl/draw/geom/Context;

    .line 31
    invoke-virtual {p1}, Ljava/awt/geom/Path2D$Double;->closePath()V

    .line 32
    return-void
.end method
