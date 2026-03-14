.class public Lorg/apache/poi/sl/image/ImageHeaderWMF;
.super Ljava/lang/Object;
.source "ImageHeaderWMF.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field public static final APMHEADER_KEY:I = -0x65393229

.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final bottom:I

.field private checksum:I

.field private final handle:I

.field private final inch:I

.field private final left:I

.field private final reserved:I

.field private final right:I

.field private final top:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lorg/apache/poi/sl/image/ImageHeaderWMF;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Ljava/awt/Rectangle;)V
    .locals 3
    .param p1, "dim"    # Ljava/awt/Rectangle;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->handle:I

    .line 70
    iget v1, p1, Ljava/awt/Rectangle;->x:I

    iput v1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->left:I

    .line 71
    iget v1, p1, Ljava/awt/Rectangle;->y:I

    iput v1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->top:I

    .line 72
    iget v1, p1, Ljava/awt/Rectangle;->x:I

    iget v2, p1, Ljava/awt/Rectangle;->width:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->right:I

    .line 73
    iget v1, p1, Ljava/awt/Rectangle;->y:I

    iget v2, p1, Ljava/awt/Rectangle;->height:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->bottom:I

    .line 74
    const/16 v1, 0x48

    iput v1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->inch:I

    .line 75
    iput v0, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->reserved:I

    .line 76
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "off"    # I

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    move v0, p2

    .line 80
    .local v0, "offset":I
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v1

    .local v1, "key":I
    add-int/lit8 v0, v0, 0x4

    .line 81
    const/4 v2, 0x1

    const/4 v3, 0x5

    const/4 v4, 0x0

    const v5, -0x65393229

    if-eq v1, v5, :cond_0

    .line 82
    sget-object v5, Lorg/apache/poi/sl/image/ImageHeaderWMF;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "WMF file doesn\'t contain a placeable header - ignore parsing"

    aput-object v6, v2, v4

    invoke-virtual {v5, v3, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 83
    iput v4, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->handle:I

    .line 84
    iput v4, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->left:I

    .line 85
    iput v4, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->top:I

    .line 86
    const/16 v2, 0xc8

    iput v2, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->right:I

    .line 87
    iput v2, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->bottom:I

    .line 88
    const/16 v2, 0x48

    iput v2, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->inch:I

    .line 89
    iput v4, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->reserved:I

    .line 90
    return-void

    .line 93
    :cond_0
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v5

    iput v5, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->handle:I

    add-int/lit8 v0, v0, 0x2

    .line 94
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v5

    iput v5, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->left:I

    add-int/lit8 v0, v0, 0x2

    .line 95
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v5

    iput v5, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->top:I

    add-int/lit8 v0, v0, 0x2

    .line 96
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v5

    iput v5, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->right:I

    add-int/lit8 v0, v0, 0x2

    .line 97
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v5

    iput v5, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->bottom:I

    add-int/lit8 v0, v0, 0x2

    .line 99
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v5

    iput v5, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->inch:I

    add-int/lit8 v0, v0, 0x2

    .line 100
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v5

    iput v5, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->reserved:I

    add-int/lit8 v0, v0, 0x4

    .line 102
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v5

    iput v5, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->checksum:I

    add-int/lit8 v0, v0, 0x2

    .line 103
    invoke-virtual {p0}, Lorg/apache/poi/sl/image/ImageHeaderWMF;->getChecksum()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 104
    sget-object v5, Lorg/apache/poi/sl/image/ImageHeaderWMF;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "WMF checksum does not match the header data"

    aput-object v6, v2, v4

    invoke-virtual {v5, v3, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 106
    :cond_1
    return-void
.end method


# virtual methods
.method public getBounds()Ljava/awt/Rectangle;
    .locals 5

    .line 149
    new-instance v0, Ljava/awt/Rectangle;

    iget v1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->left:I

    iget v2, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->top:I

    iget v3, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->right:I

    sub-int/2addr v3, v1

    iget v4, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->bottom:I

    sub-int/2addr v4, v2

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/awt/Rectangle;-><init>(IIII)V

    return-object v0
.end method

.method public getChecksum()I
    .locals 2

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "cs":I
    const v1, 0xcdd7

    xor-int/2addr v0, v1

    .line 115
    xor-int/lit16 v0, v0, -0x653a

    .line 116
    iget v1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->left:I

    xor-int/2addr v0, v1

    .line 117
    iget v1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->top:I

    xor-int/2addr v0, v1

    .line 118
    iget v1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->right:I

    xor-int/2addr v0, v1

    .line 119
    iget v1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->bottom:I

    xor-int/2addr v0, v1

    .line 120
    iget v1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->inch:I

    xor-int/2addr v0, v1

    .line 121
    return v0
.end method

.method public getLength()I
    .locals 1

    .line 153
    const/16 v0, 0x16

    return v0
.end method

.method public getSize()Ljava/awt/Dimension;
    .locals 6

    .line 144
    iget v0, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->inch:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4052000000000000L    # 72.0

    div-double/2addr v2, v0

    .line 145
    .local v2, "coeff":D
    new-instance v0, Ljava/awt/Dimension;

    iget v1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->right:I

    iget v4, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->left:I

    sub-int/2addr v1, v4

    int-to-double v4, v1

    mul-double v4, v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v1, v4

    iget v4, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->bottom:I

    iget v5, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->top:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    mul-double v4, v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v5, v4

    invoke-direct {v0, v1, v5}, Ljava/awt/Dimension;-><init>(II)V

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    const/16 v0, 0x16

    new-array v0, v0, [B

    .line 126
    .local v0, "header":[B
    const/4 v1, 0x0

    .line 127
    .local v1, "pos":I
    const v2, -0x65393229

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v1, v1, 0x4

    .line 128
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    add-int/lit8 v1, v1, 0x2

    .line 129
    iget v3, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->left:I

    invoke-static {v0, v1, v3}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    add-int/lit8 v1, v1, 0x2

    .line 130
    iget v3, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->top:I

    invoke-static {v0, v1, v3}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    add-int/lit8 v1, v1, 0x2

    .line 131
    iget v3, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->right:I

    invoke-static {v0, v1, v3}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    add-int/lit8 v1, v1, 0x2

    .line 132
    iget v3, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->bottom:I

    invoke-static {v0, v1, v3}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    add-int/lit8 v1, v1, 0x2

    .line 133
    iget v3, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->inch:I

    invoke-static {v0, v1, v3}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    add-int/lit8 v1, v1, 0x2

    .line 134
    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v1, v1, 0x4

    .line 136
    invoke-virtual {p0}, Lorg/apache/poi/sl/image/ImageHeaderWMF;->getChecksum()I

    move-result v2

    iput v2, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->checksum:I

    .line 137
    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    .line 139
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 140
    return-void
.end method
