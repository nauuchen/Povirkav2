.class final Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;
.super Ljava/lang/Object;
.source "HSSFWorkbook.java"

# interfaces
.implements Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SheetRecordCollector"
.end annotation


# instance fields
.field private _list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;"
        }
    .end annotation
.end field

.field private _totalSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1468
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;->_totalSize:I

    .line 1469
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;->_list:Ljava/util/List;

    .line 1470
    return-void
.end method


# virtual methods
.method public getTotalSize()I
    .locals 1

    .line 1472
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;->_totalSize:I

    return v0
.end method

.method public serialize(I[B)I
    .locals 4
    .param p1, "offset"    # I
    .param p2, "data"    # [B

    .line 1481
    const/4 v0, 0x0

    .line 1482
    .local v0, "result":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;->_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/Record;

    .line 1483
    .local v2, "rec":Lorg/apache/poi/hssf/record/Record;
    add-int v3, p1, v0

    invoke-virtual {v2, v3, p2}, Lorg/apache/poi/hssf/record/Record;->serialize(I[B)I

    move-result v3

    add-int/2addr v0, v3

    .end local v2    # "rec":Lorg/apache/poi/hssf/record/Record;
    goto :goto_0

    .line 1485
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return v0
.end method

.method public visitRecord(Lorg/apache/poi/hssf/record/Record;)V
    .locals 2
    .param p1, "r"    # Lorg/apache/poi/hssf/record/Record;

    .line 1476
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;->_list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1477
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;->_totalSize:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/Record;->getRecordSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;->_totalSize:I

    .line 1479
    return-void
.end method
