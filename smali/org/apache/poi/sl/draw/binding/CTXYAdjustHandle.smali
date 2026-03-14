.class public Lorg/apache/poi/sl/draw/binding/CTXYAdjustHandle;
.super Ljava/lang/Object;
.source "CTXYAdjustHandle.java"


# annotations
.annotation runtime Ljavax/xml/bind/annotation/XmlAccessorType;
    value = .enum Ljavax/xml/bind/annotation/XmlAccessType;->FIELD:Ljavax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "CT_XYAdjustHandle"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
    propOrder = {
        "pos"
    }
.end annotation


# instance fields
.field protected gdRefX:Ljava/lang/String;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
        value = Ljavax/xml/bind/annotation/adapters/CollapsedStringAdapter;
    .end annotation
.end field

.field protected gdRefY:Ljava/lang/String;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
        value = Ljavax/xml/bind/annotation/adapters/CollapsedStringAdapter;
    .end annotation
.end field

.field protected maxX:Ljava/lang/String;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
    .end annotation
.end field

.field protected maxY:Ljava/lang/String;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
    .end annotation
.end field

.field protected minX:Ljava/lang/String;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
    .end annotation
.end field

.field protected minY:Ljava/lang/String;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
    .end annotation
.end field

.field protected pos:Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;
    .annotation runtime Ljavax/xml/bind/annotation/XmlElement;
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        required = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGdRefX()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTXYAdjustHandle;->gdRefX:Ljava/lang/String;

    return-object v0
.end method

.method public getGdRefY()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTXYAdjustHandle;->gdRefY:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxX()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTXYAdjustHandle;->maxX:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxY()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTXYAdjustHandle;->maxY:Ljava/lang/String;

    return-object v0
.end method

.method public getMinX()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTXYAdjustHandle;->minX:Ljava/lang/String;

    return-object v0
.end method

.method public getMinY()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTXYAdjustHandle;->minY:Ljava/lang/String;

    return-object v0
.end method

.method public getPos()Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTXYAdjustHandle;->pos:Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;

    return-object v0
.end method

.method public isSetGdRefX()Z
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTXYAdjustHandle;->gdRefX:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetGdRefY()Z
    .locals 1

    .line 214
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTXYAdjustHandle;->gdRefY:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetMaxX()Z
    .locals 1

    .line 186
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTXYAdjustHandle;->maxX:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetMaxY()Z
    .locals 1

    .line 270
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTXYAdjustHandle;->maxY:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetMinX()Z
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTXYAdjustHandle;->minX:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetMinY()Z
    .locals 1

    .line 242
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTXYAdjustHandle;->minY:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetPos()Z
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTXYAdjustHandle;->pos:Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setGdRefX(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 126
    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTXYAdjustHandle;->gdRefX:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setGdRefY(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 210
    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTXYAdjustHandle;->gdRefY:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setMaxX(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 182
    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTXYAdjustHandle;->maxX:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setMaxY(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 266
    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTXYAdjustHandle;->maxY:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public setMinX(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 154
    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTXYAdjustHandle;->minX:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setMinY(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 238
    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTXYAdjustHandle;->minY:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public setPos(Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;)V
    .locals 0
    .param p1, "value"    # Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;

    .line 98
    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTXYAdjustHandle;->pos:Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;

    .line 99
    return-void
.end method
