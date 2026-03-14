.class public Lcom/poverka/httpFileClient/containers/Street;
.super Lcom/poverka/httpFileClient/containers/Address;
.source "Street.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/poverka/httpFileClient/containers/Address;-><init>(ILjava/lang/String;)V

    .line 11
    return-void
.end method
