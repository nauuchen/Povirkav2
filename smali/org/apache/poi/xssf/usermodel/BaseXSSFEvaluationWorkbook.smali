.class public abstract Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;
.super Ljava/lang/Object;
.source "BaseXSSFEvaluationWorkbook.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;
.implements Lorg/apache/poi/ss/formula/EvaluationWorkbook;
.implements Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$Name;,
        Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$FakeExternalLinksTable;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private _tableCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xssf/usermodel/XSSFTable;",
            ">;"
        }
    .end annotation
.end field

.field protected final _uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;


# direct methods
.method protected constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V
    .locals 1
    .param p1, "book"    # Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_tableCache:Ljava/util/Map;

    .line 63
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 64
    return-void
.end method

.method private static caseInsensitive(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 353
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private convertFromExternalSheetIndex(I)I
    .locals 0
    .param p1, "externSheetIndex"    # I

    .line 75
    return p1
.end method

.method private convertToExternalSheetIndex(I)I
    .locals 0
    .param p1, "sheetIndex"    # I

    .line 92
    return p1
.end method

.method private findExternalLinkIndex(Ljava/lang/String;Ljava/util/List;)I
    .locals 4
    .param p1, "bookName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/model/ExternalLinksTable;",
            ">;)I"
        }
    .end annotation

    .line 139
    .local p2, "tables":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/model/ExternalLinksTable;>;"
    const/4 v0, 0x0

    .line 140
    .local v0, "i":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/model/ExternalLinksTable;

    .line 141
    .local v2, "table":Lorg/apache/poi/xssf/model/ExternalLinksTable;
    invoke-virtual {v2}, Lorg/apache/poi/xssf/model/ExternalLinksTable;->getLinkedFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    add-int/lit8 v3, v0, 0x1

    return v3

    .line 144
    :cond_0
    nop

    .end local v2    # "table":Lorg/apache/poi/xssf/model/ExternalLinksTable;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private getTableCache()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xssf/usermodel/XSSFTable;",
            ">;"
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_tableCache:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 369
    return-object v0

    .line 372
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_tableCache:Ljava/util/Map;

    .line 374
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/usermodel/Sheet;

    .line 375
    .local v1, "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getTables()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    .line 376
    .local v3, "tbl":Lorg/apache/poi/xssf/usermodel/XSSFTable;
    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->caseInsensitive(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 377
    .local v4, "lname":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_tableCache:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    .end local v3    # "tbl":Lorg/apache/poi/xssf/usermodel/XSSFTable;
    .end local v4    # "lname":Ljava/lang/String;
    goto :goto_1

    .end local v1    # "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    goto :goto_0

    .line 380
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_tableCache:Ljava/util/Map;

    return-object v0
.end method

.method private resolveBookIndex(Ljava/lang/String;)I
    .locals 7
    .param p1, "bookName"    # Ljava/lang/String;

    .line 103
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 109
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 110
    :catch_0
    move-exception v0

    .line 113
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getExternalLinksTable()Ljava/util/List;

    move-result-object v0

    .line 114
    .local v0, "tables":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/xssf/model/ExternalLinksTable;>;"
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->findExternalLinkIndex(Ljava/lang/String;Ljava/util/List;)I

    move-result v2

    .line 115
    .local v2, "index":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    return v2

    .line 118
    :cond_1
    const-string v4, "\'file:///"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "\'"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 119
    const/16 v4, 0x2f

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 120
    .local v4, "relBookName":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 123
    .end local v4    # "relBookName":Ljava/lang/String;
    .local v1, "relBookName":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->findExternalLinkIndex(Ljava/lang/String;Ljava/util/List;)I

    move-result v2

    .line 124
    if-eq v2, v3, :cond_2

    return v2

    .line 129
    :cond_2
    new-instance v3, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$FakeExternalLinksTable;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$FakeExternalLinksTable;-><init>(Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$1;)V

    .line 130
    .local v3, "fakeLinkTable":Lorg/apache/poi/xssf/model/ExternalLinksTable;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    return v4

    .line 135
    .end local v1    # "relBookName":Ljava/lang/String;
    .end local v3    # "fakeLinkTable":Lorg/apache/poi/xssf/model/ExternalLinksTable;
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Book not linked for filename "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public clearAllCachedResultValues()V
    .locals 1

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_tableCache:Ljava/util/Map;

    .line 72
    return-void
.end method

.method public convertFromExternSheetIndex(I)I
    .locals 0
    .param p1, "externSheetIndex"    # I

    .line 83
    return p1
.end method

.method public bridge synthetic createName()Lorg/apache/poi/ss/usermodel/Name;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->createName()Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v0

    return-object v0
.end method

.method public createName()Lorg/apache/poi/xssf/usermodel/XSSFName;
    .locals 1

    .line 349
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createName()Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v0

    return-object v0
.end method

.method public get3DReferencePtg(Lorg/apache/poi/ss/util/AreaReference;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 2
    .param p1, "area"    # Lorg/apache/poi/ss/util/AreaReference;
    .param p2, "sheet"    # Lorg/apache/poi/ss/formula/SheetIdentifier;

    .line 267
    iget-object v0, p2, Lorg/apache/poi/ss/formula/SheetIdentifier;->_bookName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p2, Lorg/apache/poi/ss/formula/SheetIdentifier;->_bookName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->resolveBookIndex(Ljava/lang/String;)I

    move-result v0

    .line 269
    .local v0, "bookIndex":I
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    invoke-direct {v1, v0, p2, p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;-><init>(ILorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/util/AreaReference;)V

    return-object v1

    .line 271
    .end local v0    # "bookIndex":I
    :cond_0
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    invoke-direct {v0, p2, p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;-><init>(Lorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/util/AreaReference;)V

    return-object v0
.end method

.method public get3DReferencePtg(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 2
    .param p1, "cell"    # Lorg/apache/poi/ss/util/CellReference;
    .param p2, "sheet"    # Lorg/apache/poi/ss/formula/SheetIdentifier;

    .line 258
    iget-object v0, p2, Lorg/apache/poi/ss/formula/SheetIdentifier;->_bookName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p2, Lorg/apache/poi/ss/formula/SheetIdentifier;->_bookName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->resolveBookIndex(Ljava/lang/String;)I

    move-result v0

    .line 260
    .local v0, "bookIndex":I
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    invoke-direct {v1, v0, p2, p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;-><init>(ILorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/util/CellReference;)V

    return-object v1

    .line 262
    .end local v0    # "bookIndex":I
    :cond_0
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    invoke-direct {v0, p2, p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;-><init>(Lorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/util/CellReference;)V

    return-object v0
.end method

.method public getExternalName(II)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;
    .locals 2
    .param p1, "externSheetIndex"    # I
    .param p2, "externNameIndex"    # I

    .line 189
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HSSF-style external references are not supported for XSSF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExternalName(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;
    .locals 7
    .param p1, "nameName"    # Ljava/lang/String;
    .param p2, "sheetName"    # Ljava/lang/String;
    .param p3, "externalWorkbookNumber"    # I

    .line 194
    if-lez p3, :cond_2

    .line 196
    add-int/lit8 v0, p3, -0x1

    .line 197
    .local v0, "linkNumber":I
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getExternalLinksTable()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/model/ExternalLinksTable;

    .line 199
    .local v1, "linkTable":Lorg/apache/poi/xssf/model/ExternalLinksTable;
    invoke-virtual {v1}, Lorg/apache/poi/xssf/model/ExternalLinksTable;->getDefinedNames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/usermodel/Name;

    .line 200
    .local v3, "name":Lorg/apache/poi/ss/usermodel/Name;
    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/Name;->getNameName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 203
    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/Name;->getSheetIndex()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 208
    .local v4, "nameSheetIndex":I
    new-instance v5, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;

    const/4 v6, -0x1

    invoke-direct {v5, p1, v6, v4}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;-><init>(Ljava/lang/String;II)V

    return-object v5

    .end local v3    # "name":Lorg/apache/poi/ss/usermodel/Name;
    .end local v4    # "nameSheetIndex":I
    :cond_0
    goto :goto_0

    .line 211
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' not found in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "reference to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/poi/xssf/model/ExternalLinksTable;->getLinkedFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 215
    .end local v0    # "linkNumber":I
    .end local v1    # "linkTable":Lorg/apache/poi/xssf/model/ExternalLinksTable;
    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNameIndex(Ljava/lang/String;)I

    move-result v0

    .line 216
    .local v0, "nameIdx":I
    new-instance v1, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;-><init>(Ljava/lang/String;II)V

    return-object v1
.end method

.method public getExternalSheet(I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    .locals 2
    .param p1, "externSheetIndex"    # I

    .line 296
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HSSF-style external references are not supported for XSSF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExternalSheet(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    .locals 2
    .param p1, "firstSheetName"    # Ljava/lang/String;
    .param p2, "lastSheetName"    # Ljava/lang/String;
    .param p3, "externalWorkbookNumber"    # I

    .line 301
    if-lez p3, :cond_0

    .line 303
    add-int/lit8 v0, p3, -0x1

    .line 304
    .local v0, "linkNumber":I
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getExternalLinksTable()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/model/ExternalLinksTable;

    .line 305
    .local v1, "linkTable":Lorg/apache/poi/xssf/model/ExternalLinksTable;
    invoke-virtual {v1}, Lorg/apache/poi/xssf/model/ExternalLinksTable;->getLinkedFileName()Ljava/lang/String;

    move-result-object v0

    .line 306
    .end local v1    # "linkTable":Lorg/apache/poi/xssf/model/ExternalLinksTable;
    .local v0, "workbookName":Ljava/lang/String;
    goto :goto_0

    .line 308
    .end local v0    # "workbookName":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 311
    .restart local v0    # "workbookName":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 314
    :cond_1
    new-instance v1, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;

    invoke-direct {v1, v0, p1, p2}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 312
    :cond_2
    :goto_1
    new-instance v1, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;

    invoke-direct {v1, v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getExternalSheetIndex(Ljava/lang/String;)I
    .locals 2
    .param p1, "sheetName"    # Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v0

    .line 98
    .local v0, "sheetIndex":I
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->convertToExternalSheetIndex(I)I

    move-result v1

    return v1
.end method

.method public getExternalSheetIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "workbookName"    # Ljava/lang/String;
    .param p2, "sheetName"    # Ljava/lang/String;
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 320
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sheetIndex"    # I

    .line 170
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNumberOfNames()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_2

    .line 171
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNameAt(I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v1

    .line 172
    .local v1, "nm":Lorg/apache/poi/xssf/usermodel/XSSFName;
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getNameName()Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, "nameText":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getSheetIndex()I

    move-result v4

    .line 174
    .local v4, "nameSheetindex":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eq v4, v2, :cond_0

    if-ne v4, p2, :cond_1

    .line 176
    :cond_0
    new-instance v2, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$Name;

    invoke-direct {v2, v1, v0, p0}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$Name;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFName;ILorg/apache/poi/ss/formula/FormulaParsingWorkbook;)V

    return-object v2

    .line 170
    .end local v1    # "nm":Lorg/apache/poi/xssf/usermodel/XSSFName;
    .end local v3    # "nameText":Ljava/lang/String;
    .end local v4    # "nameSheetindex":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    .end local v0    # "i":I
    :cond_2
    if-ne p2, v2, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1, v2}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public getName(Lorg/apache/poi/ss/formula/ptg/NamePtg;)Lorg/apache/poi/ss/formula/EvaluationName;
    .locals 3
    .param p1, "namePtg"    # Lorg/apache/poi/ss/formula/ptg/NamePtg;

    .line 344
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NamePtg;->getIndex()I

    move-result v0

    .line 345
    .local v0, "ix":I
    new-instance v1, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$Name;

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNameAt(I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v2

    invoke-direct {v1, v2, v0, p0}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$Name;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFName;ILorg/apache/poi/ss/formula/FormulaParsingWorkbook;)V

    return-object v1
.end method

.method public getNameText(Lorg/apache/poi/ss/formula/ptg/NamePtg;)Ljava/lang/String;
    .locals 2
    .param p1, "namePtg"    # Lorg/apache/poi/ss/formula/ptg/NamePtg;

    .line 340
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NamePtg;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNameAt(I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getNameName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameXPtg(Ljava/lang/String;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/NameXPxg;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sheet"    # Lorg/apache/poi/ss/formula/SheetIdentifier;

    .line 227
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->getUDFFinder()Lorg/apache/poi/ss/formula/udf/UDFFinder;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;

    .line 228
    .local v0, "udfFinder":Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;
    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;->findFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    move-result-object v1

    .line 229
    .local v1, "func":Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 230
    new-instance v3, Lorg/apache/poi/ss/formula/ptg/NameXPxg;

    invoke-direct {v3, v2, p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 234
    :cond_0
    if-nez p2, :cond_2

    .line 235
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v3, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 236
    new-instance v3, Lorg/apache/poi/ss/formula/ptg/NameXPxg;

    invoke-direct {v3, v2, p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 238
    :cond_1
    return-object v2

    .line 240
    :cond_2
    iget-object v3, p2, Lorg/apache/poi/ss/formula/SheetIdentifier;->_sheetIdentifier:Lorg/apache/poi/ss/formula/NameIdentifier;

    if-nez v3, :cond_3

    .line 242
    iget-object v3, p2, Lorg/apache/poi/ss/formula/SheetIdentifier;->_bookName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->resolveBookIndex(Ljava/lang/String;)I

    move-result v3

    .line 243
    .local v3, "bookIndex":I
    new-instance v4, Lorg/apache/poi/ss/formula/ptg/NameXPxg;

    invoke-direct {v4, v3, v2, p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 247
    .end local v3    # "bookIndex":I
    :cond_3
    iget-object v2, p2, Lorg/apache/poi/ss/formula/SheetIdentifier;->_sheetIdentifier:Lorg/apache/poi/ss/formula/NameIdentifier;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/NameIdentifier;->getName()Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "sheetName":Ljava/lang/String;
    iget-object v3, p2, Lorg/apache/poi/ss/formula/SheetIdentifier;->_bookName:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 250
    iget-object v3, p2, Lorg/apache/poi/ss/formula/SheetIdentifier;->_bookName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->resolveBookIndex(Ljava/lang/String;)I

    move-result v3

    .line 251
    .restart local v3    # "bookIndex":I
    new-instance v4, Lorg/apache/poi/ss/formula/ptg/NameXPxg;

    invoke-direct {v4, v3, v2, p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 253
    .end local v3    # "bookIndex":I
    :cond_4
    new-instance v3, Lorg/apache/poi/ss/formula/ptg/NameXPxg;

    invoke-direct {v3, v2, p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public bridge synthetic getNameXPtg(Ljava/lang/String;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/apache/poi/ss/formula/SheetIdentifier;

    .line 53
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->getNameXPtg(Ljava/lang/String;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/NameXPxg;

    move-result-object v0

    return-object v0
.end method

.method public getSheetFirstNameByExternSheet(I)Ljava/lang/String;
    .locals 2
    .param p1, "externSheetIndex"    # I

    .line 329
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->convertFromExternalSheetIndex(I)I

    move-result v0

    .line 330
    .local v0, "sheetIndex":I
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSheetIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "sheetName"    # Ljava/lang/String;

    .line 324
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSheetLastNameByExternSheet(I)Ljava/lang/String;
    .locals 1
    .param p1, "externSheetIndex"    # I

    .line 335
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->getSheetFirstNameByExternSheet(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSheetName(I)Ljava/lang/String;
    .locals 1
    .param p1, "sheetIndex"    # I

    .line 184
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;
    .locals 1

    .line 407
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    return-object v0
.end method

.method public bridge synthetic getTable(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Table;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .line 53
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->getTable(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFTable;

    move-result-object v0

    return-object v0
.end method

.method public getTable(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFTable;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 395
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 396
    :cond_0
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->caseInsensitive(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "lname":Ljava/lang/String;
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->getTableCache()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    return-object v1
.end method

.method public getUDFFinder()Lorg/apache/poi/ss/formula/udf/UDFFinder;
    .locals 1

    .line 402
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getUDFFinder()Lorg/apache/poi/ss/formula/udf/UDFFinder;

    move-result-object v0

    return-object v0
.end method

.method public resolveNameXText(Lorg/apache/poi/ss/formula/ptg/NameXPtg;)Ljava/lang/String;
    .locals 4
    .param p1, "n"    # Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    .line 277
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->getNameIndex()I

    move-result v0

    .line 278
    .local v0, "idx":I
    const/4 v1, 0x0

    .line 281
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->getUDFFinder()Lorg/apache/poi/ss/formula/udf/UDFFinder;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;

    .line 282
    .local v2, "udfFinder":Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;
    invoke-virtual {v2, v0}, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;->getFunctionName(I)Ljava/lang/String;

    move-result-object v1

    .line 283
    if-eqz v1, :cond_0

    return-object v1

    .line 286
    :cond_0
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v3, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNameAt(I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v3

    .line 287
    .local v3, "xname":Lorg/apache/poi/xssf/usermodel/XSSFName;
    if-eqz v3, :cond_1

    .line 288
    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getNameName()Ljava/lang/String;

    move-result-object v1

    .line 291
    :cond_1
    return-object v1
.end method
