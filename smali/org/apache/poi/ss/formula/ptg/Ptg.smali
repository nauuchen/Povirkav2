.class public abstract Lorg/apache/poi/ss/formula/ptg/Ptg;
.super Ljava/lang/Object;
.source "Ptg.java"


# static fields
.field public static final CLASS_ARRAY:B = 0x40t

.field public static final CLASS_REF:B = 0x0t

.field public static final CLASS_VALUE:B = 0x20t

.field public static final EMPTY_PTG_ARRAY:[Lorg/apache/poi/ss/formula/ptg/Ptg;


# instance fields
.field private ptgClass:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/poi/ss/formula/ptg/Ptg;

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/Ptg;->EMPTY_PTG_ARRAY:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/apache/poi/ss/formula/ptg/Ptg;->ptgClass:B

    return-void
.end method

.method private static createBasePtg(BLorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 3
    .param p0, "id"    # B
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 122
    packed-switch p0, :pswitch_data_0

    .line 154
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected base token id ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :pswitch_1
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object v0

    .line 151
    :pswitch_2
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/IntPtg;

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/formula/ptg/IntPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object v0

    .line 150
    :pswitch_3
    invoke-static {p1}, Lorg/apache/poi/ss/formula/ptg/BoolPtg;->read(Lorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/BoolPtg;

    move-result-object v0

    return-object v0

    .line 149
    :pswitch_4
    invoke-static {p1}, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->read(Lorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    move-result-object v0

    return-object v0

    .line 148
    :pswitch_5
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object v0

    .line 147
    :pswitch_6
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/StringPtg;

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/formula/ptg/StringPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object v0

    .line 145
    :pswitch_7
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/MissingArgPtg;->instance:Lorg/apache/poi/ss/formula/ptg/Ptg;

    return-object v0

    .line 144
    :pswitch_8
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ControlPtg;

    return-object v0

    .line 143
    :pswitch_9
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/PercentPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    return-object v0

    .line 142
    :pswitch_a
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/UnaryMinusPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    return-object v0

    .line 141
    :pswitch_b
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/UnaryPlusPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    return-object v0

    .line 140
    :pswitch_c
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/RangePtg;->instance:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    return-object v0

    .line 139
    :pswitch_d
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/UnionPtg;->instance:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    return-object v0

    .line 138
    :pswitch_e
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/IntersectionPtg;->instance:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    return-object v0

    .line 137
    :pswitch_f
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/NotEqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    return-object v0

    .line 136
    :pswitch_10
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/GreaterThanPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    return-object v0

    .line 135
    :pswitch_11
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/GreaterEqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    return-object v0

    .line 134
    :pswitch_12
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/EqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    return-object v0

    .line 133
    :pswitch_13
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/LessEqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    return-object v0

    .line 132
    :pswitch_14
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/LessThanPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    return-object v0

    .line 131
    :pswitch_15
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/ConcatPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    return-object v0

    .line 130
    :pswitch_16
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/PowerPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    return-object v0

    .line 129
    :pswitch_17
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/DividePtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    return-object v0

    .line 128
    :pswitch_18
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/MultiplyPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    return-object v0

    .line 127
    :pswitch_19
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/SubtractPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    return-object v0

    .line 126
    :pswitch_1a
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AddPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    return-object v0

    .line 125
    :pswitch_1b
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/TblPtg;

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/formula/ptg/TblPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object v0

    .line 124
    :pswitch_1c
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/ExpPtg;

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/formula/ptg/ExpPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object v0

    .line 123
    :pswitch_1d
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/UnknownPtg;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/ptg/UnknownPtg;-><init>(I)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static createClassifiedPtg(BLorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 4
    .param p0, "id"    # B
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 94
    and-int/lit8 v0, p0, 0x1f

    or-int/lit8 v0, v0, 0x20

    .line 96
    .local v0, "baseId":I
    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    .line 117
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Unknown Ptg in Formula: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :pswitch_0
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;

    invoke-direct {v1, p1}, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object v1

    .line 114
    :pswitch_1
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/DeletedRef3DPtg;

    invoke-direct {v1, p1}, Lorg/apache/poi/ss/formula/ptg/DeletedRef3DPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object v1

    .line 113
    :pswitch_2
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    invoke-direct {v1, p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object v1

    .line 112
    :pswitch_3
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    invoke-direct {v1, p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object v1

    .line 111
    :pswitch_4
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    invoke-direct {v1, p1}, Lorg/apache/poi/ss/formula/ptg/NameXPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object v1

    .line 109
    :pswitch_5
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/AreaNPtg;

    invoke-direct {v1, p1}, Lorg/apache/poi/ss/formula/ptg/AreaNPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object v1

    .line 108
    :pswitch_6
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/RefNPtg;

    invoke-direct {v1, p1}, Lorg/apache/poi/ss/formula/ptg/RefNPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object v1

    .line 107
    :pswitch_7
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;

    invoke-direct {v1, p1}, Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object v1

    .line 106
    :pswitch_8
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;

    invoke-direct {v1, p1}, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object v1

    .line 105
    :pswitch_9
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;

    invoke-direct {v1, p1}, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object v1

    .line 104
    :pswitch_a
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/MemErrPtg;

    invoke-direct {v1, p1}, Lorg/apache/poi/ss/formula/ptg/MemErrPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object v1

    .line 103
    :pswitch_b
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;

    invoke-direct {v1, p1}, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object v1

    .line 102
    :pswitch_c
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    invoke-direct {v1, p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object v1

    .line 101
    :pswitch_d
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    invoke-direct {v1, p1}, Lorg/apache/poi/ss/formula/ptg/RefPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object v1

    .line 100
    :pswitch_e
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/NamePtg;

    invoke-direct {v1, p1}, Lorg/apache/poi/ss/formula/ptg/NamePtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object v1

    .line 99
    :pswitch_f
    invoke-static {p1}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->create(Lorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    move-result-object v1

    return-object v1

    .line 98
    :pswitch_10
    invoke-static {p1}, Lorg/apache/poi/ss/formula/ptg/FuncPtg;->create(Lorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/FuncPtg;

    move-result-object v1

    return-object v1

    .line 97
    :pswitch_11
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/ArrayPtg$Initial;

    invoke-direct {v1, p1}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg$Initial;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x29
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x39
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createPtg(Lorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 5
    .param p0, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 74
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v0

    .line 76
    .local v0, "id":B
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 77
    invoke-static {v0, p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->createBasePtg(BLorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    return-object v1

    .line 80
    :cond_0
    invoke-static {v0, p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->createClassifiedPtg(BLorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    .line 82
    .local v2, "retval":Lorg/apache/poi/ss/formula/ptg/Ptg;
    const/16 v3, 0x60

    const/16 v4, 0x40

    if-lt v0, v3, :cond_1

    .line 83
    invoke-virtual {v2, v4}, Lorg/apache/poi/ss/formula/ptg/Ptg;->setClass(B)V

    goto :goto_0

    .line 84
    :cond_1
    if-lt v0, v4, :cond_2

    .line 85
    invoke-virtual {v2, v1}, Lorg/apache/poi/ss/formula/ptg/Ptg;->setClass(B)V

    goto :goto_0

    .line 87
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lorg/apache/poi/ss/formula/ptg/Ptg;->setClass(B)V

    .line 89
    :goto_0
    return-object v2
.end method

.method public static doesFormulaReferToDeletedCell([Lorg/apache/poi/ss/formula/ptg/Ptg;)Z
    .locals 5
    .param p0, "ptgs"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 287
    move-object v0, p0

    .local v0, "arr$":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 288
    .local v3, "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-static {v3}, Lorg/apache/poi/ss/formula/ptg/Ptg;->isDeletedCellRef(Lorg/apache/poi/ss/formula/ptg/Ptg;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 289
    const/4 v4, 0x1

    return v4

    .line 287
    .end local v3    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 292
    .end local v0    # "arr$":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static getEncodedSize([Lorg/apache/poi/ss/formula/ptg/Ptg;)I
    .locals 6
    .param p0, "ptgs"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "result":I
    move-object v1, p0

    .local v1, "arr$":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 173
    .local v4, "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSize()I

    move-result v5

    add-int/2addr v0, v5

    .line 172
    .end local v4    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 175
    .end local v1    # "arr$":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    return v0
.end method

.method public static getEncodedSizeWithoutArrayData([Lorg/apache/poi/ss/formula/ptg/Ptg;)I
    .locals 6
    .param p0, "ptgs"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "result":I
    move-object v1, p0

    .local v1, "arr$":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 184
    .local v4, "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    instance-of v5, v4, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;

    if-eqz v5, :cond_0

    .line 185
    add-int/lit8 v0, v0, 0x8

    goto :goto_1

    .line 187
    :cond_0
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSize()I

    move-result v5

    add-int/2addr v0, v5

    .line 183
    .end local v4    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 190
    .end local v1    # "arr$":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    return v0
.end method

.method private static isDeletedCellRef(Lorg/apache/poi/ss/formula/ptg/Ptg;)Z
    .locals 2
    .param p0, "ptg"    # Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 296
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->REF_INVALID:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    .line 297
    return v1

    .line 299
    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;

    if-eqz v0, :cond_1

    .line 300
    return v1

    .line 302
    :cond_1
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/DeletedRef3DPtg;

    if-eqz v0, :cond_2

    .line 303
    return v1

    .line 305
    :cond_2
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;

    if-eqz v0, :cond_3

    .line 306
    return v1

    .line 308
    :cond_3
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;

    if-eqz v0, :cond_4

    .line 309
    return v1

    .line 311
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public static readTokens(ILorg/apache/poi/util/LittleEndianInput;)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 6
    .param p0, "size"    # I
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    div-int/lit8 v1, p0, 0x2

    add-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    .local v0, "temp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/ptg/Ptg;>;"
    const/4 v1, 0x0

    .line 49
    .local v1, "pos":I
    const/4 v2, 0x0

    .line 50
    .local v2, "hasArrayPtgs":Z
    :goto_0
    if-ge v1, p0, :cond_1

    .line 51
    invoke-static {p1}, Lorg/apache/poi/ss/formula/ptg/Ptg;->createPtg(Lorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v3

    .line 52
    .local v3, "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    instance-of v4, v3, Lorg/apache/poi/ss/formula/ptg/ArrayPtg$Initial;

    if-eqz v4, :cond_0

    .line 53
    const/4 v2, 0x1

    .line 55
    :cond_0
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSize()I

    move-result v4

    add-int/2addr v1, v4

    .line 56
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .end local v3    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    goto :goto_0

    .line 58
    :cond_1
    if-ne v1, p0, :cond_5

    .line 61
    if-eqz v2, :cond_4

    .line 62
    invoke-static {v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->toPtgArray(Ljava/util/List;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v3

    .line 63
    .local v3, "result":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_3

    .line 64
    aget-object v5, v3, v4

    instance-of v5, v5, Lorg/apache/poi/ss/formula/ptg/ArrayPtg$Initial;

    if-eqz v5, :cond_2

    .line 65
    aget-object v5, v3, v4

    check-cast v5, Lorg/apache/poi/ss/formula/ptg/ArrayPtg$Initial;

    invoke-virtual {v5, p1}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg$Initial;->finishReading(Lorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/ArrayPtg;

    move-result-object v5

    aput-object v5, v3, v4

    .line 63
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 68
    .end local v4    # "i":I
    :cond_3
    return-object v3

    .line 70
    .end local v3    # "result":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_4
    invoke-static {v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->toPtgArray(Ljava/util/List;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v3

    return-object v3

    .line 59
    :cond_5
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Ptg array size mismatch"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static serializePtgs([Lorg/apache/poi/ss/formula/ptg/Ptg;[BI)I
    .locals 8
    .param p0, "ptgs"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p1, "array"    # [B
    .param p2, "offset"    # I

    .line 200
    new-instance v0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;-><init>([BI)V

    .line 202
    .local v0, "out":Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;
    const/4 v1, 0x0

    .line 204
    .local v1, "arrayPtgs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/ptg/Ptg;>;"
    move-object v2, p0

    .local v2, "arr$":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 205
    .local v5, "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {v5, v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->write(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 206
    instance-of v6, v5, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;

    if-eqz v6, :cond_1

    .line 207
    if-nez v1, :cond_0

    .line 208
    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x5

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v6

    .line 210
    :cond_0
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    .end local v5    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 213
    .end local v2    # "arr$":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_2
    if-eqz v1, :cond_3

    .line 214
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 215
    .local v3, "arrayPtg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    move-object v4, v3

    check-cast v4, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;

    .line 216
    .local v4, "p":Lorg/apache/poi/ss/formula/ptg/ArrayPtg;
    invoke-virtual {v4, v0}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->writeTokenValueBytes(Lorg/apache/poi/util/LittleEndianOutput;)I

    .line 217
    .end local v3    # "arrayPtg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v4    # "p":Lorg/apache/poi/ss/formula/ptg/ArrayPtg;
    goto :goto_1

    .line 219
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->getWriteIndex()I

    move-result v2

    sub-int/2addr v2, p2

    return v2
.end method

.method private static toPtgArray(Ljava/util/List;)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/formula/ptg/Ptg;",
            ">;)[",
            "Lorg/apache/poi/ss/formula/ptg/Ptg;"
        }
    .end annotation

    .line 158
    .local p0, "l":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/ptg/Ptg;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/Ptg;->EMPTY_PTG_ARRAY:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    return-object v0

    .line 161
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 162
    .local v0, "result":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 163
    return-object v0
.end method


# virtual methods
.method public abstract getDefaultOperandClass()B
.end method

.method public final getPtgClass()B
    .locals 1

    .line 260
    iget-byte v0, p0, Lorg/apache/poi/ss/formula/ptg/Ptg;->ptgClass:B

    return v0
.end method

.method public final getRVAType()C
    .locals 3

    .line 268
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->isBaseToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    const/16 v0, 0x2e

    return v0

    .line 271
    :cond_0
    iget-byte v0, p0, Lorg/apache/poi/ss/formula/ptg/Ptg;->ptgClass:B

    if-eqz v0, :cond_3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    .line 274
    const/16 v0, 0x41

    return v0

    .line 276
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown operand class ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lorg/apache/poi/ss/formula/ptg/Ptg;->ptgClass:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_2
    const/16 v0, 0x56

    return v0

    .line 272
    :cond_3
    const/16 v0, 0x52

    return v0
.end method

.method public abstract getSize()I
.end method

.method public abstract isBaseToken()Z
.end method

.method public final setClass(B)V
    .locals 2
    .param p1, "thePtgClass"    # B

    .line 250
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->isBaseToken()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iput-byte p1, p0, Lorg/apache/poi/ss/formula/ptg/Ptg;->ptgClass:B

    .line 254
    return-void

    .line 251
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setClass should not be called on a base token"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract toFormulaString()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 240
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract write(Lorg/apache/poi/util/LittleEndianOutput;)V
.end method
