.class public Lorg/apache/poi/ss/util/CellAddress;
.super Ljava/lang/Object;
.source "CellAddress.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/poi/ss/util/CellAddress;",
        ">;"
    }
.end annotation


# static fields
.field public static final A1:Lorg/apache/poi/ss/util/CellAddress;


# instance fields
.field private final _col:I

.field private final _row:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    sput-object v0, Lorg/apache/poi/ss/util/CellAddress;->A1:Lorg/apache/poi/ss/util/CellAddress;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lorg/apache/poi/ss/util/CellAddress;->_row:I

    .line 51
    iput p2, p0, Lorg/apache/poi/ss/util/CellAddress;->_col:I

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 64
    .local v0, "length":I
    const/4 v1, 0x0

    .line 66
    .local v1, "loc":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 67
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 68
    .local v2, "ch":C
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    goto :goto_1

    .line 66
    .end local v2    # "ch":C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :cond_1
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "sCol":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "sRow":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/apache/poi/ss/util/CellAddress;->_row:I

    .line 78
    invoke-static {v2}, Lorg/apache/poi/ss/util/CellReference;->convertColStringToIndex(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lorg/apache/poi/ss/util/CellAddress;->_col:I

    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 2
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 105
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getRowIndex()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    .line 106
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/util/CellAddress;)V
    .locals 2
    .param p1, "address"    # Lorg/apache/poi/ss/util/CellAddress;

    .line 96
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/util/CellReference;)V
    .locals 2
    .param p1, "reference"    # Lorg/apache/poi/ss/util/CellReference;

    .line 87
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    .line 88
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 35
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/util/CellAddress;

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/util/CellAddress;->compareTo(Lorg/apache/poi/ss/util/CellAddress;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/poi/ss/util/CellAddress;)I
    .locals 3
    .param p1, "other"    # Lorg/apache/poi/ss/util/CellAddress;

    .line 139
    iget v0, p0, Lorg/apache/poi/ss/util/CellAddress;->_row:I

    iget v1, p1, Lorg/apache/poi/ss/util/CellAddress;->_row:I

    sub-int/2addr v0, v1

    .line 140
    .local v0, "r":I
    if-eqz v0, :cond_0

    return v0

    .line 142
    :cond_0
    iget v1, p0, Lorg/apache/poi/ss/util/CellAddress;->_col:I

    iget v2, p1, Lorg/apache/poi/ss/util/CellAddress;->_col:I

    sub-int/2addr v1, v2

    .line 143
    .end local v0    # "r":I
    .local v1, "r":I
    if-eqz v1, :cond_1

    return v1

    .line 145
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 150
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 151
    return v0

    .line 153
    :cond_0
    instance-of v1, p1, Lorg/apache/poi/ss/util/CellAddress;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 154
    return v2

    .line 157
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/poi/ss/util/CellAddress;

    .line 158
    .local v1, "other":Lorg/apache/poi/ss/util/CellAddress;
    iget v3, p0, Lorg/apache/poi/ss/util/CellAddress;->_row:I

    iget v4, v1, Lorg/apache/poi/ss/util/CellAddress;->_row:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lorg/apache/poi/ss/util/CellAddress;->_col:I

    iget v4, v1, Lorg/apache/poi/ss/util/CellAddress;->_col:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public formatAsString()Ljava/lang/String;
    .locals 2

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/apache/poi/ss/util/CellAddress;->_col:I

    invoke-static {v1}, Lorg/apache/poi/ss/util/CellReference;->convertNumToColString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/poi/ss/util/CellAddress;->_row:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumn()I
    .locals 1

    .line 123
    iget v0, p0, Lorg/apache/poi/ss/util/CellAddress;->_col:I

    return v0
.end method

.method public getRow()I
    .locals 1

    .line 114
    iget v0, p0, Lorg/apache/poi/ss/util/CellAddress;->_row:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 164
    iget v0, p0, Lorg/apache/poi/ss/util/CellAddress;->_row:I

    iget v1, p0, Lorg/apache/poi/ss/util/CellAddress;->_col:I

    add-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 169
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellAddress;->formatAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
