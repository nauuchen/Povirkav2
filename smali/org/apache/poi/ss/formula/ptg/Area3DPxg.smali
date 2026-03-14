.class public final Lorg/apache/poi/ss/formula/ptg/Area3DPxg;
.super Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;
.source "Area3DPxg.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/ptg/Pxg3D;


# instance fields
.field private externalWorkbookNumber:I

.field private firstSheetName:Ljava/lang/String;

.field private lastSheetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILorg/apache/poi/ss/formula/SheetIdentifier;Ljava/lang/String;)V
    .locals 2
    .param p1, "externalWorkbookNumber"    # I
    .param p2, "sheetName"    # Lorg/apache/poi/ss/formula/SheetIdentifier;
    .param p3, "arearef"    # Ljava/lang/String;

    .line 41
    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    sget-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {v0, p3, v1}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;-><init>(ILorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/util/AreaReference;)V

    .line 42
    return-void
.end method

.method public constructor <init>(ILorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/util/AreaReference;)V
    .locals 1
    .param p1, "externalWorkbookNumber"    # I
    .param p2, "sheetName"    # Lorg/apache/poi/ss/formula/SheetIdentifier;
    .param p3, "arearef"    # Lorg/apache/poi/ss/util/AreaReference;

    .line 44
    invoke-direct {p0, p3}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;-><init>(Lorg/apache/poi/ss/util/AreaReference;)V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->externalWorkbookNumber:I

    .line 45
    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->externalWorkbookNumber:I

    .line 46
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/SheetIdentifier;->getSheetIdentifier()Lorg/apache/poi/ss/formula/NameIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/NameIdentifier;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->firstSheetName:Ljava/lang/String;

    .line 47
    instance-of v0, p2, Lorg/apache/poi/ss/formula/SheetRangeIdentifier;

    if-eqz v0, :cond_0

    .line 48
    move-object v0, p2

    check-cast v0, Lorg/apache/poi/ss/formula/SheetRangeIdentifier;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/SheetRangeIdentifier;->getLastSheetIdentifier()Lorg/apache/poi/ss/formula/NameIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/NameIdentifier;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->lastSheetName:Ljava/lang/String;

    goto :goto_0

    .line 50
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->lastSheetName:Ljava/lang/String;

    .line 52
    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/SheetIdentifier;Ljava/lang/String;)V
    .locals 2
    .param p1, "sheetName"    # Lorg/apache/poi/ss/formula/SheetIdentifier;
    .param p2, "arearef"    # Ljava/lang/String;

    .line 55
    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    sget-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {v0, p2, v1}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;-><init>(Lorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/util/AreaReference;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/util/AreaReference;)V
    .locals 1
    .param p1, "sheetName"    # Lorg/apache/poi/ss/formula/SheetIdentifier;
    .param p2, "arearef"    # Lorg/apache/poi/ss/util/AreaReference;

    .line 58
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;-><init>(ILorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/util/AreaReference;)V

    .line 59
    return-void
.end method


# virtual methods
.method public format2DRefAsString()Ljava/lang/String;
    .locals 1

    .line 100
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->formatReferenceAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExternalWorkbookNumber()I
    .locals 1

    .line 83
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->externalWorkbookNumber:I

    return v0
.end method

.method public getLastSheetName()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->lastSheetName:Ljava/lang/String;

    return-object v0
.end method

.method public getSheetName()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->firstSheetName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public setLastSheetName(Ljava/lang/String;)V
    .locals 0
    .param p1, "sheetName"    # Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->lastSheetName:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setSheetName(Ljava/lang/String;)V
    .locals 0
    .param p1, "sheetName"    # Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->firstSheetName:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 105
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->externalWorkbookNumber:I

    if-ltz v1, :cond_0

    .line 106
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 107
    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->externalWorkbookNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 108
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 110
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->firstSheetName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->lastSheetName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 112
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 113
    iget-object v1, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->lastSheetName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 115
    :cond_1
    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 116
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->formatReferenceAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 63
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 64
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    iget v2, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->externalWorkbookNumber:I

    if-ltz v2, :cond_0

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    const-string/jumbo v1, "workbook="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getExternalWorkbookNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 69
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    :cond_0
    const-string v1, "sheet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getSheetName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    iget-object v2, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->lastSheetName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 73
    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->lastSheetName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    :cond_1
    const-string v1, " ! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->formatReferenceAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 124
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "XSSF-only Ptg, should not be serialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
