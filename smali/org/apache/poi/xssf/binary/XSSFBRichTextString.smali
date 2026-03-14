.class Lorg/apache/poi/xssf/binary/XSSFBRichTextString;
.super Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
.source "XSSFBRichTextString.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final string:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBRichTextString;->string:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public applyFont(IILorg/apache/poi/ss/usermodel/Font;)V
    .locals 0
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "font"    # Lorg/apache/poi/ss/usermodel/Font;
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 50
    return-void
.end method

.method public applyFont(IIS)V
    .locals 0
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "fontIndex"    # S
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 44
    return-void
.end method

.method public applyFont(Lorg/apache/poi/ss/usermodel/Font;)V
    .locals 0
    .param p1, "font"    # Lorg/apache/poi/ss/usermodel/Font;
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 56
    return-void
.end method

.method public applyFont(S)V
    .locals 0
    .param p1, "fontIndex"    # S
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 90
    return-void
.end method

.method public clearFormatting()V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 62
    return-void
.end method

.method public getIndexOfFormattingRun(I)I
    .locals 1
    .param p1, "index"    # I
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBRichTextString;->string:Ljava/lang/String;

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBRichTextString;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public numFormattingRuns()I
    .locals 1
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 77
    const/4 v0, 0x0

    return v0
.end method
