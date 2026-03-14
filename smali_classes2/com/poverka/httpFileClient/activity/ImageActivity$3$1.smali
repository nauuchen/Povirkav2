.class Lcom/poverka/httpFileClient/activity/ImageActivity$3$1;
.super Landroid/widget/ArrayAdapter;
.source "ImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/ImageActivity$3;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/poverka/httpFileClient/activity/ImageActivity$3;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/ImageActivity$3;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/poverka/httpFileClient/activity/ImageActivity$3;
    .param p2, "arg0"    # Landroid/content/Context;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # [Ljava/lang/String;

    .line 317
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$3$1;->this$1:Lcom/poverka/httpFileClient/activity/ImageActivity$3;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 324
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 325
    .local v0, "v":Landroid/view/View;
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$3$1;->this$1:Lcom/poverka/httpFileClient/activity/ImageActivity$3;

    iget v2, v2, Lcom/poverka/httpFileClient/activity/ImageActivity$3;->val$textLHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 326
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$3$1;->this$1:Lcom/poverka/httpFileClient/activity/ImageActivity$3;

    iget v1, v1, Lcom/poverka/httpFileClient/activity/ImageActivity$3;->val$marginHeight:I

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$3$1;->this$1:Lcom/poverka/httpFileClient/activity/ImageActivity$3;

    iget v2, v2, Lcom/poverka/httpFileClient/activity/ImageActivity$3;->val$marginHeight:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 327
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$3$1;->this$1:Lcom/poverka/httpFileClient/activity/ImageActivity$3;

    iget v2, v2, Lcom/poverka/httpFileClient/activity/ImageActivity$3;->val$editWidth:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double v2, v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setWidth(I)V

    .line 328
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 319
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 320
    .local v0, "v":Landroid/view/View;
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$3$1;->this$1:Lcom/poverka/httpFileClient/activity/ImageActivity$3;

    iget v2, v2, Lcom/poverka/httpFileClient/activity/ImageActivity$3;->val$textSHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 321
    return-object v0
.end method
