.class public Lorg/apache/poi/xdgf/extractor/XDGFVisioExtractor;
.super Lorg/apache/poi/POIXMLTextExtractor;
.source "XDGFVisioExtractor.java"


# instance fields
.field protected final document:Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;


# direct methods
.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 1
    .param p1, "openPackage"    # Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    new-instance v0, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;

    invoke-direct {v0, p1}, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xdgf/extractor/XDGFVisioExtractor;-><init>(Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;)V
    .locals 0
    .param p1, "document"    # Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;

    .line 36
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLTextExtractor;-><init>(Lorg/apache/poi/POIXMLDocument;)V

    .line 37
    iput-object p1, p0, Lorg/apache/poi/xdgf/extractor/XDGFVisioExtractor;->document:Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;

    .line 38
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 56
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Use:"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "  XDGFVisioExtractor <filename.vsdx>"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 60
    :cond_0
    new-instance v0, Lorg/apache/poi/xdgf/extractor/XDGFVisioExtractor;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-static {v1}, Lorg/apache/poi/POIXMLDocument;->openPackage(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xdgf/extractor/XDGFVisioExtractor;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    .line 64
    .local v0, "extractor":Lorg/apache/poi/POIXMLTextExtractor;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLTextExtractor;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Lorg/apache/poi/POIXMLTextExtractor;->close()V

    .line 66
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 4

    .line 45
    new-instance v0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeTextVisitor;

    invoke-direct {v0}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeTextVisitor;-><init>()V

    .line 47
    .local v0, "visitor":Lorg/apache/poi/xdgf/usermodel/shape/ShapeTextVisitor;
    iget-object v1, p0, Lorg/apache/poi/xdgf/extractor/XDGFVisioExtractor;->document:Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;->getPages()Ljava/util/Collection;

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

    .line 48
    .local v2, "page":Lorg/apache/poi/xdgf/usermodel/XDGFPage;
    invoke-virtual {v2}, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->getContent()Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;->visitShapes(Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;)V

    .end local v2    # "page":Lorg/apache/poi/xdgf/usermodel/XDGFPage;
    goto :goto_0

    .line 51
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeTextVisitor;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
