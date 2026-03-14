.class public Lorg/apache/poi/xssf/usermodel/DefaultIndexedColorMap;
.super Ljava/lang/Object;
.source "DefaultIndexedColorMap.java"

# interfaces
.implements Lorg/apache/poi/xssf/usermodel/IndexedColorMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultRGB(I)[B
    .locals 5
    .param p0, "index"    # I

    .line 38
    invoke-static {}, Lorg/apache/poi/hssf/util/HSSFColor;->getIndexHash()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/util/HSSFColor;

    .line 39
    .local v0, "hssfColor":Lorg/apache/poi/hssf/util/HSSFColor;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 40
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/HSSFColor;->getTriplet()[S

    move-result-object v1

    .line 41
    .local v1, "rgbShort":[S
    const/4 v2, 0x3

    new-array v2, v2, [B

    const/4 v3, 0x0

    aget-short v4, v1, v3

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x1

    aget-short v4, v1, v3

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x2

    aget-short v4, v1, v3

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    return-object v2
.end method


# virtual methods
.method public getRGB(I)[B
    .locals 1
    .param p1, "index"    # I

    .line 30
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/DefaultIndexedColorMap;->getDefaultRGB(I)[B

    move-result-object v0

    return-object v0
.end method
