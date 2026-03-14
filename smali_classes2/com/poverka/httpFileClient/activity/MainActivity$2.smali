.class Lcom/poverka/httpFileClient/activity/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/MainActivity;->showChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/MainActivity;

    .line 404
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/MainActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 406
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 407
    return-void
.end method
