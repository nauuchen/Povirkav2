.class public Lorg/apache/poi/sl/draw/binding/CTPath2DArcTo;
.super Ljava/lang/Object;
.source "CTPath2DArcTo.java"


# annotations
.annotation runtime Ljavax/xml/bind/annotation/XmlAccessorType;
    value = .enum Ljavax/xml/bind/annotation/XmlAccessType;->FIELD:Ljavax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "CT_Path2DArcTo"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
.end annotation


# instance fields
.field protected hr:Ljava/lang/String;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
        name = "hR"
        required = true
    .end annotation
.end field

.field protected stAng:Ljava/lang/String;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
        required = true
    .end annotation
.end field

.field protected swAng:Ljava/lang/String;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
        required = true
    .end annotation
.end field

.field protected wr:Ljava/lang/String;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
        name = "wR"
        required = true
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
.method public getHR()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPath2DArcTo;->hr:Ljava/lang/String;

    return-object v0
.end method

.method public getStAng()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPath2DArcTo;->stAng:Ljava/lang/String;

    return-object v0
.end method

.method public getSwAng()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPath2DArcTo;->swAng:Ljava/lang/String;

    return-object v0
.end method

.method public getWR()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPath2DArcTo;->wr:Ljava/lang/String;

    return-object v0
.end method

.method public isSetHR()Z
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPath2DArcTo;->hr:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetStAng()Z
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPath2DArcTo;->stAng:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetSwAng()Z
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPath2DArcTo;->swAng:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetWR()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPath2DArcTo;->wr:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setHR(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 108
    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTPath2DArcTo;->hr:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setStAng(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 136
    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTPath2DArcTo;->stAng:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setSwAng(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 164
    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTPath2DArcTo;->swAng:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setWR(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTPath2DArcTo;->wr:Ljava/lang/String;

    .line 81
    return-void
.end method
