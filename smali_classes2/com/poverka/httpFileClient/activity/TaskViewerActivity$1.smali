.class Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;
.super Ljava/lang/Object;
.source "TaskViewerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;


# direct methods
.method constructor <init>(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    .line 85
    iput-object p1, p0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 16
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

    .line 88
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    move/from16 v1, p3

    iget-object v2, v0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-static {v2}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->access$100(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;)Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;

    move-result-object v2

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->getCurrentList()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v4, 0x2

    if-eq v2, v4, :cond_4

    const/4 v5, 0x3

    if-eq v2, v5, :cond_0

    goto/16 :goto_1

    .line 99
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/poverka/httpFileClient/containers/Task;

    .line 100
    .local v2, "task":Lcom/poverka/httpFileClient/containers/Task;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, v0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    .local v6, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const-string v7, ""

    .line 102
    .local v7, "title":Ljava/lang/String;
    const-string v8, ""

    .line 104
    .local v8, "message":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/poverka/httpFileClient/containers/Task;->getStatus()I

    move-result v9

    const v10, 0x7f0f0059

    const/4 v11, 0x4

    const/4 v12, 0x0

    if-eqz v9, :cond_3

    if-eq v9, v3, :cond_2

    if-eq v9, v4, :cond_1

    goto/16 :goto_0

    .line 222
    :cond_1
    iget-object v9, v0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    const v13, 0x7f0f0187

    invoke-virtual {v9, v13}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 223
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v13, v0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    const v14, 0x7f0f005b

    .line 224
    invoke-virtual {v13, v14}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/containers/Task;->getId()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v11, v12

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/containers/Task;->getCounterNumber()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v3

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/containers/Task;->getStatusDate()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v4

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/containers/Task;->getProtocolNumber()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v5

    .line 223
    invoke-static {v9, v13, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 226
    const v3, 0x7f0f00f0

    new-instance v4, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$5;

    invoke-direct {v4, v0, v2}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$5;-><init>(Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;Lcom/poverka/httpFileClient/containers/Task;)V

    invoke-virtual {v6, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 253
    new-instance v3, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$6;

    invoke-direct {v3, v0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$6;-><init>(Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;)V

    invoke-virtual {v6, v10, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 210
    :cond_2
    iget-object v9, v0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    const v10, 0x7f0f0183

    invoke-virtual {v9, v10}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 211
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v10, v0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    const v11, 0x7f0f0029

    .line 212
    invoke-virtual {v10, v11}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/containers/Task;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v12

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/containers/Task;->getStatusDate()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v3

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/containers/Task;->getDismissNote()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v4

    .line 211
    invoke-static {v9, v10, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 214
    new-instance v3, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$4;

    invoke-direct {v3, v0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$4;-><init>(Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;)V

    const-string v4, "OK"

    invoke-virtual {v6, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 220
    goto :goto_0

    .line 106
    :cond_3
    iget-object v9, v0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    const v13, 0x7f0f00e6

    invoke-virtual {v9, v13}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 107
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v13, v0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    const v14, 0x7f0f0188

    .line 108
    invoke-virtual {v13, v14}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x8

    new-array v14, v14, [Ljava/lang/Object;

    .line 109
    invoke-virtual {v2}, Lcom/poverka/httpFileClient/containers/Task;->getId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v12

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/containers/Task;->getSurname()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v14, v3

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/containers/Task;->getFullAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v4

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/containers/Task;->getFullApartment()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v5

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/containers/Task;->getPodezd()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v14, v11

    const/4 v3, 0x5

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/containers/Task;->getEtag()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v14, v3

    const/4 v3, 0x6

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/containers/Task;->getPhones()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v14, v3

    const/4 v3, 0x7

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/containers/Task;->getNote()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v14, v3

    .line 107
    invoke-static {v9, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 111
    const v3, 0x7f0f0131

    new-instance v4, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1;

    invoke-direct {v4, v0, v2}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$1;-><init>(Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;Lcom/poverka/httpFileClient/containers/Task;)V

    invoke-virtual {v6, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 163
    const v3, 0x7f0f0028

    new-instance v4, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$2;

    invoke-direct {v4, v0, v2}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$2;-><init>(Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;Lcom/poverka/httpFileClient/containers/Task;)V

    invoke-virtual {v6, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 202
    new-instance v3, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$3;

    invoke-direct {v3, v0}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1$3;-><init>(Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;)V

    invoke-virtual {v6, v10, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 208
    nop

    .line 261
    :goto_0
    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 262
    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 263
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 94
    .end local v2    # "task":Lcom/poverka/httpFileClient/containers/Task;
    .end local v6    # "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "message":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/poverka/httpFileClient/containers/Apartment;

    .line 95
    .local v2, "apartment":Lcom/poverka/httpFileClient/containers/Apartment;
    iget-object v3, v0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-static {v3}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->access$100(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;)Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;

    move-result-object v4

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/containers/Apartment;->getCityId()I

    move-result v5

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/containers/Apartment;->getStreetId()I

    move-result v6

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/containers/Apartment;->getBuilding()I

    move-result v7

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/containers/Apartment;->getBuildingB()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/containers/Apartment;->getBuildingK()Ljava/lang/String;

    move-result-object v9

    .line 96
    invoke-virtual {v2}, Lcom/poverka/httpFileClient/containers/Apartment;->getApartment()I

    move-result v10

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/containers/Apartment;->getApartmentB()Ljava/lang/String;

    move-result-object v11

    .line 95
    invoke-virtual/range {v4 .. v11}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->toCounters(IIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 97
    goto :goto_1

    .line 90
    .end local v2    # "apartment":Lcom/poverka/httpFileClient/containers/Apartment;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/poverka/httpFileClient/containers/Day;

    .line 91
    .local v2, "day":Lcom/poverka/httpFileClient/containers/Day;
    iget-object v3, v0, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$1;->this$0:Lcom/poverka/httpFileClient/activity/TaskViewerActivity;

    invoke-static {v3}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity;->access$100(Lcom/poverka/httpFileClient/activity/TaskViewerActivity;)Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;

    move-result-object v3

    invoke-virtual {v2}, Lcom/poverka/httpFileClient/containers/Day;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/poverka/httpFileClient/activity/TaskViewerActivity$MyLists;->toApartments(Ljava/lang/String;)V

    .line 92
    nop

    .line 266
    .end local v2    # "day":Lcom/poverka/httpFileClient/containers/Day;
    :goto_1
    return-void
.end method
