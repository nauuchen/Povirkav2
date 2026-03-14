.class final Lorg/apache/poi/ss/formula/OperandClassTransformer;
.super Ljava/lang/Object;
.source "OperandClassTransformer.java"


# instance fields
.field private final _formulaType:Lorg/apache/poi/ss/formula/FormulaType;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/FormulaType;)V
    .locals 0
    .param p1, "formulaType"    # Lorg/apache/poi/ss/formula/FormulaType;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/apache/poi/ss/formula/OperandClassTransformer;->_formulaType:Lorg/apache/poi/ss/formula/FormulaType;

    .line 65
    return-void
.end method

.method private static isSimpleValueFunction(Lorg/apache/poi/ss/formula/ptg/Ptg;)Z
    .locals 6
    .param p0, "token"    # Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 164
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 165
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;

    .line 166
    .local v0, "aptg":Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getDefaultOperandClass()B

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    .line 167
    return v1

    .line 169
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getNumberOfOperands()I

    move-result v2

    .line 170
    .local v2, "numberOfOperands":I
    add-int/lit8 v4, v2, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    .line 171
    invoke-virtual {v0, v4}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getParameterClass(I)B

    move-result v5

    if-eq v5, v3, :cond_1

    .line 172
    return v1

    .line 170
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 175
    .end local v4    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 177
    .end local v0    # "aptg":Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;
    .end local v2    # "numberOfOperands":I
    :cond_3
    return v1
.end method

.method private static isSingleArgSum(Lorg/apache/poi/ss/formula/ptg/Ptg;)Z
    .locals 2
    .param p0, "token"    # Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 156
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    if-eqz v0, :cond_0

    .line 157
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    .line 158
    .local v0, "attrPtg":Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isSum()Z

    move-result v1

    return v1

    .line 160
    .end local v0    # "attrPtg":Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setSimpleValueFuncClass(Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;BZ)V
    .locals 1
    .param p1, "afp"    # Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;
    .param p2, "desiredOperandClass"    # B
    .param p3, "callerForceArrayFlag"    # Z

    .line 288
    const/16 v0, 0x40

    if-nez p3, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->setClass(B)V

    goto :goto_1

    .line 289
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->setClass(B)V

    .line 293
    :goto_1
    return-void
.end method

