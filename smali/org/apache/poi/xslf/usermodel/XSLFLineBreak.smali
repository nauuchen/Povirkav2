.class Lorg/apache/poi/xslf/usermodel/XSLFLineBreak;
.super Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
.source "XSLFLineBreak.java"


# direct methods
.method protected constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;)V
    .locals 0
    .param p1, "r"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;
    .param p2, "p"    # Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    .line 26
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;)V

    .line 27
    return-void
.end method


# virtual methods
.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot change text of a line break, it is always \'\\n\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
