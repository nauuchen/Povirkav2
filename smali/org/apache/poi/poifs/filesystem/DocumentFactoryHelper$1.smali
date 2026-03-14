.class final Lorg/apache/poi/poifs/filesystem/DocumentFactoryHelper$1;
.super Ljava/io/FilterInputStream;
.source "DocumentFactoryHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/poifs/filesystem/DocumentFactoryHelper;->getDecryptedStream(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Ljava/lang/String;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fs:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/InputStream;

    .line 63
    iput-object p2, p0, Lorg/apache/poi/poifs/filesystem/DocumentFactoryHelper$1;->val$fs:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentFactoryHelper$1;->val$fs:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    .line 68
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 69
    return-void
.end method
