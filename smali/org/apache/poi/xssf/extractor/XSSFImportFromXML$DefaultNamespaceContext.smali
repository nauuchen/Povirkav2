.class final Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DefaultNamespaceContext;
.super Ljava/lang/Object;
.source "XSSFImportFromXML.java"

# interfaces
.implements Ljavax/xml/namespace/NamespaceContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/extractor/XSSFImportFromXML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultNamespaceContext"
.end annotation


# instance fields
.field private final _docElem:Lorg/w3c/dom/Element;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 1
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DefaultNamespaceContext;->_docElem:Lorg/w3c/dom/Element;

    .line 235
    return-void
.end method

.method private getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "prefix"    # Ljava/lang/String;

    .line 251
    const-string/jumbo v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    return-object v0

    .line 255
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DefaultNamespaceContext;->_docElem:Lorg/w3c/dom/Element;

    .line 257
    .local v0, "parent":Lorg/w3c/dom/Node;
    :goto_0
    if-eqz v0, :cond_7

    .line 259
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    .line 260
    .local v1, "type":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 261
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 264
    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 266
    .local v2, "nnm":Lorg/w3c/dom/NamedNodeMap;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 267
    invoke-interface {v2, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 268
    .local v4, "attr":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    .line 269
    .local v5, "aname":Ljava/lang/String;
    const-string/jumbo v6, "xmlns:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    .line 271
    .local v6, "isPrefix":Z
    if-nez v6, :cond_2

    const-string/jumbo v7, "xmlns"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 272
    :cond_2
    const/16 v7, 0x3a

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 273
    .local v7, "index":I
    if-eqz v6, :cond_3

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_3
    const-string v8, ""

    .line 275
    .local v8, "p":Ljava/lang/String;
    :goto_2
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 276
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 266
    .end local v4    # "attr":Lorg/w3c/dom/Node;
    .end local v5    # "aname":Ljava/lang/String;
    .end local v6    # "isPrefix":Z
    .end local v7    # "index":I
    .end local v8    # "p":Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 280
    .end local v2    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .end local v3    # "i":I
    :cond_5
    nop

    .line 285
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 286
    .end local v1    # "type":I
    goto :goto_0

    .line 280
    .restart local v1    # "type":I
    :cond_6
    const/4 v2, 0x5

    if-ne v1, v2, :cond_7

    .line 281
    goto :goto_0

    .line 288
    .end local v1    # "type":I
    :cond_7
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .line 239
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DefaultNamespaceContext;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .line 300
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .param p1, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "*>;"
        }
    .end annotation

    .line 294
    const/4 v0, 0x0

    return-object v0
.end method
