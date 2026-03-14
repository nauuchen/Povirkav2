.class public final Lorg/apache/poi/openxml4j/opc/internal/ZipHelper;
.super Ljava/lang/Object;
.source "ZipHelper.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final FORWARD_SLASH:Ljava/lang/String; = "/"

.field public static final READ_WRITE_FILE_BUFFER_SIZE:I = 0x2000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.18"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method public static getContentTypeZipEntry(Lorg/apache/poi/openxml4j/opc/ZipPackage;)Ljava/util/zip/ZipEntry;
    .locals 4
    .param p0, "pkg"    # Lorg/apache/poi/openxml4j/opc/ZipPackage;

    .line 91
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->getZipArchive()Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/openxml4j/util/ZipEntrySource;->getEntries()Ljava/util/Enumeration;

    move-result-object v0

    .line 95
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 97
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[Content_Types].xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    return-object v1

    .line 101
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    :cond_0
    goto :goto_0

    .line 102
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getCorePropertiesZipEntry(Lorg/apache/poi/openxml4j/opc/ZipPackage;)Ljava/util/zip/ZipEntry;
    .locals 3
    .param p0, "pkg"    # Lorg/apache/poi/openxml4j/opc/ZipPackage;

    .line 77
    const-string v0, "http://schemas.openxmlformats.org/package/2006/relationships/metadata/core-properties"

    invoke-virtual {p0, v0}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    .line 80
    .local v0, "corePropsRel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    if-nez v0, :cond_0

    .line 81
    const/4 v1, 0x0

    return-object v1

    .line 84
    :cond_0
    new-instance v1, Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static getOPCNameFromZipItemName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "zipItemName"    # Ljava/lang/String;

    .line 114
    if-eqz p0, :cond_1

    .line 117
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    return-object p0

    .line 120
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 115
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "zipItemName cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getZipItemNameFromOPCName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "opcItemName"    # Ljava/lang/String;

    .line 132
    if-eqz p0, :cond_1

    .line 136
    move-object v0, p0

    .line 137
    .local v0, "retVal":Ljava/lang/String;
    :goto_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 140
    :cond_0
    return-object v0

    .line 133
    .end local v0    # "retVal":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "opcItemName cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getZipURIFromOPCName(Ljava/lang/String;)Ljava/net/URI;
    .locals 3
    .param p0, "opcItemName"    # Ljava/lang/String;

    .line 152
    if-eqz p0, :cond_1

    .line 156
    move-object v0, p0

    .line 157
    .local v0, "retVal":Ljava/lang/String;
    :goto_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 161
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 162
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Ljava/net/URISyntaxException;
    const/4 v2, 0x0

    return-object v2

    .line 153
    .end local v0    # "retVal":Ljava/lang/String;
    .end local v1    # "e":Ljava/net/URISyntaxException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "opcItemName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static openZipFile(Ljava/io/File;)Ljava/util/zip/ZipFile;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/openxml4j/exceptions/NotOfficeXmlFileException;
        }
    .end annotation

    .line 227
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 237
    .local v0, "input":Ljava/io/FileInputStream;
    :try_start_0
    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/internal/ZipHelper;->verifyZipHeader(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 240
    nop

    .line 243
    new-instance v1, Lorg/apache/poi/openxml4j/util/ZipSecureFile;

    invoke-direct {v1, p0}, Lorg/apache/poi/openxml4j/util/ZipSecureFile;-><init>(Ljava/io/File;)V

    return-object v1

    .line 239
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    throw v1

    .line 231
    .end local v0    # "input":Ljava/io/FileInputStream;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File is a directory"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "File does not exist"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static openZipFile(Ljava/lang/String;)Ljava/util/zip/ZipFile;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/internal/ZipHelper;->openZipFile(Ljava/io/File;)Ljava/util/zip/ZipFile;

    move-result-object v0

    return-object v0
.end method

.method public static openZipStream(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;
    .locals 3
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->prepareToCheckMagic(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 209
    .local v0, "checkedStream":Ljava/io/InputStream;
    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/internal/ZipHelper;->verifyZipHeader(Ljava/io/InputStream;)V

    .line 212
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 213
    .local v1, "zis":Ljava/io/InputStream;
    invoke-static {v1}, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->addThreshold(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;

    move-result-object v2

    return-object v2
.end method

.method public static verifyZipHeader(Ljava/io/InputStream;)V
    .locals 4
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/NotOfficeXmlFileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->prepareToCheckMagic(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 175
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {v0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf(Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v1

    .line 177
    .local v1, "fm":Lorg/apache/poi/poifs/filesystem/FileMagic;
    sget-object v2, Lorg/apache/poi/openxml4j/opc/internal/ZipHelper$1;->$SwitchMap$org$apache$poi$poifs$filesystem$FileMagic:[I

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/FileMagic;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 196
    return-void

    .line 185
    :cond_0
    new-instance v2, Lorg/apache/poi/openxml4j/exceptions/NotOfficeXmlFileException;

    const-string v3, "The supplied data appears to be a raw XML file. Formats such as Office 2003 XML are not supported"

    invoke-direct {v2, v3}, Lorg/apache/poi/openxml4j/exceptions/NotOfficeXmlFileException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 179
    :cond_1
    new-instance v2, Lorg/apache/poi/openxml4j/exceptions/OLE2NotOfficeXmlFileException;

    const-string v3, "The supplied data appears to be in the OLE2 Format. You are calling the part of POI that deals with OOXML (Office Open XML) Documents. You need to call a different part of POI to process this data (eg HSSF instead of XSSF)"

    invoke-direct {v2, v3}, Lorg/apache/poi/openxml4j/exceptions/OLE2NotOfficeXmlFileException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
