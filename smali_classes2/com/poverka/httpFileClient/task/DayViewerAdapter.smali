.class public Lcom/poverka/httpFileClient/task/DayViewerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DayViewerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/poverka/httpFileClient/containers/Day;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final resourceLayout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/poverka/httpFileClient/containers/Day;",
            ">;)V"
        }
    .end annotation

    .line 22
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/poverka/httpFileClient/containers/Day;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 23
    iput p2, p0, Lcom/poverka/httpFileClient/task/DayViewerAdapter;->resourceLayout:I

    .line 24
    iput-object p1, p0, Lcom/poverka/httpFileClient/task/DayViewerAdapter;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 30
    move-object v0, p0

    move-object/from16 v1, p2

    .line 32
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 34
    iget-object v2, v0, Lcom/poverka/httpFileClient/task/DayViewerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 35
    .local v2, "vi":Landroid/view/LayoutInflater;
    iget v3, v0, Lcom/poverka/httpFileClient/task/DayViewerAdapter;->resourceLayout:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 38
    .end local v2    # "vi":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/poverka/httpFileClient/task/DayViewerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/poverka/httpFileClient/containers/Day;

    .line 39
    .local v2, "day":Lcom/poverka/httpFileClient/containers/Day;
    if-eqz v2, :cond_7

    .line 40
    const v3, 0x7f090086

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 41
    .local v3, "tt1":Landroid/widget/TextView;
    const v4, 0x7f09011c

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 42
    .local v4, "tt2":Landroid/widget/TextView;
    const v5, 0x7f09006c

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 43
    .local v5, "tt3":Landroid/widget/TextView;
    const v6, 0x7f090094

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 44
    .local v6, "tt4":Landroid/widget/TextView;
    const v7, 0x7f090095

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 46
    .local v7, "tt5":Landroid/widget/TextView;
    if-eqz v3, :cond_1

    .line 47
    invoke-virtual {v2}, Lcom/poverka/httpFileClient/containers/Day;->getDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :cond_1
    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v10, "%d"

    if-eqz v4, :cond_2

    .line 51
    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v12, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/containers/Day;->getNewNumber()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v8

    invoke-static {v11, v10, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :cond_2
    if-eqz v5, :cond_3

    .line 55
    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v12, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/containers/Day;->getDismissNumber()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v8

    invoke-static {v11, v10, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :cond_3
    if-eqz v6, :cond_4

    .line 59
    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v12, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/containers/Day;->getDoneNumberDispatcher()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v8

    invoke-static {v11, v10, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :cond_4
    if-eqz v7, :cond_5

    .line 63
    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/containers/Day;->getDoneNumberSolo()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v8

    invoke-static {v11, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_5
    invoke-virtual {v2}, Lcom/poverka/httpFileClient/containers/Day;->getNewNumber()I

    move-result v8

    if-nez v8, :cond_6

    .line 67
    const v8, -0x333334

    invoke-virtual {v1, v8}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 69
    :cond_6
    const/4 v8, -0x1

    invoke-virtual {v1, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 72
    .end local v3    # "tt1":Landroid/widget/TextView;
    .end local v4    # "tt2":Landroid/widget/TextView;
    .end local v5    # "tt3":Landroid/widget/TextView;
    .end local v6    # "tt4":Landroid/widget/TextView;
    .end local v7    # "tt5":Landroid/widget/TextView;
    :cond_7
    :goto_0
    return-object v1
.end method
