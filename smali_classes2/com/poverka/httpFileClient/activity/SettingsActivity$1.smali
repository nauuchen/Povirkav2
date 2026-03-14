.class Lcom/poverka/httpFileClient/activity/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 219
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 222
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/SettingsActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/SettingsActivity;

    invoke-static {v0, p2}, Lcom/poverka/httpFileClient/activity/SettingsActivity;->access$100(Lcom/poverka/httpFileClient/activity/SettingsActivity;Z)V

    .line 223
    return-void
.end method
