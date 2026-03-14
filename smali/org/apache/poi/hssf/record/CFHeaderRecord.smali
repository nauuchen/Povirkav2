.class public final Lorg/apache/poi/hssf/record/CFHeaderRecord;
.super Lorg/apache/poi/hssf/record/CFHeaderBase;
.source "CFHeaderRecord.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final sid:S = 0x1b0s


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;-><init>()V

    .line 32
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderRecord;->createEmpty()V

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 0
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 38
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;-><init>()V

    .line 39
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/CFHeaderRecord;->read(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 40
    return-void
.end method

.method public constructor <init>([Lorg/apache/poi/ss/util/CellRangeAddress;I)V
    .locals 0
    .param p1, "regions"    # [Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "nRules"    # I

    .line 35
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/record/CFHeaderBase;-><init>([Lorg/apache/poi/ss/util/CellRangeAddress;I)V

    .line 36
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

    .line 27
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderRecord;->clone()Lorg/apache/poi/hssf/record/CFHeaderRecord;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/hssf/record/CFHeaderBase;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderRecord;->clone()Lorg/apache/poi/hssf/record/CFHeaderRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/CFHeaderRecord;
    .locals 1

    .line 52
    new-instance v0, Lorg/apache/poi/hssf/record/CFHeaderRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/CFHeaderRecord;-><init>()V

    .line 53
    .local v0, "result":Lorg/apache/poi/hssf/record/CFHeaderRecord;
    invoke-super {p0, v0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->copyTo(Lorg/apache/poi/hssf/record/CFHeaderBase;)V

    .line 54
    return-object v0
.end method

.method protected getRecordName()Ljava/lang/String;
    .locals 1

    .line 43
    const-string v0, "CFHEADER"

    return-object v0
.end method

.method public getSid()S
    .locals 1

    .line 47
    const/16 v0, 0x1b0

    return v0
.end method
