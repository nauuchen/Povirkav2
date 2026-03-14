.class public abstract Lorg/apache/poi/ddf/EscherRecord;
.super Ljava/lang/Object;
.source "EscherRecord.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final fInstance:Lorg/apache/poi/util/BitField;

.field private static final fVersion:Lorg/apache/poi/util/BitField;


# instance fields
.field private _options:S

.field private _recordId:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const v0, 0xfff0

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ddf/EscherRecord;->fInstance:Lorg/apache/poi/util/BitField;

    .line 37
    const/16 v0, 0xf

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ddf/EscherRecord;->fVersion:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method private static appendValue(Ljava/lang/StringBuilder;Ljava/lang/Object;ZLjava/lang/String;)Z
    .locals 7
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "toXML"    # Z
    .param p3, "childTab"    # Ljava/lang/String;

    .line 407
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "nl":Ljava/lang/String;
    const/4 v1, 0x0

    .line 409
    .local v1, "isComplex":Z
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 410
    if-eqz p2, :cond_0

    .line 411
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p0}, Lorg/apache/poi/ddf/EscherRecord;->escapeXML(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_2

    .line 413
    :cond_0
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 415
    :cond_1
    instance-of v2, p1, Ljava/lang/Byte;

    const-string v3, "0x"

    if-eqz v2, :cond_2

    .line 416
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 417
    :cond_2
    instance-of v2, p1, Ljava/lang/Short;

    if-eqz v2, :cond_3

    .line 418
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 419
    :cond_3
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 420
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 421
    :cond_4
    instance-of v2, p1, [B

    const-string v3, "(?m)^"

    if-eqz v2, :cond_5

    .line 422
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v4, p1

    check-cast v4, [B

    check-cast v4, [B

    const/16 v5, 0x20

    invoke-static {v4, v5}, Lorg/apache/poi/util/HexDump;->toHex([BI)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 423
    :cond_5
    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_6

    .line 424
    move-object v2, p1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 425
    :cond_6
    instance-of v2, p1, Lorg/apache/poi/ddf/EscherRecord;

    if-eqz v2, :cond_8

    .line 426
    move-object v2, p1

    check-cast v2, Lorg/apache/poi/ddf/EscherRecord;

    .line 427
    .local v2, "er":Lorg/apache/poi/ddf/EscherRecord;
    if-eqz p2, :cond_7

    .line 428
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherRecord;->toXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 430
    :cond_7
    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    :goto_0
    const/4 v1, 0x1

    .line 433
    .end local v2    # "er":Lorg/apache/poi/ddf/EscherRecord;
    goto :goto_2

    :cond_8
    instance-of v2, p1, Lorg/apache/poi/ddf/EscherProperty;

    if-eqz v2, :cond_a

    .line 434
    move-object v2, p1

    check-cast v2, Lorg/apache/poi/ddf/EscherProperty;

    .line 435
    .local v2, "ep":Lorg/apache/poi/ddf/EscherProperty;
    if-eqz p2, :cond_9

    .line 436
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherProperty;->toXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 438
    :cond_9
    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherProperty;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    :goto_1
    const/4 v1, 0x1

    .line 441
    .end local v2    # "ep":Lorg/apache/poi/ddf/EscherProperty;
    nop

    .line 444
    :goto_2
    return v1

    .line 442
    :cond_a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown attribute type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static capitalizeAndTrim(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .line 463
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 467
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 468
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 469
    .local v1, "capitalizeNext":Z
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .local v2, "arr$":[C
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_4

    aget-char v5, v2, v4

    .line 470
    .local v5, "ch":C
    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-nez v6, :cond_1

    .line 471
    const/4 v1, 0x1

    .line 472
    goto :goto_2

    .line 475
    :cond_1
    if-eqz v1, :cond_3

    .line 476
    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-nez v6, :cond_2

    .line 477
    const/16 v6, 0x5f

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 479
    :cond_2
    invoke-static {v5}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v5

    .line 481
    :goto_1
    const/4 v1, 0x0

    .line 483
    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 469
    .end local v5    # "ch":C
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 486
    .end local v2    # "arr$":[C
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 464
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "capitalizeNext":Z
    :cond_5
    :goto_3
    return-object p0
.end method

.method private static escapeXML(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "out"    # Ljava/lang/StringBuilder;

    .line 490
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 493
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_3

    aget-char v3, v0, v2

    .line 494
    .local v3, "c":C
    const/16 v4, 0x7f

    if-gt v3, v4, :cond_2

    const/16 v4, 0x22

    if-eq v3, v4, :cond_2

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_2

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_2

    const/16 v4, 0x26

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 499
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 495
    :cond_2
    :goto_1
    const-string v4, "&#"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 497
    const/16 v4, 0x3b

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 493
    .end local v3    # "c":C
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 502
    .end local v0    # "arr$":[C
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_3
    return-void

    .line 491
    :cond_4
    :goto_3
    return-void
.end method

.method protected static readInstance([BI)S
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 97
    invoke-static {p0, p1}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    .line 98
    .local v0, "options":S
    sget-object v1, Lorg/apache/poi/ddf/EscherRecord;->fInstance:Lorg/apache/poi/util/BitField;

    invoke-virtual {v1, v0}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v1

    return v1
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->clone()Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/ddf/EscherRecord;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 236
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherRecord;

    return-object v0
.end method

.method public display(Ljava/io/PrintWriter;I)V
    .locals 2
    .param p1, "w"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # I

    .line 258
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    mul-int/lit8 v1, p2, 0x4

    if-ge v0, v1, :cond_0

    .line 259
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public abstract fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
.end method

.method protected fillFields([BLorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 1
    .param p1, "data"    # [B
    .param p2, "f"    # Lorg/apache/poi/ddf/EscherRecordFactory;

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/poi/ddf/EscherRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I

    move-result v0

    return v0
.end method

.method protected abstract getAttributeMap()[[Ljava/lang/Object;
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation
.end method

.method public getChild(I)Lorg/apache/poi/ddf/EscherRecord;
    .locals 1
    .param p1, "index"    # I

    .line 246
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getChildRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherRecord;

    return-object v0
.end method

.method public getChildRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;"
        }
    .end annotation

    .line 215
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstance()S
    .locals 2

    .line 278
    sget-object v0, Lorg/apache/poi/ddf/EscherRecord;->fInstance:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/ddf/EscherRecord;->_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public getOptions()S
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 119
    iget-short v0, p0, Lorg/apache/poi/ddf/EscherRecord;->_options:S

    return v0
.end method

.method public getRecordId()S
    .locals 1

    .line 196
    iget-short v0, p0, Lorg/apache/poi/ddf/EscherRecord;->_recordId:S

    return v0
.end method

.method public abstract getRecordName()Ljava/lang/String;
.end method

.method public abstract getRecordSize()I
.end method

.method public getVersion()S
    .locals 2

    .line 298
    sget-object v0, Lorg/apache/poi/ddf/EscherRecord;->fVersion:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/ddf/EscherRecord;->_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public isContainerRecord()Z
    .locals 2

    .line 107
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getVersion()S

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected readHeader([BI)I
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .line 85
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/ddf/EscherRecord;->_options:S

    .line 86
    add-int/lit8 v0, p2, 0x2

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/ddf/EscherRecord;->_recordId:S

    .line 87
    add-int/lit8 v0, p2, 0x4

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    return v0
.end method

.method public serialize(I[B)I
    .locals 1
    .param p1, "offset"    # I
    .param p2, "data"    # [B

    .line 166
    new-instance v0, Lorg/apache/poi/ddf/NullEscherSerializationListener;

    invoke-direct {v0}, Lorg/apache/poi/ddf/NullEscherSerializationListener;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/ddf/EscherRecord;->serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I

    move-result v0

    return v0
.end method

.method public abstract serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
.end method

.method public serialize()[B
    .locals 2

    .line 148
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordSize()I

    move-result v0

    new-array v0, v0, [B

    .line 150
    .local v0, "retval":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/ddf/EscherRecord;->serialize(I[B)I

    .line 151
    return-object v0
.end method

.method public setChildRecords(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;)V"
        }
    .end annotation

    .line 224
    .local p1, "childRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherRecord;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This record does not support child records."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInstance(S)V
    .locals 2
    .param p1, "value"    # S

    .line 288
    sget-object v0, Lorg/apache/poi/ddf/EscherRecord;->fInstance:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/ddf/EscherRecord;->_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/ddf/EscherRecord;->_options:S

    .line 289
    return-void
.end method

.method public setOptions(S)V
    .locals 1
    .param p1, "options"    # S
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 134
    sget-object v0, Lorg/apache/poi/ddf/EscherRecord;->fVersion:Lorg/apache/poi/util/BitField;

    invoke-virtual {v0, p1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherRecord;->setVersion(S)V

    .line 135
    sget-object v0, Lorg/apache/poi/ddf/EscherRecord;->fInstance:Lorg/apache/poi/util/BitField;

    invoke-virtual {v0, p1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherRecord;->setInstance(S)V

    .line 136
    iput-short p1, p0, Lorg/apache/poi/ddf/EscherRecord;->_options:S

    .line 137
    return-void
.end method

.method public setRecordId(S)V
    .locals 0
    .param p1, "recordId"    # S

    .line 205
    iput-short p1, p0, Lorg/apache/poi/ddf/EscherRecord;->_recordId:S

    .line 206
    return-void
.end method

.method public setVersion(S)V
    .locals 2
    .param p1, "value"    # S

    .line 308
    sget-object v0, Lorg/apache/poi/ddf/EscherRecord;->fVersion:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/ddf/EscherRecord;->_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/ddf/EscherRecord;->_options:S

    .line 309
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 13

    .line 374
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "nl":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 376
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  RecordId: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  Version: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getVersion()S

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  Instance: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getInstance()S

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  Options: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getOptions()S

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  Record Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getAttributeMap()[[Ljava/lang/Object;

    move-result-object v2

    .line 384
    .local v2, "attrList":[[Ljava/lang/Object;
    if-eqz v2, :cond_2

    array-length v3, v2

    if-lez v3, :cond_2

    .line 385
    const-string v3, "  "

    .line 386
    .local v3, "childTab":Ljava/lang/String;
    move-object v4, v2

    .local v4, "arr$":[[Ljava/lang/Object;
    array-length v5, v4

    .local v5, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 387
    .local v7, "attrs":[Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v9, v7

    if-ge v8, v9, :cond_1

    .line 388
    add-int/lit8 v9, v8, 0x1

    aget-object v9, v7, v9

    .line 389
    .local v9, "value":Ljava/lang/Object;
    if-nez v9, :cond_0

    .line 391
    goto :goto_2

    .line 393
    :cond_0
    add-int/lit8 v10, v8, 0x0

    aget-object v10, v7, v10

    check-cast v10, Ljava/lang/String;

    .line 394
    .local v10, "name":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    const/4 v11, 0x0

    invoke-static {v1, v9, v11, v3}, Lorg/apache/poi/ddf/EscherRecord;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/Object;ZLjava/lang/String;)Z

    .line 387
    .end local v9    # "value":Ljava/lang/Object;
    .end local v10    # "name":Ljava/lang/String;
    :goto_2
    add-int/lit8 v8, v8, 0x2

    goto :goto_1

    .line 386
    .end local v7    # "attrs":[Ljava/lang/Object;
    .end local v8    # "i":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 400
    .end local v3    # "childTab":Ljava/lang/String;
    .end local v4    # "arr$":[[Ljava/lang/Object;
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public toXml()Ljava/lang/String;
    .locals 1

    .line 312
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherRecord;->toXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 22
    .param p1, "tab"    # Ljava/lang/String;

    .line 320
    move-object/from16 v0, p1

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "nl":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 322
    .local v2, "clsNm":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x3e8

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 323
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " recordId=\"0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v6

    invoke-static {v6}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\" version=\"0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/ddf/EscherRecord;->getVersion()S

    move-result v6

    invoke-static {v6}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\" instance=\"0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/ddf/EscherRecord;->getInstance()S

    move-result v6

    invoke-static {v6}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\" options=\"0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/ddf/EscherRecord;->getOptions()S

    move-result v6

    invoke-static {v6}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\" recordSize=\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordSize()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/ddf/EscherRecord;->getAttributeMap()[[Ljava/lang/Object;

    move-result-object v4

    .line 330
    .local v4, "attrList":[[Ljava/lang/Object;
    if-eqz v4, :cond_9

    array-length v6, v4

    if-nez v6, :cond_0

    move-object/from16 v16, v4

    goto/16 :goto_5

    .line 333
    :cond_0
    const-string v6, "\">"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 335
    .local v6, "childTab":Ljava/lang/String;
    move-object v7, v4

    .local v7, "arr$":[[Ljava/lang/Object;
    array-length v8, v7

    .local v8, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    const-string v10, "</"

    const-string v11, ">"

    if-ge v9, v8, :cond_8

    aget-object v12, v7, v9

    .line 336
    .local v12, "attrs":[Ljava/lang/Object;
    const/4 v13, 0x0

    aget-object v13, v12, v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Lorg/apache/poi/ddf/EscherRecord;->capitalizeAndTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 337
    .local v13, "tagName":Ljava/lang/String;
    const/4 v14, 0x0

    .line 338
    .local v14, "hasValue":Z
    const/4 v15, 0x0

    .line 339
    .local v15, "lastChildComplex":Z
    const/16 v16, 0x0

    move/from16 v21, v16

    move-object/from16 v16, v4

    move/from16 v4, v21

    .local v4, "i":I
    .local v16, "attrList":[[Ljava/lang/Object;
    :goto_1
    move-object/from16 v17, v7

    .end local v7    # "arr$":[[Ljava/lang/Object;
    .local v17, "arr$":[[Ljava/lang/Object;
    array-length v7, v12

    if-ge v4, v7, :cond_5

    .line 340
    add-int/lit8 v7, v4, 0x1

    aget-object v7, v12, v7

    .line 341
    .local v7, "value":Ljava/lang/Object;
    if-nez v7, :cond_1

    .line 343
    move-object/from16 v19, v5

    move/from16 v18, v8

    move-object/from16 v20, v12

    goto :goto_4

    .line 345
    :cond_1
    if-nez v14, :cond_2

    .line 347
    move/from16 v18, v8

    .end local v8    # "len$":I
    .local v18, "len$":I
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 345
    .end local v18    # "len$":I
    .restart local v8    # "len$":I
    :cond_2
    move/from16 v18, v8

    .line 350
    .end local v8    # "len$":I
    .restart local v18    # "len$":I
    :goto_2
    add-int/lit8 v8, v4, 0x0

    aget-object v8, v12, v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lorg/apache/poi/ddf/EscherRecord;->capitalizeAndTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 351
    .local v8, "optName":Ljava/lang/String;
    if-lez v4, :cond_3

    .line 352
    move-object/from16 v19, v5

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v20, v12

    .end local v12    # "attrs":[Ljava/lang/Object;
    .local v20, "attrs":[Ljava/lang/Object;
    const-string v12, "  <"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 351
    .end local v20    # "attrs":[Ljava/lang/Object;
    .restart local v12    # "attrs":[Ljava/lang/Object;
    :cond_3
    move-object/from16 v19, v5

    move-object/from16 v20, v12

    .line 354
    .end local v12    # "attrs":[Ljava/lang/Object;
    .restart local v20    # "attrs":[Ljava/lang/Object;
    :goto_3
    const/4 v5, 0x1

    invoke-static {v3, v7, v5, v6}, Lorg/apache/poi/ddf/EscherRecord;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/Object;ZLjava/lang/String;)Z

    move-result v5

    .line 355
    .end local v15    # "lastChildComplex":Z
    .local v5, "lastChildComplex":Z
    if-lez v4, :cond_4

    .line 356
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "  </"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    :cond_4
    const/4 v12, 0x1

    move v15, v5

    move v14, v12

    .line 339
    .end local v5    # "lastChildComplex":Z
    .end local v7    # "value":Ljava/lang/Object;
    .end local v8    # "optName":Ljava/lang/String;
    .restart local v15    # "lastChildComplex":Z
    :goto_4
    add-int/lit8 v4, v4, 0x2

    move-object/from16 v7, v17

    move/from16 v8, v18

    move-object/from16 v5, v19

    move-object/from16 v12, v20

    goto :goto_1

    .end local v18    # "len$":I
    .end local v20    # "attrs":[Ljava/lang/Object;
    .local v8, "len$":I
    .restart local v12    # "attrs":[Ljava/lang/Object;
    :cond_5
    move-object/from16 v19, v5

    move/from16 v18, v8

    move-object/from16 v20, v12

    .line 360
    .end local v4    # "i":I
    .end local v8    # "len$":I
    .end local v12    # "attrs":[Ljava/lang/Object;
    .restart local v18    # "len$":I
    .restart local v20    # "attrs":[Ljava/lang/Object;
    if-eqz v14, :cond_7

    .line 361
    if-eqz v15, :cond_6

    .line 362
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :cond_6
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .end local v13    # "tagName":Ljava/lang/String;
    .end local v14    # "hasValue":Z
    .end local v15    # "lastChildComplex":Z
    .end local v20    # "attrs":[Ljava/lang/Object;
    :cond_7
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, v16

    move-object/from16 v7, v17

    move/from16 v8, v18

    move-object/from16 v5, v19

    goto/16 :goto_0

    .end local v16    # "attrList":[[Ljava/lang/Object;
    .end local v17    # "arr$":[[Ljava/lang/Object;
    .end local v18    # "len$":I
    .local v4, "attrList":[[Ljava/lang/Object;
    .local v7, "arr$":[[Ljava/lang/Object;
    .restart local v8    # "len$":I
    :cond_8
    move-object/from16 v16, v4

    move-object/from16 v17, v7

    move/from16 v18, v8

    .line 367
    .end local v4    # "attrList":[[Ljava/lang/Object;
    .end local v7    # "arr$":[[Ljava/lang/Object;
    .end local v8    # "len$":I
    .end local v9    # "i$":I
    .restart local v16    # "attrList":[[Ljava/lang/Object;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 330
    .end local v6    # "childTab":Ljava/lang/String;
    .end local v16    # "attrList":[[Ljava/lang/Object;
    .restart local v4    # "attrList":[[Ljava/lang/Object;
    :cond_9
    move-object/from16 v16, v4

    .line 331
    .end local v4    # "attrList":[[Ljava/lang/Object;
    .restart local v16    # "attrList":[[Ljava/lang/Object;
    :goto_5
    const-string v4, "\" />"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    :goto_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
