.class Lcom/poverka/httpFileClient/activity/ClientActivity$2;
.super Ljava/lang/Object;
.source "ClientActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/ClientActivity;->initViews(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/ClientActivity;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/ClientActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/ClientActivity;

    .line 391
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/ClientActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/ClientActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 394
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ClientActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/ClientActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/ClientActivity;->access$000(Lcom/poverka/httpFileClient/activity/ClientActivity;)V

    .line 395
    return-void
.end method
