.class public abstract Lorg/apache/poi/xdgf/usermodel/XDGFSheet;
.super Ljava/lang/Object;
.source "XDGFSheet.java"


# instance fields
.field protected _cells:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xdgf/usermodel/XDGFCell;",
            ">;"
        }
    .end annotation
.end field

.field protected _character:Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;

.field protected _document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

.field protected _geometry:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;",
            ">;"
        }
    .end annotation
.end field

.field protected _sections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;",
            ">;"
        }
    .end annotation
.end field

.field protected _sheet:Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V
    .locals 8
    .param p1, "sheet"    # Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;
    .param p2, "document"    # Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_sections:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_geometry:Ljava/util/SortedMap;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_character:Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;

    .line 59
    :try_start_0
    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_sheet:Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;

    .line 60
    iput-object p2, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    .line 62
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;->getCellArray()[Lcom/microsoft/schemas/office/visio/x2012/main/CellType;

    move-result-object v0

    .local v0, "arr$":[Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 63
    .local v3, "cell":Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    iget-object v4, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    invoke-interface {v3}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getN()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 66
    iget-object v4, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    invoke-interface {v3}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getN()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/apache/poi/xdgf/usermodel/XDGFCell;

    invoke-direct {v6, v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;-><init>(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    nop

    .end local v3    # "cell":Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    .restart local v3    # "cell":Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    :cond_0
    new-instance v4, Lorg/apache/poi/POIXMLException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected duplicate cell "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getN()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    .end local p1    # "sheet":Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;
    .end local p2    # "document":Lorg/apache/poi/xdgf/usermodel/XDGFDocument;
    throw v4

    .line 74
    .end local v0    # "arr$":[Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    .end local v3    # "cell":Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    .restart local p1    # "sheet":Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;
    .restart local p2    # "document":Lorg/apache/poi/xdgf/usermodel/XDGFDocument;
    :cond_1
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;->getSectionArray()[Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;

    move-result-object v0

    .local v0, "arr$":[Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;
    array-length v1, v0

    .restart local v1    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 75
    .local v3, "section":Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;
    invoke-interface {v3}, Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;->getN()Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "name":Ljava/lang/String;
    const-string v5, "Geometry"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 77
    iget-object v5, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_geometry:Ljava/util/SortedMap;

    invoke-interface {v3}, Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;->getIX()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-instance v7, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

    invoke-direct {v7, v3, p0}, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;-><init>(Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)V

    invoke-interface {v5, v6, v7}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 78
    :cond_2
    const-string v5, "Character"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 79
    new-instance v5, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;

    invoke-direct {v5, v3, p0}, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;-><init>(Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)V

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_character:Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;

    goto :goto_2

    .line 81
    :cond_3
    iget-object v5, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_sections:Ljava/util/Map;

    invoke-static {v3, p0}, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;->load(Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/poi/POIXMLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v3    # "section":Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;
    .end local v4    # "name":Ljava/lang/String;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 86
    .end local v0    # "arr$":[Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_4
    nop

    .line 87
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Lorg/apache/poi/POIXMLException;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->wrap(Ljava/lang/String;Lorg/apache/poi/POIXMLException;)Lorg/apache/poi/POIXMLException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public getCell(Ljava/lang/String;)Lorg/apache/poi/xdgf/usermodel/XDGFCell;
    .locals 1
    .param p1, "cellName"    # Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xdgf/usermodel/XDGFCell;

    return-object v0
.end method

.method public getDocument()Lorg/apache/poi/xdgf/usermodel/XDGFDocument;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    return-object v0
.end method

.method public getFillStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    .locals 3

    .line 116
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_sheet:Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;->isSetFillStyle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    const/4 v0, 0x0

    return-object v0

    .line 119
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_sheet:Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;

    invoke-interface {v1}, Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;->getFillStyle()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getStyleById(J)Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object v0

    return-object v0
.end method

.method public getFontColor()Ljava/awt/Color;
    .locals 3

    .line 130
    const/4 v0, 0x0

    .line 132
    .local v0, "fontColor":Ljava/awt/Color;
    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_character:Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;->getFontColor()Ljava/awt/Color;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    .line 135
    return-object v0

    .line 138
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getTextStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object v1

    .line 139
    .local v1, "style":Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    if-eqz v1, :cond_1

    .line 140
    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;->getFontColor()Ljava/awt/Color;

    move-result-object v2

    return-object v2

    .line 142
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getFontSize()Ljava/lang/Double;
    .locals 3

    .line 146
    const/4 v0, 0x0

    .line 148
    .local v0, "fontSize":Ljava/lang/Double;
    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_character:Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;

    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;->getFontSize()Ljava/lang/Double;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_0

    .line 151
    return-object v0

    .line 154
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getTextStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object v1

    .line 155
    .local v1, "style":Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    if-eqz v1, :cond_1

    .line 156
    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;->getFontSize()Ljava/lang/Double;

    move-result-object v2

    return-object v2

    .line 158
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getLineCap()Ljava/lang/Integer;
    .locals 3

    .line 162
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "LineCap"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetInteger(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 163
    .local v0, "lineCap":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 164
    return-object v0

    .line 166
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getLineStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object v1

    .line 167
    .local v1, "style":Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    if-eqz v1, :cond_1

    .line 168
    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;->getLineCap()Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 170
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getLineColor()Ljava/awt/Color;
    .locals 3

    .line 174
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "LineColor"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "lineColor":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 176
    invoke-static {v0}, Ljava/awt/Color;->decode(Ljava/lang/String;)Ljava/awt/Color;

    move-result-object v1

    return-object v1

    .line 178
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getLineStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object v1

    .line 179
    .local v1, "style":Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    if-eqz v1, :cond_1

    .line 180
    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;->getLineColor()Ljava/awt/Color;

    move-result-object v2

    return-object v2

    .line 182
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getLinePattern()Ljava/lang/Integer;
    .locals 3

    .line 186
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "LinePattern"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetInteger(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 187
    .local v0, "linePattern":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 188
    return-object v0

    .line 190
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getLineStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object v1

    .line 191
    .local v1, "style":Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    if-eqz v1, :cond_1

    .line 192
    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;->getLinePattern()Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 194
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getLineStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    .locals 3

    .line 109
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_sheet:Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;->isSetLineStyle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x0

    return-object v0

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_sheet:Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;

    invoke-interface {v1}, Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;->getLineStyle()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getStyleById(J)Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object v0

    return-object v0
.end method

.method public getLineWeight()Ljava/lang/Double;
    .locals 3

    .line 198
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "LineWeight"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 199
    .local v0, "lineWeight":Ljava/lang/Double;
    if-eqz v0, :cond_0

    .line 200
    return-object v0

    .line 202
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getLineStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object v1

    .line 203
    .local v1, "style":Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    if-eqz v1, :cond_1

    .line 204
    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;->getLineWeight()Ljava/lang/Double;

    move-result-object v2

    return-object v2

    .line 206
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getSection(Ljava/lang/String;)Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;
    .locals 1
    .param p1, "sectionName"    # Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_sections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;

    return-object v0
.end method

.method public getTextStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    .locals 3

    .line 123
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_sheet:Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;->isSetTextStyle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    const/4 v0, 0x0

    return-object v0

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_sheet:Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;

    invoke-interface {v1}, Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;->getTextStyle()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getStyleById(J)Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object v0

    return-object v0
.end method

.method abstract getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;
.end method
