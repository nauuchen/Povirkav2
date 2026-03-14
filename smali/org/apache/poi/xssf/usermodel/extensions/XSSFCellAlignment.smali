.class public Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;
.super Ljava/lang/Object;
.source "XSSFCellAlignment.java"


# instance fields
.field private cellAlignement:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;)V
    .locals 0
    .param p1, "cellAlignment"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;->cellAlignement:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;

    .line 40
    return-void
.end method


# virtual methods
.method public getCTCellAlignment()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 181
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;->cellAlignement:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;

    return-object v0
.end method

.method public getHorizontal()Lorg/apache/poi/ss/usermodel/HorizontalAlignment;
    .locals 3

    .line 72
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;->cellAlignement:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;->getHorizontal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STHorizontalAlignment$Enum;

    move-result-object v0

    .line 73
    .local v0, "align":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STHorizontalAlignment$Enum;
    if-nez v0, :cond_0

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STHorizontalAlignment;->GENERAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STHorizontalAlignment$Enum;

    .line 75
    :cond_0
    invoke-static {}, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->values()[Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    move-result-object v1

    invoke-virtual {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STHorizontalAlignment$Enum;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    return-object v1
.end method

.method public getIndent()J
    .locals 2

    .line 94
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;->cellAlignement:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;->getIndent()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShrinkToFit()Z
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;->cellAlignement:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;->getShrinkToFit()Z

    move-result v0

    return v0
.end method

.method public getTextRotation()J
    .locals 2

    .line 121
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;->cellAlignement:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;->getTextRotation()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVertical()Lorg/apache/poi/ss/usermodel/VerticalAlignment;
    .locals 3

    .line 49
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;->cellAlignement:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;->getVertical()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignment$Enum;

    move-result-object v0

    .line 50
    .local v0, "align":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignment$Enum;
    if-nez v0, :cond_0

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignment;->BOTTOM:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignment$Enum;

    .line 52
    :cond_0
    invoke-static {}, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->values()[Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    move-result-object v1

    invoke-virtual {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignment$Enum;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    return-object v1
.end method

.method public getWrapText()Z
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;->cellAlignement:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;->getWrapText()Z

    move-result v0

    return v0
.end method

.method public setHorizontal(Lorg/apache/poi/ss/usermodel/HorizontalAlignment;)V
    .locals 2
    .param p1, "align"    # Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    .line 85
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;->cellAlignement:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STHorizontalAlignment$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STHorizontalAlignment$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;->setHorizontal(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STHorizontalAlignment$Enum;)V

    .line 86
    return-void
.end method

.method public setIndent(J)V
    .locals 1
    .param p1, "indent"    # J

    .line 103
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;->cellAlignement:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;

    invoke-interface {v0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;->setIndent(J)V

    .line 104
    return-void
.end method

.method public setShrinkToFit(Z)V
    .locals 1
    .param p1, "shrink"    # Z

    .line 173
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;->cellAlignement:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;->setShrinkToFit(Z)V

    .line 174
    return-void
.end method

.method public setTextRotation(J)V
    .locals 4
    .param p1, "rotation"    # J

    .line 144
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const-wide/16 v0, -0x5a

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 145
    const-wide/16 v0, 0x5a

    const-wide/16 v2, -0x1

    mul-long v2, v2, p1

    add-long p1, v2, v0

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;->cellAlignement:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;

    invoke-interface {v0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;->setTextRotation(J)V

    .line 148
    return-void
.end method

.method public setVertical(Lorg/apache/poi/ss/usermodel/VerticalAlignment;)V
    .locals 2
    .param p1, "align"    # Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    .line 62
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;->cellAlignement:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignment$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignment$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;->setVertical(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignment$Enum;)V

    .line 63
    return-void
.end method

.method public setWrapText(Z)V
    .locals 1
    .param p1, "wrapped"    # Z

    .line 165
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellAlignment;->cellAlignement:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;->setWrapText(Z)V

    .line 166
    return-void
.end method
