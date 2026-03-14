.class Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;
.super Ljava/lang/Object;
.source "FontGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/common/usermodel/fonts/FontGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Range"
.end annotation


# instance fields
.field fontGroup:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

.field upper:I


# direct methods
.method constructor <init>(ILorg/apache/poi/common/usermodel/fonts/FontGroup;)V
    .locals 0
    .param p1, "upper"    # I
    .param p2, "fontGroup"    # Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;->upper:I

    .line 62
    iput-object p2, p0, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;->fontGroup:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    .line 63
    return-void
.end method
