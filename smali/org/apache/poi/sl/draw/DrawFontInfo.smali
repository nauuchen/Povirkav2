.class Lorg/apache/poi/sl/draw/DrawFontInfo;
.super Ljava/lang/Object;
.source "DrawFontInfo.java"

# interfaces
.implements Lorg/apache/poi/common/usermodel/fonts/FontInfo;


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final typeface:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "typeface"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/apache/poi/sl/draw/DrawFontInfo;->typeface:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getCharset()Lorg/apache/poi/common/usermodel/fonts/FontCharset;
    .locals 1

    .line 62
    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->ANSI:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    return-object v0
.end method

.method public getFamily()Lorg/apache/poi/common/usermodel/fonts/FontFamily;
    .locals 1

    .line 72
    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->FF_SWISS:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    return-object v0
.end method

.method public getIndex()Ljava/lang/Integer;
    .locals 1

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPitch()Lorg/apache/poi/common/usermodel/fonts/FontPitch;
    .locals 1

    .line 82
    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->VARIABLE:Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    return-object v0
.end method

.method public getTypeface()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawFontInfo;->typeface:Ljava/lang/String;

    return-object v0
.end method

.method public setCharset(Lorg/apache/poi/common/usermodel/fonts/FontCharset;)V
    .locals 2
    .param p1, "charset"    # Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    .line 67
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "DrawFontManagers FontInfo can\'t be changed."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFamily(Lorg/apache/poi/common/usermodel/fonts/FontFamily;)V
    .locals 2
    .param p1, "family"    # Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    .line 77
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "DrawFontManagers FontInfo can\'t be changed."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .line 47
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "DrawFontManagers FontInfo can\'t be changed."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPitch(Lorg/apache/poi/common/usermodel/fonts/FontPitch;)V
    .locals 2
    .param p1, "pitch"    # Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    .line 87
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "DrawFontManagers FontInfo can\'t be changed."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTypeface(Ljava/lang/String;)V
    .locals 2
    .param p1, "typeface"    # Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "DrawFontManagers FontInfo can\'t be changed."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
