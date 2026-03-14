.class Lcom/poverka/httpFileClient/activity/ClientActivity$1;
.super Landroid/widget/ArrayAdapter;
.source "ClientActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/ClientActivity;->uiStuff(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/ClientActivity;

.field final synthetic val$marginHeight:I

.field final synthetic val$textLHeight:I

.field final synthetic val$textSHeight:I


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/ClientActivity;Landroid/content/Context;I[Ljava/lang/String;III)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/ClientActivity;
    .param p2, "arg0"    # Landroid/content/Context;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # [Ljava/lang/String;

    .line 153
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/ClientActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/ClientActivity;

    iput p5, p0, Lcom/poverka/httpFileClient/activity/ClientActivity$1;->val$textSHeight:I

    iput p6, p0, Lcom/poverka/httpFileClient/activity/ClientActivity$1;->val$textLHeight:I

    iput p7, p0, Lcom/poverka/httpFileClient/activity/ClientActivity$1;->val$marginHeight:I

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 161
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 162
    .local v0, "v":Landroid/view/View;
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    iget v2, p0, Lcom/poverka/httpFileClient/activity/ClientActivity$1;->val$textLHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 163
    iget v1, p0, Lcom/poverka/httpFileClient/activity/ClientActivity$1;->val$marginHeight:I

    invoke-virtual {v0, v1, v1, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 164
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 165
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 155
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 156
    .local v0, "v":Landroid/view/View;
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    iget v2, p0, Lcom/poverka/httpFileClient/activity/ClientActivity$1;->val$textSHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 157
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 158
    return-object v0
.end method
