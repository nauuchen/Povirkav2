.class Lcom/poverka/httpFileClient/activity/StateActivity$7;
.super Ljava/lang/Object;
.source "StateActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/StateActivity;->TestClicked(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

.field final synthetic val$selectTestView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/StateActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/StateActivity;

    .line 1053
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/StateActivity$7;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    iput-object p2, p0, Lcom/poverka/httpFileClient/activity/StateActivity$7;->val$selectTestView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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

    .line 1056
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$7;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$3000(Lcom/poverka/httpFileClient/activity/StateActivity;)I

    move-result v0

    if-eq p3, v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$7;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity$7;->val$selectTestView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v0, v1, p3, v2, v2}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$3300(Lcom/poverka/httpFileClient/activity/StateActivity;Landroid/view/View;III)V

    goto :goto_0

    .line 1059
    :cond_0
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$7;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/StateActivity$7;->val$selectTestView:Landroid/view/View;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$3400(Lcom/poverka/httpFileClient/activity/StateActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/StateActivity$7;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v3}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$3500(Lcom/poverka/httpFileClient/activity/StateActivity;)I

    move-result v3

    invoke-static {v0, v1, p3, v2, v3}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$3300(Lcom/poverka/httpFileClient/activity/StateActivity;Landroid/view/View;III)V

    .line 1062
    :goto_0
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$7;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$3000(Lcom/poverka/httpFileClient/activity/StateActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1063
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/StateActivity$7;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0, p3}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$3002(Lcom/poverka/httpFileClient/activity/StateActivity;I)I

    .line 1065
    :cond_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 1070
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
