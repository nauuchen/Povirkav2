.class Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo$1;
.super Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;
.source "XSLFTextRun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->getXmlObject(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/model/CharacterPropertyFetcher<",
        "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;


# direct methods
.method constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;I)V
    .locals 0
    .param p2, "x0"    # I

    .line 778
    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo$1;->this$1:Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;

    invoke-direct {p0, p2}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;-><init>(I)V

    return-void
.end method


# virtual methods
.method public fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)Z
    .locals 2
    .param p1, "props"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    .line 781
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo$1;->this$1:Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->access$200(Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v0

    .line 782
    .local v0, "font":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
    if-nez v0, :cond_0

    .line 783
    return v1

    .line 785
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo$1;->setValue(Ljava/lang/Object;)V

    .line 786
    const/4 v1, 0x1

    return v1
.end method
