.class Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor$1;
.super Ljava/lang/Object;
.source "ShapeVisitor.java"

# interfaces
.implements Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;->getAcceptor()Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;


# direct methods
.method constructor <init>(Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor$1;->this$0:Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Z
    .locals 1
    .param p1, "shape"    # Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    .line 49
    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->isDeleted()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
