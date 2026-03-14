.class Lcom/poverka/httpFileClient/activity/LoadTaskActivity$2;
.super Ljava/lang/Object;
.source "LoadTaskActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/LoadTaskActivity;->initEditDate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/LoadTaskActivity;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/LoadTaskActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/LoadTaskActivity;

    .line 218
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/LoadTaskActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/LoadTaskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .line 221
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 222
    .local v0, "myCalendar":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 223
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 224
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 225
    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/LoadTaskActivity$2;->this$0:Lcom/poverka/httpFileClient/activity/LoadTaskActivity;

    invoke-static {v1, v0}, Lcom/poverka/httpFileClient/activity/LoadTaskActivity;->access$400(Lcom/poverka/httpFileClient/activity/LoadTaskActivity;Ljava/util/Calendar;)V

    .line 226
    return-void
.end method
