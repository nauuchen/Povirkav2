.class public Lorg/apache/poi/sl/draw/binding/CTPositiveSize2D;
.super Ljava/lang/Object;
.source "CTPositiveSize2D.java"


# annotations
.annotation runtime Ljavax/xml/bind/annotation/XmlAccessorType;
    value = .enum Ljavax/xml/bind/annotation/XmlAccessType;->FIELD:Ljavax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "CT_PositiveSize2D"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
.end annotation


# instance fields
.field protected cx:J
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
        required = true
    .end annotation
.end field

.field protected cy:J
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
.method public getCx()J
    .locals 2

    .line 58
    iget-wide v0, p0, Lorg/apache/poi/sl/draw/binding/CTPositiveSize2D;->cx:J

    return-wide v0
.end method

.method public getCy()J
    .locals 2

    .line 78
    iget-wide v0, p0, Lorg/apache/poi/sl/draw/binding/CTPositiveSize2D;->cy:J

    return-wide v0
.end method

.method public isSetCx()Z
    .locals 1

    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public isSetCy()Z
    .locals 1

    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public setCx(J)V
    .locals 0
    .param p1, "value"    # J

    .line 66
    iput-wide p1, p0, Lorg/apache/poi/sl/draw/binding/CTPositiveSize2D;->cx:J

    .line 67
    return-void
.end method

.method public setCy(J)V
    .locals 0
    .param p1, "value"    # J

    .line 86
    iput-wide p1, p0, Lorg/apache/poi/sl/draw/binding/CTPositiveSize2D;->cy:J

    .line 87
    return-void
.end method
