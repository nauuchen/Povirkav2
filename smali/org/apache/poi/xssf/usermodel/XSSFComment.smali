.class public Lorg/apache/poi/xssf/usermodel/XSSFComment;
.super Ljava/lang/Object;
.source "XSSFComment.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Comment;


# instance fields
.field private final _comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

.field private final _comments:Lorg/apache/poi/xssf/model/CommentsTable;

.field private _str:Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

.field private final _vmlShape:Lcom/microsoft/schemas/vml/CTShape;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/model/CommentsTable;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;Lcom/microsoft/schemas/vml/CTShape;)V
    .locals 5
    .param p1, "comments"    # Lorg/apache/poi/xssf/model/CommentsTable;
    .param p2, "comment"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    .param p3, "vmlShape"    # Lcom/microsoft/schemas/vml/CTShape;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    .line 52
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comments:Lorg/apache/poi/xssf/model/CommentsTable;

    .line 53
    iput-object p3, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_vmlShape:Lcom/microsoft/schemas/vml/CTShape;

    .line 57
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/microsoft/schemas/vml/CTShape;->sizeOfClientDataArray()I

    move-result v0

    if-lez v0, :cond_0

    .line 58
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "ref":Lorg/apache/poi/ss/util/CellReference;
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Lcom/microsoft/schemas/vml/CTShape;->getClientDataArray(I)Lcom/microsoft/schemas/office/excel/CTClientData;

    move-result-object v2

    .line 60
    .local v2, "clientData":Lcom/microsoft/schemas/office/excel/CTClientData;
    new-instance v3, Ljava/math/BigInteger;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v1, v3}, Lcom/microsoft/schemas/office/excel/CTClientData;->setRowArray(ILjava/math/BigInteger;)V

    .line 61
    new-instance v3, Ljava/math/BigInteger;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v1, v3}, Lcom/microsoft/schemas/office/excel/CTClientData;->setColumnArray(ILjava/math/BigInteger;)V

    .line 63
    invoke-static {p3}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->avoidXmlbeansCorruptPointer(Lcom/microsoft/schemas/vml/CTShape;)V

    .line 65
    .end local v0    # "ref":Lorg/apache/poi/ss/util/CellReference;
    .end local v2    # "clientData":Lcom/microsoft/schemas/office/excel/CTClientData;
    :cond_0
    return-void
.end method

