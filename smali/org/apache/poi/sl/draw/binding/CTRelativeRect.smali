.class public Lorg/apache/poi/sl/draw/binding/CTRelativeRect;
.super Ljava/lang/Object;
.source "CTRelativeRect.java"


# annotations
.annotation runtime Ljavax/xml/bind/annotation/XmlAccessorType;
    value = .enum Ljavax/xml/bind/annotation/XmlAccessType;->FIELD:Ljavax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "CT_RelativeRect"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
.end annotation


# instance fields
.field protected b:Ljava/lang/Integer;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
    .end annotation
.end field

.field protected l:Ljava/lang/Integer;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
    .end annotation
.end field

.field protected r:Ljava/lang/Integer;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
    .end annotation
.end field

.field protected t:Ljava/lang/Integer;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getB()I
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTRelativeRect;->b:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 177
    const/4 v0, 0x0

    return v0

    .line 179
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getL()I
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTRelativeRect;->l:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x0

    return v0

    .line 71
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getR()I
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTRelativeRect;->r:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 141
    const/4 v0, 0x0

    return v0

    .line 143
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getT()I
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTRelativeRect;->t:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    return v0

    .line 107
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isSetB()Z
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTRelativeRect;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetL()Z
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTRelativeRect;->l:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetR()Z
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTRelativeRect;->r:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetT()Z
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTRelativeRect;->t:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setB(I)V
    .locals 1
    .param p1, "value"    # I

    .line 192
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTRelativeRect;->b:Ljava/lang/Integer;

    .line 193
    return-void
.end method

.method public setL(I)V
    .locals 1
    .param p1, "value"    # I

    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTRelativeRect;->l:Ljava/lang/Integer;

    .line 85
    return-void
.end method

.method public setR(I)V
    .locals 1
    .param p1, "value"    # I

    .line 156
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTRelativeRect;->r:Ljava/lang/Integer;

    .line 157
    return-void
.end method

.method public setT(I)V
    .locals 1
    .param p1, "value"    # I

    .line 120
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTRelativeRect;->t:Ljava/lang/Integer;

    .line 121
    return-void
.end method

.method public unsetB()V
    .locals 1

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTRelativeRect;->b:Ljava/lang/Integer;

    .line 201
    return-void
.end method

.method public unsetL()V
    .locals 1

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTRelativeRect;->l:Ljava/lang/Integer;

    .line 93
    return-void
.end method

.method public unsetR()V
    .locals 1

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTRelativeRect;->r:Ljava/lang/Integer;

    .line 165
    return-void
.end method

.method public unsetT()V
    .locals 1

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTRelativeRect;->t:Ljava/lang/Integer;

    .line 129
    return-void
.end method
