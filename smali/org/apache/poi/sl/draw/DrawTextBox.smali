.class public Lorg/apache/poi/sl/draw/DrawTextBox;
.super Lorg/apache/poi/sl/draw/DrawAutoShape;
.source "DrawTextBox.java"


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/usermodel/TextBox;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/TextBox<",
            "**>;)V"
        }
    .end annotation

    .line 24
    .local p1, "shape":Lorg/apache/poi/sl/usermodel/TextBox;, "Lorg/apache/poi/sl/usermodel/TextBox<**>;"
    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawAutoShape;-><init>(Lorg/apache/poi/sl/usermodel/AutoShape;)V

    .line 25
    return-void
.end method
