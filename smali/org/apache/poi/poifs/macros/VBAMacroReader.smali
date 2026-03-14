.class public Lorg/apache/poi/poifs/macros/VBAMacroReader;
.super Ljava/lang/Object;
.source "VBAMacroReader.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;,
        Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;
    }
.end annotation


# static fields
.field private static final EOF:I = -0x1

.field private static final MODULEOFFSET:I = 0x31

.field private static final MODULETYPE_DOCUMENT_CLASS_OR_DESIGNER:I = 0x22

.field private static final MODULETYPE_PROCEDURAL:I = 0x21

.field private static final MODULE_DOC_STRING:I = 0x1c

.field private static final MODULE_NAME:I = 0x19

.field private static final MODULE_NAME_UNICODE:I = 0x47

.field private static final PROJECTCODEPAGE:I = 0x3

.field private static final PROJECTLCID:I = 0x2

.field private static final PROJECTVERSION:I = 0x9

.field private static final STREAMNAME:I = 0x1a

.field private static final STREAMNAME_RESERVED:I = 0x32

.field private static final UTF_16LE:Ljava/nio/charset/Charset;

.field protected static final VBA_PROJECT_OOXML:Ljava/lang/String; = "vbaProject.bin"

.field protected static final VBA_PROJECT_POIFS:Ljava/lang/String; = "VBA"

.field private static final VERSION_DEPENDENT_TERMINATOR:I = 0x2b

.field private static final VERSION_INDEPENDENT_TERMINATOR:I = 0x10


