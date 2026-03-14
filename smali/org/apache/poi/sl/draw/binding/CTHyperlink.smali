.class public Lorg/apache/poi/sl/draw/binding/CTHyperlink;
.super Ljava/lang/Object;
.source "CTHyperlink.java"


# annotations
.annotation runtime Ljavax/xml/bind/annotation/XmlAccessorType;
    value = .enum Ljavax/xml/bind/annotation/XmlAccessType;->FIELD:Ljavax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "CT_Hyperlink"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
    propOrder = {
        "snd",
        "extLst"
    }
.end annotation


# instance fields
.field protected action:Ljava/lang/String;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
    .end annotation
.end field

.field protected endSnd:Ljava/lang/Boolean;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
    .end annotation
.end field

.field protected extLst:Lorg/apache/poi/sl/draw/binding/CTOfficeArtExtensionList;
    .annotation runtime Ljavax/xml/bind/annotation/XmlElement;
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
    .end annotation
.end field

.field protected highlightClick:Ljava/lang/Boolean;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
    .end annotation
.end field

.field protected history:Ljava/lang/Boolean;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
    .end annotation
.end field

.field protected id:Ljava/lang/String;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
        namespace = "http://schemas.openxmlformats.org/officeDocument/2006/relationships"
    .end annotation
.end field

.field protected invalidUrl:Ljava/lang/String;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
    .end annotation
.end field

.field protected snd:Lorg/apache/poi/sl/draw/binding/CTEmbeddedWAVAudioFile;
    .annotation runtime Ljavax/xml/bind/annotation/XmlElement;
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
    .end annotation
.end field

.field protected tgtFrame:Ljava/lang/String;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
    .end annotation
.end field

.field protected tooltip:Ljava/lang/String;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTHyperlink;->action:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 209
    const-string v0, ""

    return-object v0

    .line 211
    :cond_0
    return-object v0
.end method

.method public getExtLst()Lorg/apache/poi/sl/draw/binding/CTOfficeArtExtensionList;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTHyperlink;->extLst:Lorg/apache/poi/sl/draw/binding/CTOfficeArtExtensionList;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTHyperlink;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInvalidUrl()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTHyperlink;->invalidUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 177
    const-string v0, ""

    return-object v0

    .line 179
    :cond_0
    return-object v0
.end method

.method public getSnd()Lorg/apache/poi/sl/draw/binding/CTEmbeddedWAVAudioFile;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTHyperlink;->snd:Lorg/apache/poi/sl/draw/binding/CTEmbeddedWAVAudioFile;

    return-object v0
.end method

.method public getTgtFrame()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTHyperlink;->tgtFrame:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 241
    const-string v0, ""

    return-object v0

    .line 243
    :cond_0
    return-object v0
.end method

.method public getTooltip()Ljava/lang/String;
    .locals 1

    .line 272
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTHyperlink;->tooltip:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 273
    const-string v0, ""

    return-object v0

    .line 275
    :cond_0
    return-object v0
.end method

.method public isEndSnd()Z
    .locals 1

    .line 376
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTHyperlink;->endSnd:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 377
    const/4 v0, 0x0

    return v0

    .line 379
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isHighlightClick()Z
    .locals 1

    .line 340
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTHyperlink;->highlightClick:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 341
    const/4 v0, 0x0

    return v0

    .line 343
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isHistory()Z
    .locals 1

    .line 304
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTHyperlink;->history:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 305
    const/4 v0, 0x1

    return v0

    .line 307
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSetAction()Z
    .locals 1

    .line 228
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTHyperlink;->action:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetEndSnd()Z
    .locals 1

    .line 396
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTHyperlink;->endSnd:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetExtLst()Z
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTHyperlink;->extLst:Lorg/apache/poi/sl/draw/binding/CTOfficeArtExtensionList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetHighlightClick()Z
    .locals 1

    .line 360
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTHyperlink;->highlightClick:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetHistory()Z
    .locals 1

    .line 324
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTHyperlink;->history:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetId()Z
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTHyperlink;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetInvalidUrl()Z
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTHyperlink;->invalidUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetSnd()Z
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTHyperlink;->snd:Lorg/apache/poi/sl/draw/binding/CTEmbeddedWAVAudioFile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetTgtFrame()Z
    .locals 1

    .line 260
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTHyperlink;->tgtFrame:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetTooltip()Z
    .locals 1

    .line 292
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTHyperlink;->tooltip:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 224
    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTHyperlink;->action:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setEndSnd(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 392
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTHyperlink;->endSnd:Ljava/lang/Boolean;

    .line 393
    return-void
.end method

.method public setExtLst(Lorg/apache/poi/sl/draw/binding/CTOfficeArtExtensionList;)V
    .locals 0
    .param p1, "value"    # Lorg/apache/poi/sl/draw/binding/CTOfficeArtExtensionList;

    .line 132
    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTHyperlink;->extLst:Lorg/apache/poi/sl/draw/binding/CTOfficeArtExtensionList;

    .line 133
    return-void
.end method

.method public setHighlightClick(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 356
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTHyperlink;->highlightClick:Ljava/lang/Boolean;

    .line 357
    return-void
.end method

.method public setHistory(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 320
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTHyperlink;->history:Ljava/lang/Boolean;

    .line 321
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 160
    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTHyperlink;->id:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setInvalidUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 192
    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTHyperlink;->invalidUrl:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setSnd(Lorg/apache/poi/sl/draw/binding/CTEmbeddedWAVAudioFile;)V
    .locals 0
    .param p1, "value"    # Lorg/apache/poi/sl/draw/binding/CTEmbeddedWAVAudioFile;

    .line 104
    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTHyperlink;->snd:Lorg/apache/poi/sl/draw/binding/CTEmbeddedWAVAudioFile;

    .line 105
    return-void
.end method

.method public setTgtFrame(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 256
    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTHyperlink;->tgtFrame:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setTooltip(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 288
    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTHyperlink;->tooltip:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public unsetEndSnd()V
    .locals 1

    .line 400
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTHyperlink;->endSnd:Ljava/lang/Boolean;

    .line 401
    return-void
.end method

.method public unsetHighlightClick()V
    .locals 1

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTHyperlink;->highlightClick:Ljava/lang/Boolean;

    .line 365
    return-void
.end method

.method public unsetHistory()V
    .locals 1

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTHyperlink;->history:Ljava/lang/Boolean;

    .line 329
    return-void
.end method
