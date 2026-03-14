.class final Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;
.super Ljava/lang/Object;
.source "ParseNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/ParseNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TokenCollector"
.end annotation


# instance fields
.field private _offset:I

.field private final _ptgs:[Lorg/apache/poi/ss/formula/ptg/Ptg;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "tokenCount"    # I

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-array v0, p1, [Lorg/apache/poi/ss/formula/ptg/Ptg;

    iput-object v0, p0, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->_ptgs:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->_offset:I

    .line 176
    return-void
.end method


# virtual methods
.method public add(Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 2
    .param p1, "token"    # Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 191
    if-eqz p1, :cond_0

    .line 194
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->_ptgs:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    iget v1, p0, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->_offset:I

    aput-object p1, v0, v1

    .line 195
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->_offset:I

    .line 196
    return-void

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "token must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createPlaceholder()I
    .locals 2

    .line 187
    iget v0, p0, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->_offset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->_offset:I

    return v0
.end method

.method public getResult()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->_ptgs:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    return-object v0
.end method

.method public setPlaceholder(ILorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "token"    # Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 199
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->_ptgs:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    .line 202
    aput-object p2, v0, p1

    .line 203
    return-void

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid placeholder index ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sumTokenSizes(II)I
    .locals 3
    .param p1, "fromIx"    # I
    .param p2, "toIx"    # I

    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, "result":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 181
    iget-object v2, p0, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->_ptgs:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    .end local v1    # "i":I
    :cond_0
    return v0
.end method
