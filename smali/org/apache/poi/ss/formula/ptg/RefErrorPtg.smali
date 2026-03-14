.class public final Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;
.super Lorg/apache/poi/ss/formula/ptg/OperandPtg;
.source "RefErrorPtg.java"


# static fields
.field private static final SIZE:I = 0x5

.field public static final sid:B = 0x2at


# instance fields
.field private field_1_reserved:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;->field_1_reserved:I

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 37
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    .line 38
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;->field_1_reserved:I

    .line 39
    return-void
.end method


# virtual methods
.method public getDefaultOperandClass()B
    .locals 1

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 52
    const/4 v0, 0x5

    return v0
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->REF:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 46
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x2a

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 47
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;->field_1_reserved:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 48
    return-void
.end method
