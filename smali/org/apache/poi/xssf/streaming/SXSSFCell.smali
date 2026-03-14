.class public Lorg/apache/poi/xssf/streaming/SXSSFCell;
.super Ljava/lang/Object;
.source "SXSSFCell.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Cell;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorValue;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanValue;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$BlankValue;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorFormulaValue;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanFormulaValue;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$StringFormulaValue;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextValue;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$PlainStringValue;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericValue;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$HyperlinkProperty;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$CommentProperty;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;
    }
.end annotation


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private _firstProperty:Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;

.field private final _row:Lorg/apache/poi/xssf/streaming/SXSSFRow;

.field private _style:Lorg/apache/poi/ss/usermodel/CellStyle;

.field private _value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lorg/apache/poi/xssf/streaming/SXSSFCell;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/streaming/SXSSFRow;Lorg/apache/poi/ss/usermodel/CellType;)V
    .locals 0
    .param p1, "row"    # Lorg/apache/poi/xssf/streaming/SXSSFRow;
    .param p2, "cellType"    # Lorg/apache/poi/ss/usermodel/CellType;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_row:Lorg/apache/poi/xssf/streaming/SXSSFRow;

    .line 62
    invoke-virtual {p0, p2}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->setType(Lorg/apache/poi/ss/usermodel/CellType;)V

    .line 63
    return-void
.end method

.method private convertCellValueToBoolean()Z
    .locals 9

    .line 1003
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    .line 1005
    .local v0, "cellType":Lorg/apache/poi/ss/usermodel/CellType;
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    .line 1006
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    .line 1009
    :cond_0
    sget-object v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_6

    const/4 v5, 0x3

    if-eq v1, v5, :cond_4

    const/4 v3, 0x4

    if-eq v1, v3, :cond_3

    const/4 v3, 0x5

    if-eq v1, v3, :cond_2

    const/4 v3, 0x6

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v4

    .line 1021
    .local v1, "text":Ljava/lang/String;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected cell type ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1011
    .end local v1    # "text":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getBooleanCellValue()Z

    move-result v1

    return v1

    .line 1014
    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getStringCellValue()Ljava/lang/String;

    move-result-object v1

    .line 1015
    .restart local v1    # "text":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 1009
    .end local v1    # "text":Ljava/lang/String;
    :cond_4
    move-object v1, v4

    .line 1017
    .restart local v1    # "text":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getNumericCellValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v8, v4, v6

    if-eqz v8, :cond_5

    const/4 v2, 0x1

    :cond_5
    return v2

    .line 1009
    .end local v1    # "text":Ljava/lang/String;
    :cond_6
    :goto_0
    move-object v1, v4

    .line 1020
    .restart local v1    # "text":Ljava/lang/String;
    return v2
.end method

