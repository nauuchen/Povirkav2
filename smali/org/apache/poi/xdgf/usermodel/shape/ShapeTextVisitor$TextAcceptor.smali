.class public Lorg/apache/poi/xdgf/usermodel/shape/ShapeTextVisitor$TextAcceptor;
.super Ljava/lang/Object;
.source "ShapeTextVisitor.java"

# interfaces
.implements Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xdgf/usermodel/shape/ShapeTextVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextAcceptor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Z
    .locals 1
    .param p1, "shape"    # Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    .line 36
    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->hasText()Z

    move-result v0

    return v0
.end method
