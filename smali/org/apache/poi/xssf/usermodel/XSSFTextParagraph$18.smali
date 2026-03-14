.class Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$18;
.super Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;
.source "XSSFTextParagraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getBulletAutoNumberScheme()Lorg/apache/poi/xssf/usermodel/ListAutoNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher<",
        "Lorg/apache/poi/xssf/usermodel/ListAutoNumber;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;


# direct methods
.method constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V
    .locals 0
    .param p2, "x0"    # I

    .line 838
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$18;->this$0:Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;

    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;-><init>(I)V

    return-void
.end method


# virtual methods
.method public fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z
    .locals 3
    .param p1, "props"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    .line 840
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuAutoNum()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    invoke-static {}, Lorg/apache/poi/xssf/usermodel/ListAutoNumber;->values()[Lorg/apache/poi/xssf/usermodel/ListAutoNumber;

    move-result-object v0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuAutoNum()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;->getType()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAutonumberScheme$Enum;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAutonumberScheme$Enum;->intValue()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$18;->setValue(Ljava/lang/Object;)V

    .line 842
    return v2

    .line 844
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
