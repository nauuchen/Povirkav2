.class public Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;
.super Ljava/lang/Object;
.source "AesZipFileZipEntrySource.java"

# interfaces
.implements Lorg/apache/poi/openxml4j/util/ZipEntrySource;


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final ci:Ljavax/crypto/Cipher;

.field private closed:Z

.field private final tmpFile:Ljava/io/File;

.field private final zipFile:Ljava/util/zip/ZipFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljavax/crypto/Cipher;)V
    .locals 1
    .param p1, "tmpFile"    # Ljava/io/File;
    .param p2, "ci"    # Ljavax/crypto/Cipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->tmpFile:Ljava/io/File;

    .line 66
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->zipFile:Ljava/util/zip/ZipFile;

    .line 67
    iput-object p2, p0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->ci:Ljavax/crypto/Cipher;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->closed:Z

    .line 69
    return-void
.end method

.method private static copyToFile(Ljava/io/InputStream;Ljava/io/File;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;[B[B)V
    .locals 9
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "tmpFile"    # Ljava/io/File;
    .param p2, "cipherAlgorithm"    # Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .param p3, "keyBytes"    # [B
    .param p4, "ivBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 115
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-direct {v0, p3, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 116
    .local v0, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    sget-object v2, Lorg/apache/poi/poifs/crypt/ChainingMode;->cbc:Lorg/apache/poi/poifs/crypt/ChainingMode;

    const/4 v4, 0x1

    const-string v5, "PKCS5Padding"

    move-object v1, p2

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljava/security/Key;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BILjava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 118
    .local v1, "ciEnc":Ljavax/crypto/Cipher;
    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 119
    .local v2, "zis":Ljava/util/zip/ZipInputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 120
    .local v3, "fos":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 123
    .local v4, "zos":Ljava/util/zip/ZipOutputStream;
    :goto_0
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v5

    move-object v6, v5

    .local v6, "ze":Ljava/util/zip/ZipEntry;
    if-eqz v5, :cond_0

    .line 126
    new-instance v5, Ljava/util/zip/ZipEntry;

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 127
    .local v5, "zeNew":Ljava/util/zip/ZipEntry;
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    .line 129
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 131
    invoke-virtual {v4, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 132
    new-instance v7, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource$1;

    invoke-direct {v7, v4}, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource$1;-><init>(Ljava/io/OutputStream;)V

    .line 137
    .local v7, "fos2":Ljava/io/FilterOutputStream;
    new-instance v8, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v8, v7, v1}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 138
    .local v8, "cos":Ljavax/crypto/CipherOutputStream;
    invoke-static {v2, v8}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 139
    invoke-virtual {v8}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 140
    invoke-virtual {v7}, Ljava/io/FilterOutputStream;->close()V

    .line 141
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 142
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 143
    .end local v5    # "zeNew":Ljava/util/zip/ZipEntry;
    .end local v7    # "fos2":Ljava/io/FilterOutputStream;
    .end local v8    # "cos":Ljavax/crypto/CipherOutputStream;
    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 145
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 146
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V

    .line 147
    return-void
.end method

.method public static createZipEntrySource(Ljava/io/InputStream;)Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 105
    .local v0, "sr":Ljava/security/SecureRandom;
    const/16 v1, 0x10

    new-array v2, v1, [B

    .local v2, "ivBytes":[B
    new-array v1, v1, [B

    .line 106
    .local v1, "keyBytes":[B
    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 107
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 108
    const-string v3, "protectedXlsx"

    const-string v4, ".zip"

    invoke-static {v3, v4}, Lorg/apache/poi/util/TempFile;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 109
    .local v3, "tmpFile":Ljava/io/File;
    sget-object v4, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes128:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    invoke-static {p0, v3, v4, v1, v2}, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->copyToFile(Ljava/io/InputStream;Ljava/io/File;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;[B[B)V

    .line 110
    invoke-static {p0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 111
    sget-object v4, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes128:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    invoke-static {v3, v4, v1, v2}, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->fileToSource(Ljava/io/File;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;[B[B)Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;

    move-result-object v4

    return-object v4
.end method

.method private static fileToSource(Ljava/io/File;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;[B[B)Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;
    .locals 6
    .param p0, "tmpFile"    # Ljava/io/File;
    .param p1, "cipherAlgorithm"    # Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .param p2, "keyBytes"    # [B
    .param p3, "ivBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 151
    .local v0, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    sget-object v2, Lorg/apache/poi/poifs/crypt/ChainingMode;->cbc:Lorg/apache/poi/poifs/crypt/ChainingMode;

    const/4 v4, 0x2

    const-string v5, "PKCS5Padding"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljava/security/Key;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BILjava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 152
    .local v1, "ciDec":Ljavax/crypto/Cipher;
    new-instance v2, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;

    invoke-direct {v2, p0, v1}, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;-><init>(Ljava/io/File;Ljavax/crypto/Cipher;)V

    return-object v2
.end method


# virtual methods
.method public close()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-boolean v0, p0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->closed:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 90
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->tmpFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    sget-object v0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x5

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->tmpFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " can\'t be removed (or was already removed."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 94
    :cond_0
    iput-boolean v1, p0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->closed:Z

    .line 95
    return-void
.end method

.method public getEntries()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "+",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .locals 3
    .param p1, "entry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 83
    .local v0, "is":Ljava/io/InputStream;
    new-instance v1, Ljavax/crypto/CipherInputStream;

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->ci:Ljavax/crypto/Cipher;

    invoke-direct {v1, v0, v2}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v1
.end method

.method public isClosed()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->closed:Z

    return v0
.end method
