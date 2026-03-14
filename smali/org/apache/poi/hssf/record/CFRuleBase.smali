.class public abstract Lorg/apache/poi/hssf/record/CFRuleBase;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "CFRuleBase.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/CFRuleBase$ComparisonOperator;
    }
.end annotation


# static fields
.field public static final CONDITION_TYPE_CELL_VALUE_IS:B = 0x1t

.field public static final CONDITION_TYPE_COLOR_SCALE:B = 0x3t

.field public static final CONDITION_TYPE_DATA_BAR:B = 0x4t

.field public static final CONDITION_TYPE_FILTER:B = 0x5t

.field public static final CONDITION_TYPE_FORMULA:B = 0x2t

.field public static final CONDITION_TYPE_ICON_SET:B = 0x6t

.field public static final TEMPLATE_ABOVE_AVERAGE:I = 0x19

.field public static final TEMPLATE_ABOVE_OR_EQUAL_TO_AVERAGE:I = 0x1d

.field public static final TEMPLATE_BELOW_AVERAGE:I = 0x1a

.field public static final TEMPLATE_BELOW_OR_EQUAL_TO_AVERAGE:I = 0x1e

.field public static final TEMPLATE_CELL_VALUE:I = 0x0

.field public static final TEMPLATE_COLOR_SCALE_FORMATTING:I = 0x2

.field public static final TEMPLATE_CONTAINS_BLANKS:I = 0x9

.field public static final TEMPLATE_CONTAINS_ERRORS:I = 0xb

.field public static final TEMPLATE_CONTAINS_NO_BLANKS:I = 0xa

.field public static final TEMPLATE_CONTAINS_NO_ERRORS:I = 0xc

.field public static final TEMPLATE_CONTAINS_TEXT:I = 0x8

.field public static final TEMPLATE_DATA_BAR_FORMATTING:I = 0x3

.field public static final TEMPLATE_DUPLICATE_VALUES:I = 0x1b

.field public static final TEMPLATE_FILTER:I = 0x5

.field public static final TEMPLATE_FORMULA:I = 0x1

.field public static final TEMPLATE_ICON_SET_FORMATTING:I = 0x4

.field public static final TEMPLATE_LAST_7_DAYS:I = 0x12

.field public static final TEMPLATE_LAST_MONTH:I = 0x13

.field public static final TEMPLATE_LAST_WEEK:I = 0x17

.field public static final TEMPLATE_NEXT_MONTH:I = 0x14

.field public static final TEMPLATE_NEXT_WEEK:I = 0x16

.field public static final TEMPLATE_THIS_MONTH:I = 0x18

.field public static final TEMPLATE_THIS_WEEK:I = 0x15

.field public static final TEMPLATE_TODAY:I = 0xf

.field public static final TEMPLATE_TOMORROW:I = 0x10

.field public static final TEMPLATE_UNIQUE_VALUES:I = 0x7

.field public static final TEMPLATE_YESTERDAY:I = 0x11

.field static final align:Lorg/apache/poi/util/BitField;

.field static final alignHor:Lorg/apache/poi/util/BitField;

.field static final alignIndent:Lorg/apache/poi/util/BitField;

.field static final alignJustLast:Lorg/apache/poi/util/BitField;

.field static final alignRot:Lorg/apache/poi/util/BitField;

.field static final alignShrin:Lorg/apache/poi/util/BitField;

.field static final alignTextDir:Lorg/apache/poi/util/BitField;

.field static final alignVer:Lorg/apache/poi/util/BitField;

.field static final alignWrap:Lorg/apache/poi/util/BitField;

.field static final bord:Lorg/apache/poi/util/BitField;

.field static final bordBlTr:Lorg/apache/poi/util/BitField;

.field static final bordBot:Lorg/apache/poi/util/BitField;

.field static final bordLeft:Lorg/apache/poi/util/BitField;

.field static final bordRight:Lorg/apache/poi/util/BitField;

.field static final bordTlBr:Lorg/apache/poi/util/BitField;

.field static final bordTop:Lorg/apache/poi/util/BitField;

