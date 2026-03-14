.class public Lorg/apache/poi/xdgf/util/HierarchyPrinter;
.super Ljava/lang/Object;
.source "HierarchyPrinter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 84
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 85
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Usage: in.vsdx outdir"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 89
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p0, v0

    .line 90
    .local v0, "inFilename":Ljava/lang/String;
    aget-object v1, p0, v1

    .line 92
    .local v1, "outDir":Ljava/lang/String;
    new-instance v2, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;-><init>(Ljava/io/InputStream;)V

    .line 94
    .local v2, "doc":Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;
    invoke-static {v2, v1}, Lorg/apache/poi/xdgf/util/HierarchyPrinter;->printHierarchy(Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public static printHierarchy(Lorg/apache/poi/xdgf/usermodel/XDGFPage;Ljava/io/File;)V
    .locals 5
    .param p0, "page"    # Lorg/apache/poi/xdgf/usermodel/XDGFPage;
    .param p1, "outDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->getPageNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/xdgf/util/Util;->sanitizeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    .local v0, "pageFile":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 47
    .local v1, "os":Ljava/io/OutputStream;
    new-instance v2, Ljava/io/PrintStream;

    const/4 v3, 0x0

    const-string/jumbo v4, "utf-8"

    invoke-direct {v2, v1, v3, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    .line 49
    .local v2, "pos":Ljava/io/PrintStream;
    invoke-static {p0, v2}, Lorg/apache/poi/xdgf/util/HierarchyPrinter;->printHierarchy(Lorg/apache/poi/xdgf/usermodel/XDGFPage;Ljava/io/PrintStream;)V

    .line 51
    invoke-virtual {v2}, Ljava/io/PrintStream;->close()V

    .line 52
    return-void
.end method

.method public static printHierarchy(Lorg/apache/poi/xdgf/usermodel/XDGFPage;Ljava/io/PrintStream;)V
    .locals 2
    .param p0, "page"    # Lorg/apache/poi/xdgf/usermodel/XDGFPage;
    .param p1, "os"    # Ljava/io/PrintStream;

    .line 56
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->getContent()Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xdgf/util/HierarchyPrinter$1;

    invoke-direct {v1, p1}, Lorg/apache/poi/xdgf/util/HierarchyPrinter$1;-><init>(Ljava/io/PrintStream;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;->visitShapes(Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;)V

    .line 71
    return-void
.end method

.method public static printHierarchy(Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;Ljava/lang/String;)V
    .locals 3
    .param p0, "document"    # Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;
    .param p1, "outDirname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, "outDir":Ljava/io/File;
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;->getPages()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xdgf/usermodel/XDGFPage;

    .line 79
    .local v2, "page":Lorg/apache/poi/xdgf/usermodel/XDGFPage;
    invoke-static {v2, v0}, Lorg/apache/poi/xdgf/util/HierarchyPrinter;->printHierarchy(Lorg/apache/poi/xdgf/usermodel/XDGFPage;Ljava/io/File;)V

    .end local v2    # "page":Lorg/apache/poi/xdgf/usermodel/XDGFPage;
    goto :goto_0

    .line 81
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method
