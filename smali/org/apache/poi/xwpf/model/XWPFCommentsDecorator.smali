.class public Lorg/apache/poi/xwpf/model/XWPFCommentsDecorator;
.super Lorg/apache/poi/xwpf/model/XWPFParagraphDecorator;
.source "XWPFCommentsDecorator.java"


# instance fields
.field private commentText:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xwpf/model/XWPFParagraphDecorator;)V
    .locals 1
    .param p1, "nextDecorator"    # Lorg/apache/poi/xwpf/model/XWPFParagraphDecorator;

    .line 33
    iget-object v0, p1, Lorg/apache/poi/xwpf/model/XWPFParagraphDecorator;->paragraph:Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/xwpf/model/XWPFCommentsDecorator;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Lorg/apache/poi/xwpf/model/XWPFParagraphDecorator;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Lorg/apache/poi/xwpf/model/XWPFParagraphDecorator;)V
    .locals 8
    .param p1, "paragraph"    # Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .param p2, "nextDecorator"    # Lorg/apache/poi/xwpf/model/XWPFParagraphDecorator;

    .line 37
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xwpf/model/XWPFParagraphDecorator;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Lorg/apache/poi/xwpf/model/XWPFParagraphDecorator;)V

    .line 40
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/model/XWPFCommentsDecorator;->commentText:Ljava/lang/StringBuffer;

    .line 42
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getCommentRangeStartArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    move-result-object v0

    .local v0, "arr$":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 43
    .local v3, "anchor":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object v4

    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;->getId()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getCommentByID(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFComment;

    move-result-object v4

    move-object v5, v4

    .local v5, "comment":Lorg/apache/poi/xwpf/usermodel/XWPFComment;
    if-eqz v4, :cond_0

    .line 44
    iget-object v4, p0, Lorg/apache/poi/xwpf/model/XWPFCommentsDecorator;->commentText:Ljava/lang/StringBuffer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tComment by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lorg/apache/poi/xwpf/usermodel/XWPFComment;->getAuthor()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lorg/apache/poi/xwpf/usermodel/XWPFComment;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    .end local v3    # "anchor":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    .end local v0    # "arr$":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    .end local v5    # "comment":Lorg/apache/poi/xwpf/usermodel/XWPFComment;
    :cond_1
    return-void
.end method


# virtual methods
.method public getCommentText()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/apache/poi/xwpf/model/XWPFCommentsDecorator;->commentText:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/apache/poi/xwpf/model/XWPFParagraphDecorator;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xwpf/model/XWPFCommentsDecorator;->commentText:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
