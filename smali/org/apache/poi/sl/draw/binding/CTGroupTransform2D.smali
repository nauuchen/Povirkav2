.class public Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;
.super Ljava/lang/Object;
.source "CTGroupTransform2D.java"


# annotations
.annotation runtime Ljavax/xml/bind/annotation/XmlAccessorType;
    value = .enum Ljavax/xml/bind/annotation/XmlAccessType;->FIELD:Ljavax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "CT_GroupTransform2D"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
    propOrder = {
        "off",
        "ext",
        "chOff",
        "chExt"
    }
.end annotation


# instance fields
.field protected chExt:Lorg/apache/poi/sl/draw/binding/CTPositiveSize2D;
    .annotation runtime Ljavax/xml/bind/annotation/XmlElement;
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
    .end annotation
.end field

.field protected chOff:Lorg/apache/poi/sl/draw/binding/CTPoint2D;
    .annotation runtime Ljavax/xml/bind/annotation/XmlElement;
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
    .end annotation
.end field

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

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChExt()Lorg/apache/poi/sl/draw/binding/CTPositiveSize2D;
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->chExt:Lorg/apache/poi/sl/draw/binding/CTPositiveSize2D;

    return-object v0
.end method

.method public getChOff()Lorg/apache/poi/sl/draw/binding/CTPoint2D;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->chOff:Lorg/apache/poi/sl/draw/binding/CTPoint2D;

    return-object v0
.end method

.method public getExt()Lorg/apache/poi/sl/draw/binding/CTPositiveSize2D;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->ext:Lorg/apache/poi/sl/draw/binding/CTPositiveSize2D;

    return-object v0
.end method

.method public getOff()Lorg/apache/poi/sl/draw/binding/CTPoint2D;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->off:Lorg/apache/poi/sl/draw/binding/CTPoint2D;

    return-object v0
.end method

.method public getRot()I
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->rot:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 198
    const/4 v0, 0x0

    return v0

    .line 200
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isFlipH()Z
    .locals 1

    .line 233
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->flipH:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 234
    const/4 v0, 0x0

    return v0

    .line 236
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isFlipV()Z
    .locals 1

    .line 269
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->flipV:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 270
    const/4 v0, 0x0

    return v0

    .line 272
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSetChExt()Z
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->chExt:Lorg/apache/poi/sl/draw/binding/CTPositiveSize2D;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetChOff()Z
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->chOff:Lorg/apache/poi/sl/draw/binding/CTPoint2D;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetExt()Z
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->ext:Lorg/apache/poi/sl/draw/binding/CTPositiveSize2D;

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

    .line 253
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->flipH:Ljava/lang/Boolean;

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

    .line 289
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->flipV:Ljava/lang/Boolean;

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

    .line 101
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->off:Lorg/apache/poi/sl/draw/binding/CTPoint2D;

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

    .line 217
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->rot:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setChExt(Lorg/apache/poi/sl/draw/binding/CTPositiveSize2D;)V
    .locals 0
    .param p1, "value"    # Lorg/apache/poi/sl/draw/binding/CTPositiveSize2D;

    .line 181
    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->chExt:Lorg/apache/poi/sl/draw/binding/CTPositiveSize2D;

    .line 182
    return-void
.end method

.method public setChOff(Lorg/apache/poi/sl/draw/binding/CTPoint2D;)V
    .locals 0
    .param p1, "value"    # Lorg/apache/poi/sl/draw/binding/CTPoint2D;

    .line 153
    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->chOff:Lorg/apache/poi/sl/draw/binding/CTPoint2D;

    .line 154
    return-void
.end method

.method public setExt(Lorg/apache/poi/sl/draw/binding/CTPositiveSize2D;)V
    .locals 0
    .param p1, "value"    # Lorg/apache/poi/sl/draw/binding/CTPositiveSize2D;

    .line 125
    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->ext:Lorg/apache/poi/sl/draw/binding/CTPositiveSize2D;

    .line 126
    return-void
.end method

.method public setFlipH(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 249
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->flipH:Ljava/lang/Boolean;

    .line 250
    return-void
.end method

.method public setFlipV(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 285
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->flipV:Ljava/lang/Boolean;

    .line 286
    return-void
.end method

.method public setOff(Lorg/apache/poi/sl/draw/binding/CTPoint2D;)V
    .locals 0
    .param p1, "value"    # Lorg/apache/poi/sl/draw/binding/CTPoint2D;

    .line 97
    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->off:Lorg/apache/poi/sl/draw/binding/CTPoint2D;

    .line 98
    return-void
.end method

.method public setRot(I)V
    .locals 1
    .param p1, "value"    # I

    .line 213
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->rot:Ljava/lang/Integer;

    .line 214
    return-void
.end method

.method public unsetFlipH()V
    .locals 1

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->flipH:Ljava/lang/Boolean;

    .line 258
    return-void
.end method

.method public unsetFlipV()V
    .locals 1

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->flipV:Ljava/lang/Boolean;

    .line 294
    return-void
.end method

.method public unsetRot()V
    .locals 1

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->rot:Ljava/lang/Integer;

    .line 222
    return-void
.end method
