.class Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$7;
.super Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;
.source "XSLFTextParagraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getAutoNumberingScheme()Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher<",
        "Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;


# direct methods
.method constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;I)V
    .locals 0
    .param p2, "x0"    # I

    .line 365
    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$7;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-direct {p0, p2}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;-><init>(I)V

    return-void
.end method


# virtual methods
.method public fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z
    .locals 2
    .param p1, "props"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    .line 367
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuAutoNum()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuAutoNum()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;->getType()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAutonumberScheme$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAutonumberScheme$Enum;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->forOoxmlID(I)Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-result-object v0

    .line 369
    .local v0, "ans":Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;
    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$7;->setValue(Ljava/lang/Object;)V

    .line 371
    const/4 v1, 0x1

    return v1

    .line 374
    .end local v0    # "ans":Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