.method private static avoidXmlbeansCorruptPointer(Lcom/microsoft/schemas/vml/CTShape;)V
    .locals 1
    .param p0, "vmlShape"    # Lcom/microsoft/schemas/vml/CTShape;

    .line 260
    invoke-interface {p0}, Lcom/microsoft/schemas/vml/CTShape;->getClientDataList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 261
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 243
    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFComment;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 244
    return v1

    .line 246
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFComment;

    .line 247
    .local v0, "other":Lorg/apache/poi/xssf/usermodel/XSSFComment;
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getCTComment()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getCTComment()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    move-result-object v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getCTShape()Lcom/microsoft/schemas/vml/CTShape;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getCTShape()Lcom/microsoft/schemas/vml/CTShape;

    move-result-object v3

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAddress()Lorg/apache/poi/ss/util/CellAddress;
    .locals 2

    .line 136
    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 3

    .line 73
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comments:Lorg/apache/poi/xssf/model/CommentsTable;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->getAuthorId()J

    move-result-wide v1

    long-to-int v2, v1

    int-to-long v1, v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/xssf/model/CommentsTable;->getAuthor(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCTComment()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    .locals 1

    .line 234
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    return-object v0
.end method

.method protected getCTShape()Lcom/microsoft/schemas/vml/CTShape;
    .locals 1

    .line 238
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_vmlShape:Lcom/microsoft/schemas/vml/CTShape;

    return-object v0
.end method

.method public getClientAnchor()Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 19

    .line 220
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_vmlShape:Lcom/microsoft/schemas/vml/CTShape;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/microsoft/schemas/vml/CTShape;->getClientDataArray(I)Lcom/microsoft/schemas/office/excel/CTClientData;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/microsoft/schemas/office/excel/CTClientData;->getAnchorArray(I)Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "position":Ljava/lang/String;
    const/16 v3, 0x8

    new-array v3, v3, [I

    .line 222
    .local v3, "pos":[I
    const/4 v4, 0x0

    .line 223
    .local v4, "i":I
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, "arr$":[Ljava/lang/String;
    array-length v6, v5

    .local v6, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v6, :cond_0

    aget-object v8, v5, v7

    .line 224
    .local v8, "s":Ljava/lang/String;
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "i":I
    .local v9, "i":I
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v3, v4

    .line 223
    .end local v8    # "s":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    move v4, v9

    goto :goto_0

    .line 226
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v7    # "i$":I
    .end local v9    # "i":I
    .restart local v4    # "i":I
    :cond_0
    new-instance v5, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    const/4 v6, 0x1

    aget v6, v3, v6

    mul-int/lit16 v11, v6, 0x2535

    const/4 v6, 0x3

    aget v6, v3, v6

    mul-int/lit16 v12, v6, 0x2535

    const/4 v6, 0x5

    aget v6, v3, v6

    mul-int/lit16 v13, v6, 0x2535

    const/4 v6, 0x7

    aget v6, v3, v6

    mul-int/lit16 v14, v6, 0x2535

    aget v15, v3, v2

    const/4 v2, 0x2

    aget v16, v3, v2

    const/4 v2, 0x4

    aget v17, v3, v2

    const/4 v2, 0x6

    aget v18, v3, v2

    move-object v10, v5

    invoke-direct/range {v10 .. v18}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;-><init>(IIIIIIII)V

    move-object v2, v5

    .line 227
    .local v2, "ca":Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;
    return-object v2
.end method

.method public getColumn()I
    .locals 1

    .line 93
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getAddress()Lorg/apache/poi/ss/util/CellAddress;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result v0

    return v0
.end method

.method public getRow()I
    .locals 1

    .line 101
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getAddress()Lorg/apache/poi/ss/util/CellAddress;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getString()Lorg/apache/poi/ss/usermodel/RichTextString;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getString()Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    move-result-object v0

    return-object v0
.end method

.method public getString()Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    .locals 3

    .line 193
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_str:Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->getText()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object v0

    .line 195
    .local v0, "rst":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;
    if-eqz v0, :cond_0

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->getText()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)V

    iput-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_str:Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    .line 197
    .end local v0    # "rst":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_str:Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 253
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getRow()I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getColumn()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public isVisible()Z
    .locals 3

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "visible":Z
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_vmlShape:Lcom/microsoft/schemas/vml/CTShape;

    if-eqz v1, :cond_1

    .line 113
    invoke-interface {v1}, Lcom/microsoft/schemas/vml/CTShape;->getStyle()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "style":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string/jumbo v2, "visibility:visible"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 116
    .end local v1    # "style":Ljava/lang/String;
    :cond_1
    return v0
.end method

.method public setAddress(II)V
    .locals 1
    .param p1, "row"    # I
    .param p2, "col"    # I

    .line 141
    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->setAddress(Lorg/apache/poi/ss/util/CellAddress;)V

    .line 142
    return-void
.end method

.method public setAddress(Lorg/apache/poi/ss/util/CellAddress;)V
    .locals 5
    .param p1, "address"    # Lorg/apache/poi/ss/util/CellAddress;

    .line 146
    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, "oldRef":Lorg/apache/poi/ss/util/CellAddress;
    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/util/CellAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    return-void

    .line 152
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->formatAsString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->setRef(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comments:Lorg/apache/poi/xssf/model/CommentsTable;

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    invoke-virtual {v1, v0, v2}, Lorg/apache/poi/xssf/model/CommentsTable;->referenceUpdated(Lorg/apache/poi/ss/util/CellAddress;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;)V

    .line 155
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_vmlShape:Lcom/microsoft/schemas/vml/CTShape;

    if-eqz v1, :cond_1

    .line 156
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/microsoft/schemas/vml/CTShape;->getClientDataArray(I)Lcom/microsoft/schemas/office/excel/CTClientData;

    move-result-object v1

    .line 157
    .local v1, "clientData":Lcom/microsoft/schemas/office/excel/CTClientData;
    new-instance v3, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lcom/microsoft/schemas/office/excel/CTClientData;->setRowArray(ILjava/math/BigInteger;)V

    .line 158
    new-instance v3, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lcom/microsoft/schemas/office/excel/CTClientData;->setColumnArray(ILjava/math/BigInteger;)V

    .line 160
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_vmlShape:Lcom/microsoft/schemas/vml/CTShape;

    invoke-static {v2}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->avoidXmlbeansCorruptPointer(Lcom/microsoft/schemas/vml/CTShape;)V

    .line 162
    .end local v1    # "clientData":Lcom/microsoft/schemas/office/excel/CTClientData;
    :cond_1
    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 3
    .param p1, "author"    # Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comments:Lorg/apache/poi/xssf/model/CommentsTable;

    invoke-virtual {v1, p1}, Lorg/apache/poi/xssf/model/CommentsTable;->findAuthor(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->setAuthorId(J)V

    .line 86
    return-void
.end method

.method public setColumn(I)V
    .locals 1
    .param p1, "col"    # I

    .line 173
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getRow()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->setAddress(II)V

    .line 174
    return-void
.end method

.method public setRow(I)V
    .locals 1
    .param p1, "row"    # I

    .line 185
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getColumn()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->setAddress(II)V

    .line 186
    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 215
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    invoke-direct {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->setString(Lorg/apache/poi/ss/usermodel/RichTextString;)V

    .line 216
    return-void
.end method

.method public setString(Lorg/apache/poi/ss/usermodel/RichTextString;)V
    .locals 2
    .param p1, "string"    # Lorg/apache/poi/ss/usermodel/RichTextString;

    .line 207
    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    if-eqz v0, :cond_0

    .line 210
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_str:Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    .line 211
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getCTRst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->setText(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)V

    .line 212
    return-void

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only XSSFRichTextString argument is supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 126
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_vmlShape:Lcom/microsoft/schemas/vml/CTShape;

    if-eqz v0, :cond_1

    .line 128
    if-eqz p1, :cond_0

    const-string v1, "position:absolute;visibility:visible"

    .local v1, "style":Ljava/lang/String;
    goto :goto_0

    .line 129
    .end local v1    # "style":Ljava/lang/String;
    :cond_0
    const-string v1, "position:absolute;visibility:hidden"

    .line 130
    .restart local v1    # "style":Ljava/lang/String;
    :goto_0
    invoke-interface {v0, v1}, Lcom/microsoft/schemas/vml/CTShape;->setStyle(Ljava/lang/String;)V

    .line 132
    .end local v1    # "style":Ljava/lang/String;
    :cond_1
    return-void
.end method
