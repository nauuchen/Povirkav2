.class public abstract Lorg/apache/poi/xwpf/model/XWPFParagraphDecorator;
.super Ljava/lang/Object;
.source "XWPFParagraphDecorator.java"


# instance fields
.field protected nextDecorator:Lorg/apache/poi/xwpf/model/XWPFParagraphDecorator;

.field protected paragraph:Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)V
    .locals 1
    .param p1, "paragraph"    # Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xwpf/model/XWPFParagraphDecorator;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Lorg/apache/poi/xwpf/model/XWPFParagraphDecorator;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Lorg/apache/poi/xwpf/model/XWPFParagraphDecorator;)V
    .locals 0
    .param p1, "paragraph"    # Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .param p2, "nextDecorator"    # Lorg/apache/poi/xwpf/model/XWPFParagraphDecorator;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/apache/poi/xwpf/model/XWPFParagraphDecorator;->paragraph:Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    .line 34
    iput-object p2, p0, Lorg/apache/poi/xwpf/model/XWPFParagraphDecorator;->nextDecorator:Lorg/apache/poi/xwpf/model/XWPFParagraphDecorator;

    .line 35
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/apache/poi/xwpf/model/XWPFParagraphDecorator;->nextDecorator:Lorg/apache/poi/xwpf/model/XWPFParagraphDecorator;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Lorg/apache/poi/xwpf/model/XWPFParagraphDecorator;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 41
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/model/XWPFParagraphDecorator;->paragraph:Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
