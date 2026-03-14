.class public Lorg/apache/poi/xslf/usermodel/DrawingParagraph;
.super Ljava/lang/Object;
.source "DrawingParagraph.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Removal;
    version = "3.18"
.end annotation


# instance fields
.field private final p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;)V
    .locals 0
    .param p1, "p"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/DrawingParagraph;->p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    .line 36
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .locals 5

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .local v0, "text":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/DrawingParagraph;->p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v1

    .line 42
    .local v1, "c":Lorg/apache/xmlbeans/XmlCursor;
    const-string v2, "./*"

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    .line 43
    :goto_0
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 44
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    .line 45
    .local v2, "o":Lorg/apache/xmlbeans/XmlObject;
    instance-of v3, v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    if-eqz v3, :cond_0

    .line 46
    move-object v3, v2

    check-cast v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    .line 47
    .local v3, "txrun":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->getT()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v3    # "txrun":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
    goto :goto_1

    .line 48
    :cond_0
    instance-of v3, v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    if-eqz v3, :cond_1

    .line 49
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 48
    :cond_1
    :goto_1
    nop

    .line 51
    .end local v2    # "o":Lorg/apache/xmlbeans/XmlObject;
    :goto_2
    goto :goto_0

    .line 53
    :cond_2
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 55
    return-object v0
.end method
