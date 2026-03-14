.class public abstract Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;
.super Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;
.source "CharacterPropertyFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "level"    # I

    .line 27
    .local p0, "this":Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;, "Lorg/apache/poi/xslf/model/CharacterPropertyFetcher<TT;>;"
    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;-><init>(I)V

    .line 28
    return-void
.end method


# virtual methods
.method public abstract fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)Z
.end method

.method public fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z
    .locals 1
    .param p1, "props"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    .line 31
    .local p0, "this":Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;, "Lorg/apache/poi/xslf/model/CharacterPropertyFetcher<TT;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetDefRPr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getDefRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)Z

    move-result v0

    return v0

    .line 35
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
