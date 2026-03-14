.class public Lorg/apache/poi/dev/OOXMLPrettyPrint;
.super Ljava/lang/Object;
.source "OOXMLPrettyPrint.java"


# instance fields
.field private final documentBuilder:Ljavax/xml/parsers/DocumentBuilder;

.field private final documentBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/dev/OOXMLPrettyPrint;->documentBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 61
    const-wide v1, 0x3ee4f8b588e368f1L    # 1.0E-5

    invoke-static {v1, v2}, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->setMinInflateRatio(D)V

    .line 63
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/dev/OOXMLPrettyPrint;->documentBuilder:Ljavax/xml/parsers/DocumentBuilder;

    .line 64
    return-void
.end method

.method private handle(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipOutputStream;)V
    .locals 7
    .param p1, "file"    # Ljava/util/zip/ZipFile;
    .param p2, "out"    # Ljava/util/zip/ZipOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 106
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 107
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 110
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "name":Ljava/lang/String;
    new-instance v3, Ljava/util/zip/ZipEntry;

    invoke-direct {v3, v2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 113
    :try_start_0
    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".rels"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 118
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not pretty-printing non-XML file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3, p2}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_2

    .line 114
    :cond_1
    :goto_1
    iget-object v3, p0, Lorg/apache/poi/dev/OOXMLPrettyPrint;->documentBuilder:Ljavax/xml/parsers/DocumentBuilder;

    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-virtual {p1, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 115
    .local v3, "document":Lorg/w3c/dom/Document;
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->setXmlStandalone(Z)V

    .line 116
    const/4 v4, 0x2

    invoke-static {v3, p2, v4}, Lorg/apache/poi/dev/OOXMLPrettyPrint;->pretty(Lorg/w3c/dom/Document;Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .end local v3    # "document":Lorg/w3c/dom/Document;
    nop

    .line 124
    :goto_2
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 125
    nop

    .line 126
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 127
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .end local v2    # "name":Ljava/lang/String;
    goto :goto_0

    .line 124
    .restart local v1    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v2    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 121
    :catch_0
    move-exception v3

    .line 122
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "While handling entry "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .end local v2    # "name":Ljava/lang/String;
    .end local p1    # "file":Ljava/util/zip/ZipFile;
    .end local p2    # "out":Ljava/util/zip/ZipOutputStream;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v1    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local p1    # "file":Ljava/util/zip/ZipFile;
    .restart local p2    # "out":Ljava/util/zip/ZipOutputStream;
    :goto_3
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    throw v3

    .line 128
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static handleFile(Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "outFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;,
            Ljavax/xml/transform/TransformerException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .line 88
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading zip-file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and writing pretty-printed XML to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 90
    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/internal/ZipHelper;->openZipFile(Ljava/io/File;)Ljava/util/zip/ZipFile;

    move-result-object v0

    .line 92
    .local v0, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 94
    .local v1, "out":Ljava/util/zip/ZipOutputStream;
    :try_start_1
    new-instance v2, Lorg/apache/poi/dev/OOXMLPrettyPrint;

    invoke-direct {v2}, Lorg/apache/poi/dev/OOXMLPrettyPrint;-><init>()V

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/dev/OOXMLPrettyPrint;->handle(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 97
    nop

    .line 99
    .end local v1    # "out":Ljava/util/zip/ZipOutputStream;
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 101
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    .line 102
    nop

    .line 103
    return-void

    .line 96
    .restart local v1    # "out":Ljava/util/zip/ZipOutputStream;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    .end local v0    # "zipFile":Ljava/util/zip/ZipFile;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "outFile":Ljava/io/File;
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 99
    .end local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v0    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "outFile":Ljava/io/File;
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 101
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    throw v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    array-length v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    array-length v0, p0

    rem-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Use:"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 69
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "\tjava OOXMLPrettyPrint [<filename> <outfilename>] ..."

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 73
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 74
    new-instance v2, Ljava/io/File;

    aget-object v3, p0, v0

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 76
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error, file not found!"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 77
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 81
    :cond_2
    new-instance v3, Ljava/io/File;

    add-int/lit8 v4, v0, 0x1

    aget-object v4, p0, v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lorg/apache/poi/dev/OOXMLPrettyPrint;->handleFile(Ljava/io/File;Ljava/io/File;)V

    .line 73
    .end local v2    # "f":Ljava/io/File;
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 83
    .end local v0    # "i":I
    :cond_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Done."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method private static pretty(Lorg/w3c/dom/Document;Ljava/io/OutputStream;I)V
    .locals 4
    .param p0, "document"    # Lorg/w3c/dom/Document;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "indent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 131
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    .line 132
    .local v0, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v1

    .line 133
    .local v1, "transformer":Ljavax/xml/transform/Transformer;
    const-string v2, "encoding"

    const-string v3, "UTF-8"

    invoke-virtual {v1, v2, v3}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    if-lez p2, :cond_0

    .line 136
    const-string v2, "indent"

    const-string/jumbo v3, "yes"

    invoke-virtual {v1, v2, v3}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "{http://xml.apache.org/xslt}indent-amount"

    invoke-virtual {v1, v3, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_0
    new-instance v2, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v2, p1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    .line 140
    .local v2, "result":Ljavax/xml/transform/Result;
    new-instance v3, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v3, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 141
    .local v3, "source":Ljavax/xml/transform/Source;
    invoke-virtual {v1, v3, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 142
    return-void
.end method
