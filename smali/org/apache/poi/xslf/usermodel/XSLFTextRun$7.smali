.class Lorg/apache/poi/xslf/usermodel/XSLFTextRun$7;
.super Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;
.source "XSLFTextRun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getTextCap()Lorg/apache/poi/sl/usermodel/TextRun$TextCap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/model/CharacterPropertyFetcher<",
        "Lorg/apache/poi/sl/usermodel/TextRun$TextCap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextRun;


# direct methods
.method constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;I)V
    .locals 0
    .param p2, "x0"    # I

    .line 418
    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$7;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    invoke-direct {p0, p2}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;-><init>(I)V

    return-void
.end method


# virtual methods
.method public fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)Z
    .locals 3
    .param p1, "props"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    .line 421
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetCap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getCap()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextCapsType$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextCapsType$Enum;->intValue()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 423
    .local v0, "idx":I
    invoke-static {}, Lorg/apache/poi/sl/usermodel/TextRun$TextCap;->values()[Lorg/apache/poi/sl/usermodel/TextRun$TextCap;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$7;->setValue(Ljava/lang/Object;)V

    .line 424
    return v1

    .line 426
    .end local v0    # "idx":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
