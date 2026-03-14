.class public Lorg/apache/poi/xwpf/usermodel/TextSegement;
.super Ljava/lang/Object;
.source "TextSegement.java"


# instance fields
.field private beginPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

.field private endPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    invoke-direct {v0}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextSegement;->beginPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    .line 29
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    invoke-direct {v0}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextSegement;->endPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    .line 30
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 2
    .param p1, "beginRun"    # I
    .param p2, "endRun"    # I
    .param p3, "beginText"    # I
    .param p4, "endText"    # I
    .param p5, "beginChar"    # I
    .param p6, "endChar"    # I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    invoke-direct {v0, p1, p3, p5}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;-><init>(III)V

    .line 34
    .local v0, "beginPos":Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;
    new-instance v1, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    invoke-direct {v1, p2, p4, p6}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;-><init>(III)V

    .line 35
    .local v1, "endPos":Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;
    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextSegement;->beginPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    .line 36
    iput-object v1, p0, Lorg/apache/poi/xwpf/usermodel/TextSegement;->endPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;)V
    .locals 0
    .param p1, "beginPos"    # Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;
    .param p2, "endPos"    # Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/TextSegement;->beginPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    .line 41
    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/TextSegement;->endPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    .line 42
    return-void
.end method


# virtual methods
.method public getBeginChar()I
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextSegement;->beginPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->getChar()I

    move-result v0

    return v0
.end method

.method public getBeginPos()Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextSegement;->beginPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    return-object v0
.end method

.method public getBeginRun()I
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextSegement;->beginPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->getRun()I

    move-result v0

    return v0
.end method

.method public getBeginText()I
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextSegement;->beginPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->getText()I

    move-result v0

    return v0
.end method

.method public getEndChar()I
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextSegement;->endPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->getChar()I

    move-result v0

    return v0
.end method

.method public getEndPos()Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextSegement;->endPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    return-object v0
.end method

.method public getEndRun()I
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextSegement;->endPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->getRun()I

    move-result v0

    return v0
.end method

.method public getEndText()I
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextSegement;->endPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->getText()I

    move-result v0

    return v0
.end method

.method public setBeginChar(I)V
    .locals 1
    .param p1, "beginChar"    # I

    .line 73
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextSegement;->beginPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->setChar(I)V

    .line 74
    return-void
.end method

.method public setBeginRun(I)V
    .locals 1
    .param p1, "beginRun"    # I

    .line 57
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextSegement;->beginPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->setRun(I)V

    .line 58
    return-void
.end method

.method public setBeginText(I)V
    .locals 1
    .param p1, "beginText"    # I

    .line 65
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextSegement;->beginPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->setText(I)V

    .line 66
    return-void
.end method

.method public setEndChar(I)V
    .locals 1
    .param p1, "endChar"    # I

    .line 97
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextSegement;->endPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->setChar(I)V

    .line 98
    return-void
.end method

.method public setEndRun(I)V
    .locals 1
    .param p1, "endRun"    # I

    .line 81
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextSegement;->endPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->setRun(I)V

    .line 82
    return-void
.end method

.method public setEndText(I)V
    .locals 1
    .param p1, "endText"    # I

    .line 89
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextSegement;->endPos:Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->setText(I)V

    .line 90
    return-void
.end method
