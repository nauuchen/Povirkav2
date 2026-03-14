.class public Lcom/poverka/httpFileClient/util/MyConsoleParser;
.super Ljava/lang/Object;
.source "MyConsoleParser.java"


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "PARSER"


# instance fields
.field private answerJSON:Lorg/json/JSONObject;

.field private consoleHeader:Ljava/lang/String;

.field private currentDirectory:Ljava/lang/String;

.field private firstLineString:Ljava/lang/String;

.field private isFirstLine:Z

.field private isLastLine:Z

.field private photoSize:I

.field private receivedCommand:Ljava/lang/String;

.field private receivedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private receivedParams:Ljava/lang/String;

.field private receivedString:Ljava/lang/String;

.field private requestJSON:Lorg/json/JSONObject;

.field private requestedFile:Ljava/lang/String;

.field private sentString:Ljava/lang/String;

.field private stringToRepeat:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "header"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->receivedString:Ljava/lang/String;

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->receivedList:Ljava/util/ArrayList;

    .line 38
    iput-object p1, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->consoleHeader:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->currentDirectory:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->sentString:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->stringToRepeat:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->receivedCommand:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->receivedParams:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->requestedFile:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->isFirstLine:Z

    .line 46
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->isLastLine:Z

    .line 48
    iput v0, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->photoSize:I

    .line 49
    return-void
.end method

