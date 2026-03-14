.class Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;
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
    name = "FillDelegate"
.end annotation


# instance fields
.field final props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;


# direct methods
.method constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;)V
    .locals 0
    .param p1, "props"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    .line 1167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1168
    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    .line 1169
    return-void
.end method


# virtual methods
.method public addNewBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
    .locals 1

    .line 1263
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->addNewBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public addNewGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
    .locals 1

    .line 1238
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->addNewGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public addNewGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;
    .locals 1

    .line 1313
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->addNewGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;
    .locals 1

    .line 1188
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public addNewPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
    .locals 1

    .line 1288
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->addNewPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    .locals 1

    .line 1213
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
    .locals 1

    .line 1248
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public getGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
    .locals 1

    .line 1223
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->getGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public getGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;
    .locals 1

    .line 1298
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->getGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public getMatrixStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;
    .locals 1

    .line 1328
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;
    .locals 1

    .line 1173
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->getNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public getPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
    .locals 1

    .line 1273
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->getPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    .locals 1

    .line 1198
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public isLineStyle()Z
    .locals 1

    .line 1333
    const/4 v0, 0x0

    return v0
.end method

.method public isSetBlipFill()Z
    .locals 1

    .line 1253
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->isSetBlipFill()Z

    move-result v0

    return v0
.end method

.method public isSetGradFill()Z
    .locals 1

    .line 1228
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->isSetGradFill()Z

    move-result v0

    return v0
.end method

.method public isSetGrpFill()Z
    .locals 1

    .line 1303
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->isSetGrpFill()Z

    move-result v0

    return v0
.end method

.method public isSetMatrixStyle()Z
    .locals 1

    .line 1323
    const/4 v0, 0x0

    return v0
.end method

.method public isSetNoFill()Z
    .locals 1

    .line 1178
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->isSetNoFill()Z

    move-result v0

    return v0
.end method

.method public isSetPattFill()Z
    .locals 1

    .line 1278
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->isSetPattFill()Z

    move-result v0

    return v0
.end method

.method public isSetSolidFill()Z
    .locals 1

    .line 1203
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->isSetSolidFill()Z

    move-result v0

    return v0
.end method

.method public setBlipFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;)V
    .locals 1
    .param p1, "blipFill"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    .line 1258
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->setBlipFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;)V

    .line 1259
    return-void
.end method

.method public setGradFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;)V
    .locals 1
    .param p1, "gradFill"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    .line 1233
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->setGradFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;)V

    .line 1234
    return-void
.end method

.method public setGrpFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;)V
    .locals 1
    .param p1, "grpFill"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;

    .line 1308
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->setGrpFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;)V

    .line 1309
    return-void
.end method

.method public setNoFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;)V
    .locals 1
    .param p1, "noFill"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    .line 1183
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->setNoFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;)V

    .line 1184
    return-void
.end method

.method public setPattFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;)V
    .locals 1
    .param p1, "pattFill"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    .line 1283
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->setPattFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;)V

    .line 1284
    return-void
.end method

.method public setSolidFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;)V
    .locals 1
    .param p1, "solidFill"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    .line 1208
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->setSolidFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;)V

    .line 1209
    return-void
.end method

.method public unsetBlipFill()V
    .locals 1

    .line 1268
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->unsetBlipFill()V

    .line 1269
    return-void
.end method

.method public unsetGradFill()V
    .locals 1

    .line 1243
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->unsetGradFill()V

    .line 1244
    return-void
.end method

.method public unsetGrpFill()V
    .locals 1

    .line 1318
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->unsetGrpFill()V

    .line 1319
    return-void
.end method

.method public unsetNoFill()V
    .locals 1

    .line 1193
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->unsetNoFill()V

    .line 1194
    return-void
.end method

.method public unsetPattFill()V
    .locals 1

    .line 1293
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->unsetPattFill()V

    .line 1294
    return-void
.end method

.method public unsetSolidFill()V
    .locals 1

    .line 1218
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->unsetSolidFill()V

    .line 1219
    return-void
.end method
