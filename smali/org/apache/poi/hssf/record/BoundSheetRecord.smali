.class public final Lorg/apache/poi/hssf/record/BoundSheetRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "BoundSheetRecord.java"


# static fields
.field private static final BOFComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/apache/poi/hssf/record/BoundSheetRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final hiddenFlag:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x85s

.field private static final veryHiddenFlag:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_1_position_of_BOF:I

.field private field_2_option_flags:I

.field private field_4_isMultibyteUnicode:I

.field private field_5_sheetname:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->hiddenFlag:Lorg/apache/poi/util/BitField;

    .line 44
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->veryHiddenFlag:Lorg/apache/poi/util/BitField;

    .line 210
    new-instance v0, Lorg/apache/poi/hssf/record/BoundSheetRecord$1;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/BoundSheetRecord$1;-><init>()V

    sput-object v0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->BOFComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "sheetname"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_2_option_flags:I

    .line 52
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->setSheetname(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 64
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 65
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 66
    .local v0, "buf":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readPlain([BII)V

    .line 67
    invoke-static {v0}, Lorg/apache/poi/util/LittleEndian;->getInt([B)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_1_position_of_BOF:I

    .line 68
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_2_option_flags:I

    .line 69
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v1

    .line 70
    .local v1, "field_3_sheetname_length":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v2

    iput v2, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_4_isMultibyteUnicode:I

    .line 72
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->isMultibyte()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUnicodeLEString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_5_sheetname:Ljava/lang/String;

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readCompressedUnicode(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_5_sheetname:Ljava/lang/String;

    .line 77
    :goto_0
    return-void
.end method

.method private isMultibyte()Z
    .locals 2

    .line 113
    iget v0, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_4_isMultibyteUnicode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static orderByBofPosition(Ljava/util/List;)[Lorg/apache/poi/hssf/record/BoundSheetRecord;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/BoundSheetRecord;",
            ">;)[",
            "Lorg/apache/poi/hssf/record/BoundSheetRecord;"
        }
    .end annotation

    .line 204
    .local p0, "boundSheetRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/BoundSheetRecord;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/poi/hssf/record/BoundSheetRecord;

    .line 205
    .local v0, "bsrs":[Lorg/apache/poi/hssf/record/BoundSheetRecord;
    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 206
    sget-object v1, Lorg/apache/poi/hssf/record/BoundSheetRecord;->BOFComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 207
    return-object v0
.end method


# virtual methods
.method protected getDataSize()I
    .locals 2

    .line 137
    iget-object v0, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_5_sheetname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->isMultibyte()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    mul-int v0, v0, v1

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getPositionOfBof()I
    .locals 1

    .line 109
    iget v0, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_1_position_of_BOF:I

    return v0
.end method

.method public getSheetname()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_5_sheetname:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()S
    .locals 1

    .line 156
    const/16 v0, 0x85

    return v0
.end method

.method public isHidden()Z
    .locals 2

    .line 165
    sget-object v0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->hiddenFlag:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_2_option_flags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isVeryHidden()Z
    .locals 2

    .line 183
    sget-object v0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->veryHiddenFlag:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_2_option_flags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 141
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->getPositionOfBof()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 142
    iget v0, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_2_option_flags:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 144
    iget-object v0, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_5_sheetname:Ljava/lang/String;

    .line 145
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 146
    iget v1, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_4_isMultibyteUnicode:I

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 148
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->isMultibyte()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_0

    .line 151
    :cond_0
    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 153
    :goto_0
    return-void
.end method

.method public setHidden(Z)V
    .locals 2
    .param p1, "hidden"    # Z

    .line 174
    sget-object v0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->hiddenFlag:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_2_option_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_2_option_flags:I

    .line 175
    return-void
.end method

.method public setPositionOfBof(I)V
    .locals 0
    .param p1, "pos"    # I

    .line 86
    iput p1, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_1_position_of_BOF:I

    .line 87
    return-void
.end method

.method public setSheetname(Ljava/lang/String;)V
    .locals 1
    .param p1, "sheetName"    # Ljava/lang/String;

    .line 98
    invoke-static {p1}, Lorg/apache/poi/ss/util/WorkbookUtil;->validateSheetName(Ljava/lang/String;)V

    .line 99
    iput-object p1, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_5_sheetname:Ljava/lang/String;

    .line 100
    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_4_isMultibyteUnicode:I

    .line 101
    return-void
.end method

.method public setVeryHidden(Z)V
    .locals 2
    .param p1, "veryHidden"    # Z

    .line 192
    sget-object v0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->veryHiddenFlag:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_2_option_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_2_option_flags:I

    .line 193
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 125
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 127
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[BOUNDSHEET]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    const-string v1, "    .bof        = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->getPositionOfBof()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->intToHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    const-string v1, "    .options    = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v3, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_2_option_flags:I

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    const-string v1, "    .unicodeflag= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v3, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_4_isMultibyteUnicode:I

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->byteToHex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    const-string v1, "    .sheetname  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_5_sheetname:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    const-string v1, "[/BOUNDSHEET]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
