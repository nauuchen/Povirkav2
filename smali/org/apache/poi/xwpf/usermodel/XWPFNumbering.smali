.class public Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "XWPFNumbering.java"


# instance fields
.field protected abstractNums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;",
            ">;"
        }
    .end annotation
.end field

.field private ctNumbering:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;

.field isNew:Z

.field protected nums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFNum;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->abstractNums:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->nums:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->abstractNums:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->nums:Ljava/util/List;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->isNew:Z

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1
    .param p1, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->abstractNums:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->nums:Ljava/util/List;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->isNew:Z

    .line 58
    return-void
.end method


# virtual methods
.method public addAbstractNum(Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;)Ljava/math/BigInteger;
    .locals 4
    .param p1, "abstractNum"    # Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;

    .line 237
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->abstractNums:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 238
    .local v0, "pos":I
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->getAbstractNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->ctNumbering:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;->addNewAbstractNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->getAbstractNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    goto :goto_0

    .line 241
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->ctNumbering:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;->addNewAbstractNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    .line 242
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->getAbstractNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    move-result-object v1

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;->setAbstractNumId(Ljava/math/BigInteger;)V

    .line 243
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->ctNumbering:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->getAbstractNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;->setAbstractNumArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;)V

    .line 245
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->abstractNums:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->getCTAbstractNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;->getAbstractNumId()Ljava/math/BigInteger;

    move-result-object v1

    return-object v1
.end method

.method public addNum(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3
    .param p1, "abstractNumID"    # Ljava/math/BigInteger;

    .line 152
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->ctNumbering:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;->addNewNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    move-result-object v0

    .line 153
    .local v0, "ctNum":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->addNewAbstractNumId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    .line 154
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->getAbstractNumId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->setVal(Ljava/math/BigInteger;)V

    .line 155
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->nums:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->setNumId(Ljava/math/BigInteger;)V

    .line 156
    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFNum;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFNum;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;)V

    .line 157
    .local v1, "num":Lorg/apache/poi/xwpf/usermodel/XWPFNum;
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->nums:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->getNumId()Ljava/math/BigInteger;

    move-result-object v2

    return-object v2
.end method

.method public addNum(Lorg/apache/poi/xwpf/usermodel/XWPFNum;)Ljava/math/BigInteger;
    .locals 3
    .param p1, "num"    # Lorg/apache/poi/xwpf/usermodel/XWPFNum;

    .line 139
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->ctNumbering:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;->addNewNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    .line 140
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->ctNumbering:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;->sizeOfNumArray()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 141
    .local v0, "pos":I
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->ctNumbering:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFNum;->getCTNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;->setNumArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;)V

    .line 142
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->nums:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFNum;->getCTNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->getNumId()Ljava/math/BigInteger;

    move-result-object v1

    return-object v1
.end method

