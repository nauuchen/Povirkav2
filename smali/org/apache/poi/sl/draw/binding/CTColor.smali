.class public Lorg/apache/poi/sl/draw/binding/CTColor;
.super Ljava/lang/Object;
.source "CTColor.java"


# annotations
.annotation runtime Ljavax/xml/bind/annotation/XmlAccessorType;
    value = .enum Ljavax/xml/bind/annotation/XmlAccessType;->FIELD:Ljavax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "CT_Color"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
    propOrder = {
        "scrgbClr",
        "srgbClr",
        "hslClr",
        "sysClr",
        "schemeClr",
        "prstClr"
    }
.end annotation


# instance fields
.field protected hslClr:Lorg/apache/poi/sl/draw/binding/CTHslColor;
    .annotation runtime Ljavax/xml/bind/annotation/XmlElement;
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
    .end annotation
.end field

.field protected prstClr:Lorg/apache/poi/sl/draw/binding/CTPresetColor;
    .annotation runtime Ljavax/xml/bind/annotation/XmlElement;
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
    .end annotation
.end field

.field protected schemeClr:Lorg/apache/poi/sl/draw/binding/CTSchemeColor;
    .annotation runtime Ljavax/xml/bind/annotation/XmlElement;
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
    .end annotation
.end field

.field protected scrgbClr:Lorg/apache/poi/sl/draw/binding/CTScRgbColor;
    .annotation runtime Ljavax/xml/bind/annotation/XmlElement;
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
    .end annotation
.end field

.field protected srgbClr:Lorg/apache/poi/sl/draw/binding/CTSRgbColor;
    .annotation runtime Ljavax/xml/bind/annotation/XmlElement;
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
    .end annotation
.end field

.field protected sysClr:Lorg/apache/poi/sl/draw/binding/CTSystemColor;
    .annotation runtime Ljavax/xml/bind/annotation/XmlElement;
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHslClr()Lorg/apache/poi/sl/draw/binding/CTHslColor;
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTColor;->hslClr:Lorg/apache/poi/sl/draw/binding/CTHslColor;

    return-object v0
.end method

.method public getPrstClr()Lorg/apache/poi/sl/draw/binding/CTPresetColor;
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTColor;->prstClr:Lorg/apache/poi/sl/draw/binding/CTPresetColor;

    return-object v0
.end method

.method public getSchemeClr()Lorg/apache/poi/sl/draw/binding/CTSchemeColor;
    .locals 1

    .line 190
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTColor;->schemeClr:Lorg/apache/poi/sl/draw/binding/CTSchemeColor;

    return-object v0
.end method

.method public getScrgbClr()Lorg/apache/poi/sl/draw/binding/CTScRgbColor;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTColor;->scrgbClr:Lorg/apache/poi/sl/draw/binding/CTScRgbColor;

    return-object v0
.end method

.method public getSrgbClr()Lorg/apache/poi/sl/draw/binding/CTSRgbColor;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTColor;->srgbClr:Lorg/apache/poi/sl/draw/binding/CTSRgbColor;

    return-object v0
.end method

.method public getSysClr()Lorg/apache/poi/sl/draw/binding/CTSystemColor;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTColor;->sysClr:Lorg/apache/poi/sl/draw/binding/CTSystemColor;

    return-object v0
.end method

.method public isSetHslClr()Z
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTColor;->hslClr:Lorg/apache/poi/sl/draw/binding/CTHslColor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetPrstClr()Z
    .locals 1

    .line 234
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTColor;->prstClr:Lorg/apache/poi/sl/draw/binding/CTPresetColor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetSchemeClr()Z
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTColor;->schemeClr:Lorg/apache/poi/sl/draw/binding/CTSchemeColor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetScrgbClr()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTColor;->scrgbClr:Lorg/apache/poi/sl/draw/binding/CTScRgbColor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetSrgbClr()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTColor;->srgbClr:Lorg/apache/poi/sl/draw/binding/CTSRgbColor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetSysClr()Z
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTColor;->sysClr:Lorg/apache/poi/sl/draw/binding/CTSystemColor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setHslClr(Lorg/apache/poi/sl/draw/binding/CTHslColor;)V
    .locals 0
    .param p1, "value"    # Lorg/apache/poi/sl/draw/binding/CTHslColor;

    .line 146
    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTColor;->hslClr:Lorg/apache/poi/sl/draw/binding/CTHslColor;

    .line 147
    return-void
.end method

.method public setPrstClr(Lorg/apache/poi/sl/draw/binding/CTPresetColor;)V
    .locals 0
    .param p1, "value"    # Lorg/apache/poi/sl/draw/binding/CTPresetColor;

    .line 230
    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTColor;->prstClr:Lorg/apache/poi/sl/draw/binding/CTPresetColor;

    .line 231
    return-void
.end method

.method public setSchemeClr(Lorg/apache/poi/sl/draw/binding/CTSchemeColor;)V
    .locals 0
    .param p1, "value"    # Lorg/apache/poi/sl/draw/binding/CTSchemeColor;

    .line 202
    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTColor;->schemeClr:Lorg/apache/poi/sl/draw/binding/CTSchemeColor;

    .line 203
    return-void
.end method

.method public setScrgbClr(Lorg/apache/poi/sl/draw/binding/CTScRgbColor;)V
    .locals 0
    .param p1, "value"    # Lorg/apache/poi/sl/draw/binding/CTScRgbColor;

    .line 90
    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTColor;->scrgbClr:Lorg/apache/poi/sl/draw/binding/CTScRgbColor;

    .line 91
    return-void
.end method

.method public setSrgbClr(Lorg/apache/poi/sl/draw/binding/CTSRgbColor;)V
    .locals 0
    .param p1, "value"    # Lorg/apache/poi/sl/draw/binding/CTSRgbColor;

    .line 118
    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTColor;->srgbClr:Lorg/apache/poi/sl/draw/binding/CTSRgbColor;

    .line 119
    return-void
.end method

.method public setSysClr(Lorg/apache/poi/sl/draw/binding/CTSystemColor;)V
    .locals 0
    .param p1, "value"    # Lorg/apache/poi/sl/draw/binding/CTSystemColor;

    .line 174
    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTColor;->sysClr:Lorg/apache/poi/sl/draw/binding/CTSystemColor;

    .line 175
    return-void
.end method
