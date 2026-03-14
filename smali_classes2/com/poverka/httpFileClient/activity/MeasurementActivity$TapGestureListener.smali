.class Lcom/poverka/httpFileClient/activity/MeasurementActivity$TapGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MeasurementActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/poverka/httpFileClient/activity/MeasurementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TapGestureListener"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;


# direct methods
.method private constructor <init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Landroid/app/Activity;)V
    .locals 0
    .param p2, "activity"    # Landroid/app/Activity;

    .line 1595
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$TapGestureListener;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 1596
    iput-object p2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$TapGestureListener;->activity:Landroid/app/Activity;

    .line 1597
    return-void
.end method

.method synthetic constructor <init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Landroid/app/Activity;Lcom/poverka/httpFileClient/activity/MeasurementActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity;
    .param p2, "x1"    # Landroid/app/Activity;
    .param p3, "x2"    # Lcom/poverka/httpFileClient/activity/MeasurementActivity$1;

    .line 1592
    invoke-direct {p0, p1, p2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity$TapGestureListener;-><init>(Lcom/poverka/httpFileClient/activity/MeasurementActivity;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 1601
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$TapGestureListener;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    const v1, 0x7f09006a

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1602
    .local v0, "buttonStart":Landroid/widget/Button;
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$TapGestureListener;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v1}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$4100(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/MyPagerAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$TapGestureListener;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v2}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$4000(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/MyPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/util/MyPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/poverka/httpFileClient/util/MyPagerAdapter;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1603
    .local v1, "view":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1604
    return v3

    .line 1606
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1607
    return v3

    .line 1610
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1611
    .local v2, "bundle":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$TapGestureListener;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$4000(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/MyPager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/util/MyPager;->getCurrentItem()I

    move-result v4

    const-string v5, "clicked"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1612
    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$TapGestureListener;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$4000(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/MyPager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/util/MyPager;->getCurrentItem()I

    move-result v4

    const-string v5, "image"

    const-string v6, "layoutType"

    if-nez v4, :cond_2

    .line 1613
    sget-object v4, Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;->START:Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1614
    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$TapGestureListener;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v4

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getTestPhoto()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1615
    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$TapGestureListener;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v4

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getCounterNumber()Ljava/lang/String;

    move-result-object v4

    const-string v5, "number"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1616
    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$TapGestureListener;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v4

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getInitialVolume()I

    move-result v4

    const-string v5, "volume"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1617
    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$TapGestureListener;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v4

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getProductionYear()I

    move-result v4

    const-string v5, "year"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1618
    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$TapGestureListener;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v4

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getDNtypeNumber()I

    move-result v4

    const-string v5, "dnType"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1619
    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$TapGestureListener;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v4

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getChar1()Ljava/lang/String;

    move-result-object v4

    const-string v5, "char1"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$TapGestureListener;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v4

    invoke-virtual {v4}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getChar2()Ljava/lang/String;

    move-result-object v4

    const-string v5, "char2"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1623
    :cond_2
    sget-object v4, Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;->MEASUREMENT:Lcom/poverka/httpFileClient/activity/ImageActivity$LayoutType;

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1624
    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$TapGestureListener;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v4

    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$TapGestureListener;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$4000(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/MyPager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/poverka/httpFileClient/util/MyPager;->getCurrentItem()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getBitmapByNumber(I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1625
    iget-object v4, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$TapGestureListener;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v4}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$1500(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v4

    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$TapGestureListener;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$4000(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/util/MyPager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/util/MyPager;->getCurrentItem()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getValueByNumber(I)I

    move-result v4

    const-string v5, "value"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1628
    :goto_0
    new-instance v4, Lcom/poverka/httpFileClient/activity/ImageActivity;

    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$TapGestureListener;->activity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/MeasurementActivity$TapGestureListener;->this$0:Lcom/poverka/httpFileClient/activity/MeasurementActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/MeasurementActivity;->access$4200(Lcom/poverka/httpFileClient/activity/MeasurementActivity;)Lcom/poverka/httpFileClient/activity/ImageActivity$OnImageResult;

    move-result-object v6

    invoke-direct {v4, v5, v6, v2}, Lcom/poverka/httpFileClient/activity/ImageActivity;-><init>(Landroid/app/Activity;Lcom/poverka/httpFileClient/activity/ImageActivity$OnImageResult;Landroid/os/Bundle;)V

    .line 1630
    return v3
.end method
