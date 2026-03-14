.class Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$3;
.super Ljava/lang/Object;
.source "ResetProtocolNumberActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;

.field final synthetic val$myCalendar:Ljava/util/Calendar;

.field final synthetic val$sdf:Ljava/text/SimpleDateFormat;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;Ljava/util/Calendar;Ljava/text/SimpleDateFormat;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;

    .line 235
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;

    iput-object p2, p0, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$3;->val$myCalendar:Ljava/util/Calendar;

    iput-object p3, p0, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$3;->val$sdf:Ljava/text/SimpleDateFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .line 238
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$3;->val$myCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 239
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$3;->val$myCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 240
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$3;->val$myCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 242
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$3;->this$0:Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;

    const v1, 0x7f0900ae

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 243
    .local v0, "edittext":Landroid/widget/EditText;
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$3;->val$sdf:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$3;->val$myCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 244
    return-void
.end method
