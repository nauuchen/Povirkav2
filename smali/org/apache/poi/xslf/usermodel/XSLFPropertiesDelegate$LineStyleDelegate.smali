.class Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$LineStyleDelegate;
.super Ljava/lang/Object;
.source "XSLFPropertiesDelegate.java"

# interfaces
.implements Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LineStyleDelegate"
.end annotation


# instance fields
.field final props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;


# direct methods
.method constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;)V
    .locals 0
    .param p1, "props"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    .line 1489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1490
    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$LineStyleDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    .line 1491
    return-void
.end method


# virtual methods
.method public addNewBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
    .locals 1

    .line 1583
    const/4 v0, 0x0

    return-object v0
.end method

.method public addNewGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
    .locals 1

    .line 1560
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$LineStyleDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public addNewGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;
    .locals 1

    .line 1629
    const/4 v0, 0x0

    return-object v0
.end method

.method public addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;
    .locals 1

    .line 1510
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$LineStyleDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public addNewPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
    .locals 1

    .line 1606
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$LineStyleDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    .locals 1

    .line 1535
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$LineStyleDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
    .locals 1

    .line 1570
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
    .locals 1

    .line 1545
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$LineStyleDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public getGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;
    .locals 1

    .line 1616
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMatrixStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;
    .locals 1

    .line 1642
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;
    .locals 1

    .line 1495
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$LineStyleDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public getPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
    .locals 1

    .line 1591
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$LineStyleDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    .locals 1

    .line 1520
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$LineStyleDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public isLineStyle()Z
    .locals 1

    .line 1647
    const/4 v0, 0x1

    return v0
.end method

.method public isSetBlipFill()Z
    .locals 1

    .line 1575
    const/4 v0, 0x0

    return v0
.end method

.method public isSetGradFill()Z
    .locals 1

    .line 1550
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$LineStyleDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetGradFill()Z

    move-result v0

    return v0
.end method

.method public isSetGrpFill()Z
    .locals 1

    .line 1621
    const/4 v0, 0x0

    return v0
.end method

.method public isSetMatrixStyle()Z
    .locals 1

    .line 1637
    const/4 v0, 0x0

    return v0
.end method

.method public isSetNoFill()Z
    .locals 1

    .line 1500
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$LineStyleDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetNoFill()Z

    move-result v0

    return v0
.end method

.method public isSetPattFill()Z
    .locals 1

    .line 1596
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$LineStyleDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetPattFill()Z

    move-result v0

    return v0
.end method

.method public isSetSolidFill()Z
    .locals 1

    .line 1525
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$LineStyleDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetSolidFill()Z

    move-result v0

    return v0
.end method

.method public setBlipFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;)V
    .locals 0
    .param p1, "blipFill"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    .line 1579
    return-void
.end method

.method public setGradFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;)V
    .locals 1
    .param p1, "gradFill"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    .line 1555
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$LineStyleDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setGradFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;)V

    .line 1556
    return-void
.end method

.method public setGrpFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;)V
    .locals 0
    .param p1, "grpFill"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;

    .line 1625
    return-void
.end method

.method public setNoFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;)V
    .locals 1
    .param p1, "noFill"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    .line 1505
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$LineStyleDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setNoFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;)V

    .line 1506
    return-void
.end method

.method public setPattFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;)V
    .locals 1
    .param p1, "pattFill"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    .line 1601
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$LineStyleDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setPattFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;)V

    .line 1602
    return-void
.end method

.method public setSolidFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;)V
    .locals 1
    .param p1, "solidFill"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    .line 1530
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$LineStyleDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setSolidFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;)V

    .line 1531
    return-void
.end method

.method public unsetBlipFill()V
    .locals 0

    .line 1587
    return-void
.end method

.method public unsetGradFill()V
    .locals 1

    .line 1565
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$LineStyleDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetGradFill()V

    .line 1566
    return-void
.end method

.method public unsetGrpFill()V
    .locals 0

    .line 1633
    return-void
.end method

.method public unsetNoFill()V
    .locals 1

    .line 1515
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$LineStyleDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetNoFill()V

    .line 1516
    return-void
.end method

.method public unsetPattFill()V
    .locals 1

    .line 1611
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$LineStyleDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetPattFill()V

    .line 1612
    return-void
.end method

.method public unsetSolidFill()V
    .locals 1

    .line 1540
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$LineStyleDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetSolidFill()V

    .line 1541
    return-void
.end method
