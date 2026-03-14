.class public Lcom/poverka/httpFileClient/containers/Address;
.super Ljava/lang/Object;
.source "Address.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/poverka/httpFileClient/containers/Address;",
        ">;"
    }
.end annotation


# instance fields
.field private id:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/poverka/httpFileClient/containers/Address;->id:I

    .line 9
    iput-object p2, p0, Lcom/poverka/httpFileClient/containers/Address;->name:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/poverka/httpFileClient/containers/Address;)I
    .locals 2
    .param p1, "address"    # Lcom/poverka/httpFileClient/containers/Address;

    .line 35
    iget-object v0, p0, Lcom/poverka/httpFileClient/containers/Address;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/poverka/httpFileClient/containers/Address;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 3
    check-cast p1, Lcom/poverka/httpFileClient/containers/Address;

    invoke-virtual {p0, p1}, Lcom/poverka/httpFileClient/containers/Address;->compareTo(Lcom/poverka/httpFileClient/containers/Address;)I

    move-result p1

    return p1
.end method

.method public getId()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/poverka/httpFileClient/containers/Address;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/poverka/httpFileClient/containers/Address;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 17
    iput p1, p0, Lcom/poverka/httpFileClient/containers/Address;->id:I

    .line 18
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/poverka/httpFileClient/containers/Address;->name:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/poverka/httpFileClient/containers/Address;->name:Ljava/lang/String;

    return-object v0
.end method
