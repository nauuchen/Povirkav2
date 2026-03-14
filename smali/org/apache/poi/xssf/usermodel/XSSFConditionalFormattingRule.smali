.class public Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;
.super Ljava/lang/Object;
.source "XSSFConditionalFormattingRule.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;


# static fields
.field private static filterTypeLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;",
            "Lorg/apache/poi/ss/usermodel/ConditionFilterType;",
            ">;"
        }
    .end annotation
.end field

.field private static typeLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;",
            "Lorg/apache/poi/ss/usermodel/ConditionType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final _cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

.field private _sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->typeLookup:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->filterTypeLookup:Ljava/util/Map;

    .line 42
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->typeLookup:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->CELL_IS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionType;->CELL_VALUE_IS:Lorg/apache/poi/ss/usermodel/ConditionType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->typeLookup:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->EXPRESSION:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionType;->FORMULA:Lorg/apache/poi/ss/usermodel/ConditionType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->typeLookup:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->COLOR_SCALE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionType;->COLOR_SCALE:Lorg/apache/poi/ss/usermodel/ConditionType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->typeLookup:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->DATA_BAR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionType;->DATA_BAR:Lorg/apache/poi/ss/usermodel/ConditionType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->typeLookup:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->ICON_SET:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionType;->ICON_SET:Lorg/apache/poi/ss/usermodel/ConditionType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->typeLookup:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->TOP_10:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionType;->FILTER:Lorg/apache/poi/ss/usermodel/ConditionType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->typeLookup:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->UNIQUE_VALUES:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionType;->FILTER:Lorg/apache/poi/ss/usermodel/ConditionType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->typeLookup:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->DUPLICATE_VALUES:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionType;->FILTER:Lorg/apache/poi/ss/usermodel/ConditionType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->typeLookup:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->CONTAINS_TEXT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionType;->FILTER:Lorg/apache/poi/ss/usermodel/ConditionType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->typeLookup:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->NOT_CONTAINS_TEXT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionType;->FILTER:Lorg/apache/poi/ss/usermodel/ConditionType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->typeLookup:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->BEGINS_WITH:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionType;->FILTER:Lorg/apache/poi/ss/usermodel/ConditionType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->typeLookup:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->ENDS_WITH:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionType;->FILTER:Lorg/apache/poi/ss/usermodel/ConditionType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->typeLookup:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->CONTAINS_BLANKS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionType;->FILTER:Lorg/apache/poi/ss/usermodel/ConditionType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->typeLookup:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->NOT_CONTAINS_BLANKS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionType;->FILTER:Lorg/apache/poi/ss/usermodel/ConditionType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->typeLookup:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->CONTAINS_ERRORS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionType;->FILTER:Lorg/apache/poi/ss/usermodel/ConditionType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->typeLookup:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->NOT_CONTAINS_ERRORS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionType;->FILTER:Lorg/apache/poi/ss/usermodel/ConditionType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->typeLookup:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->TIME_PERIOD:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionType;->FILTER:Lorg/apache/poi/ss/usermodel/ConditionType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->typeLookup:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->ABOVE_AVERAGE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionType;->FILTER:Lorg/apache/poi/ss/usermodel/ConditionType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->filterTypeLookup:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->TOP_10:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->TOP_10:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->filterTypeLookup:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->UNIQUE_VALUES:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->UNIQUE_VALUES:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->filterTypeLookup:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->DUPLICATE_VALUES:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->DUPLICATE_VALUES:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->filterTypeLookup:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->CONTAINS_TEXT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->CONTAINS_TEXT:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->filterTypeLookup:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->NOT_CONTAINS_TEXT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->NOT_CONTAINS_TEXT:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->filterTypeLookup:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->BEGINS_WITH:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->BEGINS_WITH:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->filterTypeLookup:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->ENDS_WITH:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->ENDS_WITH:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->filterTypeLookup:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->CONTAINS_BLANKS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->CONTAINS_BLANKS:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->filterTypeLookup:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->NOT_CONTAINS_BLANKS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->NOT_CONTAINS_BLANKS:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->filterTypeLookup:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->CONTAINS_ERRORS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->CONTAINS_ERRORS:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->filterTypeLookup:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->NOT_CONTAINS_ERRORS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->NOT_CONTAINS_ERRORS:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->filterTypeLookup:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->TIME_PERIOD:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->TIME_PERIOD:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->filterTypeLookup:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->ABOVE_AVERAGE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->ABOVE_AVERAGE:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    .locals 1
    .param p1, "sh"    # Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    .line 85
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 86
    return-void
.end method

