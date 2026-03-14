.class public Lorg/apache/poi/xwpf/usermodel/XWPFSDTContentCell;
.super Ljava/lang/Object;
.source "XWPFSDTContentCell.java"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/ISDTContent;


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentCell;Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;Lorg/apache/poi/xwpf/usermodel/IBody;)V
    .locals 7
    .param p1, "sdtContentCell"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentCell;
    .param p2, "xwpfTableRow"    # Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;
    .param p3, "part"    # Lorg/apache/poi/xwpf/usermodel/IBody;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContentCell;->text:Ljava/lang/String;

    .line 49
    if-nez p1, :cond_0

    .line 50
    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentCell;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v1

    .line 60
    .local v1, "cursor":Lorg/apache/xmlbeans/XmlCursor;
    const/4 v2, 0x0

    .line 62
    .local v2, "tcCnt":I
    const/4 v3, 0x0

    .line 63
    .local v3, "iBodyCnt":I
    const/4 v4, 0x1

    .line 65
    .local v4, "depth":I
    :goto_0
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->hasNextToken()Z

    move-result v5

    if-eqz v5, :cond_a

    if-lez v4, :cond_a

    .line 66
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->toNextToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    move-result-object v5

    .line 67
    .local v5, "t":Lorg/apache/xmlbeans/XmlCursor$TokenType;
    invoke-virtual {v5}, Lorg/apache/xmlbeans/XmlCursor$TokenType;->isText()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 68
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->getTextValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 69
    :cond_1
    const-string/jumbo v6, "tr"

    invoke-direct {p0, v1, v6}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContentCell;->isStartToken(Lorg/apache/xmlbeans/XmlCursor;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 70
    const/4 v2, 0x0

    .line 71
    const/4 v3, 0x0

    goto :goto_1

    .line 72
    :cond_2
    const-string/jumbo v6, "tc"

    invoke-direct {p0, v1, v6}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContentCell;->isStartToken(Lorg/apache/xmlbeans/XmlCursor;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 73
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "tcCnt":I
    .local v6, "tcCnt":I
    if-lez v2, :cond_3

    .line 74
    const-string v2, "\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_3
    const/4 v2, 0x0

    move v3, v2

    move v2, v6

    .end local v3    # "iBodyCnt":I
    .local v2, "iBodyCnt":I
    goto :goto_1

    .line 77
    .end local v6    # "tcCnt":I
    .local v2, "tcCnt":I
    .restart local v3    # "iBodyCnt":I
    :cond_4
    const-string v6, "p"

    invoke-direct {p0, v1, v6}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContentCell;->isStartToken(Lorg/apache/xmlbeans/XmlCursor;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string/jumbo v6, "tbl"

    invoke-direct {p0, v1, v6}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContentCell;->isStartToken(Lorg/apache/xmlbeans/XmlCursor;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "sdt"

    invoke-direct {p0, v1, v6}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContentCell;->isStartToken(Lorg/apache/xmlbeans/XmlCursor;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 80
    :cond_5
    if-lez v3, :cond_6

    .line 81
    const-string v6, "\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 85
    :cond_7
    :goto_1
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->isStart()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 86
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 87
    :cond_8
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->isEnd()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 88
    add-int/lit8 v4, v4, -0x1

    .line 90
    .end local v5    # "t":Lorg/apache/xmlbeans/XmlCursor$TokenType;
    :cond_9
    :goto_2
    goto :goto_0

    .line 91
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContentCell;->text:Ljava/lang/String;

    .line 92
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 93
    return-void
.end method

.method private isStartToken(Lorg/apache/xmlbeans/XmlCursor;Ljava/lang/String;)Z
    .locals 3
    .param p1, "cursor"    # Lorg/apache/xmlbeans/XmlCursor;
    .param p2, "string"    # Ljava/lang/String;

    .line 97
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->isStart()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 98
    return v1

    .line 100
    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    .line 101
    .local v0, "qName":Ljavax/xml/namespace/QName;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    const/4 v1, 0x1

    return v1

    .line 105
    :cond_1
    return v1
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContentCell;->text:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 114
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContentCell;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
