.class public Lorg/apache/poi/ss/usermodel/WorkbookFactory;
.super Ljava/lang/Object;
.source "WorkbookFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    return-void
.end method

.method public static create(Ljava/io/File;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;,
            Lorg/apache/poi/EncryptedDocumentException;
        }
    .end annotation

    .line 205
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->create(Ljava/io/File;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;,
            Lorg/apache/poi/EncryptedDocumentException;
        }
    .end annotation

    .line 226
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->create(Ljava/io/File;Ljava/lang/String;Z)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;Ljava/lang/String;Z)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "readOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;,
            Lorg/apache/poi/EncryptedDocumentException;
        }
    .end annotation

    .line 249
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 254
    :try_start_0
    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v0, p0, p2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Lorg/apache/poi/poifs/filesystem/OfficeXmlFileException; {:try_start_0 .. :try_end_0} :catch_1

    .line 256
    .local v0, "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    :try_start_1
    invoke-static {v0, p1}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->create(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/poi/poifs/filesystem/OfficeXmlFileException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 257
    :catch_0
    move-exception v1

    .line 259
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 260
    nop

    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "password":Ljava/lang/String;
    .end local p2    # "readOnly":Z
    throw v1
    :try_end_2
    .catch Lorg/apache/poi/poifs/filesystem/OfficeXmlFileException; {:try_start_2 .. :try_end_2} :catch_1

    .line 262
    .end local v0    # "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "password":Ljava/lang/String;
    .restart local p2    # "readOnly":Z
    :catch_1
    move-exception v0

    .line 264
    .local v0, "e":Lorg/apache/poi/poifs/filesystem/OfficeXmlFileException;
    if-eqz p2, :cond_0

    sget-object v1, Lorg/apache/poi/openxml4j/opc/PackageAccess;->READ:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/apache/poi/openxml4j/opc/PackageAccess;->READ_WRITE:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    :goto_0
    invoke-static {p0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/io/File;Lorg/apache/poi/openxml4j/opc/PackageAccess;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v1

    .line 266
    .local v1, "pkg":Lorg/apache/poi/openxml4j/opc/OPCPackage;
    :try_start_3
    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-direct {v2, v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-object v2

    .line 267
    :catch_2
    move-exception v2

    .line 269
    .local v2, "ioe":Ljava/lang/Exception;
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->revert()V

    .line 272
    instance-of v3, v2, Ljava/io/IOException;

    if-nez v3, :cond_2

    .line 274
    instance-of v3, v2, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_1

    .line 275
    move-object v3, v2

    check-cast v3, Ljava/lang/RuntimeException;

    throw v3

    .line 277
    :cond_1
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 273
    :cond_2
    move-object v3, v2

    check-cast v3, Ljava/io/IOException;

    throw v3

    .line 250
    .end local v0    # "e":Lorg/apache/poi/poifs/filesystem/OfficeXmlFileException;
    .end local v1    # "pkg":Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .end local v2    # "ioe":Ljava/lang/Exception;
    :cond_3
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Ljava/io/InputStream;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 1
    .param p0, "inp"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;,
            Lorg/apache/poi/EncryptedDocumentException;
        }
    .end annotation

    .line 149
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->create(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 5
    .param p0, "inp"    # Ljava/io/InputStream;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;,
            Lorg/apache/poi/EncryptedDocumentException;
        }
    .end annotation

    .line 175
    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->prepareToCheckMagic(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 177
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {v0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf(Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v1

    .line 179
    .local v1, "fm":Lorg/apache/poi/poifs/filesystem/FileMagic;
    sget-object v2, Lorg/apache/poi/ss/usermodel/WorkbookFactory$1;->$SwitchMap$org$apache$poi$poifs$filesystem$FileMagic:[I

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/FileMagic;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    move-object v2, v4

    .line 184
    .local v2, "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    new-instance v3, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-object v3

    .line 179
    .end local v2    # "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    :cond_0
    move-object v2, v4

    .line 186
    .restart local v2    # "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    new-instance v3, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    const-string v4, "Your InputStream was neither an OLE2 stream, nor an OOXML stream"

    invoke-direct {v3, v4}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 181
    .end local v2    # "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    :cond_1
    new-instance v2, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v2, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    .line 182
    .restart local v2    # "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    invoke-static {v2, p1}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->create(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v3

    return-object v3
.end method

.method public static create(Lorg/apache/poi/openxml4j/opc/OPCPackage;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 1
    .param p0, "pkg"    # Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-object v0
.end method

.method public static create(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 2
    .param p0, "fs"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->create(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 65
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static create(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 5
    .param p0, "fs"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    .line 87
    .local v0, "root":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    const-string v1, "EncryptedPackage"

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-static {p0, p1}, Lorg/apache/poi/poifs/filesystem/DocumentFactoryHelper;->getDecryptedStream(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 90
    .local v1, "stream":Ljava/io/InputStream;
    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v2

    .line 91
    .local v2, "pkg":Lorg/apache/poi/openxml4j/opc/OPCPackage;
    invoke-static {v2}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->create(Lorg/apache/poi/openxml4j/opc/OPCPackage;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v3

    return-object v3

    .line 96
    .end local v1    # "stream":Ljava/io/InputStream;
    .end local v2    # "pkg":Lorg/apache/poi/openxml4j/opc/OPCPackage;
    :cond_0
    const/4 v1, 0x0

    .line 97
    .local v1, "passwordSet":Z
    if-eqz p1, :cond_1

    .line 98
    invoke-static {p1}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    .line 99
    const/4 v1, 0x1

    .line 102
    :cond_1
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    if-eqz v1, :cond_2

    .line 105
    invoke-static {v2}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    :cond_2
    return-object v3

    .line 104
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_3

    .line 105
    invoke-static {v2}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    :cond_3
    throw v3
.end method

.method public static create(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 1
    .param p0, "fs"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    return-object v0
.end method
