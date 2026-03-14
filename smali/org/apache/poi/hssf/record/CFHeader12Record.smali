.class public final Lorg/apache/poi/hssf/record/CFHeader12Record;
.super Lorg/apache/poi/hssf/record/CFHeaderBase;
.source "CFHeader12Record.java"

# interfaces
.implements Lorg/apache/poi/hssf/record/common/FutureRecord;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final sid:S = 0x879s


# instance fields
.field private futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;-><init>()V

    .line 36
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeader12Record;->createEmpty()V

    .line 37
    new-instance v0, Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/common/FtrHeader;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFHeader12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    .line 38
    const/16 v1, 0x879

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/common/FtrHeader;->setRecordType(S)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 45
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;-><init>()V

    .line 46
    new-instance v0, Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/common/FtrHeader;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFHeader12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    .line 47
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/CFHeader12Record;->read(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 48
    return-void
.end method

.method public constructor <init>([Lorg/apache/poi/ss/util/CellRangeAddress;I)V
    .locals 2
    .param p1, "regions"    # [Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "nRules"    # I

    .line 41
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/record/CFHeaderBase;-><init>([Lorg/apache/poi/ss/util/CellRangeAddress;I)V

    .line 42
    new-instance v0, Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/common/FtrHeader;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFHeader12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    .line 43
    const/16 v1, 0x879

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/common/FtrHeader;->setRecordType(S)V

    .line 44
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

    .line 29
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeader12Record;->clone()Lorg/apache/poi/hssf/record/CFHeader12Record;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/CFHeader12Record;
    .locals 2

    .line 84
    new-instance v0, Lorg/apache/poi/hssf/record/CFHeader12Record;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/CFHeader12Record;-><init>()V

    .line 85
    .local v0, "result":Lorg/apache/poi/hssf/record/CFHeader12Record;
    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFHeader12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/common/FtrHeader;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/common/FtrHeader;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/CFHeader12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    .line 86
    invoke-super {p0, v0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->copyTo(Lorg/apache/poi/hssf/record/CFHeaderBase;)V

    .line 87
    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/hssf/record/CFHeaderBase;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeader12Record;->clone()Lorg/apache/poi/hssf/record/CFHeader12Record;

    move-result-object v0

    return-object v0
.end method

.method public getAssociatedRange()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFHeader12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/FtrHeader;->getAssociatedRange()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    return-object v0
.end method

.method protected getDataSize()I
    .locals 2

    .line 56
    invoke-static {}, Lorg/apache/poi/hssf/record/common/FtrHeader;->getDataSize()I

    move-result v0

    invoke-super {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->getDataSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getFutureHeader()Lorg/apache/poi/hssf/record/common/FtrHeader;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFHeader12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    return-object v0
.end method

.method public getFutureRecordType()S
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFHeader12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/FtrHeader;->getRecordType()S

    move-result v0

    return v0
.end method

.method protected getRecordName()Ljava/lang/String;
    .locals 1

    .line 52
    const-string v0, "CFHEADER12"

    return-object v0
.end method

.method public getSid()S
    .locals 1

    .line 69
    const/16 v0, 0x879

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 61
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFHeader12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeader12Record;->getEnclosingCellRange()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/common/FtrHeader;->setAssociatedRange(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    .line 63
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFHeader12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/common/FtrHeader;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 65
    invoke-super {p0, p1}, Lorg/apache/poi/hssf/record/CFHeaderBase;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 66
    return-void
.end method
