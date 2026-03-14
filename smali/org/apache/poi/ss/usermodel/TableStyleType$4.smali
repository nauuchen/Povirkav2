.class final enum Lorg/apache/poi/ss/usermodel/TableStyleType$4;
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

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/usermodel/TableStyleType;-><init>(Ljava/lang/String;ILorg/apache/poi/ss/usermodel/TableStyleType$1;)V

    return-void
.end method


# virtual methods
.method getRange(Lorg/apache/poi/ss/usermodel/Table;Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/util/CellRangeAddressBase;
    .locals 12
    .param p1, "table"    # Lorg/apache/poi/ss/usermodel/Table;
    .param p2, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 105
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Table;->getStyle()Lorg/apache/poi/ss/usermodel/TableStyleInfo;

    move-result-object v0

    .line 106
    .local v0, "info":Lorg/apache/poi/ss/usermodel/TableStyleInfo;
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/TableStyleInfo;->isShowRowStripes()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 108
    :cond_0
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/TableStyleInfo;->getStyle()Lorg/apache/poi/ss/usermodel/TableStyle;

    move-result-object v1

    sget-object v3, Lorg/apache/poi/ss/usermodel/TableStyleType$4;->firstRowStripe:Lorg/apache/poi/ss/usermodel/TableStyleType;

    invoke-interface {v1, v3}, Lorg/apache/poi/ss/usermodel/TableStyle;->getStyle(Lorg/apache/poi/ss/usermodel/TableStyleType;)Lorg/apache/poi/ss/usermodel/DifferentialStyleProvider;

    move-result-object v1

    .line 109
    .local v1, "c1Style":Lorg/apache/poi/ss/usermodel/DifferentialStyleProvider;
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/TableStyleInfo;->getStyle()Lorg/apache/poi/ss/usermodel/TableStyle;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/ss/usermodel/TableStyleType$4;->secondRowStripe:Lorg/apache/poi/ss/usermodel/TableStyleType;

    invoke-interface {v3, v4}, Lorg/apache/poi/ss/usermodel/TableStyle;->getStyle(Lorg/apache/poi/ss/usermodel/TableStyleType;)Lorg/apache/poi/ss/usermodel/DifferentialStyleProvider;

    move-result-object v3

    .line 110
    .local v3, "c2Style":Lorg/apache/poi/ss/usermodel/DifferentialStyleProvider;
    const/4 v4, 0x1

    if-nez v1, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/DifferentialStyleProvider;->getStripeSize()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 111
    .local v5, "c1Stripe":I
    :goto_0
    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/DifferentialStyleProvider;->getStripeSize()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 113
    .local v4, "c2Stripe":I
    :goto_1
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Table;->getStartRowIndex()I

    move-result v6

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Table;->getHeaderRowCount()I

    move-result v7

    add-int/2addr v6, v7

    .line 114
    .local v6, "firstStart":I
    add-int v7, v6, v5

    .line 115
    .local v7, "secondStart":I
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getRowIndex()I

    move-result v8

    .line 121
    .local v8, "c":I
    :goto_2
    if-le v6, v8, :cond_3

    .line 126
    return-object v2

    .line 122
    :cond_3
    if-lt v8, v6, :cond_4

    add-int/lit8 v9, v7, -0x1

    if-gt v8, v9, :cond_4

    new-instance v2, Lorg/apache/poi/ss/util/CellRangeAddress;

    add-int/lit8 v9, v7, -0x1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Table;->getStartColIndex()I

    move-result v10

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Table;->getEndColIndex()I

    move-result v11

    invoke-direct {v2, v6, v9, v10, v11}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    return-object v2

    .line 123
    :cond_4
    add-int v6, v7, v4

    .line 124
    add-int v7, v6, v5

    goto :goto_2
.end method
