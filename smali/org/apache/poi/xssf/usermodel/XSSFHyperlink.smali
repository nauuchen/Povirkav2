.class public Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;
.super Ljava/lang/Object;
.source "XSSFHyperlink.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Hyperlink;


# instance fields
.field private final _ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

.field private final _externalRel:Lorg/apache/poi/openxml4j/opc/PackageRelationship;

.field private _location:Ljava/lang/String;

.field private final _type:Lorg/apache/poi/common/usermodel/HyperlinkType;


# direct methods
.method protected constructor <init>(Lorg/apache/poi/common/usermodel/HyperlinkType;)V
    .locals 1
    .param p1, "type"    # Lorg/apache/poi/common/usermodel/HyperlinkType;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    .line 49
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_externalRel:Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/usermodel/Hyperlink;)V
    .locals 3
    .param p1, "other"    # Lorg/apache/poi/ss/usermodel/Hyperlink;
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    if-eqz v0, :cond_0

    .line 110
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    .line 111
    .local v0, "xlink":Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getTypeEnum()Lorg/apache/poi/common/usermodel/HyperlinkType;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    .line 112
    iget-object v1, v0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    .line 113
    iget-object v1, v0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_externalRel:Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    iput-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_externalRel:Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 114
    iget-object v1, v0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    iput-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    .line 115
    .end local v0    # "xlink":Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;
    goto :goto_0

    .line 117
    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Hyperlink;->getTypeEnum()Lorg/apache/poi/common/usermodel/HyperlinkType;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    .line 118
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Hyperlink;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_externalRel:Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 120
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    .line 121
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Hyperlink;->getFirstRow()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Hyperlink;->getFirstColumn()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setCellReference(Lorg/apache/poi/ss/util/CellReference;)V

    .line 123
    :goto_0
    return-void
.end method

.method protected constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;Lorg/apache/poi/openxml4j/opc/PackageRelationship;)V
    .locals 3
    .param p1, "ctHyperlink"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;
    .param p2, "hyperlinkRel"    # Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    .line 61
    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_externalRel:Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 65
    if-nez p2, :cond_2

    .line 67
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getLocation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lorg/apache/poi/common/usermodel/HyperlinkType;->DOCUMENT:Lorg/apache/poi/common/usermodel/HyperlinkType;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    .line 69
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getLocation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    goto/16 :goto_1

    .line 70
    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 76
    sget-object v0, Lorg/apache/poi/common/usermodel/HyperlinkType;->DOCUMENT:Lorg/apache/poi/common/usermodel/HyperlinkType;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    goto/16 :goto_1

    .line 71
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The hyperlink for cell "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " references relation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but that didn\'t exist!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_2
    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v0

    .line 80
    .local v0, "target":Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    .line 81
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getLocation()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    .line 87
    :cond_3
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    const-string v2, "ftp://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 90
    :cond_4
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    const-string v2, "mailto:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 91
    sget-object v1, Lorg/apache/poi/common/usermodel/HyperlinkType;->EMAIL:Lorg/apache/poi/common/usermodel/HyperlinkType;

    iput-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    goto :goto_1

    .line 93
    :cond_5
    sget-object v1, Lorg/apache/poi/common/usermodel/HyperlinkType;->FILE:Lorg/apache/poi/common/usermodel/HyperlinkType;

    iput-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    goto :goto_1

    .line 89
    :cond_6
    :goto_0
    sget-object v1, Lorg/apache/poi/common/usermodel/HyperlinkType;->URL:Lorg/apache/poi/common/usermodel/HyperlinkType;

    iput-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    .line 97
    .end local v0    # "target":Ljava/net/URI;
    :goto_1
    return-void
.end method

.method private buildCellReference()Lorg/apache/poi/ss/util/CellReference;
    .locals 2

    .line 287
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getRef()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "ref":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 289
    const-string v0, "A1"

    .line 291
    :cond_0
    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v1, v0}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private validate(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 255
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink$1;->$SwitchMap$org$apache$poi$common$usermodel$HyperlinkType:[I

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    invoke-virtual {v1}, Lorg/apache/poi/common/usermodel/HyperlinkType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 268
    goto :goto_0

    .line 270
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Hyperlink type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_1
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    nop

    .line 272
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Address of hyperlink must be a valid URI"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected generateRelationIfNeeded(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 3
    .param p1, "sheetPart"    # Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 144
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_externalRel:Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->needsRelationToo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SHEET_HYPERLINKS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->getRelation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addExternalRelationship(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    .line 150
    .local v0, "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->setId(Ljava/lang/String;)V

    .line 152
    .end local v0    # "rel":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    :cond_0
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    return-object v0
.end method

.method public getCTHyperlink()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 129
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    return-object v0
.end method

.method public getCellRef()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getRef()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstColumn()I
    .locals 1

    .line 302
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->buildCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v0

    return v0
.end method

.method public getFirstRow()I
    .locals 1

    .line 323
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->buildCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v0

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getDisplay()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastColumn()I
    .locals 1

    .line 313
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->buildCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v0

    return v0
.end method

.method public getLastRow()I
    .locals 1

    .line 334
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->buildCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v0

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTooltip()Ljava/lang/String;
    .locals 1

    .line 383
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getTooltip()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    invoke-virtual {v0}, Lorg/apache/poi/common/usermodel/HyperlinkType;->getCode()I

    move-result v0

    return v0
.end method

.method public getTypeEnum()Lorg/apache/poi/common/usermodel/HyperlinkType;
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    return-object v0
.end method

.method public needsRelationToo()Z
    .locals 2

    .line 137
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    sget-object v1, Lorg/apache/poi/common/usermodel/HyperlinkType;->DOCUMENT:Lorg/apache/poi/common/usermodel/HyperlinkType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .line 244
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->validate(Ljava/lang/String;)V

    .line 246
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    sget-object v1, Lorg/apache/poi/common/usermodel/HyperlinkType;->DOCUMENT:Lorg/apache/poi/common/usermodel/HyperlinkType;

    if-ne v0, v1, :cond_0

    .line 249
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setLocation(Ljava/lang/String;)V

    .line 251
    :cond_0
    return-void
.end method

.method public setCellReference(Ljava/lang/String;)V
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 279
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->setRef(Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public setCellReference(Lorg/apache/poi/ss/util/CellReference;)V
    .locals 1
    .param p1, "ref"    # Lorg/apache/poi/ss/util/CellReference;
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 283
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setCellReference(Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public setFirstColumn(I)V
    .locals 2
    .param p1, "col"    # I

    .line 344
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getFirstRow()I

    move-result v1

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setCellReference(Lorg/apache/poi/ss/util/CellReference;)V

    .line 345
    return-void
.end method

.method public setFirstRow(I)V
    .locals 2
    .param p1, "row"    # I

    .line 365
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getFirstColumn()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setCellReference(Lorg/apache/poi/ss/util/CellReference;)V

    .line 366
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->setDisplay(Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public setLastColumn(I)V
    .locals 0
    .param p1, "col"    # I

    .line 355
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setFirstColumn(I)V

    .line 356
    return-void
.end method

.method public setLastRow(I)V
    .locals 0
    .param p1, "row"    # I

    .line 376
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setFirstRow(I)V

    .line 377
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->setLocation(Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public setTooltip(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 390
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->setTooltip(Ljava/lang/String;)V

    .line 391
    return-void
.end method
