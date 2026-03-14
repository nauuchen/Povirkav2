.class Lcom/poverka/httpFileClient/activity/StateActivity$5;
.super Ljava/lang/Object;
.source "StateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/StateActivity;->TestClicked(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

.field final synthetic val$spinnerMechanismType:Landroid/widget/Spinner;

.field final synthetic val$spinnerQ:Landroid/widget/Spinner;

.field final synthetic val$spinnerQName:Landroid/widget/Spinner;

.field final synthetic val$spinnerRClass:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/StateActivity;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/StateActivity;

    .line 957
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/StateActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    iput-object p2, p0, Lcom/poverka/httpFileClient/activity/StateActivity$5;->val$spinnerQName:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/poverka/httpFileClient/activity/StateActivity$5;->val$spinnerQ:Landroid/widget/Spinner;

    iput-object p4, p0, Lcom/poverka/httpFileClient/activity/StateActivity$5;->val$spinnerRClass:Landroid/widget/Spinner;

    iput-object p5, p0, Lcom/poverka/httpFileClient/activity/StateActivity$5;->val$spinnerMechanismType:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 16
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 964
    move-object/from16 v1, p0

    const-string v2, "4.0"

    const-string v3, "2.5"

    const-string v4, "1.6"

    const-string v5, "1.0"

    const-string v6, "3.5"

    const-string v7, "2.5"

    const-string v8, "1.5"

    const-string v9, "1.0"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 965
    .local v2, "char1Array":[Ljava/lang/String;
    const-string v3, "25.0"

    const-string v4, "40.0"

    const-string v5, "50.0"

    const-string v6, "63.0"

    const-string v7, "80.0"

    const-string v8, "100.0"

    const-string v9, "25.0"

    const-string v10, "50.0"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 966
    .local v3, "char2Array":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 967
    .local v0, "temperatureType":I
    const/4 v4, 0x0

    .line 968
    .local v4, "testNumber":I
    iget-object v5, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v5}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v5

    invoke-virtual {v5}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getWaterTemperatureRound()I

    move-result v5

    .line 970
    .local v5, "temp":I
    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v6}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v6

    int-to-float v7, v5

    invoke-virtual {v6, v7}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setWaterTemperature(F)V

    .line 972
    const/16 v6, 0x1e

    if-gt v5, v6, :cond_0

    const/4 v0, 0x1

    move v7, v0

    goto :goto_0

    .line 973
    :cond_0
    const/4 v0, 0x2

    move v7, v0

    .line 975
    .end local v0    # "temperatureType":I
    .local v7, "temperatureType":I
    :goto_0
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->val$spinnerQName:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v8, 0x1

    if-nez v0, :cond_1

    .line 976
    mul-int/lit8 v0, v7, 0x64

    iget-object v9, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->val$spinnerQ:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    add-int/lit8 v9, v9, 0x5

    mul-int/lit8 v9, v9, 0xa

    add-int/2addr v0, v9

    iget-object v9, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->val$spinnerRClass:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    add-int/lit8 v9, v9, 0x7

    add-int v4, v0, v9

    .line 977
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v0

    iget-object v9, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->val$spinnerQ:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    add-int/lit8 v9, v9, 0x4

    aget-object v9, v2, v9

    iget-object v10, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->val$spinnerRClass:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v10

    add-int/lit8 v10, v10, 0x6

    aget-object v10, v3, v10

    invoke-virtual {v0, v9, v10}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setDeviceTypeInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 978
    :cond_1
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->val$spinnerQName:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 979
    mul-int/lit8 v0, v7, 0x64

    iget-object v9, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->val$spinnerQ:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    add-int/2addr v9, v8

    mul-int/lit8 v9, v9, 0xa

    add-int/2addr v0, v9

    iget-object v9, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->val$spinnerRClass:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    add-int/2addr v9, v8

    add-int v4, v0, v9

    .line 980
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v0

    iget-object v9, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->val$spinnerQ:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    aget-object v9, v2, v9

    iget-object v10, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->val$spinnerRClass:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v10

    aget-object v10, v3, v10

    invoke-virtual {v0, v9, v10}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->setDeviceTypeInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Test Number = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "StateActivity"

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 986
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v0

    iget-object v10, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-virtual {v10}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplication()Landroid/app/Application;

    move-result-object v10

    iget-object v11, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->val$spinnerMechanismType:Landroid/widget/Spinner;

    invoke-virtual {v11}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v11

    add-int/2addr v11, v8

    invoke-virtual {v0, v10, v4, v11}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->loadMeasurementSettings(Landroid/content/ContextWrapper;II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 987
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    iget-object v10, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->val$spinnerQName:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v10

    invoke-static {v0, v10}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$3002(Lcom/poverka/httpFileClient/activity/StateActivity;I)I

    .line 988
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    iget-object v10, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->val$spinnerMechanismType:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v10

    invoke-static {v0, v10}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$3102(Lcom/poverka/httpFileClient/activity/StateActivity;I)I

    .line 989
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v10, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    const v11, 0x7f0f013f

    invoke-virtual {v10, v11}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-array v11, v8, [Ljava/lang/Object;

    iget-object v12, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v12}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v12

    invoke-virtual {v12}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getWaterTemperatureRound()I

    move-result v12

    if-le v12, v6, :cond_3

    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    const v12, 0x7f0f0084

    goto :goto_2

    :cond_3
    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    const v12, 0x7f0f0083

    :goto_2
    invoke-virtual {v6, v12}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x0

    aput-object v6, v11, v12

    invoke-static {v0, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 990
    .local v6, "title":Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v10, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-direct {v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v10, v0

    .line 991
    .local v10, "builderSmall":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v10, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v0

    .line 995
    .local v11, "strBuilder":Ljava/lang/StringBuilder;
    :try_start_0
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v13, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v13}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v13

    invoke-virtual {v13}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getChar1()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v14}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v14

    invoke-virtual {v14}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->getChar2()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v13, v14}, Lcom/poverka/httpFileClient/util/MyDeviceTypeHelper;->isTypeExist(Landroid/content/ContextWrapper;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 996
    const-string v0, "no types for selected test"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    const v9, 0x7f0f00ec

    invoke-virtual {v0, v9}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1004
    :cond_4
    goto :goto_3

    .line 1001
    :catch_0
    move-exception v0

    .line 1002
    .local v0, "e":Lorg/json/JSONException;
    iget-object v9, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-virtual {v9}, Lcom/poverka/httpFileClient/activity/StateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v14

    const-string v15, "State TestClick"

    invoke-static {v9, v15, v13, v14}, Lcom/poverka/httpFileClient/util/MyFileReader;->appendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    .line 1003
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1006
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_3
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v0

    iget-object v9, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-virtual {v9}, Lcom/poverka/httpFileClient/activity/StateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->testNameToText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->val$spinnerQName:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const v9, 0x7f0f001b

    const-string v13, ", "

    if-nez v0, :cond_5

    .line 1008
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-virtual {v8, v9}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " \u0414\u0421\u0422\u0423 3580"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1009
    :cond_5
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->val$spinnerQName:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v8, :cond_6

    .line 1010
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-virtual {v8, v9}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " \u0414\u0421\u0422\u0423 EN ISO 4064"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    :cond_6
    :goto_4
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$1700(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/measurement/CounterVerification;

    move-result-object v0

    iget-object v8, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-virtual {v8}, Lcom/poverka/httpFileClient/activity/StateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/poverka/httpFileClient/measurement/CounterVerification;->printMeasurementSettings(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1018
    new-instance v0, Lcom/poverka/httpFileClient/activity/StateActivity$5$1;

    invoke-direct {v0, v1}, Lcom/poverka/httpFileClient/activity/StateActivity$5$1;-><init>(Lcom/poverka/httpFileClient/activity/StateActivity$5;)V

    const-string v8, "OK"

    invoke-virtual {v10, v8, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1025
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1026
    .local v0, "dialogSmall":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1028
    iget-object v8, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v8, v12}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$3200(Lcom/poverka/httpFileClient/activity/StateActivity;Z)V

    .line 1029
    iget-object v8, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-static {v8}, Lcom/poverka/httpFileClient/activity/StateActivity;->access$2100(Lcom/poverka/httpFileClient/activity/StateActivity;)Lcom/poverka/httpFileClient/util/MyModeQueue;

    move-result-object v8

    sget-object v9, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->TEST_NAME:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    invoke-virtual {v8, v9}, Lcom/poverka/httpFileClient/util/MyModeQueue;->add(Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;)V

    .line 1030
    .end local v0    # "dialogSmall":Landroid/app/AlertDialog;
    .end local v6    # "title":Ljava/lang/String;
    .end local v10    # "builderSmall":Landroid/app/AlertDialog$Builder;
    .end local v11    # "strBuilder":Ljava/lang/StringBuilder;
    goto :goto_5

    .line 1031
    :cond_7
    const-string v0, "problems with reading tests"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    iget-object v0, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    invoke-virtual {v0}, Lcom/poverka/httpFileClient/activity/StateActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v6, v1, Lcom/poverka/httpFileClient/activity/StateActivity$5;->this$0:Lcom/poverka/httpFileClient/activity/StateActivity;

    const v9, 0x7f0f0140

    invoke-virtual {v6, v9}, Lcom/poverka/httpFileClient/activity/StateActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1034
    :goto_5
    return-void
.end method
