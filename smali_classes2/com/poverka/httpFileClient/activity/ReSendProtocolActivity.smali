.class public Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ReSendProtocolActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$UiHandler;
    }
.end annotation


# static fields
.field private static final BUTTON_HEIGHT_RATIO:F = 0.13f

.field private static final BUTTON_WIDTH_RATIO:F = 0.45f

.field private static final MARGIN_HEIGHT_RATIO:F = 0.03f

.field private static final MARGIN_WIDTH_RATIO:F = 0.03f

.field private static final TAG:Ljava/lang/String; = "ReSendProtocolActivity"

.field private static final TEXT_L_HEIGHT_RATIO:F = 0.055f

.field private static final TEXT_S_HEIGHT_RATIO:F = 0.045f


# instance fields
.field private fileNotFoundCounter:I

.field private mHttpFileClient:Lcom/poverka/httpFileClient/util/HttpFileClient;

.field public mHttpReceived:Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;

.field private mUiHandler:Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$UiHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 61
    new-instance v0, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$1;

    invoke-direct {v0, p0}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$1;-><init>(Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;)V

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->mHttpReceived:Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;

    return-void
.end method

.method static synthetic access$100(Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;)Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$UiHandler;
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;

    .line 34
    iget-object v0, p0, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->mUiHandler:Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$UiHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;

    .line 34
    iget v0, p0, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->fileNotFoundCounter:I

    return v0
.end method