.method constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;)V
    .locals 0
    .param p1, "sh"    # Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .param p2, "cfRule"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    .line 90
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 91
    return-void
.end method


# virtual methods
.method public bridge synthetic createBorderFormatting()Lorg/apache/poi/ss/usermodel/BorderFormatting;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->createBorderFormatting()Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;

    move-result-object v0

    return-object v0
.end method

.method public createBorderFormatting()Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;
    .locals 4

    .line 129
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getDxf(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    move-result-object v0

    .line 131
    .local v0, "dxf":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->isSetBorder()Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->addNewBorder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    move-result-object v1

    .local v1, "border":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;
    goto :goto_0

    .line 134
    .end local v1    # "border":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->getBorder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    move-result-object v1

    .line 137
    .restart local v1    # "border":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;
    :goto_0
    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xssf/model/StylesTable;->getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-object v2
.end method

.method public createColorScaleFormatting()Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;
    .locals 4

    .line 291
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->isSetColorScale()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->COLOR_SCALE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    if-ne v0, v1, :cond_0

    .line 292
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getColorScaleFormatting()Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;

    move-result-object v0

    return-object v0

    .line 295
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->COLOR_SCALE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;)V

    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, "scale":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->isSetColorScale()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getColorScale()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;

    move-result-object v0

    goto :goto_0

    .line 302
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->addNewColorScale()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;

    move-result-object v0

    .line 306
    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;->sizeOfCfvoArray()I

    move-result v1

    if-nez v1, :cond_2

    .line 308
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;->addNewCfvo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    move-result-object v1

    .line 309
    .local v1, "cfvo":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;
    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->MIN:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    iget-object v2, v2, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->name:Ljava/lang/String;

    invoke-static {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;)V

    .line 310
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;->addNewCfvo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    move-result-object v1

    .line 311
    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->PERCENTILE:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    iget-object v2, v2, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->name:Ljava/lang/String;

    invoke-static {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;)V

    .line 312
    const-string v2, "50"

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;->setVal(Ljava/lang/String;)V

    .line 313
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;->addNewCfvo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    move-result-object v1

    .line 314
    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->MAX:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    iget-object v2, v2, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->name:Ljava/lang/String;

    invoke-static {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;)V

    .line 316
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    .line 317
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;->addNewColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    .line 316
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 322
    .end local v1    # "cfvo":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;
    .end local v2    # "i":I
    :cond_2
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xssf/model/StylesTable;->getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-object v1
.end method

.method public createDataBarFormatting(Lorg/apache/poi/xssf/usermodel/XSSFColor;)Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;
    .locals 5
    .param p1, "color"    # Lorg/apache/poi/xssf/usermodel/XSSFColor;

    .line 213
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->isSetDataBar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->DATA_BAR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    if-ne v0, v1, :cond_0

    .line 214
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getDataBarFormatting()Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;

    move-result-object v0

    return-object v0

    .line 217
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->DATA_BAR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;)V

    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, "bar":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->isSetDataBar()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getDataBar()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;

    move-result-object v0

    goto :goto_0

    .line 224
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->addNewDataBar()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;

    move-result-object v0

    .line 227
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;->setColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    .line 230
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;->addNewCfvo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    move-result-object v1

    .line 231
    .local v1, "min":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;
    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->MIN:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    iget-object v2, v2, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->name:Ljava/lang/String;

    invoke-static {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;)V

    .line 232
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;->addNewCfvo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    move-result-object v2

    .line 233
    .local v2, "max":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;
    sget-object v3, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->MAX:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    iget-object v3, v3, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->name:Ljava/lang/String;

    invoke-static {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;)V

    .line 236
    new-instance v3, Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;

    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/xssf/model/StylesTable;->getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-object v3
.end method

.method public bridge synthetic createFontFormatting()Lorg/apache/poi/ss/usermodel/FontFormatting;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->createFontFormatting()Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;

    move-result-object v0

    return-object v0
.end method