.method public addNum(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 3
    .param p1, "abstractNumID"    # Ljava/math/BigInteger;
    .param p2, "numID"    # Ljava/math/BigInteger;

    .line 168
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->ctNumbering:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;->addNewNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    move-result-object v0

    .line 169
    .local v0, "ctNum":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->addNewAbstractNumId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    .line 170
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->getAbstractNumId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->setVal(Ljava/math/BigInteger;)V

    .line 171
    invoke-interface {v0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->setNumId(Ljava/math/BigInteger;)V

    .line 172
    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFNum;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFNum;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;)V

    .line 173
    .local v1, "num":Lorg/apache/poi/xwpf/usermodel/XWPFNum;
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->nums:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method

.method protected commit()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    .line 101
    .local v0, "xmlOptions":Lorg/apache/xmlbeans/XmlOptions;
    new-instance v1, Ljavax/xml/namespace/QName;

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "numbering"

    invoke-direct {v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->setSaveSyntheticDocumentElement(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlOptions;

    .line 102
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    .line 103
    .local v1, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 104
    .local v2, "out":Ljava/io/OutputStream;
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->ctNumbering:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;

    invoke-interface {v3, v2, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    .line 105
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 106
    return-void
.end method

.method public getAbstractNum(Ljava/math/BigInteger;)Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;
    .locals 3
    .param p1, "abstractNumID"    # Ljava/math/BigInteger;

    .line 199
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->abstractNums:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;

    .line 200
    .local v1, "abstractNum":Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;
    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->getAbstractNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;->getAbstractNumId()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    return-object v1

    .end local v1    # "abstractNum":Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;
    :cond_0
    goto :goto_0

    .line 204
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAbstractNumID(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3
    .param p1, "numID"    # Ljava/math/BigInteger;

    .line 274
    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->getNum(Ljava/math/BigInteger;)Lorg/apache/poi/xwpf/usermodel/XWPFNum;

    move-result-object v0

    .line 275
    .local v0, "num":Lorg/apache/poi/xwpf/usermodel/XWPFNum;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 276
    return-object v1

    .line 277
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFNum;->getCTNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    move-result-object v2

    if-nez v2, :cond_1

    .line 278
    return-object v1

    .line 279
    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFNum;->getCTNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->getAbstractNumId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v2

    if-nez v2, :cond_2

    .line 280
    return-object v1

    .line 281
    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFNum;->getCTNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->getAbstractNumId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->getVal()Ljava/math/BigInteger;

    move-result-object v1

    return-object v1
.end method

.method public getIdOfAbstractNum(Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;)Ljava/math/BigInteger;
    .locals 6
    .param p1, "abstractNum"    # Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;

    .line 217
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->getCTAbstractNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    .line 218
    .local v0, "copy":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;
    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;)V

    .line 220
    .local v1, "newAbstractNum":Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->abstractNums:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 221
    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->getCTAbstractNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;->setAbstractNumId(Ljava/math/BigInteger;)V

    .line 222
    invoke-virtual {v1, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->setNumbering(Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;)V

    .line 223
    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->getCTAbstractNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->abstractNums:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;

    invoke-virtual {v4}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->getCTAbstractNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;->valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 224
    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->getCTAbstractNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;->getAbstractNumId()Ljava/math/BigInteger;

    move-result-object v3

    return-object v3

    .line 220
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public getNum(Ljava/math/BigInteger;)Lorg/apache/poi/xwpf/usermodel/XWPFNum;
    .locals 3
    .param p1, "numID"    # Ljava/math/BigInteger;

    .line 184
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->nums:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFNum;

    .line 185
    .local v1, "num":Lorg/apache/poi/xwpf/usermodel/XWPFNum;
    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFNum;->getCTNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->getNumId()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    return-object v1

    .end local v1    # "num":Lorg/apache/poi/xwpf/usermodel/XWPFNum;
    :cond_0
    goto :goto_0

    .line 188
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public numExist(Ljava/math/BigInteger;)Z
    .locals 3
    .param p1, "numID"    # Ljava/math/BigInteger;

    .line 126
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->nums:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFNum;

    .line 127
    .local v1, "num":Lorg/apache/poi/xwpf/usermodel/XWPFNum;
    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFNum;->getCTNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->getNumId()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    const/4 v2, 0x1

    return v2

    .end local v1    # "num":Lorg/apache/poi/xwpf/usermodel/XWPFNum;
    :cond_0
    goto :goto_0

    .line 130
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected onDocumentRead()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    const/4 v0, 0x0

    .line 76
    .local v0, "numberingDoc":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/NumberingDocument;
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 78
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    sget-object v2, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/NumberingDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/NumberingDocument;

    move-result-object v2

    move-object v0, v2

    .line 79
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/NumberingDocument;->getNumbering()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->ctNumbering:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;

    .line 81
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;->getNumArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    move-result-object v2

    .local v2, "arr$":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 82
    .local v5, "ctNum":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;
    iget-object v6, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->nums:Ljava/util/List;

    new-instance v7, Lorg/apache/poi/xwpf/usermodel/XWPFNum;

    invoke-direct {v7, v5, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFNum;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    nop

    .end local v5    # "ctNum":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 84
    .end local v2    # "arr$":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->ctNumbering:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;->getAbstractNumArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    move-result-object v2

    .local v2, "arr$":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;
    array-length v3, v2

    .restart local v3    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 85
    .local v5, "ctAbstractNum":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;
    iget-object v6, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->abstractNums:Ljava/util/List;

    new-instance v7, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;

    invoke-direct {v7, v5, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    nop

    .end local v5    # "ctAbstractNum":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 87
    .end local v2    # "arr$":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->isNew:Z
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 92
    nop

    .line 93
    return-void

    .line 91
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 88
    :catch_0
    move-exception v2

    .line 89
    .local v2, "e":Lorg/apache/xmlbeans/XmlException;
    :try_start_1
    new-instance v3, Lorg/apache/poi/POIXMLException;

    invoke-direct {v3}, Lorg/apache/poi/POIXMLException;-><init>()V

    .end local v0    # "numberingDoc":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/NumberingDocument;
    .end local v1    # "is":Ljava/io/InputStream;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .end local v2    # "e":Lorg/apache/xmlbeans/XmlException;
    .restart local v0    # "numberingDoc":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/NumberingDocument;
    .restart local v1    # "is":Ljava/io/InputStream;
    :goto_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v2
.end method

.method public removeAbstractNum(Ljava/math/BigInteger;)Z
    .locals 2
    .param p1, "abstractNumID"    # Ljava/math/BigInteger;

    .line 257
    invoke-virtual {p1}, Ljava/math/BigInteger;->byteValue()B

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->abstractNums:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 258
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->ctNumbering:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;

    invoke-virtual {p1}, Ljava/math/BigInteger;->byteValue()B

    move-result v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;->removeAbstractNum(I)V

    .line 259
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->abstractNums:Ljava/util/List;

    invoke-virtual {p1}, Ljava/math/BigInteger;->byteValue()B

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 260
    const/4 v0, 0x1

    return v0

    .line 262
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setNumbering(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;)V
    .locals 0
    .param p1, "numbering"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;

    .line 115
    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->ctNumbering:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;

    .line 116
    return-void
.end method
