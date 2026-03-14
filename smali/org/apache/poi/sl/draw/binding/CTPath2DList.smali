.class public Lorg/apache/poi/sl/draw/binding/CTPath2DList;
.super Ljava/lang/Object;
.source "CTPath2DList.java"


# annotations
.annotation runtime Ljavax/xml/bind/annotation/XmlAccessorType;
    value = .enum Ljavax/xml/bind/annotation/XmlAccessType;->FIELD:Ljavax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "CT_Path2DList"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
    propOrder = {
        "path"
    }
.end annotation


# instance fields
.field protected path:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/draw/binding/CTPath2D;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElement;
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
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
.method public getPath()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/draw/binding/CTPath2D;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPath2DList;->path:Ljava/util/List;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPath2DList;->path:Ljava/util/List;

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPath2DList;->path:Ljava/util/List;

    return-object v0
.end method

.method public isSetPath()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPath2DList;->path:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public unsetPath()V
    .locals 1

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPath2DList;->path:Ljava/util/List;

    .line 91
    return-void
.end method
