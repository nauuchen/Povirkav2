.class Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$5;
.super Lorg/apache/poi/xslf/model/PropertyFetcher;
.source "XSLFSimpleShape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLineDash()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/model/PropertyFetcher<",
        "Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;


# direct methods
.method constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$5;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    invoke-direct {p0}, Lorg/apache/poi/xslf/model/PropertyFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public fetch(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z
    .locals 3
    .param p1, "shape"    # Lorg/apache/poi/xslf/usermodel/XSLFShape;

    .line 558
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->access$000(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v1

    .line 559
    .local v1, "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetPrstDash()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 563
    :cond_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getPrstDash()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->fromOoxmlId(I)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$5;->setValue(Ljava/lang/Object;)V

    .line 564
    const/4 v0, 0x1

    return v0

    .line 560
    :cond_1
    :goto_0
    return v0
.end method
