.class public Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;
.super Ljava/lang/Object;
.source "XSLFTableStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;
    }
.end annotation


# instance fields
.field private _tblStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;


# direct methods
.method constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;)V
    .locals 0
    .param p1, "style"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;->_tblStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;

    .line 37
    return-void
.end method


# virtual methods
.method public getStyleId()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;->_tblStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;->getStyleId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStyleName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;->_tblStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;->getStyleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTablePartStyle(Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
    .locals 2
    .param p1, "tps"    # Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;

    .line 55
    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$1;->$SwitchMap$org$apache$poi$xslf$usermodel$XSLFTableStyle$TablePartStyle:[I

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 58
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;->_tblStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;->getWholeTbl()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    move-result-object v0

    return-object v0

    .line 82
    :pswitch_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;->_tblStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;->getNwCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    move-result-object v0

    return-object v0

    .line 80
    :pswitch_1
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;->_tblStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;->getNeCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    move-result-object v0

    return-object v0

    .line 78
    :pswitch_2
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;->_tblStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;->getSwCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    move-result-object v0

    return-object v0

    .line 76
    :pswitch_3
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;->_tblStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;->getSeCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    move-result-object v0

    return-object v0

    .line 74
    :pswitch_4
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;->_tblStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;->getLastRow()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    move-result-object v0

    return-object v0

    .line 72
    :pswitch_5
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;->_tblStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;->getFirstRow()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    move-result-object v0

    return-object v0

    .line 70
    :pswitch_6
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;->_tblStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;->getLastCol()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    move-result-object v0

    return-object v0

    .line 68
    :pswitch_7
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;->_tblStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;->getFirstCol()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    move-result-object v0

    return-object v0

    .line 66
    :pswitch_8
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;->_tblStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;->getBand2V()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    move-result-object v0

    return-object v0

    .line 64
    :pswitch_9
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;->_tblStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;->getBand1V()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    move-result-object v0

    return-object v0

    .line 62
    :pswitch_a
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;->_tblStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;->getBand2H()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    move-result-object v0

    return-object v0

    .line 60
    :pswitch_b
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;->_tblStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;->getBand1H()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;->_tblStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;

    return-object v0
.end method
