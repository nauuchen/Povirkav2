.class public Lorg/apache/poi/poifs/crypt/temp/SXSSFWorkbookWithCustomZipEntrySource;
.super Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;
.source "SXSSFWorkbookWithCustomZipEntrySource.java"


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lorg/apache/poi/poifs/crypt/temp/SXSSFWorkbookWithCustomZipEntrySource;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/temp/SXSSFWorkbookWithCustomZipEntrySource;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;-><init>(I)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/temp/SXSSFWorkbookWithCustomZipEntrySource;->setCompressTempFiles(Z)V

    .line 41
    return-void
.end method


# virtual methods
.method protected createSheetDataWriter()Lorg/apache/poi/xssf/streaming/SheetDataWriter;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    sget-object v0, Lorg/apache/poi/poifs/crypt/temp/SXSSFWorkbookWithCustomZipEntrySource;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCompressTempFiles: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/temp/SXSSFWorkbookWithCustomZipEntrySource;->isCompressTempFiles()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 70
    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SharedStringSource: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/temp/SXSSFWorkbookWithCustomZipEntrySource;->getSharedStringSource()Lorg/apache/poi/xssf/model/SharedStringsTable;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v3, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 71
    new-instance v0, Lorg/apache/poi/poifs/crypt/temp/SheetDataWriterWithDecorator;

    invoke-direct {v0}, Lorg/apache/poi/poifs/crypt/temp/SheetDataWriterWithDecorator;-><init>()V

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/temp/SXSSFWorkbookWithCustomZipEntrySource;->flushSheets()V

    .line 46
    new-instance v0, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;

    invoke-direct {v0}, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;-><init>()V

    .line 47
    .local v0, "tempData":Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;
    const/4 v1, 0x0

    .line 49
    .local v1, "source":Lorg/apache/poi/openxml4j/util/ZipEntrySource;
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 51
    .local v2, "os":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/temp/SXSSFWorkbookWithCustomZipEntrySource;->getXSSFWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->write(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :try_start_2
    invoke-static {v2}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 54
    nop

    .line 56
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->createZipEntrySource(Ljava/io/InputStream;)Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;

    move-result-object v3

    move-object v1, v3

    .line 57
    invoke-virtual {p0, v1, p1}, Lorg/apache/poi/poifs/crypt/temp/SXSSFWorkbookWithCustomZipEntrySource;->injectData(Lorg/apache/poi/openxml4j/util/ZipEntrySource;Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 61
    .end local v2    # "os":Ljava/io/OutputStream;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->dispose()V

    .line 62
    invoke-static {v1}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 63
    nop

    .line 64
    return-void

    .line 53
    .restart local v2    # "os":Ljava/io/OutputStream;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v2}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .end local v0    # "tempData":Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;
    .end local v1    # "source":Lorg/apache/poi/openxml4j/util/ZipEntrySource;
    .end local p1    # "stream":Ljava/io/OutputStream;
    throw v3
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 61
    .end local v2    # "os":Ljava/io/OutputStream;
    .restart local v0    # "tempData":Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;
    .restart local v1    # "source":Lorg/apache/poi/openxml4j/util/ZipEntrySource;
    .restart local p1    # "stream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v2

    goto :goto_0

    .line 58
    :catch_0
    move-exception v2

    .line 59
    .local v2, "e":Ljava/security/GeneralSecurityException;
    :try_start_4
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "tempData":Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;
    .end local v1    # "source":Lorg/apache/poi/openxml4j/util/ZipEntrySource;
    .end local p1    # "stream":Ljava/io/OutputStream;
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 61
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    .restart local v0    # "tempData":Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;
    .restart local v1    # "source":Lorg/apache/poi/openxml4j/util/ZipEntrySource;
    .restart local p1    # "stream":Ljava/io/OutputStream;
    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->dispose()V

    .line 62
    invoke-static {v1}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
.end method
