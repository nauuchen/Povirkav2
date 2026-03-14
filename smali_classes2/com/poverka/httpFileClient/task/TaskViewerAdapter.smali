.class public Lcom/poverka/httpFileClient/task/TaskViewerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TaskViewerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/poverka/httpFileClient/containers/Task;",
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
            "Lcom/poverka/httpFileClient/containers/Task;",
            ">;)V"
        }
    .end annotation

    .line 22
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/poverka/httpFileClient/containers/Task;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 23
    iput p2, p0, Lcom/poverka/httpFileClient/task/TaskViewerAdapter;->resourceLayout:I

    .line 24
    iput-object p1, p0, Lcom/poverka/httpFileClient/task/TaskViewerAdapter;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 30
    move-object v0, p2

    .line 32
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 34
    iget-object v1, p0, Lcom/poverka/httpFileClient/task/TaskViewerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 35
    .local v1, "vi":Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/poverka/httpFileClient/task/TaskViewerAdapter;->resourceLayout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 38
    .end local v1    # "vi":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/poverka/httpFileClient/task/TaskViewerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/poverka/httpFileClient/containers/Task;

    .line 39
    .local v1, "task":Lcom/poverka/httpFileClient/containers/Task;
    if-eqz v1, :cond_7

    .line 40
    const v2, 0x7f090151

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 41
    .local v2, "tt2":Landroid/widget/TextView;
    const v3, 0x7f090120

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 42
    .local v3, "tt3":Landroid/widget/TextView;
    const v4, 0x7f090172

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 44
    .local v4, "tt4":Landroid/widget/TextView;
    const/4 v5, 0x1

    if-eqz v2, :cond_2

    .line 45
    invoke-virtual {v1}, Lcom/poverka/httpFileClient/containers/Task;->getServiceType()I

    move-result v6

    if-ne v6, v5, :cond_1

    .line 46
    const v6, 0x7f0f01b0

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 48
    :cond_1
    const v6, 0x7f0f01b1

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 52
    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    .line 53
    invoke-virtual {v1}, Lcom/poverka/httpFileClient/containers/Task;->getNote()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :cond_3
    if-eqz v4, :cond_7

    .line 57
    invoke-virtual {v1}, Lcom/poverka/httpFileClient/containers/Task;->getStatus()I

    move-result v6

    if-eqz v6, :cond_6

    if-eq v6, v5, :cond_5

    const/4 v5, 0x2

    if-eq v6, v5, :cond_4

    goto :goto_1

    .line 65
    :cond_4
    const v5, 0x7f0f0186

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 62
    :cond_5
    const v5, 0x7f0f0185

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 63
    goto :goto_1

    .line 59
    :cond_6
    const v5, 0x7f0f0189

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 71
    .end local v2    # "tt2":Landroid/widget/TextView;
    .end local v3    # "tt3":Landroid/widget/TextView;
    .end local v4    # "tt4":Landroid/widget/TextView;
    :cond_7
    :goto_1
    return-object v0
.end method
