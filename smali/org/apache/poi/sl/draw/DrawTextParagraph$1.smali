.class Lorg/apache/poi/sl/draw/DrawTextParagraph$1;
.super Ljava/lang/Object;
.source "DrawTextParagraph.java"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/PlaceableShape;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/sl/draw/DrawTextParagraph;->getParagraphShape()Lorg/apache/poi/sl/usermodel/PlaceableShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/sl/draw/DrawTextParagraph;


# direct methods
.method constructor <init>(Lorg/apache/poi/sl/draw/DrawTextParagraph;)V
    .locals 0

    .line 541
    iput-object p1, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph$1;->this$0:Lorg/apache/poi/sl/draw/DrawTextParagraph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnchor()Ljava/awt/geom/Rectangle2D;
    .locals 1

    .line 545
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph$1;->this$0:Lorg/apache/poi/sl/draw/DrawTextParagraph;

    iget-object v0, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getParentShape()Lorg/apache/poi/sl/usermodel/TextShape;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    return-object v0
.end method

.method public getFlipHorizontal()Z
    .locals 1

    .line 557
    const/4 v0, 0x0

    return v0
.end method

.method public getFlipVertical()Z
    .locals 1

    .line 559
    const/4 v0, 0x0

    return v0
.end method

.method public getParent()Lorg/apache/poi/sl/usermodel/ShapeContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/ShapeContainer<",
            "**>;"
        }
    .end annotation

    .line 543
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRotation()D
    .locals 2

    .line 549
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSheet()Lorg/apache/poi/sl/usermodel/Sheet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/Sheet<",
            "**>;"
        }
    .end annotation

    .line 561
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph$1;->this$0:Lorg/apache/poi/sl/draw/DrawTextParagraph;

    iget-object v0, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getParentShape()Lorg/apache/poi/sl/usermodel/TextShape;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextShape;->getSheet()Lorg/apache/poi/sl/usermodel/Sheet;

    move-result-object v0

    return-object v0
.end method

.method public setAnchor(Ljava/awt/geom/Rectangle2D;)V
    .locals 0
    .param p1, "anchor"    # Ljava/awt/geom/Rectangle2D;

    .line 547
    return-void
.end method

.method public setFlipHorizontal(Z)V
    .locals 0
    .param p1, "flip"    # Z

    .line 553
    return-void
.end method

.method public setFlipVertical(Z)V
    .locals 0
    .param p1, "flip"    # Z

    .line 555
    return-void
.end method

.method public setRotation(D)V
    .locals 0
    .param p1, "theta"    # D

    .line 551
    return-void
.end method
