.class Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$StyleMatrixDelegate;
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
    name = "StyleMatrixDelegate"
.end annotation


# instance fields
.field final props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;


# direct methods
.method constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;)V
    .locals 0
    .param p1, "props"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    .line 1014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1015
    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$StyleMatrixDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    .line 1016
    return-void
.end method


# virtual methods
.method public addNewBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
    .locals 1

    .line 1096
    const/4 v0, 0x0

    return-object v0
.end method

.method public addNewGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
    .locals 1

    .line 1075
    const/4 v0, 0x0

    return-object v0
.end method

.method public addNewGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;
    .locals 1

    .line 1138
    const/4 v0, 0x0

    return-object v0
.end method

.method public addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;
    .locals 1

    .line 1033
    const/4 v0, 0x0

    return-object v0
.end method

.method public addNewPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
    .locals 1

    .line 1117
    const/4 v0, 0x0

    return-object v0
.end method

.method public addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    .locals 1

    .line 1054
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
    .locals 1

    .line 1083
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
    .locals 1

    .line 1062
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;
    .locals 1

    .line 1125
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMatrixStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;
    .locals 1

    .line 1152
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$StyleMatrixDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    return-object v0
.end method

.method public getNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;
    .locals 1

    .line 1020
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
    .locals 1

    .line 1104
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    .locals 1

    .line 1041
    const/4 v0, 0x0

    return-object v0
.end method

.method public isLineStyle()Z
    .locals 3

    .line 1157
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$StyleMatrixDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    .line 1158
    .local v0, "cur":Lorg/apache/xmlbeans/XmlCursor;
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    .line 1159
    .local v1, "name":Ljava/lang/String;
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 1160
    const-string v2, "lnRef"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public isSetBlipFill()Z
    .locals 1

    .line 1088
    const/4 v0, 0x0

    return v0
.end method

.method public isSetGradFill()Z
    .locals 1

    .line 1067
    const/4 v0, 0x0

    return v0
.end method

.method public isSetGrpFill()Z
    .locals 1

    .line 1130
    const/4 v0, 0x0

    return v0
.end method

.method public isSetMatrixStyle()Z
    .locals 1

    .line 1147
    const/4 v0, 0x1

    return v0
.end method

.method public isSetNoFill()Z
    .locals 1

    .line 1025
    const/4 v0, 0x0

    return v0
.end method

.method public isSetPattFill()Z
    .locals 1

    .line 1109
    const/4 v0, 0x0

    return v0
.end method

.method public isSetSolidFill()Z
    .locals 1

    .line 1046
    const/4 v0, 0x0

    return v0
.end method

.method public setBlipFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;)V
    .locals 0
    .param p1, "blipFill"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    .line 1092
    return-void
.end method

.method public setGradFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;)V
    .locals 0
    .param p1, "gradFill"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    .line 1071
    return-void
.end method

.method public setGrpFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;)V
    .locals 0
    .param p1, "grpFill"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;

    .line 1134
    return-void
.end method

.method public setNoFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;)V
    .locals 0
    .param p1, "noFill"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    .line 1029
    return-void
.end method

.method public setPattFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;)V
    .locals 0
    .param p1, "pattFill"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    .line 1113
    return-void
.end method

.method public setSolidFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;)V
    .locals 0
    .param p1, "solidFill"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    .line 1050
    return-void
.end method

.method public unsetBlipFill()V
    .locals 0

    .line 1100
    return-void
.end method

.method public unsetGradFill()V
    .locals 0

    .line 1079
    return-void
.end method

.method public unsetGrpFill()V
    .locals 0

    .line 1142
    return-void
.end method

.method public unsetNoFill()V
    .locals 0

    .line 1037
    return-void
.end method

.method public unsetPattFill()V
    .locals 0

    .line 1121
    return-void
.end method

.method public unsetSolidFill()V
    .locals 0

    .line 1058
    return-void
.end method
