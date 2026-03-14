.class public Lorg/apache/poi/xslf/usermodel/XSLFSlideShowFactory;
.super Lorg/apache/poi/sl/usermodel/SlideShowFactory;
.source "XSLFSlideShowFactory.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/apache/poi/sl/usermodel/SlideShowFactory;-><init>()V

    return-void
.end method

.method public static createSlideShow(Ljava/io/File;Z)Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "readOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z)",
            "Lorg/apache/poi/sl/usermodel/SlideShow<",
            "**>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation

    .line 77
    if-eqz p1, :cond_0

    sget-object v0, Lorg/apache/poi/openxml4j/opc/PackageAccess;->READ:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/openxml4j/opc/PackageAccess;->READ_WRITE:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    :goto_0
    invoke-static {p0, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/io/File;Lorg/apache/poi/openxml4j/opc/PackageAccess;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    .line 78
    .local v0, "pkg":Lorg/apache/poi/openxml4j/opc/OPCPackage;
    invoke-static {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShowFactory;->createSlideShow(Lorg/apache/poi/openxml4j/opc/OPCPackage;)Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object v1

    return-object v1
.end method

.method public static createSlideShow(Ljava/io/InputStream;)Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 2
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lorg/apache/poi/sl/usermodel/SlideShow<",
            "**>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation

    .line 96
    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    .line 97
    .local v0, "pkg":Lorg/apache/poi/openxml4j/opc/OPCPackage;
    invoke-static {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShowFactory;->createSlideShow(Lorg/apache/poi/openxml4j/opc/OPCPackage;)Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object v1

    return-object v1
.end method

.method public static createSlideShow(Lorg/apache/poi/openxml4j/opc/OPCPackage;)Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 1
    .param p0, "pkg"    # Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/openxml4j/opc/OPCPackage;",
            ")",
            "Lorg/apache/poi/sl/usermodel/SlideShow<",
            "**>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    :try_start_0
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 51
    :catch_0
    move-exception v0

    .line 53
    .local v0, "ioe":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->revert()V

    .line 57
    throw v0
.end method
