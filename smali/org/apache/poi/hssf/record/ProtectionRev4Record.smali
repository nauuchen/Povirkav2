.class public final Lorg/apache/poi/hssf/record/ProtectionRev4Record;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "ProtectionRev4Record.java"


# static fields
.field private static final protectedFlag:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x1afs


# instance fields
.field private _options:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ProtectionRev4Record;->protectedFlag:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "options"    # I

    .line 37
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 38
    iput p1, p0, Lorg/apache/poi/hssf/record/ProtectionRev4Record;->_options:I

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 47
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/ProtectionRev4Record;-><init>(I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "protect"    # Z

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/ProtectionRev4Record;-><init>(I)V

    .line 43
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ProtectionRev4Record;->setProtect(Z)V

    .line 44
    return-void
.end method


# virtual methods
.method protected getDataSize()I
    .locals 1

    .line 80
    const/4 v0, 0x2

    return v0
.end method

.method public getProtect()Z
    .locals 2

    .line 63
    sget-object v0, Lorg/apache/poi/hssf/record/ProtectionRev4Record;->protectedFlag:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ProtectionRev4Record;->_options:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 84
    const/16 v0, 0x1af

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 76
    iget v0, p0, Lorg/apache/poi/hssf/record/ProtectionRev4Record;->_options:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 77
    return-void
.end method

.method public setProtect(Z)V
    .locals 2
    .param p1, "protect"    # Z

    .line 55
    sget-object v0, Lorg/apache/poi/hssf/record/ProtectionRev4Record;->protectedFlag:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ProtectionRev4Record;->_options:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/ProtectionRev4Record;->_options:I

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 67
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 69
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[PROT4REV]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v1, "    .options = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/hssf/record/ProtectionRev4Record;->_options:I

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    const-string v1, "[/PROT4REV]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
