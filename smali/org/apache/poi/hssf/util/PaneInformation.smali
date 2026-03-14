.class public Lorg/apache/poi/hssf/util/PaneInformation;
.super Lorg/apache/poi/ss/util/PaneInformation;
.source "PaneInformation.java"


# direct methods
.method public constructor <init>(SSSSBZ)V
    .locals 0
    .param p1, "x"    # S
    .param p2, "y"    # S
    .param p3, "top"    # S
    .param p4, "left"    # S
    .param p5, "active"    # B
    .param p6, "frozen"    # Z

    .line 27
    invoke-direct/range {p0 .. p6}, Lorg/apache/poi/ss/util/PaneInformation;-><init>(SSSSBZ)V

    .line 28
    return-void
.end method