.method public createFontFormatting()Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;
    .locals 4

    .line 157
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getDxf(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    move-result-object v0

    .line 159
    .local v0, "dxf":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->isSetFont()Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->addNewFont()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    move-result-object v1

    .local v1, "font":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;
    goto :goto_0

    .line 162
    .end local v1    # "font":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->getFont()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    move-result-object v1

    .line 165
    .restart local v1    # "font":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;
    :goto_0
    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xssf/model/StylesTable;->getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-object v2
.end method

.method public createMultiStateFormatting(Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;)Lorg/apache/poi/xssf/usermodel/XSSFIconMultiStateFormatting;
    .locals 6
    .param p1, "iconSet"    # Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    .line 249
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->isSetIconSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->ICON_SET:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    if-ne v0, v1, :cond_0

    .line 250
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getMultiStateFormatting()Lorg/apache/poi/xssf/usermodel/XSSFIconMultiStateFormatting;

    move-result-object v0

    return-object v0

    .line 253
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->ICON_SET:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;)V

    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "icons":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->isSetIconSet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getIconSet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;

    move-result-object v0

    goto :goto_0

    .line 260
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->addNewIconSet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;

    move-result-object v0

    .line 263
    :goto_0
    iget-object v1, p1, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->name:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 264
    iget-object v1, p1, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->name:Ljava/lang/String;

    invoke-static {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    move-result-object v1

    .line 265
    .local v1, "xIconSet":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;->setIconSet(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;)V

    .line 269
    .end local v1    # "xIconSet":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;
    :cond_2
    const/16 v1, 0x64

    iget v2, p1, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->num:I

    div-int/2addr v1, v2

    .line 270
    .local v1, "jump":I
    sget-object v2, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->PERCENT:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    iget-object v2, v2, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->name:Ljava/lang/String;

    invoke-static {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    move-result-object v2

    .line 271
    .local v2, "type":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v4, p1, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->num:I

    if-ge v3, v4, :cond_3

    .line 272
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;->addNewCfvo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    move-result-object v4

    .line 273
    .local v4, "cfvo":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;
    invoke-interface {v4, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;)V

    .line 274
    mul-int v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;->setVal(Ljava/lang/String;)V

    .line 271
    .end local v4    # "cfvo":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 278
    .end local v3    # "i":I
    :cond_3
    new-instance v3, Lorg/apache/poi/xssf/usermodel/XSSFIconMultiStateFormatting;

    invoke-direct {v3, v0}, Lorg/apache/poi/xssf/usermodel/XSSFIconMultiStateFormatting;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;)V

    return-object v3
.end method

.method public bridge synthetic createPatternFormatting()Lorg/apache/poi/ss/usermodel/PatternFormatting;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->createPatternFormatting()Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;

    move-result-object v0

    return-object v0
.end method

.method public createPatternFormatting()Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;
    .locals 4

    .line 185
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getDxf(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    move-result-object v0

    .line 187
    .local v0, "dxf":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->isSetFill()Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->addNewFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    move-result-object v1

    .local v1, "fill":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;
    goto :goto_0

    .line 190
    .end local v1    # "fill":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->getFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    move-result-object v1

    .line 193
    .restart local v1    # "fill":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;
    :goto_0
    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xssf/model/StylesTable;->getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-object v2
.end method

.method public bridge synthetic getBorderFormatting()Lorg/apache/poi/ss/usermodel/BorderFormatting;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getBorderFormatting()Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;

    move-result-object v0

    return-object v0
.end method

.method public getBorderFormatting()Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;
    .locals 4

    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getDxf(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    move-result-object v0

    .line 145
    .local v0, "dxf":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->isSetBorder()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->getBorder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xssf/model/StylesTable;->getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-object v1

    .line 145
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method getCTCfRule()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    return-object v0
.end method

.method public bridge synthetic getColorScaleFormatting()Lorg/apache/poi/ss/usermodel/ColorScaleFormatting;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getColorScaleFormatting()Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;

    move-result-object v0

    return-object v0
.end method

.method public getColorScaleFormatting()Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;
    .locals 3

    .line 325
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->isSetColorScale()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getColorScale()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;

    move-result-object v0

    .line 327
    .local v0, "scale":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xssf/model/StylesTable;->getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-object v1

    .line 329
    .end local v0    # "scale":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getComparisonOperation()B
    .locals 3

    .line 376
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getOperator()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    move-result-object v0

    .line 377
    .local v0, "op":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 379
    :cond_0
    invoke-virtual {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 389
    return v1

    .line 387
    :pswitch_0
    const/4 v1, 0x2

    return v1

    .line 386
    :pswitch_1
    const/4 v1, 0x1

    return v1

    .line 382
    :pswitch_2
    const/4 v1, 0x5

    return v1

    .line 383
    :pswitch_3
    const/4 v1, 0x7

    return v1

    .line 385
    :pswitch_4
    const/4 v1, 0x4

    return v1

    .line 384
    :pswitch_5
    const/4 v1, 0x3

    return v1

    .line 381
    :pswitch_6
    const/16 v1, 0x8

    return v1

    .line 380
    :pswitch_7
    const/4 v1, 0x6

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getConditionFilterType()Lorg/apache/poi/ss/usermodel/ConditionFilterType;
    .locals 2

    .line 358
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->filterTypeLookup:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    return-object v0
.end method

.method public getConditionType()Lorg/apache/poi/ss/usermodel/ConditionType;
    .locals 2

    .line 350
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->typeLookup:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/ConditionType;

    return-object v0
.end method

.method public bridge synthetic getDataBarFormatting()Lorg/apache/poi/ss/usermodel/DataBarFormatting;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getDataBarFormatting()Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;

    move-result-object v0

    return-object v0
.end method

.method public getDataBarFormatting()Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;
    .locals 3

    .line 239
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->isSetDataBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getDataBar()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;

    move-result-object v0

    .line 241
    .local v0, "bar":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xssf/model/StylesTable;->getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-object v1

    .line 243
    .end local v0    # "bar":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getDxf(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;
    .locals 6
    .param p1, "create"    # Z

    .line 98
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object v0

    .line 99
    .local v0, "styles":Lorg/apache/poi/xssf/model/StylesTable;
    const/4 v1, 0x0

    .line 100
    .local v1, "dxf":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/StylesTable;->_getDXfsSize()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->isSetDxfId()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getDxfId()J

    move-result-wide v2

    long-to-int v3, v2

    .line 102
    .local v3, "dxfId":I
    invoke-virtual {v0, v3}, Lorg/apache/poi/xssf/model/StylesTable;->getDxfAt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    move-result-object v1

    .line 104
    .end local v3    # "dxfId":I
    :cond_0
    if-eqz p1, :cond_1

    if-nez v1, :cond_1

    .line 105
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/model/StylesTable;->putDxf(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;)I

    move-result v2

    .line 107
    .local v2, "dxfId":I
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    add-int/lit8 v4, v2, -0x1

    int-to-long v4, v4

    invoke-interface {v3, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->setDxfId(J)V

    .line 109
    .end local v2    # "dxfId":I
    :cond_1
    return-object v1
.end method

.method public getFilterConfiguration()Lorg/apache/poi/ss/usermodel/ConditionFilterData;
    .locals 2

    .line 362
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionFilterData;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFConditionFilterData;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;)V

    return-object v0
.end method

.method public bridge synthetic getFontFormatting()Lorg/apache/poi/ss/usermodel/FontFormatting;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getFontFormatting()Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;

    move-result-object v0

    return-object v0
.end method

.method public getFontFormatting()Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;
    .locals 4

    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getDxf(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    move-result-object v0

    .line 173
    .local v0, "dxf":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->isSetFont()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->getFont()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xssf/model/StylesTable;->getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFFontFormatting;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-object v1

    .line 173
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getFormula1()Ljava/lang/String;
    .locals 2

    .line 407
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->sizeOfFormulaArray()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getFormulaArray(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getFormula2()Ljava/lang/String;
    .locals 2

    .line 418
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->sizeOfFormulaArray()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getFormulaArray(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getMultiStateFormatting()Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getMultiStateFormatting()Lorg/apache/poi/xssf/usermodel/XSSFIconMultiStateFormatting;

    move-result-object v0

    return-object v0
.end method

.method public getMultiStateFormatting()Lorg/apache/poi/xssf/usermodel/XSSFIconMultiStateFormatting;
    .locals 2

    .line 281
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->isSetIconSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getIconSet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;

    move-result-object v0

    .line 283
    .local v0, "icons":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFIconMultiStateFormatting;

    invoke-direct {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFIconMultiStateFormatting;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;)V

    return-object v1

    .line 285
    .end local v0    # "icons":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumberFormat()Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;
    .locals 5

    .line 338
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getDxf(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    move-result-object v0

    .line 339
    .local v0, "dxf":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->isSetNumFmt()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 341
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->getNumFmt()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;

    move-result-object v1

    .line 342
    .local v1, "numFmt":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;
    new-instance v2, Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;->getNumFmtId()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;->getFormatCode()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;-><init>(ILjava/lang/String;)V

    return-object v2

    .line 339
    .end local v1    # "numFmt":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic getPatternFormatting()Lorg/apache/poi/ss/usermodel/PatternFormatting;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getPatternFormatting()Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;

    move-result-object v0

    return-object v0
.end method

.method public getPatternFormatting()Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;
    .locals 4

    .line 200
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getDxf(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    move-result-object v0

    .line 201
    .local v0, "dxf":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->isSetFill()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->getFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xssf/model/StylesTable;->getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFPatternFormatting;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-object v1

    .line 201
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPriority()I
    .locals 2

    .line 113
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getPriority()I

    move-result v0

    .line 115
    .local v0, "priority":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getStopIfTrue()Z
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->_cfRule:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getStopIfTrue()Z

    move-result v0

    return v0
.end method

.method public getStripeSize()I
    .locals 1

    .line 426
    const/4 v0, 0x0

    return v0
.end method
