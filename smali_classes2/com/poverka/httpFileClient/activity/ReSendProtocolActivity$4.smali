.class Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$4;
.super Ljava/lang/Object;
.source "ReSendProtocolActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;

.field final synthetic val$dateProd:Landroid/app/DatePickerDialog$OnDateSetListener;

.field final synthetic val$editRepeatDate:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;Landroid/widget/EditText;Landroid/app/DatePickerDialog$OnDateSetListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;

    .line 298
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;

    iput-object p2, p0, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$4;->val$editRepeatDate:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$4;->val$dateProd:Landroid/app/DatePickerDialog$OnDateSetListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .line 302
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 303
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd.MM.yyyy HH:mm:ss"

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 304
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "%s %s"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$4;->val$editRepeatDate:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "12:00:00"

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 306
    new-instance v2, Landroid/app/DatePickerDialog;

    iget-object v9, p0, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$4;->this$0:Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;

    iget-object v10, p0, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$4;->val$dateProd:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 307
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v12

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v13

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v2}, Landroid/app/DatePickerDialog;->show()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "sdf":Ljava/text/SimpleDateFormat;
    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 311
    .end local v0    # "e":Ljava/text/ParseException;
    :goto_0
    return-void
.end method
