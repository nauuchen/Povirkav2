.class Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$TopLeftCellAddressComparator;
.super Ljava/lang/Object;
.source "XSSFBHyperlinksTable.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TopLeftCellAddressComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/poi/ss/util/CellAddress;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$1;

    .line 167
    invoke-direct {p0}, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$TopLeftCellAddressComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 167
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/util/CellAddress;

    move-object v1, p2

    check-cast v1, Lorg/apache/poi/ss/util/CellAddress;

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$TopLeftCellAddressComparator;->compare(Lorg/apache/poi/ss/util/CellAddress;Lorg/apache/poi/ss/util/CellAddress;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/poi/ss/util/CellAddress;Lorg/apache/poi/ss/util/CellAddress;)I
    .locals 4
    .param p1, "o1"    # Lorg/apache/poi/ss/util/CellAddress;
    .param p2, "o2"    # Lorg/apache/poi/ss/util/CellAddress;

    .line 172
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    .line 173
    return v2

    .line 174
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v1

    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    .line 175
    return v3

    .line 177
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 178
    return v2

    .line 179
    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 180
    return v3

    .line 182
    :cond_3
    const/4 v0, 0x0

    return v0
.end method
