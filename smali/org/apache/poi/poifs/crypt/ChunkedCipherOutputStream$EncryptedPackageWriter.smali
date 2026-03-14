.class Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream$EncryptedPackageWriter;
.super Ljava/lang/Object;
.source "ChunkedCipherOutputStream.java"

# interfaces
.implements Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncryptedPackageWriter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;


# direct methods
.method private constructor <init>(Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream$EncryptedPackageWriter;->this$0:Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;
    .param p2, "x1"    # Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream$1;

    .line 277
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream$EncryptedPackageWriter;-><init>(Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;)V

    return-void
.end method


# virtual methods
.method public processPOIFSWriterEvent(Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;)V
    .locals 9
    .param p1, "event"    # Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;

    .line 281
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;->getStream()Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;

    move-result-object v0

    .line 287
    .local v0, "os":Ljava/io/OutputStream;
    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 288
    .local v1, "buf":[B
    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream$EncryptedPackageWriter;->this$0:Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;

    invoke-static {v2}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->access$100(Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Lorg/apache/poi/util/LittleEndian;->putLong([BIJ)V

    .line 289
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 291
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream$EncryptedPackageWriter;->this$0:Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;

    invoke-static {v3}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->access$200(Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v2, v0}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 296
    nop

    .line 298
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 300
    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream$EncryptedPackageWriter;->this$0:Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;

    invoke-static {v3}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->access$200(Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_0

    .line 301
    invoke-static {}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->access$300()Lorg/apache/poi/util/POILogger;

    move-result-object v3

    const/4 v5, 0x7

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t delete temporary encryption file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream$EncryptedPackageWriter;->this$0:Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;

    invoke-static {v8}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->access$200(Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v3, v5, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 305
    .end local v0    # "os":Ljava/io/OutputStream;
    .end local v1    # "buf":[B
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :cond_0
    nop

    .line 306
    return-void

    .line 295
    .restart local v0    # "os":Ljava/io/OutputStream;
    .restart local v1    # "buf":[B
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .end local p1    # "event":Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;
    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 303
    .end local v0    # "os":Ljava/io/OutputStream;
    .end local v1    # "buf":[B
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local p1    # "event":Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v1, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
