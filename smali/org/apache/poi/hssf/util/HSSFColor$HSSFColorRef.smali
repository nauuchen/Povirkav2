.class Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorRef;
.super Lorg/apache/poi/hssf/util/HSSFColor;
.source "HSSFColor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/util/HSSFColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HSSFColorRef"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation runtime Lorg/apache/poi/util/Removal;
    version = "3.18"
.end annotation


# direct methods
.method constructor <init>(Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;)V
    .locals 3
    .param p1, "colorEnum"    # Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    .line 357
    invoke-virtual {p1}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->getIndex()S

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->getIndex2()S

    move-result v1

    invoke-static {p1}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->access$100(Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/hssf/util/HSSFColor;->access$000(Lorg/apache/poi/hssf/util/HSSFColor;)Ljava/awt/Color;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/poi/hssf/util/HSSFColor;-><init>(IILjava/awt/Color;)V

    .line 358
    return-void
.end method
