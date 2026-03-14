.class public final Lorg/apache/poi/xssf/streaming/SXSSFPicture;
.super Ljava/lang/Object;
.source "SXSSFPicture.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Picture;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static DEFAULT_COLUMN_WIDTH:F

.field private static final logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final _picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

.field private final _wb:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    nop

    .line 52
    const-class v0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->logger:Lorg/apache/poi/util/POILogger;

    .line 60
    const v0, 0x41124000    # 9.140625f

    sput v0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->DEFAULT_COLUMN_WIDTH:F

    return-void
.end method

.method constructor <init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;Lorg/apache/poi/xssf/usermodel/XSSFPicture;)V
    .locals 0
    .param p1, "_wb"    # Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;
    .param p2, "_picture"    # Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_wb:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    .line 67
    iput-object p2, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    .line 68
    return-void
.end method

.method private getColumnWidthInPixels(I)F
    .locals 6
    .param p1, "columnIndex"    # I

    .line 185
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    .line 187
    .local v0, "sheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getColumnHelper()Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    move-result-object v1

    int-to-long v2, p1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v1

    .line 188
    .local v1, "col":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->isSetWidth()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getWidth()D

    move-result-wide v2

    goto :goto_1

    :cond_1
    :goto_0
    sget v2, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->DEFAULT_COLUMN_WIDTH:F

    float-to-double v2, v2

    .line 190
    .local v2, "numChars":D
    :goto_1
    double-to-float v4, v2

    const v5, 0x40e00ded    # 7.0017f

    mul-float v4, v4, v5

    return v4
.end method

.method protected static getImageDimension(Lorg/apache/poi/openxml4j/opc/PackagePart;I)Ljava/awt/Dimension;
    .locals 5
    .param p0, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .param p1, "type"    # I

    .line 213
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/poi/ss/util/ImageUtils;->getImageDimension(Ljava/io/InputStream;I)Ljava/awt/Dimension;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 214
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x5

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 217
    new-instance v1, Ljava/awt/Dimension;

    invoke-direct {v1}, Ljava/awt/Dimension;-><init>()V

    return-object v1
.end method

