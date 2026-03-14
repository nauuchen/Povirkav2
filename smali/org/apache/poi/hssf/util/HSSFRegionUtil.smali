.class public final Lorg/apache/poi/hssf/util/HSSFRegionUtil;
.super Ljava/lang/Object;
.source "HSSFRegionUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static setBorderBottom(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 0
    .param p0, "border"    # I
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p3, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 97
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/util/RegionUtil;->setBorderBottom(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;)V

    .line 98
    return-void
.end method

.method public static setBorderLeft(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 0
    .param p0, "border"    # I
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p3, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 45
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/util/RegionUtil;->setBorderLeft(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;)V

    .line 46
    return-void
.end method

.method public static setBorderRight(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 0
    .param p0, "border"    # I
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p3, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 71
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/util/RegionUtil;->setBorderRight(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;)V

    .line 72
    return-void
.end method

.method public static setBorderTop(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 0
    .param p0, "border"    # I
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p3, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 123
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/util/RegionUtil;->setBorderTop(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;)V

    .line 124
    return-void
.end method

.method public static setBottomBorderColor(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 0
    .param p0, "color"    # I
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p3, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 110
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/util/RegionUtil;->setBottomBorderColor(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;)V

    .line 111
    return-void
.end method

.method public static setLeftBorderColor(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 0
    .param p0, "color"    # I
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p3, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 58
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/util/RegionUtil;->setLeftBorderColor(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;)V

    .line 59
    return-void
.end method

.method public static setRightBorderColor(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 0
    .param p0, "color"    # I
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p3, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 84
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/util/RegionUtil;->setRightBorderColor(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;)V

    .line 85
    return-void
.end method

.method public static setTopBorderColor(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 0
    .param p0, "color"    # I
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p3, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 136
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/util/RegionUtil;->setTopBorderColor(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;)V

    .line 137
    return-void
.end method
