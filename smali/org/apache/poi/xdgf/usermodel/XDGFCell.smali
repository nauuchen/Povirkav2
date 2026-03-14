.class public Lorg/apache/poi/xdgf/usermodel/XDGFCell;
.super Ljava/lang/Object;
.source "XDGFCell.java"


# instance fields
.field _cell:Lcom/microsoft/schemas/office/visio/x2012/main/CellType;


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)V
    .locals 0
    .param p1, "cell"    # Lcom/microsoft/schemas/office/visio/x2012/main/CellType;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->_cell:Lcom/microsoft/schemas/office/visio/x2012/main/CellType;

    .line 123
    return-void
.end method

.method public static maybeGetBoolean(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xdgf/usermodel/XDGFCell;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 43
    .local p0, "cells":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/xdgf/usermodel/XDGFCell;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xdgf/usermodel/XDGFCell;

    .line 44
    .local v0, "cell":Lorg/apache/poi/xdgf/usermodel/XDGFCell;
    if-nez v0, :cond_0

    .line 45
    const/4 v1, 0x0

    return-object v1

    .line 47
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 49
    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 52
    :cond_2
    new-instance v1, Lorg/apache/poi/POIXMLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid boolean value for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xdgf/usermodel/XDGFCell;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Double;"
        }
    .end annotation

    .line 57
    .local p0, "cells":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/xdgf/usermodel/XDGFCell;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xdgf/usermodel/XDGFCell;

    .line 58
    .local v0, "cell":Lorg/apache/poi/xdgf/usermodel/XDGFCell;
    if-eqz v0, :cond_0

    .line 59
    iget-object v1, v0, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->_cell:Lcom/microsoft/schemas/office/visio/x2012/main/CellType;

    invoke-static {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 60
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static maybeGetInteger(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xdgf/usermodel/XDGFCell;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 65
    .local p0, "cells":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/xdgf/usermodel/XDGFCell;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xdgf/usermodel/XDGFCell;

    .line 66
    .local v0, "cell":Lorg/apache/poi/xdgf/usermodel/XDGFCell;
    if-eqz v0, :cond_0

    .line 67
    iget-object v1, v0, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->_cell:Lcom/microsoft/schemas/office/visio/x2012/main/CellType;

    invoke-static {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseIntegerValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 68
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static maybeGetString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xdgf/usermodel/XDGFCell;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 72
    .local p0, "cells":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/xdgf/usermodel/XDGFCell;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xdgf/usermodel/XDGFCell;

    .line 73
    .local v0, "cell":Lorg/apache/poi/xdgf/usermodel/XDGFCell;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 74
    iget-object v2, v0, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->_cell:Lcom/microsoft/schemas/office/visio/x2012/main/CellType;

    invoke-interface {v2}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getV()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "v":Ljava/lang/String;
    const-string v3, "Themed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    return-object v1

    .line 77
    :cond_0
    return-object v2

    .line 79
    .end local v2    # "v":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;
    .locals 4
    .param p0, "cell"    # Lcom/microsoft/schemas/office/visio/x2012/main/CellType;

    .line 84
    :try_start_0
    invoke-interface {p0}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getV()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-interface {p0}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getV()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Themed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    const/4 v1, 0x0

    return-object v1

    .line 88
    :cond_0
    new-instance v1, Lorg/apache/poi/POIXMLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid float value for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static parseIntegerValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Integer;
    .locals 4
    .param p0, "cell"    # Lcom/microsoft/schemas/office/visio/x2012/main/CellType;

    .line 95
    :try_start_0
    invoke-interface {p0}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getV()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-interface {p0}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getV()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Themed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    const/4 v1, 0x0

    return-object v1

    .line 99
    :cond_0
    new-instance v1, Lorg/apache/poi/POIXMLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid integer value for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static parseVLength(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;
    .locals 4
    .param p0, "cell"    # Lcom/microsoft/schemas/office/visio/x2012/main/CellType;

    .line 110
    :try_start_0
    invoke-interface {p0}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getV()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-interface {p0}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getV()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Themed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    const/4 v1, 0x0

    return-object v1

    .line 114
    :cond_0
    new-instance v1, Lorg/apache/poi/POIXMLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid float value for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->_cell:Lcom/microsoft/schemas/office/visio/x2012/main/CellType;

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getE()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormula()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->_cell:Lcom/microsoft/schemas/office/visio/x2012/main/CellType;

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->_cell:Lcom/microsoft/schemas/office/visio/x2012/main/CellType;

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->_cell:Lcom/microsoft/schemas/office/visio/x2012/main/CellType;

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getV()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 127
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->_cell:Lcom/microsoft/schemas/office/visio/x2012/main/CellType;

    return-object v0
.end method
