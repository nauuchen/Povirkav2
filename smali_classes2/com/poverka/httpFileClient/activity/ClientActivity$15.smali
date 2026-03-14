.class Lcom/poverka/httpFileClient/activity/ClientActivity$15;
.super Ljava/lang/Object;
.source "ClientActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/ClientActivity;->SaveClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/ClientActivity;

.field final synthetic val$paymentAccountNumberFinal:I


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/ClientActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/ClientActivity;

    .line 766
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/ClientActivity$15;->this$0:Lcom/poverka/httpFileClient/activity/ClientActivity;

    iput p2, p0, Lcom/poverka/httpFileClient/activity/ClientActivity$15;->val$paymentAccountNumberFinal:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 769
    const-string v0, "ClientActivity"

    const-string v1, "\u0414\u0438\u0441\u043f\u0435\u0442\u0447\u0435\u0440\u0443"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ClientActivity$15;->this$0:Lcom/poverka/httpFileClient/activity/ClientActivity;

    iget v1, p0, Lcom/poverka/httpFileClient/activity/ClientActivity$15;->val$paymentAccountNumberFinal:I

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/poverka/httpFileClient/activity/ClientActivity;->access$400(Lcom/poverka/httpFileClient/activity/ClientActivity;II)V

    .line 771
    return-void
.end method
