.class public Lorg/apache/poi/xssf/usermodel/XSSFConditionFilterData;
.super Ljava/lang/Object;
.source "XSSFConditionFilterData.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/ConditionFilterData;


# instance fields
.field private final _cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;


# direct methods
.method constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;)V
    .locals 0
    .param p1, "cfRule"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionFilterData;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    .line 31
    return-void
.end method


# virtual methods
.method public getAboveAverage()Z
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionFilterData;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getAboveAverage()Z

    move-result v0

    return v0
.end method

.method public getBottom()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionFilterData;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getBottom()Z

    move-result v0

    return v0
.end method

.method public getEqualAverage()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionFilterData;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getEqualAverage()Z

    move-result v0

    return v0
.end method

.method public getPercent()Z
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionFilterData;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getPercent()Z

    move-result v0

    return v0
.end method

.method public getRank()J
    .locals 2

    .line 50
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionFilterData;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getRank()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStdDev()I
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionFilterData;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getStdDev()I

    move-result v0

    return v0
.end method