.field static final fmtBlockBits:Lorg/apache/poi/util/BitField;

.field static final font:Lorg/apache/poi/util/BitField;

.field protected static final logger:Lorg/apache/poi/util/POILogger;

.field static final mergeCell:Lorg/apache/poi/util/BitField;

.field static final modificationBits:Lorg/apache/poi/util/BitField;

.field static final notUsed2:Lorg/apache/poi/util/BitField;

.field static final patt:Lorg/apache/poi/util/BitField;

.field static final pattBgCol:Lorg/apache/poi/util/BitField;

.field static final pattCol:Lorg/apache/poi/util/BitField;

.field static final pattStyle:Lorg/apache/poi/util/BitField;

.field static final prot:Lorg/apache/poi/util/BitField;

.field static final protHidden:Lorg/apache/poi/util/BitField;

.field static final protLocked:Lorg/apache/poi/util/BitField;

.field static final undocumented:Lorg/apache/poi/util/BitField;


# instance fields
.field protected _borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

.field protected _fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

.field protected _patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

.field private comparison_operator:B

.field private condition_type:B

.field protected formatting_not_used:S

.field protected formatting_options:I

.field private formula1:Lorg/apache/poi/ss/formula/Formula;

.field private formula2:Lorg/apache/poi/ss/formula/Formula;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-class v0, Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->logger:Lorg/apache/poi/util/POILogger;

    .line 98
    const v0, 0x3fffff

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->modificationBits:Lorg/apache/poi/util/BitField;

    .line 99
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->alignHor:Lorg/apache/poi/util/BitField;

    .line 100
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->alignVer:Lorg/apache/poi/util/BitField;

    .line 101
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->alignWrap:Lorg/apache/poi/util/BitField;

    .line 102
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->alignRot:Lorg/apache/poi/util/BitField;

    .line 103
    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->alignJustLast:Lorg/apache/poi/util/BitField;

    .line 104
    const/16 v0, 0x20

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->alignIndent:Lorg/apache/poi/util/BitField;

    .line 105
    const/16 v0, 0x40

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->alignShrin:Lorg/apache/poi/util/BitField;

    .line 106
    const/16 v0, 0x80

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->mergeCell:Lorg/apache/poi/util/BitField;

    .line 107
    const/16 v0, 0x100

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->protLocked:Lorg/apache/poi/util/BitField;

    .line 108
    const/16 v0, 0x200

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->protHidden:Lorg/apache/poi/util/BitField;

    .line 109
    const/16 v0, 0x400

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->bordLeft:Lorg/apache/poi/util/BitField;

    .line 110
    const/16 v0, 0x800

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->bordRight:Lorg/apache/poi/util/BitField;

    .line 111
    const/16 v0, 0x1000

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->bordTop:Lorg/apache/poi/util/BitField;

    .line 112
    const/16 v0, 0x2000

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->bordBot:Lorg/apache/poi/util/BitField;

    .line 113
    const/16 v0, 0x4000

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->bordTlBr:Lorg/apache/poi/util/BitField;

    .line 114
    const v0, 0x8000

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->bordBlTr:Lorg/apache/poi/util/BitField;

    .line 115
    const/high16 v0, 0x10000

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->pattStyle:Lorg/apache/poi/util/BitField;

    .line 116
    const/high16 v0, 0x20000

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->pattCol:Lorg/apache/poi/util/BitField;

    .line 117
    const/high16 v0, 0x40000

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->pattBgCol:Lorg/apache/poi/util/BitField;

    .line 118
    const/high16 v0, 0x380000

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->notUsed2:Lorg/apache/poi/util/BitField;

    .line 119
    const/high16 v0, 0x3c00000

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->undocumented:Lorg/apache/poi/util/BitField;

    .line 120
    const/high16 v0, 0x7c000000

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->fmtBlockBits:Lorg/apache/poi/util/BitField;

    .line 121
    const/high16 v0, 0x4000000

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->font:Lorg/apache/poi/util/BitField;

    .line 122
    const/high16 v0, 0x8000000

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->align:Lorg/apache/poi/util/BitField;

    .line 123
    const/high16 v0, 0x10000000

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->bord:Lorg/apache/poi/util/BitField;

    .line 124
    const/high16 v0, 0x20000000

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->patt:Lorg/apache/poi/util/BitField;

    .line 125
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->prot:Lorg/apache/poi/util/BitField;

    .line 126
    const/high16 v0, -0x80000000

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->alignTextDir:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method protected constructor <init>(BB)V
    .locals 1
    .param p1, "conditionType"    # B
    .param p2, "comparisonOperation"    # B

    .line 148
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 149
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setConditionType(B)V

    .line 150
    invoke-virtual {p0, p2}, Lorg/apache/poi/hssf/record/CFRuleBase;->setComparisonOperation(B)V

    .line 151
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/Ptg;->EMPTY_PTG_ARRAY:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->formula1:Lorg/apache/poi/ss/formula/Formula;

    .line 152
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/Ptg;->EMPTY_PTG_ARRAY:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->formula2:Lorg/apache/poi/ss/formula/Formula;

    .line 153
    return-void
