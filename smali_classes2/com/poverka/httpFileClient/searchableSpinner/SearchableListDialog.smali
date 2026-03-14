.class public Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;
.super Landroid/app/DialogFragment;
.source "SearchableListDialog.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog$OnSearchTextChanged;,
        Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog$SearchableItem;
    }
.end annotation


# static fields
.field private static final ITEMS:Ljava/lang/String; = "items"


# instance fields
.field private _listViewItems:Landroid/widget/ListView;

.field private _onClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private _onSearchTextChanged:Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog$OnSearchTextChanged;

.field private _searchView:Landroid/widget/SearchView;

.field private _searchableItem:Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog$SearchableItem;

.field private _strPositiveButtonText:Ljava/lang/String;

.field private _strTitle:Ljava/lang/String;

.field private listAdapter:Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;)Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;

    .line 26
    iget-object v0, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->listAdapter:Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;)Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog$SearchableItem;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;

    .line 26
    iget-object v0, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->_searchableItem:Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog$SearchableItem;

    return-object v0
.end method

.method public static newInstance(Ljava/util/List;)Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;
    .locals 4
    .param p0, "items"    # Ljava/util/List;

    .line 52
    new-instance v0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;

    invoke-direct {v0}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;-><init>()V

    .line 54
    .local v0, "multiSelectExpandableFragment":Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v1, "args":Landroid/os/Bundle;
    move-object v2, p0

    check-cast v2, Ljava/io/Serializable;

    const-string v3, "items"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 57
    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->setArguments(Landroid/os/Bundle;)V

    .line 59
    return-object v0
.end method

.method private setData(Landroid/view/View;)V
    .locals 6
    .param p1, "rootView"    # Landroid/view/View;

    .line 137
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 139
    .local v0, "searchManager":Landroid/app/SearchManager;
    const v1, 0x7f090143

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    iput-object v1, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->_searchView:Landroid/widget/SearchView;

    .line 140
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 141
    iget-object v1, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->_searchView:Landroid/widget/SearchView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 142
    iget-object v1, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->_searchView:Landroid/widget/SearchView;

    invoke-virtual {v1, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 143
    iget-object v1, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->_searchView:Landroid/widget/SearchView;

    invoke-virtual {v1, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 144
    iget-object v1, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->_searchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 145
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v3, "input_method"

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 146
    .local v1, "mgr":Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->_searchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 149
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "items"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 151
    .local v2, "items":Ljava/util/ArrayList;
    const v3, 0x7f0900f4

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->_listViewItems:Landroid/widget/ListView;

    .line 154
    new-instance v3, Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x1090003

    invoke-direct {v3, v4, v5, v2}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v3, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->listAdapter:Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;

    .line 156
    iget-object v4, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->_listViewItems:Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 158
    iget-object v3, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->_listViewItems:Landroid/widget/ListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 160
    iget-object v3, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->_listViewItems:Landroid/widget/ListView;

    new-instance v4, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog$1;

    invoke-direct {v4, p0}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog$1;-><init>(Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 167
    return-void
.end method


# virtual methods
.method public onClose()Z
    .locals 1

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 64
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 77
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 83
    .local v0, "inflater":Landroid/view/LayoutInflater;
    if-eqz p1, :cond_0

    .line 84
    const-string v1, "item"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog$SearchableItem;

    iput-object v1, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->_searchableItem:Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog$SearchableItem;

    .line 88
    :cond_0
    const v1, 0x7f0c005b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 89
    .local v1, "rootView":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->setData(Landroid/view/View;)V

    .line 91
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 92
    .local v2, "alertDialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 94
    iget-object v3, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->_strPositiveButtonText:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, "CLOSE"

    .line 95
    .local v3, "strPositiveButton":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->_onClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 97
    iget-object v4, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->_strTitle:Ljava/lang/String;

    if-nez v4, :cond_2

    const-string v4, "Select Item"

    .line 98
    .local v4, "strTitle":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 100
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 101
    .local v5, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 102
    return-object v5
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 69
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 70
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 0

    .line 176
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 177
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->dismiss()V

    .line 178
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 189
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->listAdapter:Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->listAdapter:Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 195
    :goto_0
    iget-object v0, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->_onSearchTextChanged:Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog$OnSearchTextChanged;

    if-eqz v0, :cond_1

    .line 196
    invoke-interface {v0, p1}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog$OnSearchTextChanged;->onSearchTextChanged(Ljava/lang/String;)V

    .line 198
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->_searchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 183
    const/4 v0, 0x1

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 110
    iget-object v0, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->_searchableItem:Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog$SearchableItem;

    const-string v1, "item"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 111
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 112
    return-void
.end method

.method public setOnSearchTextChangedListener(Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog$OnSearchTextChanged;)V
    .locals 0
    .param p1, "onSearchTextChanged"    # Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog$OnSearchTextChanged;

    .line 133
    iput-object p1, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->_onSearchTextChanged:Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog$OnSearchTextChanged;

    .line 134
    return-void
.end method

.method public setOnSearchableItemClickListener(Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog$SearchableItem;)V
    .locals 0
    .param p1, "searchableItem"    # Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog$SearchableItem;

    .line 129
    iput-object p1, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->_searchableItem:Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog$SearchableItem;

    .line 130
    return-void
.end method

.method public setPositiveButton(Ljava/lang/String;)V
    .locals 0
    .param p1, "strPositiveButtonText"    # Ljava/lang/String;

    .line 120
    iput-object p1, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->_strPositiveButtonText:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "strPositiveButtonText"    # Ljava/lang/String;
    .param p2, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 124
    iput-object p1, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->_strPositiveButtonText:Ljava/lang/String;

    .line 125
    iput-object p2, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->_onClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 126
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "strTitle"    # Ljava/lang/String;

    .line 116
    iput-object p1, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->_strTitle:Ljava/lang/String;

    .line 117
    return-void
.end method
