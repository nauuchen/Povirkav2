.class public Lorg/apache/poi/sl/draw/binding/CTConnection;
.super Ljava/lang/Object;
.source "CTConnection.java"


# annotations
.annotation runtime Ljavax/xml/bind/annotation/XmlAccessorType;
    value = .enum Ljavax/xml/bind/annotation/XmlAccessType;->FIELD:Ljavax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "CT_Connection"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
.end annotation


# instance fields
.field protected id:J
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
        required = true
    .end annotation
.end field

.field protected idx:J
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
        required = true
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlSchemaType;
        name = "unsignedInt"
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
.method public getId()J
    .locals 2

    .line 60
    iget-wide v0, p0, Lorg/apache/poi/sl/draw/binding/CTConnection;->id:J

    return-wide v0
.end method

.method public getIdx()J
    .locals 2

    .line 80
    iget-wide v0, p0, Lorg/apache/poi/sl/draw/binding/CTConnection;->idx:J

    return-wide v0
.end method

.method public isSetId()Z
    .locals 1

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public isSetIdx()Z
    .locals 1

    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public setId(J)V
    .locals 0
    .param p1, "value"    # J

    .line 68
    iput-wide p1, p0, Lorg/apache/poi/sl/draw/binding/CTConnection;->id:J

    .line 69
    return-void
.end method

.method public setIdx(J)V
    .locals 0
    .param p1, "value"    # J

    .line 88
    iput-wide p1, p0, Lorg/apache/poi/sl/draw/binding/CTConnection;->idx:J

    .line 89
    return-void
.end method
