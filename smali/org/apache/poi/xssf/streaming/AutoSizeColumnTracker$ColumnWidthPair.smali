.class Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;
.super Ljava/lang/Object;
.source "AutoSizeColumnTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColumnWidthPair"
.end annotation


# instance fields
.field private withSkipMergedCells:D

.field private withUseMergedCells:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 79
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-direct {p0, v0, v1, v0, v1}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;-><init>(DD)V

    .line 80
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0
    .param p1, "columnWidthSkipMergedCells"    # D
    .param p3, "columnWidthUseMergedCells"    # D

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-wide p1, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;->withSkipMergedCells:D

    .line 84
    iput-wide p3, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;->withUseMergedCells:D

    .line 85
    return-void
.end method


# virtual methods
.method public getMaxColumnWidth(Z)D
    .locals 2
    .param p1, "useMergedCells"    # Z

    .line 94
    if-eqz p1, :cond_0

    iget-wide v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;->withUseMergedCells:D

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;->withSkipMergedCells:D

    :goto_0
    return-wide v0
.end method

.method public setMaxColumnWidths(DD)V
    .locals 2
    .param p1, "unmergedWidth"    # D
    .param p3, "mergedWidth"    # D

    .line 104
    iget-wide v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;->withUseMergedCells:D

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;->withUseMergedCells:D

    .line 105
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;->withSkipMergedCells:D

    .line 106
    return-void
.end method
