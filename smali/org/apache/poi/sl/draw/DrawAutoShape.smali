.class public Lorg/apache/poi/sl/draw/DrawAutoShape;
.super Lorg/apache/poi/sl/draw/DrawTextShape;
.source "DrawAutoShape.java"


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/usermodel/AutoShape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/AutoShape<",
            "**>;)V"
        }
    .end annotation

    .line 25
    .local p1, "shape":Lorg/apache/poi/sl/usermodel/AutoShape;, "Lorg/apache/poi/sl/usermodel/AutoShape<**>;"
    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawTextShape;-><init>(Lorg/apache/poi/sl/usermodel/TextShape;)V

    .line 26
    return-void
.end method
