.class final Lorg/apache/poi/ss/formula/ParseNode;
.super Ljava/lang/Object;
.source "ParseNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lorg/apache/poi/ss/formula/ParseNode;


# instance fields
.field private final _children:[Lorg/apache/poi/ss/formula/ParseNode;

.field private _isIf:Z

.field private final _token:Lorg/apache/poi/ss/formula/ptg/Ptg;

.field private final _tokenCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/poi/ss/formula/ParseNode;

    sput-object v0, Lorg/apache/poi/ss/formula/ParseNode;->EMPTY_ARRAY:[Lorg/apache/poi/ss/formula/ParseNode;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 1
    .param p1, "token"    # Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 58
    sget-object v0, Lorg/apache/poi/ss/formula/ParseNode;->EMPTY_ARRAY:[Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ParseNode;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;)V
    .locals 2
    .param p1, "token"    # Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p2, "child0"    # Lorg/apache/poi/ss/formula/ParseNode;

    .line 61
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/poi/ss/formula/ParseNode;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ParseNode;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;Lorg/apache/poi/ss/formula/ParseNode;)V
    .locals 2
    .param p1, "token"    # Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p2, "child0"    # Lorg/apache/poi/ss/formula/ParseNode;
    .param p3, "child1"    # Lorg/apache/poi/ss/formula/ParseNode;

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/poi/ss/formula/ParseNode;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ParseNode;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ParseNode;)V
    .locals 3
    .param p1, "token"    # Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p2, "children"    # [Lorg/apache/poi/ss/formula/ParseNode;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-eqz p1, :cond_2

    .line 44
    iput-object p1, p0, Lorg/apache/poi/ss/formula/ParseNode;->_token:Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 45
    invoke-virtual {p2}, [Lorg/apache/poi/ss/formula/ParseNode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/formula/ParseNode;

    iput-object v0, p0, Lorg/apache/poi/ss/formula/ParseNode;->_children:[Lorg/apache/poi/ss/formula/ParseNode;

    .line 46
    invoke-static {p1}, Lorg/apache/poi/ss/formula/ParseNode;->isIf(Lorg/apache/poi/ss/formula/ptg/Ptg;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/ss/formula/ParseNode;->_isIf:Z

    .line 47
    const/4 v0, 0x1

    .line 48
    .local v0, "tokenCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 49
    aget-object v2, p2, v1

    invoke-direct {v2}, Lorg/apache/poi/ss/formula/ParseNode;->getTokenCount()I

    move-result v2

    add-int/2addr v0, v2

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    .end local v1    # "i":I
    :cond_0
    iget-boolean v1, p0, Lorg/apache/poi/ss/formula/ParseNode;->_isIf:Z

    if-eqz v1, :cond_1

    .line 53
    array-length v1, p2

    add-int/2addr v0, v1

    .line 55
    :cond_1
    iput v0, p0, Lorg/apache/poi/ss/formula/ParseNode;->_tokenCount:I

    .line 56
    return-void

    .line 42
    .end local v0    # "tokenCount":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "token must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private collectIfPtgs(Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;)V
    .locals 9
    .param p1, "temp"    # Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;

    .line 110
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getChildren()[Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/formula/ParseNode;->collectPtgs(Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;)V

    .line 113
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->createPlaceholder()I

    move-result v0

    .line 116
    .local v0, "ifAttrIndex":I
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getChildren()[Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v1, p1}, Lorg/apache/poi/ss/formula/ParseNode;->collectPtgs(Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;)V

    .line 119
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->createPlaceholder()I

    move-result v1

    .line 120
    .local v1, "skipAfterTrueParamIndex":I
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3, v1}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->sumTokenSizes(II)I

    move-result v3

    .line 122
    .local v3, "trueParamSize":I
    add-int/lit8 v4, v3, 0x4

    invoke-static {v4}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->createIf(I)Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    move-result-object v4

    .line 124
    .local v4, "attrIf":Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getChildren()[Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-le v5, v7, :cond_0

    .line 128
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getChildren()[Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v5

    aget-object v5, v5, v7

    invoke-direct {v5, p1}, Lorg/apache/poi/ss/formula/ParseNode;->collectPtgs(Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;)V

    .line 130
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->createPlaceholder()I

    move-result v5

    .line 132
    .local v5, "skipAfterFalseParamIndex":I
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p1, v7, v5}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->sumTokenSizes(II)I

    move-result v7

    .line 134
    .local v7, "falseParamSize":I
    add-int/lit8 v8, v7, 0x4

    add-int/lit8 v8, v8, 0x4

    sub-int/2addr v8, v2

    invoke-static {v8}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->createSkip(I)Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    move-result-object v2

    .line 135
    .local v2, "attrSkipAfterTrue":Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    invoke-static {v6}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->createSkip(I)Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    move-result-object v6

    .line 137
    .local v6, "attrSkipAfterFalse":Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    invoke-virtual {p1, v0, v4}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->setPlaceholder(ILorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 138
    invoke-virtual {p1, v1, v2}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->setPlaceholder(ILorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 139
    invoke-virtual {p1, v5, v6}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->setPlaceholder(ILorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 140
    .end local v2    # "attrSkipAfterTrue":Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    .end local v5    # "skipAfterFalseParamIndex":I
    .end local v6    # "attrSkipAfterFalse":Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    .end local v7    # "falseParamSize":I
    goto :goto_0

    .line 142
    :cond_0
    invoke-static {v6}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->createSkip(I)Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    move-result-object v2

    .line 144
    .restart local v2    # "attrSkipAfterTrue":Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    invoke-virtual {p1, v0, v4}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->setPlaceholder(ILorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 145
    invoke-virtual {p1, v1, v2}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->setPlaceholder(ILorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 147
    .end local v2    # "attrSkipAfterTrue":Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/ss/formula/ParseNode;->_token:Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-virtual {p1, v2}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->add(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 148
    return-void
.end method

.method private collectPtgs(Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;)V
    .locals 3
    .param p1, "temp"    # Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;

    .line 86
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ParseNode;->_token:Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/ParseNode;->isIf(Lorg/apache/poi/ss/formula/ptg/Ptg;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ParseNode;->collectIfPtgs(Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;)V

    .line 88
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ParseNode;->_token:Lorg/apache/poi/ss/formula/ptg/Ptg;

    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;

    if-nez v1, :cond_2

    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 91
    .local v1, "isPreFixOperator":Z
    :goto_1
    if-eqz v1, :cond_3

    .line 92
    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->add(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 94
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getChildren()[Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 95
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getChildren()[Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-direct {v2, p1}, Lorg/apache/poi/ss/formula/ParseNode;->collectPtgs(Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;)V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 97
    .end local v0    # "i":I
    :cond_4
    if-nez v1, :cond_5

    .line 98
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ParseNode;->_token:Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->add(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 100
    :cond_5
    return-void
.end method

.method private getTokenCount()I
    .locals 1

    .line 67
    iget v0, p0, Lorg/apache/poi/ss/formula/ParseNode;->_tokenCount:I

    return v0
.end method

.method private static isIf(Lorg/apache/poi/ss/formula/ptg/Ptg;)Z
    .locals 3
    .param p0, "token"    # Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 151
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    if-eqz v0, :cond_0

    .line 152
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    .line 153
    .local v0, "func":Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IF"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    const/4 v1, 0x1

    return v1

    .line 157
    .end local v0    # "func":Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static toTokenArray(Lorg/apache/poi/ss/formula/ParseNode;)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 2
    .param p0, "rootNode"    # Lorg/apache/poi/ss/formula/ParseNode;

    .line 81
    new-instance v0, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getTokenCount()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;-><init>(I)V

    .line 82
    .local v0, "temp":Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/ParseNode;->collectPtgs(Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;)V

    .line 83
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->getResult()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getChildren()[Lorg/apache/poi/ss/formula/ParseNode;
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ParseNode;->_children:[Lorg/apache/poi/ss/formula/ParseNode;

    return-object v0
.end method

.method public getEncodedSize()I
    .locals 4

    .line 70
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ParseNode;->_token:Lorg/apache/poi/ss/formula/ptg/Ptg;

    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSize()I

    move-result v0

    .line 71
    .local v0, "result":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lorg/apache/poi/ss/formula/ParseNode;->_children:[Lorg/apache/poi/ss/formula/ParseNode;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 72
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/ParseNode;->getEncodedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 74
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public getToken()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ParseNode;->_token:Lorg/apache/poi/ss/formula/ptg/Ptg;

    return-object v0
.end method