.method private readConsoleHeader(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 199
    const-string v0, "root"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 200
    const/4 v1, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->consoleHeader:Ljava/lang/String;

    .line 202
    :cond_0
    return-void
.end method

.method private tryParse(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 264
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    return v1
.end method


# virtual methods
.method clearParser()V
    .locals 2

    .line 243
    const-string v0, ""

    iput-object v0, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->receivedString:Ljava/lang/String;

    .line 244
    iget-object v1, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->receivedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 245
    iput-object v0, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->currentDirectory:Ljava/lang/String;

    .line 246
    iput-object v0, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->receivedCommand:Ljava/lang/String;

    .line 247
    iput-object v0, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->receivedParams:Ljava/lang/String;

    .line 248
    iput-object v0, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->requestedFile:Ljava/lang/String;

    .line 249
    iput-object v0, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->firstLineString:Ljava/lang/String;

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->isFirstLine:Z

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->isLastLine:Z

    .line 253
    iput v0, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->photoSize:I

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->requestJSON:Lorg/json/JSONObject;

    .line 255
    iput-object v0, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->answerJSON:Lorg/json/JSONObject;

    .line 256
    return-void
.end method

.method public getAnswerJSON()Lorg/json/JSONObject;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->answerJSON:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getConsoleHeader()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->consoleHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getParserStuff()Ljava/lang/String;
    .locals 3

    .line 259
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->consoleHeader:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->currentDirectory:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->receivedCommand:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->requestedFile:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->isLastLine:Z

    if-eqz v1, :cond_0

    const-string v1, "Yes"

    goto :goto_0

    :cond_0
    const-string v1, "No"

    :goto_0
    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "Header: %s, Dir: %s, Command: %s, File: %s, LastLine?: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoSize()I
    .locals 1

    .line 223
    iget v0, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->photoSize:I

    return v0
.end method

.method public getReceivedCommand()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->receivedCommand:Ljava/lang/String;

    return-object v0
.end method

.method public getReceivedList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->receivedList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getReceivedString()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->receivedString:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestJSON()Lorg/json/JSONObject;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->requestJSON:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getRequestedFile()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->requestedFile:Ljava/lang/String;

    return-object v0
.end method

.method getStringToRepeat()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->stringToRepeat:Ljava/lang/String;

    return-object v0
.end method

.method public isFirstLine()Z
    .locals 1

    .line 235
    iget-boolean v0, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->isFirstLine:Z

    return v0
.end method

.method public isLastLine()Z
    .locals 1

    .line 239
    iget-boolean v0, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->isLastLine:Z

    return v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 16
    .param p1, "str"    # Ljava/lang/String;

    .line 52
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v0, 0x0

    .line 53
    .local v0, "systemData":Ljava/lang/String;
    const/4 v3, 0x0

    .line 55
    .local v3, "content":Ljava/lang/String;
    iget-object v4, v1, Lcom/poverka/httpFileClient/util/MyConsoleParser;->consoleHeader:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 56
    invoke-direct/range {p0 .. p1}, Lcom/poverka/httpFileClient/util/MyConsoleParser;->readConsoleHeader(Ljava/lang/String;)V

    .line 59
    :cond_0
    iget-object v4, v1, Lcom/poverka/httpFileClient/util/MyConsoleParser;->consoleHeader:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "PARSER"

    const/4 v6, 0x0

    if-lez v4, :cond_3

    .line 60
    iget-boolean v4, v1, Lcom/poverka/httpFileClient/util/MyConsoleParser;->isFirstLine:Z

    if-eqz v4, :cond_1

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/poverka/httpFileClient/util/MyConsoleParser;->firstLineString:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/poverka/httpFileClient/util/MyConsoleParser;->firstLineString:Ljava/lang/String;

    .line 62
    iget-object v7, v1, Lcom/poverka/httpFileClient/util/MyConsoleParser;->sentString:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 63
    const-string v4, "Message sent"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iput-boolean v6, v1, Lcom/poverka/httpFileClient/util/MyConsoleParser;->isFirstLine:Z

    .line 66
    const/4 v3, 0x0

    .line 67
    iget-object v0, v1, Lcom/poverka/httpFileClient/util/MyConsoleParser;->firstLineString:Ljava/lang/String;

    move-object v4, v3

    move-object v3, v0

    goto :goto_0

    .line 74
    :cond_1
    iget-object v4, v1, Lcom/poverka/httpFileClient/util/MyConsoleParser;->consoleHeader:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 76
    iget-object v4, v1, Lcom/poverka/httpFileClient/util/MyConsoleParser;->consoleHeader:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 77
    iget-object v4, v1, Lcom/poverka/httpFileClient/util/MyConsoleParser;->consoleHeader:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v3

    move-object v3, v0

    goto :goto_0

    .line 80
    :cond_2
    move-object/from16 v3, p1

    .line 81
    const/4 v0, 0x0

    move-object v4, v3

    move-object v3, v0

    goto :goto_0

    .line 86
    :cond_3
    move-object v4, v3

    move-object v3, v0

    .end local v0    # "systemData":Ljava/lang/String;
    .local v3, "systemData":Ljava/lang/String;
    .local v4, "content":Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_4

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CONTENT!! => "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iput-object v4, v1, Lcom/poverka/httpFileClient/util/MyConsoleParser;->receivedString:Ljava/lang/String;

    .line 90
    iget-object v0, v1, Lcom/poverka/httpFileClient/util/MyConsoleParser;->receivedList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_4
    if-eqz v3, :cond_17

    .line 96
    iget-object v0, v1, Lcom/poverka/httpFileClient/util/MyConsoleParser;->consoleHeader:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_5

    .line 97
    iget-object v0, v1, Lcom/poverka/httpFileClient/util/MyConsoleParser;->consoleHeader:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v7

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .local v0, "responseAfterHeader":Ljava/lang/String;
    goto :goto_1

    .line 100
    .end local v0    # "responseAfterHeader":Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "~#` "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 103
    .local v8, "responseAfterHeader":Ljava/lang/String;
    :goto_1
    const-string v0, " "

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 104
    .local v9, "splittedAfterHeader":[Ljava/lang/String;
    aget-object v0, v9, v6

    aget-object v10, v9, v6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v7

    invoke-virtual {v0, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/poverka/httpFileClient/util/MyConsoleParser;->currentDirectory:Ljava/lang/String;

    .line 107
    array-length v0, v9

    const-string v11, "cat"

    const-string v12, "ls"

    const v13, 0x17fd6

    const/16 v14, 0xd87

    if-le v0, v7, :cond_10

    .line 109
    aget-object v0, v9, v7

    iput-object v0, v1, Lcom/poverka/httpFileClient/util/MyConsoleParser;->receivedCommand:Ljava/lang/String;

    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v15

    const/4 v10, 0x3

    const/4 v6, 0x2

    if-eq v15, v14, :cond_a

    if-eq v15, v13, :cond_9

    const v11, 0x2f6a25

    if-eq v15, v11, :cond_8

    const v11, 0x30abc78f

    if-eq v15, v11, :cond_7

    :cond_6
    goto :goto_2

    :cond_7
    const-string v11, "hexdump"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    goto :goto_3

    :cond_8
    const-string v11, "echo"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    goto :goto_3

    :cond_9
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_a
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_3

    :goto_2
    const/4 v0, -0x1

    :goto_3
    if-eqz v0, :cond_e

    if-eq v0, v7, :cond_d

    if-eq v0, v6, :cond_c

    if-eq v0, v10, :cond_b

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DUNNO what is that ==>> "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 134
    :cond_b
    array-length v0, v9

    const/4 v5, 0x6

    if-le v0, v5, :cond_f

    .line 135
    aget-object v0, v9, v5

    iput-object v0, v1, Lcom/poverka/httpFileClient/util/MyConsoleParser;->requestedFile:Ljava/lang/String;

    goto :goto_5

    .line 123
    :cond_c
    array-length v0, v9

    const/4 v5, 0x4

    if-le v0, v5, :cond_f

    .line 125
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    aget-object v5, v9, v6

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/poverka/httpFileClient/util/MyConsoleParser;->requestJSON:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    goto :goto_4

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Lorg/json/JSONException;
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/poverka/httpFileClient/util/MyConsoleParser;->requestJSON:Lorg/json/JSONObject;

    .line 130
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_4
    const/4 v5, 0x4

    aget-object v0, v9, v5

    iput-object v0, v1, Lcom/poverka/httpFileClient/util/MyConsoleParser;->requestedFile:Ljava/lang/String;

    goto :goto_5

    .line 118
    :cond_d
    array-length v0, v9

    if-le v0, v6, :cond_f

    .line 119
    aget-object v0, v9, v6

    iput-object v0, v1, Lcom/poverka/httpFileClient/util/MyConsoleParser;->requestedFile:Ljava/lang/String;

    goto :goto_5

    .line 113
    :cond_e
    array-length v0, v9

    if-le v0, v6, :cond_f

    .line 114
    aget-object v0, v9, v6

    iput-object v0, v1, Lcom/poverka/httpFileClient/util/MyConsoleParser;->receivedParams:Ljava/lang/String;

    .line 140
    :cond_f
    :goto_5
    goto/16 :goto_9

    .line 145
    :cond_10
    iput-boolean v7, v1, Lcom/poverka/httpFileClient/util/MyConsoleParser;->isLastLine:Z

    .line 147
    iget-object v0, v1, Lcom/poverka/httpFileClient/util/MyConsoleParser;->receivedCommand:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    if-eq v6, v14, :cond_13

    if-eq v6, v13, :cond_12

    :cond_11
    goto :goto_6

    :cond_12
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v6, 0x1

    goto :goto_7

    :cond_13
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v6, 0x0

    goto :goto_7

    :goto_6
    const/4 v6, -0x1

    :goto_7
    if-eqz v6, :cond_15

    if-eq v6, v7, :cond_14

    goto :goto_9

    .line 163
    :cond_14
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    iget-object v5, v1, Lcom/poverka/httpFileClient/util/MyConsoleParser;->receivedString:Ljava/lang/String;

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/poverka/httpFileClient/util/MyConsoleParser;->answerJSON:Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 167
    goto :goto_9

    .line 165
    :catch_1
    move-exception v0

    .line 166
    .restart local v0    # "e":Lorg/json/JSONException;
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/poverka/httpFileClient/util/MyConsoleParser;->answerJSON:Lorg/json/JSONObject;

    goto :goto_9

    .line 149
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "params => "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, v1, Lcom/poverka/httpFileClient/util/MyConsoleParser;->receivedParams:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, v1, Lcom/poverka/httpFileClient/util/MyConsoleParser;->receivedParams:Ljava/lang/String;

    const-string v5, "-l"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 151
    iget-object v0, v1, Lcom/poverka/httpFileClient/util/MyConsoleParser;->receivedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 152
    .local v5, "s":Ljava/lang/String;
    const-string v6, "\\s+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 153
    .local v6, "splitted":[Ljava/lang/String;
    array-length v7, v6

    const/4 v10, 0x4

    if-le v7, v10, :cond_16

    .line 154
    aget-object v7, v6, v10

    invoke-direct {v1, v7}, Lcom/poverka/httpFileClient/util/MyConsoleParser;->tryParse(Ljava/lang/String;)I

    move-result v7

    iput v7, v1, Lcom/poverka/httpFileClient/util/MyConsoleParser;->photoSize:I

    .line 156
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "splitted":[Ljava/lang/String;
    :cond_16
    goto :goto_8

    .line 176
    .end local v8    # "responseAfterHeader":Ljava/lang/String;
    .end local v9    # "splittedAfterHeader":[Ljava/lang/String;
    :cond_17
    :goto_9
    return-void
.end method

.method setSentString(Ljava/lang/String;)V
    .locals 2
    .param p1, "sentString"    # Ljava/lang/String;

    .line 209
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 213
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 210
    :cond_1
    :goto_0
    const-string p1, ""

    .line 215
    :cond_2
    :goto_1
    iput-object p1, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->sentString:Ljava/lang/String;

    .line 217
    const-string v0, "cat /home/1/current/s_to_a.json"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 218
    iput-object p1, p0, Lcom/poverka/httpFileClient/util/MyConsoleParser;->stringToRepeat:Ljava/lang/String;

    .line 220
    :cond_3
    return-void
.end method
