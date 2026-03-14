.class public Lcom/poverka/httpFileClient/containers/Day;
.super Ljava/lang/Object;
.source "Day.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/poverka/httpFileClient/containers/Day;",
        ">;"
    }
.end annotation


# instance fields
.field private date:Ljava/lang/String;

.field private dismissNumber:I

.field private doneNumberDispatcher:I

.field private doneNumberSolo:I

.field private newNumber:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "newNumber"    # I
    .param p3, "dismissNumber"    # I
    .param p4, "doneNumberDispatcher"    # I
    .param p5, "doneNumberSolo"    # I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/poverka/httpFileClient/containers/Day;->date:Ljava/lang/String;

    .line 12
    iput p2, p0, Lcom/poverka/httpFileClient/containers/Day;->newNumber:I

    .line 13
    iput p3, p0, Lcom/poverka/httpFileClient/containers/Day;->dismissNumber:I

    .line 14
    iput p4, p0, Lcom/poverka/httpFileClient/containers/Day;->doneNumberDispatcher:I

    .line 15
    iput p5, p0, Lcom/poverka/httpFileClient/containers/Day;->doneNumberSolo:I

    .line 16
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/poverka/httpFileClient/containers/Day;)I
    .locals 12
    .param p1, "object"    # Lcom/poverka/httpFileClient/containers/Day;

    .line 40
    const/4 v0, 0x0

    .local v0, "d1":I
    const/4 v1, 0x0

    .local v1, "d2":I
    const/4 v2, 0x0

    .local v2, "m1":I
    const/4 v3, 0x0

    .local v3, "m2":I
    const/4 v4, 0x0

    .local v4, "y1":I
    const/4 v5, 0x0

    .line 41
    .local v5, "y2":I
    iget-object v6, p0, Lcom/poverka/httpFileClient/containers/Day;->date:Ljava/lang/String;

    const-string v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-lt v6, v9, :cond_0

    iget-object v6, p0, Lcom/poverka/httpFileClient/containers/Day;->date:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 42
    :cond_0
    iget-object v6, p0, Lcom/poverka/httpFileClient/containers/Day;->date:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    const/4 v10, 0x2

    if-lt v6, v10, :cond_1

    iget-object v6, p0, Lcom/poverka/httpFileClient/containers/Day;->date:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 43
    :cond_1
    iget-object v6, p0, Lcom/poverka/httpFileClient/containers/Day;->date:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    const/4 v11, 0x3

    if-lt v6, v11, :cond_2

    iget-object v6, p0, Lcom/poverka/httpFileClient/containers/Day;->date:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 44
    :cond_2
    iget-object v6, p1, Lcom/poverka/httpFileClient/containers/Day;->date:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-lt v6, v9, :cond_3

    iget-object v6, p1, Lcom/poverka/httpFileClient/containers/Day;->date:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 45
    :cond_3
    iget-object v6, p1, Lcom/poverka/httpFileClient/containers/Day;->date:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-lt v6, v10, :cond_4

    iget-object v6, p1, Lcom/poverka/httpFileClient/containers/Day;->date:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 46
    :cond_4
    iget-object v6, p1, Lcom/poverka/httpFileClient/containers/Day;->date:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-lt v6, v11, :cond_5

    iget-object v6, p1, Lcom/poverka/httpFileClient/containers/Day;->date:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 48
    :cond_5
    if-le v4, v5, :cond_6

    return v9

    .line 49
    :cond_6
    const/4 v6, -0x1

    if-ge v4, v5, :cond_7

    return v6

    .line 50
    :cond_7
    if-le v2, v3, :cond_8

    return v9

    .line 51
    :cond_8
    if-ge v2, v3, :cond_9

    return v6

    .line 52
    :cond_9
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v6

    return v6
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 3
    check-cast p1, Lcom/poverka/httpFileClient/containers/Day;

    invoke-virtual {p0, p1}, Lcom/poverka/httpFileClient/containers/Day;->compareTo(Lcom/poverka/httpFileClient/containers/Day;)I

    move-result p1

    return p1
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/poverka/httpFileClient/containers/Day;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDismissNumber()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/poverka/httpFileClient/containers/Day;->dismissNumber:I

    return v0
.end method

.method public getDoneNumberDispatcher()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/poverka/httpFileClient/containers/Day;->doneNumberDispatcher:I

    return v0
.end method

.method public getDoneNumberSolo()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/poverka/httpFileClient/containers/Day;->doneNumberSolo:I

    return v0
.end method

.method public getNewNumber()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/poverka/httpFileClient/containers/Day;->newNumber:I

    return v0
.end method
