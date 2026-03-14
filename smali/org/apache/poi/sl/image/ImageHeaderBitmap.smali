.class public Lorg/apache/poi/sl/image/ImageHeaderBitmap;
.super Ljava/lang/Object;
.source "ImageHeaderBitmap.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final size:Ljava/awt/Dimension;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lorg/apache/poi/sl/image/ImageHeaderBitmap;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/image/ImageHeaderBitmap;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    .line 41
    .local v0, "img":Ljava/awt/image/BufferedImage;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    array-length v2, p1

    sub-int/2addr v2, p2

    invoke-direct {v1, p1, p2, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-static {v1}, Ljavax/imageio/ImageIO;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 44
    goto :goto_0

    .line 42
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lorg/apache/poi/sl/image/ImageHeaderBitmap;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v3, 0x5

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Can\'t determine image dimensions"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 46
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    new-instance v1, Ljava/awt/Dimension;

    if-nez v0, :cond_0

    const/16 v2, 0xc8

    invoke-direct {v1, v2, v2}, Ljava/awt/Dimension;-><init>(II)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/Units;->pixelToPoints(I)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/Units;->pixelToPoints(I)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-direct {v1, v2, v3}, Ljava/awt/Dimension;-><init>(II)V

    :goto_1
    iput-object v1, p0, Lorg/apache/poi/sl/image/ImageHeaderBitmap;->size:Ljava/awt/Dimension;

    .line 52
    return-void
.end method


# virtual methods
.method public getSize()Ljava/awt/Dimension;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/apache/poi/sl/image/ImageHeaderBitmap;->size:Ljava/awt/Dimension;

    return-object v0
.end method
