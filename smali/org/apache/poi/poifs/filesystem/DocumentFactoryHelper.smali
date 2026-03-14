.class public Lorg/apache/poi/poifs/filesystem/DocumentFactoryHelper;
.super Ljava/lang/Object;
.source "DocumentFactoryHelper.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDecryptedStream(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .param p0, "fs"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    new-instance v0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;-><init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    .line 49
    .local v0, "info":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    invoke-static {v0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getInstance(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object v1

    .line 52
    .local v1, "d":Lorg/apache/poi/poifs/crypt/Decryptor;
    const/4 v2, 0x0

    .line 53
    .local v2, "passwordCorrect":Z
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {v1, p1}, Lorg/apache/poi/poifs/crypt/Decryptor;->verifyPassword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    const/4 v2, 0x1

    goto :goto_0

    .line 77
    .end local v2    # "passwordCorrect":Z
    :catch_0
    move-exception v2

    goto :goto_1

    .line 56
    .restart local v2    # "passwordCorrect":Z
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    const-string v3, "VelvetSweatshop"

    invoke-virtual {v1, v3}, Lorg/apache/poi/poifs/crypt/Decryptor;->verifyPassword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 57
    const/4 v2, 0x1

    .line 60
    :cond_1
    if-eqz v2, :cond_2

    .line 63
    new-instance v3, Lorg/apache/poi/poifs/filesystem/DocumentFactoryHelper$1;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/poi/poifs/crypt/Decryptor;->getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lorg/apache/poi/poifs/filesystem/DocumentFactoryHelper$1;-><init>(Ljava/io/InputStream;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    return-object v3

    .line 72
    :cond_2
    if-eqz p1, :cond_3

    .line 73
    new-instance v3, Lorg/apache/poi/EncryptedDocumentException;

    const-string v4, "Password incorrect"

    invoke-direct {v3, v4}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "info":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .end local v1    # "d":Lorg/apache/poi/poifs/crypt/Decryptor;
    .end local p0    # "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .end local p1    # "password":Ljava/lang/String;
    throw v3

    .line 75
    .restart local v0    # "info":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .restart local v1    # "d":Lorg/apache/poi/poifs/crypt/Decryptor;
    .restart local p0    # "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .restart local p1    # "password":Ljava/lang/String;
    :cond_3
    new-instance v3, Lorg/apache/poi/EncryptedDocumentException;

    const-string v4, "The supplied spreadsheet is protected, but no password was supplied"

    invoke-direct {v3, v4}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "info":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .end local v1    # "d":Lorg/apache/poi/poifs/crypt/Decryptor;
    .end local p0    # "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .end local p1    # "password":Ljava/lang/String;
    throw v3
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .restart local v0    # "info":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .restart local v1    # "d":Lorg/apache/poi/poifs/crypt/Decryptor;
    .local v2, "e":Ljava/security/GeneralSecurityException;
    .restart local p0    # "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .restart local p1    # "password":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static hasOOXMLHeader(Ljava/io/InputStream;)Z
    .locals 2
    .param p0, "inp"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "4.0"
    .end annotation

    .line 97
    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf(Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/poifs/filesystem/FileMagic;->OOXML:Lorg/apache/poi/poifs/filesystem/FileMagic;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
