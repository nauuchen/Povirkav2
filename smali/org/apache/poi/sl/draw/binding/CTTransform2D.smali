.class public Lorg/apache/poi/sl/draw/binding/CTTransform2D;
.super Ljava/lang/Object;
.source "CTTransform2D.java"


# annotations
.annotation runtime Ljavax/xml/bind/annotation/XmlAccessorType;
    value = .enum Ljavax/xml/bind/annotation/XmlAccessType;->FIELD:Ljavax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "CT_Transform2D"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
    propOrder = {
        "off",
        "ext"
    }
.end annotation


# instance fields
.field protected ext:Lorg/apache/poi/sl/draw/binding/CTPositiveSize2D;
    .annotation runtime Ljavax/xml/bind/annotation/XmlElement;
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
    .end annotation
.end field

.field protected flipH:Ljava/lang/Boolean;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
    .end annotation
.end field

.field protected flipV:Ljava/lang/Boolean;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
    .end annotation
.end field

.field protected off:Lorg/apache/poi/sl/draw/binding/CTPoint2D;
    .annotation runtime Ljavax/xml/bind/annotation/XmlElement;
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
    .end annotation
.end field

.field protected rot:Ljava/lang/Integer;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExt()Lorg/apache/poi/sl/draw/binding/CTPositiveSize2D;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTTransform2D;->ext:Lorg/apache/poi/sl/draw/binding/CTPositiveSize2D;

    return-object v0
.end method

.method public getOff()Lorg/apache/poi/sl/draw/binding/CTPoint2D;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTTransform2D;->off:Lorg/apache/poi/sl/draw/binding/CTPoint2D;

    return-object v0
.end method

.method public getRot()I
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTTransform2D;->rot:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x0

    return v0

    .line 136
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isFlipH()Z
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTTransform2D;->flipH:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 170
    const/4 v0, 0x0

    return v0

    .line 172
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isFlipV()Z
    .locals 1

    .line 205
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTTransform2D;->flipV:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 206
    const/4 v0, 0x0

    return v0

    .line 208
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSetExt()Z
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTTransform2D;->ext:Lorg/apache/poi/sl/draw/binding/CTPositiveSize2D;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetFlipH()Z
    .locals 1

    .line 189
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTTransform2D;->flipH:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetFlipV()Z
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTTransform2D;->flipV:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetOff()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTTransform2D;->off:Lorg/apache/poi/sl/draw/binding/CTPoint2D;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetRot()Z
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTTransform2D;->rot:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setExt(Lorg/apache/poi/sl/draw/binding/CTPositiveSize2D;)V
    .locals 0
    .param p1, "value"    # Lorg/apache/poi/sl/draw/binding/CTPositiveSize2D;

    .line 117
    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTTransform2D;->ext:Lorg/apache/poi/sl/draw/binding/CTPositiveSize2D;

    .line 118
    return-void
.end method

.method public setFlipH(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 185
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTTransform2D;->flipH:Ljava/lang/Boolean;

    .line 186
    return-void
.end method

.method public setFlipV(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 221
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTTransform2D;->flipV:Ljava/lang/Boolean;

    .line 222
    return-void
.end method

.method public setOff(Lorg/apache/poi/sl/draw/binding/CTPoint2D;)V
    .locals 0
    .param p1, "value"    # Lorg/apache/poi/sl/draw/binding/CTPoint2D;

    .line 89
    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTTransform2D;->off:Lorg/apache/poi/sl/draw/binding/CTPoint2D;

    .line 90
    return-void
.end method

.method public setRot(I)V
    .locals 1
    .param p1, "value"    # I

    .line 149
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTTransform2D;->rot:Ljava/lang/Integer;

    .line 150
    return-void
.end method

.method public unsetFlipH()V
    .locals 1

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTTransform2D;->flipH:Ljava/lang/Boolean;

    .line 194
    return-void
.end method

.method public unsetFlipV()V
    .locals 1

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTTransform2D;->flipV:Ljava/lang/Boolean;

    .line 230
    return-void
.end method

.method public unsetRot()V
    .locals 1

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTTransform2D;->rot:Ljava/lang/Integer;

    .line 158
    return-void
.end method
