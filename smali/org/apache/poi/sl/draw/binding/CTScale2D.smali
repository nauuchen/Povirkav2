.class public Lorg/apache/poi/sl/draw/binding/CTScale2D;
.super Ljava/lang/Object;
.source "CTScale2D.java"


# annotations
.annotation runtime Ljavax/xml/bind/annotation/XmlAccessorType;
    value = .enum Ljavax/xml/bind/annotation/XmlAccessType;->FIELD:Ljavax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "CT_Scale2D"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
    propOrder = {
        "sx",
        "sy"
    }
.end annotation


# instance fields
.field protected sx:Lorg/apache/poi/sl/draw/binding/CTRatio;
    .annotation runtime Ljavax/xml/bind/annotation/XmlElement;
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        required = true
    .end annotation
.end field

.field protected sy:Lorg/apache/poi/sl/draw/binding/CTRatio;
    .annotation runtime Ljavax/xml/bind/annotation/XmlElement;
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        required = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSx()Lorg/apache/poi/sl/draw/binding/CTRatio;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTScale2D;->sx:Lorg/apache/poi/sl/draw/binding/CTRatio;

    return-object v0
.end method

.method public getSy()Lorg/apache/poi/sl/draw/binding/CTRatio;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTScale2D;->sy:Lorg/apache/poi/sl/draw/binding/CTRatio;

    return-object v0
.end method

.method public isSetSx()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTScale2D;->sx:Lorg/apache/poi/sl/draw/binding/CTRatio;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetSy()Z
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTScale2D;->sy:Lorg/apache/poi/sl/draw/binding/CTRatio;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setSx(Lorg/apache/poi/sl/draw/binding/CTRatio;)V
    .locals 0
    .param p1, "value"    # Lorg/apache/poi/sl/draw/binding/CTRatio;

    .line 79
    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTScale2D;->sx:Lorg/apache/poi/sl/draw/binding/CTRatio;

    .line 80
    return-void
.end method

.method public setSy(Lorg/apache/poi/sl/draw/binding/CTRatio;)V
    .locals 0
    .param p1, "value"    # Lorg/apache/poi/sl/draw/binding/CTRatio;

    .line 107
    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTScale2D;->sy:Lorg/apache/poi/sl/draw/binding/CTRatio;

    .line 108
    return-void
.end method
