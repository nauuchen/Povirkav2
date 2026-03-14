.class public final Lorg/apache/poi/poifs/property/RootProperty;
.super Lorg/apache/poi/poifs/property/DirectoryProperty;
.source "RootProperty.java"


# static fields
.field private static final NAME:Ljava/lang/String; = "Root Entry"


# direct methods
.method constructor <init>()V
    .locals 1

    .line 31
    const-string v0, "Root Entry"

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/property/DirectoryProperty;-><init>(Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/property/RootProperty;->setNodeColor(B)V

    .line 35
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/property/RootProperty;->setPropertyType(B)V

    .line 36
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/property/RootProperty;->setStartBlock(I)V

    .line 37
    return-void
.end method

.method protected constructor <init>(I[BI)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "array"    # [B
    .param p3, "offset"    # I

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/poifs/property/DirectoryProperty;-><init>(I[BI)V

    .line 50
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 68
    const-string v0, "Root Entry"

    return-object v0
.end method

.method public setSize(I)V
    .locals 1
    .param p1, "size"    # I

    .line 59
    invoke-static {p1}, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->calcSize(I)I

    move-result v0

    invoke-super {p0, v0}, Lorg/apache/poi/poifs/property/DirectoryProperty;->setSize(I)V

    .line 60
    return-void
.end method
