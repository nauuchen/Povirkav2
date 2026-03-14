.class public Lorg/apache/poi/sl/draw/DrawNothing;
.super Ljava/lang/Object;
.source "DrawNothing.java"

# interfaces
.implements Lorg/apache/poi/sl/draw/Drawable;


# instance fields
.field protected final shape:Lorg/apache/poi/sl/usermodel/Shape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/sl/usermodel/Shape<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/usermodel/Shape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Shape<",
            "**>;)V"
        }
    .end annotation

    .line 29
    .local p1, "shape":Lorg/apache/poi/sl/usermodel/Shape;, "Lorg/apache/poi/sl/usermodel/Shape<**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/apache/poi/sl/draw/DrawNothing;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    .line 31
    return-void
.end method


# virtual methods
.method public applyTransform(Ljava/awt/Graphics2D;)V
    .locals 0
    .param p1, "graphics"    # Ljava/awt/Graphics2D;

    .line 39
    return-void
.end method

.method public draw(Ljava/awt/Graphics2D;)V
    .locals 0
    .param p1, "graphics"    # Ljava/awt/Graphics2D;

    .line 43
    return-void
.end method

.method public drawContent(Ljava/awt/Graphics2D;)V
    .locals 0
    .param p1, "context"    # Ljava/awt/Graphics2D;

    .line 46
    return-void
.end method
