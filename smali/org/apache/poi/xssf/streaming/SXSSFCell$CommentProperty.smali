.class Lorg/apache/poi/xssf/streaming/SXSSFCell$CommentProperty;
.super Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;
.source "SXSSFCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/streaming/SXSSFCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CommentProperty"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .line 1081
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;-><init>(Ljava/lang/Object;)V

    .line 1082
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 1086
    const/4 v0, 0x1

    return v0
.end method
