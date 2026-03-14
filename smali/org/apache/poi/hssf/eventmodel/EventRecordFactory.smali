.class public final Lorg/apache/poi/hssf/eventmodel/EventRecordFactory;
.super Ljava/lang/Object;
.source "EventRecordFactory.java"


# instance fields
.field private final _listener:Lorg/apache/poi/hssf/eventmodel/ERFListener;

.field private final _sids:[S


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/eventmodel/ERFListener;[S)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/poi/hssf/eventmodel/ERFListener;
    .param p2, "sids"    # [S

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/apache/poi/hssf/eventmodel/EventRecordFactory;->_listener:Lorg/apache/poi/hssf/eventmodel/ERFListener;

    .line 50
    if-nez p2, :cond_0

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/eventmodel/EventRecordFactory;->_sids:[S

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p2}, [S->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    iput-object v0, p0, Lorg/apache/poi/hssf/eventmodel/EventRecordFactory;->_sids:[S

    .line 54
    invoke-static {v0}, Ljava/util/Arrays;->sort([S)V

    .line 56
    :goto_0
    return-void
.end method

.method private isSidIncluded(S)Z
    .locals 2
    .param p1, "sid"    # S

    .line 58
    iget-object v0, p0, Lorg/apache/poi/hssf/eventmodel/EventRecordFactory;->_sids:[S

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 59
    return v1

    .line 61
    :cond_0
    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([SS)I

    move-result v0

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private processRecord(Lorg/apache/poi/hssf/record/Record;)Z
    .locals 1
    .param p1, "record"    # Lorg/apache/poi/hssf/record/Record;

    .line 72
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/eventmodel/EventRecordFactory;->isSidIncluded(S)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x1

    return v0

    .line 75
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/eventmodel/EventRecordFactory;->_listener:Lorg/apache/poi/hssf/eventmodel/ERFListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/hssf/eventmodel/ERFListener;->processRecord(Lorg/apache/poi/hssf/record/Record;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public processRecords(Ljava/io/InputStream;)V
    .locals 8
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/util/RecordFormatException;
        }
    .end annotation

    .line 88
    const/4 v0, 0x0

    .line 90
    .local v0, "last_record":Lorg/apache/poi/hssf/record/Record;
    new-instance v1, Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v1, p1}, Lorg/apache/poi/hssf/record/RecordInputStream;-><init>(Ljava/io/InputStream;)V

    .line 92
    .local v1, "recStream":Lorg/apache/poi/hssf/record/RecordInputStream;
    :goto_0
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 93
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 94
    invoke-static {v1}, Lorg/apache/poi/hssf/record/RecordFactory;->createRecord(Lorg/apache/poi/hssf/record/RecordInputStream;)[Lorg/apache/poi/hssf/record/Record;

    move-result-object v2

    .line 95
    .local v2, "recs":[Lorg/apache/poi/hssf/record/Record;
    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 96
    move-object v3, v2

    .local v3, "arr$":[Lorg/apache/poi/hssf/record/Record;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 97
    .local v6, "rec":Lorg/apache/poi/hssf/record/Record;
    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/eventmodel/EventRecordFactory;->processRecord(Lorg/apache/poi/hssf/record/Record;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 99
    return-void

    .line 102
    :cond_0
    move-object v0, v6

    .line 96
    .end local v6    # "rec":Lorg/apache/poi/hssf/record/Record;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v3    # "arr$":[Lorg/apache/poi/hssf/record/Record;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_1
    goto :goto_2

    .line 105
    :cond_2
    const/4 v3, 0x0

    aget-object v3, v2, v3

    .line 107
    .local v3, "record":Lorg/apache/poi/hssf/record/Record;
    if-eqz v3, :cond_4

    .line 108
    if-eqz v0, :cond_3

    .line 109
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/eventmodel/EventRecordFactory;->processRecord(Lorg/apache/poi/hssf/record/Record;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 110
    return-void

    .line 113
    :cond_3
    move-object v0, v3

    .line 116
    .end local v2    # "recs":[Lorg/apache/poi/hssf/record/Record;
    .end local v3    # "record":Lorg/apache/poi/hssf/record/Record;
    :cond_4
    :goto_2
    goto :goto_0

    .line 118
    :cond_5
    if-eqz v0, :cond_6

    .line 119
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/eventmodel/EventRecordFactory;->processRecord(Lorg/apache/poi/hssf/record/Record;)Z

    .line 121
    :cond_6
    return-void
.end method
