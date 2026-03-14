.class public Lorg/apache/poi/openxml4j/exceptions/NotOfficeXmlFileException;
.super Lorg/apache/poi/UnsupportedFileFormatException;
.source "NotOfficeXmlFileException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0, p1}, Lorg/apache/poi/UnsupportedFileFormatException;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method
