.class public Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;
.super Ljava/lang/Object;
.source "XSSFTableStyleInfo.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/TableStyleInfo;


# instance fields
.field private columnStripes:Z

.field private firstColumn:Z

.field private lastColumn:Z

.field private rowStripes:Z

.field private style:Lorg/apache/poi/ss/usermodel/TableStyle;

.field private final styleInfo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;

.field private final stylesTable:Lorg/apache/poi/xssf/model/StylesTable;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/model/StylesTable;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;)V
    .locals 1
    .param p1, "stylesTable"    # Lorg/apache/poi/xssf/model/StylesTable;
    .param p2, "tableStyleInfo"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;->getShowColumnStripes()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->columnStripes:Z

    .line 43
    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;->getShowRowStripes()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->rowStripes:Z

    .line 44
    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;->getShowFirstColumn()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->firstColumn:Z

    .line 45
    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;->getShowLastColumn()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->lastColumn:Z

    .line 46
    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/xssf/model/StylesTable;->getTableStyle(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/TableStyle;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->style:Lorg/apache/poi/ss/usermodel/TableStyle;

    .line 47
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->stylesTable:Lorg/apache/poi/xssf/model/StylesTable;

    .line 48
    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->styleInfo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;

    .line 49
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->style:Lorg/apache/poi/ss/usermodel/TableStyle;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/TableStyle;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStyle()Lorg/apache/poi/ss/usermodel/TableStyle;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->style:Lorg/apache/poi/ss/usermodel/TableStyle;

    return-object v0
.end method

.method public isShowColumnStripes()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->columnStripes:Z

    return v0
.end method

.method public isShowFirstColumn()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->firstColumn:Z

    return v0
.end method

.method public isShowLastColumn()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->lastColumn:Z

    return v0
.end method

.method public isShowRowStripes()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->rowStripes:Z

    return v0
.end method

.method public setFirstColumn(Z)V
    .locals 1
    .param p1, "showFirstColumn"    # Z

    .line 71
    iput-boolean p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->firstColumn:Z

    .line 72
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->styleInfo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;->setShowFirstColumn(Z)V

    .line 73
    return-void
.end method

.method public setLastColumn(Z)V
    .locals 1
    .param p1, "showLastColumn"    # Z

    .line 79
    iput-boolean p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->lastColumn:Z

    .line 80
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->styleInfo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;->setShowLastColumn(Z)V

    .line 81
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->styleInfo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;->setName(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->stylesTable:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/model/StylesTable;->getTableStyle(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/TableStyle;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->style:Lorg/apache/poi/ss/usermodel/TableStyle;

    .line 89
    return-void
.end method

.method public setShowColumnStripes(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 55
    iput-boolean p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->columnStripes:Z

    .line 56
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->styleInfo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;->setShowColumnStripes(Z)V

    .line 57
    return-void
.end method

.method public setShowRowStripes(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 63
    iput-boolean p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->rowStripes:Z

    .line 64
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->styleInfo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;->setShowRowStripes(Z)V

    .line 65
    return-void
.end method
