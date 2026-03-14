.class Lorg/apache/poi/hpsf/VariantBool;
.super Ljava/lang/Object;
.source "VariantBool.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;

.field static final SIZE:I = 0x2


# instance fields
.field private _value:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lorg/apache/poi/hpsf/VariantBool;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/VariantBool;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getValue()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lorg/apache/poi/hpsf/VariantBool;->_value:Z

    return v0
.end method

.method read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    .locals 8
    .param p1, "lei"    # Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    .line 35
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readShort()S

    move-result v0

    .line 36
    .local v0, "value":S
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 44
    sget-object v3, Lorg/apache/poi/hpsf/VariantBool;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v4, 0x5

    new-array v5, v2, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VARIANT_BOOL value \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' is incorrect"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 45
    iput-boolean v2, p0, Lorg/apache/poi/hpsf/VariantBool;->_value:Z

    goto :goto_0

    .line 38
    :cond_0
    iput-boolean v1, p0, Lorg/apache/poi/hpsf/VariantBool;->_value:Z

    .line 39
    goto :goto_0

    .line 41
    :cond_1
    iput-boolean v2, p0, Lorg/apache/poi/hpsf/VariantBool;->_value:Z

    .line 42
    nop

    .line 48
    :goto_0
    return-void
.end method

.method setValue(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 55
    iput-boolean p1, p0, Lorg/apache/poi/hpsf/VariantBool;->_value:Z

    .line 56
    return-void
.end method
