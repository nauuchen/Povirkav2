.class Lorg/apache/poi/xssf/streaming/SXSSFCell$HyperlinkProperty;
.super Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;
.source "SXSSFCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/streaming/SXSSFCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HyperlinkProperty"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .line 1093
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;-><init>(Ljava/lang/Object;)V

    .line 1094
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 1098
    const/4 v0, 0x2

    return v0
.end method
