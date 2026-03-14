.class public Lcom/poverka/httpFileClient/util/MyPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "MyPagerAdapter.java"


# instance fields
.field private views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/poverka/httpFileClient/util/MyPagerAdapter;->views:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addView(Landroidx/viewpager/widget/ViewPager;Landroid/widget/TextView;)I
    .locals 1
    .param p1, "pager"    # Landroidx/viewpager/widget/ViewPager;
    .param p2, "v"    # Landroid/widget/TextView;

    .line 52
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/MyPagerAdapter;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/poverka/httpFileClient/util/MyPagerAdapter;->addView(Landroidx/viewpager/widget/ViewPager;Landroid/widget/TextView;I)I

    move-result v0

    return v0
.end method

.method public addView(Landroidx/viewpager/widget/ViewPager;Landroid/widget/TextView;I)I
    .locals 1
    .param p1, "pager"    # Landroidx/viewpager/widget/ViewPager;
    .param p2, "v"    # Landroid/widget/TextView;
    .param p3, "position"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 58
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/MyPagerAdapter;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p3, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 59
    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 60
    return p3
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/MyPagerAdapter;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 39
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/MyPagerAdapter;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 18
    instance-of v0, p1, Landroid/widget/TextView;

    const/4 v1, -0x2

    if-eqz v0, :cond_1

    .line 19
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/MyPagerAdapter;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 20
    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 21
    return v1

    .line 23
    :cond_0
    return v0

    .line 25
    .end local v0    # "index":I
    :cond_1
    return v1
.end method

.method public getView(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .line 76
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/MyPagerAdapter;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .line 31
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/MyPagerAdapter;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 32
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 33
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .line 48
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeView(Landroidx/viewpager/widget/ViewPager;I)I
    .locals 1
    .param p1, "pager"    # Landroidx/viewpager/widget/ViewPager;
    .param p2, "position"    # I

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 69
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/MyPagerAdapter;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 70
    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 72
    return p2
.end method

.method public removeView(Landroidx/viewpager/widget/ViewPager;Landroid/widget/TextView;)I
    .locals 1
    .param p1, "pager"    # Landroidx/viewpager/widget/ViewPager;
    .param p2, "v"    # Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/MyPagerAdapter;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/poverka/httpFileClient/util/MyPagerAdapter;->removeView(Landroidx/viewpager/widget/ViewPager;I)I

    move-result v0

    return v0
.end method
