.class final Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaPair;
.super Ljava/lang/Object;
.source "DVConstraint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/usermodel/DVConstraint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FormulaPair"
.end annotation


# instance fields
.field private final _formula1:[Lorg/apache/poi/ss/formula/ptg/Ptg;

.field private final _formula2:[Lorg/apache/poi/ss/formula/ptg/Ptg;


# direct methods
.method constructor <init>([Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 2
    .param p1, "formula1"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p2, "formula2"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [Lorg/apache/poi/ss/formula/ptg/Ptg;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/poi/ss/formula/ptg/Ptg;

    :goto_0
    iput-object v1, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaPair;->_formula1:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 47
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, [Lorg/apache/poi/ss/formula/ptg/Ptg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/formula/ptg/Ptg;

    :goto_1
    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaPair;->_formula2:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 48
    return-void
.end method


# virtual methods
.method public getFormula1()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaPair;->_formula1:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    return-object v0
.end method

.method public getFormula2()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaPair;->_formula2:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    return-object v0
.end method
