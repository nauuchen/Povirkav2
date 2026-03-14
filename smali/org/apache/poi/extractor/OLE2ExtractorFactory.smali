.class public Lorg/apache/poi/extractor/OLE2ExtractorFactory;
.super Ljava/lang/Object;
.source "OLE2ExtractorFactory.java"


# static fields
.field private static final LOGGER:Lorg/apache/poi/util/POILogger;

.field private static allPreferEventExtractors:Ljava/lang/Boolean;

.field private static final threadPreferEventExtractors:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    const-class v0, Lorg/apache/poi/extractor/OLE2ExtractorFactory;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->LOGGER:Lorg/apache/poi/util/POILogger;

    .line 65
    new-instance v0, Lorg/apache/poi/extractor/OLE2ExtractorFactory$1;

    invoke-direct {v0}, Lorg/apache/poi/extractor/OLE2ExtractorFactory$1;-><init>()V

    sput-object v0, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->threadPreferEventExtractors:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createEncyptedOOXMLExtractor(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/POITextExtractor;
    .locals 6
    .param p0, "poifsDir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    invoke-static {}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->getCurrentUserPassword()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "pass":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 278
    const-string v0, "VelvetSweatshop"

    .line 281
    :cond_0
    new-instance v1, Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-direct {v1, p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 282
    .local v1, "ei":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object v2

    .line 283
    .local v2, "dec":Lorg/apache/poi/poifs/crypt/Decryptor;
    const/4 v3, 0x0

    .line 285
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v2, v0}, Lorg/apache/poi/poifs/crypt/Decryptor;->verifyPassword(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 288
    invoke-virtual {v2, p0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/InputStream;

    move-result-object v4

    move-object v3, v4

    .line 289
    invoke-static {v3}, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->createExtractor(Ljava/io/InputStream;)Lorg/apache/poi/POITextExtractor;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    invoke-static {v3}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v4

    .line 286
    :cond_1
    :try_start_1
    new-instance v4, Lorg/apache/poi/EncryptedDocumentException;

    const-string v5, "Invalid password specified - use Biff8EncryptionKey.setCurrentUserPassword() before calling extractor"

    invoke-direct {v4, v5}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pass":Ljava/lang/String;
    .end local v1    # "ei":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .end local v2    # "dec":Lorg/apache/poi/poifs/crypt/Decryptor;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local p0    # "poifsDir":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    throw v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    .restart local v0    # "pass":Ljava/lang/String;
    .restart local v1    # "ei":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .restart local v2    # "dec":Lorg/apache/poi/poifs/crypt/Decryptor;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local p0    # "poifsDir":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    :catchall_0
    move-exception v4

    goto :goto_0

    .line 292
    :catch_0
    move-exception v4

    .line 293
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "pass":Ljava/lang/String;
    .end local v1    # "ei":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .end local v2    # "dec":Lorg/apache/poi/poifs/crypt/Decryptor;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local p0    # "poifsDir":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    throw v5

    .line 290
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "pass":Ljava/lang/String;
    .restart local v1    # "ei":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .restart local v2    # "dec":Lorg/apache/poi/poifs/crypt/Decryptor;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local p0    # "poifsDir":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    :catch_1
    move-exception v4

    .line 291
    .local v4, "e":Ljava/io/IOException;
    nop

    .end local v0    # "pass":Ljava/lang/String;
    .end local v1    # "ei":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .end local v2    # "dec":Lorg/apache/poi/poifs/crypt/Decryptor;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local p0    # "poifsDir":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 295
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "pass":Ljava/lang/String;
    .restart local v1    # "ei":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .restart local v2    # "dec":Lorg/apache/poi/poifs/crypt/Decryptor;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local p0    # "poifsDir":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    :goto_0
    invoke-static {v3}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v4
.end method

.method public static createExtractor(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)Lorg/apache/poi/POIOLE2TextExtractor;
    .locals 1
    .param p0, "fs"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->createExtractor(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/POITextExtractor;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/POIOLE2TextExtractor;

    return-object v0
.end method

.method public static createExtractor(Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;)Lorg/apache/poi/POIOLE2TextExtractor;
    .locals 1
    .param p0, "fs"    # Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->createExtractor(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/POITextExtractor;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/POIOLE2TextExtractor;

    return-object v0
.end method

.method public static createExtractor(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)Lorg/apache/poi/POIOLE2TextExtractor;
    .locals 1
    .param p0, "fs"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->createExtractor(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/POITextExtractor;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/POIOLE2TextExtractor;

    return-object v0
.end method

.method public static createExtractor(Ljava/io/InputStream;)Lorg/apache/poi/POITextExtractor;
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-static {}, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->getOOXMLClass()Ljava/lang/Class;

    move-result-object v0

    .line 133
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 136
    :try_start_0
    const-string v1, "createExtractor"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/io/InputStream;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 137
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/POITextExtractor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 140
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Error creating Extractor for InputStream"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 138
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 139
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    throw v1

    .line 145
    .end local v1    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_0
    new-instance v1, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v1, p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->createExtractor(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)Lorg/apache/poi/POIOLE2TextExtractor;

    move-result-object v1

    return-object v1
.end method

.method public static createExtractor(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/POITextExtractor;
    .locals 6
    .param p0, "poifsDir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    sget-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->WORKBOOK_DIR_ENTRY_NAMES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 179
    .local v3, "workbookName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 180
    invoke-static {}, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->getPreferEventExtractor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 181
    new-instance v4, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;

    invoke-direct {v4, p0}, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-object v4

    .line 183
    :cond_0
    new-instance v4, Lorg/apache/poi/hssf/extractor/ExcelExtractor;

    invoke-direct {v4, p0}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-object v4

    .line 178
    .end local v3    # "workbookName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 186
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_2
    const-string v0, "Book"

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 192
    invoke-static {}, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->getScratchpadClass()Ljava/lang/Class;

    move-result-object v0

    .line 194
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v1, "createExtractor"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 195
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/POITextExtractor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .local v2, "ext":Lorg/apache/poi/POITextExtractor;
    if-eqz v2, :cond_3

    return-object v2

    .line 201
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v2    # "ext":Lorg/apache/poi/POITextExtractor;
    :cond_3
    nop

    .line 203
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No supported documents found in the OLE2 stream"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Error creating Scratchpad Extractor"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 197
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 198
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    throw v1

    .line 187
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_4
    new-instance v0, Lorg/apache/poi/hssf/OldExcelFormatException;

    const-string v1, "Old Excel Spreadsheet format (1-95) found. Please call OldExcelExtractor directly for basic text extraction"

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/OldExcelFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAllThreadsPreferEventExtractors()Ljava/lang/Boolean;
    .locals 1

    .line 88
    sget-object v0, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->allPreferEventExtractors:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static getEmbededDocsTextExtractors(Lorg/apache/poi/POIOLE2TextExtractor;)[Lorg/apache/poi/POITextExtractor;
    .locals 12
    .param p0, "ext"    # Lorg/apache/poi/POIOLE2TextExtractor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v0, "dirs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/poifs/filesystem/Entry;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v1, "nonPOIFS":Ljava/util/List;, "Ljava/util/List<Ljava/io/InputStream;>;"
    invoke-virtual {p0}, Lorg/apache/poi/POIOLE2TextExtractor;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object v2

    .line 223
    .local v2, "root":Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    if-eqz v2, :cond_6

    .line 227
    instance-of v3, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 229
    invoke-interface {v2}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntries()Ljava/util/Iterator;

    move-result-object v3

    .line 230
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/poifs/filesystem/Entry;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 231
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/poifs/filesystem/Entry;

    .line 232
    .local v6, "entry":Lorg/apache/poi/poifs/filesystem/Entry;
    invoke-interface {v6}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MBD"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 233
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    .end local v6    # "entry":Lorg/apache/poi/poifs/filesystem/Entry;
    :cond_0
    goto :goto_0

    .line 236
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/poifs/filesystem/Entry;>;"
    :cond_1
    goto :goto_1

    .line 238
    :cond_2
    invoke-static {}, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->getScratchpadClass()Ljava/lang/Class;

    move-result-object v3

    .line 240
    .local v3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v6, "identifyEmbeddedResources"

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Lorg/apache/poi/POIOLE2TextExtractor;

    aput-object v9, v8, v5

    const-class v9, Ljava/util/List;

    aput-object v9, v8, v4

    const-class v9, Ljava/util/List;

    const/4 v10, 0x2

    aput-object v9, v8, v10

    invoke-virtual {v3, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 242
    .local v6, "m":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v5

    aput-object v0, v7, v4

    aput-object v1, v7, v10

    invoke-virtual {v6, v8, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 245
    nop

    .line 249
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "m":Ljava/lang/reflect/Method;
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 250
    new-array v3, v5, [Lorg/apache/poi/POITextExtractor;

    return-object v3

    .line 253
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v3, "e":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/poi/POITextExtractor;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/poifs/filesystem/Entry;

    .line 255
    .local v7, "dir":Lorg/apache/poi/poifs/filesystem/Entry;
    move-object v8, v7

    check-cast v8, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-static {v8}, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->createExtractor(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/POITextExtractor;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 259
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "dir":Lorg/apache/poi/poifs/filesystem/Entry;
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/InputStream;

    .line 261
    .local v7, "nonPOIF":Ljava/io/InputStream;
    const/4 v8, 0x5

    :try_start_1
    invoke-static {v7}, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->createExtractor(Ljava/io/InputStream;)Lorg/apache/poi/POITextExtractor;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 266
    :catch_0
    move-exception v9

    .line 268
    .local v9, "xe":Ljava/lang/Exception;
    sget-object v10, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->LOGGER:Lorg/apache/poi/util/POILogger;

    new-array v11, v4, [Ljava/lang/Object;

    aput-object v9, v11, v5

    invoke-virtual {v10, v8, v11}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_5

    .line 262
    .end local v9    # "xe":Ljava/lang/Exception;
    :catch_1
    move-exception v9

    .line 265
    .local v9, "ie":Ljava/lang/IllegalArgumentException;
    sget-object v10, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->LOGGER:Lorg/apache/poi/util/POILogger;

    new-array v11, v4, [Ljava/lang/Object;

    aput-object v9, v11, v5

    invoke-virtual {v10, v8, v11}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 269
    .end local v9    # "ie":Ljava/lang/IllegalArgumentException;
    :goto_4
    nop

    .end local v7    # "nonPOIF":Ljava/io/InputStream;
    :goto_5
    goto :goto_3

    .line 271
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lorg/apache/poi/POITextExtractor;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/apache/poi/POITextExtractor;

    return-object v4

    .line 243
    .local v3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_2
    move-exception v4

    .line 244
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Error checking for Scratchpad embedded resources"

    invoke-direct {v5, v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 224
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_6
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "The extractor didn\'t know which POIFS it came from!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static getOOXMLClass()Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 151
    :try_start_0
    const-class v0, Lorg/apache/poi/extractor/OLE2ExtractorFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "org.apache.poi.extractor.ExtractorFactory"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sget-object v1, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->LOGGER:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x5

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "POI OOXML jar missing"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 156
    const/4 v1, 0x0

    return-object v1
.end method

.method protected static getPreferEventExtractor()Z
    .locals 1

    .line 112
    sget-object v0, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->allPreferEventExtractors:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 115
    :cond_0
    sget-object v0, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->threadPreferEventExtractors:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static getScratchpadClass()Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 161
    :try_start_0
    const-class v0, Lorg/apache/poi/extractor/OLE2ExtractorFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "org.apache.poi.extractor.OLE2ScratchpadExtractorFactory"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sget-object v1, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->LOGGER:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x7

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "POI Scratchpad jar missing"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 166
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "POI Scratchpad jar missing, required for ExtractorFactory"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getThreadPrefersEventExtractors()Z
    .locals 1

    .line 79
    sget-object v0, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->threadPreferEventExtractors:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static setAllThreadsPreferEventExtractors(Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "preferEventExtractors"    # Ljava/lang/Boolean;

    .line 104
    sput-object p0, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->allPreferEventExtractors:Ljava/lang/Boolean;

    .line 105
    return-void
.end method

.method public static setThreadPrefersEventExtractors(Z)V
    .locals 2
    .param p0, "preferEventExtractors"    # Z

    .line 96
    sget-object v0, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->threadPreferEventExtractors:Ljava/lang/ThreadLocal;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 97
    return-void
.end method
