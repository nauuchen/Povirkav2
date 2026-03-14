.class public Lorg/apache/poi/ss/util/CellReference;
.super Ljava/lang/Object;
.source "CellReference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/util/CellReference$CellRefParts;,
        Lorg/apache/poi/ss/util/CellReference$NameType;
    }
.end annotation


# static fields
.field private static final ABSOLUTE_REFERENCE_MARKER:C = '$'

.field private static final CELL_REF_PATTERN:Ljava/util/regex/Pattern;

.field private static final COLUMN_REF_PATTERN:Ljava/util/regex/Pattern;

.field private static final NAMED_RANGE_NAME_PATTERN:Ljava/util/regex/Pattern;

.field private static final ROW_REF_PATTERN:Ljava/util/regex/Pattern;

.field private static final SHEET_NAME_DELIMITER:C = '!'

.field private static final SPECIAL_NAME_DELIMITER:C = '\''

.field private static final STRICTLY_CELL_REF_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final _colIndex:I

.field private final _isColAbs:Z

.field private final _isRowAbs:Z

.field private final _rowIndex:I

.field private final _sheetName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    const-string v0, "(\\$?[A-Z]+)?(\\$?[0-9]+)?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/util/CellReference;->CELL_REF_PATTERN:Ljava/util/regex/Pattern;

    .line 75
    const-string v0, "\\$?([A-Z]+)\\$?([0-9]+)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/util/CellReference;->STRICTLY_CELL_REF_PATTERN:Ljava/util/regex/Pattern;

    .line 80
    const-string v0, "\\$?([A-Z]+)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/util/CellReference;->COLUMN_REF_PATTERN:Ljava/util/regex/Pattern;

    .line 85
    const-string v0, "\\$?([0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/util/CellReference;->ROW_REF_PATTERN:Ljava/util/regex/Pattern;

    .line 90
    const-string v0, "[_A-Z][_.A-Z0-9]*"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/util/CellReference;->NAMED_RANGE_NAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "pRow"    # I
    .param p2, "pCol"    # I

    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    .line 142
    return-void
.end method

.method public constructor <init>(IIZZ)V
    .locals 6
    .param p1, "pRow"    # I
    .param p2, "pCol"    # I
    .param p3, "pAbsRow"    # Z
    .param p4, "pAbsCol"    # Z

    .line 152
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    .line 153
    return-void
.end method

