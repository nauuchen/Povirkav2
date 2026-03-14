.class public Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ResetProtocolNumberActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$UiHandler;
    }
.end annotation


# static fields
.field private static final BUTTON_HEIGHT_RATIO:F = 0.15f

.field private static final BUTTON_WIDTH_RATIO:F = 0.45f

.field private static final MARGIN_HEIGHT_RATIO:F = 0.03f

.field private static final MARGIN_WIDTH_RATIO:F = 0.03f

.field private static final TAG:Ljava/lang/String; = "ReSendProtocolActivity"

.field private static final TEXT_L_HEIGHT_RATIO:F = 0.065f

.field private static final TEXT_S_HEIGHT_RATIO:F = 0.05f


# instance fields
.field private mHttpFileClient:Lcom/poverka/httpFileClient/util/HttpFileClient;

.field public mHttpReceived:Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;

.field private mUiHandler:Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$UiHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 58
    new-instance v0, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$1;

    invoke-direct {v0, p0}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$1;-><init>(Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;)V

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->mHttpReceived:Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;

    return-void
.end method

.method static synthetic access$100(Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;)Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$UiHandler;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;

    .line 33
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->mUiHandler:Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$UiHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;)Lcom/poverka/httpFileClient/util/HttpFileClient;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;

    .line 33
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->mHttpFileClient:Lcom/poverka/httpFileClient/util/HttpFileClient;

    return-object v0
.end method

