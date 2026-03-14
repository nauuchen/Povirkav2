.class public Lorg/apache/poi/ss/util/SheetUtil;
.super Ljava/lang/Object;
.source "SheetUtil.java"


# static fields
.field private static final defaultChar:C = '0'

.field private static final dummyEvaluator:Lorg/apache/poi/ss/usermodel/FormulaEvaluator;

.field private static final fontHeightMultiple:D = 2.0

.field private static final fontRenderContext:Ljava/awt/font/FontRenderContext;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 71
    new-instance v0, Lorg/apache/poi/ss/util/SheetUtil$1;

    invoke-direct {v0}, Lorg/apache/poi/ss/util/SheetUtil$1;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/util/SheetUtil;->dummyEvaluator:Lorg/apache/poi/ss/usermodel/FormulaEvaluator;

    .line 111
    new-instance v0, Ljava/awt/font/FontRenderContext;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Ljava/awt/font/FontRenderContext;-><init>(Ljava/awt/geom/AffineTransform;ZZ)V

    sput-object v0, Lorg/apache/poi/ss/util/SheetUtil;->fontRenderContext:Ljava/awt/font/FontRenderContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canComputeColumnWidth(Lorg/apache/poi/ss/usermodel/Font;)Z
    .locals 8
    .param p0, "font"    # Lorg/apache/poi/ss/usermodel/Font;

    .line 319
    new-instance v0, Ljava/text/AttributedString;

    const-string v1, "1w"

    invoke-direct {v0, v1}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 320
    .local v0, "str":Ljava/text/AttributedString;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/ss/util/SheetUtil;->copyAttributes(Lorg/apache/poi/ss/usermodel/Font;Ljava/text/AttributedString;II)V

    .line 322
    new-instance v1, Ljava/awt/font/TextLayout;

    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/ss/util/SheetUtil;->fontRenderContext:Ljava/awt/font/FontRenderContext;

    invoke-direct {v1, v3, v4}, Ljava/awt/font/TextLayout;-><init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V

    .line 323
    .local v1, "layout":Ljava/awt/font/TextLayout;
    invoke-virtual {v1}, Ljava/awt/font/TextLayout;->getBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v3

    invoke-virtual {v3}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-lez v7, :cond_0

    .line 324
    const/4 v2, 0x1

    return v2

    .line 327
    :cond_0
    return v2
.end method

.method public static containsCell(Lorg/apache/poi/ss/util/CellRangeAddress;II)Z
    .locals 1
    .param p0, "cr"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p1, "rowIx"    # I
    .param p2, "colIx"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 352
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ss/util/CellRangeAddress;->isInRange(II)Z

    move-result v0

    return v0
.end method

.method private static copyAttributes(Lorg/apache/poi/ss/usermodel/Font;Ljava/text/AttributedString;II)V
    .locals 2
    .param p0, "font"    # Lorg/apache/poi/ss/usermodel/Font;
    .param p1, "str"    # Ljava/text/AttributedString;
    .param p2, "startIdx"    # I
    .param p3, "endIdx"    # I

    .line 334
    sget-object v0, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Font;->getFontName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p2, p3}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 335
    sget-object v0, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Font;->getFontHeightInPoints()S

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    .line 336
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Font;->getBold()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/awt/font/TextAttribute;->WEIGHT:Ljava/awt/font/TextAttribute;

    sget-object v1, Ljava/awt/font/TextAttribute;->WEIGHT_BOLD:Ljava/lang/Float;

    invoke-virtual {p1, v0, v1, p2, p3}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 337
    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Font;->getItalic()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/awt/font/TextAttribute;->POSTURE:Ljava/awt/font/TextAttribute;

    sget-object v1, Ljava/awt/font/TextAttribute;->POSTURE_OBLIQUE:Ljava/lang/Float;

    invoke-virtual {p1, v0, v1, p2, p3}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 338
    :cond_1
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Font;->getUnderline()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    sget-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE:Ljava/awt/font/TextAttribute;

    sget-object v1, Ljava/awt/font/TextAttribute;->UNDERLINE_ON:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1, p2, p3}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 339
    :cond_2
    return-void
.end method

