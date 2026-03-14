.class Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler$5;
.super Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

.field final synthetic val$marginHeight:I

.field final synthetic val$textLHeight:I

.field final synthetic val$textSHeight:I


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;Landroid/content/Context;ILjava/util/ArrayList;III)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I

    .line 1311
    .local p4, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/poverka/httpFileClient/containers/Address;>;"
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler$5;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler;

    iput p5, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler$5;->val$textSHeight:I

    iput p6, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler$5;->val$textLHeight:I

    iput p7, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler$5;->val$marginHeight:I

    invoke-direct {p0, p2, p3, p4}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 1319
    invoke-super {p0, p1, p2, p3}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1320
    .local v0, "v":Landroid/view/View;
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    iget v2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler$5;->val$textLHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1321
    iget v1, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler$5;->val$marginHeight:I

    invoke-virtual {v0, v1, v1, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1322
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1323
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 1313
    invoke-super {p0, p1, p2, p3}, Lcom/poverka/httpFileClient/searchableSpinner/SearchableAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1314
    .local v0, "v":Landroid/view/View;
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    iget v2, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$MyHandler$5;->val$textSHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1315
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1316
    return-object v0
.end method
