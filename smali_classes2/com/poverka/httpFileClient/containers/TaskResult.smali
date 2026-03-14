.class public Lcom/poverka/httpFileClient/containers/TaskResult;
.super Ljava/lang/Object;
.source "TaskResult.java"


# instance fields
.field private date:Ljava/lang/String;

.field private dismissId:I

.field private dismissNote:Ljava/lang/String;

.field private id:I

.field private protocolNumber:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/poverka/httpFileClient/containers/TaskResult;->id:I

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/poverka/httpFileClient/containers/TaskResult;->status:I

    .line 23
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    :try_start_0
    const-string v0, "ID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/containers/TaskResult;->id:I

    .line 28
    const-string v0, "STATUS"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/containers/TaskResult;->status:I

    .line 29
    const-string v0, "DATE"

    const-string v2, "01.01.1970"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/poverka/httpFileClient/containers/TaskResult;->date:Ljava/lang/String;

    .line 30
    const-string v0, "PROTOCOL"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/poverka/httpFileClient/containers/TaskResult;->protocolNumber:Ljava/lang/String;

    .line 31
    const-string v0, "DISMISS_ID"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/poverka/httpFileClient/containers/TaskResult;->dismissId:I

    .line 32
    const-string v0, "DISMISS_NOTE"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/poverka/httpFileClient/containers/TaskResult;->dismissNote:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "TaskResult"

    const-string v2, "error in JSON constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public static jsonStringToList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/poverka/httpFileClient/containers/TaskResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/poverka/httpFileClient/containers/TaskResult;>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 41
    .local v1, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 42
    new-instance v3, Lcom/poverka/httpFileClient/containers/TaskResult;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/poverka/httpFileClient/containers/TaskResult;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    .end local v2    # "index":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/poverka/httpFileClient/containers/TaskResult;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDismissId()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/poverka/httpFileClient/containers/TaskResult;->dismissId:I

    return v0
.end method

.method public getDismissNote()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/poverka/httpFileClient/containers/TaskResult;->dismissNote:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/poverka/httpFileClient/containers/TaskResult;->id:I

    return v0
.end method

.method public getProtocolNumber()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/poverka/httpFileClient/containers/TaskResult;->protocolNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/poverka/httpFileClient/containers/TaskResult;->status:I

    return v0
.end method

.method public setDismiss(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "dismissReason"    # I
    .param p3, "note"    # Ljava/lang/String;

    .line 72
    const/4 v0, 0x1

    iput v0, p0, Lcom/poverka/httpFileClient/containers/TaskResult;->status:I

    .line 73
    iput-object p1, p0, Lcom/poverka/httpFileClient/containers/TaskResult;->date:Ljava/lang/String;

    .line 74
    iput p2, p0, Lcom/poverka/httpFileClient/containers/TaskResult;->dismissId:I

    .line 75
    iput-object p3, p0, Lcom/poverka/httpFileClient/containers/TaskResult;->dismissNote:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setDone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "protocolNumber"    # Ljava/lang/String;

    .line 79
    const/4 v0, 0x2

    iput v0, p0, Lcom/poverka/httpFileClient/containers/TaskResult;->status:I

    .line 80
    iput-object p1, p0, Lcom/poverka/httpFileClient/containers/TaskResult;->date:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/poverka/httpFileClient/containers/TaskResult;->protocolNumber:Ljava/lang/String;

    .line 82
    return-void
.end method
