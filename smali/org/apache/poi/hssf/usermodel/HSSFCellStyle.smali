.class public final Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
.super Ljava/lang/Object;
.source "HSSFCellStyle.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/CellStyle;


# static fields
.field private static final getDataFormatStringCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final lastDateFormat:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private static final lastFormats:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/FormatRecord;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final _format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

.field private final _index:S

.field private final _workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle$1;

    invoke-direct {v0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle$1;-><init>()V

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->lastDateFormat:Ljava/lang/ThreadLocal;

    .line 119
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->lastFormats:Ljava/lang/ThreadLocal;

    .line 120
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormatStringCache:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>(SLorg/apache/poi/hssf/record/ExtendedFormatRecord;Lorg/apache/poi/hssf/model/InternalWorkbook;)V
    .locals 0
    .param p1, "index"    # S
    .param p2, "rec"    # Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    .param p3, "workbook"    # Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 58
    iput-short p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_index:S

    .line 59
    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    .line 60
    return-void
.end method

.method protected constructor <init>(SLorg/apache/poi/hssf/record/ExtendedFormatRecord;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 1
    .param p1, "index"    # S
    .param p2, "rec"    # Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    .param p3, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 53
    invoke-virtual {p3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;-><init>(SLorg/apache/poi/hssf/record/ExtendedFormatRecord;Lorg/apache/poi/hssf/model/InternalWorkbook;)V

    .line 54
    return-void
.end method

.method private checkDefaultBackgroundFills()V
    .locals 3

    .line 685
    sget-object v0, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->AUTOMATIC:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->getIndex()S

    move-result v0

    .line 686
    .local v0, "autoIdx":S
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFillForeground()S

    move-result v1

    if-ne v1, v0, :cond_0

    .line 690
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFillBackground()S

    move-result v1

    add-int/lit8 v2, v0, 0x1

    if-eq v1, v2, :cond_1

    .line 691
    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->setFillBackgroundColor(S)V

    goto :goto_0

    .line 693
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFillBackground()S

    move-result v1

    add-int/lit8 v2, v0, 0x1

    if-ne v1, v2, :cond_1

    .line 695
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFillForeground()S

    move-result v1

    if-eq v1, v0, :cond_1

    .line 696
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->setFillBackgroundColor(S)V

    .line 699
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public cloneStyleFrom(Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;)V
    .locals 4
    .param p1, "source"    # Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    .line 907
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    iget-object v1, p1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->cloneStyleFrom(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;)V

    .line 910
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    iget-object v1, p1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    if-eq v0, v1, :cond_0

    .line 912
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->lastDateFormat:Ljava/lang/ThreadLocal;

    const/16 v1, -0x8000

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 913
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->lastFormats:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 914
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormatStringCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 918
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormatString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createFormat(Ljava/lang/String;)I

    move-result v0

    int-to-short v0, v0

    .line 919
    .local v0, "fmt":S
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->setDataFormat(S)V

    .line 923
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createNewFont()Lorg/apache/poi/hssf/record/FontRecord;

    move-result-object v1

    .line 924
    .local v1, "fr":Lorg/apache/poi/hssf/record/FontRecord;
    iget-object v2, p1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getFontIndex()S

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getFontRecordAt(I)Lorg/apache/poi/hssf/record/FontRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/FontRecord;->cloneStyleFrom(Lorg/apache/poi/hssf/record/FontRecord;)V

    .line 930
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFFont;

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v3, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getFontIndex(Lorg/apache/poi/hssf/record/FontRecord;)I

    move-result v3

    int-to-short v3, v3

    invoke-direct {v2, v3, v1}, Lorg/apache/poi/hssf/usermodel/HSSFFont;-><init>(SLorg/apache/poi/hssf/record/FontRecord;)V

    .line 933
    .local v2, "font":Lorg/apache/poi/hssf/usermodel/HSSFFont;
    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->setFont(Lorg/apache/poi/hssf/usermodel/HSSFFont;)V

    .line 935
    .end local v0    # "fmt":S
    .end local v1    # "fr":Lorg/apache/poi/hssf/record/FontRecord;
    .end local v2    # "font":Lorg/apache/poi/hssf/usermodel/HSSFFont;
    :cond_0
    return-void
.end method

.method public cloneStyleFrom(Lorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 2
    .param p1, "source"    # Lorg/apache/poi/ss/usermodel/CellStyle;

    .line 898
    instance-of v0, p1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    if-eqz v0, :cond_0

    .line 899
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->cloneStyleFrom(Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;)V

    .line 903
    return-void

    .line 901
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only clone from one HSSFCellStyle to another, not between HSSFCellStyle and XSSFCellStyle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 949
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 950
    return v0

    .line 952
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 953
    return v1

    .line 955
    :cond_1
    instance-of v2, p1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    if-eqz v2, :cond_5

    .line 956
    move-object v2, p1

    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    .line 957
    .local v2, "other":Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    if-nez v3, :cond_2

    .line 958
    iget-object v3, v2, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    if-eqz v3, :cond_3

    .line 959
    return v1

    .line 961
    :cond_2
    iget-object v4, v2, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 962
    return v1

    .line 964
    :cond_3
    iget-short v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_index:S

    iget-short v4, v2, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_index:S

    if-eq v3, v4, :cond_4

    .line 965
    return v1

    .line 967
    :cond_4
    return v0

    .line 969
    .end local v2    # "other":Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    :cond_5
    return v1
.end method

.method public getAlignment()S
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 284
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getAlignment()S

    move-result v0

    return v0
.end method

.method public getAlignmentEnum()Lorg/apache/poi/ss/usermodel/HorizontalAlignment;
    .locals 1

    .line 293
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getAlignment()S

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->forInt(I)Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    move-result-object v0

    return-object v0
.end method

.method public getBorderBottom()S
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 543
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getBorderBottom()S

    move-result v0

    return v0
.end method

.method public getBorderBottomEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    .line 553
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getBorderBottom()S

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/BorderStyle;->valueOf(S)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    return-object v0
.end method

.method public getBorderLeft()S
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 441
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getBorderLeft()S

    move-result v0

    return v0
.end method

.method public getBorderLeftEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    .line 451
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getBorderLeft()S

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/BorderStyle;->valueOf(S)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    return-object v0
.end method

.method public getBorderRight()S
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 475
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getBorderRight()S

    move-result v0

    return v0
.end method

.method public getBorderRightEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    .line 485
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getBorderRight()S

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/BorderStyle;->valueOf(S)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    return-object v0
.end method

.method public getBorderTop()S
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 509
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getBorderTop()S

    move-result v0

    return v0
.end method

.method public getBorderTopEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    .line 519
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getBorderTop()S

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/BorderStyle;->valueOf(S)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    return-object v0
.end method

.method public getBottomBorderColor()S
    .locals 1

    .line 637
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getBottomBorderPaletteIdx()S

    move-result v0

    return v0
.end method

.method public getDataFormat()S
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFormatIndex()S

    move-result v0

    return v0
.end method

.method public getDataFormatString()Ljava/lang/String;
    .locals 3

    .line 130
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormatStringCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 131
    sget-object v1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->lastDateFormat:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormat()S

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getFormats()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->lastFormats:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 136
    :cond_0
    sget-object v1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->lastFormats:Ljava/lang/ThreadLocal;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getFormats()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 137
    sget-object v1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->lastDateFormat:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormat()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 139
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormatString(Lorg/apache/poi/hssf/model/InternalWorkbook;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 141
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDataFormatString(Lorg/apache/poi/hssf/model/InternalWorkbook;)Ljava/lang/String;
    .locals 2
    .param p1, "workbook"    # Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 163
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;-><init>(Lorg/apache/poi/hssf/model/InternalWorkbook;)V

    .line 165
    .local v0, "format":Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormat()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;->getFormat(S)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDataFormatString(Lorg/apache/poi/ss/usermodel/Workbook;)Ljava/lang/String;
    .locals 3
    .param p1, "workbook"    # Lorg/apache/poi/ss/usermodel/Workbook;

    .line 152
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;-><init>(Lorg/apache/poi/hssf/model/InternalWorkbook;)V

    .line 154
    .local v0, "format":Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormat()S

    move-result v1

    .line 155
    .local v1, "idx":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v2, "General"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormat()S

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;->getFormat(S)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method public getFillBackgroundColor()S
    .locals 3

    .line 742
    sget-object v0, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->AUTOMATIC:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->getIndex()S

    move-result v0

    .line 743
    .local v0, "autoIndex":S
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFillBackground()S

    move-result v1

    .line 746
    .local v1, "result":S
    add-int/lit8 v2, v0, 0x1

    if-ne v1, v2, :cond_0

    .line 747
    return v0

    .line 749
    :cond_0
    return v1
.end method

.method public getFillBackgroundColorColor()Lorg/apache/poi/hssf/util/HSSFColor;
    .locals 2

    .line 754
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFPalette;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getCustomPalette()Lorg/apache/poi/hssf/record/PaletteRecord;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;-><init>(Lorg/apache/poi/hssf/record/PaletteRecord;)V

    .line 757
    .local v0, "pallette":Lorg/apache/poi/hssf/usermodel/HSSFPalette;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getFillBackgroundColor()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->getColor(S)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getFillBackgroundColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getFillBackgroundColorColor()Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getFillForegroundColor()S
    .locals 1

    .line 784
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFillForeground()S

    move-result v0

    return v0
.end method

.method public getFillForegroundColorColor()Lorg/apache/poi/hssf/util/HSSFColor;
    .locals 2

    .line 789
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFPalette;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getCustomPalette()Lorg/apache/poi/hssf/record/PaletteRecord;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;-><init>(Lorg/apache/poi/hssf/record/PaletteRecord;)V

    .line 792
    .local v0, "pallette":Lorg/apache/poi/hssf/usermodel/HSSFPalette;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getFillForegroundColor()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->getColor(S)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getFillForegroundColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getFillForegroundColorColor()Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getFillPattern()S
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 661
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getFillPatternEnum()Lorg/apache/poi/ss/usermodel/FillPatternType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/FillPatternType;->getCode()S

    move-result v0

    return v0
.end method

.method public getFillPatternEnum()Lorg/apache/poi/ss/usermodel/FillPatternType;
    .locals 1

    .line 671
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getAdtlFillPattern()S

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/FillPatternType;->forInt(I)Lorg/apache/poi/ss/usermodel/FillPatternType;

    move-result-object v0

    return-object v0
.end method

.method public getFont(Lorg/apache/poi/ss/usermodel/Workbook;)Lorg/apache/poi/hssf/usermodel/HSSFFont;
    .locals 2
    .param p1, "parentWorkbook"    # Lorg/apache/poi/ss/usermodel/Workbook;

    .line 201
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getFontIndex()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getFontAt(S)Lorg/apache/poi/hssf/usermodel/HSSFFont;

    move-result-object v0

    return-object v0
.end method

.method public getFontIndex()S
    .locals 1

    .line 191
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFontIndex()S

    move-result v0

    return v0
.end method

.method public getHidden()Z
    .locals 1

    .line 222
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->isHidden()Z

    move-result v0

    return v0
.end method

.method public getIndention()S
    .locals 1

    .line 417
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getIndent()S

    move-result v0

    return v0
.end method

.method public getIndex()S
    .locals 1

    .line 69
    iget-short v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_index:S

    return v0
.end method

.method public getLeftBorderColor()S
    .locals 1

    .line 574
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getLeftBorderPaletteIdx()S

    move-result v0

    return v0
.end method

.method public getLocked()Z
    .locals 1

    .line 243
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->isLocked()Z

    move-result v0

    return v0
.end method

.method public getParentStyle()Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    .locals 4

    .line 78
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getParentIndex()S

    move-result v0

    .line 80
    .local v0, "parentIndex":S
    if-eqz v0, :cond_1

    const/16 v1, 0xfff

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExFormatAt(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;-><init>(SLorg/apache/poi/hssf/record/ExtendedFormatRecord;Lorg/apache/poi/hssf/model/InternalWorkbook;)V

    return-object v1

    .line 81
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getQuotePrefixed()Z
    .locals 1

    .line 261
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->get123Prefix()Z

    move-result v0

    return v0
.end method

.method public getReadingOrder()S
    .locals 1

    .line 856
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getReadingOrder()S

    move-result v0

    return v0
.end method

.method public getRightBorderColor()S
    .locals 1

    .line 595
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getRightBorderPaletteIdx()S

    move-result v0

    return v0
.end method

.method public getRotation()S
    .locals 2

    .line 388
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getRotation()S

    move-result v0

    .line 389
    .local v0, "rotation":S
    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    .line 391
    return v0

    .line 393
    :cond_0
    const/16 v1, 0x5a

    if-le v0, v1, :cond_1

    .line 395
    rsub-int/lit8 v1, v0, 0x5a

    int-to-short v0, v1

    .line 397
    :cond_1
    return v0
.end method

.method public getShrinkToFit()Z
    .locals 1

    .line 844
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getShrinkToFit()Z

    move-result v0

    return v0
.end method

.method public getTopBorderColor()S
    .locals 1

    .line 616
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getTopBorderPaletteIdx()S

    move-result v0

    return v0
.end method

.method public getUserStyleName()Ljava/lang/String;
    .locals 3

    .line 803
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    iget-short v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_index:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getStyleRecord(I)Lorg/apache/poi/hssf/record/StyleRecord;

    move-result-object v0

    .line 804
    .local v0, "sr":Lorg/apache/poi/hssf/record/StyleRecord;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 805
    return-object v1

    .line 807
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/StyleRecord;->isBuiltin()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 808
    return-object v1

    .line 810
    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/StyleRecord;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getVerticalAlignment()S
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 337
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getVerticalAlignment()S

    move-result v0

    return v0
.end method

.method public getVerticalAlignmentEnum()Lorg/apache/poi/ss/usermodel/VerticalAlignment;
    .locals 1

    .line 346
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getVerticalAlignment()S

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->forInt(I)Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    move-result-object v0

    return-object v0
.end method

.method public getWrapText()Z
    .locals 1

    .line 314
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getWrapText()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 940
    const/16 v0, 0x1f

    .line 941
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 942
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 943
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-short v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_index:S

    add-int/2addr v1, v3

    .line 944
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public setAlignment(Lorg/apache/poi/ss/usermodel/HorizontalAlignment;)V
    .locals 2
    .param p1, "align"    # Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    .line 271
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentNotParentAlignment(Z)V

    .line 272
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->getCode()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAlignment(S)V

    .line 273
    return-void
.end method

.method public setBorderBottom(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 2
    .param p1, "border"    # Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 530
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentNotParentBorder(Z)V

    .line 531
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderBottom(S)V

    .line 532
    return-void
.end method

.method public setBorderLeft(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 2
    .param p1, "border"    # Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 428
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentNotParentBorder(Z)V

    .line 429
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderLeft(S)V

    .line 430
    return-void
.end method

.method public setBorderRight(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 2
    .param p1, "border"    # Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 462
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentNotParentBorder(Z)V

    .line 463
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderRight(S)V

    .line 464
    return-void
.end method

.method public setBorderTop(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 2
    .param p1, "border"    # Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 496
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentNotParentBorder(Z)V

    .line 497
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderTop(S)V

    .line 498
    return-void
.end method

.method public setBottomBorderColor(S)V
    .locals 1
    .param p1, "color"    # S

    .line 626
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBottomBorderPaletteIdx(S)V

    .line 627
    return-void
.end method

.method public setDataFormat(S)V
    .locals 1
    .param p1, "fmt"    # S

    .line 97
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFormatIndex(S)V

    .line 98
    return-void
.end method

.method public setFillBackgroundColor(S)V
    .locals 1
    .param p1, "bg"    # S

    .line 729
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFillBackground(S)V

    .line 730
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->checkDefaultBackgroundFills()V

    .line 731
    return-void
.end method

.method public setFillForegroundColor(S)V
    .locals 1
    .param p1, "bg"    # S

    .line 770
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFillForeground(S)V

    .line 771
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->checkDefaultBackgroundFills()V

    .line 772
    return-void
.end method

.method public setFillPattern(Lorg/apache/poi/ss/usermodel/FillPatternType;)V
    .locals 2
    .param p1, "fp"    # Lorg/apache/poi/ss/usermodel/FillPatternType;

    .line 649
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/FillPatternType;->getCode()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAdtlFillPattern(S)V

    .line 650
    return-void
.end method

.method public setFont(Lorg/apache/poi/hssf/usermodel/HSSFFont;)V
    .locals 2
    .param p1, "font"    # Lorg/apache/poi/hssf/usermodel/HSSFFont;

    .line 179
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentNotParentFont(Z)V

    .line 180
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->getIndex()S

    move-result v0

    .line 181
    .local v0, "fontindex":S
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFontIndex(S)V

    .line 182
    return-void
.end method

.method public setFont(Lorg/apache/poi/ss/usermodel/Font;)V
    .locals 1
    .param p1, "font"    # Lorg/apache/poi/ss/usermodel/Font;

    .line 176
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFFont;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->setFont(Lorg/apache/poi/hssf/usermodel/HSSFFont;)V

    .line 177
    return-void
.end method

.method public setHidden(Z)V
    .locals 2
    .param p1, "hidden"    # Z

    .line 211
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentNotParentCellOptions(Z)V

    .line 212
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setHidden(Z)V

    .line 213
    return-void
.end method

.method public setIndention(S)V
    .locals 1
    .param p1, "indent"    # S

    .line 407
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndent(S)V

    .line 408
    return-void
.end method

.method public setLeftBorderColor(S)V
    .locals 1
    .param p1, "color"    # S

    .line 563
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setLeftBorderPaletteIdx(S)V

    .line 564
    return-void
.end method

.method public setLocked(Z)V
    .locals 2
    .param p1, "locked"    # Z

    .line 232
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentNotParentCellOptions(Z)V

    .line 233
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setLocked(Z)V

    .line 234
    return-void
.end method

.method public setQuotePrefixed(Z)V
    .locals 1
    .param p1, "quotePrefix"    # Z

    .line 253
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->set123Prefix(Z)V

    .line 254
    return-void
.end method

.method public setReadingOrder(S)V
    .locals 1
    .param p1, "order"    # S

    .line 867
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setReadingOrder(S)V

    .line 868
    return-void
.end method

.method public setRightBorderColor(S)V
    .locals 1
    .param p1, "color"    # S

    .line 584
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setRightBorderPaletteIdx(S)V

    .line 585
    return-void
.end method

.method public setRotation(S)V
    .locals 3
    .param p1, "rotation"    # S

    .line 362
    const/16 v0, 0xff

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 365
    :cond_0
    const/16 v0, -0x5a

    if-gez p1, :cond_1

    if-lt p1, v0, :cond_1

    .line 368
    rsub-int/lit8 v0, p1, 0x5a

    int-to-short p1, v0

    goto :goto_0

    .line 370
    :cond_1
    const/16 v1, 0x5a

    if-le p1, v1, :cond_2

    const/16 v2, 0xb4

    if-gt p1, v2, :cond_2

    goto :goto_0

    .line 374
    :cond_2
    if-lt p1, v0, :cond_3

    if-gt p1, v1, :cond_3

    .line 378
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setRotation(S)V

    .line 379
    return-void

    .line 376
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The rotation must be between -90 and 90 degrees, or 0xff"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setShrinkToFit(Z)V
    .locals 1
    .param p1, "shrinkToFit"    # Z

    .line 836
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setShrinkToFit(Z)V

    .line 837
    return-void
.end method

.method public setTopBorderColor(S)V
    .locals 1
    .param p1, "color"    # S

    .line 605
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setTopBorderPaletteIdx(S)V

    .line 606
    return-void
.end method

.method public setUserStyleName(Ljava/lang/String;)V
    .locals 3
    .param p1, "styleName"    # Ljava/lang/String;

    .line 818
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    iget-short v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_index:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getStyleRecord(I)Lorg/apache/poi/hssf/record/StyleRecord;

    move-result-object v0

    .line 819
    .local v0, "sr":Lorg/apache/poi/hssf/record/StyleRecord;
    if-nez v0, :cond_0

    .line 820
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    iget-short v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_index:S

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createStyleRecord(I)Lorg/apache/poi/hssf/record/StyleRecord;

    move-result-object v0

    .line 824
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/StyleRecord;->isBuiltin()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-short v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_index:S

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    goto :goto_0

    .line 825
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unable to set user specified style names for built in styles!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 827
    :cond_2
    :goto_0
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/StyleRecord;->setName(Ljava/lang/String;)V

    .line 828
    return-void
.end method

.method public setVerticalAlignment(Lorg/apache/poi/ss/usermodel/VerticalAlignment;)V
    .locals 2
    .param p1, "align"    # Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    .line 324
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->getCode()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setVerticalAlignment(S)V

    .line 325
    return-void
.end method

.method public setWrapText(Z)V
    .locals 2
    .param p1, "wrapped"    # Z

    .line 303
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentNotParentAlignment(Z)V

    .line 304
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setWrapText(Z)V

    .line 305
    return-void
.end method

.method public verifyBelongsToWorkbook(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 2
    .param p1, "wb"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 879
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    if-ne v0, v1, :cond_0

    .line 882
    return-void

    .line 880
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This Style does not belong to the supplied Workbook. Are you trying to assign a style from one workbook to the cell of a differnt workbook?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
