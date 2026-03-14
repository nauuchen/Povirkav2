.class public final Lorg/apache/poi/hssf/record/FormulaRecord;
.super Lorg/apache/poi/hssf/record/CellRecord;
.source "FormulaRecord.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;
    }
.end annotation


# static fields
.field private static FIXED_SIZE:I = 0x0

.field private static final alwaysCalc:Lorg/apache/poi/util/BitField;

.field private static final calcOnLoad:Lorg/apache/poi/util/BitField;

.field private static final sharedFormula:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x6s


# instance fields
.field private field_4_value:D

.field private field_5_options:S

.field private field_6_zero:I

.field private field_8_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

.field private specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const/16 v0, 0xe

    sput v0, Lorg/apache/poi/hssf/record/FormulaRecord;->FIXED_SIZE:I

    .line 37
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/FormulaRecord;->alwaysCalc:Lorg/apache/poi/util/BitField;

    .line 38
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/FormulaRecord;->calcOnLoad:Lorg/apache/poi/util/BitField;

    .line 39
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/FormulaRecord;->sharedFormula:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 200
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CellRecord;-><init>()V

    .line 201
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/Ptg;->EMPTY_PTG_ARRAY:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_8_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    .line 202
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 5
    .param p1, "ris"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 205
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/CellRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 206
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readLong()J

    move-result-wide v0

    .line 207
    .local v0, "valueLongBits":J
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v2

    iput-short v2, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    .line 208
    invoke-static {v0, v1}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->create(J)Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    .line 209
    if-nez v2, :cond_0

    .line 210
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_4_value:D

    .line 213
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_6_zero:I

    .line 215
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v2

    .line 216
    .local v2, "field_7_expression_len":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v3

    .line 217
    .local v3, "nBytesAvailable":I
    invoke-static {v2, p1, v3}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;I)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_8_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    .line 218
    return-void
.end method


# virtual methods
.method protected appendValueText(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 364
    const-string v0, "  .value\t = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    const-string v1, "\n"

    if-nez v0, :cond_0

    .line 366
    iget-wide v2, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_4_value:D

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 368
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->formatDebugString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    :goto_0
    const-string v0, "  .options   = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaRecord;->getOptions()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    const-string v0, "    .alwaysCalc= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaRecord;->isAlwaysCalc()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    const-string v0, "    .calcOnLoad= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaRecord;->isCalcOnLoad()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    const-string v0, "    .shared    = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaRecord;->isSharedFormula()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    const-string v0, "  .zero      = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_6_zero:I

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->intToHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_8_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    .line 377
    .local v0, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 378
    if-lez v2, :cond_1

    .line 379
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_1
    const-string v3, "    Ptg["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    aget-object v3, v0, v2

    .line 383
    .local v3, "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getRVAType()C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 377
    .end local v3    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 385
    .end local v2    # "k":I
    :cond_2
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaRecord;->clone()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/FormulaRecord;
    .locals 3

    .line 389
    new-instance v0, Lorg/apache/poi/hssf/record/FormulaRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/FormulaRecord;-><init>()V

    .line 390
    .local v0, "rec":Lorg/apache/poi/hssf/record/FormulaRecord;
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/FormulaRecord;->copyBaseFields(Lorg/apache/poi/hssf/record/CellRecord;)V

    .line 391
    iget-wide v1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_4_value:D

    iput-wide v1, v0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_4_value:D

    .line 392
    iget-short v1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    .line 393
    iget v1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_6_zero:I

    iput v1, v0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_6_zero:I

    .line 394
    iget-object v1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_8_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_8_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    .line 395
    iget-object v1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    .line 396
    return-object v0
.end method

.method public getCachedBooleanValue()Z
    .locals 1

    .line 260
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->getBooleanValue()Z

    move-result v0

    return v0
.end method

.method public getCachedErrorValue()I
    .locals 1

    .line 263
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->getErrorValue()I

    move-result v0

    return v0
.end method

.method public getCachedResultType()I
    .locals 1

    .line 253
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    if-nez v0, :cond_0

    .line 254
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellType;->getCode()I

    move-result v0

    return v0

    .line 256
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->getValueType()I

    move-result v0

    return v0
.end method

.method public getFormula()Lorg/apache/poi/ss/formula/Formula;
    .locals 1

    .line 326
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_8_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    return-object v0
.end method

.method public getOptions()S
    .locals 1

    .line 291
    iget-short v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    return v0
.end method

.method public getParsedExpression()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    .line 322
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_8_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    return-object v0
.end method

.method protected getRecordName()Ljava/lang/String;
    .locals 1

    .line 359
    const-string v0, "FORMULA"

    return-object v0
.end method

.method public getSid()S
    .locals 1

    .line 335
    const/4 v0, 0x6

    return v0
.end method

.method public getValue()D
    .locals 2

    .line 282
    iget-wide v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_4_value:D

    return-wide v0
.end method

.method protected getValueDataSize()I
    .locals 2

    .line 340
    sget v0, Lorg/apache/poi/hssf/record/FormulaRecord;->FIXED_SIZE:I

    iget-object v1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_8_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/Formula;->getEncodedSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public hasCachedResultString()Z
    .locals 1

    .line 248
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->getTypeCode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAlwaysCalc()Z
    .locals 2

    .line 303
    sget-object v0, Lorg/apache/poi/hssf/record/FormulaRecord;->alwaysCalc:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isCalcOnLoad()Z
    .locals 2

    .line 311
    sget-object v0, Lorg/apache/poi/hssf/record/FormulaRecord;->calcOnLoad:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isSharedFormula()Z
    .locals 2

    .line 295
    sget-object v0, Lorg/apache/poi/hssf/record/FormulaRecord;->sharedFormula:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method protected serializeValue(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 345
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    if-nez v0, :cond_0

    .line 346
    iget-wide v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_4_value:D

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    goto :goto_0

    .line 348
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 351
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaRecord;->getOptions()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 353
    iget v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_6_zero:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 354
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_8_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 355
    return-void
.end method

.method public setAlwaysCalc(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 306
    sget-object v0, Lorg/apache/poi/hssf/record/FormulaRecord;->alwaysCalc:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    .line 308
    return-void
.end method

.method public setCachedResultBoolean(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 240
    invoke-static {p1}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->createCachedBoolean(Z)Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    .line 241
    return-void
.end method

.method public setCachedResultErrorCode(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .line 237
    invoke-static {p1}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->createCachedErrorCode(I)Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    .line 238
    return-void
.end method

.method public setCachedResultTypeEmptyString()V
    .locals 1

    .line 231
    invoke-static {}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->createCachedEmptyValue()Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    .line 232
    return-void
.end method

.method public setCachedResultTypeString()V
    .locals 1

    .line 234
    invoke-static {}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->createForString()Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    .line 235
    return-void
.end method

.method public setCalcOnLoad(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 314
    sget-object v0, Lorg/apache/poi/hssf/record/FormulaRecord;->calcOnLoad:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    .line 316
    return-void
.end method

.method public setOptions(S)V
    .locals 0
    .param p1, "options"    # S

    .line 273
    iput-short p1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    .line 274
    return-void
.end method

.method public setParsedExpression([Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 1
    .param p1, "ptgs"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 330
    invoke-static {p1}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_8_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    .line 331
    return-void
.end method

.method public setSharedFormula(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 298
    sget-object v0, Lorg/apache/poi/hssf/record/FormulaRecord;->sharedFormula:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    .line 300
    return-void
.end method

.method public setValue(D)V
    .locals 1
    .param p1, "value"    # D

    .line 226
    iput-wide p1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_4_value:D

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    .line 228
    return-void
.end method