.method private initViews()V
    .locals 24

    .line 169
    move-object/from16 v0, p0

    const v1, 0x7f0901a9

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 170
    .local v1, "textReset":Landroid/widget/TextView;
    const v2, 0x7f0901bd

    invoke-virtual {v0, v2}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 171
    .local v2, "textDate":Landroid/widget/TextView;
    const v3, 0x7f0901be

    invoke-virtual {v0, v3}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 172
    .local v3, "textNumber":Landroid/widget/TextView;
    const v4, 0x7f0900ae

    invoke-virtual {v0, v4}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 173
    .local v5, "editDate":Landroid/widget/EditText;
    const v6, 0x7f0900af

    invoke-virtual {v0, v6}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 174
    .local v6, "editNumber":Landroid/widget/EditText;
    const v7, 0x7f090054

    invoke-virtual {v0, v7}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 175
    .local v7, "buttonSetCounter":Landroid/widget/Button;
    const v8, 0x7f09004f

    invoke-virtual {v0, v8}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 177
    .local v8, "buttonManual":Landroid/widget/Button;
    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    .line 178
    .local v9, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 180
    iget v10, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 181
    .local v10, "screenHeight":I
    iget v11, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 182
    .local v11, "screenWidth":I
    int-to-float v12, v10

    const v13, 0x3e19999a    # 0.15f

    mul-float v12, v12, v13

    float-to-int v12, v12

    .line 183
    .local v12, "buttonHeight":I
    int-to-float v13, v11

    const v14, 0x3ee66666    # 0.45f

    mul-float v13, v13, v14

    float-to-int v13, v13

    .line 184
    .local v13, "buttonWidth":I
    int-to-float v14, v10

    const v15, 0x3d851eb8    # 0.065f

    mul-float v14, v14, v15

    float-to-int v14, v14

    .line 185
    .local v14, "textLHeight":I
    int-to-float v15, v10

    const v16, 0x3d4ccccd    # 0.05f

    mul-float v15, v15, v16

    float-to-int v15, v15

    .line 186
    .local v15, "textSHeight":I
    int-to-float v4, v10

    const v17, 0x3cf5c28f    # 0.03f

    mul-float v4, v4, v17

    float-to-int v4, v4

    .line 187
    .local v4, "marginHeight":I
    move-object/from16 v18, v9

    .end local v9    # "metrics":Landroid/util/DisplayMetrics;
    .local v18, "metrics":Landroid/util/DisplayMetrics;
    int-to-float v9, v11

    mul-float v9, v9, v17

    float-to-int v9, v9

    .line 189
    .local v9, "marginWidth":I
    invoke-virtual {v5}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move/from16 v19, v10

    .end local v10    # "screenHeight":I
    .local v19, "screenHeight":I
    move-object/from16 v10, v17

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 190
    .local v10, "paramsC":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    move/from16 v17, v11

    .end local v11    # "screenWidth":I
    .local v17, "screenWidth":I
    mul-int/lit8 v11, v4, 0x5

    iput v11, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 191
    iput v9, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    .line 192
    div-int/lit8 v11, v13, 0x2

    iput v11, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 193
    invoke-virtual {v5}, Landroid/widget/EditText;->requestLayout()V

    .line 195
    invoke-virtual {v6}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    move-object v10, v11

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 196
    mul-int/lit8 v11, v4, 0x5

    iput v11, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 197
    iput v9, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 198
    div-int/lit8 v11, v13, 0x2

    iput v11, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 199
    invoke-virtual {v6}, Landroid/widget/EditText;->requestLayout()V

    .line 201
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    move-object v10, v11

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 202
    iput v4, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    .line 203
    iput v9, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    .line 204
    invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V

    .line 206
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    move-object v10, v11

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 207
    iput v4, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    .line 208
    iput v9, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 209
    invoke-virtual {v3}, Landroid/widget/TextView;->requestLayout()V

    .line 211
    invoke-virtual {v7}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    move-object v10, v11

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 212
    iput v4, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 213
    iput v13, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 214
    iput v12, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 215
    invoke-virtual {v7}, Landroid/widget/Button;->requestLayout()V

    .line 217
    invoke-virtual {v8}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    move-object v10, v11

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 218
    iput v4, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 219
    iput v13, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 220
    iput v12, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 221
    invoke-virtual {v8}, Landroid/widget/Button;->requestLayout()V

    .line 223
    int-to-float v11, v14

    move/from16 v20, v4

    .end local v4    # "marginHeight":I
    .local v20, "marginHeight":I
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 224
    int-to-float v11, v15

    invoke-virtual {v2, v4, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 225
    int-to-float v11, v15

    invoke-virtual {v3, v4, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 226
    int-to-float v11, v15

    invoke-virtual {v5, v4, v11}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 227
    int-to-float v11, v15

    invoke-virtual {v6, v4, v11}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 228
    int-to-float v11, v14

    invoke-virtual {v7, v4, v11}, Landroid/widget/Button;->setTextSize(IF)V

    .line 229
    int-to-float v11, v14

    invoke-virtual {v8, v4, v11}, Landroid/widget/Button;->setTextSize(IF)V

    .line 231
    const-string v4, "dd.MM.yyyy"

    .line 232
    .local v4, "myFormat":Ljava/lang/String;
    new-instance v11, Ljava/text/SimpleDateFormat;

    move-object/from16 v21, v1

    .end local v1    # "textReset":Landroid/widget/TextView;
    .local v21, "textReset":Landroid/widget/TextView;
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v11, v4, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v1, v11

    .line 233
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 235
    .local v11, "myCalendar":Ljava/util/Calendar;
    move-object/from16 v22, v2

    .end local v2    # "textDate":Landroid/widget/TextView;
    .local v22, "textDate":Landroid/widget/TextView;
    new-instance v2, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$3;

    invoke-direct {v2, v0, v11, v1}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$3;-><init>(Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;Ljava/util/Calendar;Ljava/text/SimpleDateFormat;)V

    .line 246
    .local v2, "dateProd":Landroid/app/DatePickerDialog$OnDateSetListener;
    move-object/from16 v23, v3

    const v3, 0x7f0900ae

    .end local v3    # "textNumber":Landroid/widget/TextView;
    .local v23, "textNumber":Landroid/widget/TextView;
    invoke-virtual {v0, v3}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 247
    .local v3, "editResetDate":Landroid/widget/EditText;
    move-object/from16 v16, v4

    .end local v4    # "myFormat":Ljava/lang/String;
    .local v16, "myFormat":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 248
    new-instance v4, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$4;

    invoke-direct {v4, v0, v3, v2}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$4;-><init>(Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;Landroid/widget/EditText;Landroid/app/DatePickerDialog$OnDateSetListener;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    const-string v4, "1"

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 265
    return-void
.end method

.method private resetCounter()V
    .locals 8

    .line 122
    const v0, 0x7f0900ae

    invoke-virtual {p0, v0}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 123
    .local v0, "editResetDate":Landroid/widget/EditText;
    const v1, 0x7f0900af

    invoke-virtual {p0, v1}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 125
    .local v1, "editResetNumber":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 129
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "."

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "date":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 132
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    .line 138
    nop

    .line 141
    :try_start_1
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 145
    .local v4, "number":I
    nop

    .line 146
    if-ge v4, v3, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0f0118

    invoke-virtual {p0, v6}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 148
    return-void

    .line 151
    :cond_1
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const-string v3, "1/archive/%s/%d"

    invoke-static {v5, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "path":Ljava/lang/String;
    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->mHttpFileClient:Lcom/poverka/httpFileClient/util/HttpFileClient;

    invoke-virtual {v5, v3}, Lcom/poverka/httpFileClient/util/HttpFileClient;->show(Ljava/lang/String;)V

    .line 153
    return-void

    .line 142
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "number":I
    :catch_0
    move-exception v4

    .line 143
    .local v4, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0f0119

    invoke-virtual {p0, v6}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 144
    return-void

    .line 133
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    :try_start_2
    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-direct {v4}, Ljava/lang/NumberFormatException;-><init>()V

    .end local v0    # "editResetDate":Landroid/widget/EditText;
    .end local v1    # "editResetNumber":Landroid/widget/EditText;
    .end local v2    # "date":Ljava/lang/String;
    throw v4
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 135
    .restart local v0    # "editResetDate":Landroid/widget/EditText;
    .restart local v1    # "editResetNumber":Landroid/widget/EditText;
    .restart local v2    # "date":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 136
    .restart local v4    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0f01b6

    invoke-virtual {p0, v6}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 137
    return-void

    .line 126
    .end local v2    # "date":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0f0133

    invoke-virtual {p0, v4}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 127
    return-void
.end method

.method private showManual()V
    .locals 3

    .line 156
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 157
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0f00b2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 158
    const v1, 0x7f0f00b1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 159
    new-instance v1, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$2;

    invoke-direct {v1, p0}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$2;-><init>(Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;)V

    const-string v2, "OK"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 165
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 166
    return-void
.end method


# virtual methods
.method public ManualClicked(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 118
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->showManual()V

    .line 119
    return-void
.end method

.method public ResetCounterClicked(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 114
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->resetCounter()V

    .line 115
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 48
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f0c0022

    invoke-virtual {p0, v0}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->setContentView(I)V

    .line 51
    new-instance v0, Lcom/poverka/httpFileClient/util/HttpFileClient;

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->mHttpReceived:Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;

    invoke-direct {v0, v1}, Lcom/poverka/httpFileClient/util/HttpFileClient;-><init>(Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;)V

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->mHttpFileClient:Lcom/poverka/httpFileClient/util/HttpFileClient;

    .line 52
    new-instance v0, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$UiHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$UiHandler;-><init>(Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$1;)V

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->mUiHandler:Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity$UiHandler;

    .line 54
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/ResetProtocolNumberActivity;->initViews()V

    .line 55
    return-void
.end method
