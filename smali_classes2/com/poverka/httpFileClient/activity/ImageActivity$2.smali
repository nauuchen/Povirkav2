.class Lcom/poverka/httpFileClient/activity/ImageActivity$2;
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

.field final synthetic val$textLHeight:I

.field final synthetic val$textSHeight:I


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/ImageActivity;Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;IIIILandroid/widget/Spinner;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/ImageActivity;

    .line 256
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    iput-object p2, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$2;->val$spinnerName:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$2;->val$char1:Ljava/lang/String;

    iput-object p4, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$2;->val$char2:Ljava/lang/String;

    iput p5, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$2;->val$textSHeight:I

    iput p6, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$2;->val$textLHeight:I

    iput p7, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$2;->val$marginHeight:I

    iput p8, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$2;->val$editWidth:I

    iput-object p9, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$2;->val$spinnerDN:Landroid/widget/Spinner;

    iput-object p10, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$2;->val$deviceType:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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

    .line 261
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :try_start_0
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$2;->val$spinnerName:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$300(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$2;->val$char1:Ljava/lang/String;

    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$2;->val$char2:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3}, Lcom/poverka/httpFileClient/util/MyDeviceTypeHelper;->getDNsByNameAndChars(Landroid/content/ContextWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "DNs":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 264
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 265
    array-length v2, v1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    .line 266
    .local v2, "array":[Ljava/lang/String;
    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$300(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0f0131

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 267
    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    move-object v1, v2

    .line 271
    .end local v2    # "array":[Ljava/lang/String;
    :cond_0
    new-instance v2, Lcom/poverka/httpFileClient/activity/ImageActivity$2$1;

    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v3}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$300(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c005f

    invoke-direct {v2, p0, v3, v4, v1}, Lcom/poverka/httpFileClient/activity/ImageActivity$2$1;-><init>(Lcom/poverka/httpFileClient/activity/ImageActivity$2;Landroid/content/Context;I[Ljava/lang/String;)V

    .line 285
    .local v2, "adapterDN":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$2;->val$spinnerDN:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 287
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$2;->val$deviceType:Lorg/json/JSONObject;

    if-eqz v3, :cond_1

    .line 288
    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$2;->val$spinnerDN:Landroid/widget/Spinner;

    const-string v5, "dn"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setSelection(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "DNs":[Ljava/lang/String;
    .end local v2    # "adapterDN":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 293
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

    .line 298
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
