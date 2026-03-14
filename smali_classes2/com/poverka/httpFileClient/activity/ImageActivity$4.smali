.class Lcom/poverka/httpFileClient/activity/ImageActivity$4;
.super Ljava/lang/Object;
.source "ImageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/ImageActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/ImageActivity;

    .line 377
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    iput-object p2, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$4;->val$char1:Ljava/lang/String;

    iput-object p3, p0, Lcom/poverka/httpFileClient/activity/ImageActivity$4;->val$char2:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 19
    .param p1, "v"    # Landroid/view/View;

    .line 380
    move-object/from16 v0, p0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 381
    .local v1, "bundle":Landroid/os/Bundle;
    iget-object v2, v0, Lcom/poverka/httpFileClient/activity/ImageActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v2}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$400(Lcom/poverka/httpFileClient/activity/ImageActivity;)Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;

    move-result-object v2

    sget-object v3, Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;->START:Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;

    if-ne v2, v3, :cond_9

    .line 382
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 383
    .local v2, "calendar":Ljava/util/Calendar;
    iget-object v3, v0, Lcom/poverka/httpFileClient/activity/ImageActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v3}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$500(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0900a4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 384
    .local v3, "editNumber":Landroid/widget/EditText;
    iget-object v4, v0, Lcom/poverka/httpFileClient/activity/ImageActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$500(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0900b4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 385
    .local v4, "editVolume":Landroid/widget/EditText;
    iget-object v5, v0, Lcom/poverka/httpFileClient/activity/ImageActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$500(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0900b5

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 386
    .local v5, "editYear":Landroid/widget/EditText;
    iget-object v6, v0, Lcom/poverka/httpFileClient/activity/ImageActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$500(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f09015f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    .line 387
    .local v6, "spinnerDN":Landroid/widget/Spinner;
    iget-object v7, v0, Lcom/poverka/httpFileClient/activity/ImageActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v7}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$500(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f090167

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    .line 388
    .local v7, "spinnerName":Landroid/widget/Spinner;
    iget-object v8, v0, Lcom/poverka/httpFileClient/activity/ImageActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v8}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$500(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f090168

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    .line 390
    .local v8, "spinnerVendor":Landroid/widget/Spinner;
    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x1

    if-eqz v9, :cond_8

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_0

    goto/16 :goto_0

    .line 395
    :cond_0
    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 396
    .local v9, "dn":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 397
    .local v17, "name":Ljava/lang/String;
    iget-object v11, v0, Lcom/poverka/httpFileClient/activity/ImageActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v11}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$300(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/poverka/httpFileClient/util/MyDeviceTypeHelper;->getVendorIdByName(Landroid/content/ContextWrapper;Ljava/lang/String;)I

    move-result v18

    .line 398
    .local v18, "vendorId":I
    iget-object v11, v0, Lcom/poverka/httpFileClient/activity/ImageActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v11}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$300(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/app/Activity;

    move-result-object v11

    iget-object v14, v0, Lcom/poverka/httpFileClient/activity/ImageActivity$4;->val$char1:Ljava/lang/String;

    iget-object v15, v0, Lcom/poverka/httpFileClient/activity/ImageActivity$4;->val$char2:Ljava/lang/String;

    move-object v12, v9

    move-object/from16 v13, v17

    move/from16 v16, v18

    invoke-static/range {v11 .. v16}, Lcom/poverka/httpFileClient/util/MyDeviceTypeHelper;->typeToID(Landroid/content/ContextWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v11

    .line 404
    .local v11, "deviceTypeId":I
    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v12

    const/4 v13, 0x5

    if-eq v12, v13, :cond_1

    .line 405
    iget-object v12, v0, Lcom/poverka/httpFileClient/activity/ImageActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v12}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$300(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    iget-object v13, v0, Lcom/poverka/httpFileClient/activity/ImageActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v13}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$300(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f0077

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 406
    return-void

    .line 408
    :cond_1
    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v12

    const/4 v13, 0x4

    if-eq v12, v13, :cond_2

    .line 409
    iget-object v12, v0, Lcom/poverka/httpFileClient/activity/ImageActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v12}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$300(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    iget-object v13, v0, Lcom/poverka/httpFileClient/activity/ImageActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v13}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$300(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f0079

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 410
    return-void

    .line 412
    :cond_2
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v13

    if-le v12, v13, :cond_3

    .line 413
    iget-object v12, v0, Lcom/poverka/httpFileClient/activity/ImageActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v12}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$300(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    iget-object v13, v0, Lcom/poverka/httpFileClient/activity/ImageActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v13}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$300(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f002e

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 414
    return-void

    .line 416
    :cond_3
    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/poverka/httpFileClient/activity/ImageActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v13}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$300(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f0131

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 417
    iget-object v12, v0, Lcom/poverka/httpFileClient/activity/ImageActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v12}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$300(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    iget-object v13, v0, Lcom/poverka/httpFileClient/activity/ImageActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v13}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$300(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f013c

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 418
    return-void

    .line 420
    :cond_4
    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/poverka/httpFileClient/activity/ImageActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v13}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$300(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 421
    iget-object v12, v0, Lcom/poverka/httpFileClient/activity/ImageActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v12}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$300(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    iget-object v13, v0, Lcom/poverka/httpFileClient/activity/ImageActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v13}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$300(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f0134

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 422
    return-void

    .line 424
    :cond_5
    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/poverka/httpFileClient/activity/ImageActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v13}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$300(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 425
    iget-object v12, v0, Lcom/poverka/httpFileClient/activity/ImageActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v12}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$300(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    iget-object v13, v0, Lcom/poverka/httpFileClient/activity/ImageActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v13}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$300(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f013d

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 426
    return-void

    .line 428
    :cond_6
    if-nez v11, :cond_7

    .line 429
    iget-object v12, v0, Lcom/poverka/httpFileClient/activity/ImageActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v12}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$300(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    iget-object v13, v0, Lcom/poverka/httpFileClient/activity/ImageActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v13}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$300(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f0062

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 430
    return-void

    .line 432
    :cond_7
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const-string v12, "TAG"

    invoke-static {v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v12, "number"

    invoke-virtual {v1, v12, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const-string v12, "volume"

    invoke-virtual {v1, v12, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 436
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const-string v12, "year"

    invoke-virtual {v1, v12, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 437
    const-string v10, "dnType"

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .end local v2    # "calendar":Ljava/util/Calendar;
    .end local v3    # "editNumber":Landroid/widget/EditText;
    .end local v4    # "editVolume":Landroid/widget/EditText;
    .end local v5    # "editYear":Landroid/widget/EditText;
    .end local v6    # "spinnerDN":Landroid/widget/Spinner;
    .end local v7    # "spinnerName":Landroid/widget/Spinner;
    .end local v8    # "spinnerVendor":Landroid/widget/Spinner;
    .end local v9    # "dn":Ljava/lang/String;
    .end local v11    # "deviceTypeId":I
    .end local v17    # "name":Ljava/lang/String;
    .end local v18    # "vendorId":I
    goto :goto_1

    .line 391
    .restart local v2    # "calendar":Ljava/util/Calendar;
    .restart local v3    # "editNumber":Landroid/widget/EditText;
    .restart local v4    # "editVolume":Landroid/widget/EditText;
    .restart local v5    # "editYear":Landroid/widget/EditText;
    .restart local v6    # "spinnerDN":Landroid/widget/Spinner;
    .restart local v7    # "spinnerName":Landroid/widget/Spinner;
    .restart local v8    # "spinnerVendor":Landroid/widget/Spinner;
    :cond_8
    :goto_0
    iget-object v9, v0, Lcom/poverka/httpFileClient/activity/ImageActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v9}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$300(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    iget-object v11, v0, Lcom/poverka/httpFileClient/activity/ImageActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v11}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$300(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/app/Activity;

    move-result-object v11

    const v12, 0x7f0f0075

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 392
    return-void

    .line 438
    .end local v2    # "calendar":Ljava/util/Calendar;
    .end local v3    # "editNumber":Landroid/widget/EditText;
    .end local v4    # "editVolume":Landroid/widget/EditText;
    .end local v5    # "editYear":Landroid/widget/EditText;
    .end local v6    # "spinnerDN":Landroid/widget/Spinner;
    .end local v7    # "spinnerName":Landroid/widget/Spinner;
    .end local v8    # "spinnerVendor":Landroid/widget/Spinner;
    :cond_9
    iget-object v2, v0, Lcom/poverka/httpFileClient/activity/ImageActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v2}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$400(Lcom/poverka/httpFileClient/activity/ImageActivity;)Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;

    move-result-object v2

    sget-object v3, Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;->MEASUREMENT:Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;

    if-ne v2, v3, :cond_b

    .line 439
    iget-object v2, v0, Lcom/poverka/httpFileClient/activity/ImageActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v2}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$500(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0900a2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 441
    .local v2, "editLiter":Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    const-string v4, "value"

    if-nez v3, :cond_a

    .line 442
    const/4 v3, 0x0

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 444
    :cond_a
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float v3, v3, v5

    float-to-int v3, v3

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 438
    .end local v2    # "editLiter":Landroid/widget/EditText;
    :cond_b
    :goto_1
    nop

    .line 447
    :goto_2
    iget-object v2, v0, Lcom/poverka/httpFileClient/activity/ImageActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v2}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$600(Lcom/poverka/httpFileClient/activity/ImageActivity;)I

    move-result v2

    const-string v3, "clicked"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 448
    iget-object v2, v0, Lcom/poverka/httpFileClient/activity/ImageActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v2}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$400(Lcom/poverka/httpFileClient/activity/ImageActivity;)Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;

    move-result-object v2

    const-string v3, "layoutType"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 450
    iget-object v2, v0, Lcom/poverka/httpFileClient/activity/ImageActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v2}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$700(Lcom/poverka/httpFileClient/activity/ImageActivity;)Lcom/poverka/httpFileClient/activity/ImageActivity$OnImageResult;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/poverka/httpFileClient/activity/ImageActivity$OnImageResult;->imageResult(Landroid/os/Bundle;)V

    .line 451
    iget-object v2, v0, Lcom/poverka/httpFileClient/activity/ImageActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/ImageActivity;

    invoke-static {v2}, Lcom/poverka/httpFileClient/activity/ImageActivity;->access$800(Lcom/poverka/httpFileClient/activity/ImageActivity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 452
    return-void
.end method
