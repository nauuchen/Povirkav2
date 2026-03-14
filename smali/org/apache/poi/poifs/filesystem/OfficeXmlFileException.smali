.class public Lorg/apache/poi/poifs/filesystem/OfficeXmlFileException;
.super Lorg/apache/poi/UnsupportedFileFormatException;
.source "OfficeXmlFileException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1}, Lorg/apache/poi/UnsupportedFileFormatException;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method
