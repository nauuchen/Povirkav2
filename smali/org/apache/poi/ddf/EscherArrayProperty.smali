.class public final Lorg/apache/poi/ddf/EscherArrayProperty;
.super Lorg/apache/poi/ddf/EscherComplexProperty;
.source "EscherArrayProperty.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/ddf/EscherComplexProperty;",
        "Ljava/lang/Iterable<",
        "[B>;"
    }
.end annotation


# static fields
.field private static final FIXED_SIZE:I = 0x6


# instance fields
.field private emptyComplexPart:Z

.field private sizeIncludesHeaderSize:Z


# direct methods
.method public constructor <init>(SZ[B)V
    .locals 1
    .param p1, "propertyNumber"    # S
    .param p2, "isBlipId"    # Z
    .param p3, "complexData"    # [B

    .line 54
    invoke-static {p3}, Lorg/apache/poi/ddf/EscherArrayProperty;->checkComplexData([B)[B

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ddf/EscherComplexProperty;-><init>(SZ[B)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->sizeIncludesHeaderSize:Z

    .line 55
    return-void
.end method

.method public constructor <init>(S[B)V
    .locals 2
    .param p1, "id"    # S
    .param p2, "complexData"    # [B

    .line 49
    invoke-static {p2}, Lorg/apache/poi/ddf/EscherArrayProperty;->checkComplexData([B)[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ddf/EscherComplexProperty;-><init>(S[B)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->sizeIncludesHeaderSize:Z

    .line 50
    if-eqz p2, :cond_1

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->emptyComplexPart:Z

    .line 51
    return-void
.end method

.method private static checkComplexData([B)[B
    .locals 1
    .param p0, "complexData"    # [B

    .line 58
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    return-object p0

    .line 59
    :cond_1
    :goto_0
    const/4 v0, 0x6

    new-array v0, v0, [B

    return-object v0
.end method

.method private static getActualSizeOfElements(S)I
    .locals 1
    .param p0, "sizeOfElements"    # S

    .line 207
    if-gez p0, :cond_0

    .line 208
    neg-int v0, p0

    shr-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    return v0

    .line 210
    :cond_0
    return p0
.end method


# virtual methods
.method public getElement(I)[B
    .locals 6
    .param p1, "index"    # I

    .line 110
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getSizeOfElements()S

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getActualSizeOfElements(S)I

    move-result v0

    .line 111
    .local v0, "actualSize":I
    new-array v1, v0, [B

    .line 112
    .local v1, "result":[B
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getComplexData()[B

    move-result-object v2

    mul-int v3, p1, v0

    add-int/lit8 v3, v3, 0x6

    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v2, v3, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    return-object v1
.end method

.method public getNumberOfElementsInArray()I
    .locals 2

    .line 66
    iget-boolean v0, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->emptyComplexPart:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getComplexData()[B

    move-result-object v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v1

    :goto_0
    return v1
.end method

.method public getNumberOfElementsInMemory()I
    .locals 2

    .line 80
    iget-boolean v0, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->emptyComplexPart:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getComplexData()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getSizeOfElements()S
    .locals 2

    .line 94
    iget-boolean v0, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->emptyComplexPart:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getComplexData()[B

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "[B>;"
        }
    .end annotation

    .line 215
    new-instance v0, Lorg/apache/poi/ddf/EscherArrayProperty$1;

    invoke-direct {v0, p0}, Lorg/apache/poi/ddf/EscherArrayProperty$1;-><init>(Lorg/apache/poi/ddf/EscherArrayProperty;)V

    return-object v0
.end method

.method public serializeSimplePart([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 193
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getId()S

    move-result v0

    invoke-static {p1, p2, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 194
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getComplexData()[B

    move-result-object v0

    array-length v0, v0

    .line 195
    .local v0, "recordSize":I
    iget-boolean v1, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->sizeIncludesHeaderSize:Z

    if-nez v1, :cond_0

    .line 196
    add-int/lit8 v0, v0, -0x6

    .line 198
    :cond_0
    add-int/lit8 v1, p2, 0x2

    invoke-static {p1, v1, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 199
    const/4 v1, 0x6

    return v1
.end method

.method public setArrayData([BI)I
    .locals 6
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .line 165
    iget-boolean v0, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->emptyComplexPart:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 166
    new-array v0, v1, [B

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherArrayProperty;->setComplexData([B)V

    goto :goto_0

    .line 168
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    .line 170
    .local v0, "numElements":S
    add-int/lit8 v2, p2, 0x4

    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v2

    .line 174
    .local v2, "sizeOfElements":S
    invoke-static {v2}, Lorg/apache/poi/ddf/EscherArrayProperty;->getActualSizeOfElements(S)I

    move-result v3

    mul-int v3, v3, v0

    .line 175
    .local v3, "arraySize":I
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getComplexData()[B

    move-result-object v4

    array-length v4, v4

    if-ne v3, v4, :cond_1

    .line 177
    add-int/lit8 v4, v3, 0x6

    new-array v4, v4, [B

    invoke-virtual {p0, v4}, Lorg/apache/poi/ddf/EscherArrayProperty;->setComplexData([B)V

    .line 178
    iput-boolean v1, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->sizeIncludesHeaderSize:Z

    .line 180
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getComplexData()[B

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getComplexData()[B

    move-result-object v5

    array-length v5, v5

    invoke-static {p1, p2, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    .end local v0    # "numElements":S
    .end local v2    # "sizeOfElements":S
    .end local v3    # "arraySize":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getComplexData()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public setElement(I[B)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "element"    # [B

    .line 117
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getSizeOfElements()S

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getActualSizeOfElements(S)I

    move-result v0

    .line 118
    .local v0, "actualSize":I
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getComplexData()[B

    move-result-object v1

    mul-int v2, p1, v0

    add-int/lit8 v2, v2, 0x6

    const/4 v3, 0x0

    invoke-static {p2, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    return-void
.end method

.method public setNumberOfElementsInArray(I)V
    .locals 5
    .param p1, "numberOfElements"    # I

    .line 70
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getSizeOfElements()S

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getActualSizeOfElements(S)I

    move-result v0

    mul-int v0, v0, p1

    add-int/lit8 v0, v0, 0x6

    .line 71
    .local v0, "expectedArraySize":I
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getComplexData()[B

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 72
    new-array v1, v0, [B

    .line 73
    .local v1, "newArray":[B
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getComplexData()[B

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getComplexData()[B

    move-result-object v4

    array-length v4, v4

    invoke-static {v3, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    invoke-virtual {p0, v1}, Lorg/apache/poi/ddf/EscherArrayProperty;->setComplexData([B)V

    .line 76
    .end local v1    # "newArray":[B
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getComplexData()[B

    move-result-object v1

    int-to-short v3, p1

    invoke-static {v1, v2, v3}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 77
    return-void
.end method

.method public setNumberOfElementsInMemory(I)V
    .locals 4
    .param p1, "numberOfElements"    # I

    .line 84
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getSizeOfElements()S

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getActualSizeOfElements(S)I

    move-result v0

    mul-int v0, v0, p1

    add-int/lit8 v0, v0, 0x6

    .line 85
    .local v0, "expectedArraySize":I
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getComplexData()[B

    move-result-object v1

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 86
    new-array v1, v0, [B

    .line 87
    .local v1, "newArray":[B
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getComplexData()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    invoke-virtual {p0, v1}, Lorg/apache/poi/ddf/EscherArrayProperty;->setComplexData([B)V

    .line 90
    .end local v1    # "newArray":[B
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getComplexData()[B

    move-result-object v1

    const/4 v2, 0x2

    int-to-short v3, p1

    invoke-static {v1, v2, v3}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 91
    return-void
.end method

.method public setSizeOfElements(I)V
    .locals 5
    .param p1, "sizeOfElements"    # I

    .line 98
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getComplexData()[B

    move-result-object v0

    int-to-short v1, p1

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 100
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getNumberOfElementsInArray()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getSizeOfElements()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/ddf/EscherArrayProperty;->getActualSizeOfElements(S)I

    move-result v1

    mul-int v0, v0, v1

    const/4 v1, 0x6

    add-int/2addr v0, v1

    .line 101
    .local v0, "expectedArraySize":I
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getComplexData()[B

    move-result-object v2

    array-length v2, v2

    if-eq v0, v2, :cond_0

    .line 103
    new-array v2, v0, [B

    .line 104
    .local v2, "newArray":[B
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getComplexData()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    invoke-virtual {p0, v2}, Lorg/apache/poi/ddf/EscherArrayProperty;->setComplexData([B)V

    .line 107
    .end local v2    # "newArray":[B
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .local v0, "results":Ljava/lang/StringBuilder;
    const-string v1, "propNum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getPropertyNumber()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    const-string v1, ", propName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getPropertyNumber()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/ddf/EscherProperties;->getPropertyName(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, ", complex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->isComplex()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 127
    const-string v1, ", blipId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->isBlipId()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, ", data: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v1, "    {EscherArrayProperty:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v1, "     Num Elements: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getNumberOfElementsInArray()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, "     Num Elements In Memory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getNumberOfElementsInMemory()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    const-string v1, "     Size of elements: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getSizeOfElements()S

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getNumberOfElementsInArray()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 134
    const-string v3, "     Element "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Lorg/apache/poi/ddf/EscherArrayProperty;->getElement(I)[B

    move-result-object v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v1    # "i":I
    :cond_0
    const-string/jumbo v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "tab"    # Ljava/lang/String;

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id=\"0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getId()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" blipId=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->isBlipId()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\">\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getNumberOfElementsInArray()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 148
    const-string v2, "\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<Element>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Lorg/apache/poi/ddf/EscherArrayProperty;->getElement(I)[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</Element>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
