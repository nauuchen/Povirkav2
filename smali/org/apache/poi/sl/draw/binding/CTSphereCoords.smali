.class public Lorg/apache/poi/sl/draw/binding/CTSphereCoords;
.super Ljava/lang/Object;
.source "CTSphereCoords.java"


# annotations
.annotation runtime Ljavax/xml/bind/annotation/XmlAccessorType;
    value = .enum Ljavax/xml/bind/annotation/XmlAccessType;->FIELD:Ljavax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "CT_SphereCoords"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
.end annotation


# instance fields
.field protected lat:I
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
        required = true
    .end annotation
.end field

.field protected lon:I
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
        required = true
    .end annotation
.end field

.field protected rev:I
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
        required = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLat()I
    .locals 1

    .line 61
    iget v0, p0, Lorg/apache/poi/sl/draw/binding/CTSphereCoords;->lat:I

    return v0
.end method

.method public getLon()I
    .locals 1

    .line 81
    iget v0, p0, Lorg/apache/poi/sl/draw/binding/CTSphereCoords;->lon:I

    return v0
.end method

.method public getRev()I
    .locals 1

    .line 101
    iget v0, p0, Lorg/apache/poi/sl/draw/binding/CTSphereCoords;->rev:I

    return v0
.end method

.method public isSetLat()Z
    .locals 1

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public isSetLon()Z
    .locals 1

    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public isSetRev()Z
    .locals 1

    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public setLat(I)V
    .locals 0
    .param p1, "value"    # I

    .line 69
    iput p1, p0, Lorg/apache/poi/sl/draw/binding/CTSphereCoords;->lat:I

    .line 70
    return-void
.end method

.method public setLon(I)V
    .locals 0
    .param p1, "value"    # I

    .line 89
    iput p1, p0, Lorg/apache/poi/sl/draw/binding/CTSphereCoords;->lon:I

    .line 90
    return-void
.end method

.method public setRev(I)V
    .locals 0
    .param p1, "value"    # I

    .line 109
    iput p1, p0, Lorg/apache/poi/sl/draw/binding/CTSphereCoords;->rev:I

    .line 110
    return-void
.end method
