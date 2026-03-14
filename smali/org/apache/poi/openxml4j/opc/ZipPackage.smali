.class public final Lorg/apache/poi/openxml4j/opc/ZipPackage;
.super Lorg/apache/poi/openxml4j/opc/OPCPackage;
.source "ZipPackage.java"


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;

.field private static final MIMETYPE:Ljava/lang/String; = "mimetype"

.field private static final SETTINGS_XML:Ljava/lang/String; = "settings.xml"


# instance fields
.field private final zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-class v0, Lorg/apache/poi/openxml4j/opc/ZipPackage;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 72
    sget-object v0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->defaultPackageAccess:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;-><init>(Lorg/apache/poi/openxml4j/opc/PackageAccess;)V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    .line 76
    :try_start_0
    new-instance v1, Lorg/apache/poi/openxml4j/opc/internal/ZipContentTypeManager;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/openxml4j/opc/internal/ZipContentTypeManager;-><init>(Ljava/io/InputStream;Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    iput-object v1, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    sget-object v1, Lorg/apache/poi/openxml4j/opc/ZipPackage;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x5

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Could not parse ZipPackage"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 80
    .end local v0    # "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    :goto_0
    return-void
.end method

.method constructor <init>(Ljava/io/File;Lorg/apache/poi/openxml4j/opc/PackageAccess;)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "access"    # Lorg/apache/poi/openxml4j/opc/PackageAccess;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;
        }
    .end annotation

    .line 130
    invoke-direct {p0, p2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;-><init>(Lorg/apache/poi/openxml4j/opc/PackageAccess;)V

    .line 134
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/internal/ZipHelper;->openZipFile(Ljava/io/File;)Ljava/util/zip/ZipFile;

    move-result-object v1

    .line 135
    .local v1, "zipFile":Ljava/util/zip/ZipFile;
    new-instance v2, Lorg/apache/poi/openxml4j/util/ZipFileZipEntrySource;

    invoke-direct {v2, v1}, Lorg/apache/poi/openxml4j/util/ZipFileZipEntrySource;-><init>(Ljava/util/zip/ZipFile;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 143
    .end local v1    # "zipFile":Ljava/util/zip/ZipFile;
    .local v0, "ze":Lorg/apache/poi/openxml4j/util/ZipEntrySource;
    goto :goto_0

    .line 136
    .end local v0    # "ze":Lorg/apache/poi/openxml4j/util/ZipEntrySource;
    :catch_0
    move-exception v1

    .line 138
    .restart local v0    # "ze":Lorg/apache/poi/openxml4j/util/ZipEntrySource;
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lorg/apache/poi/openxml4j/opc/PackageAccess;->WRITE:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    if-eq p2, v2, :cond_0

    .line 141
    sget-object v2, Lorg/apache/poi/openxml4j/opc/ZipPackage;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v3, 0x7

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in zip file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - falling back to stream processing (i.e. ignoring zip central directory)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 142
    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->openZipEntrySourceStream(Ljava/io/File;)Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    move-result-object v0

    .line 144
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    .line 145
    return-void

    .line 139
    .restart local v1    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v2, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t open the specified file: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method constructor <init>(Ljava/io/InputStream;Lorg/apache/poi/openxml4j/opc/PackageAccess;)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "access"    # Lorg/apache/poi/openxml4j/opc/PackageAccess;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-direct {p0, p2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;-><init>(Lorg/apache/poi/openxml4j/opc/PackageAccess;)V

    .line 98
    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/internal/ZipHelper;->openZipStream(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;

    move-result-object v0

    .line 100
    .local v0, "zis":Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;
    :try_start_0
    new-instance v1, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;

    invoke-direct {v1, v0}, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;-><init>(Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;)V

    iput-object v1, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    nop

    .line 105
    return-void

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 103
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to read zip entry source"

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method constructor <init>(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/PackageAccess;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "access"    # Lorg/apache/poi/openxml4j/opc/PackageAccess;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/openxml4j/opc/ZipPackage;-><init>(Ljava/io/File;Lorg/apache/poi/openxml4j/opc/PackageAccess;)V

    .line 118
    return-void
.end method

.method constructor <init>(Lorg/apache/poi/openxml4j/util/ZipEntrySource;Lorg/apache/poi/openxml4j/opc/PackageAccess;)V
    .locals 0
    .param p1, "zipEntry"    # Lorg/apache/poi/openxml4j/util/ZipEntrySource;
    .param p2, "access"    # Lorg/apache/poi/openxml4j/opc/PackageAccess;

    .line 220
    invoke-direct {p0, p2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;-><init>(Lorg/apache/poi/openxml4j/opc/PackageAccess;)V

    .line 221
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    .line 222
    return-void
.end method

.method private buildPartName(Ljava/util/zip/ZipEntry;)Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .locals 8
    .param p1, "entry"    # Ljava/util/zip/ZipEntry;

    .line 358
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[Content_Types].xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    return-object v0

    .line 362
    :cond_0
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/internal/ZipHelper;->getOPCNameFromZipItemName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 364
    :catch_0
    move-exception v1

    .line 366
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/poi/openxml4j/opc/ZipPackage;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v3, 0x5

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Entry "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not valid, so this part won\'t be add to the package."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 369
    return-object v0
.end method

.method private declared-synchronized generateTempFileName(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p1, "directory"    # Ljava/io/File;

    monitor-enter p0

    .line 476
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "OpenXML4J"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 478
    .local v0, "tmpFilename":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 479
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/internal/FileHelper;->getFilename(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 475
    .end local v0    # "tmpFilename":Ljava/io/File;
    .end local p0    # "this":Lorg/apache/poi/openxml4j/opc/ZipPackage;
    .end local p1    # "directory":Ljava/io/File;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static openZipEntrySourceStream(Ljava/io/File;)Lorg/apache/poi/openxml4j/util/ZipEntrySource;
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;
        }
    .end annotation

    const-string v0, "\'"

    .line 152
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v2

    .line 156
    .local v1, "fis":Ljava/io/FileInputStream;
    nop

    .line 161
    :try_start_1
    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->openZipEntrySourceStream(Ljava/io/FileInputStream;)Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 162
    :catch_0
    move-exception v2

    .line 164
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 165
    instance-of v3, v2, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    if-eqz v3, :cond_0

    .line 166
    move-object v0, v2

    check-cast v0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    throw v0

    .line 168
    :cond_0
    new-instance v3, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read the file input stream from file: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 153
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 155
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t open the specified file input stream from file: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static openZipEntrySourceStream(Ljava/io/FileInputStream;)Lorg/apache/poi/openxml4j/util/ZipEntrySource;
    .locals 4
    .param p0, "fis"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;
        }
    .end annotation

    .line 178
    :try_start_0
    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/internal/ZipHelper;->openZipStream(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 182
    .local v0, "zis":Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;
    nop

    .line 187
    :try_start_1
    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->openZipEntrySourceStream(Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;)Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    .line 188
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 191
    instance-of v2, v1, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    if-eqz v2, :cond_0

    .line 192
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    throw v2

    .line 194
    :cond_0
    new-instance v2, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v3, "Failed to read the zip entry source stream"

    invoke-direct {v2, v3, v1}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 179
    .end local v0    # "zis":Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    const/4 v1, 0x0

    .line 181
    .local v0, "e":Ljava/io/IOException;
    .local v1, "zis":Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;
    new-instance v2, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v3, "Could not open the file input stream"

    invoke-direct {v2, v3, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static openZipEntrySourceStream(Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;)Lorg/apache/poi/openxml4j/util/ZipEntrySource;
    .locals 3
    .param p0, "zis"    # Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;
        }
    .end annotation

    .line 203
    :try_start_0
    new-instance v0, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;-><init>(Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v2, "Could not open the specified zip entry source stream"

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected closeImpl()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 431
    const-string v0, "\' cannot be deleted ! Make sure that no other application use it."

    const-string v1, "The temporary file: \'"

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->flush()V

    .line 433
    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->originalPackagePath:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->originalPackagePath:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 438
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->originalPackagePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 439
    .local v2, "targetFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 445
    invoke-static {v2}, Lorg/apache/poi/openxml4j/opc/internal/FileHelper;->getDirectory(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->generateTempFileName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 446
    .local v3, "tempFileName":Ljava/lang/String;
    const-string v4, ".tmp"

    invoke-static {v3, v4}, Lorg/apache/poi/util/TempFile;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 450
    .local v4, "tempFile":Ljava/io/File;
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x5

    :try_start_0
    invoke-virtual {p0, v4}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->save(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 453
    iget-object v8, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    invoke-static {v8}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 456
    :try_start_1
    invoke-static {v4, v2}, Lorg/apache/poi/openxml4j/opc/internal/FileHelper;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 459
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_1

    .line 460
    sget-object v8, Lorg/apache/poi/openxml4j/opc/ZipPackage;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v5

    invoke-virtual {v8, v7, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 465
    :cond_1
    nop

    .line 466
    return-void

    .line 459
    :catchall_0
    move-exception v8

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_2

    .line 460
    sget-object v9, Lorg/apache/poi/openxml4j/opc/ZipPackage;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v5

    invoke-virtual {v9, v7, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_2
    throw v8

    .line 453
    :catchall_1
    move-exception v8

    iget-object v9, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    invoke-static {v9}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 456
    :try_start_2
    invoke-static {v4, v2}, Lorg/apache/poi/openxml4j/opc/internal/FileHelper;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 459
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_3

    .line 460
    sget-object v9, Lorg/apache/poi/openxml4j/opc/ZipPackage;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v5

    invoke-virtual {v9, v7, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_3
    throw v8

    .line 459
    :catchall_2
    move-exception v8

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_4

    .line 460
    sget-object v9, Lorg/apache/poi/openxml4j/opc/ZipPackage;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v5

    invoke-virtual {v9, v7, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_4
    throw v8

    .line 440
    .end local v3    # "tempFileName":Ljava/lang/String;
    .end local v4    # "tempFile":Ljava/io/File;
    :cond_5
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v1, "Can\'t close a package not previously open with the open() method !"

    invoke-direct {v0, v1}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    .end local v2    # "targetFile":Ljava/io/File;
    :cond_6
    :goto_0
    return-void
.end method

.method protected createPartImpl(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;Z)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 5
    .param p1, "partName"    # Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "loadRelationships"    # Z

    .line 386
    if-eqz p2, :cond_1

    .line 390
    if-eqz p1, :cond_0

    .line 395
    :try_start_0
    new-instance v0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    sget-object v1, Lorg/apache/poi/openxml4j/opc/ZipPackage;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x5

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 398
    const/4 v1, 0x0

    return-object v1

    .line 391
    .end local v0    # "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "partName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "contentType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected flushImpl()V
    .locals 0

    .line 421
    return-void
.end method

.method protected getPartImpl(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 1
    .param p1, "partName"    # Lorg/apache/poi/openxml4j/opc/PackagePartName;

    .line 506
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->containsKey(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->get(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    return-object v0

    .line 509
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPartsImpl()[Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    invoke-direct {v0}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    .line 241
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    if-nez v0, :cond_1

    .line 242
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->sortedValues()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/openxml4j/opc/PackagePart;

    return-object v0

    .line 247
    :cond_1
    invoke-interface {v0}, Lorg/apache/poi/openxml4j/util/ZipEntrySource;->getEntries()Ljava/util/Enumeration;

    move-result-object v0

    .line 248
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 249
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 250
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[Content_Types].xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 253
    :try_start_0
    new-instance v2, Lorg/apache/poi/openxml4j/opc/internal/ZipContentTypeManager;

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->getZipArchive()Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/apache/poi/openxml4j/util/ZipEntrySource;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lorg/apache/poi/openxml4j/opc/internal/ZipContentTypeManager;-><init>(Ljava/io/InputStream;Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    iput-object v2, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    goto :goto_1

    .line 255
    :catch_0
    move-exception v2

    .line 256
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 260
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    goto :goto_0

    .line 263
    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;

    if-nez v1, :cond_a

    .line 265
    const/4 v1, 0x0

    .line 266
    .local v1, "numEntries":I
    const/4 v2, 0x0

    .line 267
    .local v2, "hasMimetype":Z
    const/4 v3, 0x0

    .line 268
    .local v3, "hasSettingsXML":Z
    iget-object v4, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    invoke-interface {v4}, Lorg/apache/poi/openxml4j/util/ZipEntrySource;->getEntries()Ljava/util/Enumeration;

    move-result-object v0

    .line 269
    :goto_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 270
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 271
    .local v4, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 272
    .local v5, "name":Ljava/lang/String;
    const-string v6, "mimetype"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 273
    const/4 v2, 0x1

    .line 275
    :cond_4
    const-string v6, "settings.xml"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 276
    const/4 v3, 0x1

    .line 278
    :cond_5
    nop

    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "name":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 279
    goto :goto_2

    .line 280
    :cond_6
    if-eqz v2, :cond_8

    if-nez v3, :cond_7

    goto :goto_3

    .line 281
    :cond_7
    new-instance v4, Lorg/apache/poi/openxml4j/exceptions/ODFNotOfficeXmlFileException;

    const-string v5, "The supplied data appears to be in ODF (Open Document) Format. Formats like these (eg ODS, ODP) are not supported, try Apache ODFToolkit"

    invoke-direct {v4, v5}, Lorg/apache/poi/openxml4j/exceptions/ODFNotOfficeXmlFileException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 285
    :cond_8
    :goto_3
    if-nez v1, :cond_9

    .line 286
    new-instance v4, Lorg/apache/poi/openxml4j/exceptions/NotOfficeXmlFileException;

    const-string v5, "No valid entries or contents found, this is not a valid OOXML (Office Open XML) file"

    invoke-direct {v4, v5}, Lorg/apache/poi/openxml4j/exceptions/NotOfficeXmlFileException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 292
    :cond_9
    new-instance v4, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    const-string v5, "Package should contain a content type part [M1.13]"

    invoke-direct {v4, v5}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 300
    .end local v1    # "numEntries":I
    .end local v2    # "hasMimetype":Z
    .end local v3    # "hasSettingsXML":Z
    :cond_a
    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    invoke-interface {v1}, Lorg/apache/poi/openxml4j/util/ZipEntrySource;->getEntries()Ljava/util/Enumeration;

    move-result-object v0

    .line 301
    :goto_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    const-string v2, "application/vnd.openxmlformats-package.relationships+xml"

    if-eqz v1, :cond_d

    .line 302
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 303
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    invoke-direct {p0, v1}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->buildPartName(Ljava/util/zip/ZipEntry;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v3

    .line 304
    .local v3, "partName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    if-nez v3, :cond_b

    .line 305
    goto :goto_4

    .line 309
    :cond_b
    iget-object v4, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;

    invoke-virtual {v4, v3}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->getContentType(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Ljava/lang/String;

    move-result-object v4

    .line 310
    .local v4, "contentType":Ljava/lang/String;
    if-eqz v4, :cond_c

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 312
    :try_start_1
    new-instance v2, Lorg/apache/poi/openxml4j/opc/ZipPackagePart;

    invoke-direct {v2, p0, v1, v3, v4}, Lorg/apache/poi/openxml4j/opc/ZipPackagePart;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Ljava/util/zip/ZipEntry;Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)V

    .line 313
    .local v2, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    iget-object v5, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    invoke-virtual {v5, v3, v2}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->put(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    :try_end_1
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 316
    nop

    .end local v2    # "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    goto :goto_5

    .line 314
    :catch_1
    move-exception v2

    .line 315
    .local v2, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;
    new-instance v5, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 318
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .end local v2    # "e":Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;
    .end local v3    # "partName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .end local v4    # "contentType":Ljava/lang/String;
    :cond_c
    :goto_5
    goto :goto_4

    .line 321
    :cond_d
    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    invoke-interface {v1}, Lorg/apache/poi/openxml4j/util/ZipEntrySource;->getEntries()Ljava/util/Enumeration;

    move-result-object v0

    .line 322
    :goto_6
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 323
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 324
    .restart local v1    # "entry":Ljava/util/zip/ZipEntry;
    invoke-direct {p0, v1}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->buildPartName(Ljava/util/zip/ZipEntry;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v3

    .line 325
    .restart local v3    # "partName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    if-nez v3, :cond_e

    .line 326
    goto :goto_6

    .line 329
    :cond_e
    iget-object v4, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;

    invoke-virtual {v4, v3}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->getContentType(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Ljava/lang/String;

    move-result-object v4

    .line 330
    .restart local v4    # "contentType":Ljava/lang/String;
    if-eqz v4, :cond_f

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    goto :goto_7

    .line 333
    :cond_f
    if-eqz v4, :cond_10

    .line 335
    :try_start_2
    new-instance v5, Lorg/apache/poi/openxml4j/opc/ZipPackagePart;

    invoke-direct {v5, p0, v1, v3, v4}, Lorg/apache/poi/openxml4j/opc/ZipPackagePart;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Ljava/util/zip/ZipEntry;Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)V

    .line 336
    .local v5, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    iget-object v6, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    invoke-virtual {v6, v3, v5}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->put(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    :try_end_2
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 339
    nop

    .line 345
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "partName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .end local v4    # "contentType":Ljava/lang/String;
    .end local v5    # "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    :goto_7
    goto :goto_6

    .line 337
    .restart local v1    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v3    # "partName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .restart local v4    # "contentType":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 338
    .restart local v2    # "e":Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;
    new-instance v5, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 341
    .end local v2    # "e":Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;
    :cond_10
    new-instance v2, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The part "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not have any content type ! Rule: Package require content types when retrieving a part from a package. [M.1.14]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 347
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "partName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .end local v4    # "contentType":Ljava/lang/String;
    :cond_11
    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->sortedValues()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->size()I

    move-result v2

    new-array v2, v2, [Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/poi/openxml4j/opc/PackagePart;

    return-object v1
.end method

.method public getZipArchive()Lorg/apache/poi/openxml4j/util/ZipEntrySource;
    .locals 1

    .line 607
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    return-object v0
.end method

.method protected removePartImpl(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V
    .locals 2
    .param p1, "partName"    # Lorg/apache/poi/openxml4j/opc/PackagePartName;

    .line 410
    if-eqz p1, :cond_0

    .line 413
    return-void

    .line 411
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "partUri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected revertImpl()V
    .locals 1

    .line 489
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    if-eqz v0, :cond_0

    .line 490
    invoke-interface {v0}, Lorg/apache/poi/openxml4j/util/ZipEntrySource;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    :cond_0
    goto :goto_0

    .line 492
    :catch_0
    move-exception v0

    .line 495
    :goto_0
    return-void
.end method

.method public saveImpl(Ljava/io/OutputStream;)V
    .locals 10
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    const-string v0, "application/vnd.openxmlformats-package.core-properties+xml"

    const-string v1, "http://schemas.openxmlformats.org/package/2006/relationships/metadata/core-properties"

    .line 524
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->throwExceptionIfReadOnly()V

    .line 528
    const/4 v2, 0x0

    :try_start_0
    instance-of v3, p1, Ljava/util/zip/ZipOutputStream;

    if-nez v3, :cond_0

    .line 529
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v3, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v3, "zos":Ljava/util/zip/ZipOutputStream;
    goto :goto_0

    .line 531
    .end local v3    # "zos":Ljava/util/zip/ZipOutputStream;
    :cond_0
    move-object v3, p1

    check-cast v3, Ljava/util/zip/ZipOutputStream;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 536
    .restart local v3    # "zos":Ljava/util/zip/ZipOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {p0, v1}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->getPartsByRelationshipType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_1

    const-string v4, "http://schemas.openxmlformats.org/officedocument/2006/relationships/metadata/core-properties"

    invoke-virtual {p0, v4}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->getPartsByRelationshipType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 538
    sget-object v4, Lorg/apache/poi/openxml4j/opc/ZipPackage;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v7, v6, [Ljava/lang/Object;

    const-string v8, "Save core properties part"

    aput-object v8, v7, v5

    invoke-virtual {v4, v6, v7}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 541
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->getPackageProperties()Lorg/apache/poi/openxml4j/opc/PackageProperties;

    .line 543
    iget-object v4, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->packageProperties:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {p0, v4}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->addPackagePart(Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 545
    iget-object v4, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    iget-object v7, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->packageProperties:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v7}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    move-result-object v7

    sget-object v8, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    invoke-virtual {v4, v7, v8, v1, v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->addRelationship(Ljava/net/URI;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 549
    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;

    invoke-virtual {v1, v0}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->isContentTypeRegister(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 551
    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;

    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->packageProperties:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->addContentType(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)V

    .line 558
    :cond_1
    sget-object v0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "Save package relationships"

    aput-object v2, v1, v5

    invoke-virtual {v0, v6, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 559
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->getRelationships()Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->PACKAGE_RELATIONSHIPS_ROOT_PART_NAME:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-static {v1, v2, v3}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/ZipPartMarshaller;->marshallRelationshipPart(Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/util/zip/ZipOutputStream;)Z

    .line 564
    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "Save content types part"

    aput-object v2, v1, v5

    invoke-virtual {v0, v6, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 565
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;

    invoke-virtual {v0, v3}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->save(Ljava/io/OutputStream;)Z

    .line 568
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->getParts()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 571
    .local v1, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->isRelationshipPart()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 572
    goto :goto_1

    .line 575
    :cond_2
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v2

    .line 576
    .local v2, "ppn":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    sget-object v4, Lorg/apache/poi/openxml4j/opc/ZipPackage;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v7, v6, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Save part \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/poi/openxml4j/opc/internal/ZipHelper;->getZipItemNameFromOPCName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {v4, v6, v7}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 577
    iget-object v4, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->partMarshallers:Ljava/util/Map;

    iget-object v7, v1, Lorg/apache/poi/openxml4j/opc/PackagePart;->_contentType:Lorg/apache/poi/openxml4j/opc/internal/ContentType;

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/openxml4j/opc/internal/PartMarshaller;

    .line 578
    .local v4, "marshaller":Lorg/apache/poi/openxml4j/opc/internal/PartMarshaller;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The part "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed to be saved in the stream with marshaller "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 580
    .local v7, "errMsg":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 581
    invoke-interface {v4, v1, v3}, Lorg/apache/poi/openxml4j/opc/internal/PartMarshaller;->marshall(Lorg/apache/poi/openxml4j/opc/PackagePart;Ljava/io/OutputStream;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    .line 582
    :cond_3
    new-instance v5, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;-><init>(Ljava/lang/String;)V

    .end local v3    # "zos":Ljava/util/zip/ZipOutputStream;
    .end local p1    # "outputStream":Ljava/io/OutputStream;
    throw v5

    .line 585
    .restart local v3    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local p1    # "outputStream":Ljava/io/OutputStream;
    :cond_4
    iget-object v8, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->defaultPartMarshaller:Lorg/apache/poi/openxml4j/opc/internal/PartMarshaller;

    invoke-interface {v8, v1, v3}, Lorg/apache/poi/openxml4j/opc/internal/PartMarshaller;->marshall(Lorg/apache/poi/openxml4j/opc/PackagePart;Ljava/io/OutputStream;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 589
    .end local v1    # "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .end local v2    # "ppn":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .end local v4    # "marshaller":Lorg/apache/poi/openxml4j/opc/internal/PartMarshaller;
    .end local v7    # "errMsg":Ljava/lang/String;
    :goto_2
    goto/16 :goto_1

    .line 586
    .restart local v1    # "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .restart local v2    # "ppn":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .restart local v4    # "marshaller":Lorg/apache/poi/openxml4j/opc/internal/PartMarshaller;
    .restart local v7    # "errMsg":Ljava/lang/String;
    :cond_5
    new-instance v5, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->defaultPartMarshaller:Lorg/apache/poi/openxml4j/opc/internal/PartMarshaller;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;-><init>(Ljava/lang/String;)V

    .end local v3    # "zos":Ljava/util/zip/ZipOutputStream;
    .end local p1    # "outputStream":Ljava/io/OutputStream;
    throw v5

    .line 590
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .end local v2    # "ppn":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .end local v4    # "marshaller":Lorg/apache/poi/openxml4j/opc/internal/PartMarshaller;
    .end local v7    # "errMsg":Ljava/lang/String;
    .restart local v3    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local p1    # "outputStream":Ljava/io/OutputStream;
    :cond_6
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_1
    .catch Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 598
    nop

    .line 599
    return-void

    .line 594
    :catch_0
    move-exception v0

    move-object v1, v3

    goto :goto_3

    .line 591
    :catch_1
    move-exception v0

    move-object v1, v3

    goto :goto_4

    .line 594
    .end local v3    # "zos":Ljava/util/zip/ZipOutputStream;
    :catch_2
    move-exception v0

    move-object v1, v2

    .line 595
    .local v0, "e":Ljava/lang/Exception;
    .local v1, "zos":Ljava/util/zip/ZipOutputStream;
    :goto_3
    new-instance v2, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to save: an error occurs while saving the package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 591
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "zos":Ljava/util/zip/ZipOutputStream;
    :catch_3
    move-exception v0

    move-object v1, v2

    .line 593
    .local v0, "e":Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException;
    .restart local v1    # "zos":Ljava/util/zip/ZipOutputStream;
    :goto_4
    throw v0
.end method
