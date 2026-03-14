.class public Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;
.super Ljava/lang/Object;
.source "XSSFCellBorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;
    }
.end annotation


# instance fields
.field private _indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

.field private _theme:Lorg/apache/poi/xssf/model/ThemesTable;

.field private border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;)V
    .locals 1
    .param p1, "border"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;Lorg/apache/poi/xssf/model/ThemesTable;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V
    .locals 0
    .param p1, "border"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;
    .param p2, "theme"    # Lorg/apache/poi/xssf/model/ThemesTable;
    .param p3, "colorMap"    # Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    .line 46
    invoke-direct {p0, p1, p3}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    .line 47
    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->_theme:Lorg/apache/poi/xssf/model/ThemesTable;

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V
    .locals 0
    .param p1, "border"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;
    .param p2, "colorMap"    # Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    .line 65
    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->_indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    .line 66
    return-void
.end method

.method private getBorder(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;
    .locals 1
    .param p1, "side"    # Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;

    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->getBorder(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    return-object v0
.end method

.method private getBorder(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;
    .locals 3
    .param p1, "side"    # Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;
    .param p2, "ensure"    # Z

    .line 167
    sget-object v0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$1;->$SwitchMap$org$apache$poi$xssf$usermodel$extensions$XSSFCellBorder$BorderSide:[I

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    move-object v0, v2

    .line 181
    .local v0, "borderPr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getLeft()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    .line 182
    if-eqz p2, :cond_4

    if-nez v0, :cond_4

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewLeft()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    goto :goto_0

    .line 167
    .end local v0    # "borderPr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;
    :cond_0
    move-object v0, v2

    .line 185
    .restart local v0    # "borderPr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No suitable side specified for the border"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    .end local v0    # "borderPr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;
    :cond_1
    move-object v0, v2

    .line 177
    .restart local v0    # "borderPr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getBottom()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    .line 178
    if-eqz p2, :cond_4

    if-nez v0, :cond_4

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewBottom()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    goto :goto_0

    .line 167
    .end local v0    # "borderPr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;
    :cond_2
    move-object v0, v2

    .line 173
    .restart local v0    # "borderPr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getRight()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    .line 174
    if-eqz p2, :cond_4

    if-nez v0, :cond_4

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewRight()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    goto :goto_0

    .line 169
    .end local v0    # "borderPr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;
    :cond_3
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getTop()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    .line 170
    .restart local v0    # "borderPr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;
    if-eqz p2, :cond_4

    if-nez v0, :cond_4

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewTop()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    .line 187
    :cond_4
    :goto_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 196
    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 198
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;

    .line 199
    .local v0, "cf":Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->getCTBorder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getBorderColor(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;)Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 4
    .param p1, "side"    # Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;

    .line 133
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->getBorder(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    .line 135
    .local v0, "borderPr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->isSetColor()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->getColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->_indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    .line 137
    .local v1, "clr":Lorg/apache/poi/xssf/usermodel/XSSFColor;
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->_theme:Lorg/apache/poi/xssf/model/ThemesTable;

    if-eqz v2, :cond_0

    .line 138
    invoke-virtual {v2, v1}, Lorg/apache/poi/xssf/model/ThemesTable;->inheritFromThemeAsRequired(Lorg/apache/poi/xssf/usermodel/XSSFColor;)V

    .line 140
    :cond_0
    return-object v1

    .line 143
    .end local v1    # "clr":Lorg/apache/poi/xssf/usermodel/XSSFColor;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getBorderStyle(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;)Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 4
    .param p1, "side"    # Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;

    .line 110
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->getBorder(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    .line 111
    .local v0, "ctBorder":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;
    if-nez v0, :cond_0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle;->NONE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->getStyle()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object v1

    .line 112
    .local v1, "border":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;
    :goto_0
    invoke-static {}, Lorg/apache/poi/ss/usermodel/BorderStyle;->values()[Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v2

    invoke-virtual {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    return-object v2
.end method

.method public getCTBorder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 99
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 192
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setBorderColor(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;Lorg/apache/poi/xssf/usermodel/XSSFColor;)V
    .locals 2
    .param p1, "side"    # Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;
    .param p2, "color"    # Lorg/apache/poi/xssf/usermodel/XSSFColor;

    .line 154
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->getBorder(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    .line 155
    .local v0, "borderPr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;
    if-nez p2, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->unsetColor()V

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    .line 158
    :goto_0
    return-void
.end method

.method public setBorderStyle(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 3
    .param p1, "side"    # Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;
    .param p2, "style"    # Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 123
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->getBorder(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/BorderStyle;->ordinal()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;)V

    .line 124
    return-void
.end method

.method public setThemesTable(Lorg/apache/poi/xssf/model/ThemesTable;)V
    .locals 0
    .param p1, "themes"    # Lorg/apache/poi/xssf/model/ThemesTable;

    .line 82
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->_theme:Lorg/apache/poi/xssf/model/ThemesTable;

    .line 83
    return-void
.end method