.method private convertCellValueToString()Ljava/lang/String;
    .locals 2

    .line 1026
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    .line 1027
    .local v0, "cellType":Lorg/apache/poi/ss/usermodel/CellType;
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->convertCellValueToString(Lorg/apache/poi/ss/usermodel/CellType;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private convertCellValueToString(Lorg/apache/poi/ss/usermodel/CellType;)Ljava/lang/String;
    .locals 5
    .param p1, "cellType"    # Lorg/apache/poi/ss/usermodel/CellType;

    .line 1030
    sget-object v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, ""

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 1051
    .local v0, "errVal":B
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected cell type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1040
    .end local v0    # "errVal":B
    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getErrorCellValue()B

    move-result v0

    .line 1041
    .restart local v0    # "errVal":B
    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/FormulaError;->forInt(B)Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1034
    .end local v0    # "errVal":B
    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getBooleanCellValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TRUE"

    goto :goto_0

    :cond_0
    const-string v0, "FALSE"

    :goto_0
    return-object v0

    .line 1036
    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getStringCellValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1038
    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getNumericCellValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1030
    :pswitch_4
    move v0, v2

    .line 1043
    .restart local v0    # "errVal":B
    iget-object v2, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    if-eqz v2, :cond_1

    .line 1044
    check-cast v2, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;

    .line 1045
    .local v2, "fv":Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;
    invoke-virtual {v2}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;->getFormulaType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-eq v3, v4, :cond_1

    .line 1046
    invoke-virtual {v2}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;->getFormulaType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->convertCellValueToString(Lorg/apache/poi/ss/usermodel/CellType;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1049
    .end local v2    # "fv":Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;
    :cond_1
    return-object v1

    .line 1032
    .end local v0    # "errVal":B
    :pswitch_5
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;
    .locals 2
    .param p0, "expectedTypeCode"    # Lorg/apache/poi/ss/usermodel/CellType;
    .param p1, "actualTypeCode"    # Lorg/apache/poi/ss/usermodel/CellType;
    .param p2, "isFormulaCell"    # Z

    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot get a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value from a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string v1, "formula "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cell"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 999
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method computeTypeFromFormula(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/CellType;
    .locals 1
    .param p1, "formula"    # Ljava/lang/String;
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 990
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    return-object v0
.end method

.method ensureFormulaType(Lorg/apache/poi/ss/usermodel/CellType;)V
    .locals 2
    .param p1, "type"    # Lorg/apache/poi/ss/usermodel/CellType;

    .line 866
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-interface {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;->getType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;->getFormulaType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 868
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->setFormulaType(Lorg/apache/poi/ss/usermodel/CellType;)V

    .line 869
    :cond_1
    return-void
.end method

.method ensurePlainStringType()V
    .locals 2

    .line 849
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-interface {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;->getType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;->isRichText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 851
    :cond_0
    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$PlainStringValue;

    invoke-direct {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$PlainStringValue;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    .line 852
    :cond_1
    return-void
.end method

.method ensureRichTextStringType()V
    .locals 2

    .line 855
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-interface {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;->getType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;->isRichText()Z

    move-result v0

    if-nez v0, :cond_1

    .line 857
    :cond_0
    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextValue;

    invoke-direct {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextValue;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    .line 858
    :cond_1
    return-void
.end method

.method ensureType(Lorg/apache/poi/ss/usermodel/CellType;)V
    .locals 1
    .param p1, "type"    # Lorg/apache/poi/ss/usermodel/CellType;

    .line 861
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-interface {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;->getType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 862
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->setType(Lorg/apache/poi/ss/usermodel/CellType;)V

    .line 863
    :cond_0
    return-void
.end method

.method ensureTypeOrFormulaType(Lorg/apache/poi/ss/usermodel/CellType;)V
    .locals 2
    .param p1, "type"    # Lorg/apache/poi/ss/usermodel/CellType;

    .line 875
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-interface {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;->getType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 877
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;->isRichText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->setType(Lorg/apache/poi/ss/usermodel/CellType;)V

    .line 879
    :cond_0
    return-void

    .line 881
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-interface {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;->getType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_3

    .line 883
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;->getFormulaType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 884
    return-void

    .line 885
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->setFormulaType(Lorg/apache/poi/ss/usermodel/CellType;)V

    .line 886
    return-void

    .line 888
    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->setType(Lorg/apache/poi/ss/usermodel/CellType;)V

    .line 889
    return-void
.end method

.method public getAddress()Lorg/apache/poi/ss/util/CellAddress;
    .locals 1

    .line 94
    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Lorg/apache/poi/ss/usermodel/Cell;)V

    return-object v0
.end method

.method public getArrayFormulaRange()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 727
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBooleanCellValue()Z
    .locals 5

    .line 542
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    .line 543
    .local v0, "cellType":Lorg/apache/poi/ss/usermodel/CellType;
    sget-object v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 556
    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanValue;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanValue;->getValue()Z

    move-result v1

    return v1

    .line 559
    :cond_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v1, v0, v3}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 549
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;

    .line 550
    .local v1, "fv":Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;
    invoke-virtual {v1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;->getFormulaType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v2

    sget-object v4, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v2, v4, :cond_2

    .line 552
    iget-object v2, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v2, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanFormulaValue;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanFormulaValue;->getPreEvaluatedValue()Z

    move-result v2

    return v2

    .line 551
    :cond_2
    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    sget-object v4, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v2, v4, v3}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 546
    .end local v1    # "fv":Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;
    :cond_3
    return v3
.end method

.method public getCachedFormulaResultType()I
    .locals 1

    .line 183
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellType;->getCode()I

    move-result v0

    return v0
.end method

.method public getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 2

    .line 197
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-interface {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;->getType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    .line 201
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;->getFormulaType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    return-object v0

    .line 198
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only formula cells have cached results"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCellComment()Lorg/apache/poi/ss/usermodel/Comment;
    .locals 1

    .line 661
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getPropertyValue(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/Comment;

    return-object v0
.end method

.method public getCellFormula()Ljava/lang/String;
    .locals 3

    .line 372
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-interface {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;->getType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    .line 374
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 373
    :cond_0
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-interface {v1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;->getType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 2

    .line 625
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_style:Lorg/apache/poi/ss/usermodel/CellStyle;

    if-nez v0, :cond_0

    .line 626
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getRow()Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    .line 627
    .local v0, "wb":Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getCellStyleAt(I)Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v1

    return-object v1

    .line 629
    .end local v0    # "wb":Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;
    :cond_0
    return-object v0
.end method

.method public getCellType()I
    .locals 1

    .line 157
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellType;->getCode()I

    move-result v0

    return v0
.end method

.method public getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-interface {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;->getType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    return-object v0
.end method

.method public getColumnIndex()I
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_row:Lorg/apache/poi/xssf/streaming/SXSSFRow;

    invoke-virtual {v0, p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getCellIndex(Lorg/apache/poi/xssf/streaming/SXSSFCell;)I

    move-result v0

    return v0
.end method

.method public getDateCellValue()Ljava/util/Date;
    .locals 5

    .line 423
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    .line 424
    .local v0, "cellType":Lorg/apache/poi/ss/usermodel/CellType;
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    .line 426
    const/4 v1, 0x0

    return-object v1

    .line 429
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getNumericCellValue()D

    move-result-wide v1

    .line 430
    .local v1, "value":D
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->isDate1904()Z

    move-result v3

    .line 431
    .local v3, "date1904":Z
    invoke-static {v1, v2, v3}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZ)Ljava/util/Date;

    move-result-object v4

    return-object v4
.end method

.method public getErrorCellValue()B
    .locals 5

    .line 577
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    .line 578
    .local v0, "cellType":Lorg/apache/poi/ss/usermodel/CellType;
    sget-object v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 591
    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorValue;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorValue;->getValue()B

    move-result v1

    return v1

    .line 594
    :cond_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v1, v0, v3}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 584
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;

    .line 585
    .local v1, "fv":Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;
    invoke-virtual {v1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;->getFormulaType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v2

    sget-object v4, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v2, v4, :cond_2

    .line 587
    iget-object v2, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v2, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorFormulaValue;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorFormulaValue;->getPreEvaluatedValue()B

    move-result v2

    return v2

    .line 586
    :cond_2
    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    sget-object v4, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v2, v4, v3}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 581
    .end local v1    # "fv":Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;
    :cond_3
    return v3
.end method

.method public getHyperlink()Lorg/apache/poi/ss/usermodel/Hyperlink;
    .locals 1

    .line 679
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getPropertyValue(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/Hyperlink;

    return-object v0
.end method

.method public getNumericCellValue()D
    .locals 5

    .line 391
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    .line 392
    .local v0, "cellType":Lorg/apache/poi/ss/usermodel/CellType;
    sget-object v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 404
    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericValue;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericValue;->getValue()D

    move-result-wide v1

    return-wide v1

    .line 406
    :cond_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v1, v0, v3}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 398
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;

    .line 399
    .local v1, "fv":Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;
    invoke-virtual {v1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;->getFormulaType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v2

    sget-object v4, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v2, v4, :cond_2

    .line 401
    iget-object v2, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v2, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;->getPreEvaluatedValue()D

    move-result-wide v2

    return-wide v2

    .line 400
    :cond_2
    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    sget-object v4, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v2, v4, v3}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 395
    .end local v1    # "fv":Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;
    :cond_3
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method getPropertyValue(I)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # I

    .line 839
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getPropertyValue(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getPropertyValue(ILjava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "type"    # I
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 843
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_firstProperty:Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;

    .line 844
    .local v0, "current":Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;->getType()I

    move-result v1

    if-eq v1, p1, :cond_0

    iget-object v0, v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;->_next:Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;

    goto :goto_0

    .line 845
    :cond_0
    if-nez v0, :cond_1

    move-object v1, p2

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;
    .locals 4

    .line 445
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    .line 446
    .local v0, "cellType":Lorg/apache/poi/ss/usermodel/CellType;
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v1, v2, :cond_1

    .line 449
    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;

    .line 450
    .local v1, "sval":Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;
    invoke-virtual {v1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;->isRichText()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 451
    iget-object v2, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v2, Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextValue;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextValue;->getValue()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object v2

    return-object v2

    .line 453
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getStringCellValue()Ljava/lang/String;

    move-result-object v2

    .line 454
    .local v2, "plainText":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getCreationHelper()Lorg/apache/poi/ss/usermodel/CreationHelper;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/apache/poi/ss/usermodel/CreationHelper;->createRichTextString(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object v3

    return-object v3

    .line 447
    .end local v1    # "sval":Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;
    .end local v2    # "plainText":Ljava/lang/String;
    :cond_1
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getRow()Lorg/apache/poi/ss/usermodel/Row;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_row:Lorg/apache/poi/xssf/streaming/SXSSFRow;

    return-object v0
.end method

.method public getRowIndex()I
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_row:Lorg/apache/poi/xssf/streaming/SXSSFRow;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getRowNum()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_row:Lorg/apache/poi/xssf/streaming/SXSSFRow;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public getStringCellValue()Ljava/lang/String;
    .locals 5

    .line 470
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    .line 471
    .local v0, "cellType":Lorg/apache/poi/ss/usermodel/CellType;
    sget-object v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 484
    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;->isRichText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextValue;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextValue;->getValue()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 487
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$PlainStringValue;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$PlainStringValue;->getValue()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 490
    :cond_1
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v1, v0, v3}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 477
    :cond_2
    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;

    .line 478
    .local v1, "fv":Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;
    invoke-virtual {v1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;->getFormulaType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v2

    sget-object v4, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v2, v4, :cond_3

    .line 480
    iget-object v2, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v2, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringFormulaValue;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringFormulaValue;->getPreEvaluatedValue()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 479
    :cond_3
    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    sget-object v4, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v2, v4, v3}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 474
    .end local v1    # "fv":Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;
    :cond_4
    const-string v1, ""

    return-object v1
.end method

.method public isPartOfArrayFormulaGroup()Z
    .locals 1
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 737
    const/4 v0, 0x0

    return v0
.end method

.method public removeCellComment()V
    .locals 1

    .line 670
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->removeProperty(I)V

    .line 671
    return-void
.end method

.method public removeHyperlink()V
    .locals 3

    .line 713
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->removeProperty(I)V

    .line 715
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getRowIndex()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getColumnIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeHyperlink(II)V

    .line 716
    return-void
.end method

.method removeProperty(I)V
    .locals 3
    .param p1, "type"    # I

    .line 776
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_firstProperty:Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;

    .line 777
    .local v0, "current":Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;
    const/4 v1, 0x0

    .line 778
    .local v1, "previous":Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;->getType()I

    move-result v2

    if-eq v2, p1, :cond_0

    .line 780
    move-object v1, v0

    .line 781
    iget-object v0, v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;->_next:Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;

    goto :goto_0

    .line 783
    :cond_0
    if-eqz v0, :cond_2

    .line 785
    if-eqz v1, :cond_1

    .line 787
    iget-object v2, v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;->_next:Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;

    iput-object v2, v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;->_next:Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;

    goto :goto_1

    .line 791
    :cond_1
    iget-object v2, v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;->_next:Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;

    iput-object v2, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_firstProperty:Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;

    .line 794
    :cond_2
    :goto_1
    return-void
.end method

.method public setAsActiveCell()V
    .locals 2

    .line 639
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getAddress()Lorg/apache/poi/ss/util/CellAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->setActiveCell(Lorg/apache/poi/ss/util/CellAddress;)V

    .line 640
    return-void
.end method

.method public setCellComment(Lorg/apache/poi/ss/usermodel/Comment;)V
    .locals 1
    .param p1, "comment"    # Lorg/apache/poi/ss/usermodel/Comment;

    .line 650
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->setProperty(ILjava/lang/Object;)V

    .line 651
    return-void
.end method

.method public setCellErrorValue(B)V
    .locals 2
    .param p1, "value"    # B

    .line 523
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->ensureType(Lorg/apache/poi/ss/usermodel/CellType;)V

    .line 524
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-interface {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;->getType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    .line 525
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorFormulaValue;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorFormulaValue;->setPreEvaluatedValue(B)V

    goto :goto_0

    .line 527
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorValue;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorValue;->setValue(B)V

    .line 528
    :goto_0
    return-void
.end method

.method public setCellFormula(Ljava/lang/String;)V
    .locals 1
    .param p1, "formula"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/FormulaParseException;
        }
    .end annotation

    .line 355
    if-nez p1, :cond_0

    .line 356
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->setType(Lorg/apache/poi/ss/usermodel/CellType;)V

    .line 357
    return-void

    .line 360
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->computeTypeFromFormula(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->ensureFormulaType(Lorg/apache/poi/ss/usermodel/CellType;)V

    .line 361
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;->setValue(Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method public setCellStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 0
    .param p1, "style"    # Lorg/apache/poi/ss/usermodel/CellStyle;

    .line 612
    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_style:Lorg/apache/poi/ss/usermodel/CellStyle;

    .line 613
    return-void
.end method

.method public setCellType(I)V
    .locals 1
    .param p1, "cellType"    # I

    .line 135
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/CellType;->forInt(I)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->ensureType(Lorg/apache/poi/ss/usermodel/CellType;)V

    .line 136
    return-void
.end method

.method public setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V
    .locals 0
    .param p1, "cellType"    # Lorg/apache/poi/ss/usermodel/CellType;

    .line 145
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->ensureType(Lorg/apache/poi/ss/usermodel/CellType;)V

    .line 146
    return-void
.end method

.method public setCellValue(D)V
    .locals 2
    .param p1, "value"    # D

    .line 214
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    sget-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->DIV0:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->setCellErrorValue(B)V

    goto :goto_0

    .line 218
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    sget-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->NUM:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->setCellErrorValue(B)V

    goto :goto_0

    .line 221
    :cond_1
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->ensureTypeOrFormulaType(Lorg/apache/poi/ss/usermodel/CellType;)V

    .line 222
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-interface {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;->getType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_2

    .line 223
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;->setPreEvaluatedValue(D)V

    goto :goto_0

    .line 225
    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericValue;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericValue;->setValue(D)V

    .line 227
    :goto_0
    return-void
.end method

.method public setCellValue(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .line 321
    if-eqz p1, :cond_3

    .line 322
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->ensureTypeOrFormulaType(Lorg/apache/poi/ss/usermodel/CellType;)V

    .line 324
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxTextLength()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 328
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-interface {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;->getType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_1

    .line 329
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    instance-of v1, v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;

    if-eqz v1, :cond_0

    .line 330
    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;->setPreEvaluatedValue(D)V

    goto :goto_0

    .line 332
    :cond_0
    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringFormulaValue;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringFormulaValue;->setPreEvaluatedValue(Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$PlainStringValue;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$PlainStringValue;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 325
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The maximum length of cell contents (text) is 32,767 characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_3
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    .line 339
    :goto_0
    return-void
.end method

.method public setCellValue(Ljava/util/Calendar;)V
    .locals 3
    .param p1, "value"    # Ljava/util/Calendar;

    .line 273
    if-nez p1, :cond_0

    .line 274
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    .line 275
    return-void

    .line 278
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->isDate1904()Z

    move-result v0

    .line 279
    .local v0, "date1904":Z
    invoke-static {p1, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Calendar;Z)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->setCellValue(D)V

    .line 280
    return-void
.end method

.method public setCellValue(Ljava/util/Date;)V
    .locals 3
    .param p1, "value"    # Ljava/util/Date;

    .line 246
    if-nez p1, :cond_0

    .line 247
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    .line 248
    return-void

    .line 251
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->isDate1904()Z

    move-result v0

    .line 252
    .local v0, "date1904":Z
    invoke-static {p1, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Date;Z)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->setCellValue(D)V

    .line 253
    return-void
.end method

.method public setCellValue(Lorg/apache/poi/ss/usermodel/RichTextString;)V
    .locals 6
    .param p1, "value"    # Lorg/apache/poi/ss/usermodel/RichTextString;

    .line 293
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    .line 295
    .local v0, "xvalue":Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 296
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->ensureRichTextStringType()V

    .line 298
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->length()I

    move-result v1

    sget-object v2, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v2}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxTextLength()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 301
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->hasFormatting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    sget-object v1, Lorg/apache/poi/xssf/streaming/SXSSFCell;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x5

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "SXSSF doesn\'t support Shared Strings, rich text formatting information has be lost"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 304
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextValue;

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextValue;->setValue(Lorg/apache/poi/ss/usermodel/RichTextString;)V

    goto :goto_0

    .line 299
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The maximum length of cell contents (text) is 32,767 characters"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 306
    :cond_2
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    .line 308
    :goto_0
    return-void
.end method

.method public setCellValue(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 504
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->ensureTypeOrFormulaType(Lorg/apache/poi/ss/usermodel/CellType;)V

    .line 505
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-interface {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;->getType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    .line 506
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanFormulaValue;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanFormulaValue;->setPreEvaluatedValue(Z)V

    goto :goto_0

    .line 508
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanValue;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanValue;->setValue(Z)V

    .line 509
    :goto_0
    return-void
.end method

.method setFormulaType(Lorg/apache/poi/ss/usermodel/CellType;)V
    .locals 4
    .param p1, "type"    # Lorg/apache/poi/ss/usermodel/CellType;

    .line 951
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    .line 952
    .local v0, "prevValue":Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;
    sget-object v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 971
    new-instance v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorFormulaValue;

    invoke-direct {v1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorFormulaValue;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    .line 972
    goto :goto_0

    .line 976
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 966
    :cond_1
    new-instance v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanFormulaValue;

    invoke-direct {v1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanFormulaValue;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    .line 967
    goto :goto_0

    .line 961
    :cond_2
    new-instance v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringFormulaValue;

    invoke-direct {v1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringFormulaValue;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    .line 962
    goto :goto_0

    .line 956
    :cond_3
    new-instance v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;

    invoke-direct {v1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    .line 957
    nop

    .line 981
    :goto_0
    instance-of v1, v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;

    if-eqz v1, :cond_4

    .line 982
    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;

    move-object v2, v0

    check-cast v2, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;

    iget-object v2, v2, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;->_value:Ljava/lang/String;

    iput-object v2, v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;->_value:Ljava/lang/String;

    .line 984
    :cond_4
    return-void
.end method

.method public setHyperlink(Lorg/apache/poi/ss/usermodel/Hyperlink;)V
    .locals 4
    .param p1, "link"    # Lorg/apache/poi/ss/usermodel/Hyperlink;

    .line 691
    if-nez p1, :cond_0

    .line 692
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->removeHyperlink()V

    .line 693
    return-void

    .line 696
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->setProperty(ILjava/lang/Object;)V

    .line 698
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    .line 700
    .local v0, "xssfobj":Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;
    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getRowIndex()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getColumnIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    .line 701
    .local v1, "ref":Lorg/apache/poi/ss/util/CellReference;
    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setCellReference(Lorg/apache/poi/ss/util/CellReference;)V

    .line 704
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->addHyperlink(Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;)V

    .line 705
    return-void
.end method

.method setProperty(ILjava/lang/Object;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 797
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_firstProperty:Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;

    .line 798
    .local v0, "current":Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;
    const/4 v1, 0x0

    .line 799
    .local v1, "previous":Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;->getType()I

    move-result v2

    if-eq v2, p1, :cond_0

    .line 801
    move-object v1, v0

    .line 802
    iget-object v0, v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;->_next:Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;

    goto :goto_0

    .line 804
    :cond_0
    if-eqz v0, :cond_1

    .line 806
    invoke-virtual {v0, p2}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;->setValue(Ljava/lang/Object;)V

    goto :goto_2

    .line 810
    :cond_1
    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 819
    new-instance v2, Lorg/apache/poi/xssf/streaming/SXSSFCell$HyperlinkProperty;

    invoke-direct {v2, p2}, Lorg/apache/poi/xssf/streaming/SXSSFCell$HyperlinkProperty;-><init>(Ljava/lang/Object;)V

    move-object v0, v2

    .line 820
    goto :goto_1

    .line 824
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 814
    :cond_3
    new-instance v2, Lorg/apache/poi/xssf/streaming/SXSSFCell$CommentProperty;

    invoke-direct {v2, p2}, Lorg/apache/poi/xssf/streaming/SXSSFCell$CommentProperty;-><init>(Ljava/lang/Object;)V

    move-object v0, v2

    .line 815
    nop

    .line 827
    :goto_1
    if-eqz v1, :cond_4

    .line 829
    iput-object v0, v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;->_next:Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;

    goto :goto_2

    .line 833
    :cond_4
    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_firstProperty:Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;

    .line 836
    :goto_2
    return-void
.end method

.method setType(Lorg/apache/poi/ss/usermodel/CellType;)V
    .locals 3
    .param p1, "type"    # Lorg/apache/poi/ss/usermodel/CellType;

    .line 899
    sget-object v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 945
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 940
    :pswitch_0
    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorValue;

    invoke-direct {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorValue;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    .line 941
    goto :goto_0

    .line 929
    :pswitch_1
    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanValue;

    invoke-direct {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanValue;-><init>()V

    .line 930
    .local v0, "bval":Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanValue;
    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    if-eqz v1, :cond_0

    .line 932
    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->convertCellValueToBoolean()Z

    move-result v1

    .line 933
    .local v1, "val":Z
    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanValue;->setValue(Z)V

    .line 935
    .end local v1    # "val":Z
    :cond_0
    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    .line 936
    goto :goto_0

    .line 908
    .end local v0    # "bval":Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanValue;
    :pswitch_2
    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$PlainStringValue;

    invoke-direct {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$PlainStringValue;-><init>()V

    .line 909
    .local v0, "sval":Lorg/apache/poi/xssf/streaming/SXSSFCell$PlainStringValue;
    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    if-eqz v1, :cond_1

    .line 911
    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->convertCellValueToString()Ljava/lang/String;

    move-result-object v1

    .line 912
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$PlainStringValue;->setValue(Ljava/lang/String;)V

    .line 914
    .end local v1    # "str":Ljava/lang/String;
    :cond_1
    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    .line 915
    goto :goto_0

    .line 903
    .end local v0    # "sval":Lorg/apache/poi/xssf/streaming/SXSSFCell$PlainStringValue;
    :pswitch_3
    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericValue;

    invoke-direct {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericValue;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    .line 904
    goto :goto_0

    .line 919
    :pswitch_4
    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;

    invoke-direct {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    .line 920
    goto :goto_0

    .line 924
    :pswitch_5
    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$BlankValue;

    invoke-direct {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$BlankValue;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    .line 925
    nop

    .line 948
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 751
    sget-object v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, ""

    packed-switch v0, :pswitch_data_0

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Cell Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 757
    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getErrorCellValue()B

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 755
    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getBooleanCellValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TRUE"

    goto :goto_0

    :cond_0
    const-string v0, "FALSE"

    :goto_0
    return-object v0

    .line 768
    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 761
    :pswitch_3
    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->isCellDateFormatted(Lorg/apache/poi/ss/usermodel/Cell;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 762
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "dd-MMM-yyyy"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 763
    .local v0, "sdf":Ljava/text/DateFormat;
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 764
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getDateCellValue()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 766
    .end local v0    # "sdf":Ljava/text/DateFormat;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getNumericCellValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 759
    :pswitch_4
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellFormula()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 753
    :pswitch_5
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
