.class public final Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;
.super Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;
.source "CFRecordsAggregate.java"


# static fields
.field private static final MAX_97_2003_CONDTIONAL_FORMAT_RULES:I = 0x3

.field private static final logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final header:Lorg/apache/poi/hssf/record/CFHeaderBase;

.field private final rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/CFRuleBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/hssf/record/CFHeaderBase;[Lorg/apache/poi/hssf/record/CFRuleBase;)V
    .locals 6
    .param p1, "pHeader"    # Lorg/apache/poi/hssf/record/CFHeaderBase;
    .param p2, "pRules"    # [Lorg/apache/poi/hssf/record/CFRuleBase;

    .line 58
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;-><init>()V

    .line 59
    if-eqz p1, :cond_4

    .line 62
    if-eqz p2, :cond_3

    .line 65
    array-length v0, p2

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 66
    sget-object v0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Excel versions before 2007 require that No more than 3 rules may be specified, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " were found,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " this file will cause problems with old Excel versions"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 71
    :cond_0
    array-length v0, p2

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/CFHeaderBase;->getNumberOfConditionalFormats()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 74
    iput-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->header:Lorg/apache/poi/hssf/record/CFHeaderBase;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    .line 76
    move-object v0, p2

    .local v0, "arr$":[Lorg/apache/poi/hssf/record/CFRuleBase;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 77
    .local v3, "pRule":Lorg/apache/poi/hssf/record/CFRuleBase;
    invoke-direct {p0, v3}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->checkRuleType(Lorg/apache/poi/hssf/record/CFRuleBase;)V

    .line 78
    iget-object v4, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .end local v3    # "pRule":Lorg/apache/poi/hssf/record/CFRuleBase;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    .end local v0    # "arr$":[Lorg/apache/poi/hssf/record/CFRuleBase;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    return-void

    .line 72
    :cond_2
    new-instance v0, Lorg/apache/poi/util/RecordFormatException;

    const-string v1, "Mismatch number of rules"

    invoke-direct {v0, v1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rules must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "header must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/hssf/record/CFRuleBase;)V
    .locals 1
    .param p1, "regions"    # [Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "rules"    # [Lorg/apache/poi/hssf/record/CFRuleBase;

    .line 83
    invoke-static {p1, p2}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->createHeader([Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/hssf/record/CFRuleBase;)Lorg/apache/poi/hssf/record/CFHeaderBase;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;-><init>(Lorg/apache/poi/hssf/record/CFHeaderBase;[Lorg/apache/poi/hssf/record/CFRuleBase;)V

    .line 84
    return-void
.end method

.method private checkRuleIndex(I)V
    .locals 3
    .param p1, "idx"    # I

    .line 144
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 148
    return-void

    .line 145
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad rule record index ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") nRules="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkRuleType(Lorg/apache/poi/hssf/record/CFRuleBase;)V
    .locals 2
    .param p1, "r"    # Lorg/apache/poi/hssf/record/CFRuleBase;

    .line 150
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->header:Lorg/apache/poi/hssf/record/CFHeaderBase;

    instance-of v1, v0, Lorg/apache/poi/hssf/record/CFHeaderRecord;

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/apache/poi/hssf/record/CFRuleRecord;

    if-eqz v1, :cond_0

    .line 152
    return-void

    .line 154
    :cond_0
    instance-of v0, v0, Lorg/apache/poi/hssf/record/CFHeader12Record;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lorg/apache/poi/hssf/record/CFRule12Record;

    if-eqz v0, :cond_1

    .line 156
    return-void

    .line 158
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header and Rule must both be CF or both be CF12, can\'t mix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createCFAggregate(Lorg/apache/poi/hssf/model/RecordStream;)Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;
    .locals 6
    .param p0, "rs"    # Lorg/apache/poi/hssf/model/RecordStream;

    .line 106
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    .line 107
    .local v0, "rec":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v1

    const/16 v2, 0x1b0

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v1

    const/16 v3, 0x879

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "next record sid was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " instead of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " or "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as expected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    :cond_1
    :goto_0
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/hssf/record/CFHeaderBase;

    .line 115
    .local v1, "header":Lorg/apache/poi/hssf/record/CFHeaderBase;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/CFHeaderBase;->getNumberOfConditionalFormats()I

    move-result v2

    .line 117
    .local v2, "nRules":I
    new-array v3, v2, [Lorg/apache/poi/hssf/record/CFRuleBase;

    .line 118
    .local v3, "rules":[Lorg/apache/poi/hssf/record/CFRuleBase;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_2

    .line 119
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/hssf/record/CFRuleBase;

    aput-object v5, v3, v4

    .line 118
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 122
    .end local v4    # "i":I
    :cond_2
    new-instance v4, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    invoke-direct {v4, v1, v3}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;-><init>(Lorg/apache/poi/hssf/record/CFHeaderBase;[Lorg/apache/poi/hssf/record/CFRuleBase;)V

    return-object v4
.end method

.method private static createHeader([Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/hssf/record/CFRuleBase;)Lorg/apache/poi/hssf/record/CFHeaderBase;
    .locals 2
    .param p0, "regions"    # [Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p1, "rules"    # [Lorg/apache/poi/hssf/record/CFRuleBase;

    .line 87
    array-length v0, p1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    instance-of v0, v0, Lorg/apache/poi/hssf/record/CFRuleRecord;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/record/CFHeader12Record;

    array-length v1, p1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hssf/record/CFHeader12Record;-><init>([Lorg/apache/poi/ss/util/CellRangeAddress;I)V

    .local v0, "header":Lorg/apache/poi/hssf/record/CFHeaderBase;
    goto :goto_1

    .line 88
    .end local v0    # "header":Lorg/apache/poi/hssf/record/CFHeaderBase;
    :cond_1
    :goto_0
    new-instance v0, Lorg/apache/poi/hssf/record/CFHeaderRecord;

    array-length v1, p1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hssf/record/CFHeaderRecord;-><init>([Lorg/apache/poi/ss/util/CellRangeAddress;I)V

    .line 95
    .restart local v0    # "header":Lorg/apache/poi/hssf/record/CFHeaderBase;
    :goto_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFHeaderBase;->setNeedRecalculation(Z)V

    .line 97
    return-object v0
.end method

.method private static shiftRange(Lorg/apache/poi/ss/formula/FormulaShifter;Lorg/apache/poi/ss/util/CellRangeAddress;I)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 10
    .param p0, "shifter"    # Lorg/apache/poi/ss/formula/FormulaShifter;
    .param p1, "cra"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "currentExternSheetIx"    # I

    .line 270
    new-instance v9, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;-><init>(IIIIZZZZ)V

    .line 271
    .local v0, "aptg":Lorg/apache/poi/ss/formula/ptg/AreaPtg;
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/poi/ss/formula/ptg/Ptg;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 273
    .local v1, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {p0, v1, p2}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 274
    return-object p1

    .line 276
    :cond_0
    aget-object v2, v1, v2

    .line 277
    .local v2, "ptg0":Lorg/apache/poi/ss/formula/ptg/Ptg;
    instance-of v3, v2, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    if-eqz v3, :cond_1

    .line 278
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    .line 279
    .local v3, "bptg":Lorg/apache/poi/ss/formula/ptg/AreaPtg;
    new-instance v4, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;->getFirstRow()I

    move-result v5

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;->getLastRow()I

    move-result v6

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;->getFirstColumn()I

    move-result v7

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;->getLastColumn()I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    return-object v4

    .line 281
    .end local v3    # "bptg":Lorg/apache/poi/ss/formula/ptg/AreaPtg;
    :cond_1
    instance-of v3, v2, Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;

    if-eqz v3, :cond_2

    .line 282
    const/4 v3, 0x0

    return-object v3

    .line 284
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected shifted ptg class ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public addRule(Lorg/apache/poi/hssf/record/CFRuleBase;)V
    .locals 5
    .param p1, "r"    # Lorg/apache/poi/hssf/record/CFRuleBase;

    .line 174
    if-eqz p1, :cond_1

    .line 177
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 178
    sget-object v0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Excel versions before 2007 cannot cope with any more than 3 - this file will cause problems with old Excel versions"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 182
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->checkRuleType(Lorg/apache/poi/hssf/record/CFRuleBase;)V

    .line 183
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->header:Lorg/apache/poi/hssf/record/CFHeaderBase;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFHeaderBase;->setNumberOfConditionalFormats(I)V

    .line 185
    return-void

    .line 175
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cloneCFAggregate()Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;
    .locals 3

    .line 129
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/poi/hssf/record/CFRuleBase;

    .line 130
    .local v0, "newRecs":[Lorg/apache/poi/hssf/record/CFRuleBase;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 131
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->getRule(I)Lorg/apache/poi/hssf/record/CFRuleBase;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/CFRuleBase;->clone()Lorg/apache/poi/hssf/record/CFRuleBase;

    move-result-object v2

    aput-object v2, v0, v1

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->header:Lorg/apache/poi/hssf/record/CFHeaderBase;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/CFHeaderBase;->clone()Lorg/apache/poi/hssf/record/CFHeaderBase;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;-><init>(Lorg/apache/poi/hssf/record/CFHeaderBase;[Lorg/apache/poi/hssf/record/CFRuleBase;)V

    return-object v1
.end method

.method public getHeader()Lorg/apache/poi/hssf/record/CFHeaderBase;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->header:Lorg/apache/poi/hssf/record/CFHeaderBase;

    return-object v0
.end method

.method public getNumberOfRules()I
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRule(I)Lorg/apache/poi/hssf/record/CFRuleBase;
    .locals 1
    .param p1, "idx"    # I

    .line 162
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->checkRuleIndex(I)V

    .line 163
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/CFRuleBase;

    return-object v0
.end method

.method public setRule(ILorg/apache/poi/hssf/record/CFRuleBase;)V
    .locals 2
    .param p1, "idx"    # I
    .param p2, "r"    # Lorg/apache/poi/hssf/record/CFRuleBase;

    .line 166
    if-eqz p2, :cond_0

    .line 169
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->checkRuleIndex(I)V

    .line 170
    invoke-direct {p0, p2}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->checkRuleType(Lorg/apache/poi/hssf/record/CFRuleBase;)V

    .line 171
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 172
    return-void

    .line 167
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "CF"

    .line 196
    .local v1, "type":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->header:Lorg/apache/poi/hssf/record/CFHeaderBase;

    instance-of v2, v2, Lorg/apache/poi/hssf/record/CFHeader12Record;

    if-eqz v2, :cond_0

    .line 197
    const-string v1, "CF12"

    .line 200
    :cond_0
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->header:Lorg/apache/poi/hssf/record/CFHeaderBase;

    if-eqz v2, :cond_1

    .line 202
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    :cond_1
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hssf/record/CFRuleBase;

    .line 205
    .local v4, "cfRule":Lorg/apache/poi/hssf/record/CFRuleBase;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 207
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "cfRule":Lorg/apache/poi/hssf/record/CFRuleBase;
    :cond_2
    const-string v2, "[/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public updateFormulasAfterCellShift(Lorg/apache/poi/ss/formula/FormulaShifter;I)Z
    .locals 8
    .param p1, "shifter"    # Lorg/apache/poi/ss/formula/FormulaShifter;
    .param p2, "currentExternSheetIx"    # I

    .line 222
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->header:Lorg/apache/poi/hssf/record/CFHeaderBase;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->getCellRanges()[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    .line 223
    .local v0, "cellRanges":[Lorg/apache/poi/ss/util/CellRangeAddress;
    const/4 v1, 0x0

    .line 224
    .local v1, "changed":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v2, "temp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/util/CellRangeAddress;>;"
    move-object v3, v0

    .local v3, "arr$":[Lorg/apache/poi/ss/util/CellRangeAddress;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 226
    .local v6, "craOld":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-static {p1, v6, p2}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->shiftRange(Lorg/apache/poi/ss/formula/FormulaShifter;Lorg/apache/poi/ss/util/CellRangeAddress;I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v7

    .line 227
    .local v7, "craNew":Lorg/apache/poi/ss/util/CellRangeAddress;
    if-nez v7, :cond_0

    .line 228
    const/4 v1, 0x1

    .line 229
    goto :goto_1

    .line 231
    :cond_0
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    if-eq v7, v6, :cond_1

    .line 233
    const/4 v1, 0x1

    .line 225
    .end local v6    # "craOld":Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v7    # "craNew":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 237
    .end local v3    # "arr$":[Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_2
    if-eqz v1, :cond_4

    .line 238
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 239
    .local v3, "nRanges":I
    if-nez v3, :cond_3

    .line 240
    const/4 v4, 0x0

    return v4

    .line 242
    :cond_3
    new-array v4, v3, [Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 243
    .local v4, "newRanges":[Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 244
    iget-object v5, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->header:Lorg/apache/poi/hssf/record/CFHeaderBase;

    invoke-virtual {v5, v4}, Lorg/apache/poi/hssf/record/CFHeaderBase;->setCellRanges([Lorg/apache/poi/ss/util/CellRangeAddress;)V

    .line 247
    .end local v3    # "nRanges":I
    .end local v4    # "newRanges":[Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_4
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hssf/record/CFRuleBase;

    .line 249
    .local v4, "rule":Lorg/apache/poi/hssf/record/CFRuleBase;
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/CFRuleBase;->getParsedExpression1()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v5

    .line 250
    .local v5, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    if-eqz v5, :cond_5

    invoke-virtual {p1, v5, p2}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 251
    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/record/CFRuleBase;->setParsedExpression1([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 253
    :cond_5
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/CFRuleBase;->getParsedExpression2()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v5

    .line 254
    if-eqz v5, :cond_6

    invoke-virtual {p1, v5, p2}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 255
    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/record/CFRuleBase;->setParsedExpression2([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 257
    :cond_6
    instance-of v6, v4, Lorg/apache/poi/hssf/record/CFRule12Record;

    if-eqz v6, :cond_7

    .line 258
    move-object v6, v4

    check-cast v6, Lorg/apache/poi/hssf/record/CFRule12Record;

    .line 259
    .local v6, "rule12":Lorg/apache/poi/hssf/record/CFRule12Record;
    invoke-virtual {v6}, Lorg/apache/poi/hssf/record/CFRule12Record;->getParsedExpressionScale()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v5

    .line 260
    if-eqz v5, :cond_7

    invoke-virtual {p1, v5, p2}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 261
    invoke-virtual {v6, v5}, Lorg/apache/poi/hssf/record/CFRule12Record;->setParsedExpressionScale([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 264
    .end local v4    # "rule":Lorg/apache/poi/hssf/record/CFRuleBase;
    .end local v5    # "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v6    # "rule12":Lorg/apache/poi/hssf/record/CFRule12Record;
    :cond_7
    goto :goto_2

    .line 265
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_8
    const/4 v3, 0x1

    return v3
.end method

.method public visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V
    .locals 2
    .param p1, "rv"    # Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;

    .line 212
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->header:Lorg/apache/poi/hssf/record/CFHeaderBase;

    invoke-interface {p1, v0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 213
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/CFRuleBase;

    .line 214
    .local v1, "rule":Lorg/apache/poi/hssf/record/CFRuleBase;
    invoke-interface {p1, v1}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    .end local v1    # "rule":Lorg/apache/poi/hssf/record/CFRuleBase;
    goto :goto_0

    .line 216
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method
