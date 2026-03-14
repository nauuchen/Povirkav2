.class final Lorg/apache/poi/sl/draw/DrawSimpleShape$1;
.super Ljava/lang/Object;
.source "DrawSimpleShape.java"

# interfaces
.implements Ljavax/xml/stream/EventFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/sl/draw/DrawSimpleShape;->getCustomGeometry(Ljava/lang/String;Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/geom/CustomGeometry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljavax/xml/stream/events/XMLEvent;)Z
    .locals 1
    .param p1, "event"    # Ljavax/xml/stream/events/XMLEvent;

    .line 362
    invoke-interface {p1}, Ljavax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v0

    return v0
.end method
