.class final Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;
.super Ljava/lang/Object;
.source "Offset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/Offset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BaseRef"
.end annotation


# instance fields
.field private final _areaEval:Lorg/apache/poi/ss/formula/eval/AreaEval;

.field private final _firstColumnIndex:I

.field private final _firstRowIndex:I

.field private final _height:I

.field private final _refEval:Lorg/apache/poi/ss/formula/eval/RefEval;

.field private final _width:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/eval/AreaEval;)V
    .locals 2
    .param p1, "ae"    # Lorg/apache/poi/ss/formula/eval/AreaEval;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;->_refEval:Lorg/apache/poi/ss/formula/eval/RefEval;

    .line 135
    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;->_areaEval:Lorg/apache/poi/ss/formula/eval/AreaEval;

    .line 136
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstRow()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;->_firstRowIndex:I

    .line 137
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstColumn()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;->_firstColumnIndex:I

    .line 138
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getLastRow()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstRow()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;->_height:I

    .line 139
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getLastColumn()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstColumn()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;->_width:I

    .line 140
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/eval/RefEval;)V
    .locals 1
    .param p1, "re"    # Lorg/apache/poi/ss/formula/eval/RefEval;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;->_refEval:Lorg/apache/poi/ss/formula/eval/RefEval;

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;->_areaEval:Lorg/apache/poi/ss/formula/eval/AreaEval;

    .line 127
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/RefEval;->getRow()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;->_firstRowIndex:I

    .line 128
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/RefEval;->getColumn()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;->_firstColumnIndex:I

    .line 129
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;->_height:I

    .line 130
    iput v0, p0, Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;->_width:I

    .line 131
    return-void
.end method


# virtual methods
.method public getFirstColumnIndex()I
    .locals 1

    .line 152
    iget v0, p0, Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;->_firstColumnIndex:I

    return v0
.end method

.method public getFirstRowIndex()I
    .locals 1

    .line 149
    iget v0, p0, Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;->_firstRowIndex:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 146
    iget v0, p0, Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;->_height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 143
    iget v0, p0, Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;->_width:I

    return v0
.end method

.method public offset(IIII)Lorg/apache/poi/ss/formula/eval/AreaEval;
    .locals 1
    .param p1, "relFirstRowIx"    # I
    .param p2, "relLastRowIx"    # I
    .param p3, "relFirstColIx"    # I
    .param p4, "relLastColIx"    # I

    .line 157
    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;->_refEval:Lorg/apache/poi/ss/formula/eval/RefEval;

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;->_areaEval:Lorg/apache/poi/ss/formula/eval/AreaEval;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/poi/ss/formula/eval/AreaEval;->offset(IIII)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v0

    return-object v0

    .line 160
    :cond_0
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/poi/ss/formula/eval/RefEval;->offset(IIII)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v0

    return-object v0
.end method
