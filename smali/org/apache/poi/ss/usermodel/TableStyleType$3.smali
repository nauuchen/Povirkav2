.class final enum Lorg/apache/poi/ss/usermodel/TableStyleType$3;
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

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/usermodel/TableStyleType;-><init>(Ljava/lang/String;ILorg/apache/poi/ss/usermodel/TableStyleType$1;)V

    return-void
.end method


# virtual methods
.method getRange(Lorg/apache/poi/ss/usermodel/Table;Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/util/CellRangeAddressBase;
    .locals 13
    .param p1, "table"    # Lorg/apache/poi/ss/usermodel/Table;
    .param p2, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 78
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Table;->getStyle()Lorg/apache/poi/ss/usermodel/TableStyleInfo;

    move-result-object v0

    .line 79
    .local v0, "info":Lorg/apache/poi/ss/usermodel/TableStyleInfo;
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/TableStyleInfo;->isShowColumnStripes()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 81
    :cond_0
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/TableStyleInfo;->getStyle()Lorg/apache/poi/ss/usermodel/TableStyle;

    move-result-object v1

    sget-object v3, Lorg/apache/poi/ss/usermodel/TableStyleType$3;->firstColumnStripe:Lorg/apache/poi/ss/usermodel/TableStyleType;

    invoke-interface {v1, v3}, Lorg/apache/poi/ss/usermodel/TableStyle;->getStyle(Lorg/apache/poi/ss/usermodel/TableStyleType;)Lorg/apache/poi/ss/usermodel/DifferentialStyleProvider;

    move-result-object v1

    .line 82
    .local v1, "c1Style":Lorg/apache/poi/ss/usermodel/DifferentialStyleProvider;
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/TableStyleInfo;->getStyle()Lorg/apache/poi/ss/usermodel/TableStyle;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/ss/usermodel/TableStyleType$3;->secondColumnStripe:Lorg/apache/poi/ss/usermodel/TableStyleType;

    invoke-interface {v3, v4}, Lorg/apache/poi/ss/usermodel/TableStyle;->getStyle(Lorg/apache/poi/ss/usermodel/TableStyleType;)Lorg/apache/poi/ss/usermodel/DifferentialStyleProvider;

    move-result-object v3

    .line 83
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

    .line 84
    .local v5, "c1Stripe":I
    :goto_0
    if-nez v3, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/DifferentialStyleProvider;->getStripeSize()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 86
    .local v6, "c2Stripe":I
    :goto_1
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Table;->getStartColIndex()I

    move-result v7

    .line 87
    .local v7, "firstStart":I
    add-int v8, v7, v5

    .line 88
    .local v8, "secondStart":I
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result v9

    .line 94
    .local v9, "c":I
    :goto_2
    if-le v7, v9, :cond_3

    .line 99
    return-object v2

    .line 95
    :cond_3
    if-lt v9, v8, :cond_4

    add-int v10, v8, v6

    sub-int/2addr v10, v4

    if-gt v9, v10, :cond_4

    new-instance v2, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Table;->getStartRowIndex()I

    move-result v10

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Table;->getEndRowIndex()I

    move-result v11

    add-int v12, v8, v6

    sub-int/2addr v12, v4

    invoke-direct {v2, v10, v11, v8, v12}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    return-object v2

    .line 96
    :cond_4
    add-int v7, v8, v6

    .line 97
    add-int v8, v7, v5

    goto :goto_2
.end method
