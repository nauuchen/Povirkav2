.class public Lorg/apache/poi/sl/draw/binding/CTPoint3D;
.super Ljava/lang/Object;
.source "CTPoint3D.java"


# annotations
.annotation runtime Ljavax/xml/bind/annotation/XmlAccessorType;
    value = .enum Ljavax/xml/bind/annotation/XmlAccessType;->FIELD:Ljavax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "CT_Point3D"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
.end annotation


# instance fields
.field protected x:J
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
        required = true
    .end annotation
.end field

.field protected y:J
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
        required = true
    .end annotation
.end field

.field protected z:J
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
.method public getX()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lorg/apache/poi/sl/draw/binding/CTPoint3D;->x:J

    return-wide v0
.end method

.method public getY()J
    .locals 2

    .line 81
    iget-wide v0, p0, Lorg/apache/poi/sl/draw/binding/CTPoint3D;->y:J

    return-wide v0
.end method

.method public getZ()J
    .locals 2

    .line 101
    iget-wide v0, p0, Lorg/apache/poi/sl/draw/binding/CTPoint3D;->z:J

    return-wide v0
.end method

.method public isSetX()Z
    .locals 1

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public isSetY()Z
    .locals 1

    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public isSetZ()Z
    .locals 1

    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public setX(J)V
    .locals 0
    .param p1, "value"    # J

    .line 69
    iput-wide p1, p0, Lorg/apache/poi/sl/draw/binding/CTPoint3D;->x:J

    .line 70
    return-void
.end method

.method public setY(J)V
    .locals 0
    .param p1, "value"    # J

    .line 89
    iput-wide p1, p0, Lorg/apache/poi/sl/draw/binding/CTPoint3D;->y:J

    .line 90
    return-void
.end method

.method public setZ(J)V
    .locals 0
    .param p1, "value"    # J

    .line 109
    iput-wide p1, p0, Lorg/apache/poi/sl/draw/binding/CTPoint3D;->z:J

    .line 110
    return-void
.end method
