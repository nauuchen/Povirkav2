.class public Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;
.super Ljava/lang/Object;
.source "XWPFDefaultRunStyle.java"


# instance fields
.field private rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;)V
    .locals 0
    .param p1, "rpr"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    .line 31
    return-void
.end method


# virtual methods
.method public getFontSize()I
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetSz()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getSz()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;->getVal()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0

    .line 40
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method protected getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    return-object v0
.end method
