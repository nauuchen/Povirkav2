.class public Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SearchableAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/poverka/httpFileClient/containers/Address;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field private filteredItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/poverka/httpFileClient/containers/Address;",
            ">;"
        }
    .end annotation
.end field

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/poverka/httpFileClient/containers/Address;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/poverka/httpFileClient/containers/Address;",
            ">;)V"
        }
    .end annotation

    .line 20
    .local p3, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/poverka/httpFileClient/containers/Address;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 21
    iput-object p3, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;->items:Ljava/util/ArrayList;

    .line 22
    iput-object p3, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;->filteredItems:Ljava/util/ArrayList;

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;

    .line 14
    invoke-direct {p0}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;->getAllItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 14
    iput-object p1, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;->filteredItems:Ljava/util/ArrayList;

    return-object p1
.end method

.method private getAllItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/poverka/httpFileClient/containers/Address;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;->items:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;->filteredItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 41
    new-instance v0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter$1;

    invoke-direct {v0, p0}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter$1;-><init>(Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;)V

    .line 70
    .local v0, "filter":Landroid/widget/Filter;
    return-object v0
.end method

.method public getItem(I)Lcom/poverka/httpFileClient/containers/Address;
    .locals 1
    .param p1, "position"    # I

    .line 32
    iget-object v0, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;->filteredItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/poverka/httpFileClient/containers/Address;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;->getItem(I)Lcom/poverka/httpFileClient/containers/Address;

    move-result-object p1

    return-object p1
.end method
