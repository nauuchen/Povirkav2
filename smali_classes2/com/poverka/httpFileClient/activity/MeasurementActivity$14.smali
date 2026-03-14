.class Lcom/poverka/httpFileClient/activity/MeasurementActivity$14;
.super Ljava/lang/Object;
.source "MeasurementActivity.java"

# interfaces
.implements Lcom/poverka/httpFileClient/activity/ImageActivity$OnImageResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/poverka/httpFileClient/activity/MeasurementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    .line 1635
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$14;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imageResult(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 1638
    const-string v0, "clicked"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1639
    .local v0, "clicked":I
    const-string v1, "layoutType"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    sget-object v2, Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;->START:Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;

    if-ne v1, v2, :cond_0

    .line 1640
    const-string v1, "number"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1641
    .local v1, "counterNumber":Ljava/lang/String;
    const-string v2, "volume"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1642
    .local v2, "volume":I
    const-string v3, "year"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1643
    .local v3, "year":I
    const-string v4, "dnType"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1644
    .local v4, "dnType":I
    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$14;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v3, v4}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setCounterInfo(Ljava/lang/String;III)V

    .line 1646
    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$14;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$4100(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/MyPagerAdapter;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/poverka/httpFileClient/util/MyPagerAdapter;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1647
    .local v5, "page":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$14;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v6, v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$4300(Lcom/poverka/httpFileClient/activity/MeasurementActivity;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1650
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 1651
    .local v6, "json":Lorg/json/JSONObject;
    sget-object v7, Lcom/poverka/httpFileClient/util/MyJSON;->counter_number:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v7}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1652
    sget-object v7, Lcom/poverka/httpFileClient/util/MyJSON;->start_volume:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v7}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v9, "%05d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1653
    sget-object v7, Lcom/poverka/httpFileClient/util/MyJSON;->production_year:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v7}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1654
    sget-object v7, Lcom/poverka/httpFileClient/util/MyJSON;->type_id:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v7}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1655
    sget-object v7, Lcom/poverka/httpFileClient/util/MyJSON;->water_temperature:Lcom/poverka/httpFileClient/util/MyJSON;

    invoke-virtual {v7}, Lcom/poverka/httpFileClient/util/MyJSON;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$14;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v8}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v8

    invoke-virtual {v8}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getWaterTemperature()F

    move-result v8

    const/high16 v9, 0x447a0000    # 1000.0f

    mul-float v8, v8, v9

    float-to-double v8, v8

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1656
    iget-object v7, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$14;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v7}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1700(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/HttpFileClient;

    move-result-object v7

    const-string v8, "1/current/counter_info.json"

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/poverka/httpFileClient/util/HttpFileClient;->upload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1659
    .end local v6    # "json":Lorg/json/JSONObject;
    goto :goto_0

    .line 1657
    :catch_0
    move-exception v6

    .line 1658
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 1660
    .end local v1    # "counterNumber":Ljava/lang/String;
    .end local v2    # "volume":I
    .end local v3    # "year":I
    .end local v4    # "dnType":I
    .end local v5    # "page":Landroid/widget/TextView;
    .end local v6    # "e":Lorg/json/JSONException;
    :goto_0
    goto/16 :goto_1

    .line 1661
    :cond_0
    const-string v1, "value"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1663
    .local v1, "value":I
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$14;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setValueByNumber(II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1664
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$14;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1600(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1665
    .local v2, "msg":Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1666
    .local v3, "bundleAlert":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$14;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const v5, 0x7f0f001e

    invoke-virtual {v4, v5}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "tittle"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$14;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const v5, 0x7f0f0162

    invoke-virtual {v4, v5}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "message"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1669
    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$14;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1600(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$UIhandler;->sendMessage(Landroid/os/Message;)Z

    .line 1672
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "bundleAlert":Landroid/os/Bundle;
    :cond_1
    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$14;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$4100(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/MyPagerAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/poverka/httpFileClient/util/MyPagerAdapter;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1673
    .local v2, "page":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$14;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v3, v0}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$4300(Lcom/poverka/httpFileClient/activity/MeasurementActivity;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1674
    add-int/lit8 v3, v0, -0x1

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$14;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v3}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$4100(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/MyPagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/poverka/httpFileClient/util/MyPagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    if-le v3, v4, :cond_2

    .line 1675
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$14;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v3}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$4100(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/MyPagerAdapter;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Lcom/poverka/httpFileClient/util/MyPagerAdapter;->getView(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/widget/TextView;

    .line 1676
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$14;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v3, v4}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$4300(Lcom/poverka/httpFileClient/activity/MeasurementActivity;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1679
    :cond_2
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$14;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v3}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->hasEndPhoto(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1680
    iget-object v3, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$14;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v3}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1700(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/HttpFileClient;

    move-result-object v3

    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$14;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getFileNameByNumber(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/poverka/httpFileClient/util/HttpFileClient;->download(Ljava/lang/String;)V

    .line 1683
    .end local v1    # "value":I
    .end local v2    # "page":Landroid/widget/TextView;
    :cond_3
    :goto_1
    return-void
.end method
