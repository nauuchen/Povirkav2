.class public final Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "LinkedDataRecord.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final LINK_TYPE_CATEGORIES:B = 0x2t

.field public static final LINK_TYPE_SECONDARY_CATEGORIES:B = 0x3t

.field public static final LINK_TYPE_TITLE_OR_TEXT:B = 0x0t

.field public static final LINK_TYPE_VALUES:B = 0x1t

.field public static final REFERENCE_TYPE_DEFAULT_CATEGORIES:B = 0x0t

.field public static final REFERENCE_TYPE_DIRECT:B = 0x1t

.field public static final REFERENCE_TYPE_ERROR_REPORTED:B = 0x4t

.field public static final REFERENCE_TYPE_NOT_USED:B = 0x3t

.field public static final REFERENCE_TYPE_WORKSHEET:B = 0x2t

.field private static final customNumberFormat:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x1051s


# instance fields
.field private field_1_linkType:B

.field private field_2_referenceType:B

.field private field_3_options:S

.field private field_4_indexNumberFmtRecord:S

.field private field_5_formulaOfLink:Lorg/apache/poi/ss/formula/Formula;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->customNumberFormat:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 59
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 60
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_1_linkType:B

    .line 61
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_2_referenceType:B

    .line 62
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_3_options:S

    .line 63
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_4_indexNumberFmtRecord:S

    .line 64
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    .line 65
    .local v0, "encodedTokenLen":I
    invoke-static {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_5_formulaOfLink:Lorg/apache/poi/ss/formula/Formula;

    .line 66
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->clone()Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;
    .locals 2

    .line 106
    new-instance v0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;-><init>()V

    .line 108
    .local v0, "rec":Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;
    iget-byte v1, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_1_linkType:B

    iput-byte v1, v0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_1_linkType:B

    .line 109
    iget-byte v1, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_2_referenceType:B

    iput-byte v1, v0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_2_referenceType:B

    .line 110
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_3_options:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_3_options:S

    .line 111
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_4_indexNumberFmtRecord:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_4_indexNumberFmtRecord:S

    .line 112
    iget-object v1, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_5_formulaOfLink:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/Formula;->copy()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_5_formulaOfLink:Lorg/apache/poi/ss/formula/Formula;

    .line 113
    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_5_formulaOfLink:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->getEncodedSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public getFormulaOfLink()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    .line 215
    iget-object v0, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_5_formulaOfLink:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    return-object v0
.end method

.method public getIndexNumberFmtRecord()S
    .locals 1

    .line 200
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_4_indexNumberFmtRecord:S

    return v0
.end method

.method public getLinkType()B
    .locals 1

    .line 130
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_1_linkType:B

    return v0
.end method

.method public getOptions()S
    .locals 1

    .line 184
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_3_options:S

    return v0
.end method

.method public getReferenceType()B
    .locals 1

    .line 160
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_2_referenceType:B

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 101
    const/16 v0, 0x1051

    return v0
.end method

.method public isCustomNumberFormat()Z
    .locals 2

    .line 241
    sget-object v0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->customNumberFormat:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_3_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 89
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_1_linkType:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 90
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_2_referenceType:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 91
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_3_options:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 92
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_4_indexNumberFmtRecord:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 93
    iget-object v0, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_5_formulaOfLink:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 94
    return-void
.end method

.method public setCustomNumberFormat(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 232
    sget-object v0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->customNumberFormat:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_3_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_3_options:S

    .line 233
    return-void
.end method

.method public setFormulaOfLink([Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 1
    .param p1, "ptgs"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 223
    invoke-static {p1}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_5_formulaOfLink:Lorg/apache/poi/ss/formula/Formula;

    .line 224
    return-void
.end method

.method public setIndexNumberFmtRecord(S)V
    .locals 0
    .param p1, "field_4_indexNumberFmtRecord"    # S

    .line 208
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_4_indexNumberFmtRecord:S

    .line 209
    return-void
.end method

.method public setLinkType(B)V
    .locals 0
    .param p1, "field_1_linkType"    # B

    .line 145
    iput-byte p1, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_1_linkType:B

    .line 146
    return-void
.end method

.method public setOptions(S)V
    .locals 0
    .param p1, "field_3_options"    # S

    .line 192
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_3_options:S

    .line 193
    return-void
.end method

.method public setReferenceType(B)V
    .locals 0
    .param p1, "field_2_referenceType"    # B

    .line 176
    iput-byte p1, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_2_referenceType:B

    .line 177
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 69
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 71
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[AI]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    const-string v1, "    .linkType             = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->getLinkType()B

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->byteToHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 73
    const-string v1, "    .referenceType        = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->getReferenceType()B

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->byteToHex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 74
    const-string v1, "    .options              = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->getOptions()S

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 75
    const-string v1, "    .customNumberFormat   = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->isCustomNumberFormat()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 76
    const-string v1, "    .indexNumberFmtRecord = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->getIndexNumberFmtRecord()S

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 77
    const-string v1, "    .formulaOfLink        = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 78
    iget-object v1, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_5_formulaOfLink:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    .line 79
    .local v1, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 80
    aget-object v4, v1, v3

    .line 81
    .local v4, "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getRVAType()C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 79
    .end local v4    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 84
    .end local v3    # "i":I
    :cond_0
    const-string v2, "[/AI]\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
