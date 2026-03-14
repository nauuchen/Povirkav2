.class public Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;
.super Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;
.source "CharacterSection.java"


# instance fields
.field _characterCells:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xdgf/usermodel/XDGFCell;",
            ">;"
        }
    .end annotation
.end field

.field _fontColor:Ljava/awt/Color;

.field _fontSize:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)V
    .locals 8
    .param p1, "section"    # Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;
    .param p2, "containingSheet"    # Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    .line 39
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;-><init>(Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;->_fontSize:Ljava/lang/Double;

    .line 34
    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;->_fontColor:Ljava/awt/Color;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;->_characterCells:Ljava/util/Map;

    .line 42
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;->getRowArray(I)Lcom/microsoft/schemas/office/visio/x2012/main/RowType;

    move-result-object v0

    .line 44
    .local v0, "row":Lcom/microsoft/schemas/office/visio/x2012/main/RowType;
    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->getCellArray()[Lcom/microsoft/schemas/office/visio/x2012/main/CellType;

    move-result-object v1

    .local v1, "arr$":[Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 45
    .local v4, "cell":Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    iget-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;->_characterCells:Ljava/util/Map;

    invoke-interface {v4}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getN()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/apache/poi/xdgf/usermodel/XDGFCell;

    invoke-direct {v7, v4}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;-><init>(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .end local v4    # "cell":Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 48
    .end local v1    # "arr$":[Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;->_characterCells:Ljava/util/Map;

    const-string v2, "Size"

    invoke-static {v1, v2}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;->_fontSize:Ljava/lang/Double;

    .line 50
    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;->_characterCells:Ljava/util/Map;

    const-string v2, "Color"

    invoke-static {v1, v2}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "tmpColor":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 52
    invoke-static {v1}, Ljava/awt/Color;->decode(Ljava/lang/String;)Ljava/awt/Color;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;->_fontColor:Ljava/awt/Color;

    .line 53
    :cond_1
    return-void
.end method


# virtual methods
.method public getFontColor()Ljava/awt/Color;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;->_fontColor:Ljava/awt/Color;

    return-object v0
.end method

.method public getFontSize()Ljava/lang/Double;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;->_fontSize:Ljava/lang/Double;

    return-object v0
.end method

.method public setupMaster(Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;)V
    .locals 0
    .param p1, "section"    # Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;

    .line 66
    return-void
.end method
