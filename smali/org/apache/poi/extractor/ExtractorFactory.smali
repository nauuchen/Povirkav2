.class public Lorg/apache/poi/extractor/ExtractorFactory;
.super Ljava/lang/Object;
.source "ExtractorFactory.java"


# static fields
.field public static final CORE_DOCUMENT_REL:Ljava/lang/String; = "http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument"

.field protected static final STRICT_DOCUMENT_REL:Ljava/lang/String; = "http://purl.oclc.org/ooxml/officeDocument/relationships/officeDocument"

.field protected static final VISIO_DOCUMENT_REL:Ljava/lang/String; = "http://schemas.microsoft.com/visio/2010/relationships/document"

.field private static final logger:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    const-class v0, Lorg/apache/poi/extractor/ExtractorFactory;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/extractor/ExtractorFactory;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    return-void
.end method

.method private static createEncyptedOOXMLExtractor(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)Lorg/apache/poi/POIXMLTextExtractor;
    .locals 6
    .param p0, "fs"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    invoke-static {}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->getCurrentUserPassword()Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "pass":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 421
    const-string v0, "VelvetSweatshop"

    .line 424
    :cond_0
    new-instance v1, Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-direct {v1, p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;-><init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    .line 425
    .local v1, "ei":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object v2

    .line 426
    .local v2, "dec":Lorg/apache/poi/poifs/crypt/Decryptor;
    const/4 v3, 0x0

    .line 428
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v2, v0}, Lorg/apache/poi/poifs/crypt/Decryptor;->verifyPassword(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 431
    invoke-virtual {v2, p0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getDataStream(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)Ljava/io/InputStream;

    move-result-object v4

    move-object v3, v4

    .line 432
    invoke-static {v3}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/poi/extractor/ExtractorFactory;->createExtractor(Lorg/apache/poi/openxml4j/opc/OPCPackage;)Lorg/apache/poi/POIXMLTextExtractor;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    invoke-static {v3}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v4

    .line 429
    :cond_1
    :try_start_1
    new-instance v4, Lorg/apache/poi/EncryptedDocumentException;

    const-string v5, "Invalid password specified - use Biff8EncryptionKey.setCurrentUserPassword() before calling extractor"

    invoke-direct {v4, v5}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pass":Ljava/lang/String;
    .end local v1    # "ei":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .end local v2    # "dec":Lorg/apache/poi/poifs/crypt/Decryptor;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local p0    # "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    throw v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    .restart local v0    # "pass":Ljava/lang/String;
    .restart local v1    # "ei":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .restart local v2    # "dec":Lorg/apache/poi/poifs/crypt/Decryptor;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local p0    # "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    :catchall_0
    move-exception v4

    goto :goto_0

    .line 435
    :catch_0
    move-exception v4

    .line 436
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v5, v4}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "pass":Ljava/lang/String;
    .end local v1    # "ei":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .end local v2    # "dec":Lorg/apache/poi/poifs/crypt/Decryptor;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local p0    # "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    throw v5

    .line 433
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "pass":Ljava/lang/String;
    .restart local v1    # "ei":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .restart local v2    # "dec":Lorg/apache/poi/poifs/crypt/Decryptor;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local p0    # "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    :catch_1
    move-exception v4

    .line 434
    .local v4, "e":Ljava/io/IOException;
    nop

    .end local v0    # "pass":Ljava/lang/String;
    .end local v1    # "ei":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .end local v2    # "dec":Lorg/apache/poi/poifs/crypt/Decryptor;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local p0    # "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 438
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "pass":Ljava/lang/String;
    .restart local v1    # "ei":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .restart local v2    # "dec":Lorg/apache/poi/poifs/crypt/Decryptor;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local p0    # "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    :goto_0
    invoke-static {v3}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v4
.end method

.method public static createExtractor(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)Lorg/apache/poi/POIOLE2TextExtractor;
    .locals 1
    .param p0, "fs"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;,
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    .line 300
    invoke-static {p0}, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->createExtractor(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)Lorg/apache/poi/POIOLE2TextExtractor;

    move-result-object v0

    return-object v0
.end method

.method public static createExtractor(Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;)Lorg/apache/poi/POIOLE2TextExtractor;
    .locals 1
    .param p0, "fs"    # Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;,
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    .line 303
    invoke-static {p0}, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->createExtractor(Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;)Lorg/apache/poi/POIOLE2TextExtractor;

    move-result-object v0

    return-object v0
.end method

.method public static createExtractor(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)Lorg/apache/poi/POIOLE2TextExtractor;
    .locals 1
    .param p0, "fs"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;,
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    .line 297
    invoke-static {p0}, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->createExtractor(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)Lorg/apache/poi/POIOLE2TextExtractor;

    move-result-object v0

    return-object v0
.end method

.method public static createExtractor(Ljava/io/File;)Lorg/apache/poi/POITextExtractor;
    .locals 4
    .param p0, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;,
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    .line 130
    const/4 v0, 0x0

    .line 132
    .local v0, "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    :try_start_0
    new-instance v1, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v1, p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 133
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v1

    const-string v2, "EncryptedPackage"

    invoke-virtual {v1, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    invoke-static {v0}, Lorg/apache/poi/extractor/ExtractorFactory;->createEncyptedOOXMLExtractor(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)Lorg/apache/poi/POIXMLTextExtractor;

    move-result-object v1

    return-object v1

    .line 136
    :cond_0
    invoke-static {v0}, Lorg/apache/poi/extractor/ExtractorFactory;->createExtractor(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)Lorg/apache/poi/POIOLE2TextExtractor;

    move-result-object v1

    .line 137
    .local v1, "extractor":Lorg/apache/poi/POIOLE2TextExtractor;
    invoke-virtual {v1, v0}, Lorg/apache/poi/POIOLE2TextExtractor;->setFilesystem(Ljava/io/Closeable;)V
    :try_end_0
    .catch Lorg/apache/poi/poifs/filesystem/OfficeXmlFileException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/apache/poi/poifs/filesystem/NotOLE2FileException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    return-object v1

    .line 169
    .end local v1    # "extractor":Lorg/apache/poi/POIOLE2TextExtractor;
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/Error;
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 172
    throw v1

    .line 165
    .end local v1    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v1

    .line 167
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 168
    throw v1

    .line 160
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v1

    .line 162
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 163
    throw v1

    .line 155
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 157
    .local v1, "e":Lorg/apache/xmlbeans/XmlException;
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 158
    throw v1

    .line 150
    .end local v1    # "e":Lorg/apache/xmlbeans/XmlException;
    :catch_4
    move-exception v1

    .line 152
    .local v1, "e":Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 153
    throw v1

    .line 145
    .end local v1    # "e":Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;
    :catch_5
    move-exception v1

    .line 147
    .local v1, "ne":Lorg/apache/poi/poifs/filesystem/NotOLE2FileException;
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 148
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Your File was neither an OLE2 file, nor an OOXML file"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    .end local v1    # "ne":Lorg/apache/poi/poifs/filesystem/NotOLE2FileException;
    :catch_6
    move-exception v1

    .line 142
    .local v1, "e":Lorg/apache/poi/poifs/filesystem/OfficeXmlFileException;
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 143
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/openxml4j/opc/PackageAccess;->READ:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    invoke-static {v2, v3}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/PackageAccess;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/extractor/ExtractorFactory;->createExtractor(Lorg/apache/poi/openxml4j/opc/OPCPackage;)Lorg/apache/poi/POIXMLTextExtractor;

    move-result-object v2

    return-object v2
.end method

.method public static createExtractor(Ljava/io/InputStream;)Lorg/apache/poi/POITextExtractor;
    .locals 6
    .param p0, "inp"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;,
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    .line 177
    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->prepareToCheckMagic(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 179
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {v0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf(Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v1

    .line 181
    .local v1, "fm":Lorg/apache/poi/poifs/filesystem/FileMagic;
    sget-object v2, Lorg/apache/poi/extractor/ExtractorFactory$1;->$SwitchMap$org$apache$poi$poifs$filesystem$FileMagic:[I

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/FileMagic;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    move v2, v4

    .local v2, "isEncrypted":Z
    move-object v3, v5

    .line 187
    .local v3, "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/poi/extractor/ExtractorFactory;->createExtractor(Lorg/apache/poi/openxml4j/opc/OPCPackage;)Lorg/apache/poi/POIXMLTextExtractor;

    move-result-object v4

    return-object v4

    .line 181
    .end local v2    # "isEncrypted":Z
    .end local v3    # "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    :cond_0
    move v2, v4

    .restart local v2    # "isEncrypted":Z
    move-object v3, v5

    .line 189
    .restart local v3    # "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Your InputStream was neither an OLE2 stream, nor an OOXML stream"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 183
    .end local v2    # "isEncrypted":Z
    .end local v3    # "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    :cond_1
    new-instance v2, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v2, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    .line 184
    .local v2, "fs":Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v3

    const-string v4, "EncryptedPackage"

    invoke-virtual {v3, v4}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v3

    .line 185
    .local v3, "isEncrypted":Z
    if-eqz v3, :cond_2

    invoke-static {v2}, Lorg/apache/poi/extractor/ExtractorFactory;->createEncyptedOOXMLExtractor(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)Lorg/apache/poi/POIXMLTextExtractor;

    move-result-object v4

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lorg/apache/poi/extractor/ExtractorFactory;->createExtractor(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)Lorg/apache/poi/POIOLE2TextExtractor;

    move-result-object v4

    :goto_0
    return-object v4
.end method

.method public static createExtractor(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/POITextExtractor;
    .locals 4
    .param p0, "poifsDir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;,
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    .line 309
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntryNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 310
    .local v1, "entryName":Ljava/lang/String;
    const-string v2, "Package"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 311
    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v2

    .line 312
    .local v2, "pkg":Lorg/apache/poi/openxml4j/opc/OPCPackage;
    invoke-static {v2}, Lorg/apache/poi/extractor/ExtractorFactory;->createExtractor(Lorg/apache/poi/openxml4j/opc/OPCPackage;)Lorg/apache/poi/POIXMLTextExtractor;

    move-result-object v3

    return-object v3

    .end local v1    # "entryName":Ljava/lang/String;
    .end local v2    # "pkg":Lorg/apache/poi/openxml4j/opc/OPCPackage;
    :cond_0
    goto :goto_0

    .line 317
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-static {p0}, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->createExtractor(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/POITextExtractor;

    move-result-object v0

    return-object v0
.end method

.method public static createExtractor(Lorg/apache/poi/openxml4j/opc/OPCPackage;)Lorg/apache/poi/POIXMLTextExtractor;
    .locals 8
    .param p0, "pkg"    # Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;,
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    .line 207
    :try_start_0
    const-string v0, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument"

    invoke-virtual {p0, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v0

    .line 210
    .local v0, "core":Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 212
    const-string v1, "http://purl.oclc.org/ooxml/officeDocument/relationships/officeDocument"

    invoke-virtual {p0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v1

    move-object v0, v1

    .line 214
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 216
    const-string v1, "http://schemas.microsoft.com/visio/2010/relationships/document"

    invoke-virtual {p0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v1

    move-object v0, v1

    .line 217
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 218
    new-instance v1, Lorg/apache/poi/xdgf/extractor/XDGFVisioExtractor;

    invoke-direct {v1, p0}, Lorg/apache/poi/xdgf/extractor/XDGFVisioExtractor;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-object v1

    .line 222
    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v1

    if-ne v1, v2, :cond_c

    .line 227
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    .line 228
    .local v1, "corePart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "contentType":Ljava/lang/String;
    sget-object v3, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->SUPPORTED_TYPES:[Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    .local v3, "arr$":[Lorg/apache/poi/xssf/usermodel/XSSFRelation;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 232
    .local v6, "rel":Lorg/apache/poi/xssf/usermodel/XSSFRelation;
    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 233
    invoke-static {}, Lorg/apache/poi/extractor/ExtractorFactory;->getPreferEventExtractor()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 234
    new-instance v7, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;

    invoke-direct {v7, p0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-object v7

    .line 236
    :cond_2
    new-instance v7, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;

    invoke-direct {v7, p0}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-object v7

    .line 231
    .end local v6    # "rel":Lorg/apache/poi/xssf/usermodel/XSSFRelation;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 241
    .end local v3    # "arr$":[Lorg/apache/poi/xssf/usermodel/XSSFRelation;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_4
    sget-object v3, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->SUPPORTED_TYPES:[Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    .local v3, "arr$":[Lorg/apache/poi/xwpf/usermodel/XWPFRelation;
    array-length v4, v3

    .restart local v4    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_1
    if-ge v5, v4, :cond_6

    aget-object v6, v3, v5

    .line 242
    .local v6, "rel":Lorg/apache/poi/xwpf/usermodel/XWPFRelation;
    invoke-virtual {v6}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 243
    new-instance v7, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;

    invoke-direct {v7, p0}, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-object v7

    .line 241
    .end local v6    # "rel":Lorg/apache/poi/xwpf/usermodel/XWPFRelation;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 248
    .end local v3    # "arr$":[Lorg/apache/poi/xwpf/usermodel/XWPFRelation;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_6
    sget-object v3, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->SUPPORTED_TYPES:[Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    .local v3, "arr$":[Lorg/apache/poi/xslf/usermodel/XSLFRelation;
    array-length v4, v3

    .restart local v4    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_2
    if-ge v5, v4, :cond_8

    aget-object v6, v3, v5

    .line 249
    .local v6, "rel":Lorg/apache/poi/xslf/usermodel/XSLFRelation;
    invoke-virtual {v6}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 250
    new-instance v7, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;

    invoke-direct {v7, p0}, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-object v7

    .line 248
    .end local v6    # "rel":Lorg/apache/poi/xslf/usermodel/XSLFRelation;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 255
    .end local v3    # "arr$":[Lorg/apache/poi/xslf/usermodel/XSLFRelation;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_8
    sget-object v3, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->THEME_MANAGER:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 256
    new-instance v3, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;

    new-instance v4, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;

    invoke-direct {v4, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    invoke-direct {v3, v4}, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;)V

    return-object v3

    .line 260
    :cond_9
    sget-object v3, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->SUPPORTED_TYPES:[Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    .local v3, "arr$":[Lorg/apache/poi/xssf/usermodel/XSSFRelation;
    array-length v4, v3

    .restart local v4    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_3
    if-ge v5, v4, :cond_b

    aget-object v6, v3, v5

    .line 261
    .local v6, "rel":Lorg/apache/poi/xssf/usermodel/XSSFRelation;
    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 262
    new-instance v7, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;

    invoke-direct {v7, p0}, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-object v7

    .line 260
    .end local v6    # "rel":Lorg/apache/poi/xssf/usermodel/XSSFRelation;
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 266
    .end local v3    # "arr$":[Lorg/apache/poi/xssf/usermodel/XSSFRelation;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No supported documents found in the OOXML package (found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "pkg":Lorg/apache/poi/openxml4j/opc/OPCPackage;
    throw v3

    .line 223
    .end local v1    # "corePart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .end local v2    # "contentType":Ljava/lang/String;
    .restart local p0    # "pkg":Lorg/apache/poi/openxml4j/opc/OPCPackage;
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid OOXML Package received - expected 1 core document, found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "pkg":Lorg/apache/poi/openxml4j/opc/OPCPackage;
    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .end local v0    # "core":Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    .restart local p0    # "pkg":Lorg/apache/poi/openxml4j/opc/OPCPackage;
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->revert()V

    .line 292
    throw v0

    .line 283
    .end local v0    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->revert()V

    .line 287
    throw v0

    .line 278
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 281
    .local v0, "e":Lorg/apache/xmlbeans/XmlException;
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->revert()V

    .line 282
    throw v0

    .line 273
    .end local v0    # "e":Lorg/apache/xmlbeans/XmlException;
    :catch_3
    move-exception v0

    .line 276
    .local v0, "e":Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->revert()V

    .line 277
    throw v0

    .line 268
    .end local v0    # "e":Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;
    :catch_4
    move-exception v0

    .line 271
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->revert()V

    .line 272
    throw v0
.end method

.method public static getAllThreadsPreferEventExtractors()Ljava/lang/Boolean;
    .locals 1

    .line 102
    invoke-static {}, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->getAllThreadsPreferEventExtractors()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static getEmbededDocsTextExtractors(Lorg/apache/poi/POIOLE2TextExtractor;)[Lorg/apache/poi/POITextExtractor;
    .locals 14
    .param p0, "ext"    # Lorg/apache/poi/POIOLE2TextExtractor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;,
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v0, "dirs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/poi/poifs/filesystem/Entry;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v1, "nonPOIFS":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/InputStream;>;"
    invoke-virtual {p0}, Lorg/apache/poi/POIOLE2TextExtractor;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object v2

    .line 335
    .local v2, "root":Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    if-eqz v2, :cond_c

    .line 339
    instance-of v3, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_2

    .line 341
    invoke-interface {v2}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntries()Ljava/util/Iterator;

    move-result-object v3

    .line 342
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/poifs/filesystem/Entry;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 343
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/poifs/filesystem/Entry;

    .line 344
    .local v8, "entry":Lorg/apache/poi/poifs/filesystem/Entry;
    invoke-interface {v8}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "MBD"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 345
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    .end local v8    # "entry":Lorg/apache/poi/poifs/filesystem/Entry;
    :cond_0
    goto :goto_0

    .line 348
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/poifs/filesystem/Entry;>;"
    :cond_1
    goto/16 :goto_6

    :cond_2
    instance-of v3, p0, Lorg/apache/poi/hwpf/extractor/WordExtractor;

    if-eqz v3, :cond_5

    .line 351
    :try_start_0
    const-string v3, "ObjectPool"

    invoke-interface {v2, v3}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    .line 352
    .local v3, "op":Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    invoke-interface {v3}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntries()Ljava/util/Iterator;

    move-result-object v8

    .line 353
    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/poifs/filesystem/Entry;>;"
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 354
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/poi/poifs/filesystem/Entry;

    .line 355
    .local v9, "entry":Lorg/apache/poi/poifs/filesystem/Entry;
    invoke-interface {v9}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 356
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    .end local v9    # "entry":Lorg/apache/poi/poifs/filesystem/Entry;
    :cond_3
    goto :goto_1

    .line 353
    .end local v3    # "op":Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/poifs/filesystem/Entry;>;"
    :cond_4
    goto :goto_2

    .line 359
    :catch_0
    move-exception v3

    .line 360
    .local v3, "e":Ljava/io/FileNotFoundException;
    sget-object v8, Lorg/apache/poi/extractor/ExtractorFactory;->logger:Lorg/apache/poi/util/POILogger;

    new-array v9, v4, [Ljava/lang/Object;

    const-string v10, "Ignoring FileNotFoundException while extracting Word document"

    aput-object v10, v9, v7

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-virtual {v8, v5, v9}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 362
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    goto :goto_6

    .line 366
    :cond_5
    instance-of v3, p0, Lorg/apache/poi/hsmf/extractor/OutlookTextExtactor;

    if-eqz v3, :cond_8

    .line 368
    move-object v3, p0

    check-cast v3, Lorg/apache/poi/hsmf/extractor/OutlookTextExtactor;

    invoke-virtual {v3}, Lorg/apache/poi/hsmf/extractor/OutlookTextExtactor;->getMAPIMessage()Lorg/apache/poi/hsmf/MAPIMessage;

    move-result-object v3

    .line 369
    .local v3, "msg":Lorg/apache/poi/hsmf/MAPIMessage;
    invoke-virtual {v3}, Lorg/apache/poi/hsmf/MAPIMessage;->getAttachmentFiles()[Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;

    move-result-object v8

    .local v8, "arr$":[Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;
    array-length v9, v8

    .local v9, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_3
    if-ge v10, v9, :cond_8

    aget-object v11, v8, v10

    .line 370
    .local v11, "attachment":Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;
    invoke-virtual {v11}, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->getAttachData()Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 371
    invoke-virtual {v11}, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->getAttachData()Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    move-result-object v12

    invoke-virtual {v12}, Lorg/apache/poi/hsmf/datatypes/ByteChunk;->getValue()[B

    move-result-object v12

    .line 372
    .local v12, "data":[B
    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-direct {v13, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v12    # "data":[B
    goto :goto_4

    .line 373
    :cond_6
    invoke-virtual {v11}, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->getAttachmentDirectory()Lorg/apache/poi/hsmf/datatypes/DirectoryChunk;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 374
    invoke-virtual {v11}, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->getAttachmentDirectory()Lorg/apache/poi/hsmf/datatypes/DirectoryChunk;

    move-result-object v12

    invoke-virtual {v12}, Lorg/apache/poi/hsmf/datatypes/DirectoryChunk;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 373
    :cond_7
    :goto_4
    nop

    .line 369
    .end local v11    # "attachment":Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 380
    .end local v3    # "msg":Lorg/apache/poi/hsmf/MAPIMessage;
    .end local v8    # "arr$":[Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;
    .end local v9    # "len$":I
    .end local v10    # "i$":I
    :cond_8
    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_9

    .line 381
    new-array v3, v7, [Lorg/apache/poi/POITextExtractor;

    return-object v3

    .line 384
    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v3, "textExtractors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/poi/POITextExtractor;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/poi/poifs/filesystem/Entry;

    .line 386
    .local v9, "dir":Lorg/apache/poi/poifs/filesystem/Entry;
    move-object v10, v9

    check-cast v10, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-static {v10}, Lorg/apache/poi/extractor/ExtractorFactory;->createExtractor(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/POITextExtractor;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 388
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "dir":Lorg/apache/poi/poifs/filesystem/Entry;
    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/InputStream;

    .line 390
    .local v9, "nonPOIF":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v9}, Lorg/apache/poi/extractor/ExtractorFactory;->createExtractor(Ljava/io/InputStream;)Lorg/apache/poi/POITextExtractor;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    .line 397
    :catch_1
    move-exception v4

    .line 398
    .local v4, "e":Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v4}, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 395
    .end local v4    # "e":Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;
    :catch_2
    move-exception v4

    .line 396
    .local v4, "e":Lorg/apache/xmlbeans/XmlException;
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v4}, Lorg/apache/xmlbeans/XmlException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 391
    .end local v4    # "e":Lorg/apache/xmlbeans/XmlException;
    :catch_3
    move-exception v10

    .line 394
    .local v10, "e":Ljava/lang/IllegalArgumentException;
    sget-object v11, Lorg/apache/poi/extractor/ExtractorFactory;->logger:Lorg/apache/poi/util/POILogger;

    new-array v12, v4, [Ljava/lang/Object;

    const-string v13, "Format not supported yet"

    aput-object v13, v12, v7

    invoke-virtual {v10}, Ljava/lang/IllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v6

    invoke-virtual {v11, v5, v12}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 399
    .end local v10    # "e":Ljava/lang/IllegalArgumentException;
    :goto_9
    nop

    .line 398
    .end local v9    # "nonPOIF":Ljava/io/InputStream;
    goto :goto_8

    .line 401
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lorg/apache/poi/POITextExtractor;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/apache/poi/POITextExtractor;

    return-object v4

    .line 336
    .end local v3    # "textExtractors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/poi/POITextExtractor;>;"
    :cond_c
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "The extractor didn\'t know which POIFS it came from!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getEmbededDocsTextExtractors(Lorg/apache/poi/POIXMLTextExtractor;)[Lorg/apache/poi/POITextExtractor;
    .locals 2
    .param p0, "ext"    # Lorg/apache/poi/POIXMLTextExtractor;
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 414
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not yet supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static getPreferEventExtractor()Z
    .locals 1

    .line 126
    invoke-static {}, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->getPreferEventExtractor()Z

    move-result v0

    return v0
.end method

.method public static getThreadPrefersEventExtractors()Z
    .locals 1

    .line 93
    invoke-static {}, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->getThreadPrefersEventExtractors()Z

    move-result v0

    return v0
.end method

.method public static setAllThreadsPreferEventExtractors(Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "preferEventExtractors"    # Ljava/lang/Boolean;

    .line 118
    invoke-static {p0}, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->setAllThreadsPreferEventExtractors(Ljava/lang/Boolean;)V

    .line 119
    return-void
.end method

.method public static setThreadPrefersEventExtractors(Z)V
    .locals 0
    .param p0, "preferEventExtractors"    # Z

    .line 110
    invoke-static {p0}, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->setThreadPrefersEventExtractors(Z)V

    .line 111
    return-void
.end method
