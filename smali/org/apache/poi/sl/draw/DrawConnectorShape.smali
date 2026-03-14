.class public Lorg/apache/poi/sl/draw/DrawConnectorShape;
.super Lorg/apache/poi/sl/draw/DrawSimpleShape;
.source "DrawConnectorShape.java"


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/usermodel/ConnectorShape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/ConnectorShape<",
            "**>;)V"
        }
    .end annotation

    .line 24
    .local p1, "shape":Lorg/apache/poi/sl/usermodel/ConnectorShape;, "Lorg/apache/poi/sl/usermodel/ConnectorShape<**>;"
    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawSimpleShape;-><init>(Lorg/apache/poi/sl/usermodel/SimpleShape;)V

    .line 25
    return-void
.end method
