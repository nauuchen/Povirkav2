.class public Lorg/apache/poi/sl/draw/binding/CTVector3D;
.super Ljava/lang/Object;
.source "CTVector3D.java"


# annotations
.annotation runtime Ljavax/xml/bind/annotation/XmlAccessorType;
    value = .enum Ljavax/xml/bind/annotation/XmlAccessType;->FIELD:Ljavax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "CT_Vector3D"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
.end annotation


# instance fields
.field protected dx:J
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
        required = true
    .end annotation
.end field

.field protected dy:J
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
        required = true
    .end annotation
.end field

.field protected dz:J
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
.method public getDx()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lorg/apache/poi/sl/draw/binding/CTVector3D;->dx:J

    return-wide v0
.end method

.method public getDy()J
    .locals 2

    .line 81
    iget-wide v0, p0, Lorg/apache/poi/sl/draw/binding/CTVector3D;->dy:J

    return-wide v0
.end method

.method public getDz()J
    .locals 2

    .line 101
    iget-wide v0, p0, Lorg/apache/poi/sl/draw/binding/CTVector3D;->dz:J

    return-wide v0
.end method

.method public isSetDx()Z
    .locals 1

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public isSetDy()Z
    .locals 1

    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public isSetDz()Z
    .locals 1

    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public setDx(J)V
    .locals 0
    .param p1, "value"    # J

    .line 69
    iput-wide p1, p0, Lorg/apache/poi/sl/draw/binding/CTVector3D;->dx:J

    .line 70
    return-void
.end method

.method public setDy(J)V
    .locals 0
    .param p1, "value"    # J

    .line 89
    iput-wide p1, p0, Lorg/apache/poi/sl/draw/binding/CTVector3D;->dy:J

    .line 90
    return-void
.end method

.method public setDz(J)V
    .locals 0
    .param p1, "value"    # J

    .line 109
    iput-wide p1, p0, Lorg/apache/poi/sl/draw/binding/CTVector3D;->dz:J

    .line 110
    return-void
.end method
