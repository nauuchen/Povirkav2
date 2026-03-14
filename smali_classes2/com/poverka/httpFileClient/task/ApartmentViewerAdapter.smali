.class public Lcom/poverka/httpFileClient/task/ApartmentViewerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ApartmentViewerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/poverka/httpFileClient/containers/Apartment;",
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
            "Lcom/poverka/httpFileClient/containers/Apartment;",
            ">;)V"
        }
    .end annotation

    .line 22
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/poverka/httpFileClient/containers/Apartment;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 23
    iput p2, p0, Lcom/poverka/httpFileClient/task/ApartmentViewerAdapter;->resourceLayout:I

    .line 24
    iput-object p1, p0, Lcom/poverka/httpFileClient/task/ApartmentViewerAdapter;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 30
    move-object v0, p2

    .line 32
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 34
    iget-object v1, p0, Lcom/poverka/httpFileClient/task/ApartmentViewerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 35
    .local v1, "vi":Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/poverka/httpFileClient/task/ApartmentViewerAdapter;->resourceLayout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 38
    .end local v1    # "vi":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/poverka/httpFileClient/task/ApartmentViewerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/poverka/httpFileClient/containers/Apartment;

    .line 39
    .local v1, "apartment":Lcom/poverka/httpFileClient/containers/Apartment;
    if-eqz v1, :cond_6

    .line 40
    const v2, 0x7f0901c9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 41
    .local v2, "tt1":Landroid/widget/TextView;
    const v3, 0x7f09003f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 42
    .local v3, "tt2":Landroid/widget/TextView;
    const v4, 0x7f090119

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 43
    .local v4, "tt3":Landroid/widget/TextView;
    const v5, 0x7f090082

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 45
    .local v5, "tt4":Landroid/widget/TextView;
    const/4 v6, 0x0

    if-eqz v2, :cond_1

    .line 46
    invoke-virtual {v1}, Lcom/poverka/httpFileClient/containers/Apartment;->getTime()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    invoke-virtual {v7, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :cond_1
    if-eqz v3, :cond_2

    .line 50
    invoke-virtual {v1}, Lcom/poverka/httpFileClient/containers/Apartment;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :cond_2
    if-eqz v4, :cond_3

    .line 54
    invoke-virtual {v1}, Lcom/poverka/httpFileClient/containers/Apartment;->getSurname()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :cond_3
    if-eqz v5, :cond_4

    .line 58
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/containers/Apartment;->getCountTotal()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v6, 0x1

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/containers/Apartment;->getCountClosed()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const-string v6, "%d / %d"

    invoke-static {v7, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :cond_4
    invoke-virtual {v1}, Lcom/poverka/httpFileClient/containers/Apartment;->getCountClosed()I

    move-result v6

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/containers/Apartment;->getCountTotal()I

    move-result v7

    if-lt v6, v7, :cond_5

    .line 62
    const v6, -0x333334

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 64
    :cond_5
    const/4 v6, -0x1

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 67
    .end local v2    # "tt1":Landroid/widget/TextView;
    .end local v3    # "tt2":Landroid/widget/TextView;
    .end local v4    # "tt3":Landroid/widget/TextView;
    .end local v5    # "tt4":Landroid/widget/TextView;
    :cond_6
    :goto_0
    return-object v0
.end method
