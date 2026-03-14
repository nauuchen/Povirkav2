.class public Lorg/apache/poi/xwpf/usermodel/XWPFComment;
.super Ljava/lang/Object;
.source "XWPFComment.java"


# instance fields
.field protected author:Ljava/lang/String;

.field protected id:Ljava/lang/String;

.field protected text:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComment;Lorg/apache/poi/xwpf/usermodel/XWPFDocument;)V
    .locals 7
    .param p1, "comment"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComment;
    .param p2, "document"    # Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComment;->text:Ljava/lang/StringBuffer;

    .line 34
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComment;->getId()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComment;->id:Ljava/lang/String;

    .line 35
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComment;->getAuthor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComment;->author:Ljava/lang/String;

    .line 37
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComment;->getPArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v0

    .local v0, "arr$":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 38
    .local v3, "ctp":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;
    new-instance v4, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-direct {v4, v3, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 39
    .local v4, "p":Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComment;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    .end local v3    # "ctp":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;
    .end local v4    # "p":Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    .end local v0    # "arr$":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComment;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComment;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComment;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
