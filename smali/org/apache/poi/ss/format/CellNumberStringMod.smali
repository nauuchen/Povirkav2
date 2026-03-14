.class public Lorg/apache/poi/ss/format/CellNumberStringMod;
.super Ljava/lang/Object;
.source "CellNumberStringMod.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/poi/ss/format/CellNumberStringMod;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field public static final AFTER:I = 0x2

.field public static final BEFORE:I = 0x1

.field public static final REPLACE:I = 0x3


# instance fields
.field private end:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

.field private endInclusive:Z

.field private final op:I

.field private final special:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

.field private startInclusive:Z

.field private toAdd:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;Ljava/lang/CharSequence;I)V
    .locals 0
    .param p1, "special"    # Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .param p2, "toAdd"    # Ljava/lang/CharSequence;
    .param p3, "op"    # I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/apache/poi/ss/format/CellNumberStringMod;->special:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 48
    iput-object p2, p0, Lorg/apache/poi/ss/format/CellNumberStringMod;->toAdd:Ljava/lang/CharSequence;

    .line 49
    iput p3, p0, Lorg/apache/poi/ss/format/CellNumberStringMod;->op:I

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;Z)V
    .locals 1
    .param p1, "start"    # Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .param p2, "startInclusive"    # Z
    .param p3, "end"    # Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .param p4, "endInclusive"    # Z

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/apache/poi/ss/format/CellNumberStringMod;->special:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 59
    iput-boolean p2, p0, Lorg/apache/poi/ss/format/CellNumberStringMod;->startInclusive:Z

    .line 60
    iput-object p3, p0, Lorg/apache/poi/ss/format/CellNumberStringMod;->end:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 61
    iput-boolean p4, p0, Lorg/apache/poi/ss/format/CellNumberStringMod;->endInclusive:Z

    .line 62
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/poi/ss/format/CellNumberStringMod;->op:I

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/poi/ss/format/CellNumberStringMod;->toAdd:Ljava/lang/CharSequence;

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;ZC)V
    .locals 2
    .param p1, "start"    # Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .param p2, "startInclusive"    # Z
    .param p3, "end"    # Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .param p4, "endInclusive"    # Z
    .param p5, "toAdd"    # C

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/ss/format/CellNumberStringMod;-><init>(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;Z)V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/format/CellNumberStringMod;->toAdd:Ljava/lang/CharSequence;

    .line 55
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 33
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/format/CellNumberStringMod;

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/format/CellNumberStringMod;->compareTo(Lorg/apache/poi/ss/format/CellNumberStringMod;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/poi/ss/format/CellNumberStringMod;)I
    .locals 3
    .param p1, "that"    # Lorg/apache/poi/ss/format/CellNumberStringMod;

    .line 68
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberStringMod;->special:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    iget v0, v0, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    iget-object v1, p1, Lorg/apache/poi/ss/format/CellNumberStringMod;->special:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    iget v1, v1, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    sub-int/2addr v0, v1

    .line 69
    .local v0, "diff":I
    if-eqz v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/apache/poi/ss/format/CellNumberStringMod;->op:I

    iget v2, p1, Lorg/apache/poi/ss/format/CellNumberStringMod;->op:I

    sub-int/2addr v1, v2

    :goto_0
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    .line 74
    instance-of v0, p1, Lorg/apache/poi/ss/format/CellNumberStringMod;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/format/CellNumberStringMod;

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/format/CellNumberStringMod;->compareTo(Lorg/apache/poi/ss/format/CellNumberStringMod;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getEnd()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberStringMod;->end:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    return-object v0
.end method

.method public getOp()I
    .locals 1

    .line 87
    iget v0, p0, Lorg/apache/poi/ss/format/CellNumberStringMod;->op:I

    return v0
.end method

.method public getSpecial()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberStringMod;->special:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    return-object v0
.end method

.method public getToAdd()Ljava/lang/CharSequence;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberStringMod;->toAdd:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 79
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberStringMod;->special:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/apache/poi/ss/format/CellNumberStringMod;->op:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isEndInclusive()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lorg/apache/poi/ss/format/CellNumberStringMod;->endInclusive:Z

    return v0
.end method

.method public isStartInclusive()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lorg/apache/poi/ss/format/CellNumberStringMod;->startInclusive:Z

    return v0
.end method