.method public static getCell(Lorg/apache/poi/ss/usermodel/Sheet;II)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 2
    .param p0, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;
    .param p1, "rowIx"    # I
    .param p2, "colIx"    # I

    .line 371
    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v0

    .line 372
    .local v0, "r":Lorg/apache/poi/ss/usermodel/Row;
    if-eqz v0, :cond_0

    .line 373
    invoke-interface {v0, p2}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v1

    return-object v1

    .line 375
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getCellWidth(IILorg/apache/poi/ss/usermodel/CellStyle;DLjava/text/AttributedString;)D
    .locals 8
    .param p0, "defaultCharWidth"    # I
    .param p1, "colspan"    # I
    .param p2, "style"    # Lorg/apache/poi/ss/usermodel/CellStyle;
    .param p3, "minWidth"    # D
    .param p5, "str"    # Ljava/text/AttributedString;

    .line 203
    new-instance v0, Ljava/awt/font/TextLayout;

    invoke-virtual {p5}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/util/SheetUtil;->fontRenderContext:Ljava/awt/font/FontRenderContext;

    invoke-direct {v0, v1, v2}, Ljava/awt/font/TextLayout;-><init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V

    .line 205
    .local v0, "layout":Ljava/awt/font/TextLayout;
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/CellStyle;->getRotation()S

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    new-instance v1, Ljava/awt/geom/AffineTransform;

    invoke-direct {v1}, Ljava/awt/geom/AffineTransform;-><init>()V

    .line 213
    .local v1, "trans":Ljava/awt/geom/AffineTransform;
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/CellStyle;->getRotation()S

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double v2, v2, v6

    const-wide v6, 0x4076800000000000L    # 360.0

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/awt/geom/AffineTransform;->getRotateInstance(D)Ljava/awt/geom/AffineTransform;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    .line 214
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, v4, v5}, Ljava/awt/geom/AffineTransform;->getScaleInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    .line 217
    invoke-virtual {v0, v1}, Ljava/awt/font/TextLayout;->getOutline(Ljava/awt/geom/AffineTransform;)Ljava/awt/Shape;

    move-result-object v2

    invoke-interface {v2}, Ljava/awt/Shape;->getBounds()Ljava/awt/Rectangle;

    move-result-object v1

    .line 218
    .local v1, "bounds":Ljava/awt/geom/Rectangle2D;
    goto :goto_0

    .line 219
    .end local v1    # "bounds":Ljava/awt/geom/Rectangle2D;
    :cond_0
    invoke-virtual {v0}, Ljava/awt/font/TextLayout;->getBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    .line 222
    .restart local v1    # "bounds":Ljava/awt/geom/Rectangle2D;
    :goto_0
    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v2

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 223
    .local v2, "frameWidth":D
    int-to-double v4, p1

    div-double v4, v2, v4

    int-to-double v6, p0

    div-double/2addr v4, v6

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/CellStyle;->getIndention()S

    move-result v6

    int-to-double v6, v6

    add-double/2addr v4, v6

    invoke-static {p3, p4, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    return-wide v4
.end method

.method public static getCellWidth(Lorg/apache/poi/ss/usermodel/Cell;ILorg/apache/poi/ss/usermodel/DataFormatter;Z)D
    .locals 26
    .param p0, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .param p1, "defaultCharWidth"    # I
    .param p2, "formatter"    # Lorg/apache/poi/ss/usermodel/DataFormatter;
    .param p3, "useMergedCells"    # Z

    .line 123
    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v1

    .line 124
    .local v1, "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v2

    .line 125
    .local v2, "wb":Lorg/apache/poi/ss/usermodel/Workbook;
    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/usermodel/Cell;->getRow()Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v3

    .line 126
    .local v3, "row":Lorg/apache/poi/ss/usermodel/Row;
    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result v4

    .line 130
    .local v4, "column":I
    const/4 v0, 0x1

    .line 131
    .local v0, "colspan":I
    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Sheet;->getMergedRegions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object/from16 v6, p0

    move v13, v0

    .end local v0    # "colspan":I
    .end local p0    # "cell":Lorg/apache/poi/ss/usermodel/Cell;
    .local v5, "i$":Ljava/util/Iterator;
    .local v6, "cell":Lorg/apache/poi/ss/usermodel/Cell;
    .local v13, "colspan":I
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 132
    .local v0, "region":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result v7

    invoke-virtual {v0, v7, v4}, Lorg/apache/poi/ss/util/CellRangeAddress;->isInRange(II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 133
    if-nez p3, :cond_0

    .line 135
    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    return-wide v7

    .line 137
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v7

    invoke-interface {v3, v7}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v6

    .line 138
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v8

    sub-int/2addr v7, v8

    move v13, v7

    .end local v0    # "region":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_1
    goto :goto_0

    .line 142
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v6}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v5

    .line 143
    .local v5, "style":Lorg/apache/poi/ss/usermodel/CellStyle;
    invoke-interface {v6}, Lorg/apache/poi/ss/usermodel/Cell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    .line 146
    .local v0, "cellType":Lorg/apache/poi/ss/usermodel/CellType;
    sget-object v7, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v7, :cond_3

    .line 147
    invoke-interface {v6}, Lorg/apache/poi/ss/usermodel/Cell;->getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    move-object v14, v0

    goto :goto_1

    .line 146
    :cond_3
    move-object v14, v0

    .line 149
    .end local v0    # "cellType":Lorg/apache/poi/ss/usermodel/CellType;
    .local v14, "cellType":Lorg/apache/poi/ss/usermodel/CellType;
    :goto_1
    invoke-interface {v5}, Lorg/apache/poi/ss/usermodel/CellStyle;->getFontIndex()S

    move-result v0

    invoke-interface {v2, v0}, Lorg/apache/poi/ss/usermodel/Workbook;->getFontAt(S)Lorg/apache/poi/ss/usermodel/Font;

    move-result-object v15

    .line 151
    .local v15, "font":Lorg/apache/poi/ss/usermodel/Font;
    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    .line 152
    .local v16, "width":D
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    const/16 v10, 0x30

    if-ne v14, v0, :cond_5

    .line 153
    invoke-interface {v6}, Lorg/apache/poi/ss/usermodel/Cell;->getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object v0

    .line 154
    .local v0, "rt":Lorg/apache/poi/ss/usermodel/RichTextString;
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\n"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 155
    .local v18, "lines":[Ljava/lang/String;
    move-object/from16 v11, v18

    .local v11, "arr$":[Ljava/lang/String;
    array-length v9, v11

    .local v9, "len$":I
    const/4 v7, 0x0

    move v8, v7

    .local v8, "i$":I
    :goto_2
    if-ge v8, v9, :cond_4

    aget-object v7, v11, v8

    .line 156
    .local v7, "line":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 158
    .local v12, "txt":Ljava/lang/String;
    new-instance v10, Ljava/text/AttributedString;

    invoke-direct {v10, v12}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 159
    .local v10, "str":Ljava/text/AttributedString;
    move-object/from16 v20, v0

    .end local v0    # "rt":Lorg/apache/poi/ss/usermodel/RichTextString;
    .local v20, "rt":Lorg/apache/poi/ss/usermodel/RichTextString;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    move-object/from16 v21, v1

    const/4 v1, 0x0

    .end local v1    # "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    .local v21, "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    invoke-static {v15, v10, v1, v0}, Lorg/apache/poi/ss/util/SheetUtil;->copyAttributes(Lorg/apache/poi/ss/usermodel/Font;Ljava/text/AttributedString;II)V

    .line 165
    move-object v0, v7

    .end local v7    # "line":Ljava/lang/String;
    .local v0, "line":Ljava/lang/String;
    move/from16 v7, p1

    move/from16 v22, v8

    .end local v8    # "i$":I
    .local v22, "i$":I
    move v8, v13

    move/from16 v23, v9

    .end local v9    # "len$":I
    .local v23, "len$":I
    move-object v9, v5

    move-object/from16 v24, v10

    move-object/from16 v19, v11

    const/16 v1, 0x30

    .end local v10    # "str":Ljava/text/AttributedString;
    .end local v11    # "arr$":[Ljava/lang/String;
    .local v19, "arr$":[Ljava/lang/String;
    .local v24, "str":Ljava/text/AttributedString;
    move-wide/from16 v10, v16

    move-object/from16 v25, v12

    .end local v12    # "txt":Ljava/lang/String;
    .local v25, "txt":Ljava/lang/String;
    move-object/from16 v12, v24

    invoke-static/range {v7 .. v12}, Lorg/apache/poi/ss/util/SheetUtil;->getCellWidth(IILorg/apache/poi/ss/usermodel/CellStyle;DLjava/text/AttributedString;)D

    move-result-wide v16

    .line 155
    .end local v0    # "line":Ljava/lang/String;
    .end local v24    # "str":Ljava/text/AttributedString;
    .end local v25    # "txt":Ljava/lang/String;
    add-int/lit8 v8, v22, 0x1

    move-object/from16 v11, v19

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v9, v23

    const/16 v10, 0x30

    .end local v22    # "i$":I
    .restart local v8    # "i$":I
    goto :goto_2

    .end local v19    # "arr$":[Ljava/lang/String;
    .end local v20    # "rt":Lorg/apache/poi/ss/usermodel/RichTextString;
    .end local v21    # "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    .end local v23    # "len$":I
    .local v0, "rt":Lorg/apache/poi/ss/usermodel/RichTextString;
    .restart local v1    # "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    .restart local v9    # "len$":I
    .restart local v11    # "arr$":[Ljava/lang/String;
    :cond_4
    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move/from16 v22, v8

    move/from16 v23, v9

    move-object/from16 v19, v11

    .line 167
    .end local v0    # "rt":Lorg/apache/poi/ss/usermodel/RichTextString;
    .end local v1    # "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v11    # "arr$":[Ljava/lang/String;
    .end local v18    # "lines":[Ljava/lang/String;
    .restart local v21    # "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    goto/16 :goto_5

    .line 168
    .end local v21    # "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    .restart local v1    # "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    :cond_5
    move-object/from16 v21, v1

    const/16 v1, 0x30

    .end local v1    # "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    .restart local v21    # "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    const/4 v7, 0x0

    .line 169
    .local v7, "sval":Ljava/lang/String;
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v14, v0, :cond_6

    .line 172
    :try_start_0
    sget-object v0, Lorg/apache/poi/ss/util/SheetUtil;->dummyEvaluator:Lorg/apache/poi/ss/usermodel/FormulaEvaluator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v12, p2

    :try_start_1
    invoke-virtual {v12, v6, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatCellValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/FormulaEvaluator;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v7, v0

    .line 175
    goto :goto_4

    .line 173
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v12, p2

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    invoke-interface {v6}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    .line 175
    .end local v0    # "e":Ljava/lang/Exception;
    move-object v0, v7

    goto :goto_4

    .line 176
    :cond_6
    move-object/from16 v12, p2

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v14, v0, :cond_7

    .line 177
    invoke-interface {v6}, Lorg/apache/poi/ss/usermodel/Cell;->getBooleanCellValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    goto :goto_4

    .line 176
    :cond_7
    move-object v0, v7

    .line 179
    .end local v7    # "sval":Ljava/lang/String;
    .local v0, "sval":Ljava/lang/String;
    :goto_4
    if-eqz v0, :cond_8

    .line 180
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "txt":Ljava/lang/String;
    new-instance v7, Ljava/text/AttributedString;

    invoke-direct {v7, v1}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    move-object v10, v7

    .line 182
    .restart local v10    # "str":Ljava/text/AttributedString;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v15, v10, v8, v7}, Lorg/apache/poi/ss/util/SheetUtil;->copyAttributes(Lorg/apache/poi/ss/usermodel/Font;Ljava/text/AttributedString;II)V

    .line 184
    move/from16 v7, p1

    move v8, v13

    move-object v9, v5

    move-object/from16 v18, v10

    .end local v10    # "str":Ljava/text/AttributedString;
    .local v18, "str":Ljava/text/AttributedString;
    move-wide/from16 v10, v16

    move-object/from16 v12, v18

    invoke-static/range {v7 .. v12}, Lorg/apache/poi/ss/util/SheetUtil;->getCellWidth(IILorg/apache/poi/ss/usermodel/CellStyle;DLjava/text/AttributedString;)D

    move-result-wide v16

    .line 187
    .end local v0    # "sval":Ljava/lang/String;
    .end local v1    # "txt":Ljava/lang/String;
    .end local v18    # "str":Ljava/text/AttributedString;
    :cond_8
    :goto_5
    return-wide v16
.end method

.method public static getCellWithMerges(Lorg/apache/poi/ss/usermodel/Sheet;II)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 5
    .param p0, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;
    .param p1, "rowIx"    # I
    .param p2, "colIx"    # I

    .line 396
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/util/SheetUtil;->getCell(Lorg/apache/poi/ss/usermodel/Sheet;II)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v0

    .line 397
    .local v0, "c":Lorg/apache/poi/ss/usermodel/Cell;
    if-eqz v0, :cond_0

    return-object v0

    .line 399
    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Sheet;->getMergedRegions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 400
    .local v2, "mergedRegion":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {v2, p1, p2}, Lorg/apache/poi/ss/util/CellRangeAddress;->isInRange(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 403
    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v3

    invoke-interface {p0, v3}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v3

    .line 404
    .local v3, "r":Lorg/apache/poi/ss/usermodel/Row;
    if-eqz v3, :cond_1

    .line 405
    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v4

    invoke-interface {v3, v4}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v4

    return-object v4

    .line 407
    .end local v2    # "mergedRegion":Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v3    # "r":Lorg/apache/poi/ss/usermodel/Row;
    :cond_1
    goto :goto_0

    .line 412
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getColumnWidth(Lorg/apache/poi/ss/usermodel/Sheet;IZ)D
    .locals 2
    .param p0, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;
    .param p1, "column"    # I
    .param p2, "useMergedCells"    # Z

    .line 235
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Sheet;->getFirstRowNum()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Sheet;->getLastRowNum()I

    move-result v1

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/poi/ss/util/SheetUtil;->getColumnWidth(Lorg/apache/poi/ss/usermodel/Sheet;IZII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getColumnWidth(Lorg/apache/poi/ss/usermodel/Sheet;IZII)D
    .locals 8
    .param p0, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;
    .param p1, "column"    # I
    .param p2, "useMergedCells"    # Z
    .param p3, "firstRow"    # I
    .param p4, "lastRow"    # I

    .line 249
    new-instance v0, Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-direct {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>()V

    .line 250
    .local v0, "formatter":Lorg/apache/poi/ss/usermodel/DataFormatter;
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/ss/util/SheetUtil;->getDefaultCharWidth(Lorg/apache/poi/ss/usermodel/Workbook;)I

    move-result v1

    .line 252
    .local v1, "defaultCharWidth":I
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 253
    .local v2, "width":D
    move v4, p3

    .local v4, "rowIdx":I
    :goto_0
    if-gt v4, p4, :cond_1

    .line 254
    invoke-interface {p0, v4}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v5

    .line 255
    .local v5, "row":Lorg/apache/poi/ss/usermodel/Row;
    if-eqz v5, :cond_0

    .line 256
    invoke-static {v5, p1, v1, v0, p2}, Lorg/apache/poi/ss/util/SheetUtil;->getColumnWidthForRow(Lorg/apache/poi/ss/usermodel/Row;IILorg/apache/poi/ss/usermodel/DataFormatter;Z)D

    move-result-wide v6

    .line 257
    .local v6, "cellWidth":D
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 253
    .end local v5    # "row":Lorg/apache/poi/ss/usermodel/Row;
    .end local v6    # "cellWidth":D
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 260
    .end local v4    # "rowIdx":I
    :cond_1
    return-wide v2
.end method

.method private static getColumnWidthForRow(Lorg/apache/poi/ss/usermodel/Row;IILorg/apache/poi/ss/usermodel/DataFormatter;Z)D
    .locals 3
    .param p0, "row"    # Lorg/apache/poi/ss/usermodel/Row;
    .param p1, "column"    # I
    .param p2, "defaultCharWidth"    # I
    .param p3, "formatter"    # Lorg/apache/poi/ss/usermodel/DataFormatter;
    .param p4, "useMergedCells"    # Z

    .line 292
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    if-nez p0, :cond_0

    .line 293
    return-wide v0

    .line 296
    :cond_0
    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v2

    .line 298
    .local v2, "cell":Lorg/apache/poi/ss/usermodel/Cell;
    if-nez v2, :cond_1

    .line 299
    return-wide v0

    .line 302
    :cond_1
    invoke-static {v2, p2, p3, p4}, Lorg/apache/poi/ss/util/SheetUtil;->getCellWidth(Lorg/apache/poi/ss/usermodel/Cell;ILorg/apache/poi/ss/usermodel/DataFormatter;Z)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getDefaultCharWidth(Lorg/apache/poi/ss/usermodel/Workbook;)I
    .locals 5
    .param p0, "wb"    # Lorg/apache/poi/ss/usermodel/Workbook;
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 271
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/Workbook;->getFontAt(S)Lorg/apache/poi/ss/usermodel/Font;

    move-result-object v1

    .line 273
    .local v1, "defaultFont":Lorg/apache/poi/ss/usermodel/Font;
    new-instance v2, Ljava/text/AttributedString;

    const/16 v3, 0x30

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 274
    .local v2, "str":Ljava/text/AttributedString;
    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lorg/apache/poi/ss/util/SheetUtil;->copyAttributes(Lorg/apache/poi/ss/usermodel/Font;Ljava/text/AttributedString;II)V

    .line 275
    new-instance v0, Ljava/awt/font/TextLayout;

    invoke-virtual {v2}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/ss/util/SheetUtil;->fontRenderContext:Ljava/awt/font/FontRenderContext;

    invoke-direct {v0, v3, v4}, Ljava/awt/font/TextLayout;-><init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V

    .line 276
    .local v0, "layout":Ljava/awt/font/TextLayout;
    invoke-virtual {v0}, Ljava/awt/font/TextLayout;->getAdvance()F

    move-result v3

    float-to-int v3, v3

    return v3
.end method
