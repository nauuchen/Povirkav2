.class public final Lorg/apache/poi/ss/util/CellUtil;
.super Ljava/lang/Object;
.source "CellUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;
    }
.end annotation


# static fields
.field public static final ALIGNMENT:Ljava/lang/String; = "alignment"

.field public static final BORDER_BOTTOM:Ljava/lang/String; = "borderBottom"

.field public static final BORDER_LEFT:Ljava/lang/String; = "borderLeft"

.field public static final BORDER_RIGHT:Ljava/lang/String; = "borderRight"

.field public static final BORDER_TOP:Ljava/lang/String; = "borderTop"

.field public static final BOTTOM_BORDER_COLOR:Ljava/lang/String; = "bottomBorderColor"

.field public static final DATA_FORMAT:Ljava/lang/String; = "dataFormat"

.field public static final FILL_BACKGROUND_COLOR:Ljava/lang/String; = "fillBackgroundColor"

.field public static final FILL_FOREGROUND_COLOR:Ljava/lang/String; = "fillForegroundColor"

.field public static final FILL_PATTERN:Ljava/lang/String; = "fillPattern"

.field public static final FONT:Ljava/lang/String; = "font"

.field public static final HIDDEN:Ljava/lang/String; = "hidden"

.field public static final INDENTION:Ljava/lang/String; = "indention"

.field public static final LEFT_BORDER_COLOR:Ljava/lang/String; = "leftBorderColor"

.field public static final LOCKED:Ljava/lang/String; = "locked"

.field public static final RIGHT_BORDER_COLOR:Ljava/lang/String; = "rightBorderColor"

.field public static final ROTATION:Ljava/lang/String; = "rotation"

.field public static final TOP_BORDER_COLOR:Ljava/lang/String; = "topBorderColor"

.field public static final VERTICAL_ALIGNMENT:Ljava/lang/String; = "verticalAlignment"

.field public static final WRAP_TEXT:Ljava/lang/String; = "wrapText"

.field private static final booleanValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final borderTypeValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lorg/apache/poi/util/POILogger;