.method private getRowHeightInPixels(I)F
    .locals 6
    .param p1, "rowIndex"    # I

    .line 196
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    .line 197
    .local v0, "xssfSheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_wb:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSXSSFSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v1

    .line 198
    .local v1, "sheet":Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    invoke-virtual {v1, p1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getRow(I)Lorg/apache/poi/xssf/streaming/SXSSFRow;

    move-result-object v2

    .line 199
    .local v2, "row":Lorg/apache/poi/ss/usermodel/Row;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Row;->getHeightInPoints()F

    move-result v3

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getDefaultRowHeightInPoints()F

    move-result v3

    .line 200
    .local v3, "height":F
    :goto_0
    const/high16 v4, 0x42c00000    # 96.0f

    mul-float v4, v4, v3

    const/high16 v5, 0x42900000    # 72.0f

    div-float/2addr v4, v5

    return v4
.end method


# virtual methods
.method public bridge synthetic getAnchor()Lorg/apache/poi/ss/usermodel/ChildAnchor;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getAnchor()Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    move-result-object v0

    return-object v0
.end method

.method public getAnchor()Lorg/apache/poi/xssf/usermodel/XSSFAnchor;
    .locals 1

    .line 237
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getAnchor()Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    move-result-object v0

    return-object v0
.end method

.method public getCTPicture()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getCTPicture()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getClientAnchor()Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getClientAnchor()Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object v0

    return-object v0
.end method

.method public getClientAnchor()Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;
    .locals 2

    .line 257
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getAnchor()Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    move-result-object v0

    .line 258
    .local v0, "a":Lorg/apache/poi/xssf/usermodel/XSSFAnchor;
    instance-of v1, v0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getDrawing()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;
    .locals 1

    .line 262
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getDrawing()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object v0

    return-object v0
.end method

.method public getImageDimension()Ljava/awt/Dimension;
    .locals 1

    .line 252
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getImageDimension()Ljava/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/apache/poi/ss/usermodel/Shape;
    .locals 1

    .line 277
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getParent()Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPictureData()Lorg/apache/poi/ss/usermodel/PictureData;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getPictureData()Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    move-result-object v0

    return-object v0
.end method

.method public getPictureData()Lorg/apache/poi/xssf/usermodel/XSSFPictureData;
    .locals 1

    .line 228
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getPictureData()Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPreferredSize()Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getPreferredSize()Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPreferredSize(DD)Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 1
    .param p1, "x0"    # D
    .param p3, "x1"    # D

    .line 51
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getPreferredSize(DD)Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object v0

    return-object v0
.end method

.method public getPreferredSize()Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;
    .locals 2

    .line 131
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getPreferredSize(D)Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object v0

    return-object v0
.end method

.method public getPreferredSize(D)Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;
    .locals 28
    .param p1, "scale"    # D

    .line 141
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getClientAnchor()Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object v1

    .line 143
    .local v1, "anchor":Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getPictureData()Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    move-result-object v2

    .line 144
    .local v2, "data":Lorg/apache/poi/xssf/usermodel/XSSFPictureData;
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;->getPictureType()I

    move-result v4

    invoke-static {v3, v4}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getImageDimension(Lorg/apache/poi/openxml4j/opc/PackagePart;I)Ljava/awt/Dimension;

    move-result-object v3

    .line 145
    .local v3, "size":Ljava/awt/Dimension;
    invoke-virtual {v3}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v4

    mul-double v4, v4, p1

    .line 146
    .local v4, "scaledWidth":D
    invoke-virtual {v3}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v6

    mul-double v6, v6, p1

    .line 148
    .local v6, "scaledHeight":D
    const/4 v8, 0x0

    .line 149
    .local v8, "w":F
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCol1()S

    move-result v9

    add-int/lit8 v9, v9, -0x1

    .line 151
    .local v9, "col2":I
    :goto_0
    float-to-double v10, v8

    cmpg-double v12, v10, v4

    if-gtz v12, :cond_0

    .line 152
    add-int/lit8 v9, v9, 0x1

    invoke-direct {v0, v9}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getColumnWidthInPixels(I)F

    move-result v10

    add-float/2addr v8, v10

    goto :goto_0

    .line 155
    :cond_0
    float-to-double v10, v8

    cmpl-double v12, v10, v4

    if-lez v12, :cond_3

    .line 156
    invoke-direct {v0, v9}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getColumnWidthInPixels(I)F

    move-result v10

    float-to-double v10, v10

    .line 157
    .local v10, "cw":D
    float-to-double v12, v8

    sub-double/2addr v12, v4

    .line 158
    .local v12, "deltaW":D
    sub-double v14, v10, v12

    const-wide v16, 0x40c29a8000000000L    # 9525.0

    mul-double v14, v14, v16

    double-to-int v14, v14

    .line 160
    .local v14, "dx2":I
    invoke-virtual {v1, v9}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setCol2(I)V

    .line 161
    invoke-virtual {v1, v14}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setDx2(I)V

    .line 163
    const-wide/16 v18, 0x0

    .line 164
    .local v18, "h":D
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRow1()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    .line 166
    .local v15, "row2":I
    :goto_1
    cmpg-double v20, v18, v6

    if-gtz v20, :cond_1

    .line 167
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v20, v2

    .end local v2    # "data":Lorg/apache/poi/xssf/usermodel/XSSFPictureData;
    .local v20, "data":Lorg/apache/poi/xssf/usermodel/XSSFPictureData;
    invoke-direct {v0, v15}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getRowHeightInPixels(I)F

    move-result v2

    move-object/from16 v21, v3

    .end local v3    # "size":Ljava/awt/Dimension;
    .local v21, "size":Ljava/awt/Dimension;
    float-to-double v2, v2

    add-double v18, v18, v2

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    goto :goto_1

    .line 170
    .end local v20    # "data":Lorg/apache/poi/xssf/usermodel/XSSFPictureData;
    .end local v21    # "size":Ljava/awt/Dimension;
    .restart local v2    # "data":Lorg/apache/poi/xssf/usermodel/XSSFPictureData;
    .restart local v3    # "size":Ljava/awt/Dimension;
    :cond_1
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    .end local v2    # "data":Lorg/apache/poi/xssf/usermodel/XSSFPictureData;
    .end local v3    # "size":Ljava/awt/Dimension;
    .restart local v20    # "data":Lorg/apache/poi/xssf/usermodel/XSSFPictureData;
    .restart local v21    # "size":Ljava/awt/Dimension;
    cmpl-double v2, v18, v6

    if-lez v2, :cond_2

    .line 171
    invoke-direct {v0, v15}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getRowHeightInPixels(I)F

    move-result v2

    float-to-double v2, v2

    .line 172
    .local v2, "ch":D
    sub-double v22, v18, v6

    .line 173
    .local v22, "deltaH":D
    sub-double v24, v2, v22

    move-wide/from16 v26, v2

    .end local v2    # "ch":D
    .local v26, "ch":D
    mul-double v2, v24, v16

    double-to-int v2, v2

    .line 174
    .local v2, "dy2":I
    invoke-virtual {v1, v15}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setRow2(I)V

    .line 175
    invoke-virtual {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setDy2(I)V

    .line 177
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getCTPicture()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v3

    .line 178
    .local v3, "size2d":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
    move/from16 v25, v8

    move/from16 v24, v9

    .end local v8    # "w":F
    .end local v9    # "col2":I
    .local v24, "col2":I
    .local v25, "w":F
    mul-double v8, v4, v16

    double-to-long v8, v8

    invoke-interface {v3, v8, v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    .line 179
    mul-double v8, v6, v16

    double-to-long v8, v8

    invoke-interface {v3, v8, v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    .line 181
    return-object v1

    .line 170
    .end local v2    # "dy2":I
    .end local v3    # "size2d":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
    .end local v22    # "deltaH":D
    .end local v24    # "col2":I
    .end local v25    # "w":F
    .end local v26    # "ch":D
    .restart local v8    # "w":F
    .restart local v9    # "col2":I
    :cond_2
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 155
    .end local v10    # "cw":D
    .end local v12    # "deltaW":D
    .end local v14    # "dx2":I
    .end local v15    # "row2":I
    .end local v18    # "h":D
    .end local v20    # "data":Lorg/apache/poi/xssf/usermodel/XSSFPictureData;
    .end local v21    # "size":Ljava/awt/Dimension;
    .local v2, "data":Lorg/apache/poi/xssf/usermodel/XSSFPictureData;
    .local v3, "size":Ljava/awt/Dimension;
    :cond_3
    move-object/from16 v20, v2

    .end local v2    # "data":Lorg/apache/poi/xssf/usermodel/XSSFPictureData;
    .restart local v20    # "data":Lorg/apache/poi/xssf/usermodel/XSSFPictureData;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public getPreferredSize(DD)Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;
    .locals 1
    .param p1, "scaleX"    # D
    .param p3, "scaleY"    # D

    .line 247
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getPreferredSize(DD)Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object v0

    return-object v0
.end method

.method public getShapeName()Ljava/lang/String;
    .locals 1

    .line 272
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getShapeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getShapeProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
    .locals 1

    .line 232
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getCTPicture()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 1

    .line 267
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public isNoFill()Z
    .locals 1

    .line 282
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->isNoFill()Z

    move-result v0

    return v0
.end method

.method public resize()V
    .locals 2

    .line 91
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->resize(D)V

    .line 92
    return-void
.end method

.method public resize(D)V
    .locals 6
    .param p1, "scale"    # D

    .line 108
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getClientAnchor()Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object v0

    .line 110
    .local v0, "anchor":Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getPreferredSize(D)Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object v1

    .line 112
    .local v1, "pref":Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRow1()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRow2()I

    move-result v3

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRow1()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 113
    .local v2, "row2":I
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCol1()S

    move-result v3

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCol2()S

    move-result v4

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCol1()S

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 115
    .local v3, "col2":I
    invoke-virtual {v0, v3}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setCol2(I)V

    .line 116
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setDx1(I)V

    .line 117
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDx2()I

    move-result v5

    invoke-virtual {v0, v5}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setDx2(I)V

    .line 119
    invoke-virtual {v0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setRow2(I)V

    .line 120
    invoke-virtual {v0, v4}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setDy1(I)V

    .line 121
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDy2()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setDy2(I)V

    .line 122
    return-void
.end method

.method public resize(DD)V
    .locals 1
    .param p1, "scaleX"    # D
    .param p3, "scaleY"    # D

    .line 242
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->resize(DD)V

    .line 243
    return-void
.end method

.method public setFillColor(III)V
    .locals 1
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I

    .line 292
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->setFillColor(III)V

    .line 293
    return-void
.end method

.method public setLineStyleColor(III)V
    .locals 1
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I

    .line 297
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->setLineStyleColor(III)V

    .line 298
    return-void
.end method

.method public setNoFill(Z)V
    .locals 1
    .param p1, "noFill"    # Z

    .line 287
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->setNoFill(Z)V

    .line 288
    return-void
.end method
