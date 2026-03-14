.class public Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;
.super Landroidx/appcompat/widget/AppCompatSpinner;
.source "SearchableSpinner.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog$SearchableItem;


# static fields
.field public static final NO_ITEM_SELECTED:I = -0x1


# instance fields
.field private _arrayAdapter:Landroid/widget/ArrayAdapter;

.field private _context:Landroid/content/Context;

.field private _isDirty:Z

.field private _isFromInit:Z

.field private _items:Ljava/util/List;

.field private _searchableListDialog:Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;

.field private _strHintText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p1, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->_context:Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->init()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 40
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput-object p1, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->_context:Landroid/content/Context;

    .line 42
    sget-object v0, Lcom/poverka/httpFileClient/R$styleable;->SearchableSpinner:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 43
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 44
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 45
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 46
    .local v3, "attr":I
    if-nez v3, :cond_0

    .line 47
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->_strHintText:Ljava/lang/String;

    .line 44
    .end local v3    # "attr":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    invoke-direct {p0}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->init()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    iput-object p1, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->_context:Landroid/content/Context;

    .line 57
    invoke-direct {p0}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->init()V

    .line 58
    return-void
.end method

.method private init()V
    .locals 7

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->_items:Ljava/util/List;

    .line 62
    invoke-static {v0}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->newInstance(Ljava/util/List;)Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->_searchableListDialog:Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;

    .line 63
    invoke-virtual {v0, p0}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->setOnSearchableItemClickListener(Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog$SearchableItem;)V

    .line 64
    invoke-virtual {p0, p0}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 66
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    iput-object v0, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->_arrayAdapter:Landroid/widget/ArrayAdapter;

    .line 67
    iget-object v0, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->_strHintText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->_context:Landroid/content/Context;

    const v2, 0x1090003

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->_strHintText:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-direct {v0, v1, v2, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 69
    .local v0, "arrayAdapter":Landroid/widget/ArrayAdapter;
    iput-boolean v3, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->_isFromInit:Z

    .line 70
    invoke-virtual {p0, v0}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 72
    .end local v0    # "arrayAdapter":Landroid/widget/ArrayAdapter;
    :cond_0
    return-void
.end method

.method private scanForActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2
    .param p1, "cont"    # Landroid/content/Context;

    .line 145
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 146
    return-object v0

    .line 147
    :cond_0
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 148
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 149
    :cond_1
    instance-of v1, p1, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    .line 150
    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0

    .line 152
    :cond_2
    return-object v0
.end method


# virtual methods
.method public getSelectedItem()Ljava/lang/Object;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->_strHintText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->_isDirty:Z

    if-nez v0, :cond_0

    .line 167
    const/4 v0, 0x0

    return-object v0

    .line 169
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->_strHintText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->_isDirty:Z

    if-nez v0, :cond_0

    .line 158
    const/4 v0, -0x1

    return v0

    .line 160
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public onSearchableItemClicked(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "position"    # I

    .line 119
    iget-object v0, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->_items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->setSelection(I)V

    .line 121
    iget-boolean v0, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->_isDirty:Z

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->_isDirty:Z

    .line 123
    iget-object v0, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->_arrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v0}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 124
    iget-object v0, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->_items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->setSelection(I)V

    .line 126
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 76
    iget-object v0, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->_searchableListDialog:Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->isAdded()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 77
    return v1

    .line 79
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 81
    iget-object v0, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->_arrayAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->_items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 88
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->_arrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 89
    iget-object v2, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->_items:Ljava/util/List;

    iget-object v3, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->_arrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->_searchableListDialog:Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;

    iget-object v2, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->_context:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "TAG"

    invoke-virtual {v0, v2, v3}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 96
    :cond_2
    return v1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 21
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 6
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;

    .line 102
    iget-boolean v0, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->_isFromInit:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 103
    move-object v0, p1

    check-cast v0, Landroid/widget/ArrayAdapter;

    iput-object v0, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->_arrayAdapter:Landroid/widget/ArrayAdapter;

    .line 104
    iget-object v0, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->_strHintText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->_isDirty:Z

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->_context:Landroid/content/Context;

    const v3, 0x1090003

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->_strHintText:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 106
    .local v0, "arrayAdapter":Landroid/widget/ArrayAdapter;
    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 107
    .end local v0    # "arrayAdapter":Landroid/widget/ArrayAdapter;
    goto :goto_0

    .line 108
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0

    .line 112
    :cond_1
    iput-boolean v1, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->_isFromInit:Z

    .line 113
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 115
    :goto_0
    return-void
.end method

.method public setOnSearchTextChangedListener(Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog$OnSearchTextChanged;)V
    .locals 1
    .param p1, "onSearchTextChanged"    # Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog$OnSearchTextChanged;

    .line 141
    iget-object v0, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->_searchableListDialog:Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;

    invoke-virtual {v0, p1}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->setOnSearchTextChangedListener(Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog$OnSearchTextChanged;)V

    .line 142
    return-void
.end method

.method public setPositiveButton(Ljava/lang/String;)V
    .locals 1
    .param p1, "strPositiveButtonText"    # Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->_searchableListDialog:Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;

    invoke-virtual {v0, p1}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->setPositiveButton(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "strPositiveButtonText"    # Ljava/lang/String;
    .param p2, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 137
    iget-object v0, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->_searchableListDialog:Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;

    invoke-virtual {v0, p1, p2}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 138
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "strTitle"    # Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/poverka/httpFileClient/searchableSpinner/SearchableSpinner;->_searchableListDialog:Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;

    invoke-virtual {v0, p1}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableListDialog;->setTitle(Ljava/lang/String;)V

    .line 130
    return-void
.end method
