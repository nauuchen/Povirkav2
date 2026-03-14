.class public final Lorg/apache/poi/hssf/record/DBCellRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "DBCellRecord.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/DBCellRecord$Builder;
    }
.end annotation


# static fields
.field public static final BLOCK_SIZE:I = 0x20

.field public static final sid:S = 0xd7s


# instance fields
.field private final field_1_row_offset:I

.field private final field_2_cell_offsets:[S


# direct methods
.method constructor <init>(I[S)V
    .locals 0
    .param p1, "rowOffset"    # I
    .param p2, "cellOffsets"    # [S

    .line 62
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 63
    iput p1, p0, Lorg/apache/poi/hssf/record/DBCellRecord;->field_1_row_offset:I

    .line 64
    iput-object p2, p0, Lorg/apache/poi/hssf/record/DBCellRecord;->field_2_cell_offsets:[S

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 4
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 67
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 68
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/DBCellRecord;->field_1_row_offset:I

    .line 69
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    .line 70
    .local v0, "size":I
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [S

    iput-object v1, p0, Lorg/apache/poi/hssf/record/DBCellRecord;->field_2_cell_offsets:[S

    .line 72
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/DBCellRecord;->field_2_cell_offsets:[S

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 74
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v3

    aput-short v3, v2, v1

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v1    # "i":I
    :cond_0
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

    .line 28
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DBCellRecord;->clone()Lorg/apache/poi/hssf/record/DBCellRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/DBCellRecord;
    .locals 0

    .line 109
    return-object p0
.end method

.method protected getDataSize()I
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/apache/poi/hssf/record/DBCellRecord;->field_2_cell_offsets:[S

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 103
    const/16 v0, 0xd7

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 93
    iget v0, p0, Lorg/apache/poi/hssf/record/DBCellRecord;->field_1_row_offset:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 94
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/DBCellRecord;->field_2_cell_offsets:[S

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 95
    aget-short v1, v1, v0

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "k":I
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 80
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 82
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[DBCELL]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    const-string v1, "    .rowoffset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/hssf/record/DBCellRecord;->field_1_row_offset:I

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->intToHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/hssf/record/DBCellRecord;->field_2_cell_offsets:[S

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 85
    const-string v3, "    .cell_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/hssf/record/DBCellRecord;->field_2_cell_offsets:[S

    aget-short v4, v4, v1

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    .end local v1    # "k":I
    :cond_0
    const-string v1, "[/DBCELL]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
