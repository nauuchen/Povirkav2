.class Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter$1;
.super Landroid/widget/Filter;
.source "SearchableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;

    .line 41
    iput-object p1, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter$1;->this$0:Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 7
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .line 44
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 45
    .local v0, "results":Landroid/widget/Filter$FilterResults;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v1, "filteredItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/poverka/httpFileClient/containers/Address;>;"
    iget-object v2, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter$1;->this$0:Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;

    invoke-static {v2}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;->access$000(Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;)Ljava/util/List;

    move-result-object v2

    .line 48
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/poverka/httpFileClient/containers/Address;>;"
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 52
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/poverka/httpFileClient/containers/Address;

    .line 53
    .local v4, "item":Lcom/poverka/httpFileClient/containers/Address;
    invoke-virtual {v4}, Lcom/poverka/httpFileClient/containers/Address;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 54
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .end local v4    # "item":Lcom/poverka/httpFileClient/containers/Address;
    :cond_1
    goto :goto_0

    .line 57
    :cond_2
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 58
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v0, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_2

    .line 49
    :cond_3
    :goto_1
    iput-object v2, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 50
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iput v3, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 61
    :goto_2
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .line 66
    iget-object v0, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter$1;->this$0:Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;->access$102(Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 67
    iget-object v0, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter$1;->this$0:Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;->notifyDataSetChanged()V

    .line 68
    return-void
.end method
