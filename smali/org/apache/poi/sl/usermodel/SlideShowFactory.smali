.class public Lorg/apache/poi/sl/usermodel/SlideShowFactory;
.super Ljava/lang/Object;
.source "SlideShowFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    return-void
.end method

.method public static create(Ljava/io/File;)Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lorg/apache/poi/sl/usermodel/SlideShow<",
            "**>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/EncryptedDocumentException;
        }
    .end annotation

    .line 165
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/sl/usermodel/SlideShowFactory;->create(Ljava/io/File;Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/poi/sl/usermodel/SlideShow<",
            "**>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/EncryptedDocumentException;
        }
    .end annotation

    .line 184
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/poi/sl/usermodel/SlideShowFactory;->create(Ljava/io/File;Ljava/lang/String;Z)Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;Ljava/lang/String;Z)Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "readOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Z)",
            "Lorg/apache/poi/sl/usermodel/SlideShow<",
            "**>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/EncryptedDocumentException;
        }
    .end annotation

    .line 205
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const/4 v0, 0x0

    .line 211
    .local v0, "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    :try_start_0
    new-instance v1, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v1, p0, p2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/File;Z)V

    move-object v0, v1

    .line 212
    invoke-static {v0, p1}, Lorg/apache/poi/sl/usermodel/SlideShowFactory;->create(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object v1
    :try_end_0
    .catch Lorg/apache/poi/poifs/filesystem/OfficeXmlFileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 216
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 218
    throw v1

    .line 213
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 214
    .local v1, "e":Lorg/apache/poi/poifs/filesystem/OfficeXmlFileException;
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 215
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lorg/apache/poi/sl/usermodel/SlideShowFactory;->createXSLFSlideShow([Ljava/lang/Object;)Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object v2

    return-object v2

    .line 206
    .end local v0    # "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .end local v1    # "e":Lorg/apache/poi/poifs/filesystem/OfficeXmlFileException;
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Ljava/io/InputStream;)Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 1
    .param p0, "inp"    # Ljava/io/InputStream;
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
            Lorg/apache/poi/EncryptedDocumentException;
        }
    .end annotation

    .line 113
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/sl/usermodel/SlideShowFactory;->create(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 6
    .param p0, "inp"    # Ljava/io/InputStream;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/poi/sl/usermodel/SlideShow<",
            "**>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/EncryptedDocumentException;
        }
    .end annotation

    .line 137
    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->prepareToCheckMagic(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 138
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {v0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf(Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v1

    .line 140
    .local v1, "fm":Lorg/apache/poi/poifs/filesystem/FileMagic;
    sget-object v2, Lorg/apache/poi/sl/usermodel/SlideShowFactory$1;->$SwitchMap$org$apache$poi$poifs$filesystem$FileMagic:[I

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/FileMagic;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v2, v4, :cond_0

    move-object v2, v5

    .line 145
    .local v2, "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v3}, Lorg/apache/poi/sl/usermodel/SlideShowFactory;->createXSLFSlideShow([Ljava/lang/Object;)Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object v3

    return-object v3

    .line 140
    .end local v2    # "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    :cond_0
    move-object v2, v5

    .line 147
    .restart local v2    # "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Your InputStream was neither an OLE2 stream, nor an OOXML stream"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 142
    .end local v2    # "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    :cond_1
    new-instance v2, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v2, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    .line 143
    .restart local v2    # "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    invoke-static {v2, p1}, Lorg/apache/poi/sl/usermodel/SlideShowFactory;->create(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object v3

    return-object v3
.end method

.method public static create(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 1
    .param p0, "fs"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;",
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

    .line 48
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/sl/usermodel/SlideShowFactory;->create(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 5
    .param p0, "fs"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;",
            "Ljava/lang/String;",
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

    .line 63
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    .line 66
    .local v0, "root":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    const-string v1, "EncryptedPackage"

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 67
    const/4 v1, 0x0

    .line 69
    .local v1, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/poi/poifs/filesystem/DocumentFactoryHelper;->getDecryptedStream(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    move-object v1, v4

    .line 71
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-static {v3}, Lorg/apache/poi/sl/usermodel/SlideShowFactory;->createXSLFSlideShow([Ljava/lang/Object;)Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-static {v1}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v1}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2

    .line 79
    .end local v1    # "stream":Ljava/io/InputStream;
    :cond_0
    const/4 v1, 0x0

    .line 80
    .local v1, "passwordSet":Z
    if-eqz p1, :cond_1

    .line 81
    invoke-static {p1}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    .line 82
    const/4 v1, 0x1

    .line 85
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-static {v3}, Lorg/apache/poi/sl/usermodel/SlideShowFactory;->createHSLFSlideShow([Ljava/lang/Object;)Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 87
    if-eqz v1, :cond_2

    .line 88
    invoke-static {v4}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    :cond_2
    return-object v2

    .line 87
    :catchall_1
    move-exception v2

    if-eqz v1, :cond_3

    .line 88
    invoke-static {v4}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    :cond_3
    throw v2
.end method

.method protected static varargs createHSLFSlideShow([Ljava/lang/Object;)Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 1
    .param p0, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/poi/sl/usermodel/SlideShow<",
            "**>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/EncryptedDocumentException;
        }
    .end annotation

    .line 223
    const-string v0, "org.apache.poi.hslf.usermodel.HSLFSlideShowFactory"

    invoke-static {v0, p0}, Lorg/apache/poi/sl/usermodel/SlideShowFactory;->createSlideShow(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object v0

    return-object v0
.end method

.method protected static createSlideShow(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 9
    .param p0, "factoryClass"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/poi/sl/usermodel/SlideShow<",
            "**>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/EncryptedDocumentException;
        }
    .end annotation

    .line 232
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 233
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/Class;

    .line 234
    .local v1, "argsClz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 235
    .local v2, "i":I
    move-object v3, p1

    .local v3, "arr$":[Ljava/lang/Object;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 236
    .local v6, "o":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 237
    .local v7, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v8, Ljava/lang/Boolean;

    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 238
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object v7, v8

    goto :goto_1

    .line 239
    :cond_0
    const-class v8, Ljava/io/InputStream;

    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 240
    const-class v8, Ljava/io/InputStream;

    move-object v7, v8

    .line 242
    :cond_1
    :goto_1
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "i":I
    .local v8, "i":I
    aput-object v7, v1, v2

    .line 235
    .end local v6    # "o":Ljava/lang/Object;
    .end local v7    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v5, v5, 0x1

    move v2, v8

    goto :goto_0

    .line 244
    .end local v3    # "arr$":[Ljava/lang/Object;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    .end local v8    # "i":I
    .restart local v2    # "i":I
    :cond_2
    const-string v3, "createSlideShow"

    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 245
    .local v3, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/sl/usermodel/SlideShow;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 257
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "argsClz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v2    # "i":I
    .end local v3    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 246
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 248
    .local v1, "t":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/io/IOException;

    if-nez v2, :cond_5

    .line 250
    instance-of v2, v1, Lorg/apache/poi/EncryptedDocumentException;

    if-nez v2, :cond_4

    .line 252
    instance-of v2, v1, Lorg/apache/poi/OldFileFormatException;

    if-eqz v2, :cond_3

    .line 253
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/OldFileFormatException;

    throw v2

    .line 255
    :cond_3
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 251
    :cond_4
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/EncryptedDocumentException;

    throw v2

    .line 249
    :cond_5
    move-object v2, v1

    check-cast v2, Ljava/io/IOException;

    throw v2
.end method

.method protected static varargs createXSLFSlideShow([Ljava/lang/Object;)Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 1
    .param p0, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/poi/sl/usermodel/SlideShow<",
            "**>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/EncryptedDocumentException;
        }
    .end annotation

    .line 227
    const-string v0, "org.apache.poi.xslf.usermodel.XSLFSlideShowFactory"

    invoke-static {v0, p0}, Lorg/apache/poi/sl/usermodel/SlideShowFactory;->createSlideShow(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object v0

    return-object v0
.end method
