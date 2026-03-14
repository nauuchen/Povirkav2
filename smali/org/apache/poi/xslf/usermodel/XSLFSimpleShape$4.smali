.class Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$4;
.super Lorg/apache/poi/xslf/model/PropertyFetcher;
.source "XSLFSimpleShape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLineCompound()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/model/PropertyFetcher<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;


# direct methods
.method constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$4;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    invoke-direct {p0}, Lorg/apache/poi/xslf/model/PropertyFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public fetch(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z
    .locals 3
    .param p1, "shape"    # Lorg/apache/poi/xslf/usermodel/XSLFShape;

    .line 495
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->access$000(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v1

    .line 496
    .local v1, "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    if-eqz v1, :cond_0

    .line 497
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getCmpd()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;

    move-result-object v2

    .line 498
    .local v2, "stCmpd":Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;
    if-eqz v2, :cond_0

    .line 499
    invoke-virtual {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$4;->setValue(Ljava/lang/Object;)V

    .line 500
    const/4 v0, 0x1

    return v0

    .line 503
    .end local v2    # "stCmpd":Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;
    :cond_0
    return v0
.end method
