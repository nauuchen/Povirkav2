.class Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog$1;
.super Ljava/lang/Object;
.source "SearchableListDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->setData(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;

    .line 160
    iput-object p1, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog$1;->this$0:Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 163
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog$1;->this$0:Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;

    invoke-static {v0}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->access$100(Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;)Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog$SearchableItem;

    move-result-object v0

    iget-object v1, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog$1;->this$0:Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;

    invoke-static {v1}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->access$000(Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;)Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;->getItem(I)Lcom/poverka/httpFileClient/containers/Address;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog$SearchableItem;->onSearchableItemClicked(Ljava/lang/Object;I)V

    .line 164
    iget-object v0, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog$1;->this$0:Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 165
    return-void
.end method
