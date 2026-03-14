.class Lorg/apache/poi/sl/draw/geom/PresetGeometries$1;
.super Ljava/lang/Object;
.source "PresetGeometries.java"

# interfaces
.implements Ljavax/xml/stream/EventFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/sl/draw/geom/PresetGeometries;->init(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/sl/draw/geom/PresetGeometries;


# direct methods
.method constructor <init>(Lorg/apache/poi/sl/draw/geom/PresetGeometries;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/PresetGeometries$1;->this$0:Lorg/apache/poi/sl/draw/geom/PresetGeometries;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljavax/xml/stream/events/XMLEvent;)Z
    .locals 1
    .param p1, "event"    # Ljavax/xml/stream/events/XMLEvent;

    .line 59
    invoke-interface {p1}, Ljavax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v0

    return v0
.end method
