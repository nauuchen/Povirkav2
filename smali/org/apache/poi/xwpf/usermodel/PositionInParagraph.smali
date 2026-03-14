.class public Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;
.super Ljava/lang/Object;
.source "PositionInParagraph.java"


# instance fields
.field private posChar:I

.field private posRun:I

.field private posText:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->posRun:I

    iput v0, p0, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->posText:I

    iput v0, p0, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->posChar:I

    .line 31
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "posRun"    # I
    .param p2, "posText"    # I
    .param p3, "posChar"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->posRun:I

    iput v0, p0, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->posText:I

    iput v0, p0, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->posChar:I

    .line 34
    iput p1, p0, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->posRun:I

    .line 35
    iput p3, p0, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->posChar:I

    .line 36
    iput p2, p0, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->posText:I

    .line 37
    return-void
.end method


# virtual methods
.method public getChar()I
    .locals 1

    .line 56
    iget v0, p0, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->posChar:I

    return v0
.end method

.method public getRun()I
    .locals 1

    .line 40
    iget v0, p0, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->posRun:I

    return v0
.end method

.method public getText()I
    .locals 1

    .line 48
    iget v0, p0, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->posText:I

    return v0
.end method

.method public setChar(I)V
    .locals 0
    .param p1, "beginChar"    # I

    .line 60
    iput p1, p0, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->posChar:I

    .line 61
    return-void
.end method

.method public setRun(I)V
    .locals 0
    .param p1, "beginRun"    # I

    .line 44
    iput p1, p0, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->posRun:I

    .line 45
    return-void
.end method

.method public setText(I)V
    .locals 0
    .param p1, "beginText"    # I

    .line 52
    iput p1, p0, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->posText:I

    .line 53
    return-void
.end method
