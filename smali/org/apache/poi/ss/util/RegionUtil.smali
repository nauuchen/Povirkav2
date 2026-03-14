.class public final Lorg/apache/poi/ss/util/RegionUtil;
.super Ljava/lang/Object;
.source "RegionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static setBorderBottom(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 6
    .param p0, "border"    # I
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;
    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.18"
    .end annotation

    .line 194
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v0

    .line 195
    .local v0, "colStart":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v1

    .line 196
    .local v1, "colEnd":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v2

    .line 197
    .local v2, "rowIndex":I
    new-instance v3, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;

    const-string v4, "borderBottom"

    invoke-direct {v3, v4, p0}, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;-><init>(Ljava/lang/String;I)V

    .line 198
    .local v3, "cps":Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;
    invoke-static {v2, p2}, Lorg/apache/poi/ss/util/CellUtil;->getRow(ILorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v4

    .line 199
    .local v4, "row":Lorg/apache/poi/ss/usermodel/Row;
    move v5, v0

    .local v5, "i":I
    :goto_0
    if-gt v5, v1, :cond_0

    .line 200
    invoke-virtual {v3, v4, v5}, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;->setProperty(Lorg/apache/poi/ss/usermodel/Row;I)V

    .line 199
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 202
    .end local v5    # "i":I
    :cond_0
    return-void
.end method

.method public static setBorderBottom(Lorg/apache/poi/ss/usermodel/BorderStyle;Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 6
    .param p0, "border"    # Lorg/apache/poi/ss/usermodel/BorderStyle;
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;

    .line 213
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v0

    .line 214
    .local v0, "colStart":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v1

    .line 215
    .local v1, "colEnd":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v2

    .line 216
    .local v2, "rowIndex":I
    new-instance v3, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;

    const-string v4, "borderBottom"

    invoke-direct {v3, v4, p0}, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    .line 217
    .local v3, "cps":Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;
    invoke-static {v2, p2}, Lorg/apache/poi/ss/util/CellUtil;->getRow(ILorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v4

    .line 218
    .local v4, "row":Lorg/apache/poi/ss/usermodel/Row;
    move v5, v0

    .local v5, "i":I
    :goto_0
    if-gt v5, v1, :cond_0

    .line 219
    invoke-virtual {v3, v4, v5}, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;->setProperty(Lorg/apache/poi/ss/usermodel/Row;I)V

    .line 218
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 221
    .end local v5    # "i":I
    :cond_0
    return-void
.end method

.method public static setBorderLeft(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 6
    .param p0, "border"    # I
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;
    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.18"
    .end annotation

    .line 72
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v0

    .line 73
    .local v0, "rowStart":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v1

    .line 74
    .local v1, "rowEnd":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v2

    .line 76
    .local v2, "column":I
    new-instance v3, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;

    const-string v4, "borderLeft"

    invoke-direct {v3, v4, p0}, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;-><init>(Ljava/lang/String;I)V

    .line 77
    .local v3, "cps":Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;
    move v4, v0

    .local v4, "i":I
    :goto_0
    if-gt v4, v1, :cond_0

    .line 78
    invoke-static {v4, p2}, Lorg/apache/poi/ss/util/CellUtil;->getRow(ILorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;->setProperty(Lorg/apache/poi/ss/usermodel/Row;I)V

    .line 77
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 80
    .end local v4    # "i":I
    :cond_0
    return-void
.end method

.method public static setBorderLeft(Lorg/apache/poi/ss/usermodel/BorderStyle;Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 6
    .param p0, "border"    # Lorg/apache/poi/ss/usermodel/BorderStyle;
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;

    .line 91
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v0

    .line 92
    .local v0, "rowStart":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v1

    .line 93
    .local v1, "rowEnd":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v2

    .line 95
    .local v2, "column":I
    new-instance v3, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;

    const-string v4, "borderLeft"

    invoke-direct {v3, v4, p0}, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    .line 96
    .local v3, "cps":Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;
    move v4, v0

    .local v4, "i":I
    :goto_0
    if-gt v4, v1, :cond_0

    .line 97
    invoke-static {v4, p2}, Lorg/apache/poi/ss/util/CellUtil;->getRow(ILorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;->setProperty(Lorg/apache/poi/ss/usermodel/Row;I)V

    .line 96
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 99
    .end local v4    # "i":I
    :cond_0
    return-void
.end method

.method public static setBorderRight(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 6
    .param p0, "border"    # I
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;
    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.18"
    .end annotation

    .line 133
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v0

    .line 134
    .local v0, "rowStart":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v1

    .line 135
    .local v1, "rowEnd":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v2

    .line 137
    .local v2, "column":I
    new-instance v3, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;

    const-string v4, "borderRight"

    invoke-direct {v3, v4, p0}, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;-><init>(Ljava/lang/String;I)V

    .line 138
    .local v3, "cps":Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;
    move v4, v0

    .local v4, "i":I
    :goto_0
    if-gt v4, v1, :cond_0

    .line 139
    invoke-static {v4, p2}, Lorg/apache/poi/ss/util/CellUtil;->getRow(ILorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;->setProperty(Lorg/apache/poi/ss/usermodel/Row;I)V

    .line 138
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 141
    .end local v4    # "i":I
    :cond_0
    return-void
.end method

.method public static setBorderRight(Lorg/apache/poi/ss/usermodel/BorderStyle;Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 6
    .param p0, "border"    # Lorg/apache/poi/ss/usermodel/BorderStyle;
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;

    .line 152
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v0

    .line 153
    .local v0, "rowStart":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v1

    .line 154
    .local v1, "rowEnd":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v2

    .line 156
    .local v2, "column":I
    new-instance v3, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;

    const-string v4, "borderRight"

    invoke-direct {v3, v4, p0}, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    .line 157
    .local v3, "cps":Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;
    move v4, v0

    .local v4, "i":I
    :goto_0
    if-gt v4, v1, :cond_0

    .line 158
    invoke-static {v4, p2}, Lorg/apache/poi/ss/util/CellUtil;->getRow(ILorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;->setProperty(Lorg/apache/poi/ss/usermodel/Row;I)V

    .line 157
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 160
    .end local v4    # "i":I
    :cond_0
    return-void
.end method

.method public static setBorderTop(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 6
    .param p0, "border"    # I
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;
    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.18"
    .end annotation

    .line 255
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v0

    .line 256
    .local v0, "colStart":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v1

    .line 257
    .local v1, "colEnd":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v2

    .line 258
    .local v2, "rowIndex":I
    new-instance v3, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;

    const-string v4, "borderTop"

    invoke-direct {v3, v4, p0}, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;-><init>(Ljava/lang/String;I)V

    .line 259
    .local v3, "cps":Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;
    invoke-static {v2, p2}, Lorg/apache/poi/ss/util/CellUtil;->getRow(ILorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v4

    .line 260
    .local v4, "row":Lorg/apache/poi/ss/usermodel/Row;
    move v5, v0

    .local v5, "i":I
    :goto_0
    if-gt v5, v1, :cond_0

    .line 261
    invoke-virtual {v3, v4, v5}, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;->setProperty(Lorg/apache/poi/ss/usermodel/Row;I)V

    .line 260
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 263
    .end local v5    # "i":I
    :cond_0
    return-void
.end method

.method public static setBorderTop(Lorg/apache/poi/ss/usermodel/BorderStyle;Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 6
    .param p0, "border"    # Lorg/apache/poi/ss/usermodel/BorderStyle;
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;

    .line 274
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v0

    .line 275
    .local v0, "colStart":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v1

    .line 276
    .local v1, "colEnd":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v2

    .line 277
    .local v2, "rowIndex":I
    new-instance v3, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;

    const-string v4, "borderTop"

    invoke-direct {v3, v4, p0}, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    .line 278
    .local v3, "cps":Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;
    invoke-static {v2, p2}, Lorg/apache/poi/ss/util/CellUtil;->getRow(ILorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v4

    .line 279
    .local v4, "row":Lorg/apache/poi/ss/usermodel/Row;
    move v5, v0

    .local v5, "i":I
    :goto_0
    if-gt v5, v1, :cond_0

    .line 280
    invoke-virtual {v3, v4, v5}, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;->setProperty(Lorg/apache/poi/ss/usermodel/Row;I)V

    .line 279
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 282
    .end local v5    # "i":I
    :cond_0
    return-void
.end method

.method public static setBottomBorderColor(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 6
    .param p0, "color"    # I
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;

    .line 233
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v0

    .line 234
    .local v0, "colStart":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v1

    .line 235
    .local v1, "colEnd":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v2

    .line 236
    .local v2, "rowIndex":I
    new-instance v3, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;

    const-string v4, "bottomBorderColor"

    invoke-direct {v3, v4, p0}, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;-><init>(Ljava/lang/String;I)V

    .line 237
    .local v3, "cps":Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;
    invoke-static {v2, p2}, Lorg/apache/poi/ss/util/CellUtil;->getRow(ILorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v4

    .line 238
    .local v4, "row":Lorg/apache/poi/ss/usermodel/Row;
    move v5, v0

    .local v5, "i":I
    :goto_0
    if-gt v5, v1, :cond_0

    .line 239
    invoke-virtual {v3, v4, v5}, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;->setProperty(Lorg/apache/poi/ss/usermodel/Row;I)V

    .line 238
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 241
    .end local v5    # "i":I
    :cond_0
    return-void
.end method

.method public static setLeftBorderColor(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 6
    .param p0, "color"    # I
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;

    .line 111
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v0

    .line 112
    .local v0, "rowStart":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v1

    .line 113
    .local v1, "rowEnd":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v2

    .line 115
    .local v2, "column":I
    new-instance v3, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;

    const-string v4, "leftBorderColor"

    invoke-direct {v3, v4, p0}, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;-><init>(Ljava/lang/String;I)V

    .line 116
    .local v3, "cps":Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;
    move v4, v0

    .local v4, "i":I
    :goto_0
    if-gt v4, v1, :cond_0

    .line 117
    invoke-static {v4, p2}, Lorg/apache/poi/ss/util/CellUtil;->getRow(ILorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;->setProperty(Lorg/apache/poi/ss/usermodel/Row;I)V

    .line 116
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 119
    .end local v4    # "i":I
    :cond_0
    return-void
.end method

.method public static setRightBorderColor(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 6
    .param p0, "color"    # I
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;

    .line 172
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v0

    .line 173
    .local v0, "rowStart":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v1

    .line 174
    .local v1, "rowEnd":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v2

    .line 176
    .local v2, "column":I
    new-instance v3, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;

    const-string v4, "rightBorderColor"

    invoke-direct {v3, v4, p0}, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;-><init>(Ljava/lang/String;I)V

    .line 177
    .local v3, "cps":Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;
    move v4, v0

    .local v4, "i":I
    :goto_0
    if-gt v4, v1, :cond_0

    .line 178
    invoke-static {v4, p2}, Lorg/apache/poi/ss/util/CellUtil;->getRow(ILorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;->setProperty(Lorg/apache/poi/ss/usermodel/Row;I)V

    .line 177
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 180
    .end local v4    # "i":I
    :cond_0
    return-void
.end method

.method public static setTopBorderColor(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 6
    .param p0, "color"    # I
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;

    .line 294
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v0

    .line 295
    .local v0, "colStart":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v1

    .line 296
    .local v1, "colEnd":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v2

    .line 297
    .local v2, "rowIndex":I
    new-instance v3, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;

    const-string/jumbo v4, "topBorderColor"

    invoke-direct {v3, v4, p0}, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;-><init>(Ljava/lang/String;I)V

    .line 298
    .local v3, "cps":Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;
    invoke-static {v2, p2}, Lorg/apache/poi/ss/util/CellUtil;->getRow(ILorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v4

    .line 299
    .local v4, "row":Lorg/apache/poi/ss/usermodel/Row;
    move v5, v0

    .local v5, "i":I
    :goto_0
    if-gt v5, v1, :cond_0

    .line 300
    invoke-virtual {v3, v4, v5}, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;->setProperty(Lorg/apache/poi/ss/usermodel/Row;I)V

    .line 299
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 302
    .end local v5    # "i":I
    :cond_0
    return-void
.end method