# instance fields
.field private fs:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const-string v0, "UTF-16LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/macros/VBAMacroReader;->UTF_16LE:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    :try_start_0
    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader;->fs:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    :try_end_0
    .catch Lorg/apache/poi/poifs/filesystem/OfficeXmlFileException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Lorg/apache/poi/poifs/filesystem/OfficeXmlFileException;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v1}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->openOOXML(Ljava/io/InputStream;)V

    .line 85
    .end local v0    # "e":Lorg/apache/poi/poifs/filesystem/OfficeXmlFileException;
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "rstream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/FileMagic;->prepareToCheckMagic(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 71
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {v0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf(Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v1

    .line 72
    .local v1, "fm":Lorg/apache/poi/poifs/filesystem/FileMagic;
    sget-object v2, Lorg/apache/poi/poifs/filesystem/FileMagic;->OLE2:Lorg/apache/poi/poifs/filesystem/FileMagic;

    if-ne v1, v2, :cond_0

    .line 73
    new-instance v2, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v2, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader;->fs:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    goto :goto_0

    .line 75
    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->openOOXML(Ljava/io/InputStream;)V

    .line 77
    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 0
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader;->fs:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    .line 88
    return-void
.end method

.method private openOOXML(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "zipFile"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 93
    .local v0, "zis":Ljava/util/zip/ZipInputStream;
    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    move-object v2, v1

    .local v2, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v1, :cond_1

    .line 94
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "vbaProject.bin"

    invoke-static {v1, v3}, Lorg/apache/poi/util/StringUtil;->endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    :try_start_0
    new-instance v1, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v1, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader;->fs:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    return-void

    .line 99
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    .line 104
    throw v1

    .line 108
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    .line 109
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "No VBA project found"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static readModule(Lorg/apache/poi/poifs/filesystem/DocumentInputStream;Ljava/lang/String;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)V
    .locals 6
    .param p0, "dis"    # Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "modules"    # Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    invoke-virtual {p2, p1}, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;

    .line 224
    .local v0, "module":Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;
    if-nez v0, :cond_0

    .line 226
    new-instance v1, Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;

    invoke-direct {v1}, Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;-><init>()V

    move-object v0, v1

    .line 227
    invoke-virtual {p2, p1, v0}, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-virtual {v0, p0}, Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;->read(Ljava/io/InputStream;)V

    goto :goto_0

    .line 229
    :cond_0
    iget-object v1, v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;->buf:[B

    if-nez v1, :cond_3

    .line 230
    iget-object v1, v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;->offset:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 235
    iget-object v1, v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;->offset:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->skip(J)J

    move-result-wide v1

    .line 236
    .local v1, "skippedBytes":J
    iget-object v3, v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;->offset:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 239
    new-instance v3, Lorg/apache/poi/util/RLEDecompressingInputStream;

    invoke-direct {v3, p0}, Lorg/apache/poi/util/RLEDecompressingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 240
    .local v3, "stream":Ljava/io/InputStream;
    invoke-virtual {v0, v3}, Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;->read(Ljava/io/InputStream;)V

    .line 241
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 237
    .end local v3    # "stream":Ljava/io/InputStream;
    :cond_1
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tried to skip "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;->offset:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes, but actually skipped "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 232
    .end local v1    # "skippedBytes":J
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Module offset for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' was never read."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    :cond_3
    :goto_0
    return-void
.end method

.method private static readModule(Lorg/apache/poi/util/RLEDecompressingInputStream;Ljava/lang/String;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)V
    .locals 6
    .param p0, "in"    # Lorg/apache/poi/util/RLEDecompressingInputStream;
    .param p1, "streamName"    # Ljava/lang/String;
    .param p2, "modules"    # Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    invoke-virtual {p0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readInt()I

    move-result v0

    .line 204
    .local v0, "moduleOffset":I
    invoke-virtual {p2, p1}, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;

    .line 205
    .local v1, "module":Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;
    if-nez v1, :cond_0

    .line 207
    new-instance v2, Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;

    invoke-direct {v2}, Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;-><init>()V

    move-object v1, v2

    .line 208
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;->offset:Ljava/lang/Integer;

    .line 209
    invoke-virtual {p2, p1, v1}, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 213
    :cond_0
    new-instance v2, Lorg/apache/poi/util/RLEDecompressingInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v4, v1, Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;->buf:[B

    iget-object v5, v1, Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;->buf:[B

    array-length v5, v5

    sub-int/2addr v5, v0

    invoke-direct {v3, v4, v0, v5}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v2, v3}, Lorg/apache/poi/util/RLEDecompressingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 216
    .local v2, "stream":Ljava/io/InputStream;
    invoke-virtual {v1, v2}, Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;->read(Ljava/io/InputStream;)V

    .line 217
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 219
    .end local v2    # "stream":Ljava/io/InputStream;
    :goto_0
    return-void
.end method

.method private static readString(Ljava/io/InputStream;ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "length"    # I
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    new-array v0, p1, [B

    .line 186
    .local v0, "buffer":[B
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 187
    .local v1, "count":I
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v2
.end method

.method private readUnicodeString(Lorg/apache/poi/util/RLEDecompressingInputStream;I)Ljava/lang/String;
    .locals 3
    .param p1, "in"    # Lorg/apache/poi/util/RLEDecompressingInputStream;
    .param p2, "unicodeNameRecordLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    new-array v0, p2, [B

    .line 365
    .local v0, "buffer":[B
    invoke-static {p1, v0}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    .line 366
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lorg/apache/poi/poifs/macros/VBAMacroReader;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method private static trySkip(Ljava/io/InputStream;J)V
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 253
    .local v0, "skippedBytes":J
    cmp-long v2, v0, p1

    if-eqz v2, :cond_1

    .line 254
    const-wide/16 v2, 0x0

    const-string v4, "Tried skipping "

    cmp-long v5, v0, v2

    if-gez v5, :cond_0

    .line 255
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes, but no bytes were skipped. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "The end of the stream has been reached or the stream is closed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 259
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes, but only "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes were skipped. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "This should never happen."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 264
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader;->fs:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader;->fs:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    .line 115
    return-void
.end method

.method protected findMacros(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)V
    .locals 3
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .param p2, "modules"    # Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VBA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->readMacros(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)V

    goto :goto_1

    .line 167
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/filesystem/Entry;

    .line 168
    .local v1, "child":Lorg/apache/poi/poifs/filesystem/Entry;
    instance-of v2, v1, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    if-eqz v2, :cond_1

    .line 169
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {p0, v2, p2}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->findMacros(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)V

    .end local v1    # "child":Lorg/apache/poi/poifs/filesystem/Entry;
    :cond_1
    goto :goto_0

    .line 173
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    return-void
.end method

.method public readMacros()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    new-instance v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;

    invoke-direct {v0}, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;-><init>()V

    .line 125
    .local v0, "modules":Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;
    iget-object v1, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader;->fs:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->findMacros(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)V

    .line 127
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 128
    .local v1, "moduleSources":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 129
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;

    .line 130
    .local v4, "module":Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;
    iget-object v5, v4, Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;->buf:[B

    if-eqz v5, :cond_0

    iget-object v5, v4, Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;->buf:[B

    array-length v5, v5

    if-lez v5, :cond_0

    .line 131
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    iget-object v7, v4, Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;->buf:[B

    iget-object v8, v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;>;"
    .end local v4    # "module":Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;
    :cond_0
    goto :goto_0

    .line 134
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v1
.end method

.method protected readMacros(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)V
    .locals 16
    .param p1, "macroDir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .param p2, "modules"    # Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/poifs/filesystem/Entry;

    .line 297
    .local v5, "entry":Lorg/apache/poi/poifs/filesystem/Entry;
    instance-of v6, v5, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    if-nez v6, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    invoke-interface {v5}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 300
    .local v6, "name":Ljava/lang/String;
    move-object v7, v5

    check-cast v7, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    .line 301
    .local v7, "document":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    new-instance v8, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-direct {v8, v7}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V

    .line 303
    .local v8, "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    :try_start_0
    const-string v9, "dir"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 305
    new-instance v9, Lorg/apache/poi/util/RLEDecompressingInputStream;

    invoke-direct {v9, v8}, Lorg/apache/poi/util/RLEDecompressingInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 306
    .local v9, "in":Lorg/apache/poi/util/RLEDecompressingInputStream;
    const/4 v10, 0x0

    .line 307
    .local v10, "streamName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 310
    .local v11, "recordId":I
    :goto_1
    :try_start_1
    invoke-virtual {v9}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readShort()I

    move-result v12

    move v11, v12

    .line 311
    const/4 v12, -0x1

    if-eq v12, v11, :cond_7

    const/16 v12, 0x10

    if-ne v12, v11, :cond_1

    .line 313
    move-object/from16 v13, p0

    goto/16 :goto_3

    .line 315
    :cond_1
    invoke-virtual {v9}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readInt()I

    move-result v12

    .line 316
    .local v12, "recordLength":I
    const/4 v13, 0x3

    if-eq v11, v13, :cond_6

    const/16 v13, 0x9

    if-eq v11, v13, :cond_5

    const/16 v13, 0x1a

    if-eq v11, v13, :cond_3

    const/16 v13, 0x31

    .local v0, "codepage":I
    .local v3, "reserved":I
    .local v4, "unicodeNameRecordLength":I
    if-eq v11, v13, :cond_2

    .line 339
    int-to-long v13, v12

    invoke-static {v9, v13, v14}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->trySkip(Ljava/io/InputStream;J)V

    move-object/from16 v13, p0

    goto :goto_2

    .line 336
    :cond_2
    invoke-static {v9, v10, v1}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->readModule(Lorg/apache/poi/util/RLEDecompressingInputStream;Ljava/lang/String;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)V

    .line 337
    move-object/from16 v13, p0

    goto :goto_2

    .line 325
    .end local v3    # "reserved":I
    .end local v4    # "unicodeNameRecordLength":I
    :cond_3
    iget-object v3, v1, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;->charset:Ljava/nio/charset/Charset;

    invoke-static {v9, v12, v3}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->readString(Ljava/io/InputStream;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    .line 326
    invoke-virtual {v9}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readShort()I

    move-result v3

    .line 327
    .restart local v3    # "reserved":I
    const/16 v4, 0x32

    if-ne v3, v4, :cond_4

    .line 331
    invoke-virtual {v9}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readInt()I

    move-result v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    .restart local v4    # "unicodeNameRecordLength":I
    move-object/from16 v13, p0

    :try_start_2
    invoke-direct {v13, v9, v4}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->readUnicodeString(Lorg/apache/poi/util/RLEDecompressingInputStream;I)Ljava/lang/String;

    .line 334
    goto :goto_2

    .line 328
    .end local v4    # "unicodeNameRecordLength":I
    :cond_4
    move-object/from16 v13, p0

    new-instance v4, Ljava/io/IOException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Expected x0032 after stream name before Unicode stream name, but found: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v4, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "entry":Lorg/apache/poi/poifs/filesystem/Entry;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "document":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .end local v8    # "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .end local v9    # "in":Lorg/apache/poi/util/RLEDecompressingInputStream;
    .end local v10    # "streamName":Ljava/lang/String;
    .end local v11    # "recordId":I
    .end local p1    # "macroDir":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .end local p2    # "modules":Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;
    throw v4

    .line 318
    .end local v0    # "codepage":I
    .end local v3    # "reserved":I
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "entry":Lorg/apache/poi/poifs/filesystem/Entry;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "document":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .restart local v8    # "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .restart local v9    # "in":Lorg/apache/poi/util/RLEDecompressingInputStream;
    .restart local v10    # "streamName":Ljava/lang/String;
    .restart local v11    # "recordId":I
    .restart local p1    # "macroDir":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .restart local p2    # "modules":Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;
    :cond_5
    move-object/from16 v13, p0

    const-wide/16 v14, 0x6

    invoke-static {v9, v14, v15}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->trySkip(Ljava/io/InputStream;J)V

    .line 319
    goto :goto_2

    .line 321
    :cond_6
    move-object/from16 v13, p0

    invoke-virtual {v9}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readShort()I

    move-result v0

    .line 322
    .restart local v0    # "codepage":I
    const/4 v14, 0x1

    invoke-static {v0, v14}, Lorg/apache/poi/util/CodePageUtil;->codepageToEncoding(IZ)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v14

    iput-object v14, v1, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;->charset:Ljava/nio/charset/Charset;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 323
    nop

    .line 342
    .end local v0    # "codepage":I
    .end local v12    # "recordLength":I
    :goto_2
    goto/16 :goto_1

    .line 343
    :catch_0
    move-exception v0

    goto :goto_4

    .line 311
    :cond_7
    move-object/from16 v13, p0

    .line 349
    :goto_3
    :try_start_3
    invoke-virtual {v9}, Lorg/apache/poi/util/RLEDecompressingInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 350
    nop

    .line 351
    .end local v9    # "in":Lorg/apache/poi/util/RLEDecompressingInputStream;
    .end local v10    # "streamName":Ljava/lang/String;
    .end local v11    # "recordId":I
    :cond_8
    goto :goto_6

    .line 349
    .restart local v9    # "in":Lorg/apache/poi/util/RLEDecompressingInputStream;
    .restart local v10    # "streamName":Ljava/lang/String;
    .restart local v11    # "recordId":I
    :catchall_0
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_5

    .line 343
    :catch_1
    move-exception v0

    move-object/from16 v13, p0

    .line 344
    .local v0, "e":Ljava/io/IOException;
    :goto_4
    :try_start_4
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error occurred while reading macros at section id "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, " ("

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v11}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, ")"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "entry":Lorg/apache/poi/poifs/filesystem/Entry;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "document":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .end local v8    # "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .end local v9    # "in":Lorg/apache/poi/util/RLEDecompressingInputStream;
    .end local v10    # "streamName":Ljava/lang/String;
    .end local v11    # "recordId":I
    .end local p1    # "macroDir":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .end local p2    # "modules":Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 349
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "entry":Lorg/apache/poi/poifs/filesystem/Entry;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "document":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .restart local v8    # "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .restart local v9    # "in":Lorg/apache/poi/util/RLEDecompressingInputStream;
    .restart local v10    # "streamName":Ljava/lang/String;
    .restart local v11    # "recordId":I
    .restart local p1    # "macroDir":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .restart local p2    # "modules":Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;
    :catchall_1
    move-exception v0

    :goto_5
    :try_start_5
    invoke-virtual {v9}, Lorg/apache/poi/util/RLEDecompressingInputStream;->close()V

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "entry":Lorg/apache/poi/poifs/filesystem/Entry;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "document":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .end local v8    # "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .end local p1    # "macroDir":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .end local p2    # "modules":Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;
    throw v0

    .line 351
    .end local v9    # "in":Lorg/apache/poi/util/RLEDecompressingInputStream;
    .end local v10    # "streamName":Ljava/lang/String;
    .end local v11    # "recordId":I
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "entry":Lorg/apache/poi/poifs/filesystem/Entry;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "document":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .restart local v8    # "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .restart local p1    # "macroDir":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .restart local p2    # "modules":Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;
    :cond_9
    move-object/from16 v13, p0

    const-string v9, "__SRP"

    invoke-static {v6, v9}, Lorg/apache/poi/util/StringUtil;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "_VBA_PROJECT"

    invoke-static {v6, v9}, Lorg/apache/poi/util/StringUtil;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 354
    invoke-static {v8, v6, v1}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->readModule(Lorg/apache/poi/poifs/filesystem/DocumentInputStream;Ljava/lang/String;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 358
    :goto_6
    invoke-virtual {v8}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    .line 359
    nop

    .line 360
    .end local v5    # "entry":Lorg/apache/poi/poifs/filesystem/Entry;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "document":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .end local v8    # "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    goto/16 :goto_0

    .line 358
    .restart local v5    # "entry":Lorg/apache/poi/poifs/filesystem/Entry;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "document":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .restart local v8    # "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    :catchall_2
    move-exception v0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object/from16 v13, p0

    :goto_7
    invoke-virtual {v8}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    throw v0

    .line 296
    .end local v5    # "entry":Lorg/apache/poi/poifs/filesystem/Entry;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "document":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .end local v8    # "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    :cond_a
    move-object/from16 v13, p0

    .line 361
    .end local v2    # "i$":Ljava/util/Iterator;
    return-void
.end method
