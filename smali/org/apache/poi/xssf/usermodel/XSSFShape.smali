.class public abstract Lorg/apache/poi/xssf/usermodel/XSSFShape;
.super Ljava/lang/Object;
.source "XSSFShape.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Shape;


# static fields
.field public static final EMU_PER_PIXEL:I = 0x2535
    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.19"
    .end annotation
.end field

.field public static final EMU_PER_POINT:I = 0x319c
    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.19"
    .end annotation
.end field

.field public static final PIXEL_DPI:I = 0x60
    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.19"
    .end annotation
.end field

.field public static final POINT_DPI:I = 0x48
    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.19"
    .end annotation
.end field


# instance fields
.field protected anchor:Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

.field protected drawing:Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

.field protected parent:Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAnchor()Lorg/apache/poi/ss/usermodel/ChildAnchor;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFShape;->getAnchor()Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    move-result-object v0

    return-object v0
.end method

.method public getAnchor()Lorg/apache/poi/xssf/usermodel/XSSFAnchor;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFShape;->anchor:Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    return-object v0
.end method

.method public getDrawing()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFShape;->drawing:Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    return-object v0
.end method

.method public bridge synthetic getParent()Lorg/apache/poi/ss/usermodel/Shape;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFShape;->getParent()Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFShape;->parent:Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;

    return-object v0
.end method

.method protected abstract getShapeProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
.end method

.method public isNoFill()Z
    .locals 1

    .line 111
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFShape;->getShapeProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetNoFill()Z

    move-result v0

    return v0
.end method

.method public setFillColor(III)V
    .locals 6
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I

    .line 126
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFShape;->getShapeProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v0

    .line 127
    .local v0, "props":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetSolidFill()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v1

    .line 128
    .local v1, "fill":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    :goto_0
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object v2

    .line 129
    .local v2, "rgb":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;
    const/4 v3, 0x3

    new-array v3, v3, [B

    const/4 v4, 0x0

    int-to-byte v5, p1

    aput-byte v5, v3, v4

    const/4 v4, 0x1

    int-to-byte v5, p2

    aput-byte v5, v3, v4

    const/4 v4, 0x2

    int-to-byte v5, p3

    aput-byte v5, v3, v4

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;->setVal([B)V

    .line 130
    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->setSrgbClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;)V

    .line 131
    return-void
.end method

.method public setLineStyle(I)V
    .locals 4
    .param p1, "lineStyle"    # I

    .line 160
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFShape;->getShapeProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v0

    .line 161
    .local v0, "props":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetLn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getLn()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewLn()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v1

    .line 162
    .local v1, "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    :goto_0
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;

    move-result-object v2

    .line 163
    .local v2, "dashStyle":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;
    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;)V

    .line 164
    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setPrstDash(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;)V

    .line 165
    return-void
.end method

.method public setLineStyleColor(III)V
    .locals 7
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I

    .line 135
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFShape;->getShapeProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v0

    .line 136
    .local v0, "props":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetLn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getLn()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewLn()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v1

    .line 137
    .local v1, "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    :goto_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetSolidFill()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v2

    .line 138
    .local v2, "fill":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    :goto_1
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object v3

    .line 139
    .local v3, "rgb":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;
    const/4 v4, 0x3

    new-array v4, v4, [B

    const/4 v5, 0x0

    int-to-byte v6, p1

    aput-byte v6, v4, v5

    const/4 v5, 0x1

    int-to-byte v6, p2

    aput-byte v6, v4, v5

    const/4 v5, 0x2

    int-to-byte v6, p3

    aput-byte v6, v4, v5

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;->setVal([B)V

    .line 140
    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->setSrgbClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;)V

    .line 141
    return-void
.end method

.method public setLineWidth(D)V
    .locals 4
    .param p1, "lineWidth"    # D

    .line 149
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFShape;->getShapeProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v0

    .line 150
    .local v0, "props":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetLn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getLn()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewLn()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v1

    .line 151
    .local v1, "ln":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    :goto_0
    const-wide v2, 0x40c8ce0000000000L    # 12700.0

    mul-double v2, v2, p1

    double-to-int v2, v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setW(I)V

    .line 152
    return-void
.end method

.method public setNoFill(Z)V
    .locals 2
    .param p1, "noFill"    # Z

    .line 116
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFShape;->getShapeProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v0

    .line 118
    .local v0, "props":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetPattFill()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->unsetPattFill()V

    .line 119
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetSolidFill()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->unsetSolidFill()V

    .line 121
    :cond_1
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setNoFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;)V

    .line 122
    return-void
.end method
