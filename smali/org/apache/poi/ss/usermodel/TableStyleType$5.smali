.class final enum Lorg/apache/poi/ss/usermodel/TableStyleType$5;
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

    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/usermodel/TableStyleType;-><init>(Ljava/lang/String;ILorg/apache/poi/ss/usermodel/TableStyleType$1;)V

    return-void
.end method


# virtual methods
.method getRange(Lorg/apache/poi/ss/usermodel/Table;Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/util/CellRangeAddressBase;
    .locals 12
    .param p1, "table"    # Lorg/apache/poi/ss/usermodel/Table;
    .param p2, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 132
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Table;->getStyle()Lorg/apache/poi/ss/usermodel/TableStyleInfo;

    move-result-object v0

    .line 133
    .local v0, "info":Lorg/apache/poi/ss/usermodel/TableStyleInfo;
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/TableStyleInfo;->isShowRowStripes()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 135
    :cond_0
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/TableStyleInfo;->getStyle()Lorg/apache/poi/ss/usermodel/TableStyle;

    move-result-object v1

    sget-object v3, Lorg/apache/poi/ss/usermodel/TableStyleType$5;->firstRowStripe:Lorg/apache/poi/ss/usermodel/TableStyleType;

    invoke-interface {v1, v3}, Lorg/apache/poi/ss/usermodel/TableStyle;->getStyle(Lorg/apache/poi/ss/usermodel/TableStyleType;)Lorg/apache/poi/ss/usermodel/DifferentialStyleProvider;

    move-result-object v1

    .line 136
    .local v1, "c1Style":Lorg/apache/poi/ss/usermodel/DifferentialStyleProvider;
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/TableStyleInfo;->getStyle()Lorg/apache/poi/ss/usermodel/TableStyle;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/ss/usermodel/TableStyleType$5;->secondRowStripe:Lorg/apache/poi/ss/usermodel/TableStyleType;

    invoke-interface {v3, v4}, Lorg/apache/poi/ss/usermodel/TableStyle;->getStyle(Lorg/apache/poi/ss/usermodel/TableStyleType;)Lorg/apache/poi/ss/usermodel/DifferentialStyleProvider;

    move-result-object v3

    .line 137
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

    .line 138
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

    .line 140
    .local v6, "c2Stripe":I
    :goto_1
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Table;->getStartRowIndex()I

    move-result v7

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Table;->getHeaderRowCount()I

    move-result v8

    add-int/2addr v7, v8

    .line 141
    .local v7, "firstStart":I
    add-int v8, v7, v5

    .line 142
    .local v8, "secondStart":I
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getRowIndex()I

    move-result v9

    .line 148
    .local v9, "c":I
    :goto_2
    if-le v7, v9, :cond_3

    .line 153
    return-object v2

    .line 149
    :cond_3
    if-lt v9, v8, :cond_4

    add-int v10, v8, v6

    sub-int/2addr v10, v4

    if-gt v9, v10, :cond_4

    new-instance v2, Lorg/apache/poi/ss/util/CellRangeAddress;

    add-int v10, v8, v6

    sub-int/2addr v10, v4

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Table;->getStartColIndex()I

    move-result v4

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Table;->getEndColIndex()I

    move-result v11

    invoke-direct {v2, v8, v10, v4, v11}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    return-object v2

    .line 150
    :cond_4
    add-int v7, v8, v6

    .line 151
    add-int v8, v7, v5

    goto :goto_2
.end method
