.class public abstract Lorg/apache/poi/POIDocument;
.super Ljava/lang/Object;
.source "POIDocument.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

.field private dsInf:Lorg/apache/poi/hpsf/DocumentSummaryInformation;

.field private initialized:Z

.field private sInf:Lorg/apache/poi/hpsf/SummaryInformation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    const-class v0, Lorg/apache/poi/POIDocument;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/POIDocument;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 0
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 74
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 1
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    .line 90
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/POIDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 91
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;)V
    .locals 1
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;

    .line 82
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/POIDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 83
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 1
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    .line 98
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/POIDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 99
    return-void
.end method

.method private readPropertySet(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 173
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "localName":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p2}, Lorg/apache/poi/POIDocument;->getPropertySet(Ljava/lang/String;)Lorg/apache/poi/hpsf/PropertySet;

    move-result-object v3

    .line 176
    .local v3, "ps":Lorg/apache/poi/hpsf/PropertySet;
    invoke-virtual {p1, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 177
    return-object v3

    .line 178
    :cond_0
    const/4 v4, 0x5

    if-eqz v3, :cond_1

    .line 179
    sget-object v5, Lorg/apache/poi/POIDocument;->logger:Lorg/apache/poi/util/POILogger;

    new-array v6, v2, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " property set came back with wrong class - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v5, v4, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 181
    :cond_1
    sget-object v5, Lorg/apache/poi/POIDocument;->logger:Lorg/apache/poi/util/POILogger;

    new-array v6, v2, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " property set came back as null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v5, v4, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v3    # "ps":Lorg/apache/poi/hpsf/PropertySet;
    :goto_0
    goto :goto_1

    .line 183
    :catch_0
    move-exception v3

    .line 184
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Lorg/apache/poi/POIDocument;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v5, 0x7

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "can\'t retrieve property set"

    aput-object v7, v6, v1

    aput-object v3, v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 186
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method protected clearDirectory()V
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 448
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 449
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getNFileSystem()Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getNFileSystem()Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    .line 433
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->clearDirectory()V

    .line 436
    :cond_0
    return-void
.end method

.method public createInformationProperties()V
    .locals 1

    .line 137
    iget-boolean v0, p0, Lorg/apache/poi/POIDocument;->initialized:Z

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->readProperties()V

    .line 140
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/POIDocument;->sInf:Lorg/apache/poi/hpsf/SummaryInformation;

    if-nez v0, :cond_1

    .line 141
    invoke-static {}, Lorg/apache/poi/hpsf/PropertySetFactory;->newSummaryInformation()Lorg/apache/poi/hpsf/SummaryInformation;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/POIDocument;->sInf:Lorg/apache/poi/hpsf/SummaryInformation;

    .line 143
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/POIDocument;->dsInf:Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    if-nez v0, :cond_2

    .line 144
    invoke-static {}, Lorg/apache/poi/hpsf/PropertySetFactory;->newDocumentSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/POIDocument;->dsInf:Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    .line 146
    :cond_2
    return-void
.end method

.method public getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 440
    iget-object v0, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    return-object v0
.end method

.method public getDocumentSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;
    .locals 1

    .line 108
    iget-boolean v0, p0, Lorg/apache/poi/POIDocument;->initialized:Z

    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->readProperties()V

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/POIDocument;->dsInf:Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    return-object v0
.end method

.method protected getEncryptedPropertyStreamName()Ljava/lang/String;
    .locals 1

    .line 485
    const-string v0, "encryption"

    return-object v0
.end method

.method public getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 492
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPropertySet(Ljava/lang/String;)Lorg/apache/poi/hpsf/PropertySet;
    .locals 1
    .param p1, "setName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/POIDocument;->getPropertySet(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionInfo;)Lorg/apache/poi/hpsf/PropertySet;

    move-result-object v0

    return-object v0
.end method

.method protected getPropertySet(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionInfo;)Lorg/apache/poi/hpsf/PropertySet;
    .locals 7
    .param p1, "setName"    # Ljava/lang/String;
    .param p2, "encryptionInfo"    # Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 211
    .local v0, "dirNode":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    const/4 v1, 0x0

    .line 212
    .local v1, "encPoifs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    const-string v2, "getting"

    .line 214
    .local v2, "step":Ljava/lang/String;
    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->isDocPropsEncrypted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 215
    const-string v3, "getting encrypted"

    move-object v2, v3

    .line 216
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getEncryptedPropertyStreamName()Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "encryptedStream":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 220
    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;

    .line 221
    .local v4, "dec":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;
    invoke-virtual {v4, v0, v3}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->getSummaryEntries(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object v5

    move-object v1, v5

    .line 222
    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 218
    .end local v4    # "dec":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;
    :cond_0
    new-instance v4, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can\'t find encrypted property stream \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "dirNode":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .end local v1    # "encPoifs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .end local v2    # "step":Ljava/lang/String;
    .end local p1    # "setName":Ljava/lang/String;
    .end local p2    # "encryptionInfo":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    throw v4

    .line 245
    .end local v3    # "encryptedStream":Ljava/lang/String;
    .restart local v0    # "dirNode":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .restart local v1    # "encPoifs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .restart local v2    # "step":Ljava/lang/String;
    .restart local p1    # "setName":Ljava/lang/String;
    .restart local p2    # "encryptionInfo":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 242
    :catch_0
    move-exception v3

    goto :goto_1

    .line 240
    :catch_1
    move-exception v3

    goto :goto_2

    .line 226
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_4

    .line 231
    :cond_2
    const-string v3, "getting"

    move-object v2, v3

    .line 232
    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    .local v3, "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    :try_start_1
    const-string v4, "creating"

    move-object v2, v4

    .line 236
    invoke-static {v3}, Lorg/apache/poi/hpsf/PropertySetFactory;->create(Ljava/io/InputStream;)Lorg/apache/poi/hpsf/PropertySet;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 238
    :try_start_2
    invoke-virtual {v3}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 245
    invoke-static {v1}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v4

    .line 238
    :catchall_1
    move-exception v4

    :try_start_3
    invoke-virtual {v3}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    .end local v0    # "dirNode":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .end local v1    # "encPoifs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .end local v2    # "step":Ljava/lang/String;
    .end local p1    # "setName":Ljava/lang/String;
    .end local p2    # "encryptionInfo":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 243
    .restart local v0    # "dirNode":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .restart local v1    # "encPoifs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .restart local v2    # "step":Ljava/lang/String;
    .local v3, "e":Ljava/lang/Exception;
    .restart local p1    # "setName":Ljava/lang/String;
    .restart local p2    # "encryptionInfo":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    :goto_1
    :try_start_4
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " property set with name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "dirNode":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .end local v1    # "encPoifs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .end local v2    # "step":Ljava/lang/String;
    .end local p1    # "setName":Ljava/lang/String;
    .end local p2    # "encryptionInfo":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    throw v4

    .line 241
    .restart local v0    # "dirNode":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .restart local v1    # "encPoifs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .restart local v2    # "step":Ljava/lang/String;
    .local v3, "e":Ljava/io/IOException;
    .restart local p1    # "setName":Ljava/lang/String;
    .restart local p2    # "encryptionInfo":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    :goto_2
    nop

    .end local v0    # "dirNode":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .end local v1    # "encPoifs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .end local v2    # "step":Ljava/lang/String;
    .end local p1    # "setName":Ljava/lang/String;
    .end local p2    # "encryptionInfo":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 245
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "dirNode":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .restart local v1    # "encPoifs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .restart local v2    # "step":Ljava/lang/String;
    .restart local p1    # "setName":Ljava/lang/String;
    .restart local p2    # "encryptionInfo":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    :goto_3
    invoke-static {v1}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v3

    .line 227
    :cond_3
    :goto_4
    const/4 v3, 0x0

    .line 245
    invoke-static {v1}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v3
.end method

.method public getSummaryInformation()Lorg/apache/poi/hpsf/SummaryInformation;
    .locals 1

    .line 121
    iget-boolean v0, p0, Lorg/apache/poi/POIDocument;->initialized:Z

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->readProperties()V

    .line 124
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/POIDocument;->sInf:Lorg/apache/poi/hpsf/SummaryInformation;

    return-object v0
.end method

.method protected initDirectory()Z
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 460
    iget-object v0, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    if-nez v0, :cond_0

    .line 461
    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>()V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 462
    const/4 v0, 0x1

    return v0

    .line 464
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected readProperties()V
    .locals 3

    .line 155
    iget-boolean v0, p0, Lorg/apache/poi/POIDocument;->initialized:Z

    if-eqz v0, :cond_0

    .line 156
    return-void

    .line 158
    :cond_0
    const-class v0, Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    const-string v1, "\u0005DocumentSummaryInformation"

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/POIDocument;->readPropertySet(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    .line 159
    .local v0, "dsi":Lorg/apache/poi/hpsf/DocumentSummaryInformation;
    if-eqz v0, :cond_1

    .line 160
    iput-object v0, p0, Lorg/apache/poi/POIDocument;->dsInf:Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    .line 162
    :cond_1
    const-class v1, Lorg/apache/poi/hpsf/SummaryInformation;

    const-string v2, "\u0005SummaryInformation"

    invoke-direct {p0, v1, v2}, Lorg/apache/poi/POIDocument;->readPropertySet(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hpsf/SummaryInformation;

    .line 163
    .local v1, "si":Lorg/apache/poi/hpsf/SummaryInformation;
    if-eqz v1, :cond_2

    .line 164
    iput-object v1, p0, Lorg/apache/poi/POIDocument;->sInf:Lorg/apache/poi/hpsf/SummaryInformation;

    .line 168
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/poi/POIDocument;->initialized:Z

    .line 169
    return-void
.end method

.method protected replaceDirectory(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .locals 1
    .param p1, "newDirectory"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 476
    iget-object v0, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 477
    .local v0, "dn":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    iput-object p1, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 478
    return-object v0
.end method

.method protected validateInPlaceWritePossible()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    if-eqz v0, :cond_2

    .line 362
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getParent()Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object v0

    if-nez v0, :cond_1

    .line 365
    iget-object v0, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getFileSystem()Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getFileSystem()Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->isInPlaceWriteable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    return-void

    .line 367
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Opened read-only or via an InputStream, a Writeable File is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This is not the root Document, cannot save embedded resource in-place"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Newly created Document, cannot save in-place"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract write()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract write(Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract write(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected writeProperties()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->validateInPlaceWritePossible()V

    .line 258
    iget-object v0, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getFileSystem()Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/POIDocument;->writeProperties(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Ljava/util/List;)V

    .line 259
    return-void
.end method

.method protected writeProperties(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 1
    .param p1, "outFS"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/POIDocument;->writeProperties(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Ljava/util/List;)V

    .line 270
    return-void
.end method

.method protected writeProperties(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Ljava/util/List;)V
    .locals 9
    .param p1, "outFS"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    .local p2, "writtenEntries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    .line 281
    .local v0, "ei":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->isDocPropsEncrypted()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 282
    .local v1, "encryptProps":Z
    :goto_0
    if-eqz v1, :cond_1

    new-instance v2, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>()V

    goto :goto_1

    :cond_1
    move-object v2, p1

    .line 284
    .local v2, "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getSummaryInformation()Lorg/apache/poi/hpsf/SummaryInformation;

    move-result-object v3

    .line 285
    .local v3, "si":Lorg/apache/poi/hpsf/SummaryInformation;
    const-string v4, "\u0005SummaryInformation"

    if-eqz v3, :cond_2

    .line 286
    invoke-virtual {p0, v4, v3, v2}, Lorg/apache/poi/POIDocument;->writePropertySet(Ljava/lang/String;Lorg/apache/poi/hpsf/PropertySet;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    .line 287
    if-eqz p2, :cond_2

    .line 288
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDocumentSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    move-result-object v5

    .line 292
    .local v5, "dsi":Lorg/apache/poi/hpsf/DocumentSummaryInformation;
    const-string v6, "\u0005DocumentSummaryInformation"

    if-eqz v5, :cond_3

    .line 293
    invoke-virtual {p0, v6, v5, v2}, Lorg/apache/poi/POIDocument;->writePropertySet(Ljava/lang/String;Lorg/apache/poi/hpsf/PropertySet;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    .line 294
    if-eqz p2, :cond_3

    .line 295
    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_3
    if-nez v1, :cond_4

    .line 300
    return-void

    .line 304
    :cond_4
    invoke-static {}, Lorg/apache/poi/hpsf/PropertySetFactory;->newDocumentSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    move-result-object v5

    .line 305
    invoke-virtual {p0, v6, v5, p1}, Lorg/apache/poi/POIDocument;->writePropertySet(Ljava/lang/String;Lorg/apache/poi/hpsf/PropertySet;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    .line 307
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 308
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/poi/poifs/filesystem/Entry;->delete()Z

    .line 310
    :cond_5
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptor()Lorg/apache/poi/poifs/crypt/Encryptor;

    move-result-object v4

    .line 311
    .local v4, "encGen":Lorg/apache/poi/poifs/crypt/Encryptor;
    instance-of v6, v4, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;

    if-eqz v6, :cond_6

    .line 314
    move-object v6, v4

    check-cast v6, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;

    .line 316
    .local v6, "enc":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v7

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getEncryptedPropertyStreamName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v2}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->setSummaryEntries(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    .line 321
    nop

    .line 322
    return-void

    .line 320
    :catchall_0
    move-exception v7

    goto :goto_2

    .line 317
    :catch_0
    move-exception v7

    .line 318
    .local v7, "e":Ljava/security/GeneralSecurityException;
    :try_start_1
    new-instance v8, Ljava/io/IOException;

    invoke-direct {v8, v7}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "ei":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .end local v1    # "encryptProps":Z
    .end local v2    # "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .end local v3    # "si":Lorg/apache/poi/hpsf/SummaryInformation;
    .end local v4    # "encGen":Lorg/apache/poi/poifs/crypt/Encryptor;
    .end local v5    # "dsi":Lorg/apache/poi/hpsf/DocumentSummaryInformation;
    .end local v6    # "enc":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;
    .end local p1    # "outFS":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .end local p2    # "writtenEntries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    .end local v7    # "e":Ljava/security/GeneralSecurityException;
    .restart local v0    # "ei":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .restart local v1    # "encryptProps":Z
    .restart local v2    # "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .restart local v3    # "si":Lorg/apache/poi/hpsf/SummaryInformation;
    .restart local v4    # "encGen":Lorg/apache/poi/poifs/crypt/Encryptor;
    .restart local v5    # "dsi":Lorg/apache/poi/hpsf/DocumentSummaryInformation;
    .restart local v6    # "enc":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;
    .restart local p1    # "outFS":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .restart local p2    # "writtenEntries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    throw v7

    .line 312
    .end local v6    # "enc":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;
    :cond_6
    new-instance v6, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Using "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptionMode()Lorg/apache/poi/poifs/crypt/EncryptionMode;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " encryption. Only CryptoAPI encryption supports encrypted property sets!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected writePropertySet(Ljava/lang/String;Lorg/apache/poi/hpsf/PropertySet;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "set"    # Lorg/apache/poi/hpsf/PropertySet;
    .param p3, "outFS"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Lorg/apache/poi/hpsf/PropertySet;

    invoke-direct {v2, p2}, Lorg/apache/poi/hpsf/PropertySet;-><init>(Lorg/apache/poi/hpsf/PropertySet;)V

    .line 336
    .local v2, "mSet":Lorg/apache/poi/hpsf/PropertySet;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 338
    .local v3, "bOut":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v2, v3}, Lorg/apache/poi/hpsf/PropertySet;->write(Ljava/io/OutputStream;)V

    .line 339
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 340
    .local v4, "data":[B
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 343
    .local v5, "bIn":Ljava/io/ByteArrayInputStream;
    invoke-virtual {p3, v5, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->createOrUpdateDocument(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 345
    sget-object v6, Lorg/apache/poi/POIDocument;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v7, 0x3

    new-array v8, v1, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wrote property set "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " of size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v0

    invoke-virtual {v6, v7, v8}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/poi/hpsf/WritingNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    .end local v2    # "mSet":Lorg/apache/poi/hpsf/PropertySet;
    .end local v3    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "data":[B
    .end local v5    # "bIn":Ljava/io/ByteArrayInputStream;
    goto :goto_0

    .line 346
    :catch_0
    move-exception v2

    .line 347
    .local v2, "wnse":Lorg/apache/poi/hpsf/WritingNotSupportedException;
    sget-object v3, Lorg/apache/poi/POIDocument;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v4, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t write property set with name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " as not supported by HPSF yet"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v0

    invoke-virtual {v3, v4, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 349
    .end local v2    # "wnse":Lorg/apache/poi/hpsf/WritingNotSupportedException;
    :goto_0
    return-void
.end method
