.class public Lorg/apache/poi/hpsf/MutableProperty;
.super Lorg/apache/poi/hpsf/Property;
.source "MutableProperty.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation runtime Lorg/apache/poi/util/Removal;
    version = "3.18"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/apache/poi/hpsf/Property;-><init>()V

    return-void
.end method

.method public constructor <init>(JJLjava/lang/Object;)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "type"    # J
    .param p5, "value"    # Ljava/lang/Object;

    .line 43
    invoke-direct/range {p0 .. p5}, Lorg/apache/poi/hpsf/Property;-><init>(JJLjava/lang/Object;)V

    .line 44
    return-void
.end method

.method public constructor <init>(JLorg/apache/poi/util/LittleEndianByteArrayInputStream;II)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "leis"    # Lorg/apache/poi/util/LittleEndianByteArrayInputStream;
    .param p4, "length"    # I
    .param p5, "codepage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 53
    invoke-direct/range {p0 .. p5}, Lorg/apache/poi/hpsf/Property;-><init>(JLorg/apache/poi/util/LittleEndianByteArrayInputStream;II)V

    .line 54
    return-void
.end method

.method public constructor <init>(J[BJII)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "src"    # [B
    .param p4, "offset"    # J
    .param p6, "length"    # I
    .param p7, "codepage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 48
    invoke-direct/range {p0 .. p7}, Lorg/apache/poi/hpsf/Property;-><init>(J[BJII)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hpsf/Property;)V
    .locals 0
    .param p1, "p"    # Lorg/apache/poi/hpsf/Property;

    .line 39
    invoke-direct {p0, p1}, Lorg/apache/poi/hpsf/Property;-><init>(Lorg/apache/poi/hpsf/Property;)V

    .line 40
    return-void
.end method
