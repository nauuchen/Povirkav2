.class Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$2;
.super Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;
.source "XSSFTextParagraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getTextFontAlign()Lorg/apache/poi/xssf/usermodel/TextFontAlign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher<",
        "Lorg/apache/poi/xssf/usermodel/TextFontAlign;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;


# direct methods
.method constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V
    .locals 0
    .param p2, "x0"    # I

    .line 173
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$2;->this$0:Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;

    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;-><init>(I)V

    return-void
.end method


# virtual methods
.method public fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z
    .locals 3
    .param p1, "props"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    .line 175
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetFontAlgn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-static {}, Lorg/apache/poi/xssf/usermodel/TextFontAlign;->values()[Lorg/apache/poi/xssf/usermodel/TextFontAlign;

    move-result-object v0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getFontAlgn()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;->intValue()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 177
    .local v0, "val":Lorg/apache/poi/xssf/usermodel/TextFontAlign;
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$2;->setValue(Ljava/lang/Object;)V

    .line 178
    return v2

    .line 180
    .end local v0    # "val":Lorg/apache/poi/xssf/usermodel/TextFontAlign;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
