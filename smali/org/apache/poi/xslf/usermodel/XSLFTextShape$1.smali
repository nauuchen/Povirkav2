.class Lorg/apache/poi/xslf/usermodel/XSLFTextShape$1;
.super Lorg/apache/poi/xslf/model/TextBodyPropertyFetcher;
.source "XSLFTextShape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getVerticalAlignment()Lorg/apache/poi/sl/usermodel/VerticalAlignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/model/TextBodyPropertyFetcher<",
        "Lorg/apache/poi/sl/usermodel/VerticalAlignment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextShape;


# direct methods
.method constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFTextShape;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$1;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    invoke-direct {p0}, Lorg/apache/poi/xslf/model/TextBodyPropertyFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;)Z
    .locals 3
    .param p1, "props"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    .line 225
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetAnchor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->getAnchor()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;->intValue()I

    move-result v0

    .line 227
    .local v0, "val":I
    invoke-static {}, Lorg/apache/poi/sl/usermodel/VerticalAlignment;->values()[Lorg/apache/poi/sl/usermodel/VerticalAlignment;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$1;->setValue(Ljava/lang/Object;)V

    .line 228
    const/4 v1, 0x1

    return v1

    .line 230
    .end local v0    # "val":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