.method private transformClass(BBZ)B
    .locals 3
    .param p1, "currentOperandClass"    # B
    .param p2, "desiredOperandClass"    # B
    .param p3, "callerForceArrayFlag"    # Z

    .line 182
    if-eqz p2, :cond_3

    const/16 v0, 0x40

    const/16 v1, 0x20

    if-eq p2, v1, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected operand class ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_1
    if-nez p3, :cond_2

    .line 185
    return v1

    .line 189
    :cond_2
    :goto_0
    return v0

    .line 191
    :cond_3
    if-nez p3, :cond_4

    .line 192
    return p1

    .line 194
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private transformFunctionNode(Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;[Lorg/apache/poi/ss/formula/ParseNode;BZ)V
    .locals 7
    .param p1, "afp"    # Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;
    .param p2, "children"    # [Lorg/apache/poi/ss/formula/ParseNode;
    .param p3, "desiredOperandClass"    # B
    .param p4, "callerForceArrayFlag"    # Z

    .line 203
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getDefaultOperandClass()B

    move-result v0

    .line 205
    .local v0, "defaultReturnOperandClass":B
    const-string v1, ")"

    const-string v2, "Unexpected operand class ("

    const/4 v3, 0x0

    const/16 v4, 0x20

    const/16 v5, 0x40

    if-eqz p4, :cond_4

    .line 206
    if-eqz v0, :cond_2

    if-eq v0, v4, :cond_1

    if-ne v0, v5, :cond_0

    move v1, v3

    .line 216
    .local v1, "localForceArrayFlag":Z
    invoke-virtual {p1, v5}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->setClass(B)V

    .line 217
    const/4 v1, 0x0

    .line 218
    goto/16 :goto_3

    .line 224
    .end local v1    # "localForceArrayFlag":Z
    .local v3, "localForceArrayFlag":Z
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 206
    .end local v3    # "localForceArrayFlag":Z
    :cond_1
    move v1, v3

    .line 220
    .restart local v1    # "localForceArrayFlag":Z
    invoke-virtual {p1, v5}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->setClass(B)V

    .line 221
    const/4 v1, 0x1

    .line 222
    goto/16 :goto_3

    .line 208
    .end local v1    # "localForceArrayFlag":Z
    :cond_2
    if-nez p3, :cond_3

    .line 209
    invoke-virtual {p1, v3}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->setClass(B)V

    goto :goto_0

    .line 211
    :cond_3
    invoke-virtual {p1, v5}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->setClass(B)V

    .line 213
    :goto_0
    const/4 v1, 0x0

    .line 214
    .restart local v1    # "localForceArrayFlag":Z
    goto/16 :goto_3

    .line 205
    .end local v1    # "localForceArrayFlag":Z
    :cond_4
    move v6, v3

    .line 228
    .local v6, "localForceArrayFlag":Z
    if-ne v0, p3, :cond_5

    .line 229
    const/4 v1, 0x0

    .line 233
    .end local v6    # "localForceArrayFlag":Z
    .restart local v1    # "localForceArrayFlag":Z
    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->setClass(B)V

    goto/16 :goto_3

    .line 235
    .end local v1    # "localForceArrayFlag":Z
    :cond_5
    if-eqz p3, :cond_b

    if-eq p3, v4, :cond_a

    if-ne p3, v5, :cond_9

    .line 242
    .restart local v6    # "localForceArrayFlag":Z
    if-eqz v0, :cond_7

    if-ne v0, v4, :cond_6

    .line 248
    invoke-virtual {p1, v5}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->setClass(B)V

    .line 249
    goto :goto_1

    .line 251
    :cond_6
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 244
    :cond_7
    invoke-virtual {p1, v3}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->setClass(B)V

    .line 246
    nop

    .line 254
    :goto_1
    if-ne v0, v4, :cond_8

    const/4 v3, 0x1

    :cond_8
    move v1, v3

    .line 255
    .end local v6    # "localForceArrayFlag":Z
    .restart local v1    # "localForceArrayFlag":Z
    goto :goto_3

    .line 235
    .end local v1    # "localForceArrayFlag":Z
    :cond_9
    move v3, v6

    .line 271
    .restart local v3    # "localForceArrayFlag":Z
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 238
    .end local v3    # "localForceArrayFlag":Z
    :cond_a
    invoke-virtual {p1, v4}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->setClass(B)V

    .line 239
    const/4 v1, 0x0

    .line 240
    .restart local v1    # "localForceArrayFlag":Z
    goto :goto_3

    .line 235
    .end local v1    # "localForceArrayFlag":Z
    :cond_b
    move v3, v6

    .line 257
    .restart local v3    # "localForceArrayFlag":Z
    if-eq v0, v4, :cond_d

    if-ne v0, v5, :cond_c

    .line 259
    invoke-virtual {p1, v5}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->setClass(B)V

    .line 260
    goto :goto_2

    .line 265
    :cond_c
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 262
    :cond_d
    invoke-virtual {p1, v4}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->setClass(B)V

    .line 263
    nop

    .line 268
    :goto_2
    const/4 v1, 0x0

    .line 269
    .end local v3    # "localForceArrayFlag":Z
    .restart local v1    # "localForceArrayFlag":Z
    nop

    .line 278
    :goto_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    array-length v3, p2

    if-ge v2, v3, :cond_e

    .line 279
    aget-object v3, p2, v2

    .line 280
    .local v3, "child":Lorg/apache/poi/ss/formula/ParseNode;
    invoke-virtual {p1, v2}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getParameterClass(I)B

    move-result v4

    .line 281
    .local v4, "paramOperandClass":B
    invoke-direct {p0, v3, v4, v1}, Lorg/apache/poi/ss/formula/OperandClassTransformer;->transformNode(Lorg/apache/poi/ss/formula/ParseNode;BZ)V

    .line 278
    .end local v3    # "child":Lorg/apache/poi/ss/formula/ParseNode;
    .end local v4    # "paramOperandClass":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 283
    .end local v2    # "i":I
    :cond_e
    return-void
.end method

.method private transformNode(Lorg/apache/poi/ss/formula/ParseNode;BZ)V
    .locals 6
    .param p1, "node"    # Lorg/apache/poi/ss/formula/ParseNode;
    .param p2, "desiredOperandClass"    # B
    .param p3, "callerForceArrayFlag"    # Z

    .line 99
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ParseNode;->getToken()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    .line 100
    .local v0, "token":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ParseNode;->getChildren()[Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v1

    .line 101
    .local v1, "children":[Lorg/apache/poi/ss/formula/ParseNode;
    invoke-static {v0}, Lorg/apache/poi/ss/formula/OperandClassTransformer;->isSimpleValueFunction(Lorg/apache/poi/ss/formula/ptg/Ptg;)Z

    move-result v2

    .line 103
    .local v2, "isSimpleValueFunc":Z
    if-eqz v2, :cond_2

    .line 104
    const/16 v3, 0x40

    if-ne p2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 105
    .local v3, "localForceArray":Z
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_1

    .line 106
    aget-object v5, v1, v4

    invoke-direct {p0, v5, p2, v3}, Lorg/apache/poi/ss/formula/OperandClassTransformer;->transformNode(Lorg/apache/poi/ss/formula/ParseNode;BZ)V

    .line 105
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 108
    .end local v4    # "i":I
    :cond_1
    move-object v4, v0

    check-cast v4, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;

    invoke-direct {p0, v4, p2, p3}, Lorg/apache/poi/ss/formula/OperandClassTransformer;->setSimpleValueFuncClass(Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;BZ)V

    .line 109
    return-void

    .line 112
    .end local v3    # "localForceArray":Z
    :cond_2
    invoke-static {v0}, Lorg/apache/poi/ss/formula/OperandClassTransformer;->isSingleArgSum(Lorg/apache/poi/ss/formula/ptg/Ptg;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 115
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->SUM:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    .line 119
    :cond_3
    instance-of v3, v0, Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    if-nez v3, :cond_9

    instance-of v3, v0, Lorg/apache/poi/ss/formula/ptg/ControlPtg;

    if-nez v3, :cond_9

    instance-of v3, v0, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;

    if-nez v3, :cond_9

    instance-of v3, v0, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;

    if-nez v3, :cond_9

    instance-of v3, v0, Lorg/apache/poi/ss/formula/ptg/UnionPtg;

    if-nez v3, :cond_9

    instance-of v3, v0, Lorg/apache/poi/ss/formula/ptg/IntersectionPtg;

    if-eqz v3, :cond_4

    goto :goto_2

    .line 136
    :cond_4
    instance-of v3, v0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;

    if-eqz v3, :cond_5

    .line 137
    move-object v3, v0

    check-cast v3, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;

    invoke-direct {p0, v3, v1, p2, p3}, Lorg/apache/poi/ss/formula/OperandClassTransformer;->transformFunctionNode(Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;[Lorg/apache/poi/ss/formula/ParseNode;BZ)V

    .line 138
    return-void

    .line 140
    :cond_5
    array-length v3, v1

    if-lez v3, :cond_7

    .line 141
    sget-object v3, Lorg/apache/poi/ss/formula/ptg/RangePtg;->instance:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    if-ne v0, v3, :cond_6

    .line 143
    return-void

    .line 145
    :cond_6
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Node should not have any children"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 148
    :cond_7
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->isBaseToken()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 150
    return-void

    .line 152
    :cond_8
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v3

    invoke-direct {p0, v3, p2, p3}, Lorg/apache/poi/ss/formula/OperandClassTransformer;->transformClass(BBZ)B

    move-result v3

    invoke-virtual {v0, v3}, Lorg/apache/poi/ss/formula/ptg/Ptg;->setClass(B)V

    .line 153
    return-void

    .line 130
    :cond_9
    :goto_2
    if-nez p2, :cond_a

    const/16 v3, 0x20

    goto :goto_3

    :cond_a
    move v3, p2

    .line 131
    .local v3, "localDesiredOperandClass":B
    :goto_3
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    array-length v5, v1

    if-ge v4, v5, :cond_b

    .line 132
    aget-object v5, v1, v4

    invoke-direct {p0, v5, v3, p3}, Lorg/apache/poi/ss/formula/OperandClassTransformer;->transformNode(Lorg/apache/poi/ss/formula/ParseNode;BZ)V

    .line 131
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 134
    .end local v4    # "i":I
    :cond_b
    return-void
.end method


# virtual methods
.method public transformFormula(Lorg/apache/poi/ss/formula/ParseNode;)V
    .locals 4
    .param p1, "rootNode"    # Lorg/apache/poi/ss/formula/ParseNode;

    .line 73
    sget-object v0, Lorg/apache/poi/ss/formula/OperandClassTransformer$1;->$SwitchMap$org$apache$poi$ss$formula$FormulaType:[I

    iget-object v1, p0, Lorg/apache/poi/ss/formula/OperandClassTransformer;->_formulaType:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/FormulaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 85
    .local v0, "rootNodeOperandClass":B
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incomplete code - formula type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/ss/formula/OperandClassTransformer;->_formulaType:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") not supported yet"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    .end local v0    # "rootNodeOperandClass":B
    :cond_1
    :goto_0
    move v0, v2

    .line 82
    .restart local v0    # "rootNodeOperandClass":B
    const/4 v0, 0x0

    .line 83
    goto :goto_1

    .line 73
    .end local v0    # "rootNodeOperandClass":B
    :cond_2
    move v0, v2

    .line 78
    .restart local v0    # "rootNodeOperandClass":B
    const/16 v0, 0x40

    .line 79
    goto :goto_1

    .line 75
    .end local v0    # "rootNodeOperandClass":B
    :cond_3
    const/16 v0, 0x20

    .line 76
    .restart local v0    # "rootNodeOperandClass":B
    nop

    .line 89
    :goto_1
    invoke-direct {p0, p1, v0, v2}, Lorg/apache/poi/ss/formula/OperandClassTransformer;->transformNode(Lorg/apache/poi/ss/formula/ParseNode;BZ)V

    .line 90
    return-void
.end method
