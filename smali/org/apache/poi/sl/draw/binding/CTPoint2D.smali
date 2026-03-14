.class public Lorg/apache/poi/sl/draw/binding/CTPoint2D;
.super Ljava/lang/Object;
.source "CTPoint2D.java"


# annotations
.annotation runtime Ljavax/xml/bind/annotation/XmlAccessorType;
    value = .enum Ljavax/xml/bind/annotation/XmlAccessType;->FIELD:Ljavax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "CT_Point2D"
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getX()J
    .locals 2

    .line 58
    iget-wide v0, p0, Lorg/apache/poi/sl/draw/binding/CTPoint2D;->x:J

    return-wide v0
.end method

.method public getY()J
    .locals 2

    .line 78
    iget-wide v0, p0, Lorg/apache/poi/sl/draw/binding/CTPoint2D;->y:J

    return-wide v0
.end method

.method public isSetX()Z
    .locals 1

    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public isSetY()Z
    .locals 1

    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public setX(J)V
    .locals 0
    .param p1, "value"    # J

    .line 66
    iput-wide p1, p0, Lorg/apache/poi/sl/draw/binding/CTPoint2D;->x:J

    .line 67
    return-void
.end method

.method public setY(J)V
    .locals 0
    .param p1, "value"    # J

    .line 86
    iput-wide p1, p0, Lorg/apache/poi/sl/draw/binding/CTPoint2D;->y:J

    .line 87
    return-void
.end method
