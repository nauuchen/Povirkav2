.class public Lorg/apache/poi/hpsf/MutableSection;
.super Lorg/apache/poi/hpsf/Section;
.source "MutableSection.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Removal;
    version = "3.18"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/apache/poi/hpsf/Section;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hpsf/Section;)V
    .locals 0
    .param p1, "s"    # Lorg/apache/poi/hpsf/Section;

    .line 37
    invoke-direct {p0, p1}, Lorg/apache/poi/hpsf/Section;-><init>(Lorg/apache/poi/hpsf/Section;)V

    .line 38
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hpsf/Section;-><init>([BI)V

    .line 42
    return-void
.end method
