.class Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;
.super Ljava/lang/Object;
.source "MeasurementActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/MeasurementActivity;->fabClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    .line 819
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    iput-object p2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 822
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 823
    .local v0, "builderReport":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0f0143

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 824
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-virtual {v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/poverka/httpFileClient/activity/MeasurementActivity$10$1;

    invoke-direct {v2, p0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$10$1;-><init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity$10;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 855
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 856
    return-void
.end method
