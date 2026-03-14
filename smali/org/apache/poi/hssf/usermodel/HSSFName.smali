.class public final Lorg/apache/poi/hssf/usermodel/HSSFName;
.super Ljava/lang/Object;
.source "HSSFName.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Name;


# instance fields
.field private _book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

.field private _commentRec:Lorg/apache/poi/hssf/record/NameCommentRecord;

.field private _definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;


# direct methods
.method constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/record/NameRecord;)V
    .locals 1
    .param p1, "book"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .param p2, "name"    # Lorg/apache/poi/hssf/record/NameRecord;

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFName;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/record/NameRecord;Lorg/apache/poi/hssf/record/NameCommentRecord;)V

    .line 50
    return-void
.end method

.method constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/record/NameRecord;Lorg/apache/poi/hssf/record/NameCommentRecord;)V
    .locals 0
    .param p1, "book"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .param p2, "name"    # Lorg/apache/poi/hssf/record/NameRecord;
    .param p3, "comment"    # Lorg/apache/poi/hssf/record/NameCommentRecord;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 62
    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    .line 63
    iput-object p3, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_commentRec:Lorg/apache/poi/hssf/record/NameCommentRecord;

    .line 64
    return-void
.end method

.method private static validateName(Ljava/lang/String;)V
    .locals 12
    .param p0, "name"    # Ljava/lang/String;

    .line 183
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_c

    .line 186
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    const-string v2, "Invalid name: \'"

    if-gt v0, v1, :cond_b

    .line 189
    const-string v0, "R"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "C"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 195
    .local v1, "c":C
    const-string v3, "_\\"

    .line 196
    .local v3, "allowedSymbols":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-nez v4, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 197
    .local v4, "characterIsValid":Z
    :goto_1
    if-eqz v4, :cond_9

    .line 202
    const-string v3, "_.\\"

    .line 203
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .local v7, "arr$":[C
    array-length v8, v7

    .local v8, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_2
    if-ge v9, v8, :cond_5

    aget-char v10, v7, v9

    .line 204
    .local v10, "ch":C
    invoke-static {v10}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v3, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-eq v11, v5, :cond_2

    goto :goto_3

    :cond_2
    const/4 v11, 0x0

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v11, 0x1

    :goto_4
    move v4, v11

    .line 205
    if-eqz v4, :cond_4

    .line 203
    .end local v10    # "ch":C
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 206
    .restart local v10    # "ch":C
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\': name must be letter, digit, period, or underscore"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    .end local v7    # "arr$":[C
    .end local v8    # "len$":I
    .end local v9    # "i$":I
    .end local v10    # "ch":C
    :cond_5
    const-string v0, "[A-Za-z]+\\d+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 213
    const-string v0, "\\d"

    const-string v5, ""

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "col":Ljava/lang/String;
    const-string v6, "[A-Za-z]"

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 215
    .local v5, "row":Ljava/lang/String;
    sget-object v6, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-static {v0, v5, v6}, Lorg/apache/poi/ss/util/CellReference;->cellReferenceIsWithinRange(Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_5

    .line 216
    :cond_6
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\': cannot be $A$1-style cell reference"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 221
    .end local v0    # "col":Ljava/lang/String;
    .end local v5    # "row":Ljava/lang/String;
    :cond_7
    :goto_5
    const-string v0, "[Rr]\\d+[Cc]\\d+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 224
    return-void

    .line 222
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\': cannot be R1C1-style cell reference"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\': first character must be underscore or a letter"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    .end local v1    # "c":C
    .end local v3    # "allowedSymbols":Ljava/lang/String;
    .end local v4    # "characterIsValid":Z
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': cannot be special shorthand R or C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': cannot exceed 255 characters in length"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name cannot be blank"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .line 309
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_commentRec:Lorg/apache/poi/hssf/record/NameCommentRecord;

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameCommentRecord;->getCommentText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_commentRec:Lorg/apache/poi/hssf/record/NameCommentRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameCommentRecord;->getCommentText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 313
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_commentRec:Lorg/apache/poi/hssf/record/NameCommentRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameCommentRecord;->getCommentText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 316
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameRecord;->getDescriptionText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameName()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameRecord;->getNameText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRefersToFormula()Ljava/lang/String;
    .locals 3

    .line 232
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameRecord;->isFunctionName()Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameRecord;->getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    .line 236
    .local v0, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 238
    const/4 v1, 0x0

    return-object v1

    .line 240
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-static {v1, v0}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->toFormulaString(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 233
    .end local v0    # "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only applicable to named ranges"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSheetIndex()I
    .locals 1

    .line 300
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameRecord;->getSheetNumber()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getSheetName()Ljava/lang/String;
    .locals 2

    .line 70
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameRecord;->getExternSheetNumber()I

    move-result v0

    .line 72
    .local v0, "indexToExternSheet":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findSheetFirstNameFromExternSheet(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isDeleted()Z
    .locals 2

    .line 256
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameRecord;->getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    .line 257
    .local v0, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-static {v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->doesFormulaReferToDeletedCell([Lorg/apache/poi/ss/formula/ptg/Ptg;)Z

    move-result v1

    return v1
.end method

.method public isFunctionName()Z
    .locals 1

    .line 266
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameRecord;->isFunctionName()Z

    move-result v0

    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 1
    .param p1, "comment"    # Ljava/lang/String;

    .line 326
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/NameRecord;->setDescriptionText(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_commentRec:Lorg/apache/poi/hssf/record/NameCommentRecord;

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/NameCommentRecord;->setCommentText(Ljava/lang/String;)V

    .line 331
    :cond_0
    return-void
.end method

.method public setFunction(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 340
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/NameRecord;->setFunction(Z)V

    .line 341
    return-void
.end method

.method setNameDefinition([Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 1
    .param p1, "ptgs"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 251
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/NameRecord;->setNameDefinition([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 252
    return-void
.end method

.method public setNameName(Ljava/lang/String;)V
    .locals 9
    .param p1, "nameName"    # Ljava/lang/String;

    .line 132
    invoke-static {p1}, Lorg/apache/poi/hssf/usermodel/HSSFName;->validateName(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    .line 135
    .local v0, "wb":Lorg/apache/poi/hssf/model/InternalWorkbook;
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/NameRecord;->setNameText(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/NameRecord;->getSheetNumber()I

    move-result v1

    .line 140
    .local v1, "sheetNumber":I
    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumNames()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 141
    .local v2, "lastNameIndex":I
    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 143
    invoke-virtual {v0, v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v4

    .line 144
    .local v4, "rec":Lorg/apache/poi/hssf/record/NameRecord;
    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    if-eq v4, v5, :cond_1

    .line 145
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/NameRecord;->getNameText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/NameRecord;->getSheetNumber()I

    move-result v5

    if-ne v1, v5, :cond_1

    .line 146
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v1, :cond_0

    const-string/jumbo v6, "workbook"

    goto :goto_1

    :cond_0
    const-string v6, "sheet"

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " already contains this name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, "msg":Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "(2)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/poi/hssf/record/NameRecord;->setNameText(Ljava/lang/String;)V

    .line 148
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 141
    .end local v4    # "rec":Lorg/apache/poi/hssf/record/NameRecord;
    .end local v5    # "msg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 154
    .end local v3    # "i":I
    :cond_2
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_commentRec:Lorg/apache/poi/hssf/record/NameCommentRecord;

    if-eqz v3, :cond_3

    .line 155
    invoke-virtual {v3, p1}, Lorg/apache/poi/hssf/record/NameCommentRecord;->setNameText(Ljava/lang/String;)V

    .line 156
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_commentRec:Lorg/apache/poi/hssf/record/NameCommentRecord;

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->updateNameCommentRecordCache(Lorg/apache/poi/hssf/record/NameCommentRecord;)V

    .line 158
    :cond_3
    return-void
.end method

.method public setRefersToFormula(Ljava/lang/String;)V
    .locals 3
    .param p1, "formulaText"    # Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    sget-object v1, Lorg/apache/poi/ss/formula/FormulaType;->NAMEDRANGE:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFName;->getSheetIndex()I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/ss/formula/FormulaType;I)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    .line 228
    .local v0, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/NameRecord;->setNameDefinition([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 229
    return-void
.end method

.method public setSheetIndex(I)V
    .locals 5
    .param p1, "index"    # I

    .line 285
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfSheets()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 286
    .local v0, "lastSheetIx":I
    const/4 v1, -0x1

    if-lt p1, v1, :cond_1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/NameRecord;->setSheetNumber(I)V

    .line 292
    return-void

    .line 287
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sheet index ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is out of range"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ne v0, v1, :cond_2

    const-string v1, ""

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " (0.."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 270
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 271
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/NameRecord;->getNameText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 273
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 274
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
