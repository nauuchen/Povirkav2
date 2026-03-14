.class public Lorg/apache/poi/sl/image/ImageHeaderEMF;
.super Ljava/lang/Object;
.source "ImageHeaderEMF.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final EMF_SIGNATURE:Ljava/lang/String; = " EMF"

.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final deviceBounds:Ljava/awt/Rectangle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lorg/apache/poi/sl/image/ImageHeaderEMF;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/image/ImageHeaderEMF;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 13
    .param p1, "data"    # [B
    .param p2, "off"    # I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    move v0, p2

    .line 41
    .local v0, "offset":I
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v1

    long-to-int v2, v1

    .local v2, "type":I
    add-int/lit8 v0, v0, 0x4

    .line 42
    const/4 v1, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    .line 43
    sget-object v5, Lorg/apache/poi/sl/image/ImageHeaderEMF;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v6, "Invalid EMF picture - invalid type"

    aput-object v6, v3, v4

    invoke-virtual {v5, v1, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 44
    new-instance v1, Ljava/awt/Rectangle;

    const/16 v3, 0xc8

    invoke-direct {v1, v4, v4, v3, v3}, Ljava/awt/Rectangle;-><init>(IIII)V

    iput-object v1, p0, Lorg/apache/poi/sl/image/ImageHeaderEMF;->deviceBounds:Ljava/awt/Rectangle;

    .line 45
    return-void

    .line 48
    :cond_0
    add-int/lit8 v0, v0, 0x4

    .line 49
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v5

    .local v5, "left":I
    add-int/lit8 v0, v0, 0x4

    .line 50
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v6

    .local v6, "top":I
    add-int/lit8 v0, v0, 0x4

    .line 51
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v7

    .local v7, "right":I
    add-int/lit8 v0, v0, 0x4

    .line 52
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v8

    .local v8, "bottom":I
    add-int/lit8 v0, v0, 0x4

    .line 53
    new-instance v9, Ljava/awt/Rectangle;

    sub-int v10, v7, v5

    sub-int v11, v8, v6

    invoke-direct {v9, v5, v6, v10, v11}, Ljava/awt/Rectangle;-><init>(IIII)V

    iput-object v9, p0, Lorg/apache/poi/sl/image/ImageHeaderEMF;->deviceBounds:Ljava/awt/Rectangle;

    .line 55
    add-int/lit8 v0, v0, 0x10

    .line 56
    new-instance v9, Ljava/lang/String;

    const-string v10, " EMF"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    sget-object v12, Lorg/apache/poi/util/LocaleUtil;->CHARSET_1252:Ljava/nio/charset/Charset;

    invoke-direct {v9, p1, v0, v11, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 57
    .local v9, "signature":Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 58
    sget-object v10, Lorg/apache/poi/sl/image/ImageHeaderEMF;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v11, "Invalid EMF picture - invalid signature"

    aput-object v11, v3, v4

    invoke-virtual {v10, v1, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 60
    :cond_1
    return-void
.end method


# virtual methods
.method public getBounds()Ljava/awt/Rectangle;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/apache/poi/sl/image/ImageHeaderEMF;->deviceBounds:Ljava/awt/Rectangle;

    return-object v0
.end method

.method public getSize()Ljava/awt/Dimension;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/poi/sl/image/ImageHeaderEMF;->deviceBounds:Ljava/awt/Rectangle;

    invoke-virtual {v0}, Ljava/awt/Rectangle;->getSize()Ljava/awt/Dimension;

    move-result-object v0

    return-object v0
.end method