.method public constructor <init>(IS)V
    .locals 2
    .param p1, "pRow"    # I
    .param p2, "pCol"    # S

    .line 144
    const v0, 0xffff

    and-int/2addr v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    .line 145
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .param p1, "cellRef"    # Ljava/lang/String;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const-string v0, "#REF!"

    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 113
    invoke-static {p1}, Lorg/apache/poi/ss/util/CellReference;->separateRefParts(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellReference$CellRefParts;

    move-result-object v0

    .line 114
    .local v0, "parts":Lorg/apache/poi/ss/util/CellReference$CellRefParts;
    iget-object v1, v0, Lorg/apache/poi/ss/util/CellReference$CellRefParts;->sheetName:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/poi/ss/util/CellReference;->_sheetName:Ljava/lang/String;

    .line 116
    iget-object v1, v0, Lorg/apache/poi/ss/util/CellReference$CellRefParts;->colRef:Ljava/lang/String;

    .line 117
    .local v1, "colRef":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x24

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v2, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lorg/apache/poi/ss/util/CellReference;->_isColAbs:Z

    .line 118
    if-eqz v2, :cond_1

    .line 119
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 121
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v6, -0x1

    if-nez v2, :cond_2

    .line 122
    iput v6, p0, Lorg/apache/poi/ss/util/CellReference;->_colIndex:I

    goto :goto_1

    .line 124
    :cond_2
    invoke-static {v1}, Lorg/apache/poi/ss/util/CellReference;->convertColStringToIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/apache/poi/ss/util/CellReference;->_colIndex:I

    .line 127
    :goto_1
    iget-object v2, v0, Lorg/apache/poi/ss/util/CellReference$CellRefParts;->rowRef:Ljava/lang/String;

    .line 128
    .local v2, "rowRef":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v3, :cond_3

    const/4 v4, 0x1

    :cond_3
    iput-boolean v4, p0, Lorg/apache/poi/ss/util/CellReference;->_isRowAbs:Z

    .line 129
    if-eqz v4, :cond_4

    .line 130
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 132
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    .line 133
    iput v6, p0, Lorg/apache/poi/ss/util/CellReference;->_rowIndex:I

    goto :goto_2

    .line 136
    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v3, v5

    iput v3, p0, Lorg/apache/poi/ss/util/CellReference;->_rowIndex:I

    .line 138
    :goto_2
    return-void

    .line 110
    .end local v0    # "parts":Lorg/apache/poi/ss/util/CellReference$CellRefParts;
    .end local v1    # "colRef":Ljava/lang/String;
    .end local v2    # "rowRef":Ljava/lang/String;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cell reference invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;IIZZ)V
    .locals 3
    .param p1, "pSheetName"    # Ljava/lang/String;
    .param p2, "pRow"    # I
    .param p3, "pCol"    # I
    .param p4, "pAbsRow"    # Z
    .param p5, "pAbsCol"    # Z

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const/4 v0, -0x1

    if-lt p2, v0, :cond_1

    .line 160
    if-lt p3, v0, :cond_0

    .line 163
    iput-object p1, p0, Lorg/apache/poi/ss/util/CellReference;->_sheetName:Ljava/lang/String;

    .line 164
    iput p2, p0, Lorg/apache/poi/ss/util/CellReference;->_rowIndex:I

    .line 165
    iput p3, p0, Lorg/apache/poi/ss/util/CellReference;->_colIndex:I

    .line 166
    iput-boolean p4, p0, Lorg/apache/poi/ss/util/CellReference;->_isRowAbs:Z

    .line 167
    iput-boolean p5, p0, Lorg/apache/poi/ss/util/CellReference;->_isColAbs:Z

    .line 168
    return-void

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "column index may not be negative, but had "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "row index may not be negative, but had "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 3
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 148
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getRowIndex()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    .line 149
    return-void
.end method

.method public static cellReferenceIsWithinRange(Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Z
    .locals 1
    .param p0, "colStr"    # Ljava/lang/String;
    .param p1, "rowStr"    # Ljava/lang/String;
    .param p2, "ssVersion"    # Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 318
    invoke-static {p0, p2}, Lorg/apache/poi/ss/util/CellReference;->isColumnWithinRange(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    const/4 v0, 0x0

    return v0

    .line 321
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/poi/ss/util/CellReference;->isRowWithinRange(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Z

    move-result v0

    return v0
.end method

.method public static classifyCellReference(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/util/CellReference$NameType;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "ssVersion"    # Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 217
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 218
    .local v0, "len":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_7

    .line 221
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 222
    .local v2, "firstChar":C
    const/16 v3, 0x24

    if-eq v2, v3, :cond_1

    const/16 v4, 0x2e

    if-eq v2, v4, :cond_1

    const/16 v4, 0x5f

    if-eq v2, v4, :cond_1

    .line 228
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid first char ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") of cell reference or named range.  Letter expected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    :cond_1
    nop

    .line 233
    :cond_2
    :goto_0
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_3

    .line 235
    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/CellReference;->validateNamedRangeName(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/util/CellReference$NameType;

    move-result-object v1

    return-object v1

    .line 237
    :cond_3
    sget-object v4, Lorg/apache/poi/ss/util/CellReference;->STRICTLY_CELL_REF_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 238
    .local v4, "cellRefPatternMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_4

    .line 239
    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/CellReference;->validateNamedRangeName(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/util/CellReference$NameType;

    move-result-object v1

    return-object v1

    .line 241
    :cond_4
    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "lettersGroup":Ljava/lang/String;
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 243
    .local v5, "digitsGroup":Ljava/lang/String;
    invoke-static {v1, v5, p1}, Lorg/apache/poi/ss/util/CellReference;->cellReferenceIsWithinRange(Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 245
    sget-object v3, Lorg/apache/poi/ss/util/CellReference$NameType;->CELL:Lorg/apache/poi/ss/util/CellReference$NameType;

    return-object v3

    .line 252
    :cond_5
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_6

    .line 254
    sget-object v3, Lorg/apache/poi/ss/util/CellReference$NameType;->BAD_CELL_OR_NAMED_RANGE:Lorg/apache/poi/ss/util/CellReference$NameType;

    return-object v3

    .line 256
    :cond_6
    sget-object v3, Lorg/apache/poi/ss/util/CellReference$NameType;->NAMED_RANGE:Lorg/apache/poi/ss/util/CellReference$NameType;

    return-object v3

    .line 219
    .end local v1    # "lettersGroup":Ljava/lang/String;
    .end local v2    # "firstChar":C
    .end local v4    # "cellRefPatternMatcher":Ljava/util/regex/Matcher;
    .end local v5    # "digitsGroup":Ljava/lang/String;
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty string not allowed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static convertColStringToIndex(Ljava/lang/String;)I
    .locals 7
    .param p0, "ref"    # Ljava/lang/String;

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "retval":I
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 197
    .local v1, "refs":[C
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 198
    aget-char v3, v1, v2

    .line 199
    .local v3, "thechar":C
    const/16 v4, 0x24

    if-ne v3, v4, :cond_1

    .line 200
    if-nez v2, :cond_0

    goto :goto_1

    .line 201
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad col ref format \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 207
    :cond_1
    mul-int/lit8 v4, v0, 0x1a

    add-int/lit8 v5, v3, -0x41

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    move v0, v4

    .line 197
    .end local v3    # "thechar":C
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    .end local v2    # "k":I
    :cond_2
    add-int/lit8 v2, v0, -0x1

    return v2
.end method

.method public static convertNumToColString(I)Ljava/lang/String;
    .locals 6
    .param p0, "col"    # I

    .line 457
    add-int/lit8 v0, p0, 0x1

    .line 459
    .local v0, "excelColNum":I
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 460
    .local v1, "colRef":Ljava/lang/StringBuilder;
    move v2, v0

    .line 462
    .local v2, "colRemain":I
    :goto_0
    if-lez v2, :cond_1

    .line 463
    rem-int/lit8 v3, v2, 0x1a

    .line 464
    .local v3, "thisPart":I
    if-nez v3, :cond_0

    const/16 v3, 0x1a

    .line 465
    :cond_0
    sub-int v4, v2, v3

    div-int/lit8 v2, v4, 0x1a

    .line 468
    add-int/lit8 v4, v3, 0x40

    int-to-char v4, v4

    .line 469
    .local v4, "colChar":C
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 470
    .end local v3    # "thisPart":I
    .end local v4    # "colChar":C
    goto :goto_0

    .line 472
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static isColumnWithinRange(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Z
    .locals 5
    .param p0, "colStr"    # Ljava/lang/String;
    .param p1, "ssVersion"    # Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 327
    invoke-virtual {p1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnName()Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "lastCol":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 330
    .local v1, "lastColLength":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 331
    .local v2, "numberOfLetters":I
    const/4 v3, 0x0

    if-le v2, v1, :cond_0

    .line 333
    return v3

    .line 335
    :cond_0
    if-ne v2, v1, :cond_1

    .line 336
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    .line 337
    return v3

    .line 343
    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method public static isPartAbsolute(Ljava/lang/String;)Z
    .locals 3
    .param p0, "part"    # Ljava/lang/String;

    .line 183
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x24

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isRowWithinRange(ILorg/apache/poi/ss/SpreadsheetVersion;)Z
    .locals 1
    .param p0, "rowNum"    # I
    .param p1, "ssVersion"    # Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 364
    if-ltz p0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v0

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRowWithinRange(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Z
    .locals 2
    .param p0, "rowStr"    # Ljava/lang/String;
    .param p1, "ssVersion"    # Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 353
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 354
    .local v0, "rowNum":I
    invoke-static {v0, p1}, Lorg/apache/poi/ss/util/CellReference;->isRowWithinRange(ILorg/apache/poi/ss/SpreadsheetVersion;)Z

    move-result v1

    return v1
.end method

.method private static parseSheetName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p0, "reference"    # Ljava/lang/String;
    .param p1, "indexOfSheetNameDelimiter"    # I

    .line 405
    if-gez p1, :cond_0

    .line 406
    const/4 v0, 0x0

    return-object v0

    .line 409
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x27

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 410
    .local v1, "isQuoted":Z
    :goto_0
    const-string v4, ")"

    if-nez v1, :cond_3

    .line 412
    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 413
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 415
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sheet names containing spaces must be quoted: ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_3
    add-int/lit8 v0, p1, -0x1

    .line 419
    .local v0, "lastQuotePos":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v2, :cond_7

    .line 430
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 432
    .local v5, "sb":Ljava/lang/StringBuffer;
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_1
    if-ge v6, v0, :cond_6

    .line 433
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 434
    .local v7, "ch":C
    if-eq v7, v2, :cond_4

    .line 435
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 436
    goto :goto_2

    .line 438
    :cond_4
    add-int/lit8 v8, v6, 0x1

    if-ge v8, v0, :cond_5

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v2, :cond_5

    .line 440
    add-int/lit8 v6, v6, 0x1

    .line 441
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 442
    nop

    .line 432
    .end local v7    # "ch":C
    :goto_2
    add-int/2addr v6, v3

    goto :goto_1

    .line 444
    .restart local v7    # "ch":C
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad sheet name quote escaping: ("

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 446
    .end local v6    # "i":I
    .end local v7    # "ch":C
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 420
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mismatched quotes: ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static separateRefParts(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellReference$CellRefParts;
    .locals 8
    .param p0, "reference"    # Ljava/lang/String;

    .line 390
    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 391
    .local v0, "plingPos":I
    invoke-static {p0, v0}, Lorg/apache/poi/ss/util/CellReference;->parseSheetName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, "sheetName":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 393
    .local v2, "cell":Ljava/lang/String;
    sget-object v3, Lorg/apache/poi/ss/util/CellReference;->CELL_REF_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 394
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 397
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 398
    .local v4, "col":Ljava/lang/String;
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 400
    .local v5, "row":Ljava/lang/String;
    new-instance v6, Lorg/apache/poi/ss/util/CellReference$CellRefParts;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v5, v4, v7}, Lorg/apache/poi/ss/util/CellReference$CellRefParts;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ss/util/CellReference$1;)V

    .line 401
    .local v6, "cellRefParts":Lorg/apache/poi/ss/util/CellReference$CellRefParts;
    return-object v6

    .line 395
    .end local v4    # "col":Ljava/lang/String;
    .end local v5    # "row":Ljava/lang/String;
    .end local v6    # "cellRefParts":Lorg/apache/poi/ss/util/CellReference$CellRefParts;
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid CellReference: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static validateNamedRangeName(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/util/CellReference$NameType;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "ssVersion"    # Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 260
    sget-object v0, Lorg/apache/poi/ss/util/CellReference;->COLUMN_REF_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 261
    .local v0, "colMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 262
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "colStr":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/apache/poi/ss/util/CellReference;->isColumnWithinRange(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 264
    sget-object v2, Lorg/apache/poi/ss/util/CellReference$NameType;->COLUMN:Lorg/apache/poi/ss/util/CellReference$NameType;

    return-object v2

    .line 267
    .end local v1    # "colStr":Ljava/lang/String;
    :cond_0
    sget-object v1, Lorg/apache/poi/ss/util/CellReference;->ROW_REF_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 268
    .local v1, "rowMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 269
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "rowStr":Ljava/lang/String;
    invoke-static {v2, p1}, Lorg/apache/poi/ss/util/CellReference;->isRowWithinRange(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 271
    sget-object v3, Lorg/apache/poi/ss/util/CellReference$NameType;->ROW:Lorg/apache/poi/ss/util/CellReference$NameType;

    return-object v3

    .line 274
    .end local v2    # "rowStr":Ljava/lang/String;
    :cond_1
    sget-object v2, Lorg/apache/poi/ss/util/CellReference;->NAMED_RANGE_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_2

    .line 275
    sget-object v2, Lorg/apache/poi/ss/util/CellReference$NameType;->BAD_CELL_OR_NAMED_RANGE:Lorg/apache/poi/ss/util/CellReference$NameType;

    return-object v2

    .line 277
    :cond_2
    sget-object v2, Lorg/apache/poi/ss/util/CellReference$NameType;->NAMED_RANGE:Lorg/apache/poi/ss/util/CellReference$NameType;

    return-object v2
.end method


# virtual methods
.method appendCellReference(Ljava/lang/StringBuffer;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .line 528
    iget v0, p0, Lorg/apache/poi/ss/util/CellReference;->_colIndex:I

    const/16 v1, 0x24

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 529
    iget-boolean v0, p0, Lorg/apache/poi/ss/util/CellReference;->_isColAbs:Z

    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 532
    :cond_0
    iget v0, p0, Lorg/apache/poi/ss/util/CellReference;->_colIndex:I

    invoke-static {v0}, Lorg/apache/poi/ss/util/CellReference;->convertNumToColString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 534
    :cond_1
    iget v0, p0, Lorg/apache/poi/ss/util/CellReference;->_rowIndex:I

    if-eq v0, v2, :cond_3

    .line 535
    iget-boolean v0, p0, Lorg/apache/poi/ss/util/CellReference;->_isRowAbs:Z

    if-eqz v0, :cond_2

    .line 536
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 538
    :cond_2
    iget v0, p0, Lorg/apache/poi/ss/util/CellReference;->_rowIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 540
    :cond_3
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 551
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 552
    return v0

    .line 554
    :cond_0
    instance-of v1, p1, Lorg/apache/poi/ss/util/CellReference;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 555
    return v2

    .line 557
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/poi/ss/util/CellReference;

    .line 558
    .local v1, "cr":Lorg/apache/poi/ss/util/CellReference;
    iget v3, p0, Lorg/apache/poi/ss/util/CellReference;->_rowIndex:I

    iget v4, v1, Lorg/apache/poi/ss/util/CellReference;->_rowIndex:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lorg/apache/poi/ss/util/CellReference;->_colIndex:I

    iget v4, v1, Lorg/apache/poi/ss/util/CellReference;->_colIndex:I

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lorg/apache/poi/ss/util/CellReference;->_isRowAbs:Z

    iget-boolean v4, v1, Lorg/apache/poi/ss/util/CellReference;->_isRowAbs:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lorg/apache/poi/ss/util/CellReference;->_isColAbs:Z

    iget-boolean v4, v1, Lorg/apache/poi/ss/util/CellReference;->_isColAbs:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lorg/apache/poi/ss/util/CellReference;->_sheetName:Ljava/lang/String;

    if-nez v3, :cond_2

    iget-object v3, v1, Lorg/apache/poi/ss/util/CellReference;->_sheetName:Ljava/lang/String;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_2
    iget-object v4, v1, Lorg/apache/poi/ss/util/CellReference;->_sheetName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_0
    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public formatAsString()Ljava/lang/String;
    .locals 2

    .line 488
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 489
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/poi/ss/util/CellReference;->_sheetName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 490
    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 491
    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 493
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/util/CellReference;->appendCellReference(Ljava/lang/StringBuffer;)V

    .line 494
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCellRefParts()[Ljava/lang/String;
    .locals 3

    .line 516
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/poi/ss/util/CellReference;->_sheetName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lorg/apache/poi/ss/util/CellReference;->_rowIndex:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iget v1, p0, Lorg/apache/poi/ss/util/CellReference;->_colIndex:I

    invoke-static {v1}, Lorg/apache/poi/ss/util/CellReference;->convertNumToColString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getCol()S
    .locals 1

    .line 171
    iget v0, p0, Lorg/apache/poi/ss/util/CellReference;->_colIndex:I

    int-to-short v0, v0

    return v0
.end method

.method public getRow()I
    .locals 1

    .line 170
    iget v0, p0, Lorg/apache/poi/ss/util/CellReference;->_rowIndex:I

    return v0
.end method

.method public getSheetName()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lorg/apache/poi/ss/util/CellReference;->_sheetName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 569
    const/16 v0, 0x11

    .line 570
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/apache/poi/ss/util/CellReference;->_rowIndex:I

    add-int/2addr v1, v2

    .line 571
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lorg/apache/poi/ss/util/CellReference;->_colIndex:I

    add-int/2addr v0, v2

    .line 572
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lorg/apache/poi/ss/util/CellReference;->_isRowAbs:Z

    add-int/2addr v1, v2

    .line 573
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lorg/apache/poi/ss/util/CellReference;->_isColAbs:Z

    add-int/2addr v0, v2

    .line 574
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/apache/poi/ss/util/CellReference;->_sheetName:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    .line 575
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public isColAbsolute()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lorg/apache/poi/ss/util/CellReference;->_isColAbs:Z

    return v0
.end method

.method public isRowAbsolute()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lorg/apache/poi/ss/util/CellReference;->_isRowAbs:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 499
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 500
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 501
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 502
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 503
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
