.class public final Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;
.super Lorg/apache/poi/hssf/record/SubRecord;
.source "FtPioGrbitSubRecord.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final AUTO_LOAD_BIT:I = 0x200

.field public static final AUTO_PICT_BIT:I = 0x1

.field public static final CAMERA_BIT:I = 0x80

.field public static final CTL_BIT:I = 0x10

.field public static final DDE_BIT:I = 0x2

.field public static final DEFAULT_SIZE_BIT:I = 0x100

.field public static final ICON_BIT:I = 0x8

.field public static final PRINT_CALC_BIT:I = 0x4

.field public static final PRSTM_BIT:I = 0x20

.field public static final length:S = 0x2s

.field public static final sid:S = 0x8s


# instance fields
.field private flags:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->flags:S

    .line 93
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;I)V
    .locals 3
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;
    .param p2, "size"    # I

    .line 95
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->flags:S

    .line 96
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 99
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->flags:S

    .line 100
    return-void

    .line 97
    :cond_0
    new-instance v0, Lorg/apache/poi/util/RecordFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->clone()Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;
    .locals 2

    .line 157
    new-instance v0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;-><init>()V

    .line 158
    .local v0, "rec":Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->flags:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->flags:S

    .line 159
    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/hssf/record/SubRecord;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->clone()Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;

    move-result-object v0

    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 144
    const/4 v0, 0x2

    return v0
.end method

.method public getFlagByBit(I)Z
    .locals 1
    .param p1, "bitmask"    # I

    .line 116
    iget-short v0, p0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->flags:S

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFlags()S
    .locals 1

    .line 163
    iget-short v0, p0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->flags:S

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 152
    const/16 v0, 0x8

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 138
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 139
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 140
    iget-short v0, p0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->flags:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 141
    return-void
.end method

.method public setFlagByBit(IZ)V
    .locals 2
    .param p1, "bitmask"    # I
    .param p2, "enabled"    # Z

    .line 108
    if-eqz p2, :cond_0

    .line 109
    iget-short v0, p0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->flags:S

    or-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->flags:S

    goto :goto_0

    .line 111
    :cond_0
    iget-short v0, p0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->flags:S

    const v1, 0xffff

    xor-int/2addr v1, p1

    and-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->flags:S

    .line 113
    :goto_0
    return-void
.end method

.method public setFlags(S)V
    .locals 0
    .param p1, "flags"    # S

    .line 167
    iput-short p1, p0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->flags:S

    .line 168
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 124
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 125
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[FtPioGrbit ]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    const-string v1, "  size     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    const-string v1, "  flags    = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-short v3, p0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->flags:S

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    const-string v1, "[/FtPioGrbit ]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