.field private static final shortValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static unicodeMappings:[Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 53
    const-class v0, Lorg/apache/poi/ss/util/CellUtil;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/util/CellUtil;->log:Lorg/apache/poi/util/POILogger;

    .line 77
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "bottomBorderColor"

    const-string v2, "leftBorderColor"

    const-string v3, "rightBorderColor"

    const-string/jumbo v4, "topBorderColor"

    const-string v5, "fillForegroundColor"

    const-string v6, "fillBackgroundColor"

    const-string v7, "indention"

    const-string v8, "dataFormat"

    const-string v9, "font"

    const-string v10, "rotation"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/util/CellUtil;->shortValues:Ljava/util/Set;

    .line 90
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "locked"

    const-string v2, "hidden"

    const-string/jumbo v3, "wrapText"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/util/CellUtil;->booleanValues:Ljava/util/Set;

    .line 96
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "borderBottom"

    const-string v2, "borderLeft"

    const-string v3, "borderRight"

    const-string v4, "borderTop"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/util/CellUtil;->borderTypeValues:Ljava/util/Set;

    .line 621
    const/16 v0, 0xf

    new-array v0, v0, [Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    const-string v1, "alpha"

    const-string/jumbo v2, "\u03b1"

    invoke-static {v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "beta"

    const-string/jumbo v2, "\u03b2"

    invoke-static {v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "gamma"

    const-string/jumbo v2, "\u03b3"

    invoke-static {v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "delta"

    const-string/jumbo v2, "\u03b4"

    invoke-static {v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "epsilon"

    const-string/jumbo v2, "\u03b5"

    invoke-static {v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "zeta"

    const-string/jumbo v2, "\u03b6"

    invoke-static {v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "eta"

    const-string/jumbo v2, "\u03b7"

    invoke-static {v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "theta"

    const-string/jumbo v2, "\u03b8"

    invoke-static {v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "iota"

    const-string/jumbo v2, "\u03b9"

    invoke-static {v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "kappa"

    const-string/jumbo v2, "\u03ba"

    invoke-static {v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "lambda"

    const-string/jumbo v2, "\u03bb"

    invoke-static {v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "mu"

    const-string/jumbo v2, "\u03bc"

    invoke-static {v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "nu"

    const-string/jumbo v2, "\u03bd"

    invoke-static {v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "xi"

    const-string/jumbo v2, "\u03be"

    invoke-static {v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "omicron"

    const-string/jumbo v2, "\u03bf"

    invoke-static {v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/poi/ss/util/CellUtil;->unicodeMappings:[Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    .line 638
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    return-void
.end method

.method public static createCell(Lorg/apache/poi/ss/usermodel/Row;ILjava/lang/String;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1
    .param p0, "row"    # Lorg/apache/poi/ss/usermodel/Row;
    .param p1, "column"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 186
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->createCell(Lorg/apache/poi/ss/usermodel/Row;ILjava/lang/String;Lorg/apache/poi/ss/usermodel/CellStyle;)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v0

    return-object v0
.end method

.method public static createCell(Lorg/apache/poi/ss/usermodel/Row;ILjava/lang/String;Lorg/apache/poi/ss/usermodel/CellStyle;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 2
    .param p0, "row"    # Lorg/apache/poi/ss/usermodel/Row;
    .param p1, "column"    # I
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "style"    # Lorg/apache/poi/ss/usermodel/CellStyle;

    .line 166
    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/CellUtil;->getCell(Lorg/apache/poi/ss/usermodel/Row;I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v0

    .line 168
    .local v0, "cell":Lorg/apache/poi/ss/usermodel/Cell;
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Cell;->getRow()Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Workbook;->getCreationHelper()Lorg/apache/poi/ss/usermodel/CreationHelper;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/apache/poi/ss/usermodel/CreationHelper;->createRichTextString(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Lorg/apache/poi/ss/usermodel/RichTextString;)V

    .line 170
    if-eqz p3, :cond_0

    .line 171
    invoke-interface {v0, p3}, Lorg/apache/poi/ss/usermodel/Cell;->setCellStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V

    .line 173
    :cond_0
    return-object v0
.end method

.method private static getBoolean(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 574
    .local p0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 576
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 577
    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 579
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static getBorderStyle(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/poi/ss/usermodel/BorderStyle;"
        }
    .end annotation

    .line 446
    .local p0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 448
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-eqz v1, :cond_0

    .line 449
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/usermodel/BorderStyle;

    .local v1, "border":Lorg/apache/poi/ss/usermodel/BorderStyle;
    goto :goto_0

    .line 452
    .end local v1    # "border":Lorg/apache/poi/ss/usermodel/BorderStyle;
    :cond_0
    instance-of v1, v0, Ljava/lang/Short;

    if-eqz v1, :cond_2

    .line 453
    sget-object v1, Lorg/apache/poi/ss/util/CellUtil;->log:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 454
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deprecation warning: CellUtil properties map uses Short values for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Should use BorderStyle enums instead."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 457
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    .line 458
    .local v1, "code":S
    invoke-static {v1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->valueOf(S)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v1

    .line 459
    .local v1, "border":Lorg/apache/poi/ss/usermodel/BorderStyle;
    goto :goto_0

    .line 460
    .end local v1    # "border":Lorg/apache/poi/ss/usermodel/BorderStyle;
    :cond_2
    if-nez v0, :cond_3

    .line 461
    sget-object v1, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 466
    .restart local v1    # "border":Lorg/apache/poi/ss/usermodel/BorderStyle;
    :goto_0
    return-object v1

    .line 464
    .end local v1    # "border":Lorg/apache/poi/ss/usermodel/BorderStyle;
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected border style class. Must be BorderStyle or Short (deprecated)."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getCell(Lorg/apache/poi/ss/usermodel/Row;I)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1
    .param p0, "row"    # Lorg/apache/poi/ss/usermodel/Row;
    .param p1, "columnIndex"    # I

    .line 147
    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v0

    .line 149
    .local v0, "cell":Lorg/apache/poi/ss/usermodel/Cell;
    if-nez v0, :cond_0

    .line 150
    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/Row;->createCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v0

    .line 152
    :cond_0
    return-object v0
.end method

.method private static getFillPattern(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/FillPatternType;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/poi/ss/usermodel/FillPatternType;"
        }
    .end annotation

    .line 478
    .local p0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 480
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Lorg/apache/poi/ss/usermodel/FillPatternType;

    if-eqz v1, :cond_0

    .line 481
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/usermodel/FillPatternType;

    .local v1, "pattern":Lorg/apache/poi/ss/usermodel/FillPatternType;
    goto :goto_0

    .line 484
    .end local v1    # "pattern":Lorg/apache/poi/ss/usermodel/FillPatternType;
    :cond_0
    instance-of v1, v0, Ljava/lang/Short;

    if-eqz v1, :cond_2

    .line 485
    sget-object v1, Lorg/apache/poi/ss/util/CellUtil;->log:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 486
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deprecation warning: CellUtil properties map uses Short values for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Should use FillPatternType enums instead."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 489
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    .line 490
    .local v1, "code":S
    invoke-static {v1}, Lorg/apache/poi/ss/usermodel/FillPatternType;->forInt(I)Lorg/apache/poi/ss/usermodel/FillPatternType;

    move-result-object v1

    .line 491
    .local v1, "pattern":Lorg/apache/poi/ss/usermodel/FillPatternType;
    goto :goto_0

    .line 492
    .end local v1    # "pattern":Lorg/apache/poi/ss/usermodel/FillPatternType;
    :cond_2
    if-nez v0, :cond_3

    .line 493
    sget-object v1, Lorg/apache/poi/ss/usermodel/FillPatternType;->NO_FILL:Lorg/apache/poi/ss/usermodel/FillPatternType;

    .line 498
    .restart local v1    # "pattern":Lorg/apache/poi/ss/usermodel/FillPatternType;
    :goto_0
    return-object v1

    .line 496
    .end local v1    # "pattern":Lorg/apache/poi/ss/usermodel/FillPatternType;
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected fill pattern style class. Must be FillPatternType or Short (deprecated)."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getFormatProperties(Lorg/apache/poi/ss/usermodel/CellStyle;)Ljava/util/Map;
    .locals 3
    .param p0, "style"    # Lorg/apache/poi/ss/usermodel/CellStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/CellStyle;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 337
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 338
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getAlignmentEnum()Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    move-result-object v1

    const-string v2, "alignment"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 339
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getVerticalAlignmentEnum()Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    move-result-object v1

    const-string/jumbo v2, "verticalAlignment"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 340
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getBorderBottomEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v1

    const-string v2, "borderBottom"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 341
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getBorderLeftEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v1

    const-string v2, "borderLeft"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 342
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getBorderRightEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v1

    const-string v2, "borderRight"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 343
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getBorderTopEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v1

    const-string v2, "borderTop"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 344
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getBottomBorderColor()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "bottomBorderColor"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 345
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormat()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "dataFormat"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 346
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getFillPatternEnum()Lorg/apache/poi/ss/usermodel/FillPatternType;

    move-result-object v1

    const-string v2, "fillPattern"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 347
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getFillForegroundColor()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "fillForegroundColor"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 348
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getFillBackgroundColor()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "fillBackgroundColor"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 349
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getFontIndex()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "font"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 350
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getHidden()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "hidden"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 351
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getIndention()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "indention"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 352
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getLeftBorderColor()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "leftBorderColor"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 353
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getLocked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "locked"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 354
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getRightBorderColor()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "rightBorderColor"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 355
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getRotation()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "rotation"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 356
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getTopBorderColor()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string/jumbo v2, "topBorderColor"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 357
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getWrapText()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "wrapText"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 358
    return-object v0
.end method

.method private static getHorizontalAlignment(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/HorizontalAlignment;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/poi/ss/usermodel/HorizontalAlignment;"
        }
    .end annotation

    .line 510
    .local p0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 512
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    if-eqz v1, :cond_0

    .line 513
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    .local v1, "align":Lorg/apache/poi/ss/usermodel/HorizontalAlignment;
    goto :goto_0

    .line 516
    .end local v1    # "align":Lorg/apache/poi/ss/usermodel/HorizontalAlignment;
    :cond_0
    instance-of v1, v0, Ljava/lang/Short;

    if-eqz v1, :cond_2

    .line 517
    sget-object v1, Lorg/apache/poi/ss/util/CellUtil;->log:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 518
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deprecation warning: CellUtil properties map used a Short value for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Should use HorizontalAlignment enums instead."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 521
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    .line 522
    .local v1, "code":S
    invoke-static {v1}, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->forInt(I)Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    move-result-object v1

    .line 523
    .local v1, "align":Lorg/apache/poi/ss/usermodel/HorizontalAlignment;
    goto :goto_0

    .line 524
    .end local v1    # "align":Lorg/apache/poi/ss/usermodel/HorizontalAlignment;
    :cond_2
    if-nez v0, :cond_3

    .line 525
    sget-object v1, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->GENERAL:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    .line 530
    .restart local v1    # "align":Lorg/apache/poi/ss/usermodel/HorizontalAlignment;
    :goto_0
    return-object v1

    .line 528
    .end local v1    # "align":Lorg/apache/poi/ss/usermodel/HorizontalAlignment;
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected horizontal alignment style class. Must be HorizontalAlignment or Short (deprecated)."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getRow(ILorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/ss/usermodel/Row;
    .locals 1
    .param p0, "rowIndex"    # I
    .param p1, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;

    .line 131
    invoke-interface {p1, p0}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v0

    .line 132
    .local v0, "row":Lorg/apache/poi/ss/usermodel/Row;
    if-nez v0, :cond_0

    .line 133
    invoke-interface {p1, p0}, Lorg/apache/poi/ss/usermodel/Sheet;->createRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v0

    .line 135
    :cond_0
    return-object v0
.end method

.method private static getShort(Ljava/util/Map;Ljava/lang/String;)S
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")S"
        }
    .end annotation

    .line 431
    .local p0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 432
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Short;

    if-eqz v1, :cond_0

    .line 433
    move-object v1, v0

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    return v1

    .line 435
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static getVerticalAlignment(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/VerticalAlignment;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/poi/ss/usermodel/VerticalAlignment;"
        }
    .end annotation

    .line 542
    .local p0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 544
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    if-eqz v1, :cond_0

    .line 545
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    .local v1, "align":Lorg/apache/poi/ss/usermodel/VerticalAlignment;
    goto :goto_0

    .line 548
    .end local v1    # "align":Lorg/apache/poi/ss/usermodel/VerticalAlignment;
    :cond_0
    instance-of v1, v0, Ljava/lang/Short;

    if-eqz v1, :cond_2

    .line 549
    sget-object v1, Lorg/apache/poi/ss/util/CellUtil;->log:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 550
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deprecation warning: CellUtil properties map used a Short value for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Should use VerticalAlignment enums instead."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 553
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    .line 554
    .local v1, "code":S
    invoke-static {v1}, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->forInt(I)Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    move-result-object v1

    .line 555
    .local v1, "align":Lorg/apache/poi/ss/usermodel/VerticalAlignment;
    goto :goto_0

    .line 556
    .end local v1    # "align":Lorg/apache/poi/ss/usermodel/VerticalAlignment;
    :cond_2
    if-nez v0, :cond_3

    .line 557
    sget-object v1, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->BOTTOM:Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    .line 562
    .restart local v1    # "align":Lorg/apache/poi/ss/usermodel/VerticalAlignment;
    :goto_0
    return-object v1

    .line 560
    .end local v1    # "align":Lorg/apache/poi/ss/usermodel/VerticalAlignment;
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected vertical alignment style class. Must be VerticalAlignment or Short (deprecated)."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 590
    .local p0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    return-void
.end method

.method private static putAll(Ljava/util/Map;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 370
    .local p0, "src":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p1, "dest":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 371
    .local v1, "key":Ljava/lang/String;
    sget-object v2, Lorg/apache/poi/ss/util/CellUtil;->shortValues:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 372
    invoke-static {p0, v1}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 373
    :cond_0
    sget-object v2, Lorg/apache/poi/ss/util/CellUtil;->booleanValues:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 374
    invoke-static {p0, v1}, Lorg/apache/poi/ss/util/CellUtil;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 375
    :cond_1
    sget-object v2, Lorg/apache/poi/ss/util/CellUtil;->borderTypeValues:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 376
    invoke-static {p0, v1}, Lorg/apache/poi/ss/util/CellUtil;->getBorderStyle(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 377
    :cond_2
    const-string v2, "alignment"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 378
    invoke-static {p0, v1}, Lorg/apache/poi/ss/util/CellUtil;->getHorizontalAlignment(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 379
    :cond_3
    const-string/jumbo v2, "verticalAlignment"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 380
    invoke-static {p0, v1}, Lorg/apache/poi/ss/util/CellUtil;->getVerticalAlignment(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 381
    :cond_4
    const-string v2, "fillPattern"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 382
    invoke-static {p0, v1}, Lorg/apache/poi/ss/util/CellUtil;->getFillPattern(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/FillPatternType;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 384
    :cond_5
    sget-object v2, Lorg/apache/poi/ss/util/CellUtil;->log:Lorg/apache/poi/util/POILogger;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 385
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring unrecognized CellUtil format properties key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .end local v1    # "key":Ljava/lang/String;
    :cond_6
    :goto_1
    goto/16 :goto_0

    .line 389
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_7
    return-void
.end method

.method public static setAlignment(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/HorizontalAlignment;)V
    .locals 1
    .param p0, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .param p1, "align"    # Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    .line 205
    const-string v0, "alignment"

    invoke-static {p0, v0, p1}, Lorg/apache/poi/ss/util/CellUtil;->setCellStyleProperty(Lorg/apache/poi/ss/usermodel/Cell;Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    return-void
.end method

.method public static setCellStyleProperties(Lorg/apache/poi/ss/usermodel/Cell;Ljava/util/Map;)V
    .locals 9
    .param p0, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 274
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    .line 275
    .local v0, "workbook":Lorg/apache/poi/ss/usermodel/Workbook;
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v1

    .line 276
    .local v1, "originalStyle":Lorg/apache/poi/ss/usermodel/CellStyle;
    const/4 v2, 0x0

    .line 277
    .local v2, "newStyle":Lorg/apache/poi/ss/usermodel/CellStyle;
    invoke-static {v1}, Lorg/apache/poi/ss/util/CellUtil;->getFormatProperties(Lorg/apache/poi/ss/usermodel/CellStyle;)Ljava/util/Map;

    move-result-object v3

    .line 278
    .local v3, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p1, v3}, Lorg/apache/poi/ss/util/CellUtil;->putAll(Ljava/util/Map;Ljava/util/Map;)V

    .line 282
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Workbook;->getNumCellStyles()I

    move-result v4

    .line 284
    .local v4, "numberCellStyles":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 285
    invoke-interface {v0, v5}, Lorg/apache/poi/ss/usermodel/Workbook;->getCellStyleAt(I)Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v6

    .line 286
    .local v6, "wbStyle":Lorg/apache/poi/ss/usermodel/CellStyle;
    invoke-static {v6}, Lorg/apache/poi/ss/util/CellUtil;->getFormatProperties(Lorg/apache/poi/ss/usermodel/CellStyle;)Ljava/util/Map;

    move-result-object v7

    .line 289
    .local v7, "wbStyleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 290
    move-object v2, v6

    .line 291
    goto :goto_1

    .line 284
    .end local v6    # "wbStyle":Lorg/apache/poi/ss/usermodel/CellStyle;
    .end local v7    # "wbStyleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 296
    .end local v5    # "i":I
    :cond_1
    :goto_1
    if-nez v2, :cond_2

    .line 297
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Workbook;->createCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v2

    .line 298
    invoke-static {v2, v0, v3}, Lorg/apache/poi/ss/util/CellUtil;->setFormatProperties(Lorg/apache/poi/ss/usermodel/CellStyle;Lorg/apache/poi/ss/usermodel/Workbook;Ljava/util/Map;)V

    .line 301
    :cond_2
    invoke-interface {p0, v2}, Lorg/apache/poi/ss/usermodel/Cell;->setCellStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V

    .line 302
    return-void
.end method

.method public static setCellStyleProperty(Lorg/apache/poi/ss/usermodel/Cell;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "propertyValue"    # Ljava/lang/Object;

    .line 322
    invoke-static {p1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 323
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0, v0}, Lorg/apache/poi/ss/util/CellUtil;->setCellStyleProperties(Lorg/apache/poi/ss/usermodel/Cell;Ljava/util/Map;)V

    .line 324
    return-void
.end method

.method public static setFont(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/Font;)V
    .locals 4
    .param p0, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .param p1, "font"    # Lorg/apache/poi/ss/usermodel/Font;

    .line 236
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    .line 237
    .local v0, "wb":Lorg/apache/poi/ss/usermodel/Workbook;
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Font;->getIndex()S

    move-result v1

    .line 238
    .local v1, "fontIndex":S
    invoke-interface {v0, v1}, Lorg/apache/poi/ss/usermodel/Workbook;->getFontAt(S)Lorg/apache/poi/ss/usermodel/Font;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const-string v3, "font"

    invoke-static {p0, v3, v2}, Lorg/apache/poi/ss/util/CellUtil;->setCellStyleProperty(Lorg/apache/poi/ss/usermodel/Cell;Ljava/lang/String;Ljava/lang/Object;)V

    .line 246
    return-void

    .line 239
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Font does not belong to this workbook"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static setFormatProperties(Lorg/apache/poi/ss/usermodel/CellStyle;Lorg/apache/poi/ss/usermodel/Workbook;Ljava/util/Map;)V
    .locals 1
    .param p0, "style"    # Lorg/apache/poi/ss/usermodel/CellStyle;
    .param p1, "workbook"    # Lorg/apache/poi/ss/usermodel/Workbook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/CellStyle;",
            "Lorg/apache/poi/ss/usermodel/Workbook;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 400
    .local p2, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "alignment"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getHorizontalAlignment(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setAlignment(Lorg/apache/poi/ss/usermodel/HorizontalAlignment;)V

    .line 401
    const-string/jumbo v0, "verticalAlignment"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getVerticalAlignment(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setVerticalAlignment(Lorg/apache/poi/ss/usermodel/VerticalAlignment;)V

    .line 402
    const-string v0, "borderBottom"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getBorderStyle(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setBorderBottom(Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    .line 403
    const-string v0, "borderLeft"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getBorderStyle(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setBorderLeft(Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    .line 404
    const-string v0, "borderRight"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getBorderStyle(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setBorderRight(Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    .line 405
    const-string v0, "borderTop"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getBorderStyle(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setBorderTop(Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    .line 406
    const-string v0, "bottomBorderColor"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setBottomBorderColor(S)V

    .line 407
    const-string v0, "dataFormat"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setDataFormat(S)V

    .line 408
    const-string v0, "fillPattern"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getFillPattern(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/FillPatternType;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setFillPattern(Lorg/apache/poi/ss/usermodel/FillPatternType;)V

    .line 409
    const-string v0, "fillForegroundColor"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setFillForegroundColor(S)V

    .line 410
    const-string v0, "fillBackgroundColor"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setFillBackgroundColor(S)V

    .line 411
    const-string v0, "font"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Workbook;->getFontAt(S)Lorg/apache/poi/ss/usermodel/Font;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setFont(Lorg/apache/poi/ss/usermodel/Font;)V

    .line 412
    const-string v0, "hidden"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setHidden(Z)V

    .line 413
    const-string v0, "indention"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setIndention(S)V

    .line 414
    const-string v0, "leftBorderColor"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setLeftBorderColor(S)V

    .line 415
    const-string v0, "locked"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setLocked(Z)V

    .line 416
    const-string v0, "rightBorderColor"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setRightBorderColor(S)V

    .line 417
    const-string v0, "rotation"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setRotation(S)V

    .line 418
    const-string/jumbo v0, "topBorderColor"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setTopBorderColor(S)V

    .line 419
    const-string/jumbo v0, "wrapText"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setWrapText(Z)V

    .line 420
    return-void
.end method

.method public static setVerticalAlignment(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/VerticalAlignment;)V
    .locals 1
    .param p0, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .param p1, "align"    # Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    .line 224
    const-string/jumbo v0, "verticalAlignment"

    invoke-static {p0, v0, p1}, Lorg/apache/poi/ss/util/CellUtil;->setCellStyleProperty(Lorg/apache/poi/ss/usermodel/Cell;Ljava/lang/String;Ljava/lang/Object;)V

    .line 225
    return-void
.end method

.method public static translateUnicodeValues(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 9
    .param p0, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 602
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object v0

    .line 603
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    .line 604
    .local v1, "foundUnicode":Z
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 606
    .local v2, "lowerCaseStr":Ljava/lang/String;
    sget-object v3, Lorg/apache/poi/ss/util/CellUtil;->unicodeMappings:[Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    .local v3, "arr$":[Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 607
    .local v6, "entry":Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;
    iget-object v7, v6, Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;->entityName:Ljava/lang/String;

    .line 608
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 609
    iget-object v8, v6, Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;->resolvedValue:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 610
    const/4 v1, 0x1

    .line 606
    .end local v6    # "entry":Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;
    .end local v7    # "key":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 613
    .end local v3    # "arr$":[Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_1
    if-eqz v1, :cond_2

    .line 614
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getRow()Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/Workbook;->getCreationHelper()Lorg/apache/poi/ss/usermodel/CreationHelper;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/apache/poi/ss/usermodel/CreationHelper;->createRichTextString(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object v3

    invoke-interface {p0, v3}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Lorg/apache/poi/ss/usermodel/RichTextString;)V

    .line 617
    :cond_2
    return-object p0
.end method

.method private static um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;
    .locals 1
    .param p0, "entityName"    # Ljava/lang/String;
    .param p1, "resolvedValue"    # Ljava/lang/String;

    .line 641
    new-instance v0, Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
