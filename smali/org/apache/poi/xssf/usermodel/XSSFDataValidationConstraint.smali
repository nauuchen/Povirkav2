.class public Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;
.super Ljava/lang/Object;
.source "XSSFDataValidationConstraint.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/DataValidationConstraint;


# static fields
.field private static final LIST_SEPARATOR:Ljava/lang/String; = ","

.field private static final LIST_SPLIT_REGEX:Ljava/util/regex/Pattern;

.field private static final QUOTE:Ljava/lang/String; = "\""


# instance fields
.field private explicitListOfValues:[Ljava/lang/String;

.field private formula1:Ljava/lang/String;

.field private formula2:Ljava/lang/String;

.field private operator:I

.field private validationType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-string v0, "\\s*,\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->LIST_SPLIT_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "validationType"    # I
    .param p2, "operator"    # I
    .param p3, "formula1"    # Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validationType:I

    .line 42
    iput v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->operator:I

    .line 69
    invoke-virtual {p0, p3}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->setFormula1(Ljava/lang/String;)V

    .line 70
    iput p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validationType:I

    .line 71
    iput p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->operator:I

    .line 72
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validate()V

    .line 73
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "validationType"    # I
    .param p2, "operator"    # I
    .param p3, "formula1"    # Ljava/lang/String;
    .param p4, "formula2"    # Ljava/lang/String;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validationType:I

    .line 42
    iput v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->operator:I

    .line 86
    invoke-virtual {p0, p3}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->setFormula1(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, p4}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->setFormula2(Ljava/lang/String;)V

    .line 88
    iput p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validationType:I

    .line 89
    iput p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->operator:I

    .line 91
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validate()V

    .line 96
    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->formula1:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->isQuoted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->LIST_SPLIT_REGEX:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->formula1:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->explicitListOfValues:[Ljava/lang/String;

    .line 101
    :cond_0
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "validationType"    # I
    .param p2, "formula1"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validationType:I

    .line 42
    iput v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->operator:I

    .line 60
    invoke-virtual {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->setFormula1(Ljava/lang/String;)V

    .line 61
    iput p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validationType:I

    .line 62
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validate()V

    .line 63
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 2
    .param p1, "explicitListOfValues"    # [Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validationType:I

    .line 42
    iput v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->operator:I

    .line 49
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validationType:I

    .line 53
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->setExplicitListValues([Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validate()V

    .line 56
    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List validation with explicit values must specify at least one value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static isFormulaEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "formula1"    # Ljava/lang/String;

    .line 181
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isQuoted(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 171
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected static removeLeadingEquals(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "formula1"    # Ljava/lang/String;

    .line 168
    invoke-static {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->isFormulaEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :goto_0
    move-object v0, p0

    :goto_1
    return-object v0
.end method

.method private static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 175
    invoke-static {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->isQuoted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 178
    :cond_0
    return-object p0
.end method


# virtual methods
.method public getExplicitListValues()[Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->explicitListOfValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getFormula1()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->formula1:Ljava/lang/String;

    return-object v0
.end method

.method public getFormula2()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->formula2:Ljava/lang/String;

    return-object v0
.end method

.method public getOperator()I
    .locals 1

    .line 128
    iget v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->operator:I

    return v0
.end method

.method public getValidationType()I
    .locals 1

    .line 135
    iget v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validationType:I

    return v0
.end method

.method public prettyPrint()Ljava/lang/String;
    .locals 8

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .local v0, "builder":Ljava/lang/StringBuilder;
    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->validationTypeMappings:Ljava/util/Map;

    iget v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validationType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    .line 226
    .local v1, "vt":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;
    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->operatorTypeMappings:Ljava/util/Map;

    iget v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->operator:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator$Enum;

    .line 227
    .local v2, "ot":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator$Enum;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 228
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    iget v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validationType:I

    if-eqz v4, :cond_2

    .line 230
    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    const/4 v6, 0x7

    if-eq v4, v6, :cond_0

    .line 232
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :cond_0
    const-string v4, ""

    .line 235
    .local v4, "NOQUOTE":Ljava/lang/String;
    iget v6, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validationType:I

    const-string v7, ""

    if-ne v6, v5, :cond_1

    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->explicitListOfValues:[Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 236
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->explicitListOfValues:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 238
    :cond_1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->formula1:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    :goto_0
    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->formula2:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 241
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->formula2:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 244
    .end local v4    # "NOQUOTE":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public setExplicitListValues([Ljava/lang/String;)V
    .locals 6
    .param p1, "explicitListValues"    # [Ljava/lang/String;

    .line 142
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->explicitListOfValues:[Ljava/lang/String;

    .line 146
    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 149
    aget-object v3, p1, v2

    .line 150
    .local v3, "string":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 151
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .end local v3    # "string":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->setFormula1(Ljava/lang/String;)V

    .line 158
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_2
    return-void
.end method

.method public setFormula1(Ljava/lang/String;)V
    .locals 1
    .param p1, "formula1"    # Ljava/lang/String;

    .line 164
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->removeLeadingEquals(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->formula1:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setFormula2(Ljava/lang/String;)V
    .locals 1
    .param p1, "formula2"    # Ljava/lang/String;

    .line 188
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->removeLeadingEquals(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->formula2:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setOperator(I)V
    .locals 0
    .param p1, "operator"    # I

    .line 195
    iput p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->operator:I

    .line 196
    return-void
.end method

.method public validate()V
    .locals 2

    .line 199
    iget v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validationType:I

    if-nez v0, :cond_0

    .line 200
    return-void

    .line 203
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 204
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->formula1:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->isFormulaEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 205
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A valid formula or a list of values must be specified for list validation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->formula1:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->isFormulaEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 212
    iget v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validationType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_7

    .line 213
    iget v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->operator:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 215
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->formula2:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->isFormulaEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    goto :goto_0

    .line 216
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Between and not between comparisons require two formulae to be specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This validation type requires an operator to be specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_7
    :goto_0
    return-void

    .line 209
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Formula is not specified. Formula is required for all validation types except explicit list validation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
