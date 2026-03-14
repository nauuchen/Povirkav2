.class public final Lorg/apache/poi/hssf/record/RKRecord;
.super Lorg/apache/poi/hssf/record/CellRecord;
.source "RKRecord.java"


# static fields
.field public static final RK_IEEE_NUMBER:S = 0x0s

.field public static final RK_IEEE_NUMBER_TIMES_100:S = 0x1s

.field public static final RK_INTEGER:S = 0x2s

.field public static final RK_INTEGER_TIMES_100:S = 0x3s

.field public static final sid:S = 0x27es


# instance fields
.field private field_4_rk_number:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CellRecord;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 49
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/CellRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 50
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/RKRecord;->field_4_rk_number:I

    .line 51
    return-void
.end method


# virtual methods
.method protected appendValueText(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 81
    const-string v0, "  .value= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RKRecord;->getRKNumber()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 82
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 101
    new-instance v0, Lorg/apache/poi/hssf/record/RKRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/RKRecord;-><init>()V

    .line 102
    .local v0, "rec":Lorg/apache/poi/hssf/record/RKRecord;
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/RKRecord;->copyBaseFields(Lorg/apache/poi/hssf/record/CellRecord;)V

    .line 103
    iget v1, p0, Lorg/apache/poi/hssf/record/RKRecord;->field_4_rk_number:I

    iput v1, v0, Lorg/apache/poi/hssf/record/RKRecord;->field_4_rk_number:I

    .line 104
    return-object v0
.end method

.method public getRKNumber()D
    .locals 2

    .line 71
    iget v0, p0, Lorg/apache/poi/hssf/record/RKRecord;->field_4_rk_number:I

    invoke-static {v0}, Lorg/apache/poi/hssf/util/RKUtil;->decodeNumber(I)D

    move-result-wide v0

    return-wide v0
.end method

.method protected getRecordName()Ljava/lang/String;
    .locals 1

    .line 76
    const-string v0, "RK"

    return-object v0
.end method

.method public getSid()S
    .locals 1

    .line 96
    const/16 v0, 0x27e

    return v0
.end method

.method protected getValueDataSize()I
    .locals 1

    .line 91
    const/4 v0, 0x4

    return v0
.end method

.method protected serializeValue(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 86
    iget v0, p0, Lorg/apache/poi/hssf/record/RKRecord;->field_4_rk_number:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 87
    return-void
.end method
