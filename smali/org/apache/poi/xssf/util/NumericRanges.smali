.class public Lorg/apache/poi/xssf/util/NumericRanges;
.super Ljava/lang/Object;
.source "NumericRanges.java"


# static fields
.field public static final NO_OVERLAPS:I = -0x1

.field public static final OVERLAPS_1_MINOR:I = 0x0

.field public static final OVERLAPS_1_WRAPS:I = 0x2

.field public static final OVERLAPS_2_MINOR:I = 0x1

.field public static final OVERLAPS_2_WRAPS:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOverlappingRange([J[J)[J
    .locals 6
    .param p0, "range1"    # [J
    .param p1, "range2"    # [J

    .line 29
    invoke-static {p0, p1}, Lorg/apache/poi/xssf/util/NumericRanges;->getOverlappingType([J[J)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 40
    new-array v0, v2, [J

    fill-array-data v0, :array_0

    return-object v0

    .line 35
    :cond_0
    return-object p0

    .line 37
    :cond_1
    return-object p1

    .line 33
    :cond_2
    new-array v0, v2, [J

    aget-wide v4, p0, v1

    aput-wide v4, v0, v1

    aget-wide v1, p1, v3

    aput-wide v1, v0, v3

    return-object v0

    .line 31
    :cond_3
    new-array v0, v2, [J

    aget-wide v4, p1, v1

    aput-wide v4, v0, v1

    aget-wide v1, p0, v3

    aput-wide v1, v0, v3

    return-object v0

    :array_0
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method public static getOverlappingType([J[J)I
    .locals 11
    .param p0, "range1"    # [J
    .param p1, "range2"    # [J

    .line 45
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .line 46
    .local v1, "min1":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 47
    .local v4, "max1":J
    aget-wide v6, p1, v0

    .line 48
    .local v6, "min2":J
    aget-wide v8, p1, v3

    .line 49
    .local v8, "max2":J
    cmp-long v10, v1, v6

    if-ltz v10, :cond_1

    .line 50
    cmp-long v0, v4, v8

    if-gtz v0, :cond_0

    .line 51
    const/4 v0, 0x3

    return v0

    .line 52
    :cond_0
    cmp-long v0, v1, v8

    if-gtz v0, :cond_3

    .line 53
    return v3

    .line 56
    :cond_1
    cmp-long v3, v4, v8

    if-ltz v3, :cond_2

    .line 57
    const/4 v0, 0x2

    return v0

    .line 58
    :cond_2
    cmp-long v3, v4, v6

    if-ltz v3, :cond_3

    .line 59
    return v0

    .line 62
    :cond_3
    const/4 v0, -0x1

    return v0
.end method
