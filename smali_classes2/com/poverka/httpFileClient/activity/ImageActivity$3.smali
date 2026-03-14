.class Lcom/poverka/httpFileClient/activity/ImageActivity$3;
.super Ljava/lang/Object;
.source "ImageActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/ImageActivity;->initViews(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

.field final synthetic val$char1:Ljava/lang/String;

.field final synthetic val$char2:Ljava/lang/String;

.field final synthetic val$deviceType:Lorg/json/JSONObject;

.field final synthetic val$editWidth:I

.field final synthetic val$marginHeight:I

.field final synthetic val$spinnerDN:Landroid/widget/Spinner;

.field final synthetic val$spinnerName:Landroid/widget/Spinner;

.field final synthetic val$spinnerVendor:Landroid/widget/Spinner;

.field final synthetic val$textLHeight:I

.field final synthetic val$textSHeight:I


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/ImageActivity;Landroid/widget/Spinner;Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;IIIILandroid/widget/Spinner;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/ImageActivity;

    .line 301
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    iput-object p2, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$3;->val$spinnerDN:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$3;->val$spinnerName:Landroid/widget/Spinner;

    iput-object p4, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$3;->val$char1:Ljava/lang/String;

    iput-object p5, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$3;->val$char2:Ljava/lang/String;

    iput p6, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$3;->val$textSHeight:I

    iput p7, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$3;->val$textLHeight:I

    iput p8, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$3;->val$marginHeight:I

    iput p9, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$3;->val$editWidth:I

    iput-object p10, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$3;->val$spinnerVendor:Landroid/widget/Spinner;

    iput-object p11, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$3;->val$deviceType:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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

    .line 306
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :try_start_0
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$3;->val$spinnerDN:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "dn":Ljava/lang/String;
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$3;->val$spinnerName:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v2}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$300(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v3}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$300(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$3;->val$char1:Ljava/lang/String;

    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$3;->val$char2:Ljava/lang/String;

    invoke-static {v3, v0, v1, v4, v5}, Lcom/poverka/httpFileClient/util/MyDeviceTypeHelper;->getVendorIdsByAll(Landroid/content/ContextWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/poverka/httpFileClient/util/MyDeviceTypeHelper;->getVendorsByIDs(Landroid/content/ContextWrapper;[Ljava/lang/Integer;)[Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, "vendors":[Ljava/lang/String;
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 310
    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 311
    array-length v3, v2

    add-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/String;

    .line 312
    .local v3, "array":[Ljava/lang/String;
    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$300(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0f0131

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    .line 313
    array-length v5, v2

    invoke-static {v2, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    move-object v2, v3

    .line 317
    .end local v3    # "array":[Ljava/lang/String;
    :cond_0
    new-instance v3, Lcom/poverka/httpFileClient/activity/ImageActivity$3$1;

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$300(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c005f

    invoke-direct {v3, p0, v4, v5, v2}, Lcom/poverka/httpFileClient/activity/ImageActivity$3$1;-><init>(Lcom/poverka/httpFileClient/activity/ImageActivity$3;Landroid/content/Context;I[Ljava/lang/String;)V

    .line 331
    .local v3, "adapterVendor":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$3;->val$spinnerVendor:Landroid/widget/Spinner;

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 333
    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$3;->val$deviceType:Lorg/json/JSONObject;

    if-eqz v4, :cond_1

    .line 334
    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$3;->val$spinnerVendor:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$300(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$3;->val$deviceType:Lorg/json/JSONObject;

    const-string v7, "vendorId"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/poverka/httpFileClient/util/MyDeviceTypeHelper;->getVendorById(Landroid/content/ContextWrapper;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    .end local v0    # "dn":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "vendors":[Ljava/lang/String;
    .end local v3    # "adapterVendor":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    goto :goto_0

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 339
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
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

    .line 344
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
