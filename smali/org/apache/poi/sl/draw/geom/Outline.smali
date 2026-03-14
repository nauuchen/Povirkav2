.class public Lorg/apache/poi/sl/draw/geom/Outline;
.super Ljava/lang/Object;
.source "Outline.java"


# instance fields
.field private path:Lorg/apache/poi/sl/draw/geom/Path;

.field private shape:Ljava/awt/Shape;


# direct methods
.method public constructor <init>(Ljava/awt/Shape;Lorg/apache/poi/sl/draw/geom/Path;)V
    .locals 0
    .param p1, "shape"    # Ljava/awt/Shape;
    .param p2, "path"    # Lorg/apache/poi/sl/draw/geom/Path;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/Outline;->shape:Ljava/awt/Shape;

    .line 30
    iput-object p2, p0, Lorg/apache/poi/sl/draw/geom/Outline;->path:Lorg/apache/poi/sl/draw/geom/Path;

    .line 31
    return-void
.end method


# virtual methods
.method public getOutline()Ljava/awt/Shape;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/Outline;->shape:Ljava/awt/Shape;

    return-object v0
.end method

.method public getPath()Lorg/apache/poi/sl/draw/geom/Path;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/Outline;->path:Lorg/apache/poi/sl/draw/geom/Path;

    return-object v0
.end method
