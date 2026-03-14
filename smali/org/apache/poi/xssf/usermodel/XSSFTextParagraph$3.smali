.class Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$3;
.super Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;
.source "XSSFTextParagraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getBulletFont()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;


# direct methods
.method constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V
    .locals 0
    .param p2, "x0"    # I

    .line 208
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$3;->this$0:Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;

    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;-><init>(I)V

    return-void
.end method


# virtual methods
.method public fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z
    .locals 1
    .param p1, "props"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    .line 210
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFont()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getTypeface()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$3;->setValue(Ljava/lang/Object;)V

    .line 212
    const/4 v0, 0x1

    return v0

    .line 214
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
