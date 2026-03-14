.class public abstract Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;
.super Ljava/lang/Object;
.source "XDGFSection.java"


# static fields
.field static final _sectionTypes:Lorg/apache/poi/xdgf/util/ObjectFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/xdgf/util/ObjectFactory<",
            "Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;",
            "Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;",
            ">;"
        }
    .end annotation
.end field


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

.field protected _containingSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

.field protected _section:Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 37
    const-string v0, "Internal error"

    new-instance v1, Lorg/apache/poi/xdgf/util/ObjectFactory;

    invoke-direct {v1}, Lorg/apache/poi/xdgf/util/ObjectFactory;-><init>()V

    sput-object v1, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;->_sectionTypes:Lorg/apache/poi/xdgf/util/ObjectFactory;

    .line 39
    :try_start_0
    const-string v2, "LineGradient"

    const-class v3, Lorg/apache/poi/xdgf/usermodel/section/GenericSection;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v1, v2, v3, v5}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 40
    const-string v2, "FillGradient"

    const-class v3, Lorg/apache/poi/xdgf/usermodel/section/GenericSection;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;

    aput-object v6, v5, v7

    const-class v6, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    aput-object v6, v5, v8

    invoke-virtual {v1, v2, v3, v5}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 41
    const-string v2, "Character"

    const-class v3, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;

    aput-object v6, v5, v7

    const-class v6, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    aput-object v6, v5, v8

    invoke-virtual {v1, v2, v3, v5}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 42
    const-string v2, "Paragraph"

    const-class v3, Lorg/apache/poi/xdgf/usermodel/section/GenericSection;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;

    aput-object v6, v5, v7

    const-class v6, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    aput-object v6, v5, v8

    invoke-virtual {v1, v2, v3, v5}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 43
    const-string v2, "Tabs"

    const-class v3, Lorg/apache/poi/xdgf/usermodel/section/GenericSection;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;

    aput-object v6, v5, v7

    const-class v6, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    aput-object v6, v5, v8

    invoke-virtual {v1, v2, v3, v5}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 44
    const-string v2, "Scratch"

    const-class v3, Lorg/apache/poi/xdgf/usermodel/section/GenericSection;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;

    aput-object v6, v5, v7

    const-class v6, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    aput-object v6, v5, v8

    invoke-virtual {v1, v2, v3, v5}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 45
    const-string v2, "Connection"

    const-class v3, Lorg/apache/poi/xdgf/usermodel/section/GenericSection;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;

    aput-object v6, v5, v7

    const-class v6, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    aput-object v6, v5, v8

    invoke-virtual {v1, v2, v3, v5}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 46
    const-string v2, "ConnectionABCD"

    const-class v3, Lorg/apache/poi/xdgf/usermodel/section/GenericSection;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;

    aput-object v6, v5, v7

    const-class v6, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    aput-object v6, v5, v8

    invoke-virtual {v1, v2, v3, v5}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 47
    const-string v2, "Field"

    const-class v3, Lorg/apache/poi/xdgf/usermodel/section/GenericSection;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;

    aput-object v6, v5, v7

    const-class v6, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    aput-object v6, v5, v8

    invoke-virtual {v1, v2, v3, v5}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 48
    const-string v2, "Control"

    const-class v3, Lorg/apache/poi/xdgf/usermodel/section/GenericSection;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;

    aput-object v6, v5, v7

    const-class v6, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    aput-object v6, v5, v8

    invoke-virtual {v1, v2, v3, v5}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 49
    const-string v2, "Geometry"

    const-class v3, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;

    aput-object v6, v5, v7

    const-class v6, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    aput-object v6, v5, v8

    invoke-virtual {v1, v2, v3, v5}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 50
    const-string v2, "Actions"

    const-class v3, Lorg/apache/poi/xdgf/usermodel/section/GenericSection;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;

    aput-object v6, v5, v7

    const-class v6, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    aput-object v6, v5, v8

    invoke-virtual {v1, v2, v3, v5}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 51
    const-string v2, "Layer"

    const-class v3, Lorg/apache/poi/xdgf/usermodel/section/GenericSection;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;

    aput-object v6, v5, v7

    const-class v6, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    aput-object v6, v5, v8

    invoke-virtual {v1, v2, v3, v5}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 52
    const-string v2, "User"

    const-class v3, Lorg/apache/poi/xdgf/usermodel/section/GenericSection;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;

    aput-object v6, v5, v7

    const-class v6, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    aput-object v6, v5, v8

    invoke-virtual {v1, v2, v3, v5}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 53
    const-string v2, "Property"

    const-class v3, Lorg/apache/poi/xdgf/usermodel/section/GenericSection;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;

    aput-object v6, v5, v7

    const-class v6, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    aput-object v6, v5, v8

    invoke-virtual {v1, v2, v3, v5}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 54
    const-string v2, "Hyperlink"

    const-class v3, Lorg/apache/poi/xdgf/usermodel/section/GenericSection;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;

    aput-object v6, v5, v7

    const-class v6, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    aput-object v6, v5, v8

    invoke-virtual {v1, v2, v3, v5}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 55
    const-string v2, "Reviewer"

    const-class v3, Lorg/apache/poi/xdgf/usermodel/section/GenericSection;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;

    aput-object v6, v5, v7

    const-class v6, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    aput-object v6, v5, v8

    invoke-virtual {v1, v2, v3, v5}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 56
    const-string v2, "Annotation"

    const-class v3, Lorg/apache/poi/xdgf/usermodel/section/GenericSection;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;

    aput-object v6, v5, v7

    const-class v6, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    aput-object v6, v5, v8

    invoke-virtual {v1, v2, v3, v5}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 57
    const-string v2, "ActionTag"

    const-class v3, Lorg/apache/poi/xdgf/usermodel/section/GenericSection;

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;

    aput-object v5, v4, v7

    const-class v5, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    aput-object v5, v4, v8

    invoke-virtual {v1, v2, v3, v4}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    nop

    .line 64
    return-void

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v2, Lorg/apache/poi/POIXMLException;

    invoke-direct {v2, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Lorg/apache/poi/POIXMLException;

    invoke-direct {v2, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)V
    .locals 7
    .param p1, "section"    # Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;
    .param p2, "containingSheet"    # Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;->_cells:Ljava/util/Map;

    .line 78
    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;->_section:Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;

    .line 79
    iput-object p2, p0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;->_containingSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    .line 83
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;->getCellArray()[Lcom/microsoft/schemas/office/visio/x2012/main/CellType;

    move-result-object v0

    .local v0, "arr$":[Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 84
    .local v3, "cell":Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    iget-object v4, p0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;->_cells:Ljava/util/Map;

    invoke-interface {v3}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getN()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/apache/poi/xdgf/usermodel/XDGFCell;

    invoke-direct {v6, v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;-><init>(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .end local v3    # "cell":Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "arr$":[Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method

.method public static load(Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;
    .locals 4
    .param p0, "section"    # Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;
    .param p1, "containingSheet"    # Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    .line 67
    sget-object v0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;->_sectionTypes:Lorg/apache/poi/xdgf/util/ObjectFactory;

    invoke-interface {p0}, Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;->getN()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/xdgf/util/ObjectFactory;->load(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;

    return-object v0
.end method


# virtual methods
.method public getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 90
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;->_section:Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;

    return-object v0
.end method

.method public abstract setupMaster(Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Section type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;->_section:Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;

    invoke-interface {v1}, Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;->getN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;->_containingSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
