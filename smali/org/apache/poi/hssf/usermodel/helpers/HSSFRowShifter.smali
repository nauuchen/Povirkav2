.class public final Lorg/apache/poi/hssf/usermodel/helpers/HSSFRowShifter;
.super Lorg/apache/poi/ss/usermodel/helpers/RowShifter;
.source "HSSFRowShifter.java"


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lorg/apache/poi/hssf/usermodel/helpers/HSSFRowShifter;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/usermodel/helpers/HSSFRowShifter;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V
    .locals 0
    .param p1, "sh"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 39
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;-><init>(Lorg/apache/poi/ss/usermodel/Sheet;)V

    .line 40
    return-void
.end method


# virtual methods
.method public updateConditionalFormatting(Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 2
    .param p1, "shifter"    # Lorg/apache/poi/ss/formula/FormulaShifter;
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 60
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    const-string/jumbo v1, "updateConditionalFormatting"

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateFormulas(Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 2
    .param p1, "shifter"    # Lorg/apache/poi/ss/formula/FormulaShifter;
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 49
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    const-string/jumbo v1, "updateFormulas"

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateHyperlinks(Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 2
    .param p1, "shifter"    # Lorg/apache/poi/ss/formula/FormulaShifter;
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 65
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    const-string/jumbo v1, "updateHyperlinks"

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateNamedRanges(Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 2
    .param p1, "shifter"    # Lorg/apache/poi/ss/formula/FormulaShifter;
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 44
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    const-string v1, "HSSFRowShifter.updateNamedRanges"

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateRowFormulas(Lorg/apache/poi/ss/usermodel/Row;Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 2
    .param p1, "row"    # Lorg/apache/poi/ss/usermodel/Row;
    .param p2, "shifter"    # Lorg/apache/poi/ss/formula/FormulaShifter;
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 55
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    const-string/jumbo v1, "updateRowFormulas"

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
