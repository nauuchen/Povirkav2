.class Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;
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
    name = "FillPartDelegate"
.end annotation


# instance fields
.field final props:Lorg/apache/xmlbeans/XmlObject;


# direct methods
.method constructor <init>(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 0
    .param p1, "props"    # Lorg/apache/xmlbeans/XmlObject;

    .line 1340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1341
    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;->props:Lorg/apache/xmlbeans/XmlObject;

    .line 1342
    return-void
.end method


# virtual methods
.method public addNewBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
    .locals 1

    .line 1422
    const/4 v0, 0x0

    return-object v0
.end method

.method public addNewGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
    .locals 1

    .line 1401
    const/4 v0, 0x0

    return-object v0
.end method

.method public addNewGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;
    .locals 1

    .line 1464
    const/4 v0, 0x0

    return-object v0
.end method

.method public addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;
    .locals 1

    .line 1359
    const/4 v0, 0x0

    return-object v0
.end method

.method public addNewPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
    .locals 1

    .line 1443
    const/4 v0, 0x0

    return-object v0
.end method

.method public addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    .locals 1

    .line 1380
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
    .locals 1

    .line 1409
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;->isSetBlipFill()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;->props:Lorg/apache/xmlbeans/XmlObject;

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
    .locals 1

    .line 1388
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;->isSetGradFill()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;->props:Lorg/apache/xmlbeans/XmlObject;

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;
    .locals 1

    .line 1451
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;->isSetGrpFill()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;->props:Lorg/apache/xmlbeans/XmlObject;

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMatrixStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;
    .locals 1

    .line 1477
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;
    .locals 1

    .line 1346
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;->isSetNoFill()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;->props:Lorg/apache/xmlbeans/XmlObject;

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
    .locals 1

    .line 1430
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;->isSetPattFill()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;->props:Lorg/apache/xmlbeans/XmlObject;

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    .locals 1

    .line 1367
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;->isSetSolidFill()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;->props:Lorg/apache/xmlbeans/XmlObject;

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isLineStyle()Z
    .locals 1

    .line 1482
    const/4 v0, 0x0

    return v0
.end method

.method public isSetBlipFill()Z
    .locals 1

    .line 1414
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;->props:Lorg/apache/xmlbeans/XmlObject;

    instance-of v0, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    return v0
.end method

.method public isSetGradFill()Z
    .locals 1

    .line 1393
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;->props:Lorg/apache/xmlbeans/XmlObject;

    instance-of v0, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    return v0
.end method

.method public isSetGrpFill()Z
    .locals 1

    .line 1456
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;->props:Lorg/apache/xmlbeans/XmlObject;

    instance-of v0, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;

    return v0
.end method

.method public isSetMatrixStyle()Z
    .locals 1

    .line 1472
    const/4 v0, 0x0

    return v0
.end method

.method public isSetNoFill()Z
    .locals 1

    .line 1351
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;->props:Lorg/apache/xmlbeans/XmlObject;

    instance-of v0, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    return v0
.end method

.method public isSetPattFill()Z
    .locals 1

    .line 1435
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;->props:Lorg/apache/xmlbeans/XmlObject;

    instance-of v0, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    return v0
.end method

.method public isSetSolidFill()Z
    .locals 1

    .line 1372
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;->props:Lorg/apache/xmlbeans/XmlObject;

    instance-of v0, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    return v0
.end method

.method public setBlipFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;)V
    .locals 0
    .param p1, "blipFill"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    .line 1418
    return-void
.end method

.method public setGradFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;)V
    .locals 0
    .param p1, "gradFill"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    .line 1397
    return-void
.end method

.method public setGrpFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;)V
    .locals 0
    .param p1, "grpFill"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;

    .line 1460
    return-void
.end method

.method public setNoFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;)V
    .locals 0
    .param p1, "noFill"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    .line 1355
    return-void
.end method

.method public setPattFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;)V
    .locals 0
    .param p1, "pattFill"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    .line 1439
    return-void
.end method

.method public setSolidFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;)V
    .locals 0
    .param p1, "solidFill"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    .line 1376
    return-void
.end method

.method public unsetBlipFill()V
    .locals 0

    .line 1426
    return-void
.end method

.method public unsetGradFill()V
    .locals 0

    .line 1405
    return-void
.end method

.method public unsetGrpFill()V
    .locals 0

    .line 1468
    return-void
.end method

.method public unsetNoFill()V
    .locals 0

    .line 1363
    return-void
.end method

.method public unsetPattFill()V
    .locals 0

    .line 1447
    return-void
.end method

.method public unsetSolidFill()V
    .locals 0

    .line 1384
    return-void
.end method
