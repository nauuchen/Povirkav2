.class Lcom/poverka/httpFileClient/activity/SettingsActivity$9;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/SettingsActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/SettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/SettingsActivity;

    .line 267
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$9;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 270
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$9;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$900(Lcom/poverka/httpFileClient/activity/SettingsActivity;)V

    .line 271
    return-void
.end method
