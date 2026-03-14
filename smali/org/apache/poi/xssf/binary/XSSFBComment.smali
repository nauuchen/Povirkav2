.class Lorg/apache/poi/xssf/binary/XSSFBComment;
.super Lorg/apache/poi/xssf/usermodel/XSSFComment;
.source "XSSFBComment.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final author:Ljava/lang/String;

.field private final cellAddress:Lorg/apache/poi/ss/util/CellAddress;

.field private final comment:Lorg/apache/poi/xssf/binary/XSSFBRichTextString;

.field private visible:Z


# direct methods
.method constructor <init>(Lorg/apache/poi/ss/util/CellAddress;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "cellAddress"    # Lorg/apache/poi/ss/util/CellAddress;
    .param p2, "author"    # Ljava/lang/String;
    .param p3, "comment"    # Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;-><init>(Lorg/apache/poi/xssf/model/CommentsTable;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;Lcom/microsoft/schemas/vml/CTShape;)V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/xssf/binary/XSSFBComment;->visible:Z

    .line 40
    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBComment;->cellAddress:Lorg/apache/poi/ss/util/CellAddress;

    .line 41
    iput-object p2, p0, Lorg/apache/poi/xssf/binary/XSSFBComment;->author:Ljava/lang/String;

    .line 42
    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBRichTextString;

    invoke-direct {v0, p3}, Lorg/apache/poi/xssf/binary/XSSFBRichTextString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBComment;->comment:Lorg/apache/poi/xssf/binary/XSSFBRichTextString;

    .line 43
    return-void
.end method


# virtual methods
.method public getAddress()Lorg/apache/poi/ss/util/CellAddress;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBComment;->cellAddress:Lorg/apache/poi/ss/util/CellAddress;

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBComment;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getClientAnchor()Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 1

    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public getColumn()I
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBComment;->cellAddress:Lorg/apache/poi/ss/util/CellAddress;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result v0

    return v0
.end method

.method public getRow()I
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBComment;->cellAddress:Lorg/apache/poi/ss/util/CellAddress;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getString()Lorg/apache/poi/ss/usermodel/RichTextString;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/apache/poi/xssf/binary/XSSFBComment;->getString()Lorg/apache/poi/xssf/binary/XSSFBRichTextString;

    move-result-object v0

    return-object v0
.end method

.method public getString()Lorg/apache/poi/xssf/binary/XSSFBRichTextString;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBComment;->comment:Lorg/apache/poi/xssf/binary/XSSFBRichTextString;

    return-object v0
.end method

.method public bridge synthetic getString()Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/apache/poi/xssf/binary/XSSFBComment;->getString()Lorg/apache/poi/xssf/binary/XSSFBRichTextString;

    move-result-object v0

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lorg/apache/poi/xssf/binary/XSSFBComment;->visible:Z

    return v0
.end method

.method public setAddress(II)V
    .locals 2
    .param p1, "row"    # I
    .param p2, "col"    # I

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "XSSFBComment is read only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAddress(Lorg/apache/poi/ss/util/CellAddress;)V
    .locals 2
    .param p1, "addr"    # Lorg/apache/poi/ss/util/CellAddress;

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "XSSFBComment is read only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 2
    .param p1, "author"    # Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "XSSFBComment is read only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setColumn(I)V
    .locals 2
    .param p1, "col"    # I

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "XSSFBComment is read only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRow(I)V
    .locals 2
    .param p1, "row"    # I

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "XSSFBComment is read only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setString(Lorg/apache/poi/ss/usermodel/RichTextString;)V
    .locals 2
    .param p1, "string"    # Lorg/apache/poi/ss/usermodel/RichTextString;

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "XSSFBComment is read only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "XSSFBComment is read only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
