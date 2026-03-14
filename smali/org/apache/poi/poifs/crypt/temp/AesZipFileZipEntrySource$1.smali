.class final Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource$1;
.super Ljava/io/FilterOutputStream;
.source "AesZipFileZipEntrySource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->copyToFile(Ljava/io/InputStream;Ljava/io/File;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;[B[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/OutputStream;

    .line 132
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 135
    return-void
.end method