.method static synthetic access$208(Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;

    .line 34
    iget v0, p0, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->fileNotFoundCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->fileNotFoundCounter:I

    return v0
.end method

.method private initViews()V
    .locals 25

    .line 211
    move-object/from16 v0, p0

    const v1, 0x7f0901a8

    invoke-virtual {v0, v1}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 212
    .local v1, "textReSend":Landroid/widget/TextView;
    const v2, 0x7f0901bd

    invoke-virtual {v0, v2}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 213
    .local v2, "textDate":Landroid/widget/TextView;
    const v3, 0x7f0901be

    invoke-virtual {v0, v3}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 214
    .local v3, "textNumber":Landroid/widget/TextView;
    const v4, 0x7f0900ac

    invoke-virtual {v0, v4}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 215
    .local v5, "editDate":Landroid/widget/EditText;
    const v6, 0x7f0900ad

    invoke-virtual {v0, v6}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 216
    .local v6, "editNumber":Landroid/widget/EditText;
    const v7, 0x7f090051

    invoke-virtual {v0, v7}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 217
    .local v7, "buttonSend":Landroid/widget/Button;
    const v8, 0x7f09004f

    invoke-virtual {v0, v8}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 218
    .local v8, "buttonManual":Landroid/widget/Button;
    const v9, 0x7f090066

    invoke-virtual {v0, v9}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 220
    .local v9, "buttonSkip":Landroid/widget/Button;
    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    .line 221
    .local v10, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 223
    iget v11, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 224
    .local v11, "screenHeight":I
    iget v12, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 225
    .local v12, "screenWidth":I
    int-to-float v13, v11

    const v14, 0x3e051eb8    # 0.13f

    mul-float v13, v13, v14

    float-to-int v13, v13

    .line 226
    .local v13, "buttonHeight":I
    int-to-float v14, v12

    const v15, 0x3ee66666    # 0.45f

    mul-float v14, v14, v15

    float-to-int v14, v14

    .line 227
    .local v14, "buttonWidth":I
    int-to-float v15, v11

    const v16, 0x3d6147ae    # 0.055f

    mul-float v15, v15, v16

    float-to-int v15, v15

    .line 228
    .local v15, "textLHeight":I
    int-to-float v4, v11

    const v17, 0x3d3851ec    # 0.045f

    mul-float v4, v4, v17

    float-to-int v4, v4

    .line 229
    .local v4, "textSHeight":I
    move-object/from16 v17, v10

    .end local v10    # "metrics":Landroid/util/DisplayMetrics;
    .local v17, "metrics":Landroid/util/DisplayMetrics;
    int-to-float v10, v11

    const v18, 0x3cf5c28f    # 0.03f

    mul-float v10, v10, v18

    float-to-int v10, v10

    .line 230
    .local v10, "marginHeight":I
    move/from16 v19, v11

    .end local v11    # "screenHeight":I
    .local v19, "screenHeight":I
    int-to-float v11, v12

    mul-float v11, v11, v18

    float-to-int v11, v11

    .line 232
    .local v11, "marginWidth":I
    invoke-virtual {v5}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move/from16 v20, v12

    .end local v12    # "screenWidth":I
    .local v20, "screenWidth":I
    move-object/from16 v12, v18

    check-cast v12, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 233
    .local v12, "paramsC":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    mul-int/lit8 v0, v10, 0x5

    iput v0, v12, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 234
    iput v11, v12, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    .line 235
    div-int/lit8 v0, v14, 0x2

    iput v0, v12, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 236
    invoke-virtual {v5}, Landroid/widget/EditText;->requestLayout()V

    .line 238
    invoke-virtual {v6}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 239
    .end local v12    # "paramsC":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .local v0, "paramsC":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    mul-int/lit8 v12, v10, 0x5

    iput v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 240
    iput v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 241
    div-int/lit8 v12, v14, 0x2

    iput v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 242
    invoke-virtual {v6}, Landroid/widget/EditText;->requestLayout()V

    .line 244
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 245
    iput v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    .line 246
    iput v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    .line 247
    invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V

    .line 249
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 250
    iput v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    .line 251
    iput v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 252
    invoke-virtual {v3}, Landroid/widget/TextView;->requestLayout()V

    .line 254
    invoke-virtual {v7}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 255
    iput v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 256
    iput v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 257
    iput v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 258
    invoke-virtual {v7}, Landroid/widget/Button;->requestLayout()V

    .line 260
    invoke-virtual {v8}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 261
    iput v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 262
    iput v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 263
    iput v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 264
    invoke-virtual {v8}, Landroid/widget/Button;->requestLayout()V

    .line 266
    invoke-virtual {v9}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 267
    iput v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 268
    iput v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 269
    iput v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 270
    invoke-virtual {v9}, Landroid/widget/Button;->requestLayout()V

    .line 272
    int-to-float v12, v15

    move-object/from16 v18, v0

    .end local v0    # "paramsC":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .local v18, "paramsC":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    const/4 v0, 0x0

    invoke-virtual {v1, v0, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 273
    int-to-float v12, v4

    invoke-virtual {v2, v0, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 274
    int-to-float v12, v4

    invoke-virtual {v3, v0, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 275
    int-to-float v12, v4

    invoke-virtual {v5, v0, v12}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 276
    int-to-float v12, v4

    invoke-virtual {v6, v0, v12}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 277
    int-to-float v12, v15

    invoke-virtual {v7, v0, v12}, Landroid/widget/Button;->setTextSize(IF)V

    .line 278
    int-to-float v12, v15

    invoke-virtual {v8, v0, v12}, Landroid/widget/Button;->setTextSize(IF)V

    .line 279
    int-to-float v12, v15

    invoke-virtual {v9, v0, v12}, Landroid/widget/Button;->setTextSize(IF)V

    .line 281
    const-string v0, "dd.MM.yyyy"

    .line 282
    .local v0, "myFormat":Ljava/lang/String;
    new-instance v12, Ljava/text/SimpleDateFormat;

    move-object/from16 v21, v1

    .end local v1    # "textReSend":Landroid/widget/TextView;
    .local v21, "textReSend":Landroid/widget/TextView;
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v12, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v1, v12

    .line 283
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 285
    .local v12, "myCalendar":Ljava/util/Calendar;
    move-object/from16 v22, v0

    .end local v0    # "myFormat":Ljava/lang/String;
    .local v22, "myFormat":Ljava/lang/String;
    new-instance v0, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$3;

    move-object/from16 v23, v2

    move-object/from16 v2, p0

    .end local v2    # "textDate":Landroid/widget/TextView;
    .local v23, "textDate":Landroid/widget/TextView;
    invoke-direct {v0, v2, v12, v1}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$3;-><init>(Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;Ljava/util/Calendar;Ljava/text/SimpleDateFormat;)V

    .line 296
    .local v0, "dateProd":Landroid/app/DatePickerDialog$OnDateSetListener;
    move-object/from16 v24, v3

    const v3, 0x7f0900ac

    .end local v3    # "textNumber":Landroid/widget/TextView;
    .local v24, "textNumber":Landroid/widget/TextView;
    invoke-virtual {v2, v3}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 297
    .local v3, "editRepeatDate":Landroid/widget/EditText;
    move/from16 v16, v4

    .end local v4    # "textSHeight":I
    .local v16, "textSHeight":I
    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 298
    new-instance v4, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$4;

    invoke-direct {v4, v2, v3, v0}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$4;-><init>(Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;Landroid/widget/EditText;Landroid/app/DatePickerDialog$OnDateSetListener;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    const-string v4, "1"

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 315
    return-void
.end method

.method private repeatSend()V
    .locals 10

    .line 118
    const v0, 0x7f0900ac

    invoke-virtual {p0, v0}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 119
    .local v0, "editRepeatDate":Landroid/widget/EditText;
    const v1, 0x7f0900ad

    invoke-virtual {p0, v1}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 121
    .local v1, "editRepeatNumber":Landroid/widget/EditText;
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

    .line 125
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "."

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "date":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 128
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    .line 134
    nop

    .line 137
    :try_start_1
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    .local v4, "number":I
    nop

    .line 142
    if-ge v4, v3, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 144
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 145
    .local v6, "conf":Landroid/content/res/Configuration;
    iget-object v7, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "123"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const v7, 0x7f0f0118

    invoke-virtual {p0, v7}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0, v7}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 148
    return-void

    .line 151
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "conf":Landroid/content/res/Configuration;
    :cond_1
    const/4 v5, 0x0

    iput v5, p0, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->fileNotFoundCounter:I

    .line 152
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v2, v8, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    const-string v9, "1/archive/%s/%d/ControlFile.txt"

    invoke-static {v6, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 153
    .local v6, "path":Ljava/lang/String;
    iget-object v8, p0, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->mHttpFileClient:Lcom/poverka/httpFileClient/util/HttpFileClient;

    invoke-virtual {v8, v6}, Lcom/poverka/httpFileClient/util/HttpFileClient;->delete(Ljava/lang/String;)V

    .line 154
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v3

    const-string v3, "1/archive/%s/%d/Control.txt"

    invoke-static {v8, v3, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 155
    .end local v6    # "path":Ljava/lang/String;
    .local v3, "path":Ljava/lang/String;
    iget-object v5, p0, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->mHttpFileClient:Lcom/poverka/httpFileClient/util/HttpFileClient;

    invoke-virtual {v5, v3}, Lcom/poverka/httpFileClient/util/HttpFileClient;->delete(Ljava/lang/String;)V

    .line 156
    return-void

    .line 138
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "number":I
    :catch_0
    move-exception v4

    .line 139
    .local v4, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0f0119

    invoke-virtual {p0, v6}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 140
    return-void

    .line 129
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    :try_start_2
    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-direct {v4}, Ljava/lang/NumberFormatException;-><init>()V

    .end local v0    # "editRepeatDate":Landroid/widget/EditText;
    .end local v1    # "editRepeatNumber":Landroid/widget/EditText;
    .end local v2    # "date":Ljava/lang/String;
    throw v4
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 131
    .restart local v0    # "editRepeatDate":Landroid/widget/EditText;
    .restart local v1    # "editRepeatNumber":Landroid/widget/EditText;
    .restart local v2    # "date":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 132
    .restart local v4    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0f01b6

    invoke-virtual {p0, v6}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 133
    return-void

    .line 122
    .end local v2    # "date":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0f0133

    invoke-virtual {p0, v4}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 123
    return-void
.end method

.method private showManual()V
    .locals 3

    .line 159
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 160
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0f00b0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 161
    const v1, 0x7f0f00af

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 162
    new-instance v1, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$2;

    invoke-direct {v1, p0}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$2;-><init>(Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;)V

    const-string v2, "OK"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 168
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 169
    return-void
.end method

.method private skip()V
    .locals 10

    .line 172
    const v0, 0x7f0900ac

    invoke-virtual {p0, v0}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 173
    .local v0, "editRepeatDate":Landroid/widget/EditText;
    const v1, 0x7f0900ad

    invoke-virtual {p0, v1}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 175
    .local v1, "editRepeatNumber":Landroid/widget/EditText;
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

    .line 179
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "."

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, "date":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 182
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    .line 188
    nop

    .line 191
    :try_start_1
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 195
    .local v4, "number":I
    nop

    .line 196
    if-ge v4, v3, :cond_1

    .line 197
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 198
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 199
    .local v6, "conf":Landroid/content/res/Configuration;
    iget-object v7, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "123"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const v7, 0x7f0f0118

    invoke-virtual {p0, v7}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0, v7}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 202
    return-void

    .line 205
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "conf":Landroid/content/res/Configuration;
    :cond_1
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const-string v3, "1/archive/%s/%d/ControlFile.txt"

    invoke-static {v5, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, "path":Ljava/lang/String;
    const-string v5, "{system.json;}"

    .line 207
    .local v5, "data":Ljava/lang/String;
    iget-object v6, p0, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->mHttpFileClient:Lcom/poverka/httpFileClient/util/HttpFileClient;

    invoke-virtual {v6, v3, v5}, Lcom/poverka/httpFileClient/util/HttpFileClient;->upload(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void

    .line 192
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "number":I
    .end local v5    # "data":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 193
    .local v4, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0f0119

    invoke-virtual {p0, v6}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 194
    return-void

    .line 183
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    :try_start_2
    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-direct {v4}, Ljava/lang/NumberFormatException;-><init>()V

    .end local v0    # "editRepeatDate":Landroid/widget/EditText;
    .end local v1    # "editRepeatNumber":Landroid/widget/EditText;
    .end local v2    # "date":Ljava/lang/String;
    throw v4
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 185
    .restart local v0    # "editRepeatDate":Landroid/widget/EditText;
    .restart local v1    # "editRepeatNumber":Landroid/widget/EditText;
    .restart local v2    # "date":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 186
    .restart local v4    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0f01b6

    invoke-virtual {p0, v6}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 187
    return-void

    .line 176
    .end local v2    # "date":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0f0133

    invoke-virtual {p0, v4}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 177
    return-void
.end method


# virtual methods
.method public ManualClicked(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 110
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->showManual()V

    .line 111
    return-void
.end method

.method public ReSendClicked(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 106
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->repeatSend()V

    .line 107
    return-void
.end method

.method public SkipClicked(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 114
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->skip()V

    .line 115
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 51
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f0c0021

    invoke-virtual {p0, v0}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->setContentView(I)V

    .line 54
    new-instance v0, Lcom/poverka/httpFileClient/util/HttpFileClient;

    iget-object v1, p0, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->mHttpReceived:Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;

    invoke-direct {v0, v1}, Lcom/poverka/httpFileClient/util/HttpFileClient;-><init>(Lcom/poverka/httpFileClient/util/HttpFileClient$OnMessageReceived;)V

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->mHttpFileClient:Lcom/poverka/httpFileClient/util/HttpFileClient;

    .line 55
    new-instance v0, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$UiHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$UiHandler;-><init>(Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$1;)V

    iput-object v0, p0, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->mUiHandler:Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity$UiHandler;

    .line 57
    invoke-direct {p0}, Lcom/poverka/httpFileClient/activity/ReSendProtocolActivity;->initViews()V

    .line 58
    return-void
.end method
