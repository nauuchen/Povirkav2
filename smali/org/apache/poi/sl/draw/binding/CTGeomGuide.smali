.class public Lorg/apache/poi/sl/draw/binding/CTGeomGuide;
.super Ljava/lang/Object;
.source "CTGeomGuide.java"


# annotations
.annotation runtime Ljavax/xml/bind/annotation/XmlAccessorType;
    value = .enum Ljavax/xml/bind/annotation/XmlAccessType;->FIELD:Ljavax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "CT_GeomGuide"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
.end annotation


# instance fields
.field protected fmla:Ljava/lang/String;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
        required = true
    .end annotation
.end field

.field protected name:Ljava/lang/String;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
        required = true
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
        value = Ljavax/xml/bind/annotation/adapters/CollapsedStringAdapter;
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
.method public getFmla()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGeomGuide;->fmla:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGeomGuide;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isSetFmla()Z
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGeomGuide;->fmla:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetName()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGeomGuide;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setFmla(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 105
    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTGeomGuide;->fmla:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTGeomGuide;->name:Ljava/lang/String;

    .line 78
    return-void
.end method
