.class public abstract Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;
.super Lorg/apache/poi/ss/formula/ptg/OperationPtg;
.source "AbstractFunctionPtg.java"


# static fields
.field private static final FUNCTION_INDEX_EXTERNAL:S = 0xffs

.field public static final FUNCTION_NAME_IF:Ljava/lang/String; = "IF"


# instance fields
.field private final _functionIndex:S

.field private final _numberOfArgs:I

.field private final paramClass:[B

.field private final returnClass:B


# direct methods
.method protected constructor <init>(II[BI)V
    .locals 3
    .param p1, "functionIndex"    # I
    .param p2, "pReturnClass"    # I
    .param p3, "paramTypes"    # [B
    .param p4, "nParams"    # I

    .line 47
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperationPtg;-><init>()V

    .line 48
    iput p4, p0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->_numberOfArgs:I

    .line 49
    const/16 v0, -0x8000

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_1

    .line 51
    int-to-short v0, p1

    iput-short v0, p0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->_functionIndex:S

    .line 52
    const/16 v0, -0x80

    if-lt p2, v0, :cond_0

    const/16 v0, 0x7f

    if-gt p2, v0, :cond_0

    .line 54
    int-to-byte v0, p2

    iput-byte v0, p0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->returnClass:B

    .line 55
    iput-object p3, p0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->paramClass:[B

    .line 56
    return-void

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pReturnClass "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be cast to byte"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "functionIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be cast to short"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static appendArgs(Ljava/lang/StringBuilder;I[Ljava/lang/String;)V
    .locals 2
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "firstArgIx"    # I
    .param p2, "operands"    # [Ljava/lang/String;

    .line 106
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    move v0, p1

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 108
    if-le v0, p1, :cond_0

    .line 109
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    :cond_0
    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    .end local v0    # "i":I
    :cond_1
    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    return-void
.end method

.method public static final isBuiltInFunctionName(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 127
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;->lookupIndexByName(Ljava/lang/String;)S

    move-result v0

    .line 128
    .local v0, "ix":S
    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected static lookupIndex(Ljava/lang/String;)S
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 149
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;->lookupIndexByName(Ljava/lang/String;)S

    move-result v0

    .line 150
    .local v0, "ix":S
    if-gez v0, :cond_0

    .line 151
    const/16 v1, 0xff

    return v1

    .line 153
    :cond_0
    return v0
.end method


# virtual methods
.method public getDefaultOperandClass()B
    .locals 1

    .line 157
    iget-byte v0, p0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->returnClass:B

    return v0
.end method

.method public final getFunctionIndex()S
    .locals 1

    .line 71
    iget-short v0, p0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->_functionIndex:S

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 78
    iget-short v0, p0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->_functionIndex:S

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->lookupName(S)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNumberOfOperands()I
    .locals 1

    .line 74
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->_numberOfArgs:I

    return v0
.end method

.method public final getParameterClass(I)B
    .locals 2
    .param p1, "index"    # I

    .line 161
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->paramClass:[B

    array-length v1, v0

    if-lt p1, v1, :cond_0

    .line 165
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    return v0

    .line 167
    :cond_0
    aget-byte v0, v0, p1

    return v0
.end method

.method public abstract getSize()I
.end method

.method public final isBaseToken()Z
    .locals 1

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public final isExternalFunction()Z
    .locals 2

    .line 85
    iget-short v0, p0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->_functionIndex:S

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final lookupName(S)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # S

    .line 132
    const/16 v0, 0xff

    if-ne p1, v0, :cond_0

    .line 133
    const-string v0, "#external#"

    return-object v0

    .line 135
    :cond_0
    invoke-static {p1}, Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;->getFunctionByIndex(I)Lorg/apache/poi/ss/formula/function/FunctionMetadata;

    move-result-object v0

    .line 136
    .local v0, "fm":Lorg/apache/poi/ss/formula/function/FunctionMetadata;
    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 137
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad function index ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final toFormulaString()Ljava/lang/String;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toFormulaString([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "operands"    # [Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->isExternalFunction()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 96
    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->appendArgs(Ljava/lang/StringBuilder;I[Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-static {v0, v2, p1}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->appendArgs(Ljava/lang/StringBuilder;I[Ljava/lang/String;)V

    .line 102
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 63
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-short v1, p0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->_functionIndex:S

    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->lookupName(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, " nArgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->_numberOfArgs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
