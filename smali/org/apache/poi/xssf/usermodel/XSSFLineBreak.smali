.class Lorg/apache/poi/xssf/usermodel/XSSFLineBreak;
.super Lorg/apache/poi/xssf/usermodel/XSSFTextRun;
.source "XSSFLineBreak.java"


# instance fields
.field private final _brProps:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;


# direct methods
.method constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V
    .locals 0
    .param p1, "r"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
    .param p2, "p"    # Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;
    .param p3, "brProps"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    .line 29
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;)V

    .line 30
    iput-object p3, p0, Lorg/apache/poi/xssf/usermodel/XSSFLineBreak;->_brProps:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    .line 31
    return-void
.end method


# virtual methods
.method protected getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFLineBreak;->_brProps:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot change text of a line break, it is always \'\\n\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
