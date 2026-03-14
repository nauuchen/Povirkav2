.class final enum Lorg/apache/poi/ss/usermodel/TableStyleType$9;
.super Lorg/apache/poi/ss/usermodel/TableStyleType;
.source "TableStyleType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/usermodel/TableStyleType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/usermodel/TableStyleType;-><init>(Ljava/lang/String;ILorg/apache/poi/ss/usermodel/TableStyleType$1;)V

    return-void
.end method


# virtual methods
.method getRange(Lorg/apache/poi/ss/usermodel/Table;Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/util/CellRangeAddressBase;
    .locals 5
    .param p1, "table"    # Lorg/apache/poi/ss/usermodel/Table;
    .param p2, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 180
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Table;->getTotalsRowCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 181
    :cond_0
    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Table;->getEndRowIndex()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Table;->getTotalsRowCount()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v2, v1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Table;->getEndRowIndex()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Table;->getStartColIndex()I

    move-result v3

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Table;->getEndColIndex()I

    move-result v4

    invoke-direct {v0, v2, v1, v3, v4}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    return-object v0
.end method