.end method

.method protected constructor <init>(BB[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 1
    .param p1, "conditionType"    # B
    .param p2, "comparisonOperation"    # B
    .param p3, "formula1"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p4, "formula2"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 155
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/record/CFRuleBase;-><init>(BB)V

    .line 156
    invoke-static {p3}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->formula1:Lorg/apache/poi/ss/formula/Formula;

    .line 157
    invoke-static {p4}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->formula2:Lorg/apache/poi/ss/formula/Formula;

    .line 158
    return-void
.end method

.method private static bf(I)Lorg/apache/poi/util/BitField;
    .locals 1
    .param p0, "i"    # I

    .line 129
    invoke-static {p0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    return-object v0
.end method

.method protected static getFormulaSize(Lorg/apache/poi/ss/formula/Formula;)I
    .locals 1
    .param p0, "formula"    # Lorg/apache/poi/ss/formula/Formula;

    .line 423
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/Formula;->getEncodedTokenSize()I

    move-result v0

    return v0
.end method

.method private getOptionFlag(Lorg/apache/poi/util/BitField;)Z
    .locals 1
    .param p1, "field"    # Lorg/apache/poi/util/BitField;

    .line 349
    iget v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->formatting_options:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method private isModified(Lorg/apache/poi/util/BitField;)Z
    .locals 1
    .param p1, "field"    # Lorg/apache/poi/util/BitField;

    .line 278
    iget v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->formatting_options:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static parseFormula(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 3
    .param p0, "formula"    # Ljava/lang/String;
    .param p1, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 437
    if-nez p0, :cond_0

    .line 438
    const/4 v0, 0x0

    return-object v0

    .line 440
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v0

    .line 441
    .local v0, "sheetIndex":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/formula/FormulaType;->CELL:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-static {p0, v1, v2, v0}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/ss/formula/FormulaType;I)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    return-object v1
.end method

.method private setModified(ZLorg/apache/poi/util/BitField;)V
    .locals 2
    .param p1, "modified"    # Z
    .param p2, "field"    # Lorg/apache/poi/util/BitField;

    .line 281
    iget v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->formatting_options:I

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {p2, v0, v1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->formatting_options:I

    .line 282
    return-void
.end method

.method private setOptionFlag(ZLorg/apache/poi/util/BitField;)V
    .locals 1
    .param p1, "flag"    # Z
    .param p2, "field"    # Lorg/apache/poi/util/BitField;

    .line 352
    iget v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->formatting_options:I

    invoke-virtual {p2, v0, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->formatting_options:I

    .line 353
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->clone()Lorg/apache/poi/hssf/record/CFRuleBase;

    move-result-object v0

    return-object v0
.end method

.method public abstract clone()Lorg/apache/poi/hssf/record/CFRuleBase;
.end method

.method public containsAlignFormattingBlock()Z
    .locals 1

    .line 226
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->align:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getOptionFlag(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public containsBorderFormattingBlock()Z
    .locals 1

    .line 233
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->bord:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getOptionFlag(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public containsFontFormattingBlock()Z
    .locals 1

    .line 212
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->font:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getOptionFlag(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public containsPatternFormattingBlock()Z
    .locals 1

    .line 247
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->patt:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getOptionFlag(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public containsProtectionFormattingBlock()Z
    .locals 1

    .line 262
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->prot:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getOptionFlag(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method protected copyTo(Lorg/apache/poi/hssf/record/CFRuleBase;)V
    .locals 1
    .param p1, "rec"    # Lorg/apache/poi/hssf/record/CFRuleBase;

    .line 445
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->condition_type:B

    iput-byte v0, p1, Lorg/apache/poi/hssf/record/CFRuleBase;->condition_type:B

    .line 446
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->comparison_operator:B

    iput-byte v0, p1, Lorg/apache/poi/hssf/record/CFRuleBase;->comparison_operator:B

    .line 448
    iget v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->formatting_options:I

    iput v0, p1, Lorg/apache/poi/hssf/record/CFRuleBase;->formatting_options:I

    .line 449
    iget-short v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->formatting_not_used:S

    iput-short v0, p1, Lorg/apache/poi/hssf/record/CFRuleBase;->formatting_not_used:S

    .line 450
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->containsFontFormattingBlock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->_fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->clone()Lorg/apache/poi/hssf/record/cf/FontFormatting;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/poi/hssf/record/CFRuleBase;->_fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    .line 453
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->containsBorderFormattingBlock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 454
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->_borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->clone()Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/poi/hssf/record/CFRuleBase;->_borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    .line 456
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->containsPatternFormattingBlock()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 457
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->_patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    iput-object v0, p1, Lorg/apache/poi/hssf/record/CFRuleBase;->_patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    .line 460
    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getFormula1()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->copy()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setFormula1(Lorg/apache/poi/ss/formula/Formula;)V

    .line 461
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getFormula2()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->copy()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setFormula2(Lorg/apache/poi/ss/formula/Formula;)V

    .line 462
    return-void
.end method

.method public getBorderFormatting()Lorg/apache/poi/hssf/record/cf/BorderFormatting;
    .locals 1

    .line 240
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->containsBorderFormattingBlock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->_borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    return-object v0

    .line 243
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getComparisonOperation()B
    .locals 1

    .line 208
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->comparison_operator:B

    return v0
.end method

.method public getConditionType()B
    .locals 1

    .line 186
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->condition_type:B

    return v0
.end method

.method public getFontFormatting()Lorg/apache/poi/hssf/record/cf/FontFormatting;
    .locals 1

    .line 219
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->containsFontFormattingBlock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->_fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    return-object v0

    .line 222
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFormattingBlockSize()I
    .locals 3

    .line 356
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->containsFontFormattingBlock()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->_fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getRawRecord()[B

    move-result-object v0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->containsBorderFormattingBlock()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->containsPatternFormattingBlock()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x4

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method protected getFormula1()Lorg/apache/poi/ss/formula/Formula;
    .locals 1

    .line 394
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->formula1:Lorg/apache/poi/ss/formula/Formula;

    return-object v0
.end method

.method protected getFormula2()Lorg/apache/poi/ss/formula/Formula;
    .locals 1

    .line 412
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->formula2:Lorg/apache/poi/ss/formula/Formula;

    return-object v0
.end method

.method public getOptions()I
    .locals 1

    .line 274
    iget v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->formatting_options:I

    return v0
.end method

.method public getParsedExpression1()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    .line 388
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->formula1:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    return-object v0
.end method

.method public getParsedExpression2()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    .line 406
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->formula2:Lorg/apache/poi/ss/formula/Formula;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/Formula;->getTokens(Lorg/apache/poi/ss/formula/Formula;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    return-object v0
.end method

.method public getPatternFormatting()Lorg/apache/poi/hssf/record/cf/PatternFormatting;
    .locals 1

    .line 254
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->containsPatternFormattingBlock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->_patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    return-object v0

    .line 258
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isBottomBorderModified()Z
    .locals 1

    .line 307
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->bordBot:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->isModified(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public isBottomLeftTopRightBorderModified()Z
    .locals 1

    .line 321
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->bordBlTr:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->isModified(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public isLeftBorderModified()Z
    .locals 1

    .line 285
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->bordLeft:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->isModified(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public isPatternBackgroundColorModified()Z
    .locals 1

    .line 342
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->pattBgCol:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->isModified(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public isPatternColorModified()Z
    .locals 1

    .line 335
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->pattCol:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->isModified(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public isPatternStyleModified()Z
    .locals 1

    .line 328
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->pattStyle:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->isModified(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public isRightBorderModified()Z
    .locals 1

    .line 292
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->bordRight:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->isModified(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public isTopBorderModified()Z
    .locals 1

    .line 300
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->bordTop:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->isModified(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public isTopLeftBottomRightBorderModified()Z
    .locals 1

    .line 314
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->bordTlBr:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->isModified(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method protected readFormatOptions(Lorg/apache/poi/hssf/record/RecordInputStream;)I
    .locals 2
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 162
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->formatting_options:I

    .line 163
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->formatting_not_used:S

    .line 165
    const/4 v0, 0x6

    .line 167
    .local v0, "len":I
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->containsFontFormattingBlock()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    new-instance v1, Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-direct {v1, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->_fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    .line 169
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getDataLength()I

    move-result v1

    add-int/2addr v0, v1

    .line 172
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->containsBorderFormattingBlock()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    new-instance v1, Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-direct {v1, p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->_borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    .line 174
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getDataLength()I

    move-result v1

    add-int/2addr v0, v1

    .line 177
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->containsPatternFormattingBlock()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    new-instance v1, Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    invoke-direct {v1, p1}, Lorg/apache/poi/hssf/record/cf/PatternFormatting;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->_patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    .line 179
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->getDataLength()I

    move-result v1

    add-int/2addr v0, v1

    .line 182
    :cond_2
    return v0
.end method

.method protected serializeFormattingBlock(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 362
    iget v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->formatting_options:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 363
    iget-short v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->formatting_not_used:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 365
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->containsFontFormattingBlock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->_fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getRawRecord()[B

    move-result-object v0

    .line 367
    .local v0, "fontFormattingRawRecord":[B
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    .line 370
    .end local v0    # "fontFormattingRawRecord":[B
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->containsBorderFormattingBlock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->_borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 374
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->containsPatternFormattingBlock()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 375
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->_patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 377
    :cond_2
    return-void
.end method

.method public setAlignFormattingUnchanged()V
    .locals 2

    .line 229
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->align:Lorg/apache/poi/util/BitField;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setOptionFlag(ZLorg/apache/poi/util/BitField;)V

    .line 230
    return-void
.end method

.method public setBorderFormatting(Lorg/apache/poi/hssf/record/cf/BorderFormatting;)V
    .locals 2
    .param p1, "borderFormatting"    # Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    .line 236
    iput-object p1, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->_borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    .line 237
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/apache/poi/hssf/record/CFRuleBase;->bord:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setOptionFlag(ZLorg/apache/poi/util/BitField;)V

    .line 238
    return-void
.end method

.method public setBottomBorderModified(Z)V
    .locals 1
    .param p1, "modified"    # Z

    .line 310
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->bordBot:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setModified(ZLorg/apache/poi/util/BitField;)V

    .line 311
    return-void
.end method

.method public setBottomLeftTopRightBorderModified(Z)V
    .locals 1
    .param p1, "modified"    # Z

    .line 324
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->bordBlTr:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setModified(ZLorg/apache/poi/util/BitField;)V

    .line 325
    return-void
.end method

.method public setComparisonOperation(B)V
    .locals 2
    .param p1, "operation"    # B

    .line 201
    if-ltz p1, :cond_0

    const/16 v0, 0x8

    if-gt p1, v0, :cond_0

    .line 205
    iput-byte p1, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->comparison_operator:B

    .line 206
    return-void

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Valid operators are only in the range 0 to 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setConditionType(B)V
    .locals 2
    .param p1, "condition_type"    # B

    .line 189
    instance-of v0, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;

    if-eqz v0, :cond_1

    .line 190
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CFRuleRecord only accepts Value-Is and Formula types"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_1
    :goto_0
    iput-byte p1, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->condition_type:B

    .line 198
    return-void
.end method

.method public setFontFormatting(Lorg/apache/poi/hssf/record/cf/FontFormatting;)V
    .locals 2
    .param p1, "fontFormatting"    # Lorg/apache/poi/hssf/record/cf/FontFormatting;

    .line 215
    iput-object p1, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->_fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    .line 216
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/apache/poi/hssf/record/CFRuleBase;->font:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setOptionFlag(ZLorg/apache/poi/util/BitField;)V

    .line 217
    return-void
.end method

.method protected setFormula1(Lorg/apache/poi/ss/formula/Formula;)V
    .locals 0
    .param p1, "formula1"    # Lorg/apache/poi/ss/formula/Formula;

    .line 397
    iput-object p1, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->formula1:Lorg/apache/poi/ss/formula/Formula;

    .line 398
    return-void
.end method

.method protected setFormula2(Lorg/apache/poi/ss/formula/Formula;)V
    .locals 0
    .param p1, "formula2"    # Lorg/apache/poi/ss/formula/Formula;

    .line 415
    iput-object p1, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->formula2:Lorg/apache/poi/ss/formula/Formula;

    .line 416
    return-void
.end method

.method public setLeftBorderModified(Z)V
    .locals 1
    .param p1, "modified"    # Z

    .line 288
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->bordLeft:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setModified(ZLorg/apache/poi/util/BitField;)V

    .line 289
    return-void
.end method

.method public setParsedExpression1([Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 1
    .param p1, "ptgs"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 391
    invoke-static {p1}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->formula1:Lorg/apache/poi/ss/formula/Formula;

    .line 392
    return-void
.end method

.method public setParsedExpression2([Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 1
    .param p1, "ptgs"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 409
    invoke-static {p1}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->formula2:Lorg/apache/poi/ss/formula/Formula;

    .line 410
    return-void
.end method

.method public setPatternBackgroundColorModified(Z)V
    .locals 1
    .param p1, "modified"    # Z

    .line 345
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->pattBgCol:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setModified(ZLorg/apache/poi/util/BitField;)V

    .line 346
    return-void
.end method

.method public setPatternColorModified(Z)V
    .locals 1
    .param p1, "modified"    # Z

    .line 338
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->pattCol:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setModified(ZLorg/apache/poi/util/BitField;)V

    .line 339
    return-void
.end method

.method public setPatternFormatting(Lorg/apache/poi/hssf/record/cf/PatternFormatting;)V
    .locals 2
    .param p1, "patternFormatting"    # Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    .line 250
    iput-object p1, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->_patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    .line 251
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/apache/poi/hssf/record/CFRuleBase;->patt:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setOptionFlag(ZLorg/apache/poi/util/BitField;)V

    .line 252
    return-void
.end method

.method public setPatternStyleModified(Z)V
    .locals 1
    .param p1, "modified"    # Z

    .line 331
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->pattStyle:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setModified(ZLorg/apache/poi/util/BitField;)V

    .line 332
    return-void
.end method

.method public setProtectionFormattingUnchanged()V
    .locals 2

    .line 265
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->prot:Lorg/apache/poi/util/BitField;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setOptionFlag(ZLorg/apache/poi/util/BitField;)V

    .line 266
    return-void
.end method

.method public setRightBorderModified(Z)V
    .locals 1
    .param p1, "modified"    # Z

    .line 296
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->bordRight:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setModified(ZLorg/apache/poi/util/BitField;)V

    .line 297
    return-void
.end method

.method public setTopBorderModified(Z)V
    .locals 1
    .param p1, "modified"    # Z

    .line 303
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->bordTop:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setModified(ZLorg/apache/poi/util/BitField;)V

    .line 304
    return-void
.end method

.method public setTopLeftBottomRightBorderModified(Z)V
    .locals 1
    .param p1, "modified"    # Z

    .line 317
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->bordTlBr:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setModified(ZLorg/apache/poi/util/BitField;)V

    .line 318
    return-void
.end method
